# survival output

    Code
      pillar(x, width = 20)
    Output
      <pillar>
      <Surv>
        306 
        455 
       1010+
        210 
        883 
       1022+
    Code
      new_tbl(list(x = x))
    Output
      # A data frame: 6 x 1
             x
        <Surv>
      1   306 
      2   455 
      3  1010+
      4   210 
      5   883 
      6  1022+

---

    Code
      pillar(x, width = 20)
    Output
      <pillar>
      <Surv2>
        306:2
        455:2
       1010+ 
        210:2
        883:2
       1022+ 
    Code
      new_tbl(list(x = x))
    Output
      # A data frame: 6 x 1
              x
        <Surv2>
      1   306:2
      2   455:2
      3  1010+ 
      4   210:2
      5   883:2
      6  1022+ 

