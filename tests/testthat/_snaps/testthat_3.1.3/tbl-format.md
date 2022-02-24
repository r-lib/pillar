# print() output

    Code
      print(as_tbl(mtcars), width = 40, n_extra = 1)
    Condition
      Warning:
      The `n_extra` argument of `print()` is deprecated as of pillar 1.6.2.
      Please use the `max_extra_cols` argument instead.
    Output
      # A data frame: 32 x 11
           mpg   cyl  disp    hp  drat    wt
       * <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
       1  21       6  160    110  3.9   2.62
       2  21       6  160    110  3.9   2.88
       3  22.8     4  108     93  3.85  2.32
       4  21.4     6  258    110  3.08  3.22
       5  18.7     8  360    175  3.15  3.44
       6  18.1     6  225    105  2.76  3.46
       7  14.3     8  360    245  3.21  3.57
       8  24.4     4  147.    62  3.69  3.19
       9  22.8     4  141.    95  3.92  3.15
      10  19.2     6  168.   123  3.92  3.44
      # ... with 22 more rows, and 5 more
      #   variable: qsec <dbl>, ...

