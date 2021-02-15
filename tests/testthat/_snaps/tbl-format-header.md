# tbl_format_header() results

    Code
      tbl_format_header(tbl_format_setup(as_tbl(mtcars), width = 80))
    Output
      <tbl_format_header(setup)>
      # A data frame: 32 x 11
    Code
      tbl_format_header(tbl_format_setup(as_unknown_rows(trees), width = 30, n = 10))
    Output
      <tbl_format_header(setup)>
      # A data frame: ?? x 3
    Code
      # Narrow
      tbl_format_header(tbl_format_setup(as_tbl(mtcars), width = 10))
    Output
      <tbl_format_header(setup)>
      # A data
      #   frame:
      #   32 x
      #   11
    Code
      # Custom tbl_sum()
      tbl_format_header(tbl_format_setup(new_foo_tbl(), width = 30))
    Output
      <tbl_format_header(setup)>
      # A data frame: 0 x 0
      # foo:          bar

