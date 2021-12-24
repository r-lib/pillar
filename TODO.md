# TODO

## Next steps

- Multi-stage (hierarchical) output for packed data frames
    - Challenging with tiers
    - Show number of columns in the parent stage?
        - If too wide; also show ellipsis
        - Perhaps show column names in footer?
    - Can we agree that a packed data frame never spans multiple tiers?

- Focus columns at their native position, with ... or subtle vertical pipe inbetween (1 char wide)
    - Easiest if focus columns are moved to the beginning
    - Requires multi-stage output?
    - Get extra width?

- Breaking changes
    - Wide character + list column: why does the character column take up all the space?
        - `tibble(a = strrep("1234567890", 100), b = list(tibble(a = letters)))`
        - Because the minimum character width is used here; this is just the default shaft. We can show only the type if there's lack of space and build a custom pillar shaft
    - Avoid showing dimensions twice in `obj_sum()`, use `vec_ptype_abbr()` (with default handling of non-vctrs things) and not `type_sum()`
        - Is this done already?
    - Shorter list columns: <https://github.com/r-lib/pillar/issues/168>
- Prototype
    - Show column names that are abbreviated in full
        - With their index if non-consecutive
    - Tick column title in extra columns
        - It should be?
    - Second backtick if column name is abbreviated, <https://github.com/tidyverse/tibble/issues/838>
    - Simplify matrix formatting to format like an array: <https://github.com/r-lib/pillar/issues/142#issuecomment-489357664>
    - Show number of rows if known
        - requires `tbl_sum()` with ellipsis?
    - `format_glimpse()` uses `pillar_shaft()` for numbers
    - Reduce minimum width to 1
    - Show time zone for times: <https://github.com/r-lib/vctrs/issues/709>
        - refer to clock?
    - Class for numbers of same magnitude but with subtle differences? <https://github.com/r-lib/pillar/issues/97#issuecomment-363699335>
        - Subtle coloring for repetitive parts?
    - Highlight equal parts of a string column <https://github.com/r-lib/pillar/issues/97#issuecomment-363699335>
    - `shorten = "unique"`? <https://github.com/r-lib/pillar/issues/101>
    - `shorten = "front"`: right-align?
    - control `NA` and zero characters: <https://github.com/r-lib/pillar/issues/151>
- Resolve vctrs imports
- Help with {errors} and {quantities}
- Rethink tibble-local options for display: section "Rule-based formatting" in `numbers.Rmd`
    - What are the use cases, beyond databases?
    - Document pattern: helper function with `mutate(across(...))`
    - Define class that applies this?
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


## Formatting numbers

### Problems

- Change formatting for all columns/containers: solved well enough

- Specify distinct formatting (e.g. different number of significant figures, avoidance of scientific notation) per column or per container

    - Tag value during creation with `num()` or `char()` -- property of the data

    - Apply formatting based on column name/type

        - Manually: `collect_spec`

        - Automatically: set option to container
