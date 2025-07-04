# output test

    Code
      pillar(add_special((10^(-3:4)) * c(-1, 1)))
    Output
      <pillar>
          <dbl>
         -0.001
          0.01 
         -0.1  
          1    
        -10    
        100    
      -1000    
      10000    
         NA    
       -Inf    
        Inf    
    Code
      pillar(add_special(1.23456 * 10^(-3:3)))
    Output
      <pillar>
           <dbl>
         0.00123
         0.0123 
         0.123  
         1.23   
        12.3    
       123.     
      1235.     
        NA      
      -Inf      
       Inf      

---

    Code
      pillar(add_special((10^(c(-2:4, 0L))) * c(-1, 1)))
    Output
      <pillar>
          <dbl>
          -0.01
           0.1 
          -1   
          10   
        -100   
        1000   
      -10000   
           1   
          NA   
        -Inf   
         Inf   

---

    Code
      pillar(add_special((10^(0:-5)) * c(-1, 1)), width = 20)
    Output
      <pillar>
           <dbl>
        -1      
         0.1    
        -0.01   
         0.001  
        -0.0001 
         0.00001
        NA      
      -Inf      
       Inf      

---

    Code
      pillar(add_special((10^(4:-4)) + 1e-06), width = 20)
    Output
      <pillar>
             <dbl>
      10000.      
       1000.      
        100.      
         10.0     
          1.00    
          0.100   
          0.0100  
          0.00100 
          0.000101
         NA       
       -Inf       
        Inf       

# 9.99...95 (tidyverse/tibble#1648)

    Code
      num(9.995, sigfig = 3)
    Output
      <pillar_num:3[1]>
      [1] 9.1
    Code
      num(9.999995, sigfig = 6)
    Output
      <pillar_num:6[1]>
      [1] 10.0000
    Code
      num(9.9999995, sigfig = 7)
    Output
      <pillar_num:7[1]>
      [1] 10.00000
    Code
      num(9.99999999995, sigfig = 11)
    Output
      <pillar_num:11[1]>
      [1] 10.000000000
    Code
      num(9.99999999999995, sigfig = 14)
    Output
      <pillar_num:14[1]>
      [1] 1.0000000000000e1
    Code
      num(10, sigfig = 16)
    Output
      <pillar_num:16[1]>
      [1] 10
    Code
      num(10, sigfig = 16)
    Output
      <pillar_num:16[1]>
      [1] 10

