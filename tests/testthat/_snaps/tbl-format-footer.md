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

# overflow

    Code
      tbl_format_footer(tbl_format_setup(new_tbl(list2(a = "a", b = "b", c = "c", d = "d",
        e = "e", f = "f", g = "g", h = "h", i = "i", j = "j", k = "k", l = "l", m = "m",
        n = "n", o = "o", p = "p", q = "q", r = "r", s = "s", t = "t", u = "u", v = "v",
        w = "w", x = "x", y = "y", z = "z", a = "a", b = "b", c = "c", d = "d", e = "e",
        f = "f", g = "g", h = "h", i = "i", j = "j", k = "k", l = "l", m = "m", n = "n",
        o = "o", p = "p", q = "q", r = "r", s = "s", t = "t", u = "u", v = "v", w = "w",
        x = "x", y = "y", z = "z", a = "a", b = "b", c = "c", d = "d", e = "e", f = "f",
        g = "g", h = "h", i = "i", j = "j", k = "k", l = "l", m = "m", n = "n", o = "o",
        p = "p", q = "q", r = "r", s = "s", t = "t", u = "u", v = "v", w = "w", x = "x",
        y = "y", z = "z", a = "a", b = "b", c = "c", d = "d", e = "e", f = "f", g = "g",
        h = "h", i = "i", j = "j", k = "k", l = "l", m = "m", n = "n", o = "o", p = "p",
        q = "q", r = "r", s = "s", t = "t", u = "u", v = "v", w = "w", x = "x", y = "y",
        z = "z", a = "a", b = "b", c = "c", d = "d", e = "e", f = "f", g = "g", h = "h",
        i = "i", j = "j", k = "k", l = "l", m = "m", n = "n", o = "o", p = "p", q = "q",
        r = "r", s = "s", t = "t", u = "u", v = "v", w = "w", x = "x", y = "y", z = "z",
        a = "a", b = "b", c = "c", d = "d", e = "e", f = "f", g = "g", h = "h", i = "i",
        j = "j", k = "k", l = "l", m = "m", n = "n", o = "o", p = "p", q = "q", r = "r",
        s = "s", t = "t", u = "u", v = "v", w = "w", x = "x", y = "y", z = "z")),
      width = 70))
    Output
      <tbl_format_footer(setup)>
      # ... with 145 more variables: l <chr>, m <chr>, n <chr>, o <chr>,
      #   p <chr>, q <chr>, r <chr>, s <chr>, t <chr>, u <chr>, v <chr>,
      #   w <chr>, x <chr>, y <chr>, z <chr>, a <chr>, b <chr>, c <chr>,
      #   d <chr>, e <chr>, f <chr>, g <chr>, h <chr>, i <chr>, j <chr>,
      #   k <chr>, l.1 <chr>, m.1 <chr>, n.1 <chr>, o.1 <chr>, p.1 <chr>,
      #   q.1 <chr>, r.1 <chr>, s.1 <chr>, t.1 <chr>, u.1 <chr>, v.1 <chr>,
      #   w.1 <chr>, x.1 <chr>, y.1 <chr>, z.1 <chr>, a.1 <chr>, b.1 <chr>,
      #   c.1 <chr>, d.1 <chr>, e.1 <chr>, f.1 <chr>, g.1 <chr>, h.1 <chr>,
      #   i.1 <chr>, j.1 <chr>, k.1 <chr>, l.2 <chr>, m.2 <chr>, n.2 <chr>,
      #   o.2 <chr>, p.2 <chr>, q.2 <chr>, r.2 <chr>, s.2 <chr>, t.2 <chr>,
      #   u.2 <chr>, v.2 <chr>, w.2 <chr>, x.2 <chr>, y.2 <chr>, z.2 <chr>,
      #   a.2 <chr>, b.2 <chr>, c.2 <chr>, d.2 <chr>, e.2 <chr>, f.2 <chr>,
      #   g.2 <chr>, h.2 <chr>, i.2 <chr>, j.2 <chr>, k.2 <chr>, l.3 <chr>,
      #   m.3 <chr>, n.3 <chr>, o.3 <chr>, p.3 <chr>, q.3 <chr>, r.3 <chr>,
      #   s.3 <chr>, t.3 <chr>, u.3 <chr>, v.3 <chr>, w.3 <chr>, x.3 <chr>,
      #   y.3 <chr>, z.3 <chr>, a.3 <chr>, b.3 <chr>, c.3 <chr>, d.3 <chr>,
      #   e.3 <chr>, f.3 <chr>, g.3 <chr>, ...

