# TODO

## Next steps

- Understand: Why does printing of compound pillars in `ctl_colonnade()` even work (as opposed to printing a single tibble)?
    - `combine_pillars()` is called, flattens
- Fix `format_type_sum()`
    - bad commit a94e10097f157726faf53d4b068e75396f883d1f
- Fix remaining `format_v()` issue
- Release
- Blog post?

- Reduce calls to `align()`: 
    - align all components vertically
    - squash
    - only then `align()`
    - paste
- Benchmark and profile again
    - `bench.R`
- Look for FIXMEs
- Test coverage per file
- Use penguins
- Improve output:
    - Tibble-local options for precision
    - Classes for numeric and string, use {formattable}
    - Multi-stage output for packed data frames
    - Arrays!
    - Show number of rows if known
    - Show columns that are abbreviated in full
    - Packed data frames and matrices: if too wide, show ellipsis
    - Packed matrices: show type only once
    - Tick column title in extra columns
    - Simplify matrix formatting to format like an array: https://github.com/r-lib/pillar/issues/142#issuecomment-489357664

## Formatting numbers

### Scale Numbers In Columns Equally

https://github.com/r-lib/pillar/issues/96

Idea: Show numbers of the same magnitude with SI prefix in the header.

Solution: Custom vector class/container.

### Respect getOption("digits") if "pillar.sigfig" is unset?

https://github.com/r-lib/pillar/issues/127 (own issue)

Idea: Improve adoption of new users.

Alternative: Show `getOption("digits")` significant figures if the differences are small enough.

### Respect scipen option in base

https://github.com/r-lib/pillar/issues/110

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
