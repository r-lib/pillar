# integer64 output will use scientific if necessary

    Code
      pillar(add_special(x), width = 6)
    Output
      <pillar>
      <int6>
       1.e12
       1.e12
       1.e12
      NA    
    Code
      pillar(add_special(x), width = 7)
    Output
      <pillar>
      <int64>
        1.e12
        1.e12
        1.e12
       NA    
    Code
      pillar(add_special(x), width = 8)
    Output
      <pillar>
       <int64>
         1.e12
         1.e12
         1.e12
        NA    
    Code
      pillar(add_special(x), width = 9)
    Output
      <pillar>
        <int64>
          1.e12
          1.e12
          1.e12
         NA    
    Code
      pillar(add_special(x), width = 10)
    Output
      <pillar>
         <int64>
           1.e12
           1.e12
           1.e12
          NA    
    Code
      pillar(add_special(x), width = 11)
    Output
      <pillar>
          <int64>
            1.e12
            1.e12
            1.e12
           NA    
    Code
      pillar(add_special(x), width = 12)
    Output
      <pillar>
           <int64>
             1.e12
             1.e12
             1.e12
            NA    
    Code
      pillar(add_special(x), width = 13)
    Output
      <pillar>
            <int64>
      1000000000001
      1000000000002
      1000000000003
                 NA
    Code
      pillar(add_special(x), width = 14)
    Output
      <pillar>
             <int64>
       1000000000001
       1000000000002
       1000000000003
                  NA

