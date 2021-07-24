make_option_impl <- function(name, default, env = caller_env()) {
  option_name <- paste0(utils::packageName(env), ".", name)

  # Do not change the structure of this expression,
  # it is used in options_usage()
  getter_body <- expr(getOption(!!option_name, default = !!default))

  setter_body <- expr(
    if (local) {
      out <- !!call2("local_options", !!option_name := sym("value"), env = sym("env"))
      invisible(out[[1]])
    } else {
      out <- !!call2("options", !!option_name := sym("value"))
      invisible(out[[1]])
    }
  )

  body <- expr({
    if (missing(value)) {
      if (!missing(local)) {
        abort("Can't pass `local` argument if `value` is missing.")
      }
      !!getter_body
    } else !!setter_body
  })

  args <- pairlist2(value = , local = FALSE, env = quote(caller_env()))

  getter_name <- paste0(utils::packageName(env), "_option_get_", name)
  assign(getter_name, new_function(list(), getter_body, env = env), env)
  setter_name <- paste0(utils::packageName(env), "_option_set_", name)
  assign(setter_name, new_function(args, setter_body, env = env), env)

  new_function(args, body, env = env)
}

option_usage <- function(env = caller_env()) {
  pkg_name <- utils::packageName(env)
  options <- get(paste0(pkg_name, "_options"), env)
  first_option <- names(options)[[1]]

  first_option_getter <- get(paste0(pkg_name, "_option_get_", first_option), env)
  first_option_default <- expr_deparse(body(first_option_getter)[[3]])

  c(
    "@details",
    paste0(
      'These options can also be queried via [getOption()] and set via [options()] by prefixing them with `',
      pkg_name, '.` (the package name and a dot). Example: `', pkg_name, '_options$', first_option,
      '()` is equivalent to `getOption("', pkg_name, '.', first_option,
      '", default = ', first_option_default, ')`.'
    ),
    "@usage",
    paste0('pillar_options$bold(value, local = FALSE) # same as: options(', pkg_name, ".", first_option, " = value)"),
    "",
    paste0('pillar_options$bold()                     # similar to: getOption("', pkg_name, ".", first_option, '")')
  )
}
