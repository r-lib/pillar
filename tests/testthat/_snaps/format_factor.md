# output test

    Code
      pillar(factor(c(letters[1:5], NA)))
    Output
      <fct>
      a    
      b    
      c    
      d    
      e    
      <NA> 

---

    Code
      pillar(ordered(c(letters[1:5], NA)))
    Output
      <ord>
      a    
      b    
      c    
      d    
      e    
      <NA> 

---

    Code
      pillar(factor("a\nb"))
    Output
      <fct> 
      "a\nb"

