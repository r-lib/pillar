# output test

    Code
      pillar(add_special(letters[1:5]))
    Output
      <pillar>
      <chr>
      a    
      b    
      c    
      d    
      e    
      <NA> 

---

    Code
      pillar(add_special(paste(letters, collapse = "")))
    Output
      <pillar>
      <chr>                     
      abcdefghijklmnopqrstuvwxyz
      <NA>                      

---

    Code
      pillar(add_special(paste(letters, collapse = "")), width = 10)
    Output
      <pillar>
      <chr>     
      abcdefghi~
      <NA>      

---

    Code
      pillar(add_special(paste(letters, collapse = "")), width = 3)
    Output
      NULL

---

    Code
      pillar(add_special(c("")), width = 5)
    Output
      <pillar>
      <chr>
      ""   
       <NA>

---

    Code
      pillar(add_special(c(" ")), width = 5)
    Output
      <pillar>
      <chr>
      " "  
       <NA>

---

    Code
      pillar(add_special(c(" a")), width = 5)
    Output
      <pillar>
      <chr>
      " a" 
       <NA>

---

    Code
      pillar(add_special(c("a ")), width = 5)
    Output
      <pillar>
      <chr>
      "a " 
       <NA>

---

    Code
      pillar(add_special(c("a b")), width = 5)
    Output
      <pillar>
      <chr>
      a b  
      <NA> 

