# output test (not on Windows)

    Code
      colonnade(chartype_frame(), width = 50)
    Output
         chars          desc              
         <chr>          <chr>             
       1 "\u0001\u001f" C0 control code   
       2 "\a\b\f\n\r\t" Named control code
       3 "abcdefuvwxyz" ASCII             
       4 "\u0080\u009f" C1 control code   
       5 " ¡¢£¤¥úûüýþÿ" Latin-1           
       6 "ĀāĂăĄąĆćĈĉĊċ" Unicode           
       7 "！＂＃＄％＆" Unicode wide      
       8 "\u0e00\u2029" Unicode control   
       9 "x­x​x‌x‍x‎x‏x͏x﻿x󠀁x󠀠x󠇯x" Unicode ignorable 
      10 "àáâãāa̅ăȧäảåa̋" Unicode mark      
      11 "😀😁😂😃😄💃" Emoji             
      12 "x\U0010ffffx" Unassigned        
      13 "\xfd\xfe\xff" Invalid           
      14 "\\"           Backslash         
      15 "\""           Quote             

