# accept

<details>

* Version: 0.8.3
* GitHub: NA
* Source code: https://github.com/cran/accept
* Date/Publication: 2021-06-18 10:00:07 UTC
* Number of recursive dependencies: 96

Run `cloud_details(, "accept")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/accept/new/accept.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘accept/DESCRIPTION’ ... OK
* this is package ‘accept’ version ‘0.8.3’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘reldist’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/accept/old/accept.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘accept/DESCRIPTION’ ... OK
* this is package ‘accept’ version ‘0.8.3’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘reldist’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# bayesZIB

<details>

* Version: 0.0.2
* GitHub: NA
* Source code: https://github.com/cran/bayesZIB
* Date/Publication: 2021-05-26 09:50:02 UTC
* Number of recursive dependencies: 50

Run `cloud_details(, "bayesZIB")` for more info

</details>

## In both

*   checking whether package ‘bayesZIB’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/bayesZIB/new/bayesZIB.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘bayesZIB’ ...
** package ‘bayesZIB’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(x) : there is no package called ‘rstantools’
Calls: loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘bayesZIB’
* removing ‘/tmp/workdir/bayesZIB/new/bayesZIB.Rcheck/bayesZIB’


```
### CRAN

```
* installing *source* package ‘bayesZIB’ ...
** package ‘bayesZIB’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(x) : there is no package called ‘rstantools’
Calls: loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘bayesZIB’
* removing ‘/tmp/workdir/bayesZIB/old/bayesZIB.Rcheck/bayesZIB’


```
# conos

<details>

* Version: 1.4.5
* GitHub: https://github.com/kharchenkolab/conos
* Source code: https://github.com/cran/conos
* Date/Publication: 2022-01-21 09:12:56 UTC
* Number of recursive dependencies: 238

Run `cloud_details(, "conos")` for more info

</details>

## In both

*   checking whether package ‘conos’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/conos/new/conos.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘conos’ ...
** package ‘conos’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppProgress/include' -I/usr/local/include  -I"./include" -fopenmp  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.1.1/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
                 from /opt/R/4.1.1/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.1.1/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:30,
                 from /opt/R/4.1.1/lib/R/site-library/RcppEigen/include/RcppEigen.h:25,
                 from RcppExports.cpp:6:
...
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/opt/R/4.1.1/lib/R/site-library/leidenAlg/libs/leidenAlg.so':
  /rspm_builder/tmp/tmp.vYZcnqsJUt/igraph/libs/igraph.so: cannot open shared object file: No such file or directory
Calls: <Anonymous> ... namespaceImport -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘conos’
* removing ‘/tmp/workdir/conos/new/conos.Rcheck/conos’


```
### CRAN

```
* installing *source* package ‘conos’ ...
** package ‘conos’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppEigen/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppProgress/include' -I/usr/local/include  -I"./include" -fopenmp  -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from /opt/R/4.1.1/lib/R/site-library/RcppEigen/include/Eigen/Core:397,
                 from /opt/R/4.1.1/lib/R/site-library/RcppEigen/include/Eigen/Dense:1,
                 from /opt/R/4.1.1/lib/R/site-library/RcppEigen/include/RcppEigenForward.h:30,
                 from /opt/R/4.1.1/lib/R/site-library/RcppEigen/include/RcppEigen.h:25,
                 from RcppExports.cpp:6:
...
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/opt/R/4.1.1/lib/R/site-library/leidenAlg/libs/leidenAlg.so':
  /rspm_builder/tmp/tmp.vYZcnqsJUt/igraph/libs/igraph.so: cannot open shared object file: No such file or directory
Calls: <Anonymous> ... namespaceImport -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘conos’
* removing ‘/tmp/workdir/conos/old/conos.Rcheck/conos’


```
# ctsem

<details>

* Version: 3.5.4
* GitHub: https://github.com/cdriveraus/ctsem
* Source code: https://github.com/cran/ctsem
* Date/Publication: 2021-07-23 16:40:02 UTC
* Number of recursive dependencies: 125

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
"/opt/R/4.1.1/lib/R/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/ctsm.stan
DIAGNOSTIC(S) FROM PARSER:
Info: integer division implicitly rounds to integer. Found int division: d * d - d / 2
 Positive values rounded down, negative values rounded up or down in platform-dependent way.

Wrote C++ file "stan_files/ctsm.cc"
...
 2348 |     T__ log_prob(std::vector<T__>& params_r__,
      |         ^~~~~~~~
stan_files/ctsm.hpp: In member function ‘T__ model_ctsm_namespace::model_ctsm::log_prob(std::vector<T_l>&, std::vector<int>&, std::ostream*) const [with bool propto__ = false; bool jacobian__ = false; T__ = double]’:
stan_files/ctsm.hpp:2348:9: note: variable tracking size limit exceeded with ‘-fvar-tracking-assignments’, retrying without
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.1.1/lib/R/etc/Makeconf:175: stan_files/ctsm.o] Error 1
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
"/opt/R/4.1.1/lib/R/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/ctsm.stan
DIAGNOSTIC(S) FROM PARSER:
Info: integer division implicitly rounds to integer. Found int division: d * d - d / 2
 Positive values rounded down, negative values rounded up or down in platform-dependent way.

Wrote C++ file "stan_files/ctsm.cc"
...
 2348 |     T__ log_prob(std::vector<T__>& params_r__,
      |         ^~~~~~~~
stan_files/ctsm.hpp: In member function ‘T__ model_ctsm_namespace::model_ctsm::log_prob(std::vector<T_l>&, std::vector<int>&, std::ostream*) const [with bool propto__ = false; bool jacobian__ = false; T__ = double]’:
stan_files/ctsm.hpp:2348:9: note: variable tracking size limit exceeded with ‘-fvar-tracking-assignments’, retrying without
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.1.1/lib/R/etc/Makeconf:175: stan_files/ctsm.o] Error 1
rm stan_files/ctsm.cc
ERROR: compilation failed for package ‘ctsem’
* removing ‘/tmp/workdir/ctsem/old/ctsem.Rcheck/ctsem’


```
# densEstBayes

<details>

* Version: 1.0-2
* GitHub: NA
* Source code: https://github.com/cran/densEstBayes
* Date/Publication: 2021-08-19 08:40:02 UTC
* Number of recursive dependencies: 51

Run `cloud_details(, "densEstBayes")` for more info

</details>

## In both

*   checking whether package ‘densEstBayes’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/densEstBayes/new/densEstBayes.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘densEstBayes’ ...
** package ‘densEstBayes’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(x) : there is no package called ‘rstantools’
Calls: loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘densEstBayes’
* removing ‘/tmp/workdir/densEstBayes/new/densEstBayes.Rcheck/densEstBayes’


```
### CRAN

```
* installing *source* package ‘densEstBayes’ ...
** package ‘densEstBayes’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(x) : there is no package called ‘rstantools’
Calls: loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘densEstBayes’
* removing ‘/tmp/workdir/densEstBayes/old/densEstBayes.Rcheck/densEstBayes’


```
# diveR

<details>

* Version: 0.1.2
* GitHub: https://github.com/great-northern-diver/diver
* Source code: https://github.com/cran/diveR
* Date/Publication: 2021-09-28 19:40:02 UTC
* Number of recursive dependencies: 81

Run `cloud_details(, "diveR")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/diveR/new/diveR.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘diveR/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘diveR’ version ‘0.1.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available:
  'loon', 'loon.ggplot', 'zenplots', 'loon.shiny', 'loon.tourr'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/diveR/old/diveR.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘diveR/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘diveR’ version ‘0.1.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available:
  'loon', 'loon.ggplot', 'zenplots', 'loon.shiny', 'loon.tourr'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# geocmeans

<details>

* Version: 0.2.0
* GitHub: https://github.com/JeremyGelb/geocmeans
* Source code: https://github.com/cran/geocmeans
* Date/Publication: 2021-08-23 07:11:35 UTC
* Number of recursive dependencies: 203

Run `cloud_details(, "geocmeans")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/geocmeans/new/geocmeans.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘geocmeans/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘geocmeans’ version ‘0.2.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘reldist’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/geocmeans/old/geocmeans.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘geocmeans/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘geocmeans’ version ‘0.2.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘reldist’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# ImputeRobust

<details>

* Version: 1.3-1
* GitHub: NA
* Source code: https://github.com/cran/ImputeRobust
* Date/Publication: 2018-11-30 12:10:03 UTC
* Number of recursive dependencies: 53

Run `cloud_details(, "ImputeRobust")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/ImputeRobust/new/ImputeRobust.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘ImputeRobust/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘ImputeRobust’ version ‘1.3-1’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘extremevalues’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/ImputeRobust/old/ImputeRobust.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘ImputeRobust/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘ImputeRobust’ version ‘1.3-1’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘extremevalues’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# lidaRtRee

<details>

* Version: 3.1.2
* GitHub: NA
* Source code: https://github.com/cran/lidaRtRee
* Date/Publication: 2021-12-09 13:30:02 UTC
* Number of recursive dependencies: 141

Run `cloud_details(, "lidaRtRee")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/lidaRtRee/new/lidaRtRee.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘lidaRtRee/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘lidaRtRee’ version ‘3.1.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘reldist’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/lidaRtRee/old/lidaRtRee.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘lidaRtRee/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘lidaRtRee’ version ‘3.1.2’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘reldist’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# loon.ggplot

<details>

* Version: 1.3.0
* GitHub: https://github.com/great-northern-diver/loon.ggplot
* Source code: https://github.com/cran/loon.ggplot
* Date/Publication: 2021-09-28 14:00:05 UTC
* Number of recursive dependencies: 99

Run `cloud_details(, "loon.ggplot")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/loon.ggplot/new/loon.ggplot.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.ggplot/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘loon.ggplot’ version ‘1.3.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘loon’

Package suggested but not available for checking: ‘zenplots’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/loon.ggplot/old/loon.ggplot.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.ggplot/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘loon.ggplot’ version ‘1.3.0’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘loon’

Package suggested but not available for checking: ‘zenplots’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# loon.shiny

<details>

* Version: 1.0.1
* GitHub: NA
* Source code: https://github.com/cran/loon.shiny
* Date/Publication: 2021-09-27 19:40:02 UTC
* Number of recursive dependencies: 131

Run `cloud_details(, "loon.shiny")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/loon.shiny/new/loon.shiny.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.shiny/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘loon.shiny’ version ‘1.0.1’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'loon', 'loon.ggplot'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/loon.shiny/old/loon.shiny.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.shiny/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘loon.shiny’ version ‘1.0.1’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'loon', 'loon.ggplot'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# loon.tourr

<details>

* Version: 0.1.3
* GitHub: https://github.com/z267xu/loon.tourr
* Source code: https://github.com/cran/loon.tourr
* Date/Publication: 2021-10-27 14:10:05 UTC
* Number of recursive dependencies: 118

Run `cloud_details(, "loon.tourr")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/loon.tourr/new/loon.tourr.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.tourr/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘loon.tourr’ version ‘0.1.3’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'loon', 'loon.ggplot'

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/loon.tourr/old/loon.tourr.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘loon.tourr/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘loon.tourr’ version ‘0.1.3’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Packages required but not available: 'loon', 'loon.ggplot'

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
* Number of recursive dependencies: 67

Run `cloud_details(, "MarketMatching")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/MarketMatching/new/MarketMatching.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
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
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
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
# missSBM

<details>

* Version: 1.0.1
* GitHub: https://github.com/grossSBM/missSBM
* Source code: https://github.com/cran/missSBM
* Date/Publication: 2021-06-04 13:10:02 UTC
* Number of recursive dependencies: 102

Run `cloud_details(, "missSBM")` for more info

</details>

## In both

*   checking whether package ‘missSBM’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/missSBM/new/missSBM.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘missSBM’ ...
** package ‘missSBM’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++14 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/nloptr/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/nloptr/include' -I/usr/local/include   -fpic  -g -O2  -c SBM_bernoulli.cpp -o SBM_bernoulli.o
g++ -std=gnu++14 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/nloptr/include' -I/usr/local/include   -fpic  -g -O2  -c kmeans.cpp -o kmeans.o
g++ -std=gnu++14 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/nloptr/include' -I/usr/local/include   -fpic  -g -O2  -c nlopt_wrapper.cpp -o nlopt_wrapper.o
g++ -std=gnu++14 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/nloptr/include' -I/usr/local/include   -fpic  -g -O2  -c packing.cpp -o packing.o
g++ -std=gnu++14 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/nloptr/include' -I/usr/local/include   -fpic  -g -O2  -c roundProduct.cpp -o roundProduct.o
...
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
Error: package or namespace load failed for ‘missSBM’ in dyn.load(file, DLLpath = DLLpath, ...):
 unable to load shared object '/tmp/workdir/missSBM/new/missSBM.Rcheck/00LOCK-missSBM/00new/missSBM/libs/missSBM.so':
  /tmp/workdir/missSBM/new/missSBM.Rcheck/00LOCK-missSBM/00new/missSBM/libs/missSBM.so: undefined symbol: nlopt_set_min_objective
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/tmp/workdir/missSBM/new/missSBM.Rcheck/missSBM’


```
### CRAN

```
* installing *source* package ‘missSBM’ ...
** package ‘missSBM’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++14 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/nloptr/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/nloptr/include' -I/usr/local/include   -fpic  -g -O2  -c SBM_bernoulli.cpp -o SBM_bernoulli.o
g++ -std=gnu++14 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/nloptr/include' -I/usr/local/include   -fpic  -g -O2  -c kmeans.cpp -o kmeans.o
g++ -std=gnu++14 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/nloptr/include' -I/usr/local/include   -fpic  -g -O2  -c nlopt_wrapper.cpp -o nlopt_wrapper.o
g++ -std=gnu++14 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/nloptr/include' -I/usr/local/include   -fpic  -g -O2  -c packing.cpp -o packing.o
g++ -std=gnu++14 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/nloptr/include' -I/usr/local/include   -fpic  -g -O2  -c roundProduct.cpp -o roundProduct.o
...
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
Error: package or namespace load failed for ‘missSBM’ in dyn.load(file, DLLpath = DLLpath, ...):
 unable to load shared object '/tmp/workdir/missSBM/old/missSBM.Rcheck/00LOCK-missSBM/00new/missSBM/libs/missSBM.so':
  /tmp/workdir/missSBM/old/missSBM.Rcheck/00LOCK-missSBM/00new/missSBM/libs/missSBM.so: undefined symbol: nlopt_set_min_objective
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/tmp/workdir/missSBM/old/missSBM.Rcheck/missSBM’


```
# PLNmodels

<details>

* Version: 0.11.5
* GitHub: https://github.com/pln-team/PLNmodels
* Source code: https://github.com/cran/PLNmodels
* Date/Publication: 2022-01-20 22:42:49 UTC
* Number of recursive dependencies: 173

Run `cloud_details(, "PLNmodels")` for more info

</details>

## In both

*   checking whether package ‘PLNmodels’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/PLNmodels/new/PLNmodels.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘PLNmodels’ ...
** package ‘PLNmodels’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/nloptr/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/nloptr/include' -I/usr/local/include   -fpic  -g -O2  -c nlopt_wrapper.cpp -o nlopt_wrapper.o
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/nloptr/include' -I/usr/local/include   -fpic  -g -O2  -c optim_diag_cov.cpp -o optim_diag_cov.o
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/nloptr/include' -I/usr/local/include   -fpic  -g -O2  -c optim_full_cov.cpp -o optim_full_cov.o
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/nloptr/include' -I/usr/local/include   -fpic  -g -O2  -c optim_genet_cov.cpp -o optim_genet_cov.o
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/nloptr/include' -I/usr/local/include   -fpic  -g -O2  -c optim_rank_cov.cpp -o optim_rank_cov.o
...
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
Error: package or namespace load failed for ‘PLNmodels’ in dyn.load(file, DLLpath = DLLpath, ...):
 unable to load shared object '/tmp/workdir/PLNmodels/new/PLNmodels.Rcheck/00LOCK-PLNmodels/00new/PLNmodels/libs/PLNmodels.so':
  /tmp/workdir/PLNmodels/new/PLNmodels.Rcheck/00LOCK-PLNmodels/00new/PLNmodels/libs/PLNmodels.so: undefined symbol: nlopt_set_min_objective
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/tmp/workdir/PLNmodels/new/PLNmodels.Rcheck/PLNmodels’


```
### CRAN

```
* installing *source* package ‘PLNmodels’ ...
** package ‘PLNmodels’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/nloptr/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/nloptr/include' -I/usr/local/include   -fpic  -g -O2  -c nlopt_wrapper.cpp -o nlopt_wrapper.o
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/nloptr/include' -I/usr/local/include   -fpic  -g -O2  -c optim_diag_cov.cpp -o optim_diag_cov.o
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/nloptr/include' -I/usr/local/include   -fpic  -g -O2  -c optim_full_cov.cpp -o optim_full_cov.o
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/nloptr/include' -I/usr/local/include   -fpic  -g -O2  -c optim_genet_cov.cpp -o optim_genet_cov.o
g++ -std=gnu++11 -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG  -I'/opt/R/4.1.1/lib/R/site-library/Rcpp/include' -I'/opt/R/4.1.1/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.1.1/lib/R/site-library/nloptr/include' -I/usr/local/include   -fpic  -g -O2  -c optim_rank_cov.cpp -o optim_rank_cov.o
...
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
Error: package or namespace load failed for ‘PLNmodels’ in dyn.load(file, DLLpath = DLLpath, ...):
 unable to load shared object '/tmp/workdir/PLNmodels/old/PLNmodels.Rcheck/00LOCK-PLNmodels/00new/PLNmodels/libs/PLNmodels.so':
  /tmp/workdir/PLNmodels/old/PLNmodels.Rcheck/00LOCK-PLNmodels/00new/PLNmodels/libs/PLNmodels.so: undefined symbol: nlopt_set_min_objective
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/tmp/workdir/PLNmodels/old/PLNmodels.Rcheck/PLNmodels’


```
# qmix

<details>

* Version: 0.1.2.0
* GitHub: NA
* Source code: https://github.com/cran/qmix
* Date/Publication: 2019-12-13 15:10:02 UTC
* Number of recursive dependencies: 51

Run `cloud_details(, "qmix")` for more info

</details>

## In both

*   checking whether package ‘qmix’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/qmix/new/qmix.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘qmix’ ...
** package ‘qmix’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(x) : there is no package called ‘rstantools’
Calls: loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘qmix’
* removing ‘/tmp/workdir/qmix/new/qmix.Rcheck/qmix’


```
### CRAN

```
* installing *source* package ‘qmix’ ...
** package ‘qmix’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(x) : there is no package called ‘rstantools’
Calls: loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘qmix’
* removing ‘/tmp/workdir/qmix/old/qmix.Rcheck/qmix’


```
# referenceIntervals

<details>

* Version: 1.2.0
* GitHub: NA
* Source code: https://github.com/cran/referenceIntervals
* Date/Publication: 2020-04-18 05:10:03 UTC
* Number of recursive dependencies: 85

Run `cloud_details(, "referenceIntervals")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/referenceIntervals/new/referenceIntervals.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘referenceIntervals/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘referenceIntervals’ version ‘1.2.0’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘extremevalues’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/referenceIntervals/old/referenceIntervals.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘referenceIntervals/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘referenceIntervals’ version ‘1.2.0’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘extremevalues’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# SPORTSCausal

<details>

* Version: 1.0
* GitHub: NA
* Source code: https://github.com/cran/SPORTSCausal
* Date/Publication: 2021-03-30 08:10:02 UTC
* Number of recursive dependencies: 63

Run `cloud_details(, "SPORTSCausal")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/SPORTSCausal/new/SPORTSCausal.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘SPORTSCausal/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘SPORTSCausal’ version ‘1.0’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘CausalImpact’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
### CRAN

```
* using log directory ‘/tmp/workdir/SPORTSCausal/old/SPORTSCausal.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘SPORTSCausal/DESCRIPTION’ ... OK
* checking extension type ... Package
* this is package ‘SPORTSCausal’ version ‘1.0’
* checking package namespace information ... OK
* checking package dependencies ... ERROR
Package required but not available: ‘CausalImpact’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
* DONE
Status: 1 ERROR





```
# valse

<details>

* Version: 0.1-0
* GitHub: NA
* Source code: https://github.com/cran/valse
* Date/Publication: 2021-05-31 08:00:02 UTC
* Number of recursive dependencies: 53

Run `cloud_details(, "valse")` for more info

</details>

## In both

*   checking whether package ‘valse’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/valse/new/valse.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘valse’ ...
** package ‘valse’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
gcc -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c EMGLLF.c -o EMGLLF.o
gcc -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c EMGrank.c -o EMGrank.o
gcc -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c a.EMGLLF.c -o a.EMGLLF.o
gcc -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c a.EMGrank.c -o a.EMGrank.o
gcc -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c valse_init.c -o valse_init.o
Error in loadNamespace(x) : there is no package called ‘RcppGSL’
...
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
Error: package or namespace load failed for ‘valse’ in dyn.load(file, DLLpath = DLLpath, ...):
 unable to load shared object '/tmp/workdir/valse/new/valse.Rcheck/00LOCK-valse/00new/valse/libs/valse.so':
  /tmp/workdir/valse/new/valse.Rcheck/00LOCK-valse/00new/valse/libs/valse.so: undefined symbol: gsl_vector_free
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/tmp/workdir/valse/new/valse.Rcheck/valse’


```
### CRAN

```
* installing *source* package ‘valse’ ...
** package ‘valse’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
gcc -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c EMGLLF.c -o EMGLLF.o
gcc -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c EMGrank.c -o EMGrank.o
gcc -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c a.EMGLLF.c -o a.EMGLLF.o
gcc -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c a.EMGrank.c -o a.EMGrank.o
gcc -I"/opt/R/4.1.1/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c valse_init.c -o valse_init.o
Error in loadNamespace(x) : there is no package called ‘RcppGSL’
...
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
Error: package or namespace load failed for ‘valse’ in dyn.load(file, DLLpath = DLLpath, ...):
 unable to load shared object '/tmp/workdir/valse/old/valse.Rcheck/00LOCK-valse/00new/valse/libs/valse.so':
  /tmp/workdir/valse/old/valse.Rcheck/00LOCK-valse/00new/valse/libs/valse.so: undefined symbol: gsl_vector_free
Error: loading failed
Execution halted
ERROR: loading failed
* removing ‘/tmp/workdir/valse/old/valse.Rcheck/valse’


```
# vivid

<details>

* Version: 0.2.3
* GitHub: NA
* Source code: https://github.com/cran/vivid
* Date/Publication: 2021-11-20 01:30:02 UTC
* Number of recursive dependencies: 202

Run `cloud_details(, "vivid")` for more info

</details>

## Error before installation

### Devel

```
* using log directory ‘/tmp/workdir/vivid/new/vivid.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘vivid/DESCRIPTION’ ... OK
* this is package ‘vivid’ version ‘0.2.3’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
* checking tests ... OK
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘vivid.Rmd’ using ‘UTF-8’... OK
  ‘vividQStart.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 2 NOTEs





```
### CRAN

```
* using log directory ‘/tmp/workdir/vivid/old/vivid.Rcheck’
* using R version 4.1.1 (2021-08-10)
* using platform: x86_64-pc-linux-gnu (64-bit)
* using session charset: UTF-8
* using option ‘--no-manual’
* checking for file ‘vivid/DESCRIPTION’ ... OK
* this is package ‘vivid’ version ‘0.2.3’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... NOTE
...
* checking tests ... OK
  Running ‘testthat.R’
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in ‘inst/doc’ ... OK
* checking running R code from vignettes ... NONE
  ‘vivid.Rmd’ using ‘UTF-8’... OK
  ‘vividQStart.Rmd’ using ‘UTF-8’... OK
* checking re-building of vignette outputs ... OK
* DONE
Status: 2 NOTEs





```
