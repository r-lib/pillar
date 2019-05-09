Update as requested by CRAN, to fix package checks on R-devel on Linux with latin1 encoding.

## Test environments

* local Ubuntu 18.04 install, R 3.6.0
* Ubuntu 14.04 (on travis-ci), R devel, release, 3.5-3.2
* win-builder (devel)

## R CMD check results

OK

## revdepcheck results

We checked 24 reverse dependencies, comparing R CMD check results across CRAN and dev versions of this package.

 * We saw 2 new problems
 * We failed to check 0 packages

Issues with CRAN packages are summarised below. We notified the maintainer of repr, and will update tibble soon.

### New problems
(This reports the first line of each new failure)

* repr
  checking tests ...

* tibble
  checking tests ...
