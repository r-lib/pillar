# output test

    Code
      glimpse(as_tbl(mtcars), width = 70L)
    Output
      Rows: 32
      Columns: 11
      $ mpg  <dbl> 21.0, 21.0, 22.8, 21.4, 18.7, 18.1, 14.3, 24.4, 22.8, ~
      $ cyl  <dbl> 6, 6, 4, 6, 8, 6, 8, 4, 4, 6, 6, 8, 8, 8, 8, 8, 8, 4, ~
      $ disp <dbl> 160.0, 160.0, 108.0, 258.0, 360.0, 225.0, 360.0, 146.7~
      $ hp   <dbl> 110, 110, 93, 110, 175, 105, 245, 62, 95, 123, 123, 18~
      $ drat <dbl> 3.90, 3.90, 3.85, 3.08, 3.15, 2.76, 3.21, 3.69, 3.92, ~
      $ wt   <dbl> 2.620, 2.875, 2.320, 3.215, 3.440, 3.460, 3.570, 3.190~
      $ qsec <dbl> 16.46, 17.02, 18.61, 19.44, 17.02, 20.22, 15.84, 20.00~
      $ vs   <dbl> 0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, ~
      $ am   <dbl> 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, ~
      $ gear <dbl> 4, 4, 4, 3, 3, 3, 3, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 4, ~
      $ carb <dbl> 4, 4, 1, 1, 2, 1, 4, 2, 2, 4, 4, 3, 3, 3, 4, 4, 4, 1, ~
    Code
      glimpse(as_tbl(iris), width = 70L)
    Output
      Rows: 150
      Columns: 5
      $ Sepal.Length <dbl> 5.1, 4.9, 4.7, 4.6, 5.0, 5.4, 4.6, 5.0, 4.4, 4~
      $ Sepal.Width  <dbl> 3.5, 3.0, 3.2, 3.1, 3.6, 3.9, 3.4, 3.4, 2.9, 3~
      $ Petal.Length <dbl> 1.4, 1.4, 1.3, 1.5, 1.4, 1.7, 1.4, 1.5, 1.4, 1~
      $ Petal.Width  <dbl> 0.2, 0.2, 0.2, 0.2, 0.2, 0.4, 0.3, 0.2, 0.2, 0~
      $ Species      <fct> setosa, setosa, setosa, setosa, setosa, setosa~
    Code
      # No columns
    Code
      glimpse(as_tbl(iris[integer()]), width = 70L)
    Output
      Rows: 150
      Columns: 0
    Code
      # Non-syntactic names
    Code
      df <- tibble::tibble(`mean(x)` = 5, `var(x)` = 3)
    Code
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
      $ h <list> [1, 2, NA]
      $ i <list> [[1, <2, 3>], [<4, 5, 6>], [NA]]
    Code
      # options(tibble.width = 50)
    Code
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
      $ g <dttm> 2015-12-09 10:51:35, 2015-12-09 10:51~
      $ h <list> [1, 2, NA]
      $ i <list> [[1, <2, 3>], [<4, 5, 6>], [NA]]
    Code
      # options(tibble.width = 35)
    Code
      withr::with_options(list(tibble.width = 35), glimpse(as_tbl(df_all)))
    Output
      Rows: 3
      Columns: 9
      $ a <dbl> 1.0, 2.5, NA
      $ b <int> 1, 2, NA
      $ c <lgl> TRUE, FALSE, NA
      $ d <chr> "a", "b", NA
      $ e <fct> a, b, NA
      $ f <date> 2015-12-10, 2015-12-11~
      $ g <dttm> 2015-12-09 10:51:35, 2~
      $ h <list> [1, 2, NA]
      $ i <list> [[1, <2, 3>], [<4, 5, ~
    Code
      # non-tibble
    Code
      glimpse(5)
    Output
       num 5
    Code
      iris2 <- as_unknown_rows(iris)
    Code
      glimpse(iris2, width = 70L)
    Output
      Rows: ??
      Columns: 5
      $ Sepal.Length <dbl> 5.1, 4.9, 4.7, 4.6, 5.0, 5.4, 4.6, 5.0, 4.4, 4~
      $ Sepal.Width  <dbl> 3.5, 3.0, 3.2, 3.1, 3.6, 3.9, 3.4, 3.4, 2.9, 3~
      $ Petal.Length <dbl> 1.4, 1.4, 1.3, 1.5, 1.4, 1.7, 1.4, 1.5, 1.4, 1~
      $ Petal.Width  <dbl> 0.2, 0.2, 0.2, 0.2, 0.2, 0.4, 0.3, 0.2, 0.2, 0~
      $ Species      <fct> setosa, setosa, setosa, setosa, setosa, setosa~
    Code
      Species <- unique(iris$Species)
    Code
      data <- unname(split(iris, iris$Species))
    Code
      nested_iris_df <- tibble::tibble(Species, data)
    Code
      glimpse(nested_iris_df, width = 70L)
    Output
      Rows: 3
      Columns: 2
      $ Species <fct> setosa, versicolor, virginica
      $ data    <list> [<data.frame[50 x 5]>, <data.frame[50 x 5]>, <data.~
    Code
      data <- map(data, as_tbl)
    Code
      nested_iris_tbl <- tibble::tibble(Species, data)
    Code
      glimpse(nested_iris_tbl, width = 70L)
    Output
      Rows: 3
      Columns: 2
      $ Species <fct> setosa, versicolor, virginica
      $ data    <list> [<tbl[50 x 5]>, <tbl[50 x 5]>, <tbl[50 x 5]>]

