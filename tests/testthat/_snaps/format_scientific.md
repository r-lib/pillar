# output test

    Code
      pillar(add_special(10^c(-9, -6, 3, 9)), width = 10)
    Output
      <pillar>
           <dbl>
         1.00e-9
         1.00e-6
         1.00e+3
         1.00e+9
        NA      
      -Inf      
       Inf      

---

    Code
      pillar(add_special((10^c(3, 9, 15, 22)) * c(-1, 1)), width = 10)
    Output
      <pillar>
           <dbl>
        -1.00e 3
         1.00e 9
        -1.00e15
         1.00e22
        NA      
      -Inf      
       Inf      

---

    Code
      pillar(add_special(1.25 * 10^(-309:-319)), width = 10)
    Output
      <pillar>
             <dbl>
         1.25e-309
         1.25e-310
         1.25e-311
         1.25e-312
         1.25e-313
         1.25e-314
         1.25e-315
         1.25e-316
         1.25e-317
         1.25e-318
         1.25e-319
        NA        
      -Inf        
       Inf        

