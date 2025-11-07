# Components of a pillar

**\[experimental\]**

`new_pillar_component()` constructs an object of class
`"pillar_component"`. It is used by custom
[`ctl_new_pillar()`](https://pillar.r-lib.org/dev/reference/ctl_new_pillar.md)
methods to create pillars with nonstandard components.

`pillar_component()` is a convenience helper that wraps the input in a
list and extracts width and minimum width.

## Usage

``` r
new_pillar_component(x, ..., width, min_width = NULL)

pillar_component(x)
```

## Arguments

- x:

  A bare list of length one (for `new_pillar_component()`), or an object
  with `"width"` and `"min_width"` attributes (for
  `pillar_component()`).

- ...:

  These dots are for future extensions and must be empty.

- width, min_width:

  Width and minimum width for the new component. If `min_width` is
  `NULL`, it is assumed to match `width`.

## Details

Objects of class `"pillar"` are internally a named lists of their
components. The default components for pillars created by
[`pillar()`](https://pillar.r-lib.org/dev/reference/pillar.md) are:
`title` (may be missing), `type`, and `data`. Each component is a
`"pillar_component"` object.

This class captures contents that can be fitted in a simple column.
Compound columns are represented by multiple pillar objects, each with
their own components.

## Examples

``` r
new_pillar_component(list(letters[1:3]), width = 1)
#> [[1]]
#> [1] "a" "b" "c"
#> 
#> attr(,"width")
#> [1] 1
#> attr(,"min_width")
#> [1] 1
#> attr(,"class")
#> [1] "pillar_component"
pillar_component(new_pillar_title("letters"))
#> [[1]]
#> [[1]]
#> [1] "letters"
#> 
#> attr(,"class")
#> [1] "pillar_title"
#> attr(,"width")
#> [1] 7
#> attr(,"min_width")
#> [1] 7
#> 
#> attr(,"width")
#> [1] 7
#> attr(,"min_width")
#> [1] 7
#> attr(,"class")
#> [1] "pillar_component"
pillar_component(new_pillar_type(letters))
#> [[1]]
#> [[1]]
#> [1] "chr"
#> 
#> attr(,"class")
#> [1] "pillar_type"
#> attr(,"width")
#> [1] 5
#> attr(,"min_width")
#> [1] 5
#> 
#> attr(,"width")
#> [1] 5
#> attr(,"min_width")
#> [1] 5
#> attr(,"class")
#> [1] "pillar_component"
pillar_component(pillar_shaft(letters[1:3]))
#> [[1]]
#> <pillar_ornament>
#> a
#> b
#> c
#> 
#> attr(,"width")
#> [1] 1
#> attr(,"min_width")
#> [1] 1
#> attr(,"class")
#> [1] "pillar_component"
```
