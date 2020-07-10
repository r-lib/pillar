pillar 1.4.6: Restore R 3.2 compatibility

## Cran Repository Policy

- [x] Reviewed CRP last edited 2020-05-21.

## R CMD check results

- [x] Checked locally, R 4.0.2
- [x] Checked on CI system, R 4.0.2
- [x] Checked on win-builder, R devel

## Current CRAN check results

- [x] Checked on 2020-07-10, errors found: https://cran.r-project.org/web/checks/check_results_pillar.html
- [x] WARN: r-patched-solaris-x86

The Solaris failures are likely triggered by "\uxxxx" literals in `tests/testthat/test-format_character.R`: https://bugs.r-project.org/bugzilla/show_bug.cgi?id=17783.
