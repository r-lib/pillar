# colonnade_compute_tiered_col_widths_df()

    Code
      colonnade_compute_tiered_col_widths_df(rep(30, 4), rep(15, 4), rep(60, 4))
    Output
        id tier width offset_after
      1  1    1    30           30
      2  2    2    30           30
      3  3    3    30           30
      4  4    4    30           30
    Code
      colonnade_compute_tiered_col_widths_df(rep(30, 4), rep(15, 4), rep(60, 3))
    Output
        id tier width offset_after max_widths
      1  1    1    30           30         30
      2  2    2    30           30         30
      3  3    3    30           30         30
      4  4    3    15           60         30
    Code
      colonnade_compute_tiered_col_widths_df(rep(30, 4), rep(15, 4), rep(60, 2))
    Output
        id tier width offset_after max_widths
      1  1    1    30           30         30
      2  2    2    15           28         30
      3  3    2    15           44         30
      4  4    2    15           60         30
    Code
      colonnade_compute_tiered_col_widths_df(rep(30, 5), rep(15, 5), rep(60, 3))
    Output
        id tier width offset_after max_widths
      1  1    1    30           30         30
      2  2    2    30           30         30
      3  3    3    15           28         30
      4  4    3    15           44         30
      5  5    3    15           60         30
    Code
      colonnade_compute_tiered_col_widths_df(rep(30, 5), rep(15, 5), rep(60, 4))
    Output
        id tier width offset_after max_widths
      1  1    1    30           30         30
      2  2    2    30           30         30
      3  3    3    30           30         30
      4  4    4    30           30         30
      5  5    4    15           60         30
    Code
      colonnade_compute_tiered_col_widths_df(rep(30, 10), rep(15, 10), rep(60, 5))
    Output
         id tier width offset_after max_widths
      1   1    1    30           30         30
      2   2    2    30           30         30
      3   3    3    30           30         30
      4   4    3    15           60         30
      5   5    4    15           28         30
      6   6    4    15           44         30
      7   7    4    15           60         30
      8   8    5    15           28         30
      9   9    5    15           44         30
      10 10    5    15           60         30
    Code
      colonnade_compute_tiered_col_widths_df(c(6, 5, 10), c(5, 5, 10), 21)
    Output
        id tier width offset_after
      1  1    1     5            5
      2  2    1     5           11
      3  3   NA    10           NA
    Code
      colonnade_compute_tiered_col_widths_df(c(6, 5, 10), c(5, 5, 10), 22)
    Output
        id tier width offset_after max_widths
      1  1    1     5            5          6
      2  2    1     5           11          5
      3  3    1    10           22         10
    Code
      colonnade_compute_tiered_col_widths_df(c(6, 5, 10), c(5, 5, 10), 23)
    Output
        id tier width offset_after
      1  1    1     6            6
      2  2    1     5           12
      3  3    1    10           23
    Code
      colonnade_compute_tiered_col_widths_df(c(5, 6, 10), c(5, 5, 10), 21)
    Output
        id tier width offset_after
      1  1    1     5            5
      2  2    1     5           11
      3  3   NA    10           NA
    Code
      colonnade_compute_tiered_col_widths_df(c(5, 6, 10), c(5, 5, 10), 22)
    Output
        id tier width offset_after max_widths
      1  1    1     5            5          5
      2  2    1     5           11          6
      3  3    1    10           22         10
    Code
      colonnade_compute_tiered_col_widths_df(c(5, 6, 10), c(5, 5, 10), 23)
    Output
        id tier width offset_after
      1  1    1     5            5
      2  2    1     6           12
      3  3    1    10           23

# distribute_pillars()

    Code
      distribute_pillars(1:3, 10)
    Output
        id tier width offset_after
      1  1    1     1            1
      2  2    1     2            4
      3  3    1     3            8
    Code
      distribute_pillars(1:3, 5)
    Output
        id tier width offset_after
      1  1    1     1            1
      2  2    1     2            4
      3  3   NA     3           NA
    Code
      distribute_pillars(1:3, c(5, 5))
    Output
        id tier width offset_after
      1  1    1     1            1
      2  2    1     2            4
      3  3    2     3            3
    Code
      distribute_pillars(1:5, 7:9)
    Output
        id tier width offset_after
      1  1    1     1            1
      2  2    1     2            4
      3  3    2     3            3
      4  4    2     4            8
      5  5    3     5            5
    Code
      distribute_pillars(3:5, 8:10)
    Output
        id tier width offset_after
      1  1    1     3            3
      2  2    1     4            8
      3  3    2     5            5
    Code
      distribute_pillars(5:3, 9:8)
    Output
        id tier width offset_after
      1  1    1     5            5
      2  2    2     4            4
      3  3    2     3            8
    Code
      distribute_pillars(c(5, 5), c(2, 8, 8))
    Output
        id tier width offset_after
      1  1    2     5            5
      2  2    3     5            5

# distribute_pillars_rev()

    Code
      distribute_pillars_rev(1:3, 10)
    Output
        id tier width offset_after
      1  1    1     1            3
      2  2    1     2            6
      3  3    1     3           10
    Code
      distribute_pillars_rev(1:3, 5)
    Output
        id tier width offset_after
      1  1   NA     1            5
      2  2   NA     2           NA
      3  3    1     3           NA
    Code
      distribute_pillars_rev(1:3, c(5, 5))
    Output
        id tier width offset_after
      1  1    1     1            2
      2  2    1     2            5
      3  3    2     3            5
    Code
      distribute_pillars_rev(1:5, 7:9)
    Output
        id tier width offset_after
      1  1    1     1            4
      2  2    1     2            7
      3  3    2     3            3
      4  4    2     4            8
      5  5    3     5            9
    Code
      distribute_pillars_rev(3:5, 8:10)
    Output
        id tier width offset_after
      1  1    2     3            8
      2  2    3     4            3
      3  3    3     5            9
    Code
      distribute_pillars_rev(5:3, 9:8)
    Output
        id tier width offset_after
      1  1    1     5            9
      2  2    2     4            4
      3  3    2     3            8
    Code
      distribute_pillars_rev(c(5, 5), c(8, 8, 2))
    Output
        id tier width offset_after
      1  1    1     5            8
      2  2    2     5            8

