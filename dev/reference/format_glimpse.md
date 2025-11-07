# Format a vector for horizontal printing

**\[experimental\]**

This generic provides the logic for printing vectors in
[`glimpse()`](https://pillar.r-lib.org/dev/reference/glimpse.md).

The output strives to be as unambiguous as possible, without
compromising on readability. In a list, to distinguish between vectors
and nested lists, the latter are surrounded by `[]` brackets. Empty
lists are shown as `[]`. Vectors inside lists, of length not equal to
one, are surrounded by `<>` angle brackets. Empty vectors are shown as
`<>`.

## Usage

``` r
format_glimpse(x, ...)
```

## Arguments

- x:

  A vector.

- ...:

  Arguments passed to methods.

## Value

A character vector of the same length as `x`.

## Examples

``` r
format_glimpse(1:3)
#> [1] "1" "2" "3"

# Lists use [], vectors inside lists use <>
format_glimpse(list(1:3))
#> [1] "<1, 2, 3>"
format_glimpse(list(1, 2:3))
#> [1] "1"      "<2, 3>"
format_glimpse(list(list(1), list(2:3)))
#> [1] "[1]"      "[<2, 3>]"
format_glimpse(list(as.list(1), as.list(2:3)))
#> [1] "[1]"    "[2, 3]"
format_glimpse(list(character()))
#> [1] "<>"
format_glimpse(list(NULL))
#> [1] "<NULL>"

# Character strings are always quoted
writeLines(format_glimpse(letters[1:3]))
#> "a"
#> "b"
#> "c"
writeLines(format_glimpse(c("A", "B, C")))
#> "A"
#> "B, C"

# Factors are quoted only when needed
writeLines(format_glimpse(factor(letters[1:3])))
#> a
#> b
#> c
writeLines(format_glimpse(factor(c("A", "B, C"))))
#> "A"
#> "B, C"
```
