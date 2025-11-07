# Constructor for column data

The `new_pillar_shaft()` constructor creates objects of the
`"pillar_shaft"` class. This is a virtual or abstract class, you must
specify the `class` argument. By convention, this should be a string
that starts with `"pillar_shaft_"`. See
[`vignette("extending", package = "tibble")`](https://tibble.tidyverse.org/articles/extending.html)
for usage examples.

This method accepts a vector of arbitrary length and is expected to
return an S3 object with the following properties:

- It has an attribute `"width"`

- It can have an attribute `"min_width"`, if missing, `"width"` is used

- It must implement a method `format(x, width, ...)` that can be called
  with any value between `min_width` and `width`

- This method must return an object that inherits from `character` and
  has attributes `"align"` (with supported values `"left"`, `"right"`,
  and `"center"`) and `"width"`

The function `new_pillar_shaft()` returns such an object, and also
correctly formats `NA` values. In many cases, the implementation of
`pillar_shaft.your_class_name()` will format the data as a character
vector (using color for emphasis) and simply call `new_pillar_shaft()`.
See `pillar:::pillar_shaft.numeric` for a code that allows changing the
display depending on the available width.

`new_pillar_shaft_simple()` provides an implementation of the
`pillar_shaft` class suitable for output that has a fixed formatting,
which will be truncated with a continuation character (ellipsis or `~`)
if it doesn't fit the available width. By default, the required width is
computed from the natural width of the `formatted` argument.

## Usage

``` r
new_pillar_shaft(
  x,
  ...,
  width = NULL,
  min_width = width,
  type_sum = NULL,
  class = NULL,
  subclass = NULL
)

new_pillar_shaft_simple(
  formatted,
  ...,
  width = NULL,
  align = "left",
  min_width = NULL,
  na = NULL,
  na_indent = 0L,
  shorten = c("back", "front", "mid", "abbreviate"),
  short_formatted = NULL
)
```

## Arguments

- x:

  An object

- ...:

  Passed on to `new_pillar_shaft()`.

- width:

  The maximum column width.

- min_width:

  The minimum allowed column width, `width` if omitted.

- type_sum:

  **\[experimental\]**

  Override the type summary displayed at the top of the data. This
  argument, if given, takes precedence over the type summary provided by
  [`type_sum()`](https://pillar.r-lib.org/dev/reference/type_sum.md).

- class:

  The name of the subclass.

- subclass:

  Deprecated, pass the `class` argument instead.

- formatted:

  The data to show, an object coercible to
  [character](https://rdrr.io/r/base/character.html).

- align:

  Alignment of the column.

- na:

  String to use as `NA` value, defaults to `"NA"` styled with
  [`style_na()`](https://pillar.r-lib.org/dev/reference/style_subtle.md)
  with fallback if color is not available.

- na_indent:

  Indentation of `NA` values.

- shorten:

  How to abbreviate the data if necessary:

  - `"back"` (default): add an ellipsis at the end

  - `"front"`: add an ellipsis at the front

  - `"mid"`: add an ellipsis in the middle

  - `"abbreviate"`: use
    [`abbreviate()`](https://rdrr.io/r/base/abbreviate.html)

- short_formatted:

  If provided, a character vector of the same length as `formatted`, to
  be used when the available width is insufficient to show the full
  output.

## Details

The `formatted` argument may also contain ANSI escapes to change color
or other attributes of the text, provided e.g. by the cli package.
