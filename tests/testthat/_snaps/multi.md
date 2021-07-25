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

