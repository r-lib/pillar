# integer output will use scientific if necessary

    Code
      pillar(add_special(x), width = 6)
    Output
      NULL
    Code
      pillar(add_special(x), width = 7)
    Output
      <pillar>
        <int>
       1.00e7
       1.00e7
       1.00e7
      NA     
    Code
      pillar(add_special(x), width = 8)
    Output
      <pillar>
         <int>
      10000001
      10000002
      10000003
            NA
    Code
      pillar(add_special(x), width = 9)
    Output
      <pillar>
         <int>
      10000001
      10000002
      10000003
            NA

