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
#' \dontrun{
#'   purrr::map_chr(OlsonNames(), abbreviate_olson)
#' }
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
    Argentina = "Arg",
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
  width_budget <- get_width_budget(width, n_component)

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

# get a budget for the width available to each component
# - note: we cannot expect anything meaningful at width less than 2
get_width_budget <- function(width, n_component) {

  # make sure we use integers
  width <- as.integer(width)
  n_component <- as.integer(n_component)

  # account for the separators
  width_available <- width - (n_component - 1)

  # distribute width equally among components
  width_budget <- rep(floor(width_available / n_component), n_component)

  # distribute extra width
  width_extra <- as.integer(width_available %% n_component)

  # if we have any extra, give it to the last component
  if (width_extra > 0L) {
    width_budget[n_component] <- width_budget[n_component] + 1
  }

  # if we have two extra, give it to the first component
  # - by definition, this can be the case only if n_component == 3L
  if (identical(width_extra, 2L)) {
    width_budget[1] <- width_budget[1] + 1
  }

  width_budget
}

# given Olson timezones, return a dataframe with:
#  - tz        `character`, full tz-name
#  - index     `integer`, index of component within `tz`
#  - index_max `integer`, maximum index for `tz`
#  - component `character`, this component
component_olson <- function(tz) {

  # calculate for every timezone supplied
  components <- strsplit(tz, split = "/")
  index <- lapply(components, seq_along)
  index_max <- lapply(index, function(x){rep(max(x), max(x))})
  tz_list <- mapply(function(tz, index){rep(tz, max(index))}, tz, index)

  # collapse into a data.frame
  data.frame(
    tz = unlist(tz_list, use.names = FALSE),
    index = unlist(index, use.names = FALSE),
    index_max = unlist(index_max, use.names = FALSE),
    component = unlist(components, use.names = FALSE)
  )
}


