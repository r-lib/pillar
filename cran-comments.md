Fixes a rare problem that occurs only with specific settings of options(width = ...).

## Test environments

* local Ubuntu 18.04 install, R 3.5.1
* Ubuntu 14.04 (on travis-ci), R devel, release, 3.4-3.1
* win-builder (devel, release, and oldrel)

## R CMD check results

OK

## revdepcheck results

We checked 24 reverse dependencies, comparing R CMD check results across CRAN and dev versions of this package.

 * We saw 3 new problems
 * We failed to check 0 packages

Issues with CRAN packages are summarised below. We notified the maintainers.

### New problems
(This reports the first line of each new failure)

* repr
  checking tests ...

* tibble
  checking tests ...

* unpivotr
  checking tests ...

