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

---

    Code
      pillar(list(data.frame()), width = 11)
    Output
      <pillar>
      [3m[90m<list>[39m[23m
      [90m<df>[39m  
    Code
      pillar(list(data.frame()), width = 12)
    Output
      <pillar>
      [3m[90m<list>[39m[23m      
      [90m<df [0 x 0]>[39m

