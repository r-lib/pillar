# rowids for line-style

    Code
      vctrs::new_data_frame(list(a = 1:3, b = letters[1:3]), class = c("line_tbl",
        "tbl"))
    Output
      # A data frame: 3 x 2
            a b    
        <int> <chr>
      =     = =    
      1     1 a    
      2     2 b    
      3     3 c    

# roman rowids

    Code
      vctrs::new_data_frame(list(a = 1:3, b = letters[1:3]), class = c("roman_tbl",
        "tbl"))
    Output
      # A data frame: 3 x 2
              a b    
          <int> <chr>
      I       1 a    
      II      2 b    
      III     3 c    

