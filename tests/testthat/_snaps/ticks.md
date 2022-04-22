# title ticks and width

    Code
      format_title("proper_title", 15)
    Output
      [1] "proper_title"
    Code
      format_title("proper_title", 12)
    Output
      [1] "proper_title"
    Code
      format_title("proper_title", 10)
    Output
      [1] "proper_t~˟"
    Code
      format_title("proper_title", 10, footnote = FALSE)
    Output
      [1] "proper_ti~"
    Code
      format_title("`a b`", 6)
    Output
      [1] "`a b`"
    Code
      format_title("`a b`", 5)
    Output
      [1] "`a b`"
    Code
      format_title("`a b`", 4)
    Output
      [1] "`~`˟"
    Code
      format_title("`a b`", 4, footnote = FALSE)
    Output
      [1] "`a~`"
    Code
      format_title("`a b`", 3)
    Output
      [1] "~`˟"
    Code
      format_title("`a b`", 3, footnote = FALSE)
    Output
      [1] "`~`"

