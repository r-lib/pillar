#' Abbreviate an Olson timezone name
#'
#' Within this package, a date-time column is given a heading according to its
#' Olson-timezone name. Because some timezone names are too long to fit in the
#' space allocated for the header, an abbreviation function is needed.
#'
#' The `width` argument is used to specify the maximum width available to
#' a timezone name. If the a name fits in the available width, the function
#' does nothing. Otherwise it looks at each of the fields in succession, from
#' left to right.
#'
#' Consider that `"America/Chicago"` has 15 characters, and let's say that you
#' need to abbreviate to no more than 14 characters. The function will look at
#' the first field, `"America"`, then abbreviate it to four characters.
#' This function has a dictionary that, if `"America"` needs to be abbreviated,
#' will make a "common" abbreviation: `"Amer"`. At this point, our
#' abbreviated timezone is `"Amer/Chicago"`, which is 12 characters. The
#' function returns this.
#'
#' The function will abbreviate each field, from left to right, until it
#' is no longer necessary to abbreviate.
#'
#'
#' @param tz             `character`, length-one, timezone-name to abbreviate
#' @param width          `integer`, maximum number of characters
#' @param consistent     `logical`, always abbvreviate first and second
#'  level names, i.e. `Africa/Bissau` is abbreviated to `Afr/Bissau` regardless
#'  of available space
#' @param dictionary     `character`, named vector: values are abbreviated
#'   components, names are unabbreviated components
#'
#' @return `character`, abbreviated name
#' @keywords internal
#' @seealso OlsonNames()
#' @examples
#' abbreviate_olson("America/Chicago")
#' abbreviate_olson("America/Chicago", width = 20)
#' abbreviate_olson("America/Chicago", dictionary = c(America = "USA"))
#' abbreviate_olson(OlsonNames())
#' @export
#'
abbreviate_olson <- function(tz, width = 14L, consistent = TRUE,
                             dictionary = NULL) {

  # if we cannot return at least one character, return empty string
  if (width < 1L) {
    return("")
  }

  if (!rlang::is_character(tz)) {
    stop("tz must be a character vector", call. = FALSE)
  }

  #####
  # dictionaries
  #####

  # tries to comport with standard ISO names where applicable
  dictionary_first <- c(
    Africa = "Afr",
    America = "Amer",
    Antarctica = "Ant",
    Arctic = "Arc",
    Asia = "Asia",
    Atlantic = "Atl",
    Australia = "Aus",
    Brasil = "Bra",
    Canada = "Can",
    Chile = "Chl",
    Etc = "Etc",
    Europe = "Eur",
    Indian = "Ind",
    Mexico = "Mex",
    Pacific = "Pac",
    SystemV = "SysV",
    US = "US"
  )

  # ISO name, or US postal abbreviations
  dictionary_second <- c(
    Argentina = "Ar",
    Indiana = "IN",
    Kentucky = "KY",
    North_Dakota = "ND"
  )

  dictionary_default <- list(dictionary_first, dictionary_second, NULL)

  # merge dictionaries, favouring the user-supplied set of dictionaries
  dictionary_merged <-
    lapply(
      dictionary_default,
      function(x, y) {c(y, x)},
      y = dictionary
    )

  tz_components_list <- strsplit(tz, split = "/")
  n_component <- max(map_int(tz_components_list, length))
  tz_components_t <- transpose(map(tz_components_list, `length<-`, n_component))
  tz_components <- map(tz_components_t, unlist)

  tz_abbreviated <- tz

  # get a width-budget
  width_budget <- .budget_initial(width, n_component)

  # loop over our components, abbreviate as needed
  for (i in seq_along(tz_components)) {

    # have we abbreviated enough?
    #  - needs be not in "consistent" mode and fit the specified width
    if (!consistent && nchar(tz_abbreviated) <= width) {
      return(tz_abbreviated)
    }

    # if this is our last component,
    #   set component-width to satisfy overall-width
    #   otherwise, set to 4
    #
    if (identical(i, length(tz_components))) {
      width_component <-
        max(
          nchar(tz_components[[i]]) - (nchar(tz_abbreviated) - width),
          0L,
          na.rm = TRUE
        )
      # width of current component -
      #   difference between (current) abbreviated timezone and budgeted width
    } else {
      width_component <- width_budget[i]
    }

    # abbreviate the component
    tz_components[[i]] <-
      abbreviate_olson_component(
        tz_components[[i]],
        width = width_component,
        dictionary = dictionary_merged[[i]]
      )

    tz_abbreviated <- combine_olson_components(tz_components)
  }

  tz_abbreviated
}

# abbreviate a component of the timezone
abbreviate_olson_component <- function(tz_component, width = 4L,
                                       dictionary = NULL) {

  # tz_component  character   vector of
  # width
  # dictionary

  if (!is_null(dictionary)) {
    tz_component_lookup <- dictionary[tz_component]
    tz_component[!is.na(tz_component_lookup)] <- tz_component_lookup[!is.na(tz_component_lookup)]
  }

  abbreviate(tz_component, minlength = width)
}

combine_olson_components <- function(tz_components) {
  reduce(
    tz_components,
    function(x, y) {
      pos <- which(!is.na(y))
      x[pos] <- paste0(x[pos], "/", y[pos])
      x
    }
  )
}

# tz           `character`, one-or-more Olson time zones
# width        `integer`, width to which the time zones are to be abbreviated
# dictionary   `character`, named vector to insist on abbreviations
#
# `character` named vector - names are tz, values are abbreviations
#
abb_olson <- function(tz, width = 14L, dictionary = NULL){

  df <- .decompose_tz(tz, width)

  # apply dictionary
  df$abbv_dict <- .abbv_dict(df$component, dictionary)

  df_by_index_max <- split(df, df$index_max)

  df_new <-
    map(
      df_by_index_max,
      .abbreviate_by_index,
      width = width
    )

  do.call(rbind, df_new)
}

.decompose_tz <- function(tz, width = 14L) {

  # tz           `character`, one-or-more Olson time zones
  # width        `integer`, width to which the time zones are to be abbreviated
  #
  # returns `data.frame` with variables:
  #  - index     `integer`, index of component within `tz`
  #  - index_max `integer`, maximum index for `tz`
  #  - tz        `character`, full tz-name
  #  - component `character`, this component
  #  - budget    `integer`, initial width-budget for this component
  #
  # data frame will have one row for each component of each timezone

  # left join the Olson components with the inital width-budget
  result <-
    merge(
      .component(tz),
      .budget_initial(width),
      by = c("index", "index_max"),
      all.x = TRUE,
      all.y = FALSE
    )

  result
}

.component <- function(tz) {

  # tz           `character`, one-or-more Olson time zones
  #
  # return `data.frame` with variables:
  #  - tz        `character`, full tz-name
  #  - index     `integer`, index of component within `tz`
  #  - index_max `integer`, maximum index of component within `tz`
  #  - component `character`, this component
  #
  # data frame will have one row for each component of each timezone

  # calculate for every timezone supplied
  component <- strsplit(tz, split = "/")
  index <- lapply(component, seq_along)
  index_max <- lapply(index, function(x) {rep(max(x), max(x))})
  tz_list <- mapply(
    function(tz, index) {rep(tz, max(index))},
    tz, index,
    SIMPLIFY = FALSE
  )

  # collapse into a data.frame
  data.frame(
    tz = unlist(tz_list, use.names = FALSE),
    index = unlist(index, use.names = FALSE),
    index_max = unlist(index_max, use.names = FALSE),
    component = unlist(component, use.names = FALSE),
    stringsAsFactors = FALSE
  )
}

# tmp <- component_create(OlsonNames())
# aggregate(tmp["component"], by = tmp[c("tz")], FUN = function(x){paste(x, collapse = "/")})

.budget_initial <- function(width) {

  # width        `integer`, width to which the timezones are to be abbreviated
  #
  # `data.frame` with variables:
  #  - index     `integer`, index
  #  - index_max `integer`, maximum index
  #  - budget    `integer`, width budget
  #
  # data frame will have one row for each combination of index and index_max

  index <- lapply(seq(3), seq)
  index_max <- lapply(seq(3), function(x) {rep(x, x)})
  budget_initial <- lapply(seq(3), .budget_initial_vector, width = width)

  data.frame(
    index = unlist(index),
    index_max = unlist(index_max),
    budget_initial = unlist(budget_initial)
  )
}

.budget_initial_vector <- function(index_max, width) {

  # index_max    `integer`, maximum index of component within a time zone
  # width        `integer`, width to which the time zones are to be abbreviated
  #
  # returns `integer`, vector with length equal to index_max,
  #  values sum to width
  #
  # each value represents an initial budget for the width of each component
  # of a time zone

  # make sure we use integers
  width <- as.integer(width)
  index_max <- as.integer(index_max)

  # account for the separators
  width_available <- width - (index_max - 1)

  # distribute width equally among components
  width_budget <- rep(floor(width_available / index_max), index_max)

  # distribute extra width
  width_extra <- as.integer(width_available %% index_max)

  # if we have any extra, give it to the last component
  if (width_extra > 0L) {
    width_budget[index_max] <- width_budget[index_max] + 1
  }

  # if we have two extra, give it to the first component
  # - by definition, this can be the case only if index_max == 3L
  if (identical(width_extra, 2L)) {
    width_budget[1] <- width_budget[1] + 1
  }

  as.integer(width_budget)
}

.abbv_dict <- function(component, dictionary) {

  # component   `character`, timezone component (vector)
  # dictionary  `character`, named vector of standard abbreviations
  #
  # returns `character` dictionary abbreviations of component

  abbrev <- component
  index <- rlang::has_name(dictionary, component)

  abbrev[index] <- dictionary[abbrev[index]]

  abbrev
}

.abbreviate_by_index <- function(df, width) {

  df_by_index <- split(df, df$index)

  for (index in seq_along(df_by_index)) {

    df_index <- df_by_index[[index]]

    # update the remaining budget
    if (identical(index, 1L)) {
      # the first component has all the budget
      df_index$budget_remaining <- width
    } else {

      df_prev <- df_by_index[[index - 1]]

      # the budget for subsequent components is reduced by
      # the length of the previous component plus one (separator)
      budget_remaining <-
        df_prev$budget_remaining - (map_int(df_prev$abbv_final, nchar) + 1)

      print(budget_remaining)
      # using the names here is likely not necessary as I
      # expect the timezones to be in the same order in each
      # of the data frames - this is a bit of defensive coding
      names(budget_remaining) <- df_by_index[[index - 1]]$tz

      df_index$budget_remaining <- budget_remaining[df_index$tz]
    }

    df_index$budget_provisional <- df_index$budget_initial

    if (identical(index, max(seq_along(df_by_index)))) {
      df_index$budget_provisional <- df_index$budget_remaining
    }

    df_index$budget_final <-
      .budget_final(df_index$budget_provisional, df_index$component)

    df_index$abbv_final <-
      .abbv_final(df_index$abbv_dict, df_index$budget_final)

    df_by_index[[index]] <- df_index
  }

  df <- do.call(rbind, df_by_index)

  df
}

.budget_final <- function(budget_provisional, component) {

  # budget_provisional  `integer`, vector of provisional width-budget
  # component           `character`, vector of components
  #
  # returns `integer` final width-budget for each component, grouping
  #   by component, then budget_final is the minumum value of
  #   budget_provisional for each component

  # group budget_provisional by component
  budget <- split(budget_provisional, component)

  # find minimum budget for each component
  budget_min <- unlist(map(budget, min))

  # put this in terms of the original component vector
  budget_final <- budget_min[component]
  names(budget_final) <- NULL

  budget_final
}

.abbv_final <- function(abbv_dict, budget_final) {

  # abbv_dict    `character` dictionary abbreviation
  # budget_final `integer`   length to which to abbreviate
  #
  # return `character` final abbreviation, grouping by
  #  budget_final, and calling abbreviate() for each group

  # group abbv_dict by budget_final
  abbv <- split(abbv_dict, budget_final)
  # get the budget for each group
  budget <- as.integer(names(abbv))

  # get the new abbreviations
  abbv_new <- unlist(map2(abbv, budget, abbreviate))
  names(abbv_new) <- unlist(abbv)

  # put this in terms of the originial abbv_dict vector
  abbv_final <- abbv_new[abbv_dict]
  names(abbv_final) <- NULL

  abbv_final
}

# tries to comport with standard ISO names or or US postal abbreviations
.dict_default <-
  c(
    # first element
    Africa = "Afr",
    America = "Amer",
    Antarctica = "Ant",
    Arctic = "Arc",
    Asia = "Asia",
    Atlantic = "Atl",
    Australia = "Aus",
    Brasil = "Bra",
    Canada = "Can",
    Chile = "Chl",
    Etc = "Etc",
    Europe = "Eur",
    Indian = "Ind",
    Mexico = "Mex",
    Pacific = "Pac",
    SystemV = "SysV",
    # second element
    US = "US",
    Argentina = "Ar",
    Indiana = "IN",
    Kentucky = "KY",
    North_Dakota = "ND"
  )

