df_all <- pillar:::new_tbl(list(
  a = c(1, 2.5, NA),
  b = c(1:2, NA),
  c = c(T, F, NA),
  d = c("a", "b", NA),
  e = factor(c("a", "b", NA)),
  f = as.Date("2015-12-09") + c(1:2, NA),
  g = as.POSIXct("2015-12-09 10:51:34.5678 UTC") + c(1:2, NA),
  h = as.list(c(1:2, NA)),
  i = list(list(1, 2:3), list(4:6), list(NA))
))

# proffer::pprof(
#   for (i in 1:50) format(df_all)
# )

bench::mark(format(df_all), iterations = 300)
