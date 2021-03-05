<!-- README.md is generated from README.Rmd on GitHub Actions: do not edit by hand -->

<!-- .github/README.md is copied manually from README.md and adapted -->

# pillar

<!-- badges: start -->

[![Lifecycle: stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable) [![R build status](https://github.com/r-lib/pillar/workflows/R-CMD-check/badge.svg)](https://github.com/r-lib/pillar/actions) [![Coverage status](https://codecov.io/gh/r-lib/pillar/branch/master/graph/badge.svg)](https://codecov.io/github/r-lib/pillar?branch=master) [![CRAN status](https://www.r-pkg.org/badges/version/pillar)](https://cran.r-project.org/package=pillar)

<!-- badges: end -->

pillar provides tools for styling columns of data, artfully using colour and unicode characters to guide the eye.

## Installation

<pre class='chroma'>
<span class='c'># pillar is installed if you install the tidyverse package:</span>
<span class='nf'><a href='https://rdrr.io/r/utils/install.packages.html'>install.packages</a></span><span class='o'>(</span><span class='s'>"tidyverse"</span><span class='o'>)</span>

<span class='c'># Alternatively, install just pillar:</span>
<span class='nf'><a href='https://rdrr.io/r/utils/install.packages.html'>install.packages</a></span><span class='o'>(</span><span class='s'>"pillar"</span><span class='o'>)</span></pre>

## Usage

pillar is a developer-facing package that is not designed for end-users. It powers the [`print()`](https://rdrr.io/r/base/print.html) and [`format()`](https://rdrr.io/r/base/format.html) methods for [tibble](https://tibble.tidyverse.org/)s. It also and defines generics and helpers that are useful for package authors who create custom vector classes (see <https://github.com/krlmlr/awesome-vctrs#readme> for examples) or custom table classes (like [dbplyr](https://dbplyr.tidyverse.org/) or [sf](https://r-spatial.github.io/sf/)).

<pre class='chroma'>
<span class='kr'><a href='https://rdrr.io/r/base/library.html'>library</a></span><span class='o'>(</span><span class='nv'><a href='https://pillar.r-lib.org/'>pillar</a></span><span class='o'>)</span>

<span class='nv'>x</span> <span class='o'>&lt;-</span> <span class='m'>123456789</span> <span class='o'>*</span> <span class='o'>(</span><span class='m'>10</span> <span class='o'>^</span> <span class='nf'><a href='https://rdrr.io/r/base/c.html'>c</a></span><span class='o'>(</span><span class='o'>-</span><span class='m'>3</span>, <span class='o'>-</span><span class='m'>5</span>, <span class='kc'>NA</span>, <span class='o'>-</span><span class='m'>8</span>, <span class='o'>-</span><span class='m'>10</span><span class='o'>)</span><span class='o'>)</span>
<span class='nf'><a href='https://pillar.r-lib.org/reference/pillar.html'>pillar</a></span><span class='o'>(</span><span class='nv'>x</span><span class='o'>)</span>
<span class='c'>#&gt; <span style='font-weight: bold;'>&lt;pillar&gt;</span></span>
<span class='c'>#&gt;       <span style='color: #555555;font-style: italic;'>&lt;dbl&gt;</span></span>
<span class='c'>#&gt; <span style='text-decoration: underline;'>123</span><span>457.    </span></span>
<span class='c'>#&gt;   <span style='text-decoration: underline;'>1</span><span>235.    </span></span>
<span class='c'>#&gt;     <span style='color: #BB0000;'>NA</span><span>     </span></span>
<span class='c'>#&gt;      1.23  </span>
<span class='c'>#&gt;      0.012<span style='text-decoration: underline;'>3</span></span>

<span class='nf'><a href='https://pillar.r-lib.org/reference/tbl_format_setup.html'>tbl_format_setup</a></span><span class='o'>(</span><span class='nf'>tibble</span><span class='nf'>::</span><span class='nf'><a href='https://tibble.tidyverse.org/reference/tibble.html'>tibble</a></span><span class='o'>(</span><span class='nv'>x</span><span class='o'>)</span><span class='o'>)</span>
<span class='c'>#&gt; <span style='font-weight: bold;'>&lt;pillar_tbl_format_setup&gt;</span></span>
<span class='c'>#&gt; <span style='font-weight: bold;'>&lt;tbl_format_header(setup)&gt;</span></span>
<span class='c'>#&gt; <span style='color: #555555;'># A data frame: 5 × 1</span></span>
<span class='c'>#&gt; <span style='font-weight: bold;'>&lt;tbl_format_body(setup)&gt;</span></span>
<span class='c'>#&gt;             <span style='font-weight: bold;'>x</span></span>
<span class='c'>#&gt;         <span style='color: #555555;font-style: italic;'>&lt;dbl&gt;</span></span>
<span class='c'>#&gt; <span style='color: #555555;'>1</span><span> </span><span style='text-decoration: underline;'>123</span><span>457.    </span></span>
<span class='c'>#&gt; <span style='color: #555555;'>2</span><span>   </span><span style='text-decoration: underline;'>1</span><span>235.    </span></span>
<span class='c'>#&gt; <span style='color: #555555;'>3</span><span>     </span><span style='color: #BB0000;'>NA</span><span>     </span></span>
<span class='c'>#&gt; <span style='color: #555555;'>4</span><span>      1.23  </span></span>
<span class='c'>#&gt; <span style='color: #555555;'>5</span><span>      0.012</span><span style='text-decoration: underline;'>3</span></span>
<span class='c'>#&gt; <span style='font-weight: bold;'>&lt;tbl_format_footer(setup)&gt;</span></span></pre>

## Custom vector classes

The primary user of this package is [tibble](https://github.com/tidyverse/tibble), which lets pillar do all the formatting work. Packages that implement a data type to be used in a tibble column can customize the display by implementing a [`pillar_shaft()`](https://pillar.r-lib.org/reference/pillar_shaft.html) method.

<pre class='chroma'>
<span class='kr'><a href='https://rdrr.io/r/base/library.html'>library</a></span><span class='o'>(</span><span class='nv'><a href='https://pillar.r-lib.org/'>pillar</a></span><span class='o'>)</span>

<span class='nv'>percent</span> <span class='o'>&lt;-</span> <span class='nf'>vctrs</span><span class='nf'>::</span><span class='nf'><a href='https://vctrs.r-lib.org/reference/new_vctr.html'>new_vctr</a></span><span class='o'>(</span><span class='m'>9</span><span class='o'>:</span><span class='m'>11</span> <span class='o'>*</span> <span class='m'>0.01</span>, class <span class='o'>=</span> <span class='s'>"percent"</span><span class='o'>)</span>

<span class='nv'>pillar_shaft.percent</span> <span class='o'>&lt;-</span> <span class='kr'>function</span><span class='o'>(</span><span class='nv'>x</span>, <span class='nv'>...</span><span class='o'>)</span> <span class='o'>{</span>
  <span class='nv'>fmt</span> <span class='o'>&lt;-</span> <span class='nf'><a href='https://rdrr.io/r/base/format.html'>format</a></span><span class='o'>(</span><span class='nf'>vctrs</span><span class='nf'>::</span><span class='nf'><a href='https://vctrs.r-lib.org/reference/vec_data.html'>vec_data</a></span><span class='o'>(</span><span class='nv'>x</span><span class='o'>)</span> <span class='o'>*</span> <span class='m'>100</span><span class='o'>)</span>
  <span class='nf'><a href='https://pillar.r-lib.org/reference/new_pillar_shaft.html'>new_pillar_shaft_simple</a></span><span class='o'>(</span><span class='nf'><a href='https://rdrr.io/r/base/paste.html'>paste0</a></span><span class='o'>(</span><span class='nv'>fmt</span>, <span class='s'>" "</span>, <span class='nf'><a href='https://pillar.r-lib.org/reference/style_subtle.html'>style_subtle</a></span><span class='o'>(</span><span class='s'>"%"</span><span class='o'>)</span><span class='o'>)</span>, align <span class='o'>=</span> <span class='s'>"right"</span><span class='o'>)</span>
<span class='o'>}</span>

<span class='nf'><a href='https://pillar.r-lib.org/reference/pillar.html'>pillar</a></span><span class='o'>(</span><span class='nv'>percent</span><span class='o'>)</span>
<span class='c'>#&gt; <span style='font-weight: bold;'>&lt;pillar&gt;</span></span>
<span class='c'>#&gt; <span style='color: #555555;font-style: italic;'>&lt;percent&gt;</span></span>
<span class='c'>#&gt;       9 <span style='color: #555555;'>%</span></span>
<span class='c'>#&gt;      10 <span style='color: #555555;'>%</span></span>
<span class='c'>#&gt;      11 <span style='color: #555555;'>%</span></span></pre>

See [`vignette("pillar", package = "vctrs")`](https://vctrs.r-lib.org/articles/pillar.html) for details.

## Custom table classes

pillar provides various extension points for customizing how a tibble-like class is printed.

<pre class='chroma'>
<span class='nv'>tbl</span> <span class='o'>&lt;-</span> <span class='nf'>vctrs</span><span class='nf'>::</span><span class='nf'><a href='https://vctrs.r-lib.org/reference/new_data_frame.html'>new_data_frame</a></span><span class='o'>(</span><span class='nf'><a href='https://rdrr.io/r/base/list.html'>list</a></span><span class='o'>(</span>a <span class='o'>=</span> <span class='m'>1</span><span class='o'>:</span><span class='m'>3</span><span class='o'>)</span>, class <span class='o'>=</span> <span class='nf'><a href='https://rdrr.io/r/base/c.html'>c</a></span><span class='o'>(</span><span class='s'>"my_tbl"</span>, <span class='s'>"tbl"</span><span class='o'>)</span><span class='o'>)</span>

<span class='nv'>tbl_sum.my_tbl</span> <span class='o'>&lt;-</span> <span class='kr'>function</span><span class='o'>(</span><span class='nv'>x</span>, <span class='nv'>...</span><span class='o'>)</span> <span class='o'>{</span>
  <span class='nf'><a href='https://rdrr.io/r/base/c.html'>c</a></span><span class='o'>(</span><span class='s'>"Hello"</span> <span class='o'>=</span> <span class='s'>"world!"</span><span class='o'>)</span>
<span class='o'>}</span>

<span class='nv'>tbl</span>
<span class='c'>#&gt; <span style='color: #555555;'># Hello: world!</span></span>
<span class='c'>#&gt;       <span style='font-weight: bold;'>a</span></span>
<span class='c'>#&gt;   <span style='color: #555555;font-style: italic;'>&lt;int&gt;</span></span>
<span class='c'>#&gt; <span style='color: #555555;'>1</span><span>     1</span></span>
<span class='c'>#&gt; <span style='color: #555555;'>2</span><span>     2</span></span>
<span class='c'>#&gt; <span style='color: #555555;'>3</span><span>     3</span></span></pre>

See [`vignette("extending", package = "pillar")`](https://pillar.r-lib.org/articles/extending.html) for a walkthrough of the options.

------------------------------------------------------------------------

## Code of Conduct

Please note that the pillar project is released with a [Contributor Code of Conduct](https://pillar.r-lib.org/CODE_OF_CONDUCT.html). By contributing to this project, you agree to abide by its terms.
