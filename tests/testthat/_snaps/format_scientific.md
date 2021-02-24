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
      NULL

