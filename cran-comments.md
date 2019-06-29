Update to fix compatibility with the upcoming vctrs release.

I believe the warnings on Solaris are triggered by the "\u904b\u6c23" string literal in one of the examples. It seems that `tools/R/QC.R` scans the code for problematic expressions in `find_bad_exprs()` and that `deparse()` then chokes, combined with `__STDC_ISO_10646__` undefined for the compiler with which R has been compiled. I couldn't reproduce this error on r-hub's Solaris machine.

## Test environments

* local Ubuntu 18.04 install, R 3.6.0
* Ubuntu 14.04 (on travis-ci), R devel, release, 3.5-3.2
* win-builder (devel)

## R CMD check results

OK

## revdepcheck results

Minimal non-functional changes, no revdepchecks carried out.
