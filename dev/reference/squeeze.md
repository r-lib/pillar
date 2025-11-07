# Squeeze a colonnade to a fixed width

**\[soft-deprecated\]**

The `squeeze()` function usually doesn't need to be called manually. It
returns an object suitable for printing and formatting at a fixed width
with additional information about omitted columns, which can be
retrieved via
[`extra_cols()`](https://pillar.r-lib.org/dev/reference/extra_cols.md).

## Usage

``` r
squeeze(x, width = NULL, ...)
```
