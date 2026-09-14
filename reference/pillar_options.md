# Package options

Options that affect display of tibble-like output.

## Details

These options can be set via
[`options()`](https://rdrr.io/r/base/options.html) and queried via
[`getOption()`](https://rdrr.io/r/base/options.html).

## Options for the pillar package

- `width`: The width option controls the output width. Setting
  `options(pillar.width = )` to a larger value will lead to printing in
  multiple tiers (stacks).

- `pillar.print_max`: Maximum number of rows printed, default: `20`. Set
  to `Inf` to always print all rows. For compatibility reasons,
  `getOption("tibble.print_max")` and `getOption("dplyr.print_max")` are
  also consulted, this will be soft-deprecated in pillar v2.0.0.

- `pillar.print_min`: Number of rows printed if the table has more than
  `print_max` rows, default: `10`. For compatibility reasons,
  `getOption("tibble.print_min")` and `getOption("dplyr.print_min")` are
  also consulted, this will be soft-deprecated in pillar v2.0.0.

- `pillar.width`: Output width. Default: `NULL` (use
  `getOption("width")`). This can be larger than `getOption("width")`,
  in this case the output of the table's body is distributed over
  multiple tiers for wide tibbles. For compatibility reasons,
  `getOption("tibble.width")` and `getOption("dplyr.width")` are also
  consulted, this will be soft-deprecated in pillar v2.0.0.

- `pillar.max_footer_lines`: The maximum number of lines in the footer,
  default: `7`. Set to `Inf` to turn off truncation of footer lines. The
  `max_extra_cols` option still limits the number of columns printed.

- `pillar.max_extra_cols`: The maximum number of columns printed in the
  footer, default: `100`. Set to `Inf` to show all columns. Set the more
  predictable `max_footer_lines` to control the number of footer lines
  instead.

- `pillar.bold`: Use bold font, e.g. for column headers? This currently
  defaults to `FALSE`, because many terminal fonts have poor support for
  bold fonts.

- `pillar.subtle`: Use subtle style, e.g. for row numbers and data
  types? Default: `TRUE`.

- `pillar.subtle_num`: Use subtle style for insignificant digits?
  Default: `FALSE`, is also affected by the `subtle` option.

- `pillar.neg`: Highlight negative numbers? Default: `TRUE`.

- `pillar.sigfig`: The number of significant digits that will be printed
  and highlighted, default: `3`. Set the `subtle` option to `FALSE` to
  turn off highlighting of significant digits.

- `pillar.min_title_chars`: The minimum number of characters for the
  column title, default: `20`. Column titles may be truncated up to that
  width to save horizontal space. Set to `Inf` to turn off truncation of
  column titles.

- `pillar.min_chars`: The minimum number of characters wide to display
  character columns, default: `3`. Character columns may be truncated up
  to that width to save horizontal space. Set to `Inf` to turn off
  truncation of character columns.

- `pillar.max_dec_width`: The maximum allowed width for decimal
  notation, default: `13`.

- `pillar.bidi`: Set to `TRUE` for experimental support for
  bidirectional scripts. Default: `FALSE`. When this option is set,
  "left right override" and "first strong isolate" [Unicode
  controls](https://www.w3.org/International/questions/qa-bidi-unicode-controls)
  are inserted to ensure that text appears in its intended direction and
  that the column headings correspond to the correct columns.

- `pillar.superdigit_sep`: The string inserted between superscript
  digits and column names in the footnote. Defaults to a `"\u200b"`, a
  zero-width space, on UTF-8 platforms, and to `": "` on non-UTF-8
  platforms.

- `pillar.advice`: Should advice be displayed in the footer when columns
  or rows are missing from the output? Defaults to `TRUE` for
  interactive sessions, and to `FALSE` otherwise.

## Examples

``` r
df <- tibble::tibble(x = c(1.234567, NA, 5:10))
df
#> # A tibble: 8 × 1
#>       x
#>   <dbl>
#> 1  1.23
#> 2 NA   
#> 3  5   
#> 4  6   
#> 5  7   
#> 6  8   
#> 7  9   
#> 8 10   

# Change for the duration of the session:
old <- options(
  pillar.sigfig = 6,
  pillar.print_max = 5,
  pillar.print_min = 5,
  pillar.advice = FALSE
)
df
#> # A tibble: 8 × 1
#>          x
#>      <dbl>
#> 1  1.23457
#> 2 NA      
#> 3  5      
#> 4  6      
#> 5  7      
#> # ℹ 3 more rows

# Change back to the original value:
options(old)
df
#> # A tibble: 8 × 1
#>       x
#>   <dbl>
#> 1  1.23
#> 2 NA   
#> 3  5   
#> 4  6   
#> 5  7   
#> 6  8   
#> 7  9   
#> 8 10   
```
