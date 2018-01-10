# pillar 1.0.1 (2017-11-27)

- Work around failing CRAN tests on Windows.


# pillar 1.0.0 (2017-11-16)

Initial release.

## User functions

    pillar(x, title = NULL, width = NULL, ...)
    colonnade(x, has_row_id = TRUE, width = NULL, ...)
    squeeze(x, width = NULL, ...)

## Functions for implementers of data types

    new_pillar_shaft_simple(formatted, ..., width = NULL, align = "left", min_width = NULL, na_indent = 0L)
    new_pillar_shaft(x, ..., width, min_width = width, subclass)
    new_ornament(x, width = NULL, align = NULL)
    get_extent(x)
    get_max_extent(x)

## Utilities

    dim_desc(x)
    style_na(x)
    style_neg(x)
    style_num(x, negative, significant = rep_along(x, TRUE))
    style_subtle(x)

## Testing helper

    expect_known_display(object, file, ..., width = 80L, crayon = TRUE)

## Own S3 methods

    pillar_shaft(x, ...) # AsIs, Date, POSIXt, character, default, list, logical, numeric
    type_sum(x) # AsIs, Date, POSIXct, data.frame, default, difftime, factor, ordered
    is_vector_s3(x) # Date, POSIXct, data.frame, default, difftime, factor, ordered
    obj_sum(x) # AsIs, POSIXlt, default, list
    extra_cols(x, ...) # squeezed_colonnade
