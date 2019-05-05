do_package_checks()

if (ci_has_env("DEV_VERSIONS")) {
  get_stage("install") %>%
    add_step(step_install_github(c("r-lib/rlang", "r-lib/cli", "r-lib/crayon", "brodieG/fansi", "patperry/r-utf8", "r-lib/vctrs")))
}

if (ci_has_env("BUILD_PKGDOWN") && ci_get_branch() == "master") {
  # Need dev version of {vctrs}: https://github.com/r-lib/vctrs/pull/314
  get_stage("install") %>%
    add_step(step_install_github("r-lib/vctrs"))

  # pkgdown documentation can be built optionally. Other example criteria:
  # - `inherits(ci(), "TravisCI")`: Only for Travis CI
  # - `ci()$is_tag()`: Only for tags, not for branches
  # - `Sys.getenv("BUILD_PKGDOWN") != ""`: If the env var "BUILD_PKGDOWN" is set
  # - `Sys.getenv("TRAVIS_EVENT_TYPE") == "cron"`: Only for Travis cron jobs
  get_stage("install") %>%
    add_step(step_install_github("tidyverse/tidytemplate"))

  do_pkgdown()
}
