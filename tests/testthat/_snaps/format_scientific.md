# output test

    Code
      pillar(add_special(10^c(-9, -6, 3, 9)), width = 10)
    Output
      <pillar>
           <dbl>
           1.e-9
           1.e-6
           1.e+3
           1.e+9
          NA    
        -Inf    
         Inf    
    Code
      pillar(add_special((10^c(3, 9, 15, 22)) * c(-1, 1)), width = 10)
    Output
      <pillar>
           <dbl>
          -1.e 3
           1.e 9
          -1.e15
           1.e22
          NA    
        -Inf    
         Inf    
    Code
      pillar(add_special(1.25 * 10^(-309:-319)), width = 10)
    Output
      NULL

