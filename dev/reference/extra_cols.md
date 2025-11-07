# Retrieve information about columns that didn't fit the available width

**\[soft-deprecated\]**

Formatting a
[colonnade](https://pillar.r-lib.org/dev/reference/colonnade.md) object
may lead to some columns being omitted due to width restrictions. This
method returns a character vector that describes each of the omitted
columns.

## Usage

``` r
extra_cols(x, ...)

# S3 method for class 'pillar_squeezed_colonnade'
extra_cols(x, ..., n = Inf)
```

## Arguments

- x:

  The result of
  [`squeeze()`](https://pillar.r-lib.org/dev/reference/squeeze.md) on a
  [colonnade](https://pillar.r-lib.org/dev/reference/colonnade.md)
  object

- ...:

  Arguments passed to methods.

- n:

  The number of extra columns to return; the returned vector will always
  contain as many elements as there are extra columns, but elements
  beyond `n` will be `NA`.
