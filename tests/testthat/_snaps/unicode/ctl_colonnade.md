# color

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
      <pillar>
              x
          [3m[90m<dbl>[39m[23m
         -[31m0[39m[31m.[39m[31m00[39m[31m1[39m
          0.01 
         -[31m0[39m[31m.[39m[31m1[39m  
          1    
        -[31m10[39m    
        100    
      -[31m[4m1[24m00[39m[31m0[39m    
      [4m1[24m[4m0[24m000    
         [31mNA[39m    
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
      <pillar>
              x
          [3m[90m<dbl>[39m[23m
         -[90m0[39m[90m.[39m[90m00[39m[31m1[39m
          [90m0[39m[90m.[39m[90m0[39m1 
         -[90m0[39m[90m.[39m[31m1[39m  
          1    
        -[31m10[39m    
        100    
      -[31m[4m1[24m00[39m[90m0[39m    
      [4m1[24m[4m0[24m0[90m00[39m    
         [31mNA[39m    
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
      <pillar>
              x
          [3m<dbl>[23m
         -[31m0[39m[31m.[39m[31m00[39m[31m1[39m
          0.01 
         -[31m0[39m[31m.[39m[31m1[39m  
          1    
        -[31m10[39m    
        100    
      -[31m[4m1[24m00[39m[31m0[39m    
      [4m1[24m[4m0[24m000    
         [31mNA[39m    
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
      <pillar>
              x
          [3m[90m<dbl>[39m[23m
         -0.001
          0.01 
         -0.1  
          1    
        -10    
        100    
      -[4m1[24m000    
      [4m1[24m[4m0[24m000    
         [31mNA[39m    
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
      <pillar>
              x
          [3m<dbl>[23m
         -0.001
          0.01 
         -0.1  
          1    
        -10    
        100    
      -[4m1[24m000    
      [4m1[24m[4m0[24m000    
         [31mNA[39m    
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
      [1m<pillar>[22m
              [1mx[22m
          [3m[90m<dbl>[39m[23m
         -[31m0[39m[31m.[39m[31m00[39m[31m1[39m
          0.01 
         -[31m0[39m[31m.[39m[31m1[39m  
          1    
        -[31m10[39m    
        100    
      -[31m[4m1[24m00[39m[31m0[39m    
      [4m1[24m[4m0[24m000    
         [31mNA[39m    
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
      <pillar>
      a_very_long_colum…
                   [3m[90m<dbl>[39m[23m
                       0
      $body
        a_very_long_colum…
                     [3m[90m<dbl>[39m[23m
      [90m1[39m                  0
      
      $extra_cols
      named list()
      

