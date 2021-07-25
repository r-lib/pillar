# TODO

## Next steps

- new branch: tier 0 -> missing from table?
    - defer if possible

- f-greedy: rethink implementation of `colonnade_compute_tiered_col_widths_df()`
    - idea: fitting functions also indicate horizontal position within the tier?
      This allows for a precise cutoff

    - fit min reverse
    - no fit? fit min, return
    - iterate over tiers
        - fit max
        - conflict with fit min reverse? break
    - 
    
    - start populating first tier
        - fit? 
    
    - how many free tiers do we have available?
        - at least one?
            - populate those with the maximum width
            - recursive call for the remaining tiers
        - none?
            - populate first tier with maximum width, check through lookup if 
            - 

    - shortcut: discrete fit with minimum width; if no fit, try to still fit with maximum width in a second step
    
    
    - remove special case of "all pillars fit", we still want to reorganize/
    - for how many columns can we guarantee maximum width?
        - current implementation answers that approximately, we know the tiers that we can close
        - second step: close tiers (except last), try to fit remaining with a recursive call



- revdepcheck for adding ellipsis to methods
- Milestone: <https://github.com/r-lib/pillar/milestone/11>

- Focus columns at their native position, with ... or subtle vertical pipe inbetween (1 char wide)
    - Get extra width?

- Discuss:
    - Add convenience arguments to `print.tbl()`? <https://github.com/tidyverse/tibble/issues/637>
- Breaking changes
    - Wide character + list column: why does the character column take up all the space?
        - `tibble(a = strrep("1234567890", 100), b = list(tibble(a = letters)))`
    - Redundant information goes up into the header <https://github.com/r-lib/pillar/pull/307>
        - call `type_sum()` on the pillar shaft -- if it returns `NULL` (as in the default method) call it on the vector
        - Search for `new_pillar_type()`
        - Maybe it's easier to recompute in `type_sum()` and `vec_ptype_abbr()`
            - not sure, problems dealing with truncated vs. actual length
    - Avoid showing dimensions twice in `obj_sum()`, use `vec_ptype_abbr()` (with default handling of non-vctrs things) and not `type_sum()`
    - Shorter list columns: <https://github.com/r-lib/pillar/issues/168>
    - Abbreviate list columns at the left: <https://github.com/r-lib/pillar/issues/84>
    - Multi-stage (hierarchical) output for packed data frames
    - Show column names that are abbreviated in full
    - Packed data frames and matrices: if too wide, show ellipsis
    - Tick column title in extra columns
    - Second backtick if column name is abbreviated, <https://github.com/tidyverse/tibble/issues/838>
    - Simplify matrix formatting to format like an array: <https://github.com/r-lib/pillar/issues/142#issuecomment-489357664>
    - Show number of rows if known
        - requires `tbl_sum()` with ellipsis?
    - `format_glimpse()` uses `pillar_shaft()` for numbers
    - Reduce minimum width to 1
    - Show time zone for times: <https://github.com/r-lib/vctrs/issues/709>
    - Class for numbers of same magnitude but with subtle differences? <https://github.com/r-lib/pillar/issues/97#issuecomment-363699335>
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
