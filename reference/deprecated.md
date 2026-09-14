# Deprecated functions

**\[deprecated\]**

Use
[`vctrs::vec_is()`](https://vctrs.r-lib.org/reference/vec_assert.html)
instead of `is_vector_s3()`.

Use
[`testthat::expect_snapshot()`](https://testthat.r-lib.org/reference/expect_snapshot.html)
instead of `expect_known_display()`.

## Usage

``` r
is_vector_s3(x)

expect_known_display(object, file, ..., width = 80L, crayon = TRUE)
```

## Arguments

- object:

  An object to check.

- file:

  File path where known value/output will be stored.

- ...:

  Unused.

- width:

  The width of the output.

- crayon:

  Color the output?
