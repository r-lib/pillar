# exponents correct in presence of NA

    Code
      format(split_decimal_bw(c(NA, 1e-05)), justify = "right")
    Output
      [1] "NA   " " 1e-5"

# output test

    Code
      pillar(add_special(10^c(-9, -6, 3, 9)), width = 10)
    Output
      <pillar>
        <dbl>
         1e-9
         1e-6
         1e+3
         1e+9
        NA   
      -Inf   
       Inf   
    Code
      pillar(add_special((10^c(3, 9, 15, 22)) * c(-1, 1)), width = 10)
    Output
      <pillar>
        <dbl>
        -1e 3
         1e 9
        -1e15
         1e22
        NA   
      -Inf   
       Inf   
    Code
      pillar(add_special(1.25 * 10^(-309:-319)), width = 10)
    Output
      NULL

