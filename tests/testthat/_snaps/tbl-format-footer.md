# tbl_format_footer() results

    Code
      tbl_format_footer(tbl_format_setup(new_tbl(as.list(set_names(letters))), width = 80))
    Output
      [1m<tbl_format_footer(setup)>[22m
      [90m# ... with 13 more variables: n <chr>, o <chr>, p <chr>, q <chr>, r <chr>,[39m
      [90m#   s <chr>, t <chr>, u <chr>, v <chr>, w <chr>, x <chr>, y <chr>, z <chr>[39m
    Code
      tbl_format_footer(tbl_format_setup(new_tbl(as.list(set_names(letters))), width = 30))
    Output
      [1m<tbl_format_footer(setup)>[22m
      [90m# ... with 22 more variables:[39m
      [90m#   e <chr>, f <chr>,[39m
      [90m#   g <chr>, h <chr>,[39m
      [90m#   i <chr>, j <chr>,[39m
      [90m#   k <chr>, l <chr>,[39m
      [90m#   m <chr>, n <chr>,[39m
      [90m#   o <chr>, p <chr>,[39m
      [90m#   q <chr>, r <chr>,[39m
      [90m#   s <chr>, t <chr>,[39m
      [90m#   u <chr>, v <chr>,[39m
      [90m#   w <chr>, x <chr>,[39m
      [90m#   y <chr>, z <chr>[39m

# wrapping column names with spaces in the footer

    Code
      tbl_format_footer(tbl_format_setup(new_tbl(list2(a = "a", b = "b", c = "c", d = "d",
        e = "e", f = "f", g = "g", h = "h", i = "i", j = "j", k = "k", l = "l", m = "m",
        n = "n", o = "o", p = "p", q = "q", r = "r", s = "s", t = "t", u = "u", v = "v",
        w = "w", x = "x", y = "y", z = "z",
        "a b c d e f g h i j k l m n o p q r s t u v w x y z" := 2)), width = 70))
    Output
      <tbl_format_footer(setup)>
      # ... with 16 more variables: l <chr>, m <chr>, n <chr>, o <chr>,
      #   p <chr>, q <chr>, r <chr>, s <chr>, t <chr>, u <chr>, v <chr>,
      #   w <chr>, x <chr>, y <chr>, z <chr>,
      #   a b c d e f g h i j k l m n o p q r s t u v w x y z <dbl>

