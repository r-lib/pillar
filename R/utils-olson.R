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

  # could use assertthat here, but for the dependence
  if (!rlang::is_string(tz)) {
    # confirm we want .call = FALSE
    stop("tz must be a length-one character vector", call. = FALSE)
  }

  # we try to

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

  # merge dictionaries, favoring the user-supplied set of dictionaries
  dictionary_merged <-
    lapply(
      dictionary_default,
      function(x, y) {c(y, x)},
      y = dictionary
    )

  # this is why we restrict to single-string
  tz_components <- strsplit(tz, split = "/")[[1]]
  tz_abbreviated <- tz

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
        nchar(tz_components[[i]]) - (nchar(tz_abbreviated) - width)
      # width of current component -
      #   difference between (current) abbreviated timezone and budgeted width
    } else {
      width_component <- 4L
    }

    # abbreviate the component
    tz_components[[i]] <-
      abbreviate_olson_component(
        tz_components[[i]],
        width = width_component,
        dictionary = dictionary_merged[[i]]
      )

    tz_abbreviated <- paste(tz_components, collapse = "/")

  }

  tz_abbreviated
}

# abbreviate a component of the timezone
abbreviate_olson_component <- function(tz_component, width = 4L,
                                       dictionary = NULL) {

  if (tz_component %in% names(dictionary)) {
    tz_component <- dictionary[[tz_component]]
  }

  tz_component_abbrevieted <- abbreviate(tz_component, minlength = width)

  tz_component_abbrevieted
}
