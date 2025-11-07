# Package index

## Formatting tables

Override or extend these methods if you want to customize the appearance
of your tibble-like object.

- [`tbl_format_setup()`](https://pillar.r-lib.org/dev/reference/tbl_format_setup.md)
  : Set up formatting
- [`tbl_format_header()`](https://pillar.r-lib.org/dev/reference/tbl_format_header.md)
  **\[experimental\]** : Format the header of a tibble
- [`tbl_format_body()`](https://pillar.r-lib.org/dev/reference/tbl_format_body.md)
  **\[experimental\]** : Format the body of a tibble
- [`tbl_format_footer()`](https://pillar.r-lib.org/dev/reference/tbl_format_footer.md)
  **\[experimental\]** : Format the footer of a tibble
- [`ctl_new_pillar()`](https://pillar.r-lib.org/dev/reference/ctl_new_pillar.md)
  [`ctl_new_rowid_pillar()`](https://pillar.r-lib.org/dev/reference/ctl_new_pillar.md)
  **\[experimental\]** : Customize the appearance of simple pillars in
  your tibble subclass
- [`ctl_new_pillar_list()`](https://pillar.r-lib.org/dev/reference/ctl_new_pillar_list.md)
  **\[experimental\]** : Customize the appearance of compound pillars in
  your tibble subclass
- [`tbl_sum()`](https://pillar.r-lib.org/dev/reference/tbl_sum.md) :
  Provide a succinct summary of an object
- [`tbl_nrow()`](https://pillar.r-lib.org/dev/reference/tbl_nrow.md) :
  Number of rows in a tbl object
- [`glimpse()`](https://pillar.r-lib.org/dev/reference/glimpse.md) : Get
  a glimpse of your data
- [`format_glimpse()`](https://pillar.r-lib.org/dev/reference/format_glimpse.md)
  **\[experimental\]** : Format a vector for horizontal printing

## Formatting pillars

Functions and methods to implement pillar support for your data type.

- [`pillar()`](https://pillar.r-lib.org/dev/reference/pillar.md) :
  Object for formatting a vector suitable for tabular display
- [`new_pillar()`](https://pillar.r-lib.org/dev/reference/new_pillar.md)
  **\[experimental\]** : Construct a custom pillar object
- [`new_pillar_component()`](https://pillar.r-lib.org/dev/reference/new_pillar_component.md)
  [`pillar_component()`](https://pillar.r-lib.org/dev/reference/new_pillar_component.md)
  **\[experimental\]** : Components of a pillar
- [`pillar_shaft()`](https://pillar.r-lib.org/dev/reference/pillar_shaft.md)
  [`print(`*`<pillar_shaft>`*`)`](https://pillar.r-lib.org/dev/reference/pillar_shaft.md)
  [`format(`*`<pillar_shaft>`*`)`](https://pillar.r-lib.org/dev/reference/pillar_shaft.md)
  : Column data
- [`new_pillar_shaft()`](https://pillar.r-lib.org/dev/reference/new_pillar_shaft.md)
  [`new_pillar_shaft_simple()`](https://pillar.r-lib.org/dev/reference/new_pillar_shaft.md)
  : Constructor for column data
- [`type_sum()`](https://pillar.r-lib.org/dev/reference/type_sum.md)
  [`obj_sum()`](https://pillar.r-lib.org/dev/reference/type_sum.md)
  [`size_sum()`](https://pillar.r-lib.org/dev/reference/type_sum.md) :
  Provide a succinct summary of an object
- [`format_type_sum()`](https://pillar.r-lib.org/dev/reference/format_type_sum.md)
  : Format a type summary

## Styling

For consistent output.

- [`style_num()`](https://pillar.r-lib.org/dev/reference/style_subtle.md)
  [`style_subtle()`](https://pillar.r-lib.org/dev/reference/style_subtle.md)
  [`style_subtle_num()`](https://pillar.r-lib.org/dev/reference/style_subtle.md)
  [`style_bold()`](https://pillar.r-lib.org/dev/reference/style_subtle.md)
  [`style_na()`](https://pillar.r-lib.org/dev/reference/style_subtle.md)
  [`style_neg()`](https://pillar.r-lib.org/dev/reference/style_subtle.md)
  : Styling helpers
- [`align()`](https://pillar.r-lib.org/dev/reference/align.md) :
  Alignment helper
- [`get_extent()`](https://pillar.r-lib.org/dev/reference/get_extent.md)
  [`get_max_extent()`](https://pillar.r-lib.org/dev/reference/get_extent.md)
  : Calculate display width
- [`new_ornament()`](https://pillar.r-lib.org/dev/reference/new_ornament.md)
  : Helper to define the contents of a pillar
- [`new_pillar_title()`](https://pillar.r-lib.org/dev/reference/new_pillar_title.md)
  : Prepare a column title for formatting
- [`new_pillar_type()`](https://pillar.r-lib.org/dev/reference/new_pillar_type.md)
  : Prepare a column type for formatting
- [`dim_desc()`](https://pillar.r-lib.org/dev/reference/dim_desc.md) :
  Format dimensions

## Miscellaneous

- [`pillar_options`](https://pillar.r-lib.org/dev/reference/pillar_options.md)
  : Package options
- [`pillar-package`](https://pillar.r-lib.org/dev/reference/pillar-package.md)
  **\[stable\]** : pillar: Coloured Formatting for Columns
