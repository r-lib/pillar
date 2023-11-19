# `keep_empty()` snapshot test

    Code
      keep_empty()
    Output
      function(x) {
          ret <- rep_along(x, "")
          update <- which(is.na(x) | x != "")
          ret[update] <- fun(x[update])
          ret
        }
      <environment: 0x564d914c2960>

# `pillar_na()` snapshot test

    Code
      pillar_na()
    Output
      [1] "NA"

# `has_color()` snapshot test

    Code
      has_color()
    Output
      [1] FALSE

# `crayon_underline()` snapshot test

    Code
      crayon_underline()
    Output
      character(0)

# `crayon_italic()` snapshot test

    Code
      crayon_italic()
    Output
      character(0)

# `crayon_red()` snapshot test

    Code
      crayon_red()
    Output
      character(0)

# `crayon_yellow()` snapshot test

    Code
      crayon_yellow()
    Output
      character(0)

# `crayon_bold()` snapshot test

    Code
      crayon_bold()
    Output
      character(0)

