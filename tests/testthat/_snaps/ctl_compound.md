# compound pillars and multiple tiers

    Code
      options(width = 15)
      tbl_format_setup(x, width = 30)
    Output
      <pillar_tbl_format_setup>
      <tbl_format_header(setup)>
      # A data frame: 1 x 2
      <tbl_format_body(setup)>
            a
        <dbl>
      1     3
          b$x    $y
        <dbl> <dbl>
      1     1     2
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
      <tbl_format_footer(setup)>

