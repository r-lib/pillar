# format_glimpse() output test

    Code
      # # Atomic numbers
      format_glimpse(1)
    Output
      [1] "1"
    Code
      format_glimpse(1:3)
    Output
      [1] "1" "2" "3"
    Code
      format_glimpse(NA)
    Output
      [1] "NA"
    Code
      format_glimpse(TRUE)
    Output
      [1] "TRUE"
    Code
      format_glimpse(logical())
    Output
      character(0)
    Code
      # # Strings
      format_glimpse("1")
    Output
      [1] "\"1\""
    Code
      format_glimpse(letters)
    Output
       [1] "\"a\"" "\"b\"" "\"c\"" "\"d\"" "\"e\"" "\"f\"" "\"g\"" "\"h\"" "\"i\""
      [10] "\"j\"" "\"k\"" "\"l\"" "\"m\"" "\"n\"" "\"o\"" "\"p\"" "\"q\"" "\"r\""
      [19] "\"s\"" "\"t\"" "\"u\"" "\"v\"" "\"w\"" "\"x\"" "\"y\"" "\"z\""
    Code
      format_glimpse(NA_character_)
    Output
      [1] "NA"
    Code
      format_glimpse(character())
    Output
      character(0)
    Code
      # # Factors
      format_glimpse(factor(c("1", "a")))
    Output
      [1] "1" "a"
    Code
      format_glimpse(factor(c("foo", "\"bar\"")))
    Output
      [1] "foo"     "\"bar\""
    Code
      format_glimpse(factor())
    Output
      character(0)
    Code
      # Add quotes around factor levels with comma
      # so they don't appear as if they were two observations (#384)
      format_glimpse(factor(c("foo, bar", "foo", "\"bar\"")))
    Output
      [1] "\"foo, bar\""    "\"foo\""         "\"\\\"bar\\\"\""
    Code
      # # Lists
      format_glimpse(list(1:3))
    Output
      [1] "<1, 2, 3>"
    Code
      format_glimpse(as.list(1:3))
    Output
      [1] "1" "2" "3"
    Code
      format_glimpse(list(1:3, 4))
    Output
      [1] "<1, 2, 3>" "4"        
    Code
      format_glimpse(list(1:3, 4:5))
    Output
      [1] "<1, 2, 3>" "<4, 5>"   
    Code
      format_glimpse(list())
    Output
      [1] "list()"
    Code
      format_glimpse(list(list()))
    Output
      [1] "[]"
    Code
      format_glimpse(list(character()))
    Output
      [1] "<>"
    Code
      format_glimpse(list(1:3, list(4)))
    Output
      [1] "<1, 2, 3>" "[4]"      
    Code
      format_glimpse(list(1:3, list(4:5)))
    Output
      [1] "<1, 2, 3>" "[<4, 5>]" 

# output test for glimpse()

    Code
      glimpse(as_tbl(mtcars), width = 70L)
    Output
      Rows: 32
    Error <simpleError>
      replacement element 1 has 23 rows, need 32
    Code
      glimpse(as_tbl(iris), width = 70L)
    Output
      Rows: 150
    Error <simpleError>
      replacement element 1 has 23 rows, need 150
    Code
      # No columns
      glimpse(as_tbl(iris[integer()]), width = 70L)
    Output
      Rows: 150
      Columns: 0
    Code
      # Non-syntactic names
      df <- tibble::tibble(`mean(x)` = 5, `var(x)` = 3)
      glimpse(df, width = 28)
    Output
      Rows: 1
      Columns: 2
      $ `mean(x)` <dbl> 5
      $ `var(x)`  <dbl> 3
    Code
      glimpse(as_tbl(df_all), width = 70L)
    Output
      Rows: 3
      Columns: 9
      $ a <dbl> 1.0, 2.5, NA
      $ b <int> 1, 2, NA
      $ c <lgl> TRUE, FALSE, NA
      $ d <chr> "a", "b", NA
      $ e <fct> a, b, NA
      $ f <date> 2015-12-10, 2015-12-11, NA
      $ g <dttm> 2015-12-09 10:51:35, 2015-12-09 10:51:36, NA
      $ h <list> 1, 2, NA
      $ i <list> [1, <2, 3>], [<4, 5, 6>], [NA]
    Code
      # options(tibble.width = 50)
      withr::with_options(list(tibble.width = 50), glimpse(as_tbl(df_all)))
    Output
      Rows: 3
      Columns: 9
      $ a <dbl> 1.0, 2.5, NA
      $ b <int> 1, 2, NA
      $ c <lgl> TRUE, FALSE, NA
      $ d <chr> "a", "b", NA
      $ e <fct> a, b, NA
      $ f <date> 2015-12-10, 2015-12-11, NA
      $ g <dttm> 2015-12-09 10:51:35, 2015-12-09 10:51:~
      $ h <list> 1, 2, NA
      $ i <list> [1, <2, 3>], [<4, 5, 6>], [NA]
    Code
      # options(tibble.width = 35)
      withr::with_options(list(tibble.width = 35), glimpse(as_tbl(df_all)))
    Output
      Rows: 3
      Columns: 9
      $ a <dbl> 1.0, 2.5, NA
      $ b <int> 1, 2, NA
      $ c <lgl> TRUE, FALSE, NA
      $ d <chr> "a", "b", NA
      $ e <fct> a, b, NA
      $ f <date> 2015-12-10, 2015-12-11,~
      $ g <dttm> 2015-12-09 10:51:35, 20~
      $ h <list> 1, 2, NA
      $ i <list> [1, <2, 3>], [<4, 5, 6>~
    Code
      # non-tibble
      glimpse(5)
    Output
       num 5
    Code
      iris2 <- as_unknown_rows(iris)
      glimpse(iris2, width = 70L)
    Output
      Rows: ??
    Error <simpleError>
      replacement element 1 has 23 rows, need 150
    Code
      species <- unique(iris$Species)
      data <- unname(split(iris, iris$Species))
      nested_iris_df <- tibble::tibble(species, data)
      glimpse(nested_iris_df, width = 70L)
    Output
      Rows: 3
      Columns: 2
      $ species <fct> setosa, versicolor, virginica
      $ data    <list> [<data.frame[50 x 5]>], [<data.frame[50 x 5]>], [<da~
    Code
      data <- map(data, as_tbl)
      nested_iris_tbl <- tibble::tibble(species, data)
      glimpse(nested_iris_tbl, width = 70L)
    Output
      Rows: 3
      Columns: 2
      $ species <fct> setosa, versicolor, virginica
      $ data    <list> [<tbl[50 x 5]>], [<tbl[50 x 5]>], [<tbl[50 x 5]>]

