# output test

    Code
      pillar(add_special(as.POSIXct("2017-07-28 18:04:35 +0200")))
    Output
      <pillar>
      <dttm>          
      2017-07-28 18:04
      NA              
    Code
      pillar(add_special(as.POSIXlt("2017-07-28 18:04:35 +0200")))
    Output
      <pillar>
      <dttm>          
      2017-07-28 18:04
      NA              

---

    Code
      pillar(add_special(as.POSIXlt("2017-07-28 18:04:35 +0200")))
    Output
      <pillar>
      <dttm>          
      2017-07-28 18:04
      NA              

---

    Code
      pillar(add_special(as.difftime(8:11, units = "secs")))
    Output
      <pillar>
      <drtn> 
       8 secs
       9 secs
      10 secs
      11 secs
      NA secs

