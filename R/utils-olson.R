#' Abbreviate an Olson timezone name
#'
#' Within this package, a date-time column is given a heading according to its
#' Olson-timezone name. Because some timezone names are too long to fit in the
#' space allocated for the header, an abbreviation function is needed.
#'
#' The `minwidth` argument is used to specify the width to which you wish to
#' abbreviate a timezone name. This argument works like the `minwidth` argument
#' to `abbreviate()`: if the abbreviation returned has this number of
#' characters or fewer, the abbreviation is unique. If a longer abbreviation is
#' returned, this is an indication that `abbrevaiate()` was not able to make it
#' shorter and be unique.
#'
#' Some of the common components of timezone names are given default
#' abbreviations, i.e. `"America"` becomes `"Amer"`. Use the `dictionary`
#' argument to override defaults.
#'
#' @param tz          `character`, timezone names to abbreviate
#' @param minwidth    `integer`, desired length of abbreviation
#' @param dictionary  `character`, named vector to override default dictionary:
#'   values are abbreviated components, names are unabbreviated components
#' @param ...         other arguments passed onto `abbreviate()`
#'
#' @return `character`, abbreviated timezone names
#' @keywords internal
#' @seealso OlsonNames()
#' @examples
#' abbreviate_olson("America/Chicago")
#' abbreviate_olson("America/Chicago", minwidth = 20)
#' abbreviate_olson("America/Chicago", dictionary = c(America = "USA"))
#' abbreviate_olson(OlsonNames())
#' @export
#'
abbreviate_olson <- function(tz, minwidth = 14L, dictionary = NULL, ...) {

  # ensure timezone is a character vector
  if (!rlang::is_character(tz)) {
    stop("tz must be a character vector", call. = FALSE)
  }

  # if we cannot return at least one character, return empty string
  if (minwidth < 1L) {
    return("")
  }

  # ensure non-null dictionary is a character vector
  if (!is.null(dictionary) && !rlang::is_character(dictionary)) {
    stop("dictionary must be a character vector", call. = FALSE)
  }

  # merge dictionaries, favouring the user-supplied set of dictionaries
  dictionary_merged <- c(dictionary, dict_default)

  # create data frame for abbreviations
  df <- abbreviate_olson_df(tz, minwidth, dictionary = dictionary_merged, ...)

  # recompose timezones
  recompose_tz <- function(x) {paste(x, collapse = "/")}
  df_agg <-
    stats::aggregate(df["abbv_final"], by = df["tz"], FUN = recompose_tz)

  # pull columns out of the data frame to form vector of abbreviations
  tz_abbv <- df_agg[["abbv_final"]]
  names(tz_abbv) <- df_agg[["tz"]]

  # send back in the same order we received
  tz_abbv[tz]
}

# if memoise is available, use memoised version
if (requireNamespace("memoise", quietly = TRUE)) {
  abbreviate_olson <- memoise::memoise(abbreviate_olson)
}

abbreviate_olson_df <- function(tz, minwidth = 14L, dictionary = NULL, ...){

  # This function may be useful to call for debugging
  #
  # tz           `character`, one-or-more Olson timezones
  # minwidth     `integer`, width to which the timezones are to be abbreviated
  # dictionary   `character`, named vector to insist on abbreviations
  # ...           other args passed onto `abbreviate()`
  #
  # returns `data.frame` with variables:
  #
  # index
  # index_max
  # tz
  # component
  # budget_initial
  # abbv_dict
  # budget_remaining
  # budget_provisional
  # budget_final
  # abbv_final

  # create data frame with one row for each component of each timezone,
  # with variables:
  #
  # index
  # index_max
  # tz
  # component
  # budget_initial
  #
  df <- decompose_tz(tz, minwidth)

  # apply dictionary (adds variable abbbv_dict)
  df$abbv_dict <- abbv_dict(df$component, df$budget_initial, dictionary)

  # treat the one-, two-, and three-component timezones together
  df_by_index_max <- split(df, df$index_max)

  # the function .abbrevaite by index loops through index and returns the
  # additional variables:
  #
  # budget_remaining
  # budget_provisional
  # budget_final
  # abbv_final
  #
  list_df_new <-
    map(df_by_index_max, abbreviate_by_index, minwidth = minwidth, ...)

  # bind the data frames together
  df_new <- do.call(rbind, list_df_new)

  df_new
}

decompose_tz <- function(tz, minwidth = 14L) {

  # tz           `character`, one-or-more Olson timezones
  # minwidth        `integer`, width to which the timezones are to be abbreviated
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
      component(tz),
      budget_initial(minwidth),
      by = c("index", "index_max"),
      all.x = TRUE,
      all.y = FALSE
    )

  result
}

component <- function(tz) {

  # tz           `character`, one-or-more Olson timezones
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

budget_initial <- function(minwidth) {

  # minwidth        `integer`, width to which the timezones are to be abbreviated
  #
  # `data.frame` with variables:
  #  - index     `integer`, index
  #  - index_max `integer`, maximum index
  #  - budget    `integer`, width budget
  #
  # data frame will have one row for each combination of index and index_max

  index <- lapply(seq(3), seq)
  index_max <- lapply(seq(3), function(x) {rep(x, x)})
  budget_initial <- lapply(seq(3), budget_initial_vector, minwidth = minwidth)

  data.frame(
    index = unlist(index),
    index_max = unlist(index_max),
    budget_initial = unlist(budget_initial)
  )
}

budget_initial_vector <- function(index_max, minwidth) {

  # index_max `integer`, maximum index of component within a timezone
  # minwidth  `integer`, width to which the timezones are to be abbreviated
  #
  # returns `integer`, vector with length equal to index_max,
  #  values sum to minwidth
  #
  # each value represents an initial budget for the width of each component
  # of a timezone
  #
  # - our baseline budget for minwidth of 14 is 4/9 and 4/2/6
  #
  # - as minwidth gets shorter, the budget for the first compnonent decreases
  #  to 3, then to 2
  #
  # - as minwidth gets larger, we expand the budget for the last component
  # until we don't need to anymore - then we expand the budget for the first
  # component until not needed, then for the middle component.
  #
  # - the turning-points are based on the Olson names for the Mac, but it might
  # be more robust to determine these on-the-fly for each system.
  #

  index_max <- as.integer(index_max)
  minwidth <- as.integer(minwidth)

  # one-component
  if (identical(index_max, 1L)) {
    result <- minwidth
  }

  # two-component
  if (identical(index_max, 2L)) {

    first <-
      4L +                                  # baseline is 4
      (minwidth < 13L) * -1L +              # less than 13, remove one
      (minwidth < 9L)  * -1L +              # less than 9, remove another
      (minwidth > 22L) * (minwidth - 22L)   # greater than 22, keep adding

    last <- minwidth - (first + 1L)         # last gets the leftovers

    result <- c(first, last)
  }

  # three-component
  if (identical(index_max, 3L)) {
    first <-
      4L +                                      # baseline is 4
      (minwidth < 13L) * -1L +                  # less than 13, remove one
      (minwidth < 9L)  * -1L +                  # less than 9, remove another
      (minwidth > 22L) * (minwidth - 22L) +     # greater than 22, keep adding
      (minwidth > 25L) * (minwidth - 25L) * -1L # greater than 25, stop adding

    middle <-
      2L +                                      # baseline is 2
      (minwidth > 25L) * (minwidth - 25L)       # greater than 25, keep adding

    last <- minwidth - (first + middle + 2L)    # last gets the leftovers

    result <- c(first, middle, last)
  }

  result
}

abbv_dict <- function(component, minwidth, dictionary) {

  # component   `character`, timezone component (vector)
  # minwidth    `integer`, minimum width for the abbreviation (vector)
  # dictionary  `character`, named vector of standard abbreviations
  #
  # returns `character` dictionary abbreviations of component for those
  #  components that are longer than minwidth

  abbrev <- component
  index <-
    rlang::has_name(dictionary, component) &
    nchar(component) > minwidth

  abbrev[index] <- dictionary[abbrev[index]]

  abbrev
}

abbreviate_by_index <- function(df, minwidth, ...) {

  df_by_index <- split(df, df$index)

  for (index in seq_along(df_by_index)) {

    df_index <- df_by_index[[index]]

    # update the remaining budget
    if (identical(index, 1L)) {
      # the first component has all the budget
      df_index$budget_remaining <- minwidth
    } else {

      df_prev <- df_by_index[[index - 1]]

      # the budget for subsequent components is reduced by
      # the length of the previous component plus one (separator)
      budget_remaining <-
        df_prev$budget_remaining - (map_int(df_prev$abbv_final, nchar) + 1)

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
      budget_final(df_index$budget_provisional, df_index$component)

    df_index$abbv_final <-
      abbv_final(df_index$abbv_dict, df_index$budget_final, ...)

    df_by_index[[index]] <- df_index
  }

  do.call(rbind, df_by_index)
}

budget_final <- function(budget_provisional, component) {

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

abbv_final <- function(abbv_dict, budget_final, ...) {

  # abbv_dict    `character` dictionary abbreviation
  # budget_final `integer`   length to which to abbreviate
  # ...          other args passed onto `abbreviate()`
  #
  # return `character` final abbreviation, grouping by
  #  budget_final, and calling abbreviate() for each group

  # group abbv_dict by budget_final
  abbv <- split(abbv_dict, budget_final)
  # get the budget for each group
  budget <- as.integer(names(abbv))

  # get the new abbreviations
  abbv_new <- unlist(map2(abbv, budget, abbreviate, ...))
  names(abbv_new) <- unlist(abbv)

  # put this in terms of the originial abbv_dict vector
  abbv_final <- abbv_new[abbv_dict]
  names(abbv_final) <- NULL

  abbv_final
}

# tries to comport with standard ISO names or or US postal abbreviations
dict_default <-
  c(
    # first element
    Africa = "Afr",
    America = "Amer",
    Antarctica = "Ant",
    Arctic = "Arc",
    Asia = "Asia",
    Atlantic = "Atl",
    Australia = "Aus",
    Brazil = "Bra",
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

