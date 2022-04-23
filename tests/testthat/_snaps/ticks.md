# title ticks and width

    Code
      format_title("proper_title", 15, footnote = FALSE)
    Output
      [1] "proper_title"
    Code
      format_title("proper_title", 12, footnote = FALSE)
    Output
      [1] "proper_title"
    Code
      format_title("proper_title", 10, footnote = FALSE)
    Output
      [1] "proper_ti~"
    Code
      format_title("`a b`", 6, footnote = FALSE)
    Output
      [1] "`a b`"
    Code
      format_title("`a b`", 5, footnote = FALSE)
    Output
      [1] "`a b`"
    Code
      format_title("`a b`", 4, footnote = FALSE)
    Output
      [1] "`a~`"
    Code
      format_title("`a b`", 3, footnote = FALSE)
    Output
      [1] "`~`"
    Code
      format_title("`a b`", 3, footnote = FALSE)
    Output
      [1] "`~`"

