# TODO

## Next steps

- Improve output:
    - Obey `"max.print"` in `print.pillar_vctr()`
    - Challenge: redundant information goes up into the header
        - call `type_sum()` on the pillar shaft -- if it returns `NULL` (as in the default method) call it on the vector
        - Search for `new_pillar_type()`
        - Maybe it's easier to recompute in `type_sum()` and `vec_ptype_abbr()`
    - Wide character + list column: why does the character column take up all the space?
        - geocode
    - Showcase differences between base and our printing in a vignette
        - `options(digits)` and `options(scipen)`
    - Respect `getOption("scipen")`? <https://github.com/r-lib/pillar/issues/110>
        - Try to respect, `scipen = 10` means 11 digits
    - Respect `getOption("digits")`? <https://github.com/r-lib/pillar/issues/127>
        - Is equivalent to `pillar.sigfig` ?
    - Finish `num()`
        - formattable: class hierarchy, finish <https://github.com/renkun-ken/formattable/pull/154>
    - Add to awesome list
- Clean up issues
- Finish documentation
    - `num_()` and `char_()` modifiers: <https://pillar.r-lib.org/dev/articles/numbers.html#recovery>
        - Document pattern
        - Raise vctrs issue
    - Tibble-local options for display: <https://pillar.r-lib.org/dev/articles/numbers.html#sketch-rule-based-decoration-1>
        - Document pattern
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
    - Class for numbers of same magnitude but with subtle differences? <https://github.com/r-lib/pillar/issues/97#issuecomment-363699335>
    - Highlight equal parts of a string column <https://github.com/r-lib/pillar/issues/97#issuecomment-363699335>
    - `shorten = "unique"`? <https://github.com/r-lib/pillar/issues/101>
    - `shorten = "front"`: right-align?
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
