# output test

    Code
      ctl_colonnade(rep(list(paste(letters, collapse = " ")), 4), width = Inf)
    Output
      $body
        ``                                                 
        <chr>                                              
      1 a b c d e f g h i j k l m n o p q r s t u v w x y z
        ``                                                 
        <chr>                                              
      1 a b c d e f g h i j k l m n o p q r s t u v w x y z
        ``                                                 
        <chr>                                              
      1 a b c d e f g h i j k l m n o p q r s t u v w x y z
        ``                                                 
        <chr>                                              
      1 a b c d e f g h i j k l m n o p q r s t u v w x y z
      
      $extra_cols
      named list()
      

# tests from tibble

    Code
      ctl_colonnade(mtcars[1:8, ], has_row_id = "*", width = 30)
    Output
      $body
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
      
      $extra_cols
      $extra_cols$drat
      [1] 3.90 3.90 3.85 3.08 3.15 2.76 3.21 3.69
      
      $extra_cols$wt
      [1] 2.620 2.875 2.320 3.215 3.440 3.460 3.570 3.190
      
      $extra_cols$qsec
      [1] 16.46 17.02 18.61 19.44 17.02 20.22 15.84 20.00
      
      $extra_cols$vs
      [1] 0 0 1 1 0 1 0 1
      
      $extra_cols$am
      [1] 1 1 1 0 0 0 0 0
      
      $extra_cols$gear
      [1] 4 4 4 3 3 3 3 4
      
      $extra_cols$carb
      [1] 4 4 1 1 2 1 4 2
      
      
    Code
      ctl_colonnade(iris[1:5, ], width = 30)
    Output
      $body
        Sepal.Length Sepal.Width
               <dbl>       <dbl>
      1          5.1         3.5
      2          4.9         3  
      3          4.7         3.2
      4          4.6         3.1
      5          5           3.6
      
      $extra_cols
      $extra_cols$Petal.Length
      [1] 1.4 1.4 1.3 1.5 1.4
      
      $extra_cols$Petal.Width
      [1] 0.2 0.2 0.2 0.2 0.2
      
      $extra_cols$Species
      [1] setosa setosa setosa setosa setosa
      Levels: setosa versicolor virginica
      
      
    Code
      ctl_colonnade(iris[1:3, ], width = 20)
    Output
      $body
        Sepal.Length
               <dbl>
      1          5.1
      2          4.9
      3          4.7
      
      $extra_cols
      $extra_cols$Sepal.Width
      [1] 3.5 3.0 3.2
      
      $extra_cols$Petal.Length
      [1] 1.4 1.4 1.3
      
      $extra_cols$Petal.Width
      [1] 0.2 0.2 0.2
      
      $extra_cols$Species
      [1] setosa setosa setosa
      Levels: setosa versicolor virginica
      
      
    Code
      ctl_colonnade(df_all, width = 30)
    Output
      $body
            a     b c     d    
        <dbl> <int> <lgl> <chr>
      1   1       1 TRUE  a    
      2   2.5     2 FALSE b    
      3  NA      NA NA    <NA> 
      
      $extra_cols
      $extra_cols$e
      [1] a    b    <NA>
      Levels: a b
      
      $extra_cols$f
      [1] "2015-12-10" "2015-12-11" NA          
      
      $extra_cols$g
      [1] "2015-12-09 10:51:35 UTC" "2015-12-09 10:51:36 UTC"
      [3] NA                       
      
      $extra_cols$h
      $extra_cols$h[[1]]
      [1] 1
      
      $extra_cols$h[[2]]
      [1] 2
      
      $extra_cols$h[[3]]
      [1] NA
      
      
      $extra_cols$i
      $extra_cols$i[[1]]
      $extra_cols$i[[1]][[1]]
      [1] 1
      
      $extra_cols$i[[1]][[2]]
      [1] 2 3
      
      
      $extra_cols$i[[2]]
      $extra_cols$i[[2]][[1]]
      [1] 4 5 6
      
      
      $extra_cols$i[[3]]
      $extra_cols$i[[3]][[1]]
      [1] NA
      
      
      
      
    Code
      ctl_colonnade(df_all, width = 300)
    Output
      $body
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
      
      $extra_cols
      named list()
      
    Code
      options(width = 70)
      ctl_colonnade(df_all, width = 300)
    Output
      $body
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
      
      $extra_cols
      named list()
      
    Code
      options(width = 60)
      ctl_colonnade(df_all, width = 300)
    Output
      $body
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
      
      $extra_cols
      named list()
      
    Code
      options(width = 50)
      ctl_colonnade(df_all, width = 300)
    Output
      $body
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
      
      $extra_cols
      named list()
      
    Code
      options(width = 40)
      ctl_colonnade(df_all, width = 300)
    Output
      $body
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
      
      $extra_cols
      named list()
      
    Code
      options(width = 30)
      ctl_colonnade(df_all, width = 300)
    Output
      $body
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
      
      $extra_cols
      named list()
      
    Code
      options(width = 20)
      ctl_colonnade(df_all, width = 300)
    Output
      $body
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
      
      $extra_cols
      $extra_cols$g
      [1] "2015-12-09 10:51:35 UTC"
      [2] "2015-12-09 10:51:36 UTC"
      [3] NA                       
      
      $extra_cols$h
      $extra_cols$h[[1]]
      [1] 1
      
      $extra_cols$h[[2]]
      [1] 2
      
      $extra_cols$h[[3]]
      [1] NA
      
      
      $extra_cols$i
      $extra_cols$i[[1]]
      $extra_cols$i[[1]][[1]]
      [1] 1
      
      $extra_cols$i[[1]][[2]]
      [1] 2 3
      
      
      $extra_cols$i[[2]]
      $extra_cols$i[[2]][[1]]
      [1] 4 5 6
      
      
      $extra_cols$i[[3]]
      $extra_cols$i[[3]][[1]]
      [1] NA
      
      
      
      
    Code
      ctl_colonnade(list(`
      ` = c("\n", "\""), `` = factor(c("\n", "\n"))), width = 30)
    Output
      $body
        `\n`  `\r` 
        <chr> <fct>
      1 "\n"  "\n" 
      2 "\""  "\n" 
      
      $extra_cols
      named list()
      
    Code
      ctl_colonnade(list(a = c("", " ", "a ", " a")), width = 30)
    Output
      $body
        a    
        <chr>
      1 ""   
      2 " "  
      3 "a " 
      4 " a" 
      
      $extra_cols
      named list()
      
    Code
      ctl_colonnade(list(`mean(x)` = 5, `var(x)` = 3), width = 30)
    Output
      $body
        `mean(x)` `var(x)`
            <dbl>    <dbl>
      1         5        3
      
      $extra_cols
      named list()
      

# NA names

    Code
      x <- list(`NA` = 1:3, set_to_NA = 4:6)
      names(x)[[2]] <- NA_character_
      ctl_colonnade(x, width = 30)
    Output
      $body
         `NA`    ``
        <int> <int>
      1     1     4
      2     2     5
      3     3     6
      
      $extra_cols
      named list()
      

# sep argument

    Code
      ctl_colonnade(x, width = 30)
    Output
      $body
          sep
        <int>
      1     1
      2     2
      3     3
      
      $extra_cols
      named list()
      
    Code
      # dummy

# color, options: UTF-8 is FALSE

    Code
      style_na("NA")
    Output
      [1] "\033[31mNA\033[39m"
    Code
      style_neg("-1")
    Output
      [1] "\033[31m-1\033[39m"

---

    Code
      xf <- (function() ctl_colonnade(list(x = c((10^(-3:4)) * c(-1, 1), NA))))
      print(xf())
    Output
      $body
                x
            [3m[90m<dbl>[39m[23m
      [90m1[39m    -[31m0[39m[31m.[39m[31m00[39m[31m1[39m
      [90m2[39m     0.01 
      [90m3[39m    -[31m0[39m[31m.[39m[31m1[39m  
      [90m4[39m     1    
      [90m5[39m   -[31m10[39m    
      [90m6[39m   100    
      [90m7[39m -[31m[4m1[24m00[39m[31m0[39m    
      [90m8[39m [4m1[24m[4m0[24m000    
      [90m9[39m    [31mNA[39m    
      
      $extra_cols
      named list()
      
    Code
      with_options(pillar.subtle_num = TRUE, print(xf()))
    Output
      $body
                x
            [3m[90m<dbl>[39m[23m
      [90m1[39m    -[90m0[39m[90m.[39m[90m00[39m[31m1[39m
      [90m2[39m     [90m0[39m[90m.[39m[90m0[39m1 
      [90m3[39m    -[90m0[39m[90m.[39m[31m1[39m  
      [90m4[39m     1    
      [90m5[39m   -[31m10[39m    
      [90m6[39m   100    
      [90m7[39m -[31m[4m1[24m00[39m[90m0[39m    
      [90m8[39m [4m1[24m[4m0[24m0[90m00[39m    
      [90m9[39m    [31mNA[39m    
      
      $extra_cols
      named list()
      
    Code
      with_options(pillar.subtle = FALSE, print(xf()))
    Output
      $body
                x
            [3m<dbl>[23m
      1    -[31m0[39m[31m.[39m[31m00[39m[31m1[39m
      2     0.01 
      3    -[31m0[39m[31m.[39m[31m1[39m  
      4     1    
      5   -[31m10[39m    
      6   100    
      7 -[31m[4m1[24m00[39m[31m0[39m    
      8 [4m1[24m[4m0[24m000    
      9    [31mNA[39m    
      
      $extra_cols
      named list()
      
    Code
      with_options(pillar.neg = FALSE, print(xf()))
    Output
      $body
                x
            [3m[90m<dbl>[39m[23m
      [90m1[39m    -0.001
      [90m2[39m     0.01 
      [90m3[39m    -0.1  
      [90m4[39m     1    
      [90m5[39m   -10    
      [90m6[39m   100    
      [90m7[39m -[4m1[24m000    
      [90m8[39m [4m1[24m[4m0[24m000    
      [90m9[39m    [31mNA[39m    
      
      $extra_cols
      named list()
      
    Code
      with_options(pillar.subtle = FALSE, pillar.neg = FALSE, print(xf()))
    Output
      $body
                x
            [3m<dbl>[23m
      1    -0.001
      2     0.01 
      3    -0.1  
      4     1    
      5   -10    
      6   100    
      7 -[4m1[24m000    
      8 [4m1[24m[4m0[24m000    
      9    [31mNA[39m    
      
      $extra_cols
      named list()
      
    Code
      with_options(pillar.bold = TRUE, print(xf()))
    Output
      $body
                [1mx[22m
            [3m[90m<dbl>[39m[23m
      [90m1[39m    -[31m0[39m[31m.[39m[31m00[39m[31m1[39m
      [90m2[39m     0.01 
      [90m3[39m    -[31m0[39m[31m.[39m[31m1[39m  
      [90m4[39m     1    
      [90m5[39m   -[31m10[39m    
      [90m6[39m   100    
      [90m7[39m -[31m[4m1[24m00[39m[31m0[39m    
      [90m8[39m [4m1[24m[4m0[24m000    
      [90m9[39m    [31mNA[39m    
      
      $extra_cols
      named list()
      

---

    Code
      ctl_colonnade(list(a_very_long_column_name = 0), width = 20)
    Output
      $body
        a_very_long_colum~
                     [3m[90m<dbl>[39m[23m
      [90m1[39m                  0
      
      $extra_cols
      named list()
      

# tibble columns

    Code
      ctl_colonnade(x, width = 30)
    Output
      $body
            a   b$c    $d
        <int> <int> <int>
      1     1     4     7
      2     2     5     8
      3     3     6     9
      
      $extra_cols
      named list()
      

# tibble columns (nested)

    Code
      ctl_colonnade(x, width = 40)
    Output
      $body
            a   b$c    $d  $e$f   $$g
        <int> <int> <int> <int> <int>
      1     1     4     7    10    13
      2     2     5     8    11    14
      3     3     6     9    12    15
      
      $extra_cols
      named list()
      

# tibble columns (empty)

    Code
      ctl_colonnade(x, width = 40)
    Output
      $body
            a   b$c    $d $e           c
        <int> <int> <int> <df[,0]> <int>
      1     1     4     7             10
      2     2     5     8             11
      3     3     6     9             12
      
      $extra_cols
      named list()
      

# matrix columns (unnamed)

    Code
      ctl_colonnade(x, width = 30)
    Output
      $body
            a b[,1]  [,2]
        <int> <int> <int>
      1     1     4     7
      2     2     5     8
      3     3     6     9
      
      $extra_cols
      named list()
      

# matrix columns (named)

    Code
      ctl_colonnade(x, width = 30)
    Output
      $body
            a b[,"c"] [,"d"]
        <int>   <int>  <int>
      1     1       4      7
      2     2       5      8
      3     3       6      9
      
      $extra_cols
      named list()
      

# matrix columns (empty)

    Code
      ctl_colonnade(list(a = 1:3, b = matrix(4:6, ncol = 1)[, 0], c = 4:6), width = 30)
    Output
      $body
            a b             c
        <int> <int[,0]> <int>
      1     1               4
      2     2               5
      3     3               6
      
      $extra_cols
      named list()
      

