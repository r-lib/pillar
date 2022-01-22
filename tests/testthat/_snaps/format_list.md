# output test

    Code
      pillar(as.list(1:3))
    Output
      <pillar>
      <list>   
      <int [1]>
      <int [1]>
      <int [1]>
    Code
      pillar(list(1:3, NULL))
    Output
      <pillar>
      <list>   
      <int [3]>
      <NULL>   
    Code
      pillar(add_special(list(1:3)))
    Output
      <pillar>
      <list>   
      <int [3]>
      <NULL>   
    Code
      pillar(list(trees), width = 10)
    Output
      <pillar>
      <list>
      <df>  

