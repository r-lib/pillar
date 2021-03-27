# TODO

## Next steps

- Improve output:
    - Finish `num()`
        - <https://github.com/r-lib/vctrs/issues/1339>: `vec_ptype2.num.num()`
        - pillar attribute should get `print()` method
        - fail if combining different labels
        - <https://github.com/r-lib/pillar/issues/191>
    - Implement `char()` for characters
        - `min_width = ...`
        - `shorten = c("back", "front", "mid", "none", "abbreviate")`
    - See open issues in "Formatting numbers" section below
- CRAN release pillar
- Reexport `num()` and `char()` in tibble
- CRAN release tibble
- Tibble-local options for precision
    - Requires column specification
    - Write proposal
- Breaking changes
    - Multi-stage (hierarchical) output for packed data frames
    - Show columns that are abbreviated in full
    - Packed data frames and matrices: if too wide, show ellipsis
    - Tick column title in extra columns
    - Second backtick if column name is abbreviated, <https://github.com/tidyverse/tibble/issues/838>
    - Simplify matrix formatting to format like an array: <https://github.com/r-lib/pillar/issues/142#issuecomment-489357664>
    - Show number of rows if known
        - requires `tbl_sum()` with ellipsis?
    - `format_glimpse()` uses `pillar_shaft()` for numbers
    - Show time zone for times: <https://github.com/r-lib/vctrs/issues/709>
- Resolve vctrs imports
- Format and truncate in {utf8}
- Test coverage per file
- Use penguins
- Blog post?
- Benchmark and profile again
    - `bench.R`
    - <https://github.com/tidyverse/tibble/issues/598>

## Challenges

- scales support for num
    - Needs at least `pretty()`, `seq()`, a generic `outer()` (or a change to scales), and perhaps much more
- redundant information goes up into the header
    - for fixed magnitude, need to rework `type_sum()` -- should operate on the pillar shaft


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


### Problems

- Change formatting for all columns/containers: solved well enough (except scipen?)

- Specify distinct formatting (e.g. different number of significant figures, avoidance of scientific notation) per column or per container

    - Tag value during creation with `num()` or `char()` -- property of the data

    - Apply formatting based on column name/type

        - Manually: `collect_spec`

        - Automatically: set option to container
