source("revdep/drake-base.R")

make_install <- function(pkg, dep_list) {
  expr(install(!!pkg, available = available, !!! dep_list))
}

get_i_lib <- function() {
  path <- "revdep/libs/cran"
  fs::dir_create(path)
  fs::path_real(path)
}

install <- function(pkg, available, ...) {
  dep_packages <- list(...)
  paths <- map_chr(dep_packages, attr, "path")
  stopifnot(all(fs::dir_exists(paths)))

  deps <- c(pkg, sort(as.character(unique(unlist(map(dep_packages, attr, "deps"))))))

  lib <- get_i_lib()

  withr::with_options(
    list(warn = 2),
    install.packages(pkg, lib = lib, dependencies = c(), available = available)
  )

  structure(
    pkg,
    path = file.path(lib, pkg),
    version = utils::packageVersion(pkg, lib),
    deps = deps
  )
}

get_deps <- function(i_pkg) {
  attr(i_pkg, "deps")
}

create_dep_list <- function(deps, base_pkgs) {
  valid_deps <- setdiff(deps, base_pkgs)
  syms(glue("i_{valid_deps}"))
}

plan_install <-
  readd(deps) %>%
  enframe() %>%
  mutate(target = glue("i_{name}")) %>%
  mutate(
    dep_list = map(value, create_dep_list, readd(base_pkgs)),
    call = map2(name, dep_list, make_install)
  ) %>%
  select(target, call) %>%
  deframe() %>%
  drake_plan(list = .)

get_old_lib <- function() {
  path <- "revdep/libs/old"
  fs::dir_create(path)
  fs::path_real(path)
}

get_new_lib <- function() {
  path <- "revdep/libs/new"
  fs::dir_create(path)
  fs::path_real(path)
}

create_lib <- function(pkg, lib) {
  fs::dir_create(lib)

  target <- fs::path(lib, pkg)
  fs::link_delete(target[fs::link_exists(target)])
  fs::link_create(fs::path(get_i_lib(), pkg), target)
  lib
}

create_new_lib <- function(old_lib, new_lib) {
  lib <- c(new_lib, old_lib)
  withr::with_libpaths(lib, action = "replace", {
    remotes::install_local(".")
  })

  lib
}

plan_base_libs <- drake_plan(
  old_lib = create_lib(c(i_pillar, get_deps(i_pillar)), get_old_lib()),
  new_lib = create_new_lib(old_lib, get_new_lib())
)

make_download <- function(pkg) {
  expr(download(!!pkg, available = available))
}

download <- function(pkg, available, dep_list) {
  dir <- fs::dir_create("revdep/download")
  dir <- fs::path_real(dir)

  withr::with_options(
    list(warn = 2),
    download.packages(pkg, dir, available = available)[, 2]
  )
}

plan_download <-
  readd(revdeps) %>%
  enframe() %>%
  transmute(
    target = glue("d_{value}"),
    call = map(value, make_download)
  ) %>%
  deframe() %>%
  drake_plan(list = .)

make_check <- function(pkg, lib, deps, first_level_deps, base_pkgs) {
  lib <- enexpr(lib)

  req_pkgs <- first_level_deps[[pkg]]
  req_pkgs_deps <- deps[c(pkg, req_pkgs)] %>% unname() %>% unlist() %>% unique()
  all_deps <- c(req_pkgs, req_pkgs_deps) %>% unique()

  i_deps <- create_dep_list(all_deps, base_pkgs)
  d_dep <- sym(glue("d_{pkg}"))

  expr(check(!!d_dep, !!lib, !!! i_deps))
}

check <- function(tarball, lib, ...) {
  pkgs <- c(...)
  check_lib <- fs::file_temp("checklib")
  create_lib(pkgs, check_lib)
  withr::with_libpaths(c(lib, check_lib), rcmdcheck::rcmdcheck(tarball))
}

plan_check <-
  readd(revdeps) %>%
  enframe() %>%
  mutate(
    old = map(value, make_check, old_lib, readd(deps), readd(first_level_deps), readd(base_pkgs)),
    new = map(value, make_check, new_lib, readd(deps), readd(first_level_deps), readd(base_pkgs))
  ) %>%
  gather(kind, call, old, new) %>%
  transmute(
    target = glue("c_{value}_{kind}"),
    call
  ) %>%
  deframe() %>%
  drake_plan(list = .)

make_compare <- function(pkg) {
  old_result <- sym(glue("c_{pkg}_old"))
  new_result <- sym(glue("c_{pkg}_new"))
  expr(compare(!!old_result, !!new_result))
}

compare <- function(old, new) {
  rcmdcheck::compare_checks(old, new)
}

plan_compare <-
  readd(revdeps) %>%
  enframe() %>%
  transmute(
    target = glue("c_{value}"),
    call = map(value, make_compare)
  ) %>%
  deframe() %>%
  drake_plan(list = .)

make_compare_all <- function(pkg) {
  check_targets <- set_names(syms(glue("c_{pkg}")), pkg)
  expr(list(!!! check_targets))
}

plan_compare_all <-
  readd(revdeps) %>%
  enframe() %>%
  summarize(
    target = "compare_all",
    call = list(make_compare_all(value))
  ) %>%
  deframe() %>%
  drake_plan(list = .)

make(
  bind_rows(plan_check, plan_compare, plan_compare_all, plan_install, plan_base_libs, plan_download, plan_deps),
  "compare_all",
  jobs = 8
)
