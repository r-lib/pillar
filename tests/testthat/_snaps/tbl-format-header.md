# tbl_format_header() results

    Code
      tbl_format_header(tbl_format_setup(as_tbl(mtcars), width = 80))
    Error <simpleError>
      replacement element 1 has 10 rows, need 32
    Code
      tbl_format_header(tbl_format_setup(as_unknown_rows(trees), width = 30, n = 10))
    Error <simpleError>
      replacement element 1 has 11 rows, need 31
    Code
      # Narrow
      tbl_format_header(tbl_format_setup(as_tbl(mtcars), width = 10))
    Error <simpleError>
      replacement element 1 has 10 rows, need 32
    Code
      # Custom tbl_sum()
      tbl_format_header(tbl_format_setup(new_foo_tbl(), width = 30))
    Output
      <tbl_format_header(setup)>
      # A data frame: 0 x 0
      # foo:          bar

