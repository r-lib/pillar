# with and without title

    Code
      pillar(add_special(10^(1:6)))
    Output
        <dbl>
           10
          100
         1000
        10000
       100000
      1000000
           NA
         -Inf
          Inf

---

    Code
      pillar(add_special(10^(1:6)), title = "crayon")
    Output
       crayon
        <dbl>
           10
          100
         1000
        10000
       100000
      1000000
           NA
         -Inf
          Inf

---

    Code
      pillar(add_special(10^(1:6)), title = "short")
    Output
        short
        <dbl>
           10
          100
         1000
        10000
       100000
      1000000
           NA
         -Inf
          Inf

---

    Code
      pillar(add_special(10^(1:6)), title = "somewhat_wider")
    Output
      somewhat_wider
               <dbl>
                  10
                 100
                1000
               10000
              100000
             1000000
                  NA
                -Inf
                 Inf

---

    Code
      pillar(add_special(10^(1:6)), title = "exactly_fifteen")
    Output
      exactly_fifteen
                <dbl>
                   10
                  100
                 1000
                10000
               100000
              1000000
                   NA
                 -Inf
                  Inf

---

    Code
      pillar(add_special(10^(1:6)), title = "absolutely_breaking_all_sensible_boundaries",
      width = 18)
    Output
      absolutely_breaki~
                   <dbl>
                      10
                     100
                    1000
                   10000
                  100000
                 1000000
                      NA
                    -Inf
                     Inf

