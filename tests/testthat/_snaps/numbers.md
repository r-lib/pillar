# output test

    Code
      tibble::tibble(x0 = num(9:11 * 100 + 0.5, 3), x1 = num(9:11 * 100 + 0.5, 4),
      x2 = num(9:11 * 100 + 0.5, 5), )
    Output
      # A tibble: 3 x 3
             x0      x1      x2
        <num:3> <num:4> <num:5>
      1    900.   900.5   900.5
      2   1000.  1000.   1000.5
      3   1100.  1100.   1100.5
    Code
      tibble::tibble(x3 = num(9:11 * 100 + 0.5, digits = 0), x4 = num(9:11 * 100 +
      0.5, digits = 1), x5 = num(9:11 * 100 + 0.5, digits = 2), )
    Output
      # A tibble: 3 x 3
              x3       x4       x5
        <num:.0> <num:.1> <num:.2>
      1     900.    900.5   900.50
      2    1000.   1000.5  1000.50
      3    1100.   1100.5  1100.50
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
      notation = "eng"), dec = num(10^(-13:6), notation = "dec"))
    Output
      # A tibble: 20 x 3
              sci        eng                   dec
            <sci>      <eng>                 <dec>
       1 1.00e-13 100.00e-15       0.0000000000001
       2 1.00e-12   1.00e-12       0.000000000001 
       3 1.00e-11  10.00e-12       0.000000000010 
       4 1.00e-10 100.00e-12       0.0000000001   
       5 1.00e- 9   1.00e- 9       0.000000001    
       6 1.00e- 8  10.00e- 9       0.00000001     
       7 1.00e- 7 100.00e- 9       0.0000001      
       8 1.00e- 6   1.00e- 6       0.000001       
       9 1.00e- 5  10.00e- 6       0.00001        
      10 1.00e- 4 100.00e- 6       0.0001         
      11 1.00e- 3   1.00e- 3       0.001          
      12 1.00e- 2  10.00e- 3       0.01           
      13 1.00e- 1 100.00e- 3       0.1            
      14 1.00e+ 0   1.00e+ 0       1              
      15 1.00e+ 1  10.00e+ 0      10              
      16 1.00e+ 2 100.00e+ 0     100              
      17 1.00e+ 3   1.00e+ 3    1000              
      18 1.00e+ 4  10.00e+ 3   10000              
      19 1.00e+ 5 100.00e+ 3  100000              
      20 1.00e+ 6   1.00e+ 6 1000000              
    Code
      tibble::tibble(scifix = num(10^(-13:6) * 123, notation = "scifix"), engfix = num(
        10^(-13:6) * 123, notation = "engfix"))
    Output
      # A tibble: 20 x 2
                              scifix                       engfix
                            <scifix>                     <engfix>
       1                    1.23e-11                    12.30e-12
       2                   12.30e-11                   123.00e-12
       3                  123.00e-11                  1230.00e-12
       4                 1230.00e-11                 12300.00e-12
       5                12300.00e-11                123000.00e-12
       6               123000.00e-11               1230000.00e-12
       7              1230000.00e-11              12300000.00e-12
       8             12300000.00e-11             123000000.00e-12
       9            123000000.00e-11            1230000000.00e-12
      10           1230000000.00e-11           12300000000.00e-12
      11          12300000000.00e-11          123000000000.00e-12
      12         123000000000.00e-11         1230000000000.00e-12
      13        1230000000000.00e-11        12300000000000.00e-12
      14       12300000000000.00e-11       123000000000000.00e-12
      15      123000000000000.00e-11      1230000000000000.00e-12
      16     1230000000000000.00e-11     12300000000000000.00e-12
      17    12300000000000000.00e-11    123000000000000000.00e-12
      18   123000000000000000.00e-11   1230000000000000000.00e-12
      19  1230000000000000000.00e-11  12300000000000000000.00e-12
      20 12300000000000000000.00e-11 123000000000000000000.00e-12

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
      <tibble_num:.2[1]>
      [1] 12  
    Code
      -num(2)
    Output
      <tibble_num[1]>
      [1] -2

# mathematics

    Code
      min(num(1:3, label = "€"))
    Output
      <tibble_num{€}[1]>
      [1] 1
    Code
      mean(num(1:3, notation = "eng"))
    Output
      <tibble_num(eng)[1]>
      [1] 2.00e0
    Code
      sin(num(1:3, label = "%", scale = 100))
    Output
      <tibble_num{%}[3]>
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

