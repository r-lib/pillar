# TODO

## Next steps

- Fix lubridate, bad commit: d79b80dc67ea91abf8c6eb3c946c1153a8e782f8
- Improve output:
    - Classes for numeric and string, use {formattable}
        - https://github.com/r-lib/pillar/issues/191
    - Multi-stage (hierarchical) output for packed data frames
    - Show columns that are abbreviated in full
    - Packed data frames and matrices: if too wide, show ellipsis
    - Tick column title in extra columns
    - Second backtick if column name is abbreviated, <https://github.com/tidyverse/tibble/issues/838>
    - Simplify matrix formatting to format like an array: <https://github.com/r-lib/pillar/issues/142#issuecomment-489357664>
    - Tibble-local options for precision
        - Requires column specification
    - Show number of rows if known
        - requires `tbl_sum()` with ellipsis?
    - `format_glimpse()` uses `pillar_shaft()` for numbers
- Resolve vctrs imports
- Format and truncate in {utf8}
- Test coverage per file
- Use penguins
- Blog post?
- Benchmark and profile again
    - `bench.R`
    - <https://github.com/tidyverse/tibble/issues/598>


## Formatting numbers

### Scale Numbers In Columns Equally

<https://github.com/r-lib/pillar/issues/96>

Idea: Show numbers of the same magnitude with SI prefix in the header.

Solution: Custom vector class/container.

### Respect getOption("digits") if "pillar.sigfig" is unset?

<https://github.com/r-lib/pillar/issues/127> (own issue)

Idea: Improve adoption of new users.

Alternative: Show `getOption("digits")` significant figures if the differences are small enough.

### Respect scipen option in base

<https://github.com/r-lib/pillar/issues/110>

Idea: Avoid switching to scientific notation

Use option?


### Problems

- Change formatting for all columns/containers: solved well enough (except scipen?)

- Specify distinct formatting (e.g. different number of significant figures, avoidance of scientific notation) per column or per container

    - Tag value during creation -- property of the data

        - Needs good name

    - Apply formatting based on column name/type

        - Manually: `collect_spec`

        - Automatically: set option to container

- Useful packages

    - formattable

        - extract vector classes to separate package

    - units
