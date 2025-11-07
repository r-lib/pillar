# Construct a setup object for formatting

The object returned from the default method of
[`tbl_format_setup()`](https://pillar.r-lib.org/dev/reference/tbl_format_setup.md)
is an object with a `"class"` attribute and the elements described in
the "Parameters" section.

Named elements can be added to such objects without affecting the
behavior. Do not modify existing elements.

## Usage

``` r
new_tbl_format_setup(
  width,
  tbl_sum,
  x = NULL,
  df = NULL,
  body = NULL,
  rows_missing = NULL,
  rows_total = NULL,
  extra_cols = NULL,
  extra_cols_total = NULL,
  max_footer_lines = NULL,
  abbrev_cols = NULL
)
```

## Arguments

- width:

  The `width` argument unchanged.

- tbl_sum:

  A named character vector, as returned from
  [`tbl_sum()`](https://pillar.r-lib.org/dev/reference/tbl_sum.md).

- x:

  The input object unchanged.

- df:

  A data frame representation of the intended output, trimmed to the
  desired number of rows.

- body:

  A character vector with the formatted body, one element per line,

- rows_missing:

  The number of rows not shown from the body, `NA` if unknown.

- rows_total:

  The total number of rows in the data, `NA` if unknown.

- extra_cols:

  Columns that did not fit into the body, as a character vector of
  formatted column names and types.

- extra_cols_total:

  The total number of columns, may be larger than `length(extra_cols)`.

- max_footer_lines:

  The maximum number of lines in the footer.

- abbrev_cols:

  Formatted names of the columns that are shown abbreviated in the body.
