# works with glimpse

    Code
      glimpse(new_tbl(list(foo = foo, bar = bar)))
    Output
      Rows: 3
      Columns: 2
      $ foo AsIs 2011, 2012, 2013
      $ bar VeryLong 2011, 2012, 2013

# can override

    Code
      new_tbl(list(foo = foo, bar = bar))
    Output
      # A data frame: 3 x 2
        foo  bar     
        AsIs VeryLong
      1 2011 2011    
      2 2012 2012    
      3 2013 2013    
    Code
      options(width = 13)
      new_tbl(list(foo = foo, bar = bar))
    Output
      # A data
      #   frame: 3
      #   x 2
        foo  bar   
        AsIs VeryL~
      1 2011 2011  
      2 2012 2012  
      3 2013 2013  

