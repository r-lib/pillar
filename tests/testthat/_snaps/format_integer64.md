# integer64 output will use scientific if necessary

    Code
      pillar(add_special(x), width = 6)
    Output
       <int64>
       1.00e12
       1.00e12
       1.00e12
      NA      

---

    Code
      pillar(add_special(x), width = 7)
    Output
       <int64>
       1.00e12
       1.00e12
       1.00e12
      NA      

---

    Code
      pillar(add_special(x), width = 8)
    Output
       <int64>
       1.00e12
       1.00e12
       1.00e12
      NA      

---

    Code
      pillar(add_special(x), width = 9)
    Output
        <int64>
        1.00e12
        1.00e12
        1.00e12
       NA      

---

    Code
      pillar(add_special(x), width = 10)
    Output
         <int64>
         1.00e12
         1.00e12
         1.00e12
        NA      

---

    Code
      pillar(add_special(x), width = 11)
    Output
          <int64>
          1.00e12
          1.00e12
          1.00e12
         NA      

---

    Code
      pillar(add_special(x), width = 12)
    Output
           <int64>
           1.00e12
           1.00e12
           1.00e12
          NA      

---

    Code
      pillar(add_special(x), width = 13)
    Output
            <int64>
      1000000000001
      1000000000002
      1000000000003
                 NA

---

    Code
      pillar(add_special(x), width = 14)
    Output
             <int64>
       1000000000001
       1000000000002
       1000000000003
                  NA

