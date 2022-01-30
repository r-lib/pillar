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

# nanotime works (#378)

    Code
      pillar(x, width = 16)
    Output
      <pillar>
      <int64>         
      2011-12-05T08:3~
    Code
      pillar(x, width = 17)
    Output
      <pillar>
      <int64>          
      2011-12-05T08:30~
    Code
      pillar(x, width = 18)
    Output
      <pillar>
      <int64>           
      2011-12-05T08:30:~
    Code
      pillar(x, width = 19)
    Output
      <pillar>
      <int64>            
      2011-12-05T08:30:0~
    Code
      pillar(x, width = 20)
    Output
      <pillar>
      <int64>             
      2011-12-05T08:30:00~
    Code
      pillar(x, width = 21)
    Output
      <pillar>
      <int64>              
      2011-12-05T08:30:00+~
    Code
      pillar(x, width = 22)
    Output
      <pillar>
      <int64>               
      2011-12-05T08:30:00+0~
    Code
      pillar(x, width = 23)
    Output
      <pillar>
      <int64>                
      2011-12-05T08:30:00+00~
    Code
      pillar(x, width = 24)
    Output
      <pillar>
      <int64>                 
      2011-12-05T08:30:00+00:~
    Code
      pillar(x, width = 25)
    Output
      <pillar>
      <int64>                  
      2011-12-05T08:30:00+00:00
    Code
      pillar(x, width = 26)
    Output
      <pillar>
      <int64>                  
      2011-12-05T08:30:00+00:00

