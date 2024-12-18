# tbl_format_body() results

    Code
      # Various column types
      tbl_format_body(tbl_format_setup(df_all, width = 30))
    Output
      <tbl_format_body(setup)>
            a     b c     d    
        <dbl> <int> <lgl> <chr>
      1   1       1 TRUE  a    
      2   2.5     2 FALSE b    
      3  NA      NA NA    <NA> 
    Code
      tbl_format_body(tbl_format_setup(df_all, width = 300))
    Output
      <tbl_format_body(setup)>
            a     b c     d     e     f          g                h         i         
        <dbl> <int> <lgl> <chr> <fct> <date>     <dttm>           <list>    <list>    
      1   1       1 TRUE  a     a     2015-12-10 2015-12-09 10:51 <int [1]> <list [2]>
      2   2.5     2 FALSE b     b     2015-12-11 2015-12-09 10:51 <int [1]> <list [1]>
      3  NA      NA NA    <NA>  <NA>  NA         NA               <int [1]> <list [1]>
    Code
      # POSIXct and POSIXlt
      df <- new_tbl(list(x = as.POSIXct("2016-01-01 12:34:56 GMT") + 1:12))
      df$y <- as.POSIXlt(df$x)
      tbl_format_body(tbl_format_setup(df, width = 60L))
    Output
      <tbl_format_body(setup)>
         x                y               
         <dttm>           <dttm>          
       1 2016-01-01 12:34 2016-01-01 12:34
       2 2016-01-01 12:34 2016-01-01 12:34
       3 2016-01-01 12:34 2016-01-01 12:34
       4 2016-01-01 12:35 2016-01-01 12:35
       5 2016-01-01 12:35 2016-01-01 12:35
       6 2016-01-01 12:35 2016-01-01 12:35
       7 2016-01-01 12:35 2016-01-01 12:35
       8 2016-01-01 12:35 2016-01-01 12:35
       9 2016-01-01 12:35 2016-01-01 12:35
      10 2016-01-01 12:35 2016-01-01 12:35
      11 2016-01-01 12:35 2016-01-01 12:35
      12 2016-01-01 12:35 2016-01-01 12:35
    Code
      # Colonnade
      ctl_colonnade(list(a = 1:3), has_row_id = FALSE)
    Output
      $body
          a
      <int>
          1
          2
          3
      
      $extra_cols
      list()
      
      $abbrev_cols
      character(0)
      
      $abbrev_col_idxs
      numeric(0)
      
    Code
      ctl_colonnade(list(a = 1:3))
    Output
      $body
            a
        <int>
      1     1
      2     2
      3     3
      
      $extra_cols
      list()
      
      $abbrev_cols
      character(0)
      
      $abbrev_col_idxs
      numeric(0)
      

# body: output for wide characters

    Code
      x <- c("成交日期", "合同录入日期")
      df <- new_tbl(setNames(list(1:3, 4:6), x))
      print(df, n = 8L, width = 60L)
    Output
      # A data frame: 3 × 2
        成交日期 合同录入日期
           <int>        <int>
      1        1            4
      2        2            5
      3        3            6

