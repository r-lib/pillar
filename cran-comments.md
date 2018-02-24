Update addressing user feedback.

## Test environments
* local Ubuntu 17.10 install, R 3.4.3
* Ubuntu 14.04 (on travis-ci), R 3.4.3
* win-builder (devel and release)

## R CMD check results

OK

## revdepcheck results

We checked 6 direct and reverse dependencies, comparing R CMD check results across CRAN and dev versions of this package. Only the hms package is now failing, this is due to the changed formatting. I will update hms after pillar 1.2.0 is accepted, not planning any more disruptive updates of pillar in the next months.
