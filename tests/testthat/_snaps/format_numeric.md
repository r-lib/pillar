# same pillar at different widths

    Code
      pillar(v, width = 4)
    Output
      NULL
    Code
      pillar(v, width = 7)
    Output
      <pillar>
        <dbl>
        1.e-5
        1.e-2
        1 e+3
        1 e+6
    Code
      pillar(v, width = 10)
    Output
      <pillar>
           <dbl>
           1.e-5
           1.e-2
           1 e+3
           1 e+6
    Code
      pillar(v, width = 15)
    Output
      <pillar>
                <dbl>
              0.00001
              0.01   
           1000      
        1000000      
    Code
      pillar(v, width = 22)
    Output
      <pillar>
                       <dbl>
                     0.00001
                     0.01   
                  1000      
               1000000      

