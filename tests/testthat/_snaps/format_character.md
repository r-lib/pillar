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

---

    Code
      pillar(add_special(c("\t")), width = 10)
    Output
      <pillar>
      <chr>     
      "\t"      
       <NA>     

---

    Code
      pillar(add_special(c("a\nb")), width = 10)
    Output
      <pillar>
      <chr>     
      "a\nb"    
       <NA>     

---

    Code
      pillar(add_special(c("a\001b")), width = 10)
    Output
      <pillar>
      <chr>     
      "a\u0001b"
       <NA>     

# output test (not on Windows)

    Code
      pillar(add_special("成交日"), title = "成交")
    Output
      <pillar>
      成交  
      <chr> 
      成交日
      <NA>  

---

    Code
      pillar(add_special("成交"), title = "成交日")
    Output
      <pillar>
      成交日
      <chr> 
      成交  
      <NA>  

---

    Code
      pillar(add_special(1L), title = "成交日")
    Output
      <pillar>
      成交日
       <int>
           1
          NA

---

    Code
      ctl_colonnade(chartype_frame(), width = 50)
    Output
         chars          desc              
         <chr>          <chr>             
       1 "\u0001\u001f" C0 control code   
       2 "\a\b\f\n\r\t" Named control code
       3 "abcdefuvwxyz" ASCII             
       4 "\u0080\u009f" C1 control code   
       5 " ¡¢£¤¥úûüýþÿ" Latin-1           
       6 "ĀāĂăĄąĆćĈĉĊċ" Unicode           
       7 "！＂＃＄％＆" Unicode wide      
       8 "\u0e00\u2029" Unicode control   
       9 "x­x​x‌x‍x‎x‏x͏x﻿x󠀁x󠀠x󠇯x" Unicode ignorable 
      10 "àáâãāa̅ăȧäảåa̋" Unicode mark      
      11 "😀😁😂😃😄💃" Emoji             
      12 "x\U0010ffffx" Unassigned        
      13 "\xfd\xfe\xff" Invalid           
      14 "\\"           Backslash         
      15 "\""           Quote             

