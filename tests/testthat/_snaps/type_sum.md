# works with glimpse

    Code
      glimpse(new_tbl(list(foo = foo, bar = bar)))
    Output
      Rows: 3
      Columns: 2
      $ foo AsIs 2011, 2012, 2013
      $ bar SC 2011, 2012, 2013

# can override

    Code
      new_tbl(new_tbl(list(foo = foo, bar = bar)))
    Output
      # A data frame: 3 x 2
        foo   bar  
        AsIs  SC   
      1 2011  2011 
      2 2012  2012 
      3 2013  2013 

