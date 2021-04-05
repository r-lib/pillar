# output test

    Code
      tibble::tibble(x0 = num(9:11 * 100 + 0.5, sigfig = 3), x1 = num(9:11 * 100 +
      0.5, sigfig = 4), x2 = num(9:11 * 100 + 0.5, sigfig = 5), )
    Output
      # A tibble: 3 x 3
             x0      x1      x2
        <num:3> <num:4> <num:5>
      1    900.   900.5   900.5
      2   1000.  1000.   1000.5
      3   1100.  1100.   1100.5
    Code
      tibble::tibble(x3 = num(9:11 * 100 + 0.5, digits = 0), x4 = num(9:11 * 100 +
      0.5, digits = -1), x5 = num(9:11 * 100 + 0.5, digits = -2), )
    Output
      # A tibble: 3 x 3
              x3       x4       x5
        <num:.0> <num:.1> <num:.2>
      1     900.    900.5    900.5
      2    1000.   1000.5   1000.5
      3    1100.   1100.5   1100.5
    Code
      tibble::tibble(usd = num(9:11 * 100 + 0.5, digits = 2, label = "USD"), gbp = num(
        9:11 * 100 + 0.5, digits = 2, label = "£"), chf = num(9:11 * 100 + 0.5,
      digits = 2, label = "SFr"))
    Output
      # A tibble: 3 x 3
            usd     gbp     chf
            USD       £     SFr
      1  900.50  900.50  900.50
      2 1000.50 1000.50 1000.50
      3 1100.50 1100.50 1100.50
    Code
      tibble::tibble(small = num(9:11 / 1000 + 5e-05, label = "%", scale = 100),
      medium = num(9:11 / 100 + 5e-04, label = "%", scale = 100), large = num(9:11 /
        10 + 0.005, label = "%", scale = 100))
    Output
      # A tibble: 3 x 3
        small medium large
            %      %     %
      1 0.905   9.05  90.5
      2 1.00   10.0  100. 
      3 1.10   11.0  110. 
    Code
      tibble::tibble(sci = num(10^(-13:6), notation = "sci"), eng = num(10^(-13:6),
      notation = "eng"), dec = num(10^(-13:6), notation = "dec"), si = num(10^(-13:6),
      notation = "si"), )
    Output
      # A tibble: 20 x 4
           sci     eng                   dec      si
         <sci>   <eng>                 <dec>    <si>
       1 1e-13 100e-15       0.0000000000001    100f
       2 1e-12   1e-12       0.000000000001       1p
       3 1e-11  10e-12       0.000000000010      10p
       4 1e-10 100e-12       0.0000000001       100p
       5 1e- 9   1e- 9       0.000000001          1n
       6 1e- 8  10e- 9       0.00000001          10n
       7 1e- 7 100e- 9       0.0000001          100n
       8 1e- 6   1e- 6       0.000001             1µ
       9 1e- 5  10e- 6       0.00001             10µ
      10 1e- 4 100e- 6       0.0001             100µ
      11 1e- 3   1e- 3       0.001                1m
      12 1e- 2  10e- 3       0.01                10m
      13 1e- 1 100e- 3       0.1                100m
      14 1e+ 0   1e+ 0       1                    1 
      15 1e+ 1  10e+ 0      10                   10 
      16 1e+ 2 100e+ 0     100                  100 
      17 1e+ 3   1e+ 3    1000                    1k
      18 1e+ 4  10e+ 3   10000                   10k
      19 1e+ 5 100e+ 3  100000                  100k
      20 1e+ 6   1e+ 6 1000000                    1M
    Code
      tibble::tibble(scifix = num(10^(-7:6) * 123, notation = "sci", fixed_magnitude = TRUE),
      engfix = num(10^(-7:6) * 123, notation = "eng", fixed_magnitude = TRUE), sifix = num(
        10^(-7:6) * 123, notation = "si", fixed_magnitude = TRUE))
    Output
      # A tibble: 14 x 3
                       scifix               engfix                sifix
                        <sci>                <eng>                 <si>
       1              1.23e-5              12.3e-6                12.3µ
       2             12.3 e-5             123  e-6               123  µ
       3            123   e-5            1230  e-6              1230  µ
       4           1230   e-5           12300  e-6             12300  µ
       5          12300   e-5          123000  e-6            123000  µ
       6         123000   e-5         1230000  e-6           1230000  µ
       7        1230000   e-5        12300000  e-6          12300000  µ
       8       12300000   e-5       123000000  e-6         123000000  µ
       9      123000000   e-5      1230000000  e-6        1230000000  µ
      10     1230000000   e-5     12300000000  e-6       12300000000  µ
      11    12300000000   e-5    123000000000  e-6      123000000000  µ
      12   123000000000   e-5   1230000000000  e-6     1230000000000  µ
      13  1230000000000   e-5  12300000000000  e-6    12300000000000  µ
      14 12300000000000   e-5 123000000000000  e-6   123000000000000  µ

# many digits

    Code
      num(123456789 * 10^(-9:0))
    Output
      <tibble_num[10]>
       [1]         0.123         1.23         12.3         123.         1235.   
       [6]     12346.       123457.      1234568.     12345679.    123456789    
    Code
      num(123456789 * 10^(-9:1))
    Output
      <tibble_num[11]>
       [1] 1.23e-1 1.23e+0 1.23e+1 1.23e+2 1.23e+3 1.23e+4 1.23e+5 1.23e+6 1.23e+7
      [10] 1.23e+8 1.23e+9
    Code
      num(123456789 * 10^(-9:1), notation = "dec")
    Output
      <tibble_num(dec)[11]>
       [1]          0.123          1.23          12.3          123.          1235.   
       [6]      12346.        123457.       1234568.      12345679.     123456789    
      [11] 1234567890    
    Code
      num(123456789 * 10^(-9:1), notation = "sci")
    Output
      <tibble_num(sci)[11]>
       [1] 1.23e-1 1.23e+0 1.23e+1 1.23e+2 1.23e+3 1.23e+4 1.23e+5 1.23e+6 1.23e+7
      [10] 1.23e+8 1.23e+9
    Code
      num(123456789 * 10^(-9:1), notation = "eng")
    Output
      <tibble_num(eng)[11]>
       [1] 123.  e-3   1.23e+0  12.3 e+0 123.  e+0   1.23e+3  12.3 e+3 123.  e+3
       [8]   1.23e+6  12.3 e+6 123.  e+6   1.23e+9
    Code
      num(123456789 * 10^(-9:1), notation = "si")
    Output
      <tibble_num(si)[11]>
       [1]   123.  m     1.23     12.3     123.        1.23k    12.3 k   123.  k
       [8]     1.23M    12.3 M   123.  M     1.23G
    Code
      num(123456789 * 10^(-9:1), notation = "sci", fixed_magnitude = TRUE)
    Output
      <tibble_num(sci)|[11]>
       [1]           1.23e-1          12.3 e-1         123.  e-1        1235.  e-1
       [5]       12346.  e-1      123457.  e-1     1234568.  e-1    12345679.  e-1
       [9]   123456789   e-1  1234567890   e-1 12345678900   e-1
    Code
      num(123456789 * 10^(-9:1), notation = "eng", fixed_magnitude = TRUE)
    Output
      <tibble_num(eng)|[11]>
       [1]           123.e-3          1235.e-3         12346.e-3        123457.e-3
       [5]       1234568.e-3      12345679.e-3     123456789 e-3    1234567890 e-3
       [9]   12345678900 e-3  123456789000 e-3 1234567890000 e-3
    Code
      num(123456789 * 10^(-9:1), notation = "si", fixed_magnitude = TRUE)
    Output
      <tibble_num(si)|[11]>
       [1]             123.m            1235.m           12346.m          123457.m
       [5]         1234568.m        12345679.m       123456789 m      1234567890 m
       [9]     12345678900 m    123456789000 m   1234567890000 m

# arithmetics

    Code
      num(1) + 2
    Output
      <tibble_num[1]>
      [1] 3
    Code
      1 + num(2)
    Output
      <tibble_num[1]>
      [1] 3
    Code
      1L + num(2)
    Output
      <tibble_num[1]>
      [1] 3
    Code
      num(3.23456, sigfig = 4) - num(2)
    Output
      <tibble_num:4[1]>
      [1] 1.235
    Code
      num(3, digits = 2) * num(4, sigfig = 2)
    Output
      <tibble_num:.2![1]>
      [1] 12  
    Code
      -num(2)
    Output
      <tibble_num[1]>
      [1] -2

# mathematics

    Code
      min(num(1:3, label = "$"))
    Output
      <tibble_num{$}[1]>
      [1] 1
    Code
      mean(num(1:3, notation = "eng"))
    Output
      <tibble_num(eng)[1]>
      [1] 2e0
    Code
      sin(num(1:3, label = "%", scale = 100))
    Output
      <tibble_num{%}*100[3]>
      [1] 84.1 90.9 14.1

# formatting

    Code
      format(num(-1:3))
    Output
      [1] "-1" " 0" " 1" " 2" " 3"
    Code
      format(num(-1:3), trim = TRUE)
    Output
      [1] "-1" "0"  "1"  "2"  "3" 

# attribute

    Code
      set_num_opts(1, sigfig = 2, fixed_magnitude = TRUE)
    Output
      [1] 1
      attr(,"pillar")
      tibble_num:2|
    Code
      set_num_opts(1000, digits = 2, notation = "eng")
    Output
      [1] 1000
      attr(,"pillar")
      tibble_num(eng):.2!

