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

# ctl_new_pillar_list()

    Code
      ctl_new_pillar_list(new_tbl(), 1:3, width = 20, title = "a")
    Output
      [[1]]
      <pillar>
          a
      <int>
          1
          2
          3
      
      attr(,"remaining_width")
      [1] 14
      attr(,"simple")
      [1] TRUE
    Code
      ctl_new_pillar_list(new_tbl(), trees[1:3, ], width = 20, title = "a")
    Output
      [[1]]
      <pillar>
      a$Girth
        <dbl>
          8.3
          8.6
          8.8
      
      [[2]]
      <pillar>
      $Height
        <dbl>
           70
           65
           63
      
      attr(,"extra")
      [1] "Volume"
      attr(,"remaining_width")
      [1] 4
      attr(,"simple")
      [1] FALSE
    Code
      ctl_new_pillar_list(new_tbl(), as.matrix(trees[1:3, ]), width = 20, title = "a")
    Output
      [[1]]
      <pillar>
      a[,"Girth"]
            <dbl>
              8.3
              8.6
              8.8
      
      attr(,"extra")
      [1] 2 3
      attr(,"remaining_width")
      [1] 8
      attr(,"simple")
      [1] FALSE
    Code
      ctl_new_pillar_list(new_tbl(), matrix(1:6, ncol = 2), width = 20, title = "a")
    Output
      [[1]]
      <pillar>
      a[,1]
      <int>
          1
          2
          3
      
      [[2]]
      <pillar>
       [,2]
      <int>
          4
          5
          6
      
      attr(,"extra")
      integer(0)
      attr(,"remaining_width")
      [1] 8
      attr(,"simple")
      [1] FALSE
    Code
      ctl_new_pillar_list(new_tbl(), matrix(1:6, ncol = 3), width = 10, title = "a")
    Output
      [[1]]
      <pillar>
      a[,1]
      <int>
          1
          2
      
      attr(,"extra")
      [1] 2 3
      attr(,"remaining_width")
      [1] 4
      attr(,"simple")
      [1] FALSE

# ctl_new_pillar_list() for tables

    Code
      ctl_new_pillar_list(new_tbl(), Titanic, width = 20, title = "a")
    Output
      [[1]]
      <pillar>
                    a
      <table[,2,2,2]>
                0 ...
                0 ...
               35 ...
                0 ...
      
      attr(,"remaining_width")
      [1] 13
      attr(,"simple")
      [1] TRUE

