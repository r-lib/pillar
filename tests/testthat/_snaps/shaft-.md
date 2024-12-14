# S4 character class (tidyverse/tibble#1367)

    Code
      pillar(DBI::SQL("x"))
    Output
      <pillar>
      <SQL>
      x    

# Infinite times (#645)

    Code
      pillar(.POSIXct(Inf))
    Output
      <pillar>
      <dttm>
      Inf   

