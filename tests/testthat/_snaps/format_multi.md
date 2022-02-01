# sanity check (1)

    Code
      cli::num_ansi_colors()
    Output
      [1] 1
    Code
      has_color()
    Output
      [1] FALSE
    Code
      num_colors()
    Output
      [1] 1
    Code
      style_na("NA")
    Output
      [1] "NA"

# output test

    Code
      colonnade(x, width = 4)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Code
      colonnade(x, width = 5)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Code
      colonnade(x, width = 6)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Code
      colonnade(x, width = 7)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        colu~
        <dbl>
      1  1.23
      2  2.23
      3  3.23
    Code
      colonnade(x, width = 8)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        colum~
         <dbl>
      1   1.23
      2   2.23
      3   3.23
    Code
      colonnade(x, width = 9)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column~
          <dbl>
      1    1.23
      2    2.23
      3    3.23
    Code
      colonnade(x, width = 10)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_~
           <dbl>
      1     1.23
      2     2.23
      3     3.23
    Code
      colonnade(x, width = 11)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_z~
            <dbl>
      1      1.23
      2      2.23
      3      3.23
    Code
      colonnade(x, width = 12)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_ze~
             <dbl>
      1       1.23
      2       2.23
      3       3.23
    Code
      colonnade(x, width = 13)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zer~
              <dbl>
      1        1.23
      2        2.23
      3        3.23
    Code
      colonnade(x, width = 14)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zero~
               <dbl>
      1         1.23
      2         2.23
      3         3.23
    Code
      colonnade(x, width = 15)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zero_~
                <dbl>
      1          1.23
      2          2.23
      3          3.23
    Code
      colonnade(x, width = 16)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zero_o~
                 <dbl>
      1           1.23
      2           2.23
      3           3.23
    Code
      colonnade(x, width = 17)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zero_one
                  <dbl>
      1            1.23
      2            2.23
      3            3.23
    Code
      colonnade(x, width = 18)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zero_one
                  <dbl>
      1            1.23
      2            2.23
      3            3.23
    Code
      colonnade(x, width = 19)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zero_one
                  <dbl>
      1            1.23
      2            2.23
      3            3.23
    Code
      colonnade(x, width = 20)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zero_one
                  <dbl>
      1            1.23
      2            2.23
      3            3.23
    Code
      colonnade(x, width = 21)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zero_one
                  <dbl>
      1            1.23
      2            2.23
      3            3.23
    Code
      colonnade(x, width = 22)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zero_one
                  <dbl>
      1            1.23
      2            2.23
      3            3.23
    Code
      colonnade(x, width = 23)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zero_one
                  <dbl>
      1            1.23
      2            2.23
      3            3.23
    Code
      colonnade(x, width = 24)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zero_one col_02
                  <dbl> <chr> 
      1            1.23 a     
      2            2.23 b     
      3            3.23 c     
    Code
      colonnade(x, width = 25)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zero_one col_02
                  <dbl> <chr> 
      1            1.23 a     
      2            2.23 b     
      3            3.23 c     
    Code
      colonnade(x, width = 26)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zero_one col_02
                  <dbl> <chr> 
      1            1.23 a     
      2            2.23 b     
      3            3.23 c     
    Code
      colonnade(x, width = 27)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zero_one col_02
                  <dbl> <chr> 
      1            1.23 a     
      2            2.23 b     
      3            3.23 c     
    Code
      colonnade(x, width = 28)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zero_one col_02
                  <dbl> <chr> 
      1            1.23 a     
      2            2.23 b     
      3            3.23 c     
    Code
      colonnade(x, width = 29)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zero_one col_02
                  <dbl> <chr> 
      1            1.23 a     
      2            2.23 b     
      3            3.23 c     
    Code
      colonnade(x, width = 30)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zero_one col_02
                  <dbl> <chr> 
      1            1.23 a     
      2            2.23 b     
      3            3.23 c     
    Code
      colonnade(x, width = 31)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zero_one col_02 col_03
                  <dbl> <chr>  <fct> 
      1            1.23 a      a     
      2            2.23 b      b     
      3            3.23 c      c     
    Code
      colonnade(x, width = 32)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zero_one col_02 col_03
                  <dbl> <chr>  <fct> 
      1            1.23 a      a     
      2            2.23 b      b     
      3            3.23 c      c     
    Code
      colonnade(x, width = 33)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zero_one col_02 col_03
                  <dbl> <chr>  <fct> 
      1            1.23 a      a     
      2            2.23 b      b     
      3            3.23 c      c     
    Code
      colonnade(x, width = 34)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zero_one col_02 col_03
                  <dbl> <chr>  <fct> 
      1            1.23 a      a     
      2            2.23 b      b     
      3            3.23 c      c     
    Code
      colonnade(x, width = 35)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zero_one col_02 col_03
                  <dbl> <chr>  <fct> 
      1            1.23 a      a     
      2            2.23 b      b     
      3            3.23 c      c     
    Code
      colonnade(x, width = 36)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zero_one col_02 col_03
                  <dbl> <chr>  <fct> 
      1            1.23 a      a     
      2            2.23 b      b     
      3            3.23 c      c     
    Code
      colonnade(x, width = 37)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zero_one col_02 col_03
                  <dbl> <chr>  <fct> 
      1            1.23 a      a     
      2            2.23 b      b     
      3            3.23 c      c     
    Code
      colonnade(x, width = 38)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zero_one col_02 col_03 col_04
                  <dbl> <chr>  <fct>  <ord> 
      1            1.23 a      a      a     
      2            2.23 b      b      b     
      3            3.23 c      c      c     
    Code
      colonnade(x, width = 39)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zero_one col_02 col_03 col_04
                  <dbl> <chr>  <fct>  <ord> 
      1            1.23 a      a      a     
      2            2.23 b      b      b     
      3            3.23 c      c      c     
    Code
      colonnade(x, width = Inf)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        column_zero_one col_02 col_03 col_04
                  <dbl> <chr>  <fct>  <ord> 
      1            1.23 a      a      a     
      2            2.23 b      b      b     
      3            3.23 c      c      c     

---

    Code
      colonnade(rep(list(paste(letters, collapse = " ")), 4), width = Inf)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        <chr>                                              
      1 a b c d e f g h i j k l m n o p q r s t u v w x y z
        <chr>                                              
      1 a b c d e f g h i j k l m n o p q r s t u v w x y z
        <chr>                                              
      1 a b c d e f g h i j k l m n o p q r s t u v w x y z
        <chr>                                              
      1 a b c d e f g h i j k l m n o p q r s t u v w x y z

---

    Code
      as_glue(extra_cols_impl(squeeze_impl(colonnade(x), width = 10)))
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
      col_02 <chr>
      col_03 <fct>
      col_04 <ord>

---

    Code
      as_glue(extra_cols_impl(squeeze_impl(colonnade(x), width = 20)))
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
      col_02 <chr>
      col_03 <fct>
      col_04 <ord>

---

    Code
      as_glue(extra_cols_impl(squeeze_impl(colonnade(x), width = 30)))
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
      col_03 <fct>
      col_04 <ord>

---

    Code
      as_glue(extra_cols_impl(squeeze_impl(colonnade(x), width = 35)))
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
      col_04 <ord>

---

    Code
      as_glue(extra_cols_impl(squeeze_impl(colonnade(x), width = 40)))
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.

# tests from tibble

    Code
      colonnade(mtcars[1:8, ], has_row_id = "*", width = 30)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
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
    Code
      colonnade(trees[1:5, ], width = 20)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        Girth Height
        <dbl>  <dbl>
      1   8.3     70
      2   8.6     65
      3   8.8     63
      4  10.5     72
      5  10.7     81
    Code
      colonnade(trees[1:3, ], width = 10)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        Girth
        <dbl>
      1   8.3
      2   8.6
      3   8.8
    Code
      colonnade(df_all, width = 30)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
            a     b c     d    
        <dbl> <int> <lgl> <chr>
      1   1       1 TRUE  a    
      2   2.5     2 FALSE b    
      3  NA      NA NA    <NA> 
    Code
      colonnade(df_all, width = 300)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
            a     b c     d     e     f          g                   h        
        <dbl> <int> <lgl> <chr> <fct> <date>     <dttm>              <list>   
      1   1       1 TRUE  a     a     2015-12-10 2015-12-09 10:51:35 <int [1]>
      2   2.5     2 FALSE b     b     2015-12-11 2015-12-09 10:51:36 <int [1]>
      3  NA      NA NA    <NA>  <NA>  NA         NA                  <int [1]>
        i         
        <list>    
      1 <list [2]>
      2 <list [1]>
      3 <list [1]>
    Code
      options(width = 70)
      colonnade(df_all, width = 300)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
            a     b c     d     e     f          g                  
        <dbl> <int> <lgl> <chr> <fct> <date>     <dttm>             
      1   1       1 TRUE  a     a     2015-12-10 2015-12-09 10:51:35
      2   2.5     2 FALSE b     b     2015-12-11 2015-12-09 10:51:36
      3  NA      NA NA    <NA>  <NA>  NA         NA                 
        h         i         
        <list>    <list>    
      1 <int [1]> <list [2]>
      2 <int [1]> <list [1]>
      3 <int [1]> <list [1]>
    Code
      options(width = 60)
      colonnade(df_all, width = 300)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
            a     b c     d     e     f         
        <dbl> <int> <lgl> <chr> <fct> <date>    
      1   1       1 TRUE  a     a     2015-12-10
      2   2.5     2 FALSE b     b     2015-12-11
      3  NA      NA NA    <NA>  <NA>  NA        
        g                   h         i         
        <dttm>              <list>    <list>    
      1 2015-12-09 10:51:35 <int [1]> <list [2]>
      2 2015-12-09 10:51:36 <int [1]> <list [1]>
      3 NA                  <int [1]> <list [1]>
    Code
      options(width = 50)
      colonnade(df_all, width = 300)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
            a     b c     d     e     f         
        <dbl> <int> <lgl> <chr> <fct> <date>    
      1   1       1 TRUE  a     a     2015-12-10
      2   2.5     2 FALSE b     b     2015-12-11
      3  NA      NA NA    <NA>  <NA>  NA        
        g                   h         i         
        <dttm>              <list>    <list>    
      1 2015-12-09 10:51:35 <int [1]> <list [2]>
      2 2015-12-09 10:51:36 <int [1]> <list [1]>
      3 NA                  <int [1]> <list [1]>
    Code
      options(width = 40)
      colonnade(df_all, width = 300)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
            a     b c     d     e    
        <dbl> <int> <lgl> <chr> <fct>
      1   1       1 TRUE  a     a    
      2   2.5     2 FALSE b     b    
      3  NA      NA NA    <NA>  <NA> 
        f          g                  
        <date>     <dttm>             
      1 2015-12-10 2015-12-09 10:51:35
      2 2015-12-11 2015-12-09 10:51:36
      3 NA         NA                 
        h         i         
        <list>    <list>    
      1 <int [1]> <list [2]>
      2 <int [1]> <list [1]>
      3 <int [1]> <list [1]>
    Code
      options(width = 30)
      colonnade(df_all, width = 300)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
            a     b c     d    
        <dbl> <int> <lgl> <chr>
      1   1       1 TRUE  a    
      2   2.5     2 FALSE b    
      3  NA      NA NA    <NA> 
        e     f         
        <fct> <date>    
      1 a     2015-12-10
      2 b     2015-12-11
      3 <NA>  NA        
        g                  
        <dttm>             
      1 2015-12-09 10:51:35
      2 2015-12-09 10:51:36
      3 NA                 
        h         i         
        <list>    <list>    
      1 <int [1]> <list [2]>
      2 <int [1]> <list [1]>
      3 <int [1]> <list [1]>
    Code
      options(width = 20)
      colonnade(df_all, width = 300)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
            a     b c    
        <dbl> <int> <lgl>
      1   1       1 TRUE 
      2   2.5     2 FALSE
      3  NA      NA NA   
        d     e    
        <chr> <fct>
      1 a     a    
      2 b     b    
      3 <NA>  <NA> 
        f         
        <date>    
      1 2015-12-10
      2 2015-12-11
      3 NA        
        g                 
        <dttm>            
      1 2015-12-09 10:51:~
      2 2015-12-09 10:51:~
      3 NA                
        h        
        <list>   
      1 <int [1]>
      2 <int [1]>
      3 <int [1]>
        i         
        <list>    
      1 <list [2]>
      2 <list [1]>
      3 <list [1]>
    Code
      list_with_ctl <- list(c("\n", "\""), factor(c("\n", "\n")))
      names(list_with_ctl) <- c("\n", "\r")
      colonnade(list_with_ctl, width = 30)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        `\n`  `\r` 
        <chr> <fct>
      1 "\n"  "\n" 
      2 "\""  "\n" 
    Code
      colonnade(list(a = c("", " ", "a ", " a")), width = 30)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        a    
        <chr>
      1 ""   
      2 " "  
      3 "a " 
      4 " a" 
    Code
      colonnade(list(`mean(x)` = 5, `var(x)` = 3), width = 30)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
        `mean(x)` `var(x)`
            <dbl>    <dbl>
      1         5        3

# NA names

    Code
      colonnade(x, width = 30)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
         `NA` <int>
        <int> <int>
      1     1     4
      2     2     5
      3     3     6

# sep argument

    Code
      colonnade(x, width = 30)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
          sep
        <int>
      1     1
      2     2
      3     3
    Code
      # dummy

# sanity check (2)

    Code
      cli::num_ansi_colors()
    Output
      [1] 1
    Code
      has_color()
    Output
      [1] FALSE
    Code
      num_colors()
    Output
      [1] 1
    Code
      style_na("NA")
    Output
      [1] "NA"

# tibble columns

    Code
      colonnade(x, width = 30)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
            a   b$c    $d
        <int> <int> <int>
      1     1     4     7
      2     2     5     8
      3     3     6     9

# tibble columns (nested)

    Code
      colonnade(x, width = 40)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
            a   b$c    $d  $e$f   $$g
        <int> <int> <int> <int> <int>
      1     1     4     7    10    13
      2     2     5     8    11    14
      3     3     6     9    12    15

# tibble columns (empty)

    Code
      colonnade(x, width = 40)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
            a   b$c    $d $e          $f
        <int> <int> <int> <df[,0]> <int>
      1     1     4     7             10
      2     2     5     8             11
      3     3     6     9             12

# matrix columns (unnamed)

    Code
      colonnade(x, width = 30)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
            a b[,1]  [,2]
        <int> <int> <int>
      1     1     4     7
      2     2     5     8
      3     3     6     9

# matrix columns (named)

    Code
      colonnade(x, width = 30)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
            a b[,"c"] [,"d"]
        <int>   <int>  <int>
      1     1       4      7
      2     2       5      8
      3     3       6      9

# matrix columns (empty)

    Code
      colonnade(x, width = 30)
    Warning <lifecycle_warning_deprecated>
      `colonnade()` was deprecated in pillar 1.7.0.
      Please use `tbl_format_setup()` instead.
    Output
            a b             c
        <int> <int[,0]> <int>
      1     1               4
      2     2               5
      3     3               6

