# tbl_format_setup() results

    Code
      tbl_format_setup(as_tbl(mtcars), width = 80)
    Output
      <pillar_tbl_format_setup>
      <tbl_format_header(setup)>
      # A data frame: 32 x 11
      <tbl_format_body(setup)>
           mpg   cyl  disp    hp  drat    wt  qsec    vs    am  gear  carb
       * <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
       1  21       6  160    110  3.9   2.62  16.5     0     1     4     4
       2  21       6  160    110  3.9   2.88  17.0     0     1     4     4
       3  22.8     4  108     93  3.85  2.32  18.6     1     1     4     1
       4  21.4     6  258    110  3.08  3.22  19.4     1     0     3     1
       5  18.7     8  360    175  3.15  3.44  17.0     0     0     3     2
       6  18.1     6  225    105  2.76  3.46  20.2     1     0     3     1
       7  14.3     8  360    245  3.21  3.57  15.8     0     0     3     4
       8  24.4     4  147.    62  3.69  3.19  20       1     0     4     2
       9  22.8     4  141.    95  3.92  3.15  22.9     1     0     4     2
      10  19.2     6  168.   123  3.92  3.44  18.3     1     0     4     4
      <tbl_format_footer(setup)>
      # ... with 22 more rows
    Code
      tbl_format_setup(as_tbl(mtcars), width = 30, n = 8)
    Output
      <pillar_tbl_format_setup>
      <tbl_format_header(setup)>
      # A data frame: 32 x 11
      <tbl_format_body(setup)>
          mpg   cyl  disp    hp
      * <dbl> <dbl> <dbl> <dbl>
      1  21       6  160    110
      2  21       6  160    110
      3  22.8     4  108     93
      4  21.4     6  258    110
      5  18.7     8  360    175
      6  18.1     6  225    105
      7  14.3     8  360    245
      8  24.4     4  147.    62
      <tbl_format_footer(setup)>
      # ... with 24 more rows, and
      #   7 more variables:
      #   drat <dbl>, wt <dbl>,
      #   qsec <dbl>, vs <dbl>,
      #   am <dbl>, gear <dbl>,
      #   carb <dbl>
    Code
      tbl_format_setup(as_tbl(trees), width = 30, n = 100)
    Output
      <pillar_tbl_format_setup>
      <tbl_format_header(setup)>
      # A data frame: 31 x 3
      <tbl_format_body(setup)>
         Girth Height Volume
         <dbl>  <dbl>  <dbl>
       1   8.3     70   10.3
       2   8.6     65   10.3
       3   8.8     63   10.2
       4  10.5     72   16.4
       5  10.7     81   18.8
       6  10.8     83   19.7
       7  11       66   15.6
       8  11       75   18.2
       9  11.1     80   22.6
      10  11.2     75   19.9
      11  11.3     79   24.2
      12  11.4     76   21  
      13  11.4     76   21.4
      14  11.7     69   21.3
      15  12       75   19.1
      16  12.9     74   22.2
      17  12.9     85   33.8
      18  13.3     86   27.4
      19  13.7     71   25.7
      20  13.8     64   24.9
      21  14       78   34.5
      22  14.2     80   31.7
      23  14.5     74   36.3
      24  16       72   38.3
      25  16.3     77   42.6
      26  17.3     81   55.4
      27  17.5     82   55.7
      28  17.9     80   58.3
      29  18       80   51.5
      30  18       80   51  
      31  20.6     87   77  
      <tbl_format_footer(setup)>
    Code
      # Unknown rows
      tbl_format_setup(as_unknown_rows(trees[1:9, ]), width = 30, n = 10)
    Output
      <pillar_tbl_format_setup>
      <tbl_format_header(setup)>
      # A data frame: ?? x 3
      <tbl_format_body(setup)>
        Girth Height Volume
      * <dbl>  <dbl>  <dbl>
      1   8.3     70   10.3
      2   8.6     65   10.3
      3   8.8     63   10.2
      4  10.5     72   16.4
      5  10.7     81   18.8
      6  10.8     83   19.7
      7  11       66   15.6
      8  11       75   18.2
      9  11.1     80   22.6
      <tbl_format_footer(setup)>
    Code
      tbl_format_setup(as_unknown_rows(trees[1:10, ]), width = 30, n = 10)
    Output
      <pillar_tbl_format_setup>
      <tbl_format_header(setup)>
      # A data frame: ?? x 3
      <tbl_format_body(setup)>
         Girth Height Volume
       * <dbl>  <dbl>  <dbl>
       1   8.3     70   10.3
       2   8.6     65   10.3
       3   8.8     63   10.2
       4  10.5     72   16.4
       5  10.7     81   18.8
       6  10.8     83   19.7
       7  11       66   15.6
       8  11       75   18.2
       9  11.1     80   22.6
      10  11.2     75   19.9
      <tbl_format_footer(setup)>
    Code
      tbl_format_setup(as_unknown_rows(trees[1:11, ]), width = 30, n = 10)
    Output
      <pillar_tbl_format_setup>
      <tbl_format_header(setup)>
      # A data frame: ?? x 3
      <tbl_format_body(setup)>
         Girth Height Volume
       * <dbl>  <dbl>  <dbl>
       1   8.3     70   10.3
       2   8.6     65   10.3
       3   8.8     63   10.2
       4  10.5     72   16.4
       5  10.7     81   18.8
       6  10.8     83   19.7
       7  11       66   15.6
       8  11       75   18.2
       9  11.1     80   22.6
      10  11.2     75   19.9
      <tbl_format_footer(setup)>
      # ... with more rows
    Code
      # No rows
      tbl_format_setup(new_tbl(list(a = character(), b = logical())), width = 30)
    Output
      <pillar_tbl_format_setup>
      <tbl_format_header(setup)>
      # A data frame: 0 x 2
      <tbl_format_body(setup)>
      <tbl_format_footer(setup)>
      # ... with 2 variables:
      #   a <chr>, b <lgl>
    Code
      # No columns
      tbl_format_setup(as_tbl(trees[character()]), width = 30, n = 5L)
    Output
      <pillar_tbl_format_setup>
      <tbl_format_header(setup)>
      # A data frame: 31 x 0
      <tbl_format_body(setup)>
      <tbl_format_footer(setup)>
    Code
      # No rows, unknown
      tbl_format_setup(as_unknown_rows(trees[integer(), ]), width = 30, n = 5L)
    Output
      <pillar_tbl_format_setup>
      <tbl_format_header(setup)>
      # A data frame: ?? x 3
      <tbl_format_body(setup)>
      <tbl_format_footer(setup)>
      # ... with 3 variables:
      #   Girth <dbl>,
      #   Height <dbl>,
      #   Volume <dbl>
    Code
      # No columns, unknown
      tbl_format_setup(as_unknown_rows(trees[, character()]), width = 30, n = 5L)
    Output
      <pillar_tbl_format_setup>
      <tbl_format_header(setup)>
      # A data frame: ?? x 0
      <tbl_format_body(setup)>
      <tbl_format_footer(setup)>
      # ... with at least 5 rows
      #   total
    Code
      # Long table, unknown
      tbl_format_setup(as_unknown_rows(new_tbl(list(a = seq.int(10000)))), n = 5L,
      width = 30L)
    Output
      <pillar_tbl_format_setup>
      <tbl_format_header(setup)>
      # A data frame: ?? x 1
      <tbl_format_body(setup)>
            a
        <int>
      1     1
      2     2
      3     3
      4     4
      5     5
      <tbl_format_footer(setup)>
      # ... with more rows

