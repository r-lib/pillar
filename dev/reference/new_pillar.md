# Construct a custom pillar object

**\[experimental\]**

`new_pillar()` is the low-level constructor for pillar objects. It
supports arbitrary components. See
[`pillar()`](https://pillar.r-lib.org/dev/reference/pillar.md) for the
high-level constructor with default components.

## Usage

``` r
new_pillar(components, ..., width = NULL, class = NULL, extra = deprecated())
```

## Arguments

- components:

  A named list of components constructed with
  [`pillar_component()`](https://pillar.r-lib.org/dev/reference/new_pillar_component.md).

- ...:

  These dots are for future extensions and must be empty.

- width:

  Default width, optional.

- class:

  Name of subclass.

- extra:

  Deprecated.

## Details

Arbitrary components are supported. If your tibble subclass needs more
or different components in its pillars, override or extend
[`ctl_new_pillar()`](https://pillar.r-lib.org/dev/reference/ctl_new_pillar.md)
and perhaps
[`ctl_new_pillar_list()`](https://pillar.r-lib.org/dev/reference/ctl_new_pillar_list.md).

## Examples

``` r
lines <- function(char = "-") {
  stopifnot(nchar(char) == 1)
  structure(char, class = "lines")
}

format.lines <- function(x, width, ...) {
  paste(rep(x, width), collapse = "")
}

new_pillar(list(
  title = pillar_component(new_ornament(c("abc", "de"), align = "right")),
  lines = new_pillar_component(list(lines("=")), width = 1)
))
#> <pillar>
#> abc
#>  de
#> =  
```
