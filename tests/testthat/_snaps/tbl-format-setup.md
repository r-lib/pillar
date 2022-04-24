# small output test

    Code
      options(width = 100)
      tbl_format_setup(x, width = 64)
    Output
      <pillar_tbl_format_setup>
      <tbl_format_header(setup)>
      # A data frame: 3 x 3
      <tbl_format_body(setup)>
        column_zero_zero `col 01`$`col 02` $`col 03` $co~1 $[,~2 col~3
                   <dbl> <chr>             <chr>     <int> <int> <ord>
      1             1.23 a                 A             1     4 a    
      2             2.23 b                 B             2     5 b    
      3             3.23 c                 C             3     6 c    
      <tbl_format_footer(setup)>
      # ... with abbreviated variable names 1: `col 01`$`col 04`,
      #   2: $, 3: `col 05`, and 1 more variable:
      #   `col 01`$`col 04`[3] <int>
    Code
      tbl_format_setup(x, width = 65)
    Output
      <pillar_tbl_format_setup>
      <tbl_format_header(setup)>
      # A data frame: 3 x 3
      <tbl_format_body(setup)>
        column_zero_zero `col 01`$`col 02` $`col 03` $col~1 $[,~2 col~3
                   <dbl> <chr>             <chr>      <int> <int> <ord>
      1             1.23 a                 A              1     4 a    
      2             2.23 b                 B              2     5 b    
      3             3.23 c                 C              3     6 c    
      <tbl_format_footer(setup)>
      # ... with abbreviated variable names 1: `col 01`$`col 04`,
      #   2: $, 3: `col 05`, and 1 more variable:
      #   `col 01`$`col 04`[3] <int>
    Code
      tbl_format_setup(x, width = 66)
    Output
      <pillar_tbl_format_setup>
      <tbl_format_header(setup)>
      # A data frame: 3 x 3
      <tbl_format_body(setup)>
        column_zero_zero `col 01`$`col 02` $`col 03` $col ~1 $[,~2 col~3
                   <dbl> <chr>             <chr>       <int> <int> <ord>
      1             1.23 a                 A               1     4 a    
      2             2.23 b                 B               2     5 b    
      3             3.23 c                 C               3     6 c    
      <tbl_format_footer(setup)>
      # ... with abbreviated variable names 1: `col 01`$`col 04`, 2: $,
      #   3: `col 05`, and 1 more variable: `col 01`$`col 04`[3] <int>

