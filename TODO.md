# TODO

## Next steps

- Improve output:
    - Revert df43c7fcea2fc8d5d159eeb298d800e54990f6fd
    - See open issues in "Formatting numbers" section below
        - <https://github.com/r-lib/pillar/issues/96>: significant digits and fixed notation
        - <https://github.com/r-lib/pillar/issues/127>: Unneeded switch to scientific notation?
    - Finish `num()`
        - formattable: class hierarchy, finish <https://github.com/renkun-ken/formattable/pull/154>
- Discuss
    - Scientific notation: format `1e10` ok if it's exactly 1^10?
    - `num_()` and `char_()` modifiers
    - Choice of class, argument and attribute names
    - Tibble-local options for precision
        - Requires column specification
        - Write proposal
    - Challenge: redundant information goes up into the header
        - for fixed magnitude, need to rework `type_sum()` -- should operate on the pillar shaft
    - Respect `getOption("digits")`? <https://github.com/r-lib/pillar/issues/127>
    - Respect `getOption("scipen")`? <https://github.com/r-lib/pillar/issues/110>
    - Numbers of same magnitude but with subtle differences? <https://github.com/r-lib/pillar/issues/97#issuecomment-363699335>
    - `shorten = "unique"`? <https://github.com/r-lib/pillar/issues/101>
    - Support providing a number for the `fixed_magnitude` argument? <https://github.com/r-lib/pillar/issues/96#issuecomment-812981071>
- Clean up issues
- CRAN release pillar
- Reexport `num()` and `char()` in tibble
- CRAN release tibble
- Avoid `requireNamespace()` in `@examplesIf`
- Breaking changes
    - Abbreviate list columns at the left: <https://github.com/r-lib/pillar/issues/84>
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


## Formatting numbers

### Problems

- Change formatting for all columns/containers: solved well enough

- Specify distinct formatting (e.g. different number of significant figures, avoidance of scientific notation) per column or per container

    - Tag value during creation with `num()` or `char()` -- property of the data

    - Apply formatting based on column name/type

        - Manually: `collect_spec`

        - Automatically: set option to container
