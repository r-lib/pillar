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
      Columns: 11
      $ mpg  <dbl> 21.0, 21.0, 22.8, 21.4, 18.7, 18.1, 14.3, 24.4, 22.8, 1~
      $ cyl  <dbl> 6, 6, 4, 6, 8, 6, 8, 4, 4, 6, 6, 8, 8, 8, 8, 8, 8, 4, 4~
      $ disp <dbl> 160.0, 160.0, 108.0, 258.0, 360.0, 225.0, 360.0, 146.7,~
      $ hp   <dbl> 110, 110, 93, 110, 175, 105, 245, 62, 95, 123, 123, 180~
      $ drat <dbl> 3.90, 3.90, 3.85, 3.08, 3.15, 2.76, 3.21, 3.69, 3.92, 3~
      $ wt   <dbl> 2.620, 2.875, 2.320, 3.215, 3.440, 3.460, 3.570, 3.190,~
      $ qsec <dbl> 16.46, 17.02, 18.61, 19.44, 17.02, 20.22, 15.84, 20.00,~
      $ vs   <dbl> 0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1~
      $ am   <dbl> 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1~
      $ gear <dbl> 4, 4, 4, 3, 3, 3, 3, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 4, 4~
      $ carb <dbl> 4, 4, 1, 1, 2, 1, 4, 2, 2, 4, 4, 3, 3, 3, 4, 4, 4, 1, 2~
    Code
      glimpse(as_tbl(iris), width = 70L)
    Output
      Rows: 150
      Columns: 5
      $ Sepal.Length <dbl> 5.1, 4.9, 4.7, 4.6, 5.0, 5.4, 4.6, 5.0, 4.4, 4.~
      $ Sepal.Width  <dbl> 3.5, 3.0, 3.2, 3.1, 3.6, 3.9, 3.4, 3.4, 2.9, 3.~
      $ Petal.Length <dbl> 1.4, 1.4, 1.3, 1.5, 1.4, 1.7, 1.4, 1.5, 1.4, 1.~
      $ Petal.Width  <dbl> 0.2, 0.2, 0.2, 0.2, 0.2, 0.4, 0.3, 0.2, 0.2, 0.~
      $ Species      <fct> setosa, setosa, setosa, setosa, setosa, setosa,~
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
      Columns: 5
      $ Sepal.Length <dbl> 5.1, 4.9, 4.7, 4.6, 5.0, 5.4, 4.6, 5.0, 4.4, 4.~
      $ Sepal.Width  <dbl> 3.5, 3.0, 3.2, 3.1, 3.6, 3.9, 3.4, 3.4, 2.9, 3.~
      $ Petal.Length <dbl> 1.4, 1.4, 1.3, 1.5, 1.4, 1.7, 1.4, 1.5, 1.4, 1.~
      $ Petal.Width  <dbl> 0.2, 0.2, 0.2, 0.2, 0.2, 0.4, 0.3, 0.2, 0.2, 0.~
      $ Species      <fct> setosa, setosa, setosa, setosa, setosa, setosa,~
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

