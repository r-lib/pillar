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

