# sanity check (1)

    Code
      crayon::has_color()
    Output
      [1] FALSE
    Code
      crayon::num_colors()
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
      as_glue(extra_cols_impl(squeeze_impl(colonnade(x), width = 10)))
    Output
      col_02 <chr>
      col_03 <fct>
      col_04 <ord>

# NA names

    Code
      colonnade(x, width = 30)
    Output
         `NA` <int>
        <int> <int>
      1     1     4
      2     2     5
      3     3     6

# sep argument

    Code
      colonnade(x, width = 30)
    Output
          sep
        <int>
      1     1
      2     2
      3     3
    Code
      # dummy

# color, options: UTF-8 is FALSE

    Code
      crayon::has_color()
    Output
      [1] TRUE
    Code
      crayon::num_colors()
    Output
      [1] 16
    Code
      has_color()
    Output
      [1] TRUE
    Code
      num_colors()
    Output
      [1] 16
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
      style_na("NA")
    Output
      [1] "\033[31mNA\033[39m"

---

    Code
      print(xf)
    Output
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
    Code
      with_options(pillar.subtle_num = TRUE, print(xf))
    Output
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
    Code
      with_options(pillar.subtle = FALSE, print(xf))
    Output
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
    Code
      with_options(pillar.neg = FALSE, print(xf))
    Output
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
    Code
      with_options(pillar.subtle = FALSE, pillar.neg = FALSE, print(xf))
    Output
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
    Code
      with_options(pillar.bold = TRUE, print(xf))
    Output
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

---

    Code
      colonnade(list(a_very_long_column_name = 0), width = 15)
    Output
        a_very_long_~
                [3m[90m<dbl>[39m[23m
      [90m1[39m             0

# sanity check (2)

    Code
      crayon::has_color()
    Output
      [1] FALSE
    Code
      crayon::num_colors()
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
    Output
            a   b$c    $d
        <int> <int> <int>
      1     1     4     7
      2     2     5     8
      3     3     6     9

# tibble columns (nested)

    Code
      colonnade(x, width = 40)
    Output
            a   b$c    $d  $e$f   $$g
        <int> <int> <int> <int> <int>
      1     1     4     7    10    13
      2     2     5     8    11    14
      3     3     6     9    12    15

# tibble columns (empty)

    Code
      colonnade(x, width = 40)
    Output
            a   b$c    $d $e          $f
        <int> <int> <int> <df[,0]> <int>
      1     1     4     7             10
      2     2     5     8             11
      3     3     6     9             12

# matrix columns (unnamed)

    Code
      colonnade(x, width = 30)
    Output
            a b[,1]  [,2]
        <int> <int> <int>
      1     1     4     7
      2     2     5     8
      3     3     6     9

# matrix columns (named)

    Code
      colonnade(x, width = 30)
    Output
            a b[,"c"] [,"d"]
        <int>   <int>  <int>
      1     1       4      7
      2     2       5      8
      3     3       6      9

# matrix columns (empty)

    Code
      colonnade(x, width = 30)
    Output
            a b             c
        <int> <int[,0]> <int>
      1     1               4
      2     2               5
      3     3               6

