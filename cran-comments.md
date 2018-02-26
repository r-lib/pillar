Update addressing bug fix that became apparent only when writing the blog post announcing the release. (Sorry, will write the blog post before submitting to CRAN from now on.)

## Test environments
* local Ubuntu 17.10 install, R 3.4.3
* Ubuntu 14.04 (on travis-ci), R devel, release, oldrel, 3.2 and 3.1
* win-builder (devel, release, and oldrel)

## R CMD check results

NOTE for too frequent update (sorry again!)

## revdepcheck results

Downstream packages not checked, the single change to pillar 1.2.0 affects a code path that would have errored otherwise.
