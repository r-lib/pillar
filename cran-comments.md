Minor update to support upcoming extensions in tibble, and performance improvements.

## Test environments

* local Ubuntu 18.04 install, R 3.5.0
* Ubuntu 14.04 (on travis-ci), R devel, release, oldrel, 3.2 and 3.1
* win-builder (devel, release, and oldrel)

## R CMD check results

OK

## revdepcheck results

Checked all first- and second-level downstream packages from CRAN, found one regression in banR (likely due to access to external resources) and a segmentation fault in dexter (unlikely to be attributable to the most recent changes in pillar).
