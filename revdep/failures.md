# AeRobiology

<details>

* Version: 2.0.1
* GitHub: NA
* Source code: https://github.com/cran/AeRobiology
* Date/Publication: 2019-06-03 06:20:03 UTC
* Number of recursive dependencies: 100

Run `cloud_details(, "AeRobiology")` for more info

</details>

## In both

*   checking whether package ‘AeRobiology’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/AeRobiology/new/AeRobiology.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘AeRobiology’ ...
** package ‘AeRobiology’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘later’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘AeRobiology’
* removing ‘/tmp/workdir/AeRobiology/new/AeRobiology.Rcheck/AeRobiology’


```
### CRAN

```
* installing *source* package ‘AeRobiology’ ...
** package ‘AeRobiology’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘later’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘AeRobiology’
* removing ‘/tmp/workdir/AeRobiology/old/AeRobiology.Rcheck/AeRobiology’


```
# BaseSet

<details>

* Version: 0.0.14
* GitHub: https://github.com/ropensci/BaseSet
* Source code: https://github.com/cran/BaseSet
* Date/Publication: 2020-11-11 13:50:28 UTC
* Number of recursive dependencies: 102

Run `cloud_details(, "BaseSet")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# bayesdfa

<details>

* Version: 0.1.6
* GitHub: https://github.com/fate-ewi/bayesdfa
* Source code: https://github.com/cran/bayesdfa
* Date/Publication: 2020-09-20 22:30:02 UTC
* Number of recursive dependencies: 82

Run `cloud_details(, "bayesdfa")` for more info

</details>

## In both

*   checking whether package ‘bayesdfa’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/bayesdfa/new/bayesdfa.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘bayesdfa’ ...
** package ‘bayesdfa’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
"/opt/R/4.0.3/lib/R/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/corr.stan
Wrote C++ file "stan_files/corr.cc"


g++ -std=gnu++14 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I"../inst/include" -I"/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I'/opt/R/4.0.3/lib/R/site-library/StanHeaders/include' -I'/opt/R/4.0.3/lib/R/site-library/rstan/include' -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c stan_files/corr.cc -o stan_files/corr.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
...
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Product.h:132:22:   required from ‘Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::operator const Scalar() const [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Option = 0; Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::Scalar = double]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:23:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_dfa_namespace::model_dfa; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:10:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:179: stan_files/dfa.o] Error 1
rm stan_files/dfa.cc stan_files/corr.cc stan_files/hmm_gaussian.cc
ERROR: compilation failed for package ‘bayesdfa’
* removing ‘/tmp/workdir/bayesdfa/new/bayesdfa.Rcheck/bayesdfa’


```
### CRAN

```
* installing *source* package ‘bayesdfa’ ...
** package ‘bayesdfa’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
"/opt/R/4.0.3/lib/R/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/corr.stan
Wrote C++ file "stan_files/corr.cc"


g++ -std=gnu++14 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I"../inst/include" -I"/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I'/opt/R/4.0.3/lib/R/site-library/StanHeaders/include' -I'/opt/R/4.0.3/lib/R/site-library/rstan/include' -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c stan_files/corr.cc -o stan_files/corr.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
...
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Product.h:132:22:   required from ‘Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::operator const Scalar() const [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Option = 0; Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::Scalar = double]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:23:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_dfa_namespace::model_dfa; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:10:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:179: stan_files/dfa.o] Error 1
rm stan_files/dfa.cc stan_files/corr.cc stan_files/hmm_gaussian.cc
ERROR: compilation failed for package ‘bayesdfa’
* removing ‘/tmp/workdir/bayesdfa/old/bayesdfa.Rcheck/bayesdfa’


```
# BED

<details>

* Version: 1.4.3
* GitHub: https://github.com/patzaw/BED
* Source code: https://github.com/cran/BED
* Date/Publication: 2021-01-05 09:10:05 UTC
* Number of recursive dependencies: 92

Run `cloud_details(, "BED")` for more info

</details>

## In both

*   checking whether package ‘BED’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/BED/new/BED.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'biomaRt', 'GEOquery'
    ```

## Installation

### Devel

```
* installing *source* package ‘BED’ ...
** package ‘BED’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘later’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘BED’
* removing ‘/tmp/workdir/BED/new/BED.Rcheck/BED’


```
### CRAN

```
* installing *source* package ‘BED’ ...
** package ‘BED’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘later’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘BED’
* removing ‘/tmp/workdir/BED/old/BED.Rcheck/BED’


```
# BIS

<details>

* Version: 0.2.1
* GitHub: https://github.com/expersso/BIS
* Source code: https://github.com/cran/BIS
* Date/Publication: 2018-05-22 10:32:13 UTC
* Number of recursive dependencies: 80

Run `cloud_details(, "BIS")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# BNPdensity

<details>

* Version: 2020.3.4
* GitHub: NA
* Source code: https://github.com/cran/BNPdensity
* Date/Publication: 2020-03-08 09:20:02 UTC
* Number of recursive dependencies: 74

Run `cloud_details(, "BNPdensity")` for more info

</details>

## In both

*   checking whether package ‘BNPdensity’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/BNPdensity/new/BNPdensity.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘GreedyEPL’
    ```

## Installation

### Devel

```
* installing *source* package ‘BNPdensity’ ...
** package ‘BNPdensity’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘munsell’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘BNPdensity’
* removing ‘/tmp/workdir/BNPdensity/new/BNPdensity.Rcheck/BNPdensity’


```
### CRAN

```
* installing *source* package ‘BNPdensity’ ...
** package ‘BNPdensity’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘munsell’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘BNPdensity’
* removing ‘/tmp/workdir/BNPdensity/old/BNPdensity.Rcheck/BNPdensity’


```
# butcher

<details>

* Version: 0.1.2
* GitHub: https://github.com/tidymodels/butcher
* Source code: https://github.com/cran/butcher
* Date/Publication: 2020-01-23 22:40:02 UTC
* Number of recursive dependencies: 190

Run `cloud_details(, "butcher")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/butcher/new/butcher.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘butcher/DESCRIPTION’ ... OK
* this is package ‘butcher’ version ‘0.1.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘adding-models-to-butcher.Rmd’ using ‘UTF-8’... OK
  ‘available-axe-methods.Rmd’ using ‘UTF-8’... OK
  ‘butcher.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... SKIPPED
* DONE
Status: 2 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/butcher/old/butcher.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘butcher/DESCRIPTION’ ... OK
* this is package ‘butcher’ version ‘0.1.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘adding-models-to-butcher.Rmd’ using ‘UTF-8’... OK
  ‘available-axe-methods.Rmd’ using ‘UTF-8’... OK
  ‘butcher.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... SKIPPED
* DONE
Status: 2 NOTEs





```
# CausalImpact

<details>

* Version: 1.2.5
* GitHub: NA
* Source code: https://github.com/cran/CausalImpact
* Date/Publication: 2021-01-04 23:30:09 UTC
* Number of recursive dependencies: 70

Run `cloud_details(, "CausalImpact")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/CausalImpact/new/CausalImpact.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘CausalImpact/DESCRIPTION’ ... OK
* this is package ‘CausalImpact’ version ‘1.2.5’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'bsts', 'Boom'

Package suggested but not available for checking: ‘testthat’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/CausalImpact/old/CausalImpact.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘CausalImpact/DESCRIPTION’ ... OK
* this is package ‘CausalImpact’ version ‘1.2.5’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'bsts', 'Boom'

Package suggested but not available for checking: ‘testthat’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# CausalQueries

<details>

* Version: 0.0.3
* GitHub: NA
* Source code: https://github.com/cran/CausalQueries
* Date/Publication: 2020-06-03 16:20:09 UTC
* Number of recursive dependencies: 95

Run `cloud_details(, "CausalQueries")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# CB2

<details>

* Version: 1.3.4
* GitHub: NA
* Source code: https://github.com/cran/CB2
* Date/Publication: 2020-07-24 09:42:24 UTC
* Number of recursive dependencies: 104

Run `cloud_details(, "CB2")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/CB2/new/CB2.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘CB2/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘CB2’ version ‘1.3.4’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘metap’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/CB2/old/CB2.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘CB2/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘CB2’ version ‘1.3.4’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘metap’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# cbar

<details>

* Version: 0.1.3
* GitHub: https://github.com/zedoul/cbar
* Source code: https://github.com/cran/cbar
* Date/Publication: 2017-10-24 13:20:22 UTC
* Number of recursive dependencies: 66

Run `cloud_details(, "cbar")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/cbar/new/cbar.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘cbar/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘cbar’ version ‘0.1.3’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'Boom', 'bsts'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/cbar/old/cbar.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘cbar/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘cbar’ version ‘0.1.3’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'Boom', 'bsts'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# CityWaterBalance

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/CityWaterBalance
* Date/Publication: 2017-06-16 19:45:28 UTC
* Number of recursive dependencies: 67

Run `cloud_details(, "CityWaterBalance")` for more info

</details>

## In both

*   checking whether package ‘CityWaterBalance’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/CityWaterBalance/new/CityWaterBalance.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘CityWaterBalance’ ...
** package ‘CityWaterBalance’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘purrr’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘CityWaterBalance’
* removing ‘/tmp/workdir/CityWaterBalance/new/CityWaterBalance.Rcheck/CityWaterBalance’


```
### CRAN

```
* installing *source* package ‘CityWaterBalance’ ...
** package ‘CityWaterBalance’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘purrr’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘CityWaterBalance’
* removing ‘/tmp/workdir/CityWaterBalance/old/CityWaterBalance.Rcheck/CityWaterBalance’


```
# ClusterBootstrap

<details>

* Version: 1.1.0
* GitHub: https://github.com/mathijsdeen/ClusterBootstrap
* Source code: https://github.com/cran/ClusterBootstrap
* Date/Publication: 2020-02-24 14:10:07 UTC
* Number of recursive dependencies: 20

Run `cloud_details(, "ClusterBootstrap")` for more info

</details>

## In both

*   checking whether package ‘ClusterBootstrap’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/ClusterBootstrap/new/ClusterBootstrap.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘ClusterBootstrap’ ...
** package ‘ClusterBootstrap’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘dplyr’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘R6’
Error: package ‘dplyr’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘ClusterBootstrap’
* removing ‘/tmp/workdir/ClusterBootstrap/new/ClusterBootstrap.Rcheck/ClusterBootstrap’


```
### CRAN

```
* installing *source* package ‘ClusterBootstrap’ ...
** package ‘ClusterBootstrap’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘dplyr’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘R6’
Error: package ‘dplyr’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘ClusterBootstrap’
* removing ‘/tmp/workdir/ClusterBootstrap/old/ClusterBootstrap.Rcheck/ClusterBootstrap’


```
# CohortPlat

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/CohortPlat
* Date/Publication: 2021-01-25 13:10:16 UTC
* Number of recursive dependencies: 92

Run `cloud_details(, "CohortPlat")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# Conigrave

<details>

* Version: 0.4.4
* GitHub: NA
* Source code: https://github.com/cran/Conigrave
* Date/Publication: 2019-05-01 16:50:06 UTC
* Number of recursive dependencies: 67

Run `cloud_details(, "Conigrave")` for more info

</details>

## In both

*   checking whether package ‘Conigrave’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/Conigrave/new/Conigrave.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘Conigrave’ ...
** package ‘Conigrave’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘munsell’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘Conigrave’
* removing ‘/tmp/workdir/Conigrave/new/Conigrave.Rcheck/Conigrave’


```
### CRAN

```
* installing *source* package ‘Conigrave’ ...
** package ‘Conigrave’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘munsell’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘Conigrave’
* removing ‘/tmp/workdir/Conigrave/old/Conigrave.Rcheck/Conigrave’


```
# CoordinateCleaner

<details>

* Version: 2.0-18
* GitHub: https://github.com/ropensci/CoordinateCleaner
* Source code: https://github.com/cran/CoordinateCleaner
* Date/Publication: 2020-10-14 09:10:09 UTC
* Number of recursive dependencies: 112

Run `cloud_details(, "CoordinateCleaner")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/CoordinateCleaner/new/CoordinateCleaner.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘CoordinateCleaner/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘CoordinateCleaner’ version ‘2.0-18’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'rgdal', 'sp'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/CoordinateCleaner/old/CoordinateCleaner.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘CoordinateCleaner/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘CoordinateCleaner’ version ‘2.0-18’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'rgdal', 'sp'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# CovidMutations

<details>

* Version: 0.1.3
* GitHub: https://github.com/MSQ-123/CovidMutations
* Source code: https://github.com/cran/CovidMutations
* Date/Publication: 2020-09-18 12:00:39 UTC
* Number of recursive dependencies: 120

Run `cloud_details(, "CovidMutations")` for more info

</details>

## In both

*   checking whether package ‘CovidMutations’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/CovidMutations/new/CovidMutations.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘CovidMutations’ ...
** package ‘CovidMutations’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘lambda.r’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘CovidMutations’
* removing ‘/tmp/workdir/CovidMutations/new/CovidMutations.Rcheck/CovidMutations’


```
### CRAN

```
* installing *source* package ‘CovidMutations’ ...
** package ‘CovidMutations’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘lambda.r’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘CovidMutations’
* removing ‘/tmp/workdir/CovidMutations/old/CovidMutations.Rcheck/CovidMutations’


```
# crossmap

<details>

* Version: 0.2.0
* GitHub: https://github.com/rossellhayes/crossmap
* Source code: https://github.com/cran/crossmap
* Date/Publication: 2020-09-24 07:30:02 UTC
* Number of recursive dependencies: 60

Run `cloud_details(, "crossmap")` for more info

</details>

## Newly broken

*   checking whether package ‘crossmap’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/crossmap/new/crossmap.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    ```

## Installation

### Devel

```
* installing *source* package ‘crossmap’ ...
** package ‘crossmap’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading


```
### CRAN

```
* installing *source* package ‘crossmap’ ...
** package ‘crossmap’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
*** copying figures
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (crossmap)


```
# CTP

<details>

* Version: 2.0.0
* GitHub: NA
* Source code: https://github.com/cran/CTP
* Date/Publication: 2020-11-12 10:10:02 UTC
* Number of recursive dependencies: 92

Run `cloud_details(, "CTP")` for more info

</details>

## In both

*   checking whether package ‘CTP’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/CTP/new/CTP.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘CTP’ ...
** package ‘CTP’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘colorspace’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘CTP’
* removing ‘/tmp/workdir/CTP/new/CTP.Rcheck/CTP’


```
### CRAN

```
* installing *source* package ‘CTP’ ...
** package ‘CTP’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘colorspace’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘CTP’
* removing ‘/tmp/workdir/CTP/old/CTP.Rcheck/CTP’


```
# ctsem

<details>

* Version: 3.4.1
* GitHub: https://github.com/cdriveraus/ctsem
* Source code: https://github.com/cran/ctsem
* Date/Publication: 2020-12-18 13:00:25 UTC
* Number of recursive dependencies: 142

Run `cloud_details(, "ctsem")` for more info

</details>

## In both

*   checking whether package ‘ctsem’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/ctsem/new/ctsem.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘ctsem’ ...
** package ‘ctsem’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
"/opt/R/4.0.3/lib/R/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/ctsm.stan
DIAGNOSTIC(S) FROM PARSER:
Info: integer division implicitly rounds to integer. Found int division: d * d - d / 2
 Positive values rounded down, negative values rounded up or down in platform-dependent way.

Wrote C++ file "stan_files/ctsm.cc"
...
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Matrix.h:377:29:   required from ‘Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>::Matrix(const Eigen::EigenBase<OtherDerived>&) [with OtherDerived = Eigen::Solve<Eigen::ColPivHouseholderQR<Eigen::Matrix<double, -1, -1, 1, -1, -1> >, Eigen::CwiseUnaryView<Eigen::MatrixBase<Eigen::Map<Eigen::Matrix<stan::math::vari*, -1, -1> > >::adj_Op, Eigen::Map<Eigen::Matrix<stan::math::vari*, -1, -1> > > >; _Scalar = double; int _Rows = -1; int _Cols = -1; int _Options = 0; int _MaxRows = -1; int _MaxCols = -1]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/stan/math/rev/mat/fun/mdivide_left.hpp:63:14:   required from ‘void stan::math::internal::mdivide_left_vv_vari<R1, C1, R2, C2>::chain() [with int R1 = -1; int C1 = -1; int R2 = -1; int C2 = 1]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/stan/math/rev/mat/fun/mdivide_left.hpp:61:16:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/CoreEvaluators.h:960:8: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:179: stan_files/ctsm.o] Error 1
rm stan_files/ctsm.cc
ERROR: compilation failed for package ‘ctsem’
* removing ‘/tmp/workdir/ctsem/new/ctsem.Rcheck/ctsem’


```
### CRAN

```
* installing *source* package ‘ctsem’ ...
** package ‘ctsem’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
"/opt/R/4.0.3/lib/R/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/ctsm.stan
DIAGNOSTIC(S) FROM PARSER:
Info: integer division implicitly rounds to integer. Found int division: d * d - d / 2
 Positive values rounded down, negative values rounded up or down in platform-dependent way.

Wrote C++ file "stan_files/ctsm.cc"
...
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Matrix.h:377:29:   required from ‘Eigen::Matrix<_Scalar, _Rows, _Cols, _Options, _MaxRows, _MaxCols>::Matrix(const Eigen::EigenBase<OtherDerived>&) [with OtherDerived = Eigen::Solve<Eigen::ColPivHouseholderQR<Eigen::Matrix<double, -1, -1, 1, -1, -1> >, Eigen::CwiseUnaryView<Eigen::MatrixBase<Eigen::Map<Eigen::Matrix<stan::math::vari*, -1, -1> > >::adj_Op, Eigen::Map<Eigen::Matrix<stan::math::vari*, -1, -1> > > >; _Scalar = double; int _Rows = -1; int _Cols = -1; int _Options = 0; int _MaxRows = -1; int _MaxCols = -1]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/stan/math/rev/mat/fun/mdivide_left.hpp:63:14:   required from ‘void stan::math::internal::mdivide_left_vv_vari<R1, C1, R2, C2>::chain() [with int R1 = -1; int C1 = -1; int R2 = -1; int C2 = 1]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/stan/math/rev/mat/fun/mdivide_left.hpp:61:16:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/CoreEvaluators.h:960:8: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:179: stan_files/ctsm.o] Error 1
rm stan_files/ctsm.cc
ERROR: compilation failed for package ‘ctsem’
* removing ‘/tmp/workdir/ctsem/old/ctsem.Rcheck/ctsem’


```
# DCPO

<details>

* Version: 0.5.3
* GitHub: NA
* Source code: https://github.com/cran/DCPO
* Date/Publication: 2020-05-29 12:50:02 UTC
* Number of recursive dependencies: 84

Run `cloud_details(, "DCPO")` for more info

</details>

## In both

*   checking whether package ‘DCPO’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/DCPO/new/DCPO.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘DCPO’ ...
** package ‘DCPO’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘munsell’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘DCPO’
* removing ‘/tmp/workdir/DCPO/new/DCPO.Rcheck/DCPO’


```
### CRAN

```
* installing *source* package ‘DCPO’ ...
** package ‘DCPO’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘munsell’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘DCPO’
* removing ‘/tmp/workdir/DCPO/old/DCPO.Rcheck/DCPO’


```
# DecisionAnalysis

<details>

* Version: 1.1.0
* GitHub: https://github.com/AFIT-R/DecisionAnalysis
* Source code: https://github.com/cran/DecisionAnalysis
* Date/Publication: 2020-05-22 08:00:06 UTC
* Number of recursive dependencies: 86

Run `cloud_details(, "DecisionAnalysis")` for more info

</details>

## In both

*   checking whether package ‘DecisionAnalysis’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/DecisionAnalysis/new/DecisionAnalysis.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘DecisionAnalysis’ ...
** package ‘DecisionAnalysis’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘stringi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘DecisionAnalysis’
* removing ‘/tmp/workdir/DecisionAnalysis/new/DecisionAnalysis.Rcheck/DecisionAnalysis’


```
### CRAN

```
* installing *source* package ‘DecisionAnalysis’ ...
** package ‘DecisionAnalysis’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘stringi’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘DecisionAnalysis’
* removing ‘/tmp/workdir/DecisionAnalysis/old/DecisionAnalysis.Rcheck/DecisionAnalysis’


```
# DeclareDesign

<details>

* Version: 0.24.0
* GitHub: https://github.com/DeclareDesign/DeclareDesign
* Source code: https://github.com/cran/DeclareDesign
* Date/Publication: 2020-11-14 14:50:06 UTC
* Number of recursive dependencies: 146

Run `cloud_details(, "DeclareDesign")` for more info

</details>

## In both

*   checking whether package ‘DeclareDesign’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/DeclareDesign/new/DeclareDesign.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘tibble’
    ```

## Installation

### Devel

```
* installing *source* package ‘DeclareDesign’ ...
** package ‘DeclareDesign’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘fabricatr’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘tibble’
Error: package ‘fabricatr’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘DeclareDesign’
* removing ‘/tmp/workdir/DeclareDesign/new/DeclareDesign.Rcheck/DeclareDesign’


```
### CRAN

```
* installing *source* package ‘DeclareDesign’ ...
** package ‘DeclareDesign’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘fabricatr’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘tibble’
Error: package ‘fabricatr’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘DeclareDesign’
* removing ‘/tmp/workdir/DeclareDesign/old/DeclareDesign.Rcheck/DeclareDesign’


```
# DepthProc

<details>

* Version: 2.1.3
* GitHub: https://github.com/zzawadz/DepthProc
* Source code: https://github.com/cran/DepthProc
* Date/Publication: 2020-02-19 21:00:03 UTC
* Number of recursive dependencies: 142

Run `cloud_details(, "DepthProc")` for more info

</details>

## In both

*   checking whether package ‘DepthProc’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/DepthProc/new/DepthProc.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘DepthProc’ ...
** package ‘DepthProc’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c Depth.cpp -o Depth.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c LocationEstimators.cpp -o LocationEstimators.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c LocationScaleDepth.cpp -o LocationScaleDepth.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c LocationScaleDepthCPP.cpp -o LocationScaleDepthCPP.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c RobCovLib.cpp -o RobCovLib.o
...
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘ggplot2’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘magrittr’
Error: package ‘ggplot2’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘DepthProc’
* removing ‘/tmp/workdir/DepthProc/new/DepthProc.Rcheck/DepthProc’


```
### CRAN

```
* installing *source* package ‘DepthProc’ ...
** package ‘DepthProc’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c Depth.cpp -o Depth.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c LocationEstimators.cpp -o LocationEstimators.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c LocationScaleDepth.cpp -o LocationScaleDepth.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c LocationScaleDepthCPP.cpp -o LocationScaleDepthCPP.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c RobCovLib.cpp -o RobCovLib.o
...
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘ggplot2’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘magrittr’
Error: package ‘ggplot2’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘DepthProc’
* removing ‘/tmp/workdir/DepthProc/old/DepthProc.Rcheck/DepthProc’


```
# DescrTab2

<details>

* Version: 2.0.3
* GitHub: https://github.com/imbi-heidelberg/DescrTab2
* Source code: https://github.com/cran/DescrTab2
* Date/Publication: 2020-12-16 10:00:05 UTC
* Number of recursive dependencies: 135

Run `cloud_details(, "DescrTab2")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# DevTreatRules

<details>

* Version: 1.1.0
* GitHub: NA
* Source code: https://github.com/cran/DevTreatRules
* Date/Publication: 2020-03-20 17:40:05 UTC
* Number of recursive dependencies: 47

Run `cloud_details(, "DevTreatRules")` for more info

</details>

## In both

*   checking whether package ‘DevTreatRules’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/DevTreatRules/new/DevTreatRules.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... WARNING
    ```
    Skipping vignette re-building
    Package suggested but not available for checking: ‘knitr’
    
    VignetteBuilder package required for checking but not installed: ‘knitr’
    ```

## Installation

### Devel

```
* installing *source* package ‘DevTreatRules’ ...
** package ‘DevTreatRules’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘kernlab’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘DevTreatRules’
* removing ‘/tmp/workdir/DevTreatRules/new/DevTreatRules.Rcheck/DevTreatRules’


```
### CRAN

```
* installing *source* package ‘DevTreatRules’ ...
** package ‘DevTreatRules’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘kernlab’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘DevTreatRules’
* removing ‘/tmp/workdir/DevTreatRules/old/DevTreatRules.Rcheck/DevTreatRules’


```
# diceR

<details>

* Version: 1.0.1
* GitHub: https://github.com/AlineTalhouk/diceR
* Source code: https://github.com/cran/diceR
* Date/Publication: 2021-01-31 00:30:13 UTC
* Number of recursive dependencies: 149

Run `cloud_details(, "diceR")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/diceR/new/diceR.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘diceR/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘diceR’ version ‘1.0.1’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘NMF’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/diceR/old/diceR.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘diceR/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘diceR’ version ‘1.0.1’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘NMF’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# Distance

<details>

* Version: 1.0.2
* GitHub: https://github.com/DistanceDevelopment/Distance
* Source code: https://github.com/cran/Distance
* Date/Publication: 2020-12-01 12:20:13 UTC
* Number of recursive dependencies: 59

Run `cloud_details(, "Distance")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# DiversityOccupancy

<details>

* Version: 1.0.6
* GitHub: NA
* Source code: https://github.com/cran/DiversityOccupancy
* Date/Publication: 2017-03-02 18:32:36
* Number of recursive dependencies: 106

Run `cloud_details(, "DiversityOccupancy")` for more info

</details>

## In both

*   checking whether package ‘DiversityOccupancy’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/DiversityOccupancy/new/DiversityOccupancy.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘DiversityOccupancy’ ...
** package ‘DiversityOccupancy’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘httpuv’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘DiversityOccupancy’
* removing ‘/tmp/workdir/DiversityOccupancy/new/DiversityOccupancy.Rcheck/DiversityOccupancy’


```
### CRAN

```
* installing *source* package ‘DiversityOccupancy’ ...
** package ‘DiversityOccupancy’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘httpuv’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘DiversityOccupancy’
* removing ‘/tmp/workdir/DiversityOccupancy/old/DiversityOccupancy.Rcheck/DiversityOccupancy’


```
# DMCfun

<details>

* Version: 1.3.0
* GitHub: https://github.com/igmmgi/DMCfun
* Source code: https://github.com/cran/DMCfun
* Date/Publication: 2021-01-10 17:50:10 UTC
* Number of recursive dependencies: 50

Run `cloud_details(, "DMCfun")` for more info

</details>

## In both

*   checking whether package ‘DMCfun’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/DMCfun/new/DMCfun.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘DMCfun’ ...
** package ‘DMCfun’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I/usr/local/include   -fpic  -g -O2  -c dmcCppR.cpp -o dmcCppR.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I/usr/local/include   -fpic  -g -O2  -c inDMC.cpp -o inDMC.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I/usr/local/include   -fpic  -g -O2  -c outDMC.cpp -o outDMC.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I/usr/local/include   -fpic  -g -O2  -c runDMC.cpp -o runDMC.o
g++ -std=gnu++11 -shared -L/opt/R/4.0.3/lib/R/lib -L/usr/local/lib -o DMCfun.so RcppExports.o dmcCppR.o inDMC.o outDMC.o runDMC.o -L/opt/R/4.0.3/lib/R/lib -lR
...
** R
** data
*** moving datasets to lazyload DB
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘generics’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘DMCfun’
* removing ‘/tmp/workdir/DMCfun/new/DMCfun.Rcheck/DMCfun’


```
### CRAN

```
* installing *source* package ‘DMCfun’ ...
** package ‘DMCfun’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I/usr/local/include   -fpic  -g -O2  -c dmcCppR.cpp -o dmcCppR.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I/usr/local/include   -fpic  -g -O2  -c inDMC.cpp -o inDMC.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I/usr/local/include   -fpic  -g -O2  -c outDMC.cpp -o outDMC.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I/usr/local/include   -fpic  -g -O2  -c runDMC.cpp -o runDMC.o
g++ -std=gnu++11 -shared -L/opt/R/4.0.3/lib/R/lib -L/usr/local/lib -o DMCfun.so RcppExports.o dmcCppR.o inDMC.o outDMC.o runDMC.o -L/opt/R/4.0.3/lib/R/lib -lR
...
** R
** data
*** moving datasets to lazyload DB
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘generics’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘DMCfun’
* removing ‘/tmp/workdir/DMCfun/old/DMCfun.Rcheck/DMCfun’


```
# DSAIDE

<details>

* Version: 0.9.0
* GitHub: https://github.com/ahgroup/DSAIDE
* Source code: https://github.com/cran/DSAIDE
* Date/Publication: 2021-02-02 05:20:02 UTC
* Number of recursive dependencies: 126

Run `cloud_details(, "DSAIDE")` for more info

</details>

## In both

*   checking whether package ‘DSAIDE’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/DSAIDE/new/DSAIDE.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘DSAIDE’ ...
** package ‘DSAIDE’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘purrr’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘DSAIDE’
* removing ‘/tmp/workdir/DSAIDE/new/DSAIDE.Rcheck/DSAIDE’


```
### CRAN

```
* installing *source* package ‘DSAIDE’ ...
** package ‘DSAIDE’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘purrr’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘DSAIDE’
* removing ‘/tmp/workdir/DSAIDE/old/DSAIDE.Rcheck/DSAIDE’


```
# DSpoty

<details>

* Version: 0.1.0
* GitHub: https://github.com/AlbertoAlmuinha/DSpoty
* Source code: https://github.com/cran/DSpoty
* Date/Publication: 2020-01-16 10:50:02 UTC
* Number of recursive dependencies: 29

Run `cloud_details(, "DSpoty")` for more info

</details>

## In both

*   checking whether package ‘DSpoty’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/DSpoty/new/DSpoty.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘DSpoty’ ...
** package ‘DSpoty’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘R6’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘DSpoty’
* removing ‘/tmp/workdir/DSpoty/new/DSpoty.Rcheck/DSpoty’


```
### CRAN

```
* installing *source* package ‘DSpoty’ ...
** package ‘DSpoty’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘R6’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘DSpoty’
* removing ‘/tmp/workdir/DSpoty/old/DSpoty.Rcheck/DSpoty’


```
# DTAT

<details>

* Version: 0.3-4
* GitHub: NA
* Source code: https://github.com/cran/DTAT
* Date/Publication: 2020-06-14 14:50:19 UTC
* Number of recursive dependencies: 109

Run `cloud_details(, "DTAT")` for more info

</details>

## In both

*   checking whether package ‘DTAT’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/DTAT/new/DTAT.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘RColorBrewer’
    ```

## Installation

### Devel

```
* installing *source* package ‘DTAT’ ...
** package ‘DTAT’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RColorBrewer’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘DTAT’
* removing ‘/tmp/workdir/DTAT/new/DTAT.Rcheck/DTAT’


```
### CRAN

```
* installing *source* package ‘DTAT’ ...
** package ‘DTAT’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘RColorBrewer’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘DTAT’
* removing ‘/tmp/workdir/DTAT/old/DTAT.Rcheck/DTAT’


```
# DynNom

<details>

* Version: 5.0.1
* GitHub: NA
* Source code: https://github.com/cran/DynNom
* Date/Publication: 2019-06-20 14:50:22 UTC
* Number of recursive dependencies: 127

Run `cloud_details(, "DynNom")` for more info

</details>

## In both

*   checking whether package ‘DynNom’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/DynNom/new/DynNom.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘DynNom’ ...
** package ‘DynNom’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘pkgconfig’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘DynNom’
* removing ‘/tmp/workdir/DynNom/new/DynNom.Rcheck/DynNom’


```
### CRAN

```
* installing *source* package ‘DynNom’ ...
** package ‘DynNom’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘pkgconfig’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘DynNom’
* removing ‘/tmp/workdir/DynNom/old/DynNom.Rcheck/DynNom’


```
# Ecfun

<details>

* Version: 0.2-4
* GitHub: NA
* Source code: https://github.com/cran/Ecfun
* Date/Publication: 2020-10-27 08:10:05 UTC
* Number of recursive dependencies: 173

Run `cloud_details(, "Ecfun")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# EpiCurve

<details>

* Version: 2.4-1
* GitHub: https://github.com/IamKDO/EpiCurve
* Source code: https://github.com/cran/EpiCurve
* Date/Publication: 2020-08-26 21:50:02 UTC
* Number of recursive dependencies: 67

Run `cloud_details(, "EpiCurve")` for more info

</details>

## In both

*   checking whether package ‘EpiCurve’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/EpiCurve/new/EpiCurve.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘EpiCurve’ ...
** package ‘EpiCurve’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘ggplot2’ in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]):
 there is no package called ‘colorspace’
Error: package ‘ggplot2’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘EpiCurve’
* removing ‘/tmp/workdir/EpiCurve/new/EpiCurve.Rcheck/EpiCurve’


```
### CRAN

```
* installing *source* package ‘EpiCurve’ ...
** package ‘EpiCurve’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘ggplot2’ in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]):
 there is no package called ‘colorspace’
Error: package ‘ggplot2’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘EpiCurve’
* removing ‘/tmp/workdir/EpiCurve/old/EpiCurve.Rcheck/EpiCurve’


```
# EpiNow2

<details>

* Version: 1.3.2
* GitHub: https://github.com/epiforecasts/EpiNow2
* Source code: https://github.com/cran/EpiNow2
* Date/Publication: 2020-12-14 09:00:15 UTC
* Number of recursive dependencies: 150

Run `cloud_details(, "EpiNow2")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/EpiNow2/new/EpiNow2.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘EpiNow2/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘EpiNow2’ version ‘1.3.2’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking if there is a namespace ... OK
* checking for executable files ... OK
* checking for hidden files and directories ... OK
* checking for portable file names ... OK
* checking for sufficient/correct file permissions ... OK
* checking whether package ‘EpiNow2’ can be installed ... ERROR
Installation failed.
See ‘/tmp/workdir/EpiNow2/new/EpiNow2.Rcheck/00install.out’ for details.
* DONE
Status: 1 ERROR, 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/EpiNow2/old/EpiNow2.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘EpiNow2/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘EpiNow2’ version ‘1.3.2’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking if there is a namespace ... OK
* checking for executable files ... OK
* checking for hidden files and directories ... OK
* checking for portable file names ... OK
* checking for sufficient/correct file permissions ... OK
* checking whether package ‘EpiNow2’ can be installed ... ERROR
Installation failed.
See ‘/tmp/workdir/EpiNow2/old/EpiNow2.Rcheck/00install.out’ for details.
* DONE
Status: 1 ERROR, 1 NOTE





```
# ERSA

<details>

* Version: 0.1.3
* GitHub: NA
* Source code: https://github.com/cran/ERSA
* Date/Publication: 2020-09-22 23:00:02 UTC
* Number of recursive dependencies: 123

Run `cloud_details(, "ERSA")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# EvaluateCore

<details>

* Version: 0.1.1
* GitHub: https://github.com/aravind-j/EvaluateCore
* Source code: https://github.com/cran/EvaluateCore
* Date/Publication: 2020-06-03 11:30:07 UTC
* Number of recursive dependencies: 154

Run `cloud_details(, "EvaluateCore")` for more info

</details>

## In both

*   checking whether package ‘EvaluateCore’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/EvaluateCore/new/EvaluateCore.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘EvaluateCore’ ...
** package ‘EvaluateCore’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘pkgconfig’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘EvaluateCore’
* removing ‘/tmp/workdir/EvaluateCore/new/EvaluateCore.Rcheck/EvaluateCore’


```
### CRAN

```
* installing *source* package ‘EvaluateCore’ ...
** package ‘EvaluateCore’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘pkgconfig’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘EvaluateCore’
* removing ‘/tmp/workdir/EvaluateCore/old/EvaluateCore.Rcheck/EvaluateCore’


```
# EValue

<details>

* Version: 4.1.1
* GitHub: NA
* Source code: https://github.com/cran/EValue
* Date/Publication: 2021-01-04 17:40:02 UTC
* Number of recursive dependencies: 68

Run `cloud_details(, "EValue")` for more info

</details>

## In both

*   checking whether package ‘EValue’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/EValue/new/EValue.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘EValue’ ...
** package ‘EValue’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘scales’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘EValue’
* removing ‘/tmp/workdir/EValue/new/EValue.Rcheck/EValue’


```
### CRAN

```
* installing *source* package ‘EValue’ ...
** package ‘EValue’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘scales’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘EValue’
* removing ‘/tmp/workdir/EValue/old/EValue.Rcheck/EValue’


```
# FLAME

<details>

* Version: 2.0.0
* GitHub: https://github.com/vittorioorlandi/FLAME
* Source code: https://github.com/cran/FLAME
* Date/Publication: 2020-04-15 00:30:06 UTC
* Number of recursive dependencies: 105

Run `cloud_details(, "FLAME")` for more info

</details>

## In both

*   checking whether package ‘FLAME’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/FLAME/new/FLAME.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘FLAME’ ...
** package ‘FLAME’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error: .onLoad failed in loadNamespace() for 'processx', details:
  call: loadNamespace(name)
  error: there is no package called ‘ps’
Execution halted
ERROR: lazy loading failed for package ‘FLAME’
* removing ‘/tmp/workdir/FLAME/new/FLAME.Rcheck/FLAME’


```
### CRAN

```
* installing *source* package ‘FLAME’ ...
** package ‘FLAME’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error: .onLoad failed in loadNamespace() for 'processx', details:
  call: loadNamespace(name)
  error: there is no package called ‘ps’
Execution halted
ERROR: lazy loading failed for package ‘FLAME’
* removing ‘/tmp/workdir/FLAME/old/FLAME.Rcheck/FLAME’


```
# FunnelPlotR

<details>

* Version: 0.3.2
* GitHub: https://github.com/chrismainey/FunnelPlotR
* Source code: https://github.com/cran/FunnelPlotR
* Date/Publication: 2020-11-30 16:20:02 UTC
* Number of recursive dependencies: 82

Run `cloud_details(, "FunnelPlotR")` for more info

</details>

## In both

*   checking whether package ‘FunnelPlotR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/FunnelPlotR/new/FunnelPlotR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘FunnelPlotR’ ...
** package ‘FunnelPlotR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘tidyselect’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘FunnelPlotR’
* removing ‘/tmp/workdir/FunnelPlotR/new/FunnelPlotR.Rcheck/FunnelPlotR’


```
### CRAN

```
* installing *source* package ‘FunnelPlotR’ ...
** package ‘FunnelPlotR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘tidyselect’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘FunnelPlotR’
* removing ‘/tmp/workdir/FunnelPlotR/old/FunnelPlotR.Rcheck/FunnelPlotR’


```
# gastempt

<details>

* Version: 0.5.1
* GitHub: https://github.com/dmenne/gastempt
* Source code: https://github.com/cran/gastempt
* Date/Publication: 2020-07-29 17:00:03 UTC
* Number of recursive dependencies: 130

Run `cloud_details(, "gastempt")` for more info

</details>

## In both

*   checking whether package ‘gastempt’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/gastempt/new/gastempt.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘gastempt’ ...
** package ‘gastempt’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(name) : there is no package called ‘rstantools’
Calls: :: ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘gastempt’
* removing ‘/tmp/workdir/gastempt/new/gastempt.Rcheck/gastempt’


```
### CRAN

```
* installing *source* package ‘gastempt’ ...
** package ‘gastempt’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(name) : there is no package called ‘rstantools’
Calls: :: ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘gastempt’
* removing ‘/tmp/workdir/gastempt/old/gastempt.Rcheck/gastempt’


```
# GeneBook

<details>

* Version: 1.0
* GitHub: NA
* Source code: https://github.com/cran/GeneBook
* Date/Publication: 2019-08-01 13:30:05 UTC
* Number of recursive dependencies: 40

Run `cloud_details(, "GeneBook")` for more info

</details>

## In both

*   checking whether package ‘GeneBook’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/GeneBook/new/GeneBook.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘GeneBook’ ...
** package ‘GeneBook’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Downloading data from: https://github.com/siyanc/GeneBook-Package/blob/master/GeneBook/R/sysdata.rda?raw=True 

Error in loadNamespace(name) : there is no package called ‘curl’
Error: unable to load R code in package ‘GeneBook’
Execution halted
ERROR: lazy loading failed for package ‘GeneBook’
* removing ‘/tmp/workdir/GeneBook/new/GeneBook.Rcheck/GeneBook’


```
### CRAN

```
* installing *source* package ‘GeneBook’ ...
** package ‘GeneBook’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Downloading data from: https://github.com/siyanc/GeneBook-Package/blob/master/GeneBook/R/sysdata.rda?raw=True 

Error in loadNamespace(name) : there is no package called ‘curl’
Error: unable to load R code in package ‘GeneBook’
Execution halted
ERROR: lazy loading failed for package ‘GeneBook’
* removing ‘/tmp/workdir/GeneBook/old/GeneBook.Rcheck/GeneBook’


```
# GenomicMating

<details>

* Version: 2.0
* GitHub: NA
* Source code: https://github.com/cran/GenomicMating
* Date/Publication: 2018-07-01 23:00:03 UTC
* Number of recursive dependencies: 122

Run `cloud_details(, "GenomicMating")` for more info

</details>

## In both

*   checking whether package ‘GenomicMating’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/GenomicMating/new/GenomicMating.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘GenomicMating’ ...
** package ‘GenomicMating’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c MatingPrograms.cpp -o MatingPrograms.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -shared -L/opt/R/4.0.3/lib/R/lib -L/usr/local/lib -o GenomicMating.so MatingPrograms.o RcppExports.o -llapack -lblas -lgfortran -lm -lquadmath -L/opt/R/4.0.3/lib/R/lib -lR
installing to /tmp/workdir/GenomicMating/new/GenomicMating.Rcheck/00LOCK-GenomicMating/00new/GenomicMating/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘tibble’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘GenomicMating’
* removing ‘/tmp/workdir/GenomicMating/new/GenomicMating.Rcheck/GenomicMating’


```
### CRAN

```
* installing *source* package ‘GenomicMating’ ...
** package ‘GenomicMating’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c MatingPrograms.cpp -o MatingPrograms.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -shared -L/opt/R/4.0.3/lib/R/lib -L/usr/local/lib -o GenomicMating.so MatingPrograms.o RcppExports.o -llapack -lblas -lgfortran -lm -lquadmath -L/opt/R/4.0.3/lib/R/lib -lR
installing to /tmp/workdir/GenomicMating/old/GenomicMating.Rcheck/00LOCK-GenomicMating/00new/GenomicMating/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘tibble’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘GenomicMating’
* removing ‘/tmp/workdir/GenomicMating/old/GenomicMating.Rcheck/GenomicMating’


```
# GGally

<details>

* Version: 2.1.0
* GitHub: https://github.com/ggobi/ggally
* Source code: https://github.com/cran/GGally
* Date/Publication: 2021-01-06 01:20:06 UTC
* Number of recursive dependencies: 152

Run `cloud_details(, "GGally")` for more info

</details>

## In both

*   checking whether package ‘GGally’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/GGally/new/GGally.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘GGally’ ...
** package ‘GGally’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘purrr’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘GGally’
* removing ‘/tmp/workdir/GGally/new/GGally.Rcheck/GGally’


```
### CRAN

```
* installing *source* package ‘GGally’ ...
** package ‘GGally’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘purrr’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘GGally’
* removing ‘/tmp/workdir/GGally/old/GGally.Rcheck/GGally’


```
# glmmfields

<details>

* Version: 0.1.4
* GitHub: https://github.com/seananderson/glmmfields
* Source code: https://github.com/cran/glmmfields
* Date/Publication: 2020-07-09 05:50:03 UTC
* Number of recursive dependencies: 95

Run `cloud_details(, "glmmfields")` for more info

</details>

## In both

*   checking whether package ‘glmmfields’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/glmmfields/new/glmmfields.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘glmmfields’ ...
** package ‘glmmfields’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
"/opt/R/4.0.3/lib/R/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/glmmfields.stan
Wrote C++ file "stan_files/glmmfields.cc"


g++ -std=gnu++14 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I"../inst/include" -I"/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.0.3/lib/R/site-library/rstan/include' -I'/opt/R/4.0.3/lib/R/site-library/StanHeaders/include' -I/usr/local/include   -fpic  -g -O2  -c stan_files/glmmfields.cc -o stan_files/glmmfields.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
...
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Product.h:132:22:   required from ‘Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::operator const Scalar() const [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Option = 0; Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::Scalar = double]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:23:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_glmmfields_namespace::model_glmmfields; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:10:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:179: stan_files/glmmfields.o] Error 1
rm stan_files/glmmfields.cc
ERROR: compilation failed for package ‘glmmfields’
* removing ‘/tmp/workdir/glmmfields/new/glmmfields.Rcheck/glmmfields’


```
### CRAN

```
* installing *source* package ‘glmmfields’ ...
** package ‘glmmfields’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
"/opt/R/4.0.3/lib/R/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/glmmfields.stan
Wrote C++ file "stan_files/glmmfields.cc"


g++ -std=gnu++14 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I"../inst/include" -I"/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.0.3/lib/R/site-library/rstan/include' -I'/opt/R/4.0.3/lib/R/site-library/StanHeaders/include' -I/usr/local/include   -fpic  -g -O2  -c stan_files/glmmfields.cc -o stan_files/glmmfields.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
...
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Product.h:132:22:   required from ‘Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::operator const Scalar() const [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Option = 0; Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::Scalar = double]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:23:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_glmmfields_namespace::model_glmmfields; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:10:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:179: stan_files/glmmfields.o] Error 1
rm stan_files/glmmfields.cc
ERROR: compilation failed for package ‘glmmfields’
* removing ‘/tmp/workdir/glmmfields/old/glmmfields.Rcheck/glmmfields’


```
# GOxploreR

<details>

* Version: 1.1.0
* GitHub: NA
* Source code: https://github.com/cran/GOxploreR
* Date/Publication: 2020-11-20 09:30:03 UTC
* Number of recursive dependencies: 106

Run `cloud_details(, "GOxploreR")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# GuessCompx

<details>

* Version: 1.0.3
* GitHub: https://github.com/agenis/GuessCompx
* Source code: https://github.com/cran/GuessCompx
* Date/Publication: 2019-06-03 12:50:34 UTC
* Number of recursive dependencies: 70

Run `cloud_details(, "GuessCompx")` for more info

</details>

## In both

*   checking whether package ‘GuessCompx’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/GuessCompx/new/GuessCompx.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... WARNING
    ```
    Skipping vignette re-building
    Packages suggested but not available for checking: 'knitr', 'rmarkdown'
    
    VignetteBuilder package required for checking but not installed: ‘knitr’
    ```

## Installation

### Devel

```
* installing *source* package ‘GuessCompx’ ...
** package ‘GuessCompx’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘purrr’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘GuessCompx’
* removing ‘/tmp/workdir/GuessCompx/new/GuessCompx.Rcheck/GuessCompx’


```
### CRAN

```
* installing *source* package ‘GuessCompx’ ...
** package ‘GuessCompx’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘purrr’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘GuessCompx’
* removing ‘/tmp/workdir/GuessCompx/old/GuessCompx.Rcheck/GuessCompx’


```
# HierDpart

<details>

* Version: 0.5.0
* GitHub: https://github.com/xinghuq/HierDpart
* Source code: https://github.com/cran/HierDpart
* Date/Publication: 2019-10-03 12:30:03 UTC
* Number of recursive dependencies: 190

Run `cloud_details(, "HierDpart")` for more info

</details>

## In both

*   checking whether package ‘HierDpart’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/HierDpart/new/HierDpart.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘HierDpart’ ...
** package ‘HierDpart’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘colorspace’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘HierDpart’
* removing ‘/tmp/workdir/HierDpart/new/HierDpart.Rcheck/HierDpart’


```
### CRAN

```
* installing *source* package ‘HierDpart’ ...
** package ‘HierDpart’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘colorspace’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘HierDpart’
* removing ‘/tmp/workdir/HierDpart/old/HierDpart.Rcheck/HierDpart’


```
# IATscores

<details>

* Version: 0.2.7
* GitHub: NA
* Source code: https://github.com/cran/IATscores
* Date/Publication: 2020-05-09 17:20:03 UTC
* Number of recursive dependencies: 104

Run `cloud_details(, "IATscores")` for more info

</details>

## In both

*   checking whether package ‘IATscores’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/IATscores/new/IATscores.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘IATscores’ ...
** package ‘IATscores’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘generics’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘IATscores’
* removing ‘/tmp/workdir/IATscores/new/IATscores.Rcheck/IATscores’


```
### CRAN

```
* installing *source* package ‘IATscores’ ...
** package ‘IATscores’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘generics’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘IATscores’
* removing ‘/tmp/workdir/IATscores/old/IATscores.Rcheck/IATscores’


```
# IBMPopSim

<details>

* Version: 0.3.1
* GitHub: https://github.com/DaphneGiorgi/IBMPopSim
* Source code: https://github.com/cran/IBMPopSim
* Date/Publication: 2020-11-10 15:30:05 UTC
* Number of recursive dependencies: 82

Run `cloud_details(, "IBMPopSim")` for more info

</details>

## In both

*   checking whether package ‘IBMPopSim’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/IBMPopSim/new/IBMPopSim.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘colorspace’
    ```

## Installation

### Devel

```
* installing *source* package ‘IBMPopSim’ ...
** package ‘IBMPopSim’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘colorspace’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘IBMPopSim’
* removing ‘/tmp/workdir/IBMPopSim/new/IBMPopSim.Rcheck/IBMPopSim’


```
### CRAN

```
* installing *source* package ‘IBMPopSim’ ...
** package ‘IBMPopSim’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘colorspace’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘IBMPopSim’
* removing ‘/tmp/workdir/IBMPopSim/old/IBMPopSim.Rcheck/IBMPopSim’


```
# IETD

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/IETD
* Date/Publication: 2020-03-10 08:50:06 UTC
* Number of recursive dependencies: 62

Run `cloud_details(, "IETD")` for more info

</details>

## In both

*   checking whether package ‘IETD’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/IETD/new/IETD.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘IETD’ ...
** package ‘IETD’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘generics’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘IETD’
* removing ‘/tmp/workdir/IETD/new/IETD.Rcheck/IETD’


```
### CRAN

```
* installing *source* package ‘IETD’ ...
** package ‘IETD’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘generics’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘IETD’
* removing ‘/tmp/workdir/IETD/old/IETD.Rcheck/IETD’


```
# IMP

<details>

* Version: 1.1
* GitHub: https://github.com/anup50695/IMPPackage
* Source code: https://github.com/cran/IMP
* Date/Publication: 2016-01-29 22:46:46
* Number of recursive dependencies: 74

Run `cloud_details(, "IMP")` for more info

</details>

## In both

*   checking whether package ‘IMP’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/IMP/new/IMP.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘IMP’ ...
** package ‘IMP’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘xtable’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘IMP’
* removing ‘/tmp/workdir/IMP/new/IMP.Rcheck/IMP’


```
### CRAN

```
* installing *source* package ‘IMP’ ...
** package ‘IMP’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘xtable’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘IMP’
* removing ‘/tmp/workdir/IMP/old/IMP.Rcheck/IMP’


```
# IPDfromKM

<details>

* Version: 0.1.10
* GitHub: NA
* Source code: https://github.com/cran/IPDfromKM
* Date/Publication: 2020-11-11 09:50:06 UTC
* Number of recursive dependencies: 60

Run `cloud_details(, "IPDfromKM")` for more info

</details>

## In both

*   checking whether package ‘IPDfromKM’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/IPDfromKM/new/IPDfromKM.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘IPDfromKM’ ...
** package ‘IPDfromKM’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘ggplot2’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘R6’
Error: package ‘ggplot2’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘IPDfromKM’
* removing ‘/tmp/workdir/IPDfromKM/new/IPDfromKM.Rcheck/IPDfromKM’


```
### CRAN

```
* installing *source* package ‘IPDfromKM’ ...
** package ‘IPDfromKM’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘ggplot2’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘R6’
Error: package ‘ggplot2’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘IPDfromKM’
* removing ‘/tmp/workdir/IPDfromKM/old/IPDfromKM.Rcheck/IPDfromKM’


```
# ISRaD

<details>

* Version: 1.7.8
* GitHub: NA
* Source code: https://github.com/cran/ISRaD
* Date/Publication: 2021-01-06 06:30:05 UTC
* Number of recursive dependencies: 118

Run `cloud_details(, "ISRaD")` for more info

</details>

## In both

*   checking whether package ‘ISRaD’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/ISRaD/new/ISRaD.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘ISRaD’ ...
** package ‘ISRaD’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘tibble’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘ISRaD’
* removing ‘/tmp/workdir/ISRaD/new/ISRaD.Rcheck/ISRaD’


```
### CRAN

```
* installing *source* package ‘ISRaD’ ...
** package ‘ISRaD’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘tibble’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘ISRaD’
* removing ‘/tmp/workdir/ISRaD/old/ISRaD.Rcheck/ISRaD’


```
# JamendoR

<details>

* Version: 0.1.0
* GitHub: https://github.com/MaxGreil/JamendoR
* Source code: https://github.com/cran/JamendoR
* Date/Publication: 2019-04-15 08:12:39 UTC
* Number of recursive dependencies: 35

Run `cloud_details(, "JamendoR")` for more info

</details>

## In both

*   checking whether package ‘JamendoR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/JamendoR/new/JamendoR.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘knitr’
    ```

## Installation

### Devel

```
* installing *source* package ‘JamendoR’ ...
** package ‘JamendoR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘generics’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘JamendoR’
* removing ‘/tmp/workdir/JamendoR/new/JamendoR.Rcheck/JamendoR’


```
### CRAN

```
* installing *source* package ‘JamendoR’ ...
** package ‘JamendoR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘generics’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘JamendoR’
* removing ‘/tmp/workdir/JamendoR/old/JamendoR.Rcheck/JamendoR’


```
# KCSNBShiny

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/KCSNBShiny
* Date/Publication: 2019-07-01 12:20:03 UTC
* Number of recursive dependencies: 103

Run `cloud_details(, "KCSNBShiny")` for more info

</details>

## In both

*   checking whether package ‘KCSNBShiny’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/KCSNBShiny/new/KCSNBShiny.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘KCSNBShiny’ ...
** package ‘KCSNBShiny’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘pkgconfig’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘KCSNBShiny’
* removing ‘/tmp/workdir/KCSNBShiny/new/KCSNBShiny.Rcheck/KCSNBShiny’


```
### CRAN

```
* installing *source* package ‘KCSNBShiny’ ...
** package ‘KCSNBShiny’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘pkgconfig’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘KCSNBShiny’
* removing ‘/tmp/workdir/KCSNBShiny/old/KCSNBShiny.Rcheck/KCSNBShiny’


```
# LBSPR

<details>

* Version: 0.1.5
* GitHub: https://github.com/AdrianHordyk/LBSPR
* Source code: https://github.com/cran/LBSPR
* Date/Publication: 2019-12-05 22:30:02 UTC
* Number of recursive dependencies: 86

Run `cloud_details(, "LBSPR")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# LexisNexisTools

<details>

* Version: 0.3.3
* GitHub: https://github.com/JBGruber/LexisNexisTools
* Source code: https://github.com/cran/LexisNexisTools
* Date/Publication: 2020-12-13 09:20:02 UTC
* Number of recursive dependencies: 144

Run `cloud_details(, "LexisNexisTools")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# LifeInsuranceContracts

<details>

* Version: 0.0.2
* GitHub: NA
* Source code: https://github.com/cran/LifeInsuranceContracts
* Date/Publication: 2020-09-22 09:10:02 UTC
* Number of recursive dependencies: 85

Run `cloud_details(, "LifeInsuranceContracts")` for more info

</details>

## In both

*   checking whether package ‘LifeInsuranceContracts’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/LifeInsuranceContracts/new/LifeInsuranceContracts.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘LifeInsuranceContracts’ ...
** package ‘LifeInsuranceContracts’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘munsell’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘LifeInsuranceContracts’
* removing ‘/tmp/workdir/LifeInsuranceContracts/new/LifeInsuranceContracts.Rcheck/LifeInsuranceContracts’


```
### CRAN

```
* installing *source* package ‘LifeInsuranceContracts’ ...
** package ‘LifeInsuranceContracts’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘munsell’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘LifeInsuranceContracts’
* removing ‘/tmp/workdir/LifeInsuranceContracts/old/LifeInsuranceContracts.Rcheck/LifeInsuranceContracts’


```
# LLSR

<details>

* Version: 0.0.2.19
* GitHub: https://github.com/diegofcoelho/LLSR
* Source code: https://github.com/cran/LLSR
* Date/Publication: 2019-03-05 22:20:11 UTC
* Number of recursive dependencies: 66

Run `cloud_details(, "LLSR")` for more info

</details>

## In both

*   checking whether package ‘LLSR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/LLSR/new/LLSR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘LLSR’ ...
** package ‘LLSR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘colorspace’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘LLSR’
* removing ‘/tmp/workdir/LLSR/new/LLSR.Rcheck/LLSR’


```
### CRAN

```
* installing *source* package ‘LLSR’ ...
** package ‘LLSR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘colorspace’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘LLSR’
* removing ‘/tmp/workdir/LLSR/old/LLSR.Rcheck/LLSR’


```
# LocFDRPois

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/LocFDRPois
* Date/Publication: 2015-05-05 06:43:01
* Number of recursive dependencies: 61

Run `cloud_details(, "LocFDRPois")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# MachineShop

<details>

* Version: 2.6.1
* GitHub: https://github.com/brian-j-smith/MachineShop
* Source code: https://github.com/cran/MachineShop
* Date/Publication: 2021-01-26 17:40:08 UTC
* Number of recursive dependencies: 193

Run `cloud_details(, "MachineShop")` for more info

</details>

## In both

*   checking whether package ‘MachineShop’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/MachineShop/new/MachineShop.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘MachineShop’ ...
** package ‘MachineShop’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘TH.data’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘MachineShop’
* removing ‘/tmp/workdir/MachineShop/new/MachineShop.Rcheck/MachineShop’


```
### CRAN

```
* installing *source* package ‘MachineShop’ ...
** package ‘MachineShop’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘TH.data’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘MachineShop’
* removing ‘/tmp/workdir/MachineShop/old/MachineShop.Rcheck/MachineShop’


```
# Mapinguari

<details>

* Version: 1.0.0
* GitHub: https://github.com/gabrielhoc/Mapinguari
* Source code: https://github.com/cran/Mapinguari
* Date/Publication: 2019-09-30 16:40:02 UTC
* Number of recursive dependencies: 54

Run `cloud_details(, "Mapinguari")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/Mapinguari/new/Mapinguari.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘Mapinguari/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘Mapinguari’ version ‘1.0.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘rgdal’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/Mapinguari/old/Mapinguari.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘Mapinguari/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘Mapinguari’ version ‘1.0.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘rgdal’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# MarketMatching

<details>

* Version: 1.2.0
* GitHub: NA
* Source code: https://github.com/cran/MarketMatching
* Date/Publication: 2021-01-08 20:10:02 UTC
* Number of recursive dependencies: 82

Run `cloud_details(, "MarketMatching")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/MarketMatching/new/MarketMatching.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘MarketMatching/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘MarketMatching’ version ‘1.2.0’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'CausalImpact', 'bsts', 'Boom'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/MarketMatching/old/MarketMatching.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘MarketMatching/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘MarketMatching’ version ‘1.2.0’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'CausalImpact', 'bsts', 'Boom'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# MatchThem

<details>

* Version: 0.9.3
* GitHub: https://github.com/FarhadPishgar/MatchThem
* Source code: https://github.com/cran/MatchThem
* Date/Publication: 2020-03-23 16:10:02 UTC
* Number of recursive dependencies: 80

Run `cloud_details(, "MatchThem")` for more info

</details>

## In both

*   checking whether package ‘MatchThem’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/MatchThem/new/MatchThem.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘MatchThem’ ...
** package ‘MatchThem’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘WeightIt’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘pkgconfig’
Error: package ‘WeightIt’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘MatchThem’
* removing ‘/tmp/workdir/MatchThem/new/MatchThem.Rcheck/MatchThem’


```
### CRAN

```
* installing *source* package ‘MatchThem’ ...
** package ‘MatchThem’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘WeightIt’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘pkgconfig’
Error: package ‘WeightIt’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘MatchThem’
* removing ‘/tmp/workdir/MatchThem/old/MatchThem.Rcheck/MatchThem’


```
# MazamaLocationUtils

<details>

* Version: 0.1.13
* GitHub: https://github.com/MazamaScience/MazamaLocationUtils
* Source code: https://github.com/cran/MazamaLocationUtils
* Date/Publication: 2021-01-28 15:10:14 UTC
* Number of recursive dependencies: 136

Run `cloud_details(, "MazamaLocationUtils")` for more info

</details>

## In both

*   checking whether package ‘MazamaLocationUtils’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/MazamaLocationUtils/new/MazamaLocationUtils.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘MazamaLocationUtils’ ...
** package ‘MazamaLocationUtils’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘purrr’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘MazamaLocationUtils’
* removing ‘/tmp/workdir/MazamaLocationUtils/new/MazamaLocationUtils.Rcheck/MazamaLocationUtils’


```
### CRAN

```
* installing *source* package ‘MazamaLocationUtils’ ...
** package ‘MazamaLocationUtils’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘purrr’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘MazamaLocationUtils’
* removing ‘/tmp/workdir/MazamaLocationUtils/old/MazamaLocationUtils.Rcheck/MazamaLocationUtils’


```
# MBNMAdose

<details>

* Version: 0.3.0
* GitHub: NA
* Source code: https://github.com/cran/MBNMAdose
* Date/Publication: 2020-09-10 16:40:07 UTC
* Number of recursive dependencies: 102

Run `cloud_details(, "MBNMAdose")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# metagam

<details>

* Version: 0.2.0
* GitHub: https://github.com/Lifebrain/metagam
* Source code: https://github.com/cran/metagam
* Date/Publication: 2020-11-12 08:10:02 UTC
* Number of recursive dependencies: 153

Run `cloud_details(, "metagam")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/metagam/new/metagam.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘metagam/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘metagam’ version ‘0.2.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘metap’

Package suggested but not available for checking: ‘multtest’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/metagam/old/metagam.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘metagam/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘metagam’ version ‘0.2.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘metap’

Package suggested but not available for checking: ‘multtest’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# MetaIntegrator

<details>

* Version: 2.1.3
* GitHub: NA
* Source code: https://github.com/cran/MetaIntegrator
* Date/Publication: 2020-02-26 13:00:11 UTC
* Number of recursive dependencies: 180

Run `cloud_details(, "MetaIntegrator")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/MetaIntegrator/new/MetaIntegrator.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘MetaIntegrator/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘MetaIntegrator’ version ‘2.1.3’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'GEOquery', 'GEOmetadb'

Package suggested but not available for checking: ‘snplist’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/MetaIntegrator/old/MetaIntegrator.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘MetaIntegrator/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘MetaIntegrator’ version ‘2.1.3’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'GEOquery', 'GEOmetadb'

Package suggested but not available for checking: ‘snplist’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# Momocs

<details>

* Version: 1.3.2
* GitHub: https://github.com/MomX/Momocs
* Source code: https://github.com/cran/Momocs
* Date/Publication: 2020-10-06 15:20:11 UTC
* Number of recursive dependencies: 136

Run `cloud_details(, "Momocs")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# MtreeRing

<details>

* Version: 1.4.2
* GitHub: https://github.com/ropensci/MtreeRing
* Source code: https://github.com/cran/MtreeRing
* Date/Publication: 2019-10-03 09:40:02 UTC
* Number of recursive dependencies: 117

Run `cloud_details(, "MtreeRing")` for more info

</details>

## In both

*   checking whether package ‘MtreeRing’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/MtreeRing/new/MtreeRing.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘MtreeRing’ ...
** package ‘MtreeRing’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘mime’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘MtreeRing’
* removing ‘/tmp/workdir/MtreeRing/new/MtreeRing.Rcheck/MtreeRing’


```
### CRAN

```
* installing *source* package ‘MtreeRing’ ...
** package ‘MtreeRing’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘mime’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘MtreeRing’
* removing ‘/tmp/workdir/MtreeRing/old/MtreeRing.Rcheck/MtreeRing’


```
# multinma

<details>

* Version: 0.2.1
* GitHub: https://github.com/dmphillippo/multinma
* Source code: https://github.com/cran/multinma
* Date/Publication: 2021-01-09 13:30:02 UTC
* Number of recursive dependencies: 151

Run `cloud_details(, "multinma")` for more info

</details>

## In both

*   checking whether package ‘multinma’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/multinma/new/multinma.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘multinma’ ...
** package ‘multinma’ successfully unpacked and MD5 sums checked
** using staged installation
DIAGNOSTIC(S) FROM PARSER:
Info: integer division implicitly rounds to integer. Found int division: nint / int_thin
 Positive values rounded down, negative values rounded up or down in platform-dependent way.

DIAGNOSTIC(S) FROM PARSER:
Info: integer division implicitly rounds to integer. Found int division: nint / int_thin
 Positive values rounded down, negative values rounded up or down in platform-dependent way.
...
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/ProductEvaluators.h:35:90:   required from ‘Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::evaluator(const XprType&) [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Options = 0; Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::XprType = Eigen::Product<Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Matrix<double, -1, 1>, 0>]’
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Product.h:132:22:   required from ‘Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::operator const Scalar() const [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Option = 0; Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::Scalar = double]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:23:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_binomial_1par_namespace::model_binomial_1par; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:10:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:179: stanExports_binomial_1par.o] Error 1
ERROR: compilation failed for package ‘multinma’
* removing ‘/tmp/workdir/multinma/new/multinma.Rcheck/multinma’


```
### CRAN

```
* installing *source* package ‘multinma’ ...
** package ‘multinma’ successfully unpacked and MD5 sums checked
** using staged installation
DIAGNOSTIC(S) FROM PARSER:
Info: integer division implicitly rounds to integer. Found int division: nint / int_thin
 Positive values rounded down, negative values rounded up or down in platform-dependent way.

DIAGNOSTIC(S) FROM PARSER:
Info: integer division implicitly rounds to integer. Found int division: nint / int_thin
 Positive values rounded down, negative values rounded up or down in platform-dependent way.
...
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/ProductEvaluators.h:35:90:   required from ‘Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::evaluator(const XprType&) [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Options = 0; Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::XprType = Eigen::Product<Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Matrix<double, -1, 1>, 0>]’
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Product.h:132:22:   required from ‘Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::operator const Scalar() const [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Option = 0; Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::Scalar = double]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:23:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_binomial_1par_namespace::model_binomial_1par; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:10:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:179: stanExports_binomial_1par.o] Error 1
ERROR: compilation failed for package ‘multinma’
* removing ‘/tmp/workdir/multinma/old/multinma.Rcheck/multinma’


```
# MXM

<details>

* Version: 1.5.0
* GitHub: NA
* Source code: https://github.com/cran/MXM
* Date/Publication: 2021-01-09 02:10:03 UTC
* Number of recursive dependencies: 124

Run `cloud_details(, "MXM")` for more info

</details>

## In both

*   checking whether package ‘MXM’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/MXM/new/MXM.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘MXM’ ...
** package ‘MXM’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘magrittr’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘MXM’
* removing ‘/tmp/workdir/MXM/new/MXM.Rcheck/MXM’


```
### CRAN

```
* installing *source* package ‘MXM’ ...
** package ‘MXM’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘magrittr’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘MXM’
* removing ‘/tmp/workdir/MXM/old/MXM.Rcheck/MXM’


```
# NBShiny3

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/NBShiny3
* Date/Publication: 2020-08-03 11:00:05 UTC
* Number of recursive dependencies: 109

Run `cloud_details(, "NBShiny3")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# Neighboot

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/Neighboot
* Date/Publication: 2020-09-21 08:30:07 UTC
* Number of recursive dependencies: 99

Run `cloud_details(, "Neighboot")` for more info

</details>

## In both

*   checking whether package ‘Neighboot’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/Neighboot/new/Neighboot.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘Neighboot’ ...
** package ‘Neighboot’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘robustbase’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘Neighboot’
* removing ‘/tmp/workdir/Neighboot/new/Neighboot.Rcheck/Neighboot’


```
### CRAN

```
* installing *source* package ‘Neighboot’ ...
** package ‘Neighboot’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘robustbase’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘Neighboot’
* removing ‘/tmp/workdir/Neighboot/old/Neighboot.Rcheck/Neighboot’


```
# NPMLEmix

<details>

* Version: 1.2
* GitHub: https://github.com/NabarunD/NPMLEmix
* Source code: https://github.com/cran/NPMLEmix
* Date/Publication: 2020-12-06 05:50:02 UTC
* Number of recursive dependencies: 146

Run `cloud_details(, "NPMLEmix")` for more info

</details>

## In both

*   checking whether package ‘NPMLEmix’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/NPMLEmix/new/NPMLEmix.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘NPMLEmix’ ...
** package ‘NPMLEmix’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘colorspace’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘NPMLEmix’
* removing ‘/tmp/workdir/NPMLEmix/new/NPMLEmix.Rcheck/NPMLEmix’


```
### CRAN

```
* installing *source* package ‘NPMLEmix’ ...
** package ‘NPMLEmix’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘colorspace’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘NPMLEmix’
* removing ‘/tmp/workdir/NPMLEmix/old/NPMLEmix.Rcheck/NPMLEmix’


```
# OTrecod

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/OTrecod
* Date/Publication: 2021-01-29 09:20:14 UTC
* Number of recursive dependencies: 153

Run `cloud_details(, "OTrecod")` for more info

</details>

## In both

*   checking whether package ‘OTrecod’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/OTrecod/new/OTrecod.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘OTrecod’ ...
** package ‘OTrecod’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘mvtnorm’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘OTrecod’
* removing ‘/tmp/workdir/OTrecod/new/OTrecod.Rcheck/OTrecod’


```
### CRAN

```
* installing *source* package ‘OTrecod’ ...
** package ‘OTrecod’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘mvtnorm’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘OTrecod’
* removing ‘/tmp/workdir/OTrecod/old/OTrecod.Rcheck/OTrecod’


```
# OutliersO3

<details>

* Version: 0.6.3
* GitHub: NA
* Source code: https://github.com/cran/OutliersO3
* Date/Publication: 2020-04-25 00:10:02 UTC
* Number of recursive dependencies: 141

Run `cloud_details(, "OutliersO3")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# PakPMICS2018hh

<details>

* Version: 0.1.0
* GitHub: https://github.com/myaseen208/PakPMICS2018hh
* Source code: https://github.com/cran/PakPMICS2018hh
* Date/Publication: 2019-06-07 10:30:03 UTC
* Number of recursive dependencies: 39

Run `cloud_details(, "PakPMICS2018hh")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# pencal

<details>

* Version: 0.2.2
* GitHub: NA
* Source code: https://github.com/cran/pencal
* Date/Publication: 2021-01-15 10:50:06 UTC
* Number of recursive dependencies: 156

Run `cloud_details(, "pencal")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/pencal/new/pencal.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘pencal/DESCRIPTION’ ... OK
* this is package ‘pencal’ version ‘0.2.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘survcomp’

Package suggested but not available for checking: ‘ptmixed’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/pencal/old/pencal.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘pencal/DESCRIPTION’ ... OK
* this is package ‘pencal’ version ‘0.2.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘survcomp’

Package suggested but not available for checking: ‘ptmixed’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# PhenotypeSimulator

<details>

* Version: 0.3.3
* GitHub: https://github.com/HannahVMeyer/PhenotypeSimulator
* Source code: https://github.com/cran/PhenotypeSimulator
* Date/Publication: 2019-05-15 15:40:03 UTC
* Number of recursive dependencies: 81

Run `cloud_details(, "PhenotypeSimulator")` for more info

</details>

## In both

*   checking whether package ‘PhenotypeSimulator’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/PhenotypeSimulator/new/PhenotypeSimulator.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘PhenotypeSimulator’ ...
** package ‘PhenotypeSimulator’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c read_lines.cpp -o read_lines.o
g++ -std=gnu++11 -shared -L/opt/R/4.0.3/lib/R/lib -L/usr/local/lib -o PhenotypeSimulator.so RcppExports.o read_lines.o -L/opt/R/4.0.3/lib/R/lib -lR
installing to /tmp/workdir/PhenotypeSimulator/new/PhenotypeSimulator.Rcheck/00LOCK-PhenotypeSimulator/00new/PhenotypeSimulator/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘R6’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘PhenotypeSimulator’
* removing ‘/tmp/workdir/PhenotypeSimulator/new/PhenotypeSimulator.Rcheck/PhenotypeSimulator’


```
### CRAN

```
* installing *source* package ‘PhenotypeSimulator’ ...
** package ‘PhenotypeSimulator’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c read_lines.cpp -o read_lines.o
g++ -std=gnu++11 -shared -L/opt/R/4.0.3/lib/R/lib -L/usr/local/lib -o PhenotypeSimulator.so RcppExports.o read_lines.o -L/opt/R/4.0.3/lib/R/lib -lR
installing to /tmp/workdir/PhenotypeSimulator/old/PhenotypeSimulator.Rcheck/00LOCK-PhenotypeSimulator/00new/PhenotypeSimulator/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘R6’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘PhenotypeSimulator’
* removing ‘/tmp/workdir/PhenotypeSimulator/old/PhenotypeSimulator.Rcheck/PhenotypeSimulator’


```
# phylopath

<details>

* Version: 1.1.2
* GitHub: https://github.com/Ax3man/phylopath
* Source code: https://github.com/cran/phylopath
* Date/Publication: 2019-12-07 01:10:07 UTC
* Number of recursive dependencies: 93

Run `cloud_details(, "phylopath")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/phylopath/new/phylopath.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘phylopath/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘phylopath’ version ‘1.1.2’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘ggm’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/phylopath/old/phylopath.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘phylopath/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘phylopath’ version ‘1.1.2’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘ggm’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# PKNCA

<details>

* Version: 0.9.4
* GitHub: https://github.com/billdenney/pknca
* Source code: https://github.com/cran/PKNCA
* Date/Publication: 2020-06-01 17:00:02 UTC
* Number of recursive dependencies: 76

Run `cloud_details(, "PKNCA")` for more info

</details>

## In both

*   checking whether package ‘PKNCA’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/PKNCA/new/PKNCA.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘PKNCA’ ...
** package ‘PKNCA’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘R6’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘PKNCA’
* removing ‘/tmp/workdir/PKNCA/new/PKNCA.Rcheck/PKNCA’


```
### CRAN

```
* installing *source* package ‘PKNCA’ ...
** package ‘PKNCA’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘R6’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘PKNCA’
* removing ‘/tmp/workdir/PKNCA/old/PKNCA.Rcheck/PKNCA’


```
# Plasmidprofiler

<details>

* Version: 0.1.6
* GitHub: NA
* Source code: https://github.com/cran/Plasmidprofiler
* Date/Publication: 2017-01-06 01:10:47
* Number of recursive dependencies: 93

Run `cloud_details(, "Plasmidprofiler")` for more info

</details>

## In both

*   checking whether package ‘Plasmidprofiler’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/Plasmidprofiler/new/Plasmidprofiler.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘Plasmidprofiler’ ...
** package ‘Plasmidprofiler’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** exec
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘generics’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘Plasmidprofiler’
* removing ‘/tmp/workdir/Plasmidprofiler/new/Plasmidprofiler.Rcheck/Plasmidprofiler’


```
### CRAN

```
* installing *source* package ‘Plasmidprofiler’ ...
** package ‘Plasmidprofiler’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** exec
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘generics’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘Plasmidprofiler’
* removing ‘/tmp/workdir/Plasmidprofiler/old/Plasmidprofiler.Rcheck/Plasmidprofiler’


```
# PLNmodels

<details>

* Version: 0.10.6
* GitHub: https://github.com/jchiquet/PLNmodels
* Source code: https://github.com/cran/PLNmodels
* Date/Publication: 2020-06-22 09:50:03 UTC
* Number of recursive dependencies: 125

Run `cloud_details(, "PLNmodels")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/PLNmodels/new/PLNmodels.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘PLNmodels/DESCRIPTION’ ... OK
* this is package ‘PLNmodels’ version ‘0.10.6’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
* checking running R code from vignettes ... NONE
  ‘Import_data.Rmd’ using ‘UTF-8’... OK
  ‘PLN.Rmd’ using ‘UTF-8’... OK
  ‘PLNLDA.Rmd’ using ‘UTF-8’... OK
  ‘PLNPCA.Rmd’ using ‘UTF-8’... OK
  ‘PLNnetwork.Rmd’ using ‘UTF-8’... OK
  ‘Trichoptera.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... SKIPPED
* DONE
Status: 1 ERROR, 2 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/PLNmodels/old/PLNmodels.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘PLNmodels/DESCRIPTION’ ... OK
* this is package ‘PLNmodels’ version ‘0.10.6’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
* checking running R code from vignettes ... NONE
  ‘Import_data.Rmd’ using ‘UTF-8’... OK
  ‘PLN.Rmd’ using ‘UTF-8’... OK
  ‘PLNLDA.Rmd’ using ‘UTF-8’... OK
  ‘PLNPCA.Rmd’ using ‘UTF-8’... OK
  ‘PLNnetwork.Rmd’ using ‘UTF-8’... OK
  ‘Trichoptera.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... SKIPPED
* DONE
Status: 1 ERROR, 2 NOTEs





```
# PML

<details>

* Version: 1.2
* GitHub: https://github.com/xinyue-L/PML
* Source code: https://github.com/cran/PML
* Date/Publication: 2020-02-11 12:20:02 UTC
* Number of recursive dependencies: 85

Run `cloud_details(, "PML")` for more info

</details>

## In both

*   checking whether package ‘PML’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/PML/new/PML.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘PML’ ...
** package ‘PML’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘generics’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘PML’
* removing ‘/tmp/workdir/PML/new/PML.Rcheck/PML’


```
### CRAN

```
* installing *source* package ‘PML’ ...
** package ‘PML’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘generics’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘PML’
* removing ‘/tmp/workdir/PML/old/PML.Rcheck/PML’


```
# PREPShiny

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/PREPShiny
* Date/Publication: 2019-04-25 12:30:03 UTC
* Number of recursive dependencies: 86

Run `cloud_details(, "PREPShiny")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# R2019nCoV

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/R2019nCoV
* Date/Publication: 2020-02-29 13:40:09 UTC
* Number of recursive dependencies: 74

Run `cloud_details(, "R2019nCoV")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# RadialVisGadgets

<details>

* Version: 0.2.0
* GitHub: https://github.com/jmatute/RadialShinyGadgets
* Source code: https://github.com/cran/RadialVisGadgets
* Date/Publication: 2020-12-11 10:20:08 UTC
* Number of recursive dependencies: 113

Run `cloud_details(, "RadialVisGadgets")` for more info

</details>

## In both

*   checking whether package ‘RadialVisGadgets’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/RadialVisGadgets/new/RadialVisGadgets.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘RadialVisGadgets’ ...
** package ‘RadialVisGadgets’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘pkgconfig’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘RadialVisGadgets’
* removing ‘/tmp/workdir/RadialVisGadgets/new/RadialVisGadgets.Rcheck/RadialVisGadgets’


```
### CRAN

```
* installing *source* package ‘RadialVisGadgets’ ...
** package ‘RadialVisGadgets’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘pkgconfig’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘RadialVisGadgets’
* removing ‘/tmp/workdir/RadialVisGadgets/old/RadialVisGadgets.Rcheck/RadialVisGadgets’


```
# Relectoral

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/Relectoral
* Date/Publication: 2020-06-14 14:20:02 UTC
* Number of recursive dependencies: 85

Run `cloud_details(, "Relectoral")` for more info

</details>

## In both

*   checking whether package ‘Relectoral’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/Relectoral/new/Relectoral.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘Relectoral’ ...
** package ‘Relectoral’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘generics’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘Relectoral’
* removing ‘/tmp/workdir/Relectoral/new/Relectoral.Rcheck/Relectoral’


```
### CRAN

```
* installing *source* package ‘Relectoral’ ...
** package ‘Relectoral’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘generics’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘Relectoral’
* removing ‘/tmp/workdir/Relectoral/old/Relectoral.Rcheck/Relectoral’


```
# Rfssa

<details>

* Version: 1.0.0
* GitHub: https://github.com/haghbinh/Rfssa.git
* Source code: https://github.com/cran/Rfssa
* Date/Publication: 2019-09-12 22:40:20 UTC
* Number of recursive dependencies: 123

Run `cloud_details(, "Rfssa")` for more info

</details>

## In both

*   checking whether package ‘Rfssa’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/Rfssa/new/Rfssa.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘Rfssa’ ...
** package ‘Rfssa’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c H.cpp -o H.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c HLinprod.cpp -o HLinprod.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c HpLinprod.cpp -o HpLinprod.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c Utils.cpp -o Utils.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c mwinprod.cpp -o mwinprod.o
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘quantmod’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘Rfssa’
* removing ‘/tmp/workdir/Rfssa/new/Rfssa.Rcheck/Rfssa’


```
### CRAN

```
* installing *source* package ‘Rfssa’ ...
** package ‘Rfssa’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c H.cpp -o H.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c HLinprod.cpp -o HLinprod.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c HpLinprod.cpp -o HpLinprod.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c Utils.cpp -o Utils.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c mwinprod.cpp -o mwinprod.o
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘quantmod’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘Rfssa’
* removing ‘/tmp/workdir/Rfssa/old/Rfssa.Rcheck/Rfssa’


```
# rmdcev

<details>

* Version: 1.2.4
* GitHub: https://github.com/plloydsmith/rmdcev
* Source code: https://github.com/cran/rmdcev
* Date/Publication: 2020-09-30 18:40:02 UTC
* Number of recursive dependencies: 83

Run `cloud_details(, "rmdcev")` for more info

</details>

## In both

*   checking whether package ‘rmdcev’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/rmdcev/new/rmdcev.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘rmdcev’ ...
** package ‘rmdcev’ successfully unpacked and MD5 sums checked
** using staged installation
** libs


g++ -std=gnu++14 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I"../inst/include" -I"/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppParallel/include' -I'/opt/R/4.0.3/lib/R/site-library/rstan/include' -I'/opt/R/4.0.3/lib/R/site-library/StanHeaders/include' -I/usr/local/include   -I'/opt/R/4.0.3/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:13,
...
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/ProductEvaluators.h:35:90:   required from ‘Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::evaluator(const XprType&) [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Options = 0; Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::XprType = Eigen::Product<Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Matrix<double, -1, 1>, 0>]’
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Product.h:132:22:   required from ‘Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::operator const Scalar() const [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Option = 0; Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::Scalar = double]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:23:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_mdcev_namespace::model_mdcev; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:10:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:179: stanExports_mdcev.o] Error 1
ERROR: compilation failed for package ‘rmdcev’
* removing ‘/tmp/workdir/rmdcev/new/rmdcev.Rcheck/rmdcev’


```
### CRAN

```
* installing *source* package ‘rmdcev’ ...
** package ‘rmdcev’ successfully unpacked and MD5 sums checked
** using staged installation
** libs


g++ -std=gnu++14 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I"../inst/include" -I"/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppParallel/include' -I'/opt/R/4.0.3/lib/R/site-library/rstan/include' -I'/opt/R/4.0.3/lib/R/site-library/StanHeaders/include' -I/usr/local/include   -I'/opt/R/4.0.3/lib/R/site-library/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:13,
...
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/ProductEvaluators.h:35:90:   required from ‘Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::evaluator(const XprType&) [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Options = 0; Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::XprType = Eigen::Product<Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Matrix<double, -1, 1>, 0>]’
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Product.h:132:22:   required from ‘Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::operator const Scalar() const [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Option = 0; Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::Scalar = double]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:23:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_mdcev_namespace::model_mdcev; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:10:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:179: stanExports_mdcev.o] Error 1
ERROR: compilation failed for package ‘rmdcev’
* removing ‘/tmp/workdir/rmdcev/old/rmdcev.Rcheck/rmdcev’


```
# RNHANES

<details>

* Version: 1.1.0
* GitHub: https://github.com/silentspringinstitute/RNHANES
* Source code: https://github.com/cran/RNHANES
* Date/Publication: 2016-11-29 02:45:46
* Number of recursive dependencies: 68

Run `cloud_details(, "RNHANES")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# RSSL

<details>

* Version: 0.9.3
* GitHub: https://github.com/jkrijthe/RSSL
* Source code: https://github.com/cran/RSSL
* Date/Publication: 2020-11-13 18:00:10 UTC
* Number of recursive dependencies: 77

Run `cloud_details(, "RSSL")` for more info

</details>

## In both

*   checking whether package ‘RSSL’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/RSSL/new/RSSL.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘RSSL’ ...
** package ‘RSSL’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c GRFClassifier.cpp -o GRFClassifier.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
gcc -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c Rsvm.c -o Rsvm.o
gcc -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c ssl.cpp -o ssl.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c svm.cpp -o svm.o
...
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘generics’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘RSSL’
* removing ‘/tmp/workdir/RSSL/new/RSSL.Rcheck/RSSL’


```
### CRAN

```
* installing *source* package ‘RSSL’ ...
** package ‘RSSL’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c GRFClassifier.cpp -o GRFClassifier.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
gcc -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c Rsvm.c -o Rsvm.o
gcc -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c ssl.cpp -o ssl.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I/usr/local/include   -fpic  -g -O2  -c svm.cpp -o svm.o
...
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘generics’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘RSSL’
* removing ‘/tmp/workdir/RSSL/old/RSSL.Rcheck/RSSL’


```
# rstap

<details>

* Version: 1.0.3
* GitHub: https://github.com/biostatistics4socialimpact/rstap
* Source code: https://github.com/cran/rstap
* Date/Publication: 2019-02-06 20:30:03 UTC
* Number of recursive dependencies: 111

Run `cloud_details(, "rstap")` for more info

</details>

## In both

*   checking whether package ‘rstap’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/rstap/new/rstap.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘rstap’ ...
** package ‘rstap’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
"/opt/R/4.0.3/lib/R/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/stap_binomial.stan
Wrote C++ file "stan_files/stap_binomial.cc"
g++ -std=gnu++14 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I"../inst/include" -I"`"/opt/R/4.0.3/lib/R/bin/Rscript" --vanilla -e "cat(system.file('include', 'src', package = 'StanHeaders'))"`" -DBOOST_RESULT_OF_USE_TR1 -DBOOST_NO_DECLTYPE -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error  -I'/opt/R/4.0.3/lib/R/site-library/StanHeaders/include' -I'/opt/R/4.0.3/lib/R/site-library/rstan/include' -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c stan_files/stap_binomial.cc -o stan_files/stap_binomial.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:13,
...
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Product.h:132:22:   required from ‘Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::operator const Scalar() const [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Option = 0; Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::Scalar = double]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:23:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_stap_binomial_namespace::model_stap_binomial; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:10:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:179: stan_files/stap_binomial.o] Error 1
rm stan_files/stap_binomial.cc
ERROR: compilation failed for package ‘rstap’
* removing ‘/tmp/workdir/rstap/new/rstap.Rcheck/rstap’


```
### CRAN

```
* installing *source* package ‘rstap’ ...
** package ‘rstap’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
"/opt/R/4.0.3/lib/R/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/stap_binomial.stan
Wrote C++ file "stan_files/stap_binomial.cc"
g++ -std=gnu++14 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG -I"../inst/include" -I"`"/opt/R/4.0.3/lib/R/bin/Rscript" --vanilla -e "cat(system.file('include', 'src', package = 'StanHeaders'))"`" -DBOOST_RESULT_OF_USE_TR1 -DBOOST_NO_DECLTYPE -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error  -I'/opt/R/4.0.3/lib/R/site-library/StanHeaders/include' -I'/opt/R/4.0.3/lib/R/site-library/rstan/include' -I'/opt/R/4.0.3/lib/R/site-library/BH/include' -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c stan_files/stap_binomial.cc -o stan_files/stap_binomial.o
In file included from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
                 from /opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.0.3/lib/R/site-library/StanHeaders/include/stan/math/prim/mat/fun/Eigen.hpp:13,
...
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/Product.h:132:22:   required from ‘Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::operator const Scalar() const [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Option = 0; Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::Scalar = double]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:23:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_stap_binomial_namespace::model_stap_binomial; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/opt/R/4.0.3/lib/R/site-library/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:10:   required from here
/opt/R/4.0.3/lib/R/site-library/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__vector(2) double’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:179: stan_files/stap_binomial.o] Error 1
rm stan_files/stap_binomial.cc
ERROR: compilation failed for package ‘rstap’
* removing ‘/tmp/workdir/rstap/old/rstap.Rcheck/rstap’


```
# Rthingsboard

<details>

* Version: 0.2.4
* GitHub: https://github.com/DDorch/Rthingsboard
* Source code: https://github.com/cran/Rthingsboard
* Date/Publication: 2021-01-21 10:40:14 UTC
* Number of recursive dependencies: 60

Run `cloud_details(, "Rthingsboard")` for more info

</details>

## In both

*   checking whether package ‘Rthingsboard’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/Rthingsboard/new/Rthingsboard.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘Rthingsboard’ ...
** package ‘Rthingsboard’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘tidyselect’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘Rthingsboard’
* removing ‘/tmp/workdir/Rthingsboard/new/Rthingsboard.Rcheck/Rthingsboard’


```
### CRAN

```
* installing *source* package ‘Rthingsboard’ ...
** package ‘Rthingsboard’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘tidyselect’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘Rthingsboard’
* removing ‘/tmp/workdir/Rthingsboard/old/Rthingsboard.Rcheck/Rthingsboard’


```
# SanFranBeachWater

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/SanFranBeachWater
* Date/Publication: 2017-06-12 05:43:35 UTC
* Number of recursive dependencies: 65

Run `cloud_details(, "SanFranBeachWater")` for more info

</details>

## In both

*   checking whether package ‘SanFranBeachWater’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/SanFranBeachWater/new/SanFranBeachWater.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘SanFranBeachWater’ ...
** package ‘SanFranBeachWater’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘tidyselect’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘SanFranBeachWater’
* removing ‘/tmp/workdir/SanFranBeachWater/new/SanFranBeachWater.Rcheck/SanFranBeachWater’


```
### CRAN

```
* installing *source* package ‘SanFranBeachWater’ ...
** package ‘SanFranBeachWater’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘tidyselect’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘SanFranBeachWater’
* removing ‘/tmp/workdir/SanFranBeachWater/old/SanFranBeachWater.Rcheck/SanFranBeachWater’


```
# SDLfilter

<details>

* Version: 2.0.1
* GitHub: https://github.com/TakahiroShimada/SDLfilter
* Source code: https://github.com/cran/SDLfilter
* Date/Publication: 2020-07-05 06:10:05 UTC
* Number of recursive dependencies: 123

Run `cloud_details(, "SDLfilter")` for more info

</details>

## In both

*   checking whether package ‘SDLfilter’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/SDLfilter/new/SDLfilter.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘SDLfilter’ ...
** package ‘SDLfilter’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘png’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘SDLfilter’
* removing ‘/tmp/workdir/SDLfilter/new/SDLfilter.Rcheck/SDLfilter’


```
### CRAN

```
* installing *source* package ‘SDLfilter’ ...
** package ‘SDLfilter’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘png’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘SDLfilter’
* removing ‘/tmp/workdir/SDLfilter/old/SDLfilter.Rcheck/SDLfilter’


```
# SEERaBomb

<details>

* Version: 2019.2
* GitHub: NA
* Source code: https://github.com/cran/SEERaBomb
* Date/Publication: 2019-12-12 18:50:03 UTC
* Number of recursive dependencies: 164

Run `cloud_details(, "SEERaBomb")` for more info

</details>

## In both

*   checking whether package ‘SEERaBomb’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/SEERaBomb/new/SEERaBomb.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘SEERaBomb’ ...
** package ‘SEERaBomb’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
gcc -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c SEERaBomb_init.c -o SEERaBomb_init.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c fillPYM.cpp -o fillPYM.o
g++ -std=gnu++11 -shared -L/opt/R/4.0.3/lib/R/lib -L/usr/local/lib -o SEERaBomb.so RcppExports.o SEERaBomb_init.o fillPYM.o -L/opt/R/4.0.3/lib/R/lib -lR
installing to /tmp/workdir/SEERaBomb/new/SEERaBomb.Rcheck/00LOCK-SEERaBomb/00new/SEERaBomb/libs
** R
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘demography’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘MatrixModels’
Error: package ‘demography’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘SEERaBomb’
* removing ‘/tmp/workdir/SEERaBomb/new/SEERaBomb.Rcheck/SEERaBomb’


```
### CRAN

```
* installing *source* package ‘SEERaBomb’ ...
** package ‘SEERaBomb’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
gcc -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c SEERaBomb_init.c -o SEERaBomb_init.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c fillPYM.cpp -o fillPYM.o
g++ -std=gnu++11 -shared -L/opt/R/4.0.3/lib/R/lib -L/usr/local/lib -o SEERaBomb.so RcppExports.o SEERaBomb_init.o fillPYM.o -L/opt/R/4.0.3/lib/R/lib -lR
installing to /tmp/workdir/SEERaBomb/old/SEERaBomb.Rcheck/00LOCK-SEERaBomb/00new/SEERaBomb/libs
** R
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘demography’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘MatrixModels’
Error: package ‘demography’ could not be loaded
Execution halted
ERROR: lazy loading failed for package ‘SEERaBomb’
* removing ‘/tmp/workdir/SEERaBomb/old/SEERaBomb.Rcheck/SEERaBomb’


```
# SEIRfansy

<details>

* Version: 1.1.0
* GitHub: https://github.com/umich-biostatistics/SEIRfansy
* Source code: https://github.com/cran/SEIRfansy
* Date/Publication: 2020-11-03 08:00:02 UTC
* Number of recursive dependencies: 138

Run `cloud_details(, "SEIRfansy")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/SEIRfansy/new/SEIRfansy.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘SEIRfansy/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘SEIRfansy’ version ‘1.1.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘DescTools’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/SEIRfansy/old/SEIRfansy.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘SEIRfansy/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘SEIRfansy’ version ‘1.1.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘DescTools’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# Seurat

<details>

* Version: 4.0.0
* GitHub: https://github.com/satijalab/seurat
* Source code: https://github.com/cran/Seurat
* Date/Publication: 2021-01-30 00:00:02 UTC
* Number of recursive dependencies: 238

Run `cloud_details(, "Seurat")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/Seurat/new/Seurat.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘Seurat/DESCRIPTION’ ... OK
* this is package ‘Seurat’ version ‘4.0.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
* checking for GNU extensions in Makefiles ... OK
* checking for portable use of $(BLAS_LIBS) and $(LAPACK_LIBS) ... OK
* checking use of PKG_*FLAGS in Makefiles ... OK
* checking compiled code ... OK
* checking examples ... OK
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* DONE
Status: 2 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/Seurat/old/Seurat.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘Seurat/DESCRIPTION’ ... OK
* this is package ‘Seurat’ version ‘4.0.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
* checking for GNU extensions in Makefiles ... OK
* checking for portable use of $(BLAS_LIBS) and $(LAPACK_LIBS) ... OK
* checking use of PKG_*FLAGS in Makefiles ... OK
* checking compiled code ... OK
* checking examples ... OK
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* DONE
Status: 2 NOTEs





```
# ShinyItemAnalysis

<details>

* Version: 1.3.5
* GitHub: https://github.com/patriciamar/ShinyItemAnalysis
* Source code: https://github.com/cran/ShinyItemAnalysis
* Date/Publication: 2021-02-03 09:50:06 UTC
* Number of recursive dependencies: 137

Run `cloud_details(, "ShinyItemAnalysis")` for more info

</details>

## In both

*   checking whether package ‘ShinyItemAnalysis’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/ShinyItemAnalysis/new/ShinyItemAnalysis.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘ShinyItemAnalysis’ ...
** package ‘ShinyItemAnalysis’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘colorspace’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘ShinyItemAnalysis’
* removing ‘/tmp/workdir/ShinyItemAnalysis/new/ShinyItemAnalysis.Rcheck/ShinyItemAnalysis’


```
### CRAN

```
* installing *source* package ‘ShinyItemAnalysis’ ...
** package ‘ShinyItemAnalysis’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘colorspace’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘ShinyItemAnalysis’
* removing ‘/tmp/workdir/ShinyItemAnalysis/old/ShinyItemAnalysis.Rcheck/ShinyItemAnalysis’


```
# SUNGEO

<details>

* Version: 0.2.0
* GitHub: NA
* Source code: https://github.com/cran/SUNGEO
* Date/Publication: 2020-12-14 10:10:05 UTC
* Number of recursive dependencies: 86

Run `cloud_details(, "SUNGEO")` for more info

</details>

## In both

*   checking whether package ‘SUNGEO’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/SUNGEO/new/SUNGEO.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘SUNGEO’ ...
** package ‘SUNGEO’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘magrittr’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘SUNGEO’
* removing ‘/tmp/workdir/SUNGEO/new/SUNGEO.Rcheck/SUNGEO’


```
### CRAN

```
* installing *source* package ‘SUNGEO’ ...
** package ‘SUNGEO’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘magrittr’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘SUNGEO’
* removing ‘/tmp/workdir/SUNGEO/old/SUNGEO.Rcheck/SUNGEO’


```
# SwimmeR

<details>

* Version: 0.7.2
* GitHub: NA
* Source code: https://github.com/cran/SwimmeR
* Date/Publication: 2021-01-13 19:10:02 UTC
* Number of recursive dependencies: 66

Run `cloud_details(, "SwimmeR")` for more info

</details>

## In both

*   checking whether package ‘SwimmeR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/SwimmeR/new/SwimmeR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘SwimmeR’ ...
** package ‘SwimmeR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘R6’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘SwimmeR’
* removing ‘/tmp/workdir/SwimmeR/new/SwimmeR.Rcheck/SwimmeR’


```
### CRAN

```
* installing *source* package ‘SwimmeR’ ...
** package ‘SwimmeR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘R6’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘SwimmeR’
* removing ‘/tmp/workdir/SwimmeR/old/SwimmeR.Rcheck/SwimmeR’


```
# SWMPrExtension

<details>

* Version: 1.1.6
* GitHub: https://github.com/NOAA-OCM/SWMPrExtension
* Source code: https://github.com/cran/SWMPrExtension
* Date/Publication: 2020-08-30 15:40:03 UTC
* Number of recursive dependencies: 127

Run `cloud_details(, "SWMPrExtension")` for more info

</details>

## Error before installation

### Devel

```






```
### CRAN

```






```
# trackr

<details>

* Version: 0.10.6
* GitHub: NA
* Source code: https://github.com/cran/trackr
* Date/Publication: 2020-02-29 05:40:07 UTC
* Number of recursive dependencies: 116

Run `cloud_details(, "trackr")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/trackr/new/trackr.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘trackr/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘trackr’ version ‘0.10.6’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available:
  'histry', 'CodeDepends', 'rsolr', 'roprov'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/trackr/old/trackr.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘trackr/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘trackr’ version ‘0.10.6’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available:
  'histry', 'CodeDepends', 'rsolr', 'roprov'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# wrswoR

<details>

* Version: 1.1.1
* GitHub: https://github.com/krlmlr/wrswoR
* Source code: https://github.com/cran/wrswoR
* Date/Publication: 2020-07-26 18:20:02 UTC
* Number of recursive dependencies: 138

Run `cloud_details(, "wrswoR")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/wrswoR/new/wrswoR.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘wrswoR/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘wrswoR’ version ‘1.1.1’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking for GNU extensions in Makefiles ... OK
* checking for portable use of $(BLAS_LIBS) and $(LAPACK_LIBS) ... OK
* checking use of PKG_*FLAGS in Makefiles ... OK
* checking compiled code ... OK
* checking examples ... OK
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* DONE
Status: 1 NOTE





```
### CRAN

```
* using log directory ‘/tmp/workdir/wrswoR/old/wrswoR.Rcheck’
* using R version 4.0.3 (2020-10-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --no-build-vignettes’
* checking for file ‘wrswoR/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘wrswoR’ version ‘1.1.1’
* package encoding: UTF-8
* checking package namespace information ... OK
...
* checking for GNU extensions in Makefiles ... OK
* checking for portable use of $(BLAS_LIBS) and $(LAPACK_LIBS) ... OK
* checking use of PKG_*FLAGS in Makefiles ... OK
* checking compiled code ... OK
* checking examples ... OK
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ... OK
  Running ‘testthat.R’
* DONE
Status: 1 NOTE





```
