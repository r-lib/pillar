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
           sci     eng                   dec    si
         <sci>   <eng>                 <dec>  <si>
       1 1e-13 100e-15       0.0000000000001  100f
       2 1e-12   1e-12       0.000000000001     1p
       3 1e-11  10e-12       0.00000000001     10p
       4 1e-10 100e-12       0.0000000001     100p
       5 1e- 9   1e- 9       0.000000001        1n
       6 1e- 8  10e- 9       0.00000001        10n
       7 1e- 7 100e- 9       0.0000001        100n
       8 1e- 6   1e- 6       0.000001           1µ
       9 1e- 5  10e- 6       0.00001           10µ
      10 1e- 4 100e- 6       0.0001           100µ
      11 1e- 3   1e- 3       0.001              1m
      12 1e- 2  10e- 3       0.01              10m
      13 1e- 1 100e- 3       0.1              100m
      14 1e+ 0   1e+ 0       1                  1 
      15 1e+ 1  10e+ 0      10                 10 
      16 1e+ 2 100e+ 0     100                100 
      17 1e+ 3   1e+ 3    1000                  1k
      18 1e+ 4  10e+ 3   10000                 10k
      19 1e+ 5 100e+ 3  100000                100k
      20 1e+ 6   1e+ 6 1000000                  1M
    Code
      tibble::tibble(scimin = num(10^(-7:6) * 123, notation = "sci", fixed_exponent = -
      Inf), engmin = num(10^(-7:6) * 123, notation = "eng", fixed_exponent = -Inf),
      simin = num(10^(-7:6) * 123, notation = "si", fixed_exponent = -Inf))
    Output
      # A tibble: 14 x 3
                    scimin            engmin             simin
                     <e-5>             <e-5>               <µ>
       1              1.23              12.3              12.3
       2             12.3              123               123  
       3            123               1230              1230  
       4           1230              12300             12300  
       5          12300             123000            123000  
       6         123000            1230000           1230000  
       7        1230000           12300000          12300000  
       8       12300000          123000000         123000000  
       9      123000000         1230000000        1230000000  
      10     1230000000        12300000000       12300000000  
      11    12300000000       123000000000      123000000000  
      12   123000000000      1230000000000     1230000000000  
      13  1230000000000     12300000000000    12300000000000  
      14 12300000000000    123000000000000   123000000000000  
    Code
      tibble::tibble(scismall = num(10^(-7:6) * 123, notation = "sci",
      fixed_exponent = -3), scilarge = num(10^(-7:6) * 123, notation = "eng",
      fixed_exponent = 3), scimax = num(10^(-7:6) * 123, notation = "si",
      fixed_exponent = Inf))
    Output
      # A tibble: 14 x 3
                  scismall          scilarge            scimax
                     <e-3>              <e3>               <M>
       1            0.0123      0.0000000123   0.0000000000123
       2            0.123       0.000000123    0.000000000123 
       3            1.23        0.00000123     0.00000000123  
       4           12.3         0.0000123      0.0000000123   
       5          123           0.000123       0.000000123    
       6         1230           0.00123        0.00000123     
       7        12300           0.0123         0.0000123      
       8       123000           0.123          0.000123       
       9      1230000           1.23           0.00123        
      10     12300000          12.3            0.0123         
      11    123000000         123              0.123          
      12   1230000000        1230              1.23           
      13  12300000000       12300             12.3            
      14 123000000000      123000            123              
    Code
      tibble::tibble(default = num(100 + 1:3 * 0.001), extra1 = num(100 + 1:3 * 0.001,
      extra_sigfig = TRUE), extra2 = num(100 + 1:3 * 1e-04, extra_sigfig = TRUE),
      extra3 = num(10000 + 1:3 * 1e-05, extra_sigfig = TRUE))
    Output
      # A tibble: 3 x 4
        default  extra1   extra2      extra3
          <num>   <num>    <num>       <num>
      1    100. 100.001 100.0001 10000.00001
      2    100. 100.002 100.0002 10000.00002
      3    100. 100.003 100.0003 10000.00003

# many digits

    Code
      num(123456789 * 10^(-9:0))
    Output
      <pillar_num[10]>
       [1]         0.123         1.23         12.3         123.         1235.   
       [6]     12346.       123457.      1234568.     12345679.    123456789    
    Code
      num(123456789 * 10^(-9:1))
    Output
      <pillar_num[11]>
       [1] 1.23e-1 1.23e+0 1.23e+1 1.23e+2 1.23e+3 1.23e+4 1.23e+5 1.23e+6 1.23e+7
      [10] 1.23e+8 1.23e+9
    Code
      num(123456789 * 10^(-9:1), notation = "dec")
    Output
      <pillar_num(dec)[11]>
       [1]          0.123          1.23          12.3          123.          1235.   
       [6]      12346.        123457.       1234568.      12345679.     123456789    
      [11] 1234567890    
    Code
      num(123456789 * 10^(-9:1), notation = "sci")
    Output
      <pillar_num(sci)[11]>
       [1] 1.23e-1 1.23e+0 1.23e+1 1.23e+2 1.23e+3 1.23e+4 1.23e+5 1.23e+6 1.23e+7
      [10] 1.23e+8 1.23e+9
    Code
      num(123456789 * 10^(-9:1), notation = "eng")
    Output
      <pillar_num(eng)[11]>
       [1] 123.  e-3   1.23e+0  12.3 e+0 123.  e+0   1.23e+3  12.3 e+3 123.  e+3
       [8]   1.23e+6  12.3 e+6 123.  e+6   1.23e+9
    Code
      num(123456789 * 10^(-9:1), notation = "si")
    Output
      <pillar_num(si)[11]>
       [1] 123.  m   1.23   12.3   123.      1.23k  12.3 k 123.  k   1.23M  12.3 M
      [10] 123.  M   1.23G
    Code
      num(123456789 * 10^(-9:1), notation = "sci", fixed_exponent = -Inf)
    Output
      <pillar_num(sci)|-Inf[11]>
       [1]           1.23          12.3          123.          1235.         12346.  
       [6]      123457.       1234568.      12345679.     123456789     1234567890   
      [11] 12345678900   
    Code
      num(123456789 * 10^(-9:1), notation = "eng", fixed_exponent = -Inf)
    Output
      <pillar_num(eng)|-Inf[11]>
       [1]           123.          1235.         12346.        123457.       1234568.
       [6]      12345679.     123456789     1234567890    12345678900   123456789000 
      [11] 1234567890000 
    Code
      num(123456789 * 10^(-9:1), notation = "si", fixed_exponent = -Inf)
    Output
      <pillar_num(si)|-Inf[11]>
       [1]           123.          1235.         12346.        123457.       1234568.
       [6]      12345679.     123456789     1234567890    12345678900   123456789000 
      [11] 1234567890000 
    Code
      num(123456789 * 10^(-9:1), notation = "sci", fixed_exponent = -3)
    Output
      <pillar_num(sci)|-3[11]>
       [1]           123.          1235.         12346.        123457.       1234568.
       [6]      12345679.     123456789     1234567890    12345678900   123456789000 
      [11] 1234567890000 
    Code
      num(123456789 * 10^(-9:1), notation = "sci", fixed_exponent = 3)
    Output
      <pillar_num(sci)|3[11]>
       [1]       0.000123       0.00123        0.0123         0.123          1.23    
       [6]      12.3          123.          1235.         12346.        123457.      
      [11] 1234568.      
    Code
      num(123456789 * 10^(-9:1), notation = "sci", fixed_exponent = Inf)
    Output
      <pillar_num(sci)|Inf[11]>
       [1] 0.000000000123 0.00000000123  0.0000000123   0.000000123    0.00000123    
       [6] 0.0000123      0.000123       0.00123        0.0123         0.123         
      [11] 1.23          

# sigfig and digits

    Code
      num(c(578890.23, 240234.131, 40234.1))
    Output
      <pillar_num[3]>
      [1] 578890. 240234.  40234.
    Code
      num(c(578890.23, 240234.131, 40234.1), sigfig = 6)
    Output
      <pillar_num:6[3]>
      [1] 578890.  240234.   40234.1
    Code
      num(c(578890.23, 240234.131, 40234.1), sigfig = 7)
    Output
      <pillar_num:7[3]>
      [1] 578890.2 240234.1  40234.1
    Code
      num(c(578890.23, 240234.131, 40234.1), sigfig = 8)
    Output
      <pillar_num:8[3]>
      [1] 578890.23 240234.13  40234.1 
    Code
      num(c(578890.23, 240234.131, 40234.1), sigfig = 9)
    Output
      <pillar_num:9[3]>
      [1] 578890.23  240234.131  40234.1  
    Code
      num(c(578890.23, 240234.131, 40234.1), digits = 2)
    Output
      <pillar_num:.2![3]>
      [1] 578890.23 240234.13  40234.10
    Code
      num(c(578890.23, 240234.131, 40234.1), digits = 3)
    Output
      <pillar_num:.3![3]>
      [1] 578890.230 240234.131  40234.100
    Code
      num(c(578890.23, 240234.131, 40234.1), digits = 4)
    Output
      <pillar_num:.4![3]>
      [1] 578890.2300 240234.1310  40234.1000
    Code
      num(c(578890.23, 240234.131, 40234.1), digits = -2)
    Output
      <pillar_num:.2[3]>
      [1] 578890.23 240234.13  40234.1 
    Code
      num(c(578890.23, 240234.131, 40234.1), digits = -3)
    Output
      <pillar_num:.3[3]>
      [1] 578890.23  240234.131  40234.1  
    Code
      num(c(578890.23, 240234.131, 40234.1), digits = -4)
    Output
      <pillar_num:.4[3]>
      [1] 578890.23  240234.131  40234.1  

# forced digits

    Code
      pillar(num(1:3, digits = 2))
    Output
      <pillar>
      <num:.2!>
           1.00
           2.00
           3.00
    Code
      pillar(num(1:3, digits = 5))
    Output
      <pillar>
      <num:.5!>
        1.00000
        2.00000
        3.00000

# all NA

    Code
      pillar(num(NA_real_, digits = 2))
    Output
      <pillar>
      <num:.2!>
           NA  
    Code
      pillar(num(NA_real_, notation = "si"))
    Output
      <pillar>
       <si>
         NA
    Code
      pillar(num(NA_real_, notation = "sci"))
    Output
      <pillar>
      <sci>
         NA
    Code
      pillar(num(NA_real_, notation = "eng"))
    Output
      <pillar>
      <eng>
         NA
    Code
      pillar(num(NA_real_, notation = "sci", fixed_exponent = -1))
    Output
      <pillar>
      <e-1>
         NA
    Code
      pillar(num(NA_real_, notation = "sci", fixed_exponent = -Inf))
    Output
      <pillar>
      <sci>
         NA

# some NA

    Code
      pillar(num(c(NA_real_, 1000), digits = 2))
    Output
      <pillar>
      <num:.2!>
          NA   
        1000.00
    Code
      pillar(num(c(NA_real_, 1000), notation = "si"))
    Output
      <pillar>
       <si>
        NA 
         1k
    Code
      pillar(num(c(NA_real_, 1000), notation = "sci"))
    Output
      <pillar>
      <sci>
       NA  
        1e3
    Code
      pillar(num(c(NA_real_, 1000), notation = "eng"))
    Output
      <pillar>
      <eng>
       NA  
        1e3
    Code
      pillar(num(c(NA_real_, 1000), notation = "sci", fixed_exponent = -1))
    Output
      <pillar>
      <e-1>
         NA
      10000
    Code
      pillar(num(c(NA_real_, 1000), notation = "sci", fixed_exponent = -Inf))
    Output
      <pillar>
       <e3>
         NA
          1

# arithmetics

    Code
      num(1) + 2
    Output
      <pillar_num[1]>
      [1] 3
    Code
      1 + num(2)
    Output
      <pillar_num[1]>
      [1] 3
    Code
      1L + num(2)
    Output
      <pillar_num[1]>
      [1] 3
    Code
      num(3.23456, sigfig = 4) - num(2)
    Output
      <pillar_num:4[1]>
      [1] 1.235
    Code
      num(3, digits = 2) * num(4, sigfig = 2)
    Output
      <pillar_num:.2![1]>
      [1] 12.00
    Code
      -num(2)
    Output
      <pillar_num[1]>
      [1] -2

# mathematics

    Code
      min(num(1:3, label = "$"))
    Output
      <pillar_num{$}[1]>
      [1] 1
    Code
      mean(num(1:3, notation = "eng"))
    Output
      <pillar_num(eng)[1]>
      [1] 2e0
    Code
      sin(num(1:3, label = "%", scale = 100))
    Output
      <pillar_num{%}*100[3]>
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
      set_num_opts(1, sigfig = 2, fixed_exponent = -Inf)
    Output
      [1] 1
      attr(,"pillar")
      pillar_num:2|-Inf
    Code
      set_num_opts(1000, digits = 2, notation = "eng")
    Output
      [1] 1000
      attr(,"pillar")
      pillar_num(eng):.2!

