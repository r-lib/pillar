do_package_checks()

if (ci_has_env("DEV_VERSIONS")) {
  get_stage("install") %>%
    add_step(step_install_github(c("r-lib/rlang", "r-lib/cli", "r-lib/crayon", "brodieG/fansi", "patperry/r-utf8", "r-lib/vctrs")))
} else if (ci_has_env("MIN_VERSIONS")) {
  get_stage("install") %>%
    add_code_step(
      {
        deps <- desc::desc_get_deps()
        deps <- deps[deps$type == "Imports", ]
        is_first <- (deps$version == "*")
        all_first_packages <- lapply(deps$package[is_first], crandb::package, version = "all")
        all_first_version_details <- lapply(all_first_packages, `[[`, "versions")
        all_first_versions <- lapply(all_first_version_details, names)
        first_versions <- vapply(all_first_versions, `[[`, 1, FUN.VALUE = character(1))

        version <- rlang::rep_along(NA_character_, is_first)
        version[is_first] <- first_versions
        version[!is_first] <- gsub(">= ", "", deps$version[!is_first])

        Map(remotes::install_version, deps$package, version)
      },
      {
        remotes::install_cran("desc")
        remotes::install_github("r-hub/crandb")
      }
    )
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
