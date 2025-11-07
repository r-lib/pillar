# Printing a tibble: Tracking control flow

What happens when a tibble is printed? This vignette shows the actual
control flow, powered by the [debugme
package](https://github.com/r-lib/debugme#readme). See
[`vignette("printing")`](https://pillar.r-lib.org/dev/articles/printing.md)
for a detailed description of the control and data flows.

To activate debugging, we need to set an environment variable before
loading the pillar package. As a result, debug strings in pillar’s code
are replaced with calls to a logging function.

By default, debugme also shows timestamps. This is disabled to keep the
output stable.

``` r
Sys.setenv(DEBUGME = "!!!!pillar")
Sys.setenv(DEBUGME_SHOW_TIMESTAMP = "no")

library(pillar)

tbl <- tibble::tibble(a = 1:3, b = tibble::tibble(c = 4:6, d = 7:9), e = 10:12)
print(tbl, width = 23)
```

    #> #> pillar tbl_format_setup()
    #> #> pillar +-tbl_format_setup.tbl()
    #> #> pillar   +-ctl_colonnade()
    #> #> pillar     +-ctl_new_compound_pillar(width = 21, title = "a")
    #> #> pillar       +-ctl_new_compound_pillar.tbl(width = 21, title = "a")
    #> #> pillar         +-ctl_new_pillar(width = 21, title = "a")
    #> #> pillar           +-ctl_new_pillar.tbl(width = 21, title = "a")
    #> #> pillar             +-pillar(title = "a", width = 21)
    #> #> pillar               +-new_pillar_title(x = "a")
    #> #> pillar               +-new_pillar_type(class(x) = "integer")
    #> #> pillar               +-pillar_shaft(class(x) = "integer")
    #> #> pillar               +-new_pillar_component(x = <list: <pllr_sh_>>, width = 1L, min_width = 1L)
    #> #> pillar               +-new_pillar(width = 21, class = NULL)
    #> #> pillar                 +-new_pillar_component(x = <list: <pllr_ttl>>, width = 1L, min_width = 1L)
    #> #> pillar                 +-new_pillar_component(x = <list: <pllr_typ>>, width = 5L, min_width = 5L)
    #> #> pillar     +-ctl_new_compound_pillar(width = 15, title = "b")
    #> #> pillar       +-ctl_new_compound_pillar.tbl(width = 15, title = "b")
    #> #> pillar         +-ctl_new_compound_pillar(width = 15, title = <chr: "b$", "c">)
    #> #> pillar           +-ctl_new_compound_pillar.tbl(width = 15, title = <chr: "b$", "c">)
    #> #> pillar             +-ctl_new_pillar(width = 15, title = "b$c")
    #> #> pillar               +-ctl_new_pillar.tbl(width = 15, title = "b$c")
    #> #> pillar                 +-pillar(title = "b$c", width = 15)
    #> #> pillar                   +-new_pillar_title(x = "b$c")
    #> #> pillar                   +-new_pillar_type(class(x) = "integer")
    #> #> pillar                   +-pillar_shaft(class(x) = "integer")
    #> #> pillar                   +-new_pillar_component(x = <list: <pllr_sh_>>, width = 1L, min_width = 1L)
    #> #> pillar                   +-new_pillar(width = 15, class = NULL)
    #> #> pillar                     +-new_pillar_component(x = <list: <pllr_ttl>>, width = 3L, min_width = 3L)
    #> #> pillar                     +-new_pillar_component(x = <list: <pllr_typ>>, width = 5L, min_width = 5L)
    #> #> pillar         +-ctl_new_compound_pillar(width = 9, title = <chr: "$", "d">)
    #> #> pillar           +-ctl_new_compound_pillar.tbl(width = 9, title = <chr: "$", "d">)
    #> #> pillar             +-ctl_new_pillar(width = 9, title = "$d")
    #> #> pillar               +-ctl_new_pillar.tbl(width = 9, title = "$d")
    #> #> pillar                 +-pillar(title = "$d", width = 9)
    #> #> pillar                   +-new_pillar_title(x = "$d")
    #> #> pillar                   +-new_pillar_type(class(x) = "integer")
    #> #> pillar                   +-pillar_shaft(class(x) = "integer")
    #> #> pillar                   +-new_pillar_component(x = <list: <pllr_sh_>>, width = 1L, min_width = 1L)
    #> #> pillar                   +-new_pillar(width = 9, class = NULL)
    #> #> pillar                     +-new_pillar_component(x = <list: <pllr_ttl>>, width = 2L, min_width = 2L)
    #> #> pillar                     +-new_pillar_component(x = <list: <pllr_typ>>, width = 5L, min_width = 5L)
    #> #> pillar         +-new_pillar_component(x = <list: <pllr_ttl>, <pllr_ttl>>, width = <int: 3L, 2L>, min_width = <int: 3L, 2L>)
    #> #> pillar         +-new_pillar_component(x = <list: <pllr_typ>, <pllr_typ>>, width = <int: 5L, 5L>, min_width = <int: 5L, 5L>)
    #> #> pillar         +-new_pillar_component(x = <list: <pllr_sh_>, <pllr_sh_>>, width = <int: 1L, 1L>, min_width = <int: 1L, 1L>)
    #> #> pillar         +-new_pillar(width = NULL, class = "compound_pillar")
    #> #> pillar     +-ctl_new_compound_pillar(width = 3, title = "e")
    #> #> pillar       +-ctl_new_compound_pillar.tbl(width = 3, title = "e")
    #> #> pillar         +-ctl_new_pillar(width = 3, title = "e")
    #> #> pillar           +-ctl_new_pillar.tbl(width = 3, title = "e")
    #> #> pillar             +-pillar(title = "e", width = 3)
    #> #> pillar               +-new_pillar_title(x = "e")
    #> #> pillar               +-new_pillar_type(class(x) = "integer")
    #> #> pillar     +-new_pillar_component(x = <list: <pllr_ttl>, <pllr_ttl>, <pllr_ttl>>, width = <int: 1L, 3L, 2L>, min_width = <int: 1L, 3L, 2L>)
    #> #> pillar     +-new_pillar_component(x = <list: <pllr_typ>, <pllr_typ>, <pllr_typ>>, width = <int: 5L, 5L, 5L>, min_width = <int: 5L, 5L, 5L>)
    #> #> pillar     +-new_pillar_component(x = <list: <pllr_sh_>, <pllr_sh_>, <pllr_sh_>>, width = <int: 1L, 1L, 1L>, min_width = <int: 1L, 1L, 1L>)
    #> #> pillar     +-new_pillar(width = NULL, class = "compound_pillar")
    #> #> pillar     +-new_pillar(width = NULL, class = NULL)
    #> #> pillar       +-new_pillar_component(x = <list: <pllr_ttl>>, width = 1L, min_width = 1L)
    #> #> pillar       +-new_pillar_component(x = <list: <pllr_typ>>, width = 5L, min_width = 5L)
    #> #> pillar       +-new_pillar_component(x = <list: <pllr_sh_>>, width = 1L, min_width = 1L)
    #> #> pillar     +-new_pillar(width = NULL, class = NULL)
    #> #> pillar       +-new_pillar_component(x = <list: <pllr_ttl>>, width = 3L, min_width = 3L)
    #> #> pillar       +-new_pillar_component(x = <list: <pllr_typ>>, width = 5L, min_width = 5L)
    #> #> pillar       +-new_pillar_component(x = <list: <pllr_sh_>>, width = 1L, min_width = 1L)
    #> #> pillar     +-new_pillar(width = NULL, class = NULL)
    #> #> pillar       +-new_pillar_component(x = <list: <pllr_ttl>>, width = 2L, min_width = 2L)
    #> #> pillar       +-new_pillar_component(x = <list: <pllr_typ>>, width = 5L, min_width = 5L)
    #> #> pillar       +-new_pillar_component(x = <list: <pllr_sh_>>, width = 1L, min_width = 1L)
    #> #> pillar     +-new_pillar_component(x = <list: <pllr_rf_>>, width = 1L, min_width = 1L)
    #> #> pillar     +-new_pillar_component(x = <list: <pllr_rf_>>, width = 1L, min_width = 1L)
    #> #> pillar     +-new_pillar(width = NULL, class = NULL)
    #> #> # A tibble: 3 x 3
    #> #>       a   b$c    $d
    #> #>   <int> <int> <int>
    #> #> 1     1     4     7
    #> #> 2     2     5     8
    #> #> 3     3     6     9
    #> #> # … with 1 more
    #> #> #   variable: e <int>
