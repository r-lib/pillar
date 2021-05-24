# integer64 output will use scientific if necessary

    Code
      pillar(add_special(x), width = 6)
    Output
      <pillar>
      <int6>
        0   
        1e11
        1e12
       NA   
    Code
      pillar(add_special(x), width = 7)
    Output
      <pillar>
      <int64>
         0   
         1e11
         1e12
        NA   
    Code
      pillar(add_special(x), width = 8)
    Output
      <pillar>
       <int64>
          0   
          1e11
          1e12
         NA   
    Code
      pillar(add_special(x), width = 9)
    Output
      <pillar>
        <int64>
           0   
           1e11
           1e12
          NA   
    Code
      pillar(add_special(x), width = 10)
    Output
      <pillar>
         <int64>
            0   
            1e11
            1e12
           NA   
    Code
      pillar(add_special(x), width = 11)
    Output
      <pillar>
          <int64>
             0   
             1e11
             1e12
            NA   
    Code
      pillar(add_special(x), width = 12)
    Output
      <pillar>
           <int64>
              0   
              1e11
              1e12
             NA   
    Code
      pillar(add_special(x), width = 13)
    Output
      <pillar>
            <int64>
                  0
       100000000001
      1000000000002
                 NA
    Code
      pillar(add_special(x), width = 14)
    Output
      <pillar>
             <int64>
                   0
        100000000001
       1000000000002
                  NA

