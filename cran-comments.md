pillar 1.4.4: Minor update, vctrs compatibility

## CRP

- [x] Last edited 2020-03-24.

## R CMD check results

- [x] Checked locally on Ubuntu 18.04 install, R 3.6.3
- [x] Checked on CI system
- [x] Checked on win-builder (devel)

OK

## CRAN failures

- [x] Checked.

The Solaris failures are likely triggered by "\uxxxx" literals in `tests/testthat/test-format_character.R`: https://bugs.r-project.org/bugzilla/show_bug.cgi?id=17783.
