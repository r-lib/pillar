# strings with varying widths

    Code
      options(width = 59)
      colonnade(df_str[c(12L, 33L, 36L, 7L, 41L, 3L, 18L, 23L, 13L, 44L, 14L, 16L,
        25L, 21L, 19L, 45L, 43L, 29L, 1L, 30L, 22L, 27L, 15L, 47L, 28L, 31L, 10L, 50L,
        4L, 40L, 42L, 8L, 6L, 9L, 24L, 48L, 38L, 37L, 34L, 49L, 46L, 2L, 32L, 35L,
        39L, 11L, 17L, 5L, 26L, 20L)], width = 1382)
    Output
        `12`         `33`                             
        <chr>        <chr>                            
      1 AbcdefghijAb AbcdefghijAbcdefghijAbcdefghijAbc
        `36`                                 `7`    
        <chr>                                <chr>  
      1 AbcdefghijAbcdefghijAbcdefghijAbcdef Abcdefg
        `41`                                      `3`  
        <chr>                                     <chr>
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijA Abc  
        `18`               `23`                    `13`         
        <chr>              <chr>                   <chr>        
      1 AbcdefghijAbcdefgh AbcdefghijAbcdefghijAbc AbcdefghijAbc
        `44`                                        
        <chr>                                       
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcd
        `14`           `16`             `25`                     
        <chr>          <chr>            <chr>                    
      1 AbcdefghijAbcd AbcdefghijAbcdef AbcdefghijAbcdefghijAbcde
        `21`                  `19`               
        <chr>                 <chr>              
      1 AbcdefghijAbcdefghijA AbcdefghijAbcdefghi
        `45`                                         
        <chr>                                        
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcde
        `43`                                       
        <chr>                                      
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbc
        `29`                          `1`  
        <chr>                         <chr>
      1 AbcdefghijAbcdefghijAbcdefghi A    
        `30`                           `22`                  
        <chr>                          <chr>                 
      1 AbcdefghijAbcdefghijAbcdefghij AbcdefghijAbcdefghijAb
        `27`                        `15`           
        <chr>                       <chr>          
      1 AbcdefghijAbcdefghijAbcdefg AbcdefghijAbcde
        `47`                                           
        <chr>                                          
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcdefg
        `28`                        
        <chr>                       
      1 AbcdefghijAbcdefghijAbcdefgh
        `31`                            `10`      
        <chr>                           <chr>     
      1 AbcdefghijAbcdefghijAbcdefghijA Abcdefghij
        `50`                                               `4`  
        <chr>                                              <chr>
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcdefghij Abcd 
        `40`                                    
        <chr>                                   
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghij
        `42`                                       `8`     
        <chr>                                      <chr>   
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAb Abcdefgh
        `6`    `9`       `24`                    
        <chr>  <chr>     <chr>                   
      1 Abcdef Abcdefghi AbcdefghijAbcdefghijAbcd
        `48`                                            
        <chr>                                           
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcdefgh
        `38`                                  
        <chr>                                 
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefgh
        `37`                                 
        <chr>                                
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefg
        `34`                               `49`        `46`      
        <chr>                              <chr>       <chr>     
      1 AbcdefghijAbcdefghijAbcdefghijAbcd Abcdefghij~ Abcdefghi~
        `2`   `32`   `35`   `39`   `11`   `17`  `5`   `26`  `20` 
        <chr> <chr>  <chr>  <chr>  <chr>  <chr> <chr> <chr> <chr>
      1 Ab    Abcde~ Abcde~ Abcde~ Abcde~ Abcd~ Abcde Abcd~ Abcd~
    Code
      options(width = 54)
      colonnade(df_str[c(40L, 28L, 7L, 16L, 48L, 6L, 21L, 1L, 20L, 17L, 47L, 45L, 29L,
        41L, 49L, 34L, 4L, 39L, 18L, 36L, 26L, 38L, 10L, 8L, 5L, 15L, 44L, 24L, 46L,
        14L, 25L, 27L, 3L, 37L, 35L, 12L, 9L, 13L, 22L, 33L, 42L, 11L, 19L, 50L, 23L,
        30L, 32L, 2L, 43L, 31L)], width = 837)
    Output
        `40`                                    
        <chr>                                   
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghij
        `28`                         `7`    
        <chr>                        <chr>  
      1 AbcdefghijAbcdefghijAbcdefgh Abcdefg
        `16`            
        <chr>           
      1 AbcdefghijAbcdef
        `48`                                            
        <chr>                                           
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcdefgh
        `6`    `21`                  `1`  
        <chr>  <chr>                 <chr>
      1 Abcdef AbcdefghijAbcdefghijA A    
        `20`                 `17`             
        <chr>                <chr>            
      1 AbcdefghijAbcdefghij AbcdefghijAbcdefg
        `47`                                           
        <chr>                                          
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcdefg
        `45`                                         
        <chr>                                        
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcde
        `29`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefghi
        `41`                                     
        <chr>                                    
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijA
        `49`                                             
        <chr>                                            
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcdefghi
        `34`                               `4`   `39`       
        <chr>                              <chr> <chr>      
      1 AbcdefghijAbcdefghijAbcdefghijAbcd Abcd  Abcdefghij~
        `18`   `36`    `26`   `38`   `10`  `8`   `5`   `15` 
        <chr>  <chr>   <chr>  <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcdef~ Abcde~ Abcde~ Abcd~ Abcd~ Abcde Abcd~
        `44`    `24`   `46`    `14`  `25`  `27`  `3`   `37` 
        <chr>   <chr>  <chr>   <chr> <chr> <chr> <chr> <chr>
      1 Abcdef~ Abcde~ Abcdef~ Abcd~ Abcd~ Abcd~ Abc   Abcd~
        `35`    `12`   `9`   `13`  `22`  `33`   `42`   `11` 
        <chr>   <chr>  <chr> <chr> <chr> <chr>  <chr>  <chr>
      1 Abcdef~ Abcde~ Abcd~ Abcd~ Abcd~ Abcde~ Abcde~ Abcd~
        `19`   `50`    `23`   `30`   `32`  `2`   `43`  `31` 
        <chr>  <chr>   <chr>  <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcdef~ Abcde~ Abcde~ Abcd~ Ab    Abcd~ Abcd~
    Code
      options(width = 32)
      colonnade(df_str[c(47L, 42L, 4L, 46L, 9L, 34L, 19L, 39L, 8L, 32L, 36L, 12L, 29L,
        5L, 15L, 11L, 31L, 27L, 33L, 28L, 43L, 6L, 13L, 22L, 14L, 16L, 35L, 50L, 38L,
        7L, 23L, 45L, 40L, 3L, 2L, 24L, 41L, 10L, 30L, 25L, 17L, 26L, 48L, 37L, 49L,
        1L, 18L, 21L, 44L, 20L)], width = 455)
    Output
        `47`                          
        <chr>                         
      1 AbcdefghijAbcdefghijAbcdefghi~
        `42`                          
        <chr>                         
      1 AbcdefghijAbcdefghijAbcdefghi~
        `4`  
        <chr>
      1 Abcd 
        `46`                          
        <chr>                         
      1 AbcdefghijAbcdefghijAbcdefghi~
        `9`      
        <chr>    
      1 Abcdefghi
        `34`                          
        <chr>                         
      1 AbcdefghijAbcdefghijAbcdefghi~
        `19`    `39`     `8`   `32`   
        <chr>   <chr>    <chr> <chr>  
      1 Abcdef~ Abcdefg~ Abcd~ Abcdef~
        `36`   `12`  `29`  `5`   `15` 
        <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcd~ Abcd~ Abcde Abcd~
        `11`   `31`  `27`  `33`  `28` 
        <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcd~ Abcd~ Abcd~ Abcd~
        `43`   `6`   `13`  `22`  `14` 
        <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcd~ Abcd~ Abcd~ Abcd~
        `16`   `35`  `50`  `38`  `7`  
        <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcd~ Abcd~ Abcd~ Abcd~
        `23`   `45`  `40`  `3`   `2`  
        <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcd~ Abcd~ Abc   Ab   
        `24`   `41`  `10`  `30`  `25` 
        <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcd~ Abcd~ Abcd~ Abcd~
        `17`   `26`  `48`  `37`  `49` 
        <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcd~ Abcd~ Abcd~ Abcd~
        `1`   `18`   `21`  `44`  `20` 
        <chr> <chr>  <chr> <chr> <chr>
      1 A     Abcde~ Abcd~ Abcd~ Abcd~
    Code
      options(width = 55)
      colonnade(df_str[c(41L, 4L, 25L, 31L, 8L, 22L, 19L, 10L, 29L, 21L, 34L, 5L, 26L,
        36L, 47L, 46L, 2L, 24L, 27L, 39L, 28L, 43L, 32L, 30L, 48L, 44L, 6L, 20L, 13L,
        15L, 18L, 42L, 9L, 12L, 37L, 45L, 16L, 40L, 11L, 14L, 38L, 1L, 7L, 3L, 23L,
        35L, 50L, 17L, 49L, 33L)], width = 855)
    Output
        `41`                                      `4`  
        <chr>                                     <chr>
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijA Abcd 
        `25`                     
        <chr>                    
      1 AbcdefghijAbcdefghijAbcde
        `31`                            `8`     
        <chr>                           <chr>   
      1 AbcdefghijAbcdefghijAbcdefghijA Abcdefgh
        `22`                   `19`                `10`      
        <chr>                  <chr>               <chr>     
      1 AbcdefghijAbcdefghijAb AbcdefghijAbcdefghi Abcdefghij
        `29`                          `21`                 
        <chr>                         <chr>                
      1 AbcdefghijAbcdefghijAbcdefghi AbcdefghijAbcdefghijA
        `34`                               `5`  
        <chr>                              <chr>
      1 AbcdefghijAbcdefghijAbcdefghijAbcd Abcde
        `26`                      
        <chr>                     
      1 AbcdefghijAbcdefghijAbcdef
        `36`                                
        <chr>                               
      1 AbcdefghijAbcdefghijAbcdefghijAbcdef
        `47`                                           
        <chr>                                          
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcdefg
        `46`                                           `2`  
        <chr>                                          <chr>
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcdef Ab   
        `24`                     `27`                       
        <chr>                    <chr>                      
      1 AbcdefghijAbcdefghijAbcd AbcdefghijAbcdefghijAbcdefg
        `39`                                   
        <chr>                                  
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghi
        `28`                         `43`          `32`      
        <chr>                        <chr>         <chr>     
      1 AbcdefghijAbcdefghijAbcdefgh AbcdefghijAb~ Abcdefghi~
        `30`  `48`  `44`  `6`   `20`  `13`  `15`  `18`  `42` 
        <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr>
      1 Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~
        `9`   `12`  `37`  `45`  `16`  `40`  `11`  `14`  `38` 
        <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr>
      1 Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~
        `1`   `7`   `3`   `23`  `35`  `50`  `17`  `49`  `33` 
        <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr>
      1 A     Abcd~ Abc   Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~
    Code
      options(width = 54)
      colonnade(df_str[c(27L, 22L, 9L, 23L, 16L, 19L, 25L, 31L, 44L, 1L, 28L, 46L,
        12L, 20L, 43L, 37L, 5L, 2L, 18L, 41L, 26L, 33L, 11L, 49L, 24L, 35L, 4L, 47L,
        30L, 7L, 34L, 3L, 32L, 42L, 10L, 45L, 38L, 39L, 48L, 14L, 6L, 17L, 36L, 50L,
        40L, 13L, 8L, 21L, 15L, 29L)], width = 552)
    Output
        `27`                        `22`                  
        <chr>                       <chr>                 
      1 AbcdefghijAbcdefghijAbcdefg AbcdefghijAbcdefghijAb
        `9`       `23`                    `16`            
        <chr>     <chr>                   <chr>           
      1 Abcdefghi AbcdefghijAbcdefghijAbc AbcdefghijAbcdef
        `19`                `25`                     
        <chr>               <chr>                    
      1 AbcdefghijAbcdefghi AbcdefghijAbcdefghijAbcde
        `31`                           
        <chr>                          
      1 AbcdefghijAbcdefghijAbcdefghijA
        `44`                                         `1`  
        <chr>                                        <chr>
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcd A    
        `28`                        
        <chr>                       
      1 AbcdefghijAbcdefghijAbcdefgh
        `46`      `12`   `20`   `43`     `37`    `5`   `2`  
        <chr>     <chr>  <chr>  <chr>    <chr>   <chr> <chr>
      1 Abcdefgh~ Abcde~ Abcde~ Abcdefg~ Abcdef~ Abcde Ab   
        `18`   `41`   `26`   `33`   `11`  `49`   `24`  `35` 
        <chr>  <chr>  <chr>  <chr>  <chr> <chr>  <chr> <chr>
      1 Abcde~ Abcde~ Abcde~ Abcde~ Abcd~ Abcde~ Abcd~ Abcd~
        `4`   `47`    `30`   `7`    `34`  `3`   `32`  `42`  
        <chr> <chr>   <chr>  <chr>  <chr> <chr> <chr> <chr> 
      1 Abcd  Abcdef~ Abcde~ Abcde~ Abcd~ Abc   Abcd~ Abcde~
        `10`   `45`    `38`   `39`  `48`   `14`  `6`   `17` 
        <chr>  <chr>   <chr>  <chr> <chr>  <chr> <chr> <chr>
      1 Abcde~ Abcdef~ Abcde~ Abcd~ Abcde~ Abcd~ Abcd~ Abcd~
        `36`   `50`    `40`    `13`  `8`   `21`  `15`  `29` 
        <chr>  <chr>   <chr>   <chr> <chr> <chr> <chr> <chr>
      1 Abcde~ Abcdef~ Abcdef~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~
    Code
      options(width = 49)
      colonnade(df_str[c(32L, 24L, 18L, 25L, 26L, 13L, 33L, 2L, 50L, 38L, 37L, 16L,
        27L, 9L, 28L, 49L, 34L, 15L, 17L, 35L, 22L, 47L, 3L, 21L, 23L, 41L, 5L, 1L,
        14L, 46L, 30L, 31L, 44L, 4L, 7L, 40L, 43L, 12L, 29L, 8L, 36L, 45L, 11L, 20L,
        10L, 6L, 19L, 48L, 39L, 42L)], width = 1031)
    Output
        `32`                            
        <chr>                           
      1 AbcdefghijAbcdefghijAbcdefghijAb
        `24`                     `18`              
        <chr>                    <chr>             
      1 AbcdefghijAbcdefghijAbcd AbcdefghijAbcdefgh
        `25`                     
        <chr>                    
      1 AbcdefghijAbcdefghijAbcde
        `26`                       `13`         
        <chr>                      <chr>        
      1 AbcdefghijAbcdefghijAbcdef AbcdefghijAbc
        `33`                              `2`  
        <chr>                             <chr>
      1 AbcdefghijAbcdefghijAbcdefghijAbc Ab   
        `50`                                           
        <chr>                                          
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcdef~
        `38`                                  
        <chr>                                 
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefgh
        `37`                                 
        <chr>                                
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefg
        `16`             `27`                       
        <chr>            <chr>                      
      1 AbcdefghijAbcdef AbcdefghijAbcdefghijAbcdefg
        `9`       `28`                        
        <chr>     <chr>                       
      1 Abcdefghi AbcdefghijAbcdefghijAbcdefgh
        `49`                                           
        <chr>                                          
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcdef~
        `34`                              
        <chr>                             
      1 AbcdefghijAbcdefghijAbcdefghijAbcd
        `15`            `17`             
        <chr>           <chr>            
      1 AbcdefghijAbcde AbcdefghijAbcdefg
        `35`                               
        <chr>                              
      1 AbcdefghijAbcdefghijAbcdefghijAbcde
        `22`                  
        <chr>                 
      1 AbcdefghijAbcdefghijAb
        `47`                                           
        <chr>                                          
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcdefg
        `3`   `21`                 
        <chr> <chr>                
      1 Abc   AbcdefghijAbcdefghijA
        `23`                   
        <chr>                  
      1 AbcdefghijAbcdefghijAbc
        `41`                                     
        <chr>                                    
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijA
        `5`   `1`   `14`  `46`  `30`  `31`  `44`  `4`  
        <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr>
      1 Abcde A     Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd 
        `7`   `40`  `43`  `12`  `29`  `8`   `36`  `45` 
        <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr>
      1 Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~
        `11`  `20`  `10`  `6`   `19`  `48`  `39`  `42` 
        <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr>
      1 Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~
    Code
      options(width = 38)
      colonnade(df_str[c(44L, 34L, 49L, 9L, 15L, 16L, 1L, 10L, 40L, 29L, 26L, 22L, 4L,
        43L, 20L, 17L, 46L, 33L, 35L, 32L, 2L, 12L, 8L, 37L, 23L, 39L, 7L, 18L, 36L,
        42L, 6L, 30L, 19L, 25L, 5L, 21L, 47L, 50L, 28L, 11L, 31L, 14L, 24L, 27L, 45L,
        41L, 38L, 3L, 13L, 48L)], width = 429)
    Output
        `44`                                
        <chr>                               
      1 AbcdefghijAbcdefghijAbcdefghijAbcde~
        `34`                              
        <chr>                             
      1 AbcdefghijAbcdefghijAbcdefghijAbcd
        `49`                                
        <chr>                               
      1 AbcdefghijAbcdefghijAbcdefghijAbcde~
        `9`       `15`           
        <chr>     <chr>          
      1 Abcdefghi AbcdefghijAbcde
        `16`             `1`   `10`      
        <chr>            <chr> <chr>     
      1 AbcdefghijAbcdef A     Abcdefghij
        `40`   `29`  `26`  `22`  `4`   `43` 
        <chr>  <chr> <chr> <chr> <chr> <chr>
      1 Abcde~ Abcd~ Abcd~ Abcd~ Abcd  Abcd~
        `20`   `17`  `46`  `33`  `35`  `32` 
        <chr>  <chr> <chr> <chr> <chr> <chr>
      1 Abcde~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~
        `2`   `12`   `8`   `37`  `23`  `39` 
        <chr> <chr>  <chr> <chr> <chr> <chr>
      1 Ab    Abcde~ Abcd~ Abcd~ Abcd~ Abcd~
        `7`    `18`  `36`  `42`  `6`   `30` 
        <chr>  <chr> <chr> <chr> <chr> <chr>
      1 Abcde~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~
        `19`   `25`  `5`   `21`  `47`  `50` 
        <chr>  <chr> <chr> <chr> <chr> <chr>
      1 Abcde~ Abcd~ Abcde Abcd~ Abcd~ Abcd~
        `28`   `11`  `31`  `14`  `24`  `27` 
        <chr>  <chr> <chr> <chr> <chr> <chr>
      1 Abcde~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~
        `45`   `41`  `38`  `3`   `13`  `48` 
        <chr>  <chr> <chr> <chr> <chr> <chr>
      1 Abcde~ Abcd~ Abcd~ Abc   Abcd~ Abcd~
    Code
      options(width = 54)
      colonnade(df_str[c(21L, 26L, 8L, 22L, 41L, 24L, 13L, 5L, 47L, 37L, 4L, 42L, 19L,
        34L, 11L, 43L, 38L, 3L, 33L, 20L, 31L, 2L, 18L, 48L, 27L, 44L, 9L, 35L, 30L,
        6L, 49L, 10L, 1L, 16L, 46L, 29L, 12L, 14L, 45L, 36L, 15L, 39L, 50L, 23L, 17L,
        28L, 7L, 32L, 40L, 25L)], width = 633)
    Output
        `21`                  `26`                      
        <chr>                 <chr>                     
      1 AbcdefghijAbcdefghijA AbcdefghijAbcdefghijAbcdef
        `8`      `22`                  
        <chr>    <chr>                 
      1 Abcdefgh AbcdefghijAbcdefghijAb
        `41`                                     
        <chr>                                    
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijA
        `24`                     `13`          `5`  
        <chr>                    <chr>         <chr>
      1 AbcdefghijAbcdefghijAbcd AbcdefghijAbc Abcde
        `47`                                           
        <chr>                                          
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcdefg
        `37`                                  `4`  
        <chr>                                 <chr>
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefg Abcd 
        `42`                                      
        <chr>                                     
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAb
        `19`                `34`   `11`   `43`   `38`  `3`  
        <chr>               <chr>  <chr>  <chr>  <chr> <chr>
      1 AbcdefghijAbcdefghi Abcde~ Abcde~ Abcde~ Abcd~ Abc  
        `33`   `20`   `31`   `2`   `18`  `48`   `27`  `44`  
        <chr>  <chr>  <chr>  <chr> <chr> <chr>  <chr> <chr> 
      1 Abcde~ Abcde~ Abcde~ Ab    Abcd~ Abcde~ Abcd~ Abcde~
        `9`    `35`    `30`   `6`   `49`   `10`  `1`   `16` 
        <chr>  <chr>   <chr>  <chr> <chr>  <chr> <chr> <chr>
      1 Abcde~ Abcdef~ Abcde~ Abcd~ Abcde~ Abcd~ A     Abcd~
        `46`    `29`   `12`   `14`  `45`   `36`  `15`  `39` 
        <chr>   <chr>  <chr>  <chr> <chr>  <chr> <chr> <chr>
      1 Abcdef~ Abcde~ Abcde~ Abcd~ Abcde~ Abcd~ Abcd~ Abcd~
        `50`    `23`   `17`   `28`   `7`   `32`  `40`  `25` 
        <chr>   <chr>  <chr>  <chr>  <chr> <chr> <chr> <chr>
      1 Abcdef~ Abcde~ Abcde~ Abcde~ Abcd~ Abcd~ Abcd~ Abcd~
    Code
      options(width = 39)
      colonnade(df_str[c(23L, 49L, 13L, 37L, 3L, 25L, 36L, 4L, 9L, 7L, 27L, 48L, 12L,
        10L, 50L, 14L, 38L, 39L, 46L, 22L, 28L, 8L, 21L, 44L, 32L, 40L, 31L, 1L, 29L,
        34L, 35L, 33L, 19L, 15L, 41L, 20L, 47L, 18L, 16L, 45L, 6L, 5L, 24L, 26L, 43L,
        11L, 42L, 30L, 17L, 2L)], width = 1496)
    Output
        `23`                   
        <chr>                  
      1 AbcdefghijAbcdefghijAbc
        `49`                                 
        <chr>                                
      1 AbcdefghijAbcdefghijAbcdefghijAbcdef~
        `13`         
        <chr>        
      1 AbcdefghijAbc
        `37`                                 
        <chr>                                
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefg
        `3`   `25`                     
        <chr> <chr>                    
      1 Abc   AbcdefghijAbcdefghijAbcde
        `36`                                
        <chr>                               
      1 AbcdefghijAbcdefghijAbcdefghijAbcdef
        `4`   `9`       `7`    
        <chr> <chr>     <chr>  
      1 Abcd  Abcdefghi Abcdefg
        `27`                       
        <chr>                      
      1 AbcdefghijAbcdefghijAbcdefg
        `48`                                 
        <chr>                                
      1 AbcdefghijAbcdefghijAbcdefghijAbcdef~
        `12`         `10`      
        <chr>        <chr>     
      1 AbcdefghijAb Abcdefghij
        `50`                                 
        <chr>                                
      1 AbcdefghijAbcdefghijAbcdefghijAbcdef~
        `14`          
        <chr>         
      1 AbcdefghijAbcd
        `38`                                 
        <chr>                                
      1 AbcdefghijAbcdefghijAbcdefghijAbcdef~
        `39`                                 
        <chr>                                
      1 AbcdefghijAbcdefghijAbcdefghijAbcdef~
        `46`                                 
        <chr>                                
      1 AbcdefghijAbcdefghijAbcdefghijAbcdef~
        `22`                  
        <chr>                 
      1 AbcdefghijAbcdefghijAb
        `28`                         `8`     
        <chr>                        <chr>   
      1 AbcdefghijAbcdefghijAbcdefgh Abcdefgh
        `21`                 
        <chr>                
      1 AbcdefghijAbcdefghijA
        `44`                                 
        <chr>                                
      1 AbcdefghijAbcdefghijAbcdefghijAbcdef~
        `32`                            
        <chr>                           
      1 AbcdefghijAbcdefghijAbcdefghijAb
        `40`                                 
        <chr>                                
      1 AbcdefghijAbcdefghijAbcdefghijAbcdef~
        `31`                            `1`  
        <chr>                           <chr>
      1 AbcdefghijAbcdefghijAbcdefghijA A    
        `29`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefghi
        `34`                              
        <chr>                             
      1 AbcdefghijAbcdefghijAbcdefghijAbcd
        `35`                               
        <chr>                              
      1 AbcdefghijAbcdefghijAbcdefghijAbcde
        `33`                             
        <chr>                            
      1 AbcdefghijAbcdefghijAbcdefghijAbc
        `19`                `15`           
        <chr>               <chr>          
      1 AbcdefghijAbcdefghi AbcdefghijAbcde
        `41`                                 
        <chr>                                
      1 AbcdefghijAbcdefghijAbcdefghijAbcdef~
        `20`                
        <chr>               
      1 AbcdefghijAbcdefghij
        `47`                                 
        <chr>                                
      1 AbcdefghijAbcdefghijAbcdefghijAbcdef~
        `18`               `16`            
        <chr>              <chr>           
      1 AbcdefghijAbcdefgh AbcdefghijAbcdef
        `45`                                 
        <chr>                                
      1 AbcdefghijAbcdefghijAbcdefghijAbcdef~
        `6`    `5`   `24`                    
        <chr>  <chr> <chr>                   
      1 Abcdef Abcde AbcdefghijAbcdefghijAbcd
        `26`                      
        <chr>                     
      1 AbcdefghijAbcdefghijAbcdef
        `43`                                 
        <chr>                                
      1 AbcdefghijAbcdefghijAbcdefghijAbcdef~
        `11`       
        <chr>      
      1 AbcdefghijA
        `42`                                 
        <chr>                                
      1 AbcdefghijAbcdefghijAbcdefghijAbcdef~
        `30`                          
        <chr>                         
      1 AbcdefghijAbcdefghijAbcdefghij
        `17`              `2`  
        <chr>             <chr>
      1 AbcdefghijAbcdefg Ab   
    Code
      options(width = 31)
      colonnade(df_str[c(45L, 14L, 49L, 24L, 22L, 31L, 42L, 18L, 16L, 47L, 25L, 4L,
        37L, 8L, 26L, 21L, 50L, 5L, 41L, 30L, 2L, 33L, 34L, 3L, 44L, 19L, 43L, 6L,
        32L, 29L, 20L, 1L, 13L, 11L, 40L, 12L, 48L, 23L, 9L, 15L, 46L, 36L, 27L, 35L,
        28L, 10L, 7L, 39L, 17L, 38L)], width = 493)
    Output
        `45`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefgh~
        `14`          
        <chr>         
      1 AbcdefghijAbcd
        `49`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefgh~
        `24`                    
        <chr>                   
      1 AbcdefghijAbcdefghijAbcd
        `22`                  
        <chr>                 
      1 AbcdefghijAbcdefghijAb
        `31`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefgh~
        `42`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefgh~
        `18`      `16`    `47`       
        <chr>     <chr>   <chr>      
      1 Abcdefgh~ Abcdef~ Abcdefghij~
        `25`  `4`   `37`  `8`   `26` 
        <chr> <chr> <chr> <chr> <chr>
      1 Abcd~ Abcd  Abcd~ Abcd~ Abcd~
        `21`  `50`  `5`   `41`  `30` 
        <chr> <chr> <chr> <chr> <chr>
      1 Abcd~ Abcd~ Abcde Abcd~ Abcd~
        `2`   `33`  `34`  `3`   `44` 
        <chr> <chr> <chr> <chr> <chr>
      1 Ab    Abcd~ Abcd~ Abc   Abcd~
        `19`  `43`  `6`   `32`  `29` 
        <chr> <chr> <chr> <chr> <chr>
      1 Abcd~ Abcd~ Abcd~ Abcd~ Abcd~
        `20`  `1`   `13`  `11`  `40` 
        <chr> <chr> <chr> <chr> <chr>
      1 Abcd~ A     Abcd~ Abcd~ Abcd~
        `12`  `48`  `23`  `9`   `15` 
        <chr> <chr> <chr> <chr> <chr>
      1 Abcd~ Abcd~ Abcd~ Abcd~ Abcd~
        `46`  `36`  `27`  `35`  `28` 
        <chr> <chr> <chr> <chr> <chr>
      1 Abcd~ Abcd~ Abcd~ Abcd~ Abcd~
        `10`  `7`   `39`  `17`  `38` 
        <chr> <chr> <chr> <chr> <chr>
      1 Abcd~ Abcd~ Abcd~ Abcd~ Abcd~
    Code
      options(width = 52)
      colonnade(df_str[c(38L, 46L, 17L, 11L, 24L, 18L, 16L, 39L, 50L, 42L, 6L, 13L,
        37L, 29L, 41L, 47L, 9L, 33L, 44L, 31L, 45L, 36L, 28L, 5L, 10L, 30L, 20L, 1L,
        14L, 43L, 49L, 23L, 26L, 21L, 32L, 19L, 34L, 15L, 48L, 4L, 7L, 35L, 40L, 8L,
        22L, 3L, 25L, 12L, 27L, 2L)], width = 1130)
    Output
        `38`                                  
        <chr>                                 
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefgh
        `46`                                          
        <chr>                                         
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcdef
        `17`              `11`       
        <chr>             <chr>      
      1 AbcdefghijAbcdefg AbcdefghijA
        `24`                     `18`              
        <chr>                    <chr>             
      1 AbcdefghijAbcdefghijAbcd AbcdefghijAbcdefgh
        `16`            
        <chr>           
      1 AbcdefghijAbcdef
        `39`                                   
        <chr>                                  
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghi
        `50`                                              
        <chr>                                             
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcdefghij
        `42`                                       `6`   
        <chr>                                      <chr> 
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAb Abcdef
        `13`         
        <chr>        
      1 AbcdefghijAbc
        `37`                                 
        <chr>                                
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefg
        `29`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefghi
        `41`                                     
        <chr>                                    
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijA
        `47`                                           
        <chr>                                          
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcdefg
        `9`       `33`                             
        <chr>     <chr>                            
      1 Abcdefghi AbcdefghijAbcdefghijAbcdefghijAbc
        `44`                                        
        <chr>                                       
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcd
        `31`                           
        <chr>                          
      1 AbcdefghijAbcdefghijAbcdefghijA
        `45`                                         
        <chr>                                        
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcde
        `36`                                
        <chr>                               
      1 AbcdefghijAbcdefghijAbcdefghijAbcdef
        `28`                         `5`   `10`   `30`    
        <chr>                        <chr> <chr>  <chr>   
      1 AbcdefghijAbcdefghijAbcdefgh Abcde Abcde~ Abcdefg~
        `20`   `1`   `14`   `43`   `49`  `23`  `26`  `21` 
        <chr>  <chr> <chr>  <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ A     Abcde~ Abcde~ Abcd~ Abcd~ Abcd~ Abcd~
        `32`   `19`   `34`   `15`  `48`  `4`   `7`   `35` 
        <chr>  <chr>  <chr>  <chr> <chr> <chr> <chr> <chr>
      1 Abcde~ Abcde~ Abcde~ Abcd~ Abcd~ Abcd  Abcd~ Abcd~
        `40`    `8`    `22`  `3`   `25`  `12`  `27`  `2`  
        <chr>   <chr>  <chr> <chr> <chr> <chr> <chr> <chr>
      1 Abcdef~ Abcde~ Abcd~ Abc   Abcd~ Abcd~ Abcd~ Ab   
    Code
      options(width = 58)
      colonnade(df_str[c(17L, 28L, 29L, 27L, 20L, 31L, 43L, 30L, 32L, 48L, 10L, 50L,
        13L, 12L, 36L, 21L, 46L, 33L, 25L, 35L, 1L, 5L, 16L, 34L, 18L, 42L, 3L, 11L,
        40L, 26L, 37L, 7L, 39L, 6L, 4L, 19L, 8L, 45L, 14L, 24L, 23L, 2L, 47L, 9L, 49L,
        41L, 38L, 22L, 44L, 15L)], width = 1310)
    Output
        `17`              `28`                        
        <chr>             <chr>                       
      1 AbcdefghijAbcdefg AbcdefghijAbcdefghijAbcdefgh
        `29`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefghi
        `27`                        `20`                
        <chr>                       <chr>               
      1 AbcdefghijAbcdefghijAbcdefg AbcdefghijAbcdefghij
        `31`                           
        <chr>                          
      1 AbcdefghijAbcdefghijAbcdefghijA
        `43`                                       
        <chr>                                      
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbc
        `30`                          
        <chr>                         
      1 AbcdefghijAbcdefghijAbcdefghij
        `32`                            
        <chr>                           
      1 AbcdefghijAbcdefghijAbcdefghijAb
        `48`                                            
        <chr>                                           
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcdefgh
        `10`      
        <chr>     
      1 Abcdefghij
        `50`                                              
        <chr>                                             
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcdefghij
        `13`          `12`        
        <chr>         <chr>       
      1 AbcdefghijAbc AbcdefghijAb
        `36`                                
        <chr>                               
      1 AbcdefghijAbcdefghijAbcdefghijAbcdef
        `21`                 
        <chr>                
      1 AbcdefghijAbcdefghijA
        `46`                                          
        <chr>                                         
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcdef
        `33`                             
        <chr>                            
      1 AbcdefghijAbcdefghijAbcdefghijAbc
        `25`                     
        <chr>                    
      1 AbcdefghijAbcdefghijAbcde
        `35`                                `1`   `5`  
        <chr>                               <chr> <chr>
      1 AbcdefghijAbcdefghijAbcdefghijAbcde A     Abcde
        `16`             `34`                              
        <chr>            <chr>                             
      1 AbcdefghijAbcdef AbcdefghijAbcdefghijAbcdefghijAbcd
        `18`              
        <chr>             
      1 AbcdefghijAbcdefgh
        `42`                                       `3`  
        <chr>                                      <chr>
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAb Abc  
        `11`        `40`           `26`       `37`         `7`  
        <chr>       <chr>          <chr>      <chr>        <chr>
      1 AbcdefghijA AbcdefghijAbc~ Abcdefghi~ AbcdefghijA~ Abcd~
        `39`   `6`    `4`   `19`   `8`   `45`  `14`  `24`  `23` 
        <chr>  <chr>  <chr> <chr>  <chr> <chr> <chr> <chr> <chr>
      1 Abcde~ Abcdef Abcd  Abcde~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~
        `2`   `47`   `9`    `49`   `41`  `38`  `22`  `44`  `15` 
        <chr> <chr>  <chr>  <chr>  <chr> <chr> <chr> <chr> <chr>
      1 Ab    Abcde~ Abcde~ Abcde~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~
    Code
      options(width = 47)
      colonnade(df_str[c(1L, 26L, 20L, 12L, 49L, 16L, 24L, 4L, 15L, 47L, 8L, 11L, 14L,
        50L, 17L, 2L, 44L, 30L, 36L, 45L, 25L, 38L, 18L, 29L, 5L, 13L, 3L, 23L, 48L,
        40L, 34L, 22L, 39L, 33L, 27L, 7L, 19L, 10L, 37L, 6L, 35L, 46L, 31L, 41L, 43L,
        28L, 42L, 32L, 21L, 9L)], width = 484)
    Output
        `1`   `26`                      
        <chr> <chr>                     
      1 A     AbcdefghijAbcdefghijAbcdef
        `20`                 `12`        
        <chr>                <chr>       
      1 AbcdefghijAbcdefghij AbcdefghijAb
        `49`                                         
        <chr>                                        
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcd~
        `16`             `24`                    
        <chr>            <chr>                   
      1 AbcdefghijAbcdef AbcdefghijAbcdefghijAbcd
        `4`  
        <chr>
      1 Abcd 
        `15`   `47`    `8`   `11`  `14`  `50`   `17` 
        <chr>  <chr>   <chr> <chr> <chr> <chr>  <chr>
      1 Abcde~ Abcdef~ Abcd~ Abcd~ Abcd~ Abcde~ Abcd~
        `2`   `44`   `30`   `36`   `45`   `25`  `38` 
        <chr> <chr>  <chr>  <chr>  <chr>  <chr> <chr>
      1 Ab    Abcde~ Abcde~ Abcde~ Abcde~ Abcd~ Abcd~
        `18`   `29`   `5`   `13`   `3`   `23`  `48`  
        <chr>  <chr>  <chr> <chr>  <chr> <chr> <chr> 
      1 Abcde~ Abcde~ Abcde Abcde~ Abc   Abcd~ Abcde~
        `40`   `34`   `22`   `39`   `33`  `27`  `7`  
        <chr>  <chr>  <chr>  <chr>  <chr> <chr> <chr>
      1 Abcde~ Abcde~ Abcde~ Abcde~ Abcd~ Abcd~ Abcd~
        `19`   `10`   `37`   `6`   `35`  `46`   `31` 
        <chr>  <chr>  <chr>  <chr> <chr> <chr>  <chr>
      1 Abcde~ Abcde~ Abcde~ Abcd~ Abcd~ Abcde~ Abcd~
        `41`   `43`   `28`   `42`   `32`  `21`  `9`  
        <chr>  <chr>  <chr>  <chr>  <chr> <chr> <chr>
      1 Abcde~ Abcde~ Abcde~ Abcde~ Abcd~ Abcd~ Abcd~
    Code
      options(width = 55)
      colonnade(df_str[c(6L, 49L, 26L, 45L, 25L, 15L, 31L, 20L, 21L, 44L, 23L, 48L,
        37L, 36L, 5L, 43L, 11L, 14L, 13L, 39L, 16L, 12L, 4L, 18L, 42L, 3L, 10L, 28L,
        40L, 24L, 29L, 17L, 35L, 47L, 2L, 38L, 34L, 9L, 7L, 8L, 50L, 33L, 32L, 27L,
        46L, 19L, 22L, 41L, 30L, 1L)], width = 779)
    Output
        `6`   
        <chr> 
      1 Abcdef
        `49`                                             
        <chr>                                            
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcdefghi
        `26`                      
        <chr>                     
      1 AbcdefghijAbcdefghijAbcdef
        `45`                                         
        <chr>                                        
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcde
        `25`                      `15`           
        <chr>                     <chr>          
      1 AbcdefghijAbcdefghijAbcde AbcdefghijAbcde
        `31`                            `20`                
        <chr>                           <chr>               
      1 AbcdefghijAbcdefghijAbcdefghijA AbcdefghijAbcdefghij
        `21`                 
        <chr>                
      1 AbcdefghijAbcdefghijA
        `44`                                        
        <chr>                                       
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcd
        `23`                   
        <chr>                  
      1 AbcdefghijAbcdefghijAbc
        `48`                                            
        <chr>                                           
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcdefgh
        `37`                                  `36`           
        <chr>                                 <chr>          
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefg AbcdefghijAbcd~
        `5`   `43`  `11`  `14`  `13`  `39`  `16`  `12`  `4`  
        <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr>
      1 Abcde Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd 
        `18`  `42`  `3`   `10`  `28`  `40`  `24`  `29`  `17` 
        <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr>
      1 Abcd~ Abcd~ Abc   Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~
        `35`  `47`  `2`   `38`  `34`  `9`   `7`   `8`   `50` 
        <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr>
      1 Abcd~ Abcd~ Ab    Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~
        `33`  `32`  `27`  `46`  `19`  `22`  `41`  `30`  `1`  
        <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr>
      1 Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ A    
    Code
      options(width = 46)
      colonnade(df_str[c(38L, 42L, 41L, 10L, 40L, 11L, 27L, 9L, 17L, 37L, 46L, 13L,
        36L, 18L, 31L, 20L, 39L, 12L, 44L, 33L, 50L, 34L, 26L, 32L, 23L, 30L, 29L,
        21L, 4L, 49L, 19L, 25L, 3L, 6L, 15L, 14L, 43L, 48L, 8L, 22L, 1L, 2L, 45L, 35L,
        16L, 5L, 47L, 28L, 24L, 7L)], width = 694)
    Output
        `38`                                  
        <chr>                                 
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefgh
        `42`                                      
        <chr>                                     
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAb
        `41`                                     
        <chr>                                    
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijA
        `10`      
        <chr>     
      1 Abcdefghij
        `40`                                    
        <chr>                                   
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghij
        `11`        `27`                       
        <chr>       <chr>                      
      1 AbcdefghijA AbcdefghijAbcdefghijAbcdefg
        `9`       `17`             
        <chr>     <chr>            
      1 Abcdefghi AbcdefghijAbcdefg
        `37`                                 
        <chr>                                
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefg
        `46`                                        
        <chr>                                       
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbc~
        `13`         
        <chr>        
      1 AbcdefghijAbc
        `36`              `18`       `31`           
        <chr>             <chr>      <chr>          
      1 AbcdefghijAbcdef~ Abcdefghi~ AbcdefghijAbcd~
        `20`   `39`   `12`   `44`  `33`  `50`  `34` 
        <chr>  <chr>  <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcde~ Abcde~ Abcd~ Abcd~ Abcd~ Abcd~
        `26`   `32`   `23`   `30`  `29`  `21`  `4`  
        <chr>  <chr>  <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcde~ Abcde~ Abcd~ Abcd~ Abcd~ Abcd 
        `49`    `19`   `25`  `3`   `6`   `15`  `14` 
        <chr>   <chr>  <chr> <chr> <chr> <chr> <chr>
      1 Abcdef~ Abcde~ Abcd~ Abc   Abcd~ Abcd~ Abcd~
        `43`   `48`   `8`    `22`  `1`   `2`   `45` 
        <chr>  <chr>  <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcde~ Abcde~ Abcd~ A     Ab    Abcd~
        `35`   `16`   `5`   `47`   `28`  `24`  `7`  
        <chr>  <chr>  <chr> <chr>  <chr> <chr> <chr>
      1 Abcde~ Abcde~ Abcde Abcde~ Abcd~ Abcd~ Abcd~

