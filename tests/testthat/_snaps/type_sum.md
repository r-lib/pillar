# works with glimpse

    Code
      glimpse(new_tbl(list(foo = foo)))
    Output
      Rows: 3
      Columns: 1
      $ foo SC 2011, 2012, 2013

# can override

    Code
      new_tbl(list(foo = foo))
    Output
      # A data frame: 3 x 1
        foo  
        SC   
      1 2011 
      2 2012 
      3 2013 

