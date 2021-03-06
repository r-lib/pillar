# output test

    Code
      pillar(factor(c(letters[1:5], NA)))
    Output
      <pillar>
      <fct>
      a    
      b    
      c    
      d    
      e    
      <NA> 
    Code
      pillar(ordered(c(letters[1:5], NA)))
    Output
      <pillar>
      <ord>
      a    
      b    
      c    
      d    
      e    
      <NA> 
    Code
      pillar(factor("a\nb"))
    Output
      <pillar>
      <fct> 
      "a\nb"

