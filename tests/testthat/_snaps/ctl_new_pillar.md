# ctl_new_pillar()

    Code
      ctl_new_pillar(new_tbl(), 1:3, width = 20, title = "a")
    Output
      <pillar>
                         a
                     <int>
                         1
                         2
                         3

# ctl_new_compound_pillar()

    Code
      ctl_new_compound_pillar(new_tbl(), 1:3, width = 20, title = "a")
    Output
      <pillar>
                         a
                     <int>
                         1
                         2
                         3
    Code
      ctl_new_compound_pillar(new_tbl(), trees[1:3, ], width = 20, title = "a")
    Output
      <compound_pillar[2]>
            a$Girth
              <dbl>
                8.3
                8.6
                8.8
      ... and 1 more sub-pillars
    Code
      ctl_new_compound_pillar(new_tbl(), as.matrix(trees[1:3, ]), width = 20, title = "a")
    Output
      <compound_pillar[1]>
      a[,"Girth"]
            <dbl>
              8.3
              8.6
              8.8
    Code
      ctl_new_compound_pillar(new_tbl(), matrix(1:6, ncol = 2), width = 20, title = "a")
    Output
      <compound_pillar[2]>
          a[,1]
          <int>
              1
              2
              3
      ... and 1 more sub-pillars
    Code
      ctl_new_compound_pillar(new_tbl(), Titanic, width = 20, title = "a")
    Output
      <pillar>
                         a
                   <table>
                     0 ...
                     0 ...
                    35 ...
                     0 ...

