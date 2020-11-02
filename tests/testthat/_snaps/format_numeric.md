# same pillar at different widths

    Code
      pillar(v, width = 4)
    Output
        <dbl>
      1.00e-9
      1.00e-6
      1.00e+3
      1.00e+9

---

    Code
      pillar(v, width = 7)
    Output
        <dbl>
      1.00e-9
      1.00e-6
      1.00e+3
      1.00e+9

---

    Code
      pillar(v, width = 10)
    Output
           <dbl>
         1.00e-9
         1.00e-6
         1.00e+3
         1.00e+9

---

    Code
      pillar(v, width = 15)
    Output
                <dbl>
              1.00e-9
              1.00e-6
              1.00e+3
              1.00e+9

---

    Code
      pillar(v, width = 22)
    Output
                       <dbl>
                 0.000000001
                 0.000001   
              1000          
        1000000000          

