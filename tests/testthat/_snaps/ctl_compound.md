# compound pillars and multiple tiers

    Code
      options(width = 15)
      tbl_format_setup(x, width = 30)
    Output
      <pillar_tbl_format_setup>
      <tbl_format_header(setup)>
      # A data frame: 1 x 2
      <tbl_format_body(setup)>
            a   b$x
        <dbl> <dbl>
      1     3     1
           $y
        <dbl>
      1     2
      <tbl_format_footer(setup)>
    Code
      options(width = 10)
      tbl_format_setup(x, width = 30)
    Output
      <pillar_tbl_format_setup>
      <tbl_format_header(setup)>
      # A data frame: 1 x 2
      <tbl_format_body(setup)>
            a
        <dbl>
      1     3
          b$x
        <dbl>
      1     1
           $y
        <dbl>
      1     2
      <tbl_format_footer(setup)>

# compound pillars with zero columns (#402)

    Code
      tbl_format_setup(new_tbl(list(x = 1:2, y = matrix(integer(), ncol = 0, nrow = 2))))
    Output
      <pillar_tbl_format_setup>
      <tbl_format_header(setup)>
      # A data frame: 2 x 2
      <tbl_format_body(setup)>
            x y        
        <int> <int[,0]>
      1     1          
      2     2          
      <tbl_format_footer(setup)>
    Code
      tbl_format_setup(new_tbl(list(x = 1:2, y = new_tbl(list(), n = 2L))))
    Output
      <pillar_tbl_format_setup>
      <tbl_format_header(setup)>
      # A data frame: 2 x 2
      <tbl_format_body(setup)>
            x y        
        <int> <tbl[,0]>
      1     1          
      2     2          
      <tbl_format_footer(setup)>

