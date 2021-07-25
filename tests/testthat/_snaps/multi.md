# colonnade_compute_tiered_col_widths_df()

    Code
      colonnade_compute_tiered_col_widths_df(rep(30, 4), rep(15, 4), rep(60, 4))
    Output
        id width tier
      1  1    30    1
      2  2    30    2
      3  3    30    3
      4  4    30    4
    Code
      colonnade_compute_tiered_col_widths_df(rep(30, 4), rep(15, 4), rep(60, 3))
    Output
        id width tier max_widths
      1  1    30    1         30
      2  2    30    2         30
      3  3    15    3         30
      4  4    15    3         30
    Code
      colonnade_compute_tiered_col_widths_df(rep(30, 4), rep(15, 4), rep(60, 2))
    Output
        id width tier max_widths
      1  1    15    1         30
      2  2    15    1         30
      3  3    15    1         30
      4  4    15    2         30
    Code
      colonnade_compute_tiered_col_widths_df(rep(30, 5), rep(15, 5), rep(60, 3))
    Output
        id width tier max_widths
      1  1    30    1         30
      2  2    15    2         30
      3  3    15    2         30
      4  4    15    2         30
      5  5    15    3         30
    Code
      colonnade_compute_tiered_col_widths_df(rep(30, 5), rep(15, 5), rep(60, 4))
    Output
        id width tier max_widths
      1  1    30    1         30
      2  2    30    2         30
      3  3    30    3         30
      4  4    15    4         30
      5  5    15    4         30
    Code
      colonnade_compute_tiered_col_widths_df(rep(30, 10), rep(15, 10), rep(60, 5))
    Output
         id width tier max_widths
      1   1    30    1         30
      2   2    30    2         30
      3   3    15    3         30
      4   4    15    3         30
      5   5    15    3         30
      6   6    15    4         30
      7   7    15    4         30
      8   8    15    4         30
      9   9    15    5         30
      10 10    15    5         30

# distribute_pillars()

    Code
      distribute_pillars(1:3, 10)
    Output
        id width tier
      1  1     1    1
      2  2     2    1
      3  3     3    1
    Code
      distribute_pillars(1:3, 5)
    Output
        id width tier
      1  1     1    1
      2  2     2    1
      3  3     3    0
    Code
      distribute_pillars(1:3, c(5, 5))
    Output
        id width tier
      1  1     1    1
      2  2     2    1
      3  3     3    2
    Code
      distribute_pillars(1:5, 7:9)
    Output
        id width tier
      1  1     1    1
      2  2     2    1
      3  3     3    2
      4  4     4    2
      5  5     5    3
    Code
      distribute_pillars(3:5, 8:10)
    Output
        id width tier
      1  1     3    1
      2  2     4    1
      3  3     5    2
    Code
      distribute_pillars(5:3, 9:8)
    Output
        id width tier
      1  1     5    1
      2  2     4    2
      3  3     3    2

