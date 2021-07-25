# colonnade_compute_tiered_col_widths_df()

    Code
      colonnade_compute_tiered_col_widths_df(rep(30, 4), rep(15, 4), rep(60, 4))
    Output
        id width tier offset
      1  1    30    1     30
      2  2    30    2     30
      3  3    30    3     30
      4  4    30    4     30
    Code
      colonnade_compute_tiered_col_widths_df(rep(30, 4), rep(15, 4), rep(60, 3))
    Output
        id width tier offset max_widths
      1  1    30    1     30         30
      2  2    30    2     30         30
      3  3    15    3     15         30
      4  4    15    3     31         30
    Code
      colonnade_compute_tiered_col_widths_df(rep(30, 4), rep(15, 4), rep(60, 2))
    Output
        id width tier offset max_widths
      1  1    15    1     15         30
      2  2    15    1     31         30
      3  3    15    1     47         30
      4  4    15    2     15         30
    Code
      colonnade_compute_tiered_col_widths_df(rep(30, 5), rep(15, 5), rep(60, 3))
    Output
        id width tier offset max_widths
      1  1    30    1     30         30
      2  2    15    2     15         30
      3  3    15    2     31         30
      4  4    15    2     47         30
      5  5    15    3     15         30
    Code
      colonnade_compute_tiered_col_widths_df(rep(30, 5), rep(15, 5), rep(60, 4))
    Output
        id width tier offset max_widths
      1  1    30    1     30         30
      2  2    30    2     30         30
      3  3    30    3     30         30
      4  4    15    4     15         30
      5  5    15    4     31         30
    Code
      colonnade_compute_tiered_col_widths_df(rep(30, 10), rep(15, 10), rep(60, 5))
    Output
         id width tier offset max_widths
      1   1    30    1     30         30
      2   2    30    2     30         30
      3   3    15    3     15         30
      4   4    15    3     31         30
      5   5    15    3     47         30
      6   6    15    4     15         30
      7   7    15    4     31         30
      8   8    15    4     47         30
      9   9    15    5     15         30
      10 10    15    5     31         30

# distribute_pillars()

    Code
      distribute_pillars(1:3, 10)
    Output
        id width tier offset
      1  1     1    1      1
      2  2     2    1      4
      3  3     3    1      8
    Code
      distribute_pillars(1:3, 5)
    Output
        id width tier offset
      1  1     1    1      1
      2  2     2    1      4
      3  3     3   NA     NA
    Code
      distribute_pillars(1:3, c(5, 5))
    Output
        id width tier offset
      1  1     1    1      1
      2  2     2    1      4
      3  3     3    2      3
    Code
      distribute_pillars(1:5, 7:9)
    Output
        id width tier offset
      1  1     1    1      1
      2  2     2    1      4
      3  3     3    2      3
      4  4     4    2      8
      5  5     5    3      5
    Code
      distribute_pillars(3:5, 8:10)
    Output
        id width tier offset
      1  1     3    1      3
      2  2     4    1      8
      3  3     5    2      5
    Code
      distribute_pillars(5:3, 9:8)
    Output
        id width tier offset
      1  1     5    1      5
      2  2     4    2      4
      3  3     3    2      8

# distribute_pillars_rev()

    Code
      distribute_pillars_rev(1:3, 10)
    Output
        id width tier offset
      1  1     1    1      5
      2  2     2    1      7
      3  3     3    1     10
    Code
      distribute_pillars_rev(1:3, 5)
    Output
        id width tier offset
      1  1     1   NA      5
      2  2     2   NA     NA
      3  3     3    1     NA
    Code
      distribute_pillars_rev(1:3, c(5, 5))
    Output
        id width tier offset
      1  1     1    1      3
      2  2     2    1      5
      3  3     3    2      5
    Code
      distribute_pillars_rev(1:5, 7:9)
    Output
        id width tier offset
      1  1     1    1      5
      2  2     2    1      7
      3  3     3    2      4
      4  4     4    2      8
      5  5     5    3      9
    Code
      distribute_pillars_rev(3:5, 8:10)
    Output
        id width tier offset
      1  1     3    2      8
      2  2     4    3      4
      3  3     5    3      9
    Code
      distribute_pillars_rev(5:3, 9:8)
    Output
        id width tier offset
      1  1     5    1      9
      2  2     4    2      3
      3  3     3    2      8

