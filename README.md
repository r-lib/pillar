<!-- README.md is generated from README.Rmd on GitHub Actions: do not edit by hand -->

# pillar

<!-- badges: start -->

[![Lifecycle: maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing) [![R build status](https://github.com/r-lib/pillar/workflows/R-CMD-check/badge.svg)](https://github.com/r-lib/pillar/actions) [![Coverage status](https://codecov.io/gh/r-lib/pillar/branch/master/graph/badge.svg)](https://codecov.io/github/r-lib/pillar?branch=master) [![CRAN status](https://www.r-pkg.org/badges/version/pillar)](https://cran.r-project.org/package=pillar)

<!-- badges: end -->

pillar provides tools for styling columns of data, artfully using colour and unicode characters to guide the eye.

## Installation

<pre class='chroma'>
<span class='c'># pillar is installed if you install the tidyverse package:</span>
<span class='nf'><a href='https://rdrr.io/r/utils/install.packages.html'>install.packages</a></span><span class='o'>(</span><span class='s'>"tidyverse"</span><span class='o'>)</span>

<span class='c'># Alternatively, install just pillar:</span>
<span class='nf'><a href='https://rdrr.io/r/utils/install.packages.html'>install.packages</a></span><span class='o'>(</span><span class='s'>"pillar"</span><span class='o'>)</span>

<span class='c'># Or the the development version from GitHub:</span>
<span class='c'># install.packages("devtools")</span>
<span class='nf'>devtools</span><span class='nf'>::</span><span class='nf'><a href='https://devtools.r-lib.org//reference/remote-reexports.html'>install_github</a></span><span class='o'>(</span><span class='s'>"r-lib/pillar"</span><span class='o'>)</span></pre>

## Usage

pillar is a developer-facing package that is not designed for end-users but will eventually be incorporated in packages like [tibble](http://tibble.tidyverse.org).

<pre class='chroma'>
<span class='kr'><a href='https://rdrr.io/r/base/library.html'>library</a></span><span class='o'>(</span><span class='nv'><a href='https://github.com/r-lib/pillar'>pillar</a></span><span class='o'>)</span>

<span class='nv'>x</span> <span class='o'>&lt;-</span> <span class='m'>123456789</span> <span class='o'>*</span> <span class='o'>(</span><span class='m'>10</span> <span class='o'>^</span> <span class='nf'><a href='https://rdrr.io/r/base/c.html'>c</a></span><span class='o'>(</span><span class='o'>-</span><span class='m'>3</span>, <span class='o'>-</span><span class='m'>5</span>, <span class='kc'>NA</span>, <span class='o'>-</span><span class='m'>8</span>, <span class='o'>-</span><span class='m'>10</span><span class='o'>)</span><span class='o'>)</span>
<span class='nf'><a href='https://rdrr.io/pkg/pillar/man/pillar.html'>pillar</a></span><span class='o'>(</span><span class='nv'>x</span><span class='o'>)</span>
<span class='c'>#&gt;       <span style='color: #555555;font-style: italic;'>&lt;dbl&gt;</span></span>
<span class='c'>#&gt; <span style='text-decoration: underline;'>123</span><span>457.    </span></span>
<span class='c'>#&gt;   <span style='text-decoration: underline;'>1</span><span>235.    </span></span>
<span class='c'>#&gt;     <span style='color: #BB0000;'>NA</span><span>     </span></span>
<span class='c'>#&gt;      1.23  </span>
<span class='c'>#&gt;      0.012<span style='text-decoration: underline;'>3</span></span></pre>

If you render this in a console that supports colour, you’ll see something that looks like this:

<img src="man/figures/colours.png" width="200px" />

## Extending

The primary user of this package is [tibble](https://github.com/tidyverse/tibble), which lets pillar do all the formatting work. Packages that implement a data type to be used in a tibble column can add color with only a few changes:

1.  Implement the [`pillar_shaft()`](https://rdrr.io/pkg/pillar/man/pillar_shaft.html) method for your data type.
2.  Add pillar to `Suggests` and implement dynamic method registration using [`vctrs::s3_register()`](https://vctrs.r-lib.org/reference/s3_register.html).
    -   If you don’t mind the dependency, you can also add it to `Imports`, and import the methods you override with a regular `NAMESPACE` import.

[tidyverse/hms\#43](https://github.com/tidyverse/hms/pull/43) shows the changes that were necessary to add colored output for the hms package:

-   [`pillar.R`](https://github.com/tidyverse/hms/pull/43/files#diff-a63dd6b1da682a8549d03475ac91cdcf) for the actual implementation (old name `colformat.R`)
-   [`DESCRIPTION`](https://github.com/tidyverse/hms/pull/43/files#diff-35ba4a2677442e210c23a00a5601aba3) for the dependency
-   [`zzz.R`](https://github.com/tidyverse/hms/pull/43/files#diff-e549505eb95036528ca3b125f62915a6) for the dynamic method registration

Some more detail is given below.

### Implementing `pillar_shaft.your_class_name()`

This method accepts a vector of arbitrary length and is expected to return an S3 object with the following properties:

-   It has an attribute `"width"`
-   It can have an attribute `"min_width"`, if missing, `"width"` is used
-   It must implement a method [`format(x, width, ...)`](https://rdrr.io/r/base/format.html) that can be called with any value between `min_width` and `width`
    -   This method must return an object that inherits from `character` and has attributes `"align"` (with supported values `"left"`, `"right"`, and `"center"`) and `"width"`

The function [`new_pillar_shaft()`](https://rdrr.io/pkg/pillar/man/new_pillar_shaft.html) returns such an object, and also correctly formats `NA` values. In many cases, the implementation of `pillar_shaft.your_class_name()` will format the data as a character vector (using color for emphasis) and simply call [`new_pillar_shaft()`](https://rdrr.io/pkg/pillar/man/new_pillar_shaft.html). See [`pillar_shaft.numeric()`](https://rdrr.io/pkg/pillar/man/pillar_shaft.html) for a code that allows changing the display depending on the available width.

### Useful helpers

-   [`style_neg()`](https://rdrr.io/pkg/pillar/man/style_subtle.html) to format negative values
-   [`style_num()`](https://rdrr.io/pkg/pillar/man/style_subtle.html) to format numbers
-   [`style_subtle()`](https://rdrr.io/pkg/pillar/man/style_subtle.html) to de-emphasize

## Inspirations

-   [TextPlots](https://github.com/sunetos/TextPlots.jl) for use of Braille characters

-   [spark](https://github.com/holman/spark) for use of block characters.

The earliest use of unicode characters to generate sparklines appears to be [from 2009](https://blog.jonudell.net/2009/01/13/fuel-prices-and-pageviews/).

Exercising these ideas to their fullest requires a font with good support for block drawing characters. [PragamataPro](https://www.fsd.it/shop/fonts/pragmatapro/) is one such font.

------------------------------------------------------------------------

## Code of Conduct

Please note that the pillar project is released with a [Contributor Code of Conduct](https://pillar.r-lib.org/CODE_OF_CONDUCT.html). By contributing to this project, you agree to abide by its terms.
