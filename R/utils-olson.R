#' Abbreviate an Olson timezone name
#' 
#' @param tz             `character`, length-one, timezone-name to abbreviate 
#' @param tz_compopnent  `character`, timezone-name component to abbreviate
#' @param width          `integer`, maximum number of characters
#' @param dictionary     `character`, named vector: values are abbreviated 
#'   components, names are unabbreviated components
#' 
#' @return `character`, abbreviated name
#' @keywords internal
#' @examples 
#' abbreviate_olson("America/Chicago")
#' abbreviate_olson("America/Chicago", width = 9)
#' abbreviate_olson("America/Chicago", dictionary = c(America = "USA"))
#' @export
#' 
abbreviate_olson <- function(tz, width = 14L, dictionary = NULL) {
  
  # could use assertthat here, but for the dependence
  if (!rlang::is_string(tz)) {
    # confirm we want .call = FALSE
    stop("tz must be a length-one character vector", call. = FALSE) 
  }

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
  
  # this is why we restrict to single-string
  tz_components <- strsplit(tz, split = "/")[[1]]
  tz_abbreviated <- tz
  
  # loop over our components, abbreviate as needed
  for (i in seq_along(tz_components)) {
  
    # have we abbreviated enough?
    if (nchar(tz_abbreviated) <= width) {
      return(tz_abbreviated)
    }
    
    # if this is our last component, 
    #   set component-width to satisfy overall-width
    #   otherwise, set to 4
    #
    if (identical(i, length(tz_components))) {
      width_component <- 
        nchar(tz_components[[i]]) - (nchar(tz_abbreviated) - width)
      # width - nchar(tz_abbreviated)
    } else {
      width_component <- 4L
    }

    # abbreviate the component
    tz_components[[i]] <- 
      abbreviate_olson_component(
        tz_components[[i]], 
        width = width_component, 
        dictionary = dictionary_default[[i]]
      )

    tz_abbreviated <- paste(tz_components, collapse = "/") 
    
  }
    
  tz_abbreviated
}

# @rdname abbreviate_olson
# @examples
# abbreviate_olson_component("America")
# abbreviate_olson_component("America", width = 5)
# abbreviate_olson_component("America", dictionary = c(America = "USA"))
#   
abbreviate_olson_component <- function(tz_component, width = 4L, 
                                       dictionary = NULL) {
  
  if (tz_component %in% names(dictionary)) {
    tz_component <- dictionary[[tz_component]]
  }
  
  abbreviate(tz_component, minlength = width)
}