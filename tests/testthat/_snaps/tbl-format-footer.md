# tbl_format_footer() results

    Code
      tbl_format_footer(tbl_format_setup(new_tbl(as.list(set_names(letters))), width = 80))
    Output
      [1m<tbl_format_footer(setup)>[22m
      [90m# ... with 13 more variables: n [3m[90m<chr>[39m[23m, o [3m[90m<chr>[39m[23m, p [3m[90m<chr>[39m[23m, q [3m[90m<chr>[39m[23m, r [3m[90m<chr>[39m[23m,[39m
      [90m#   s [3m[90m<chr>[39m[23m, t [3m[90m<chr>[39m[23m, u [3m[90m<chr>[39m[23m, v [3m[90m<chr>[39m[23m, w [3m[90m<chr>[39m[23m, x [3m[90m<chr>[39m[23m, y [3m[90m<chr>[39m[23m, z [3m[90m<chr>[39m[23m[39m
    Code
      tbl_format_footer(tbl_format_setup(new_tbl(as.list(set_names(letters))), width = 30))
    Output
      [1m<tbl_format_footer(setup)>[22m
      [90m# ... with 22 more variables:[39m
      [90m#   e [3m[90m<chr>[39m[23m, f [3m[90m<chr>[39m[23m,[39m
      [90m#   g [3m[90m<chr>[39m[23m, h [3m[90m<chr>[39m[23m,[39m
      [90m#   i [3m[90m<chr>[39m[23m, j [3m[90m<chr>[39m[23m,[39m
      [90m#   k [3m[90m<chr>[39m[23m, l [3m[90m<chr>[39m[23m,[39m
      [90m#   m [3m[90m<chr>[39m[23m, n [3m[90m<chr>[39m[23m,[39m
      [90m#   o [3m[90m<chr>[39m[23m, p [3m[90m<chr>[39m[23m,[39m
      [90m#   q [3m[90m<chr>[39m[23m, r [3m[90m<chr>[39m[23m,[39m
      [90m#   s [3m[90m<chr>[39m[23m, t [3m[90m<chr>[39m[23m,[39m
      [90m#   u [3m[90m<chr>[39m[23m, v [3m[90m<chr>[39m[23m,[39m
      [90m#   w [3m[90m<chr>[39m[23m, x [3m[90m<chr>[39m[23m,[39m
      [90m#   y [3m[90m<chr>[39m[23m, z [3m[90m<chr>[39m[23m[39m

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
      #   w <chr>, x <chr>, y <chr>, z <chr>, a b c d e f g h i j k l m n o
      #   p q r s t u v w x y z <dbl>

