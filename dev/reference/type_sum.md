# Provide a succinct summary of an object

`type_sum()` gives a brief summary of object type. Objects that commonly
occur in a data frame should return a string with four or less
characters. For most inputs, the argument is forwarded to
[`vctrs::vec_ptype_abbr()`](https://vctrs.r-lib.org/reference/vec_ptype_full.html).

`obj_sum()` also includes the size (but not the shape) of the object if
[`vctrs::vec_is()`](https://vctrs.r-lib.org/reference/vec_assert.html)
is `TRUE`. It should always return a string (a character vector of
length one). As of pillar v1.6.1, the default method forwards to
[`vctrs::vec_ptype_abbr()`](https://vctrs.r-lib.org/reference/vec_ptype_full.html)
for vectors and to `type_sum()` for other objects. Previous versions
always forwarded to `type_sum()`. An attribute named `"short"` in the
return value will be picked up by the
[`pillar_shaft()`](https://pillar.r-lib.org/dev/reference/pillar_shaft.md)
method for lists, and used if space is limited.

`size_sum()` is called by `obj_sum()` to format the size of the object.
It should always return a string (a character vector of length one), it
can be an empty string `""` to omit size information, this is what the
default method does for scalars.

## Usage

``` r
type_sum(x)

obj_sum(x)

size_sum(x)
```

## Arguments

- x:

  an object to summarise. Generally only methods of atomic vectors and
  variants have been implemented.

## Details

When formatting a pillar, `type_sum()` will be called on a slice of the
column vector. The formatted type should only depend on the type and not
on the data, to avoid confusion.

## Examples

``` r
obj_sum(1:10)
#> [1] "int [10]"
#> attr(,"short")
#> [1] "int"
obj_sum(matrix(1:10))
#> [1] "int [10 × 1]"
#> attr(,"short")
#> [1] "int[…]"
obj_sum(data.frame(a = 1))
#> [1] "df [1 × 1]"
#> attr(,"short")
#> [1] "df"
obj_sum(Sys.Date())
#> [1] "date [1]"
#> attr(,"short")
#> [1] "date"
obj_sum(Sys.time())
#> [1] "dttm [1]"
#> attr(,"short")
#> [1] "dttm"
obj_sum(mean)
#> [1] "fn"

size_sum(1:10)
#> [1] "[10]"
size_sum(trees)
#> [1] "[31 × 3]"
size_sum(Titanic)
#> [1] "[4 × 2 × 2 × 2]"
```
