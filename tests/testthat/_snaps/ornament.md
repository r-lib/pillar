# ornament

    Code
      new_ornament(c("abc", "de"))
    Output
      <pillar_ornament>
      abc
      de 
    Code
      new_ornament(c("abc", "de"), align = "right")
    Output
      <pillar_ornament>
      abc
       de
    Code
      new_ornament(c("abc", "de"), width = 5, align = "right")
    Output
      <pillar_ornament>
        abc
         de
    Code
      format(new_ornament(c("abc", "de")))
    Output
      [1] "abc" "de "
    Code
      format(new_ornament(c("abc", "de")), width = 5)
    Output
      [1] "abc  " "de   "

# vertical

    Code
      new_vertical(c("abc", "de"))
    Output
      abc
      de

