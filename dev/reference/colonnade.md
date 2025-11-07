# Format multiple vectors in a tabular display

**\[soft-deprecated\]**

The vectors are formatted to fit horizontally into a user-supplied
number of characters per row.

The `colonnade()` function doesn't process the input but returns an
object with a [`format()`](https://rdrr.io/r/base/format.html) and a
[`print()`](https://rdrr.io/r/base/print.html) method. The
implementations call
[`squeeze()`](https://pillar.r-lib.org/dev/reference/squeeze.md) to
create [pillar](https://pillar.r-lib.org/dev/reference/pillar.md)
objects and fit them to a given width.

## Usage

``` r
colonnade(x, has_row_id = TRUE, width = NULL, ...)
```

## Arguments

- x:

  A list, which can contain matrices or data frames. If named, the names
  will be used as title for the pillars. Non-syntactic names will be
  escaped.

- has_row_id:

  Include a column indicating row IDs? Pass `"*"` to mark the row ID
  column with a star.

- width:

  Default width of the entire output, optional.

- ...:

  These dots are for future extensions and must be empty.

## Details

Pillars may be distributed over multiple tiers if
`width > getOption("width")`. In this case each tier is at most
`getOption("width")` characters wide. The very first step of formatting
is to determine how many tiers are shown at most, and the width of each
tier.

To avoid unnecessary computation for showing very wide colonnades, a
first pass tries to fit all capitals into the tiers. For each pillar
whose capital fits, it is then decided in which tier it is shown, if at
all, and how much horizontal space it may use (either its minimum or its
maximum width). Remaining space is then distributed proportionally to
pillars that do not use their desired width.

For fitting pillars in one or more tiers, first a check is made if all
pillars fit with their maximum width (e.g., `option(tibble.width = Inf)`
or narrow colonnade). If yes, this is the resulting fit, no more work
needs to be done. Otherwise, if the maximum width is too wide, the same
test is carried out with the minimum width. If this is still too wide,
this is the resulting fit. Otherwise, some tiers from the start will
contain pillars with their maximum width, one tier will contain some
pillars with maximum and some with minimum width, and the remaining
tiers contain pillars with their minimum width only.

For this, we compute a "reverse minimum assignment".

We determine the cut point where minimum and maximum assignment agree.
The following strategy is applied:

1.  First, we determine the tier in which the cut point lies. This is
    the first instance of a column that ends up in the same tier for
    both minimum and maximum assignment.

2.  A set of candidate cut points is derived.

3.  We consult the column offsets. The last column where the minimum
    assignment has a greater or equal offset than the maximum assignment
    is our latest cut point. If no such column exists, the cut point is
    the column just before our first candidate.

4.  Finally, we combine maximum and minimum reverse fits at the cut
    point. We don't need to redistribute anything here.

Fitting pillars into tiers is very similar to a word-wrapping algorithm.
In a loop, new tiers are opened if the current tier overflows. If a
column is too wide to fit a single tier, it will never be displayed, and
the colonnade will be truncated there. This case should never occur with
reasonable display widths larger than 30 characters. Truncation also
happens if all available tiers are filled.

The remaining space is distributed from left to right. Each column gains
space proportional to the fraction of missing and remaining space,
rounded down. Any space remaining after rounding is distributed from
left to right, one space per column.
