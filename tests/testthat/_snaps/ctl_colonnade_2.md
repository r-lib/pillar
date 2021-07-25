# strings with varying widths

    Code
      ctl_colonnade(df_str[c(28L, 34L, 16L, 29L, 47L, 25L, 42L, 27L, 44L, 20L, 14L,
        36L, 43L, 41L, 26L, 45L, 22L, 9L, 13L, 32L, 31L, 12L, 19L, 48L, 49L, 35L, 3L,
        11L, 23L, 24L, 40L, 15L, 38L, 10L, 46L, 5L, 50L, 18L, 21L, 6L, 30L, 2L, 7L,
        1L, 4L, 8L, 17L, 33L, 39L, 37L)], width = {
        options(width = 54)
        516
      })
    Output
      $body
        `28`                        
        <chr>                       
      1 AbcdefghijAbcdefghijAbcdefgh
        `34`                               `16`            
        <chr>                              <chr>           
      1 AbcdefghijAbcdefghijAbcdefghijAbcd AbcdefghijAbcdef
        `29`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefghi
        `47`                                           
        <chr>                                          
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcdefg
        `25`                      `42`   `27`   `44`   `20` 
        <chr>                     <chr>  <chr>  <chr>  <chr>
      1 AbcdefghijAbcdefghijAbcde Abcde~ Abcde~ Abcde~ Abcd~
        `14`   `36`   `43`   `41`   `26`  `45`   `22`  `9`  
        <chr>  <chr>  <chr>  <chr>  <chr> <chr>  <chr> <chr>
      1 Abcde~ Abcde~ Abcde~ Abcde~ Abcd~ Abcde~ Abcd~ Abcd~
        `13`   `32`   `31`   `12`  `19`  `48`   `49`   `35` 
        <chr>  <chr>  <chr>  <chr> <chr> <chr>  <chr>  <chr>
      1 Abcde~ Abcde~ Abcde~ Abcd~ Abcd~ Abcde~ Abcde~ Abcd~
        `3`   `11`   `23`   `24`   `40`   `15`  `38`   `10` 
        <chr> <chr>  <chr>  <chr>  <chr>  <chr> <chr>  <chr>
      1 Abc   Abcde~ Abcde~ Abcde~ Abcde~ Abcd~ Abcde~ Abcd~
        `46`    `5`   `50`    `18`   `21`  `6`   `30`  `2`  
        <chr>   <chr> <chr>   <chr>  <chr> <chr> <chr> <chr>
      1 Abcdef~ Abcde Abcdef~ Abcde~ Abcd~ Abcd~ Abcd~ Ab   
        `7`    `1`   `4`   `8`    `17`  `33`   `39`   `37`  
        <chr>  <chr> <chr> <chr>  <chr> <chr>  <chr>  <chr> 
      1 Abcde~ A     Abcd  Abcde~ Abcd~ Abcde~ Abcde~ Abcde~
      
      $extra_cols
      named list()
      
    Code
      ctl_colonnade(df_str[c(28L, 41L, 12L, 29L, 13L, 43L, 24L, 50L, 48L, 35L, 44L,
        21L, 33L, 45L, 47L, 34L, 25L, 14L, 18L, 23L, 7L, 3L, 42L, 36L, 11L, 2L, 20L,
        31L, 1L, 4L, 38L, 9L, 27L, 40L, 32L, 17L, 6L, 49L, 16L, 19L, 15L, 22L, 39L,
        10L, 46L, 5L, 30L, 8L, 26L, 37L)], width = {
        options(width = 42)
        1365
      })
    Output
      $body
        `28`                        
        <chr>                       
      1 AbcdefghijAbcdefghijAbcdefgh
        `41`                                    
        <chr>                                   
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghi~
        `12`        
        <chr>       
      1 AbcdefghijAb
        `29`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefghi
        `13`         
        <chr>        
      1 AbcdefghijAbc
        `43`                                    
        <chr>                                   
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghi~
        `24`                    
        <chr>                   
      1 AbcdefghijAbcdefghijAbcd
        `50`                                    
        <chr>                                   
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghi~
        `48`                                    
        <chr>                                   
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghi~
        `35`                               
        <chr>                              
      1 AbcdefghijAbcdefghijAbcdefghijAbcde
        `44`                                    
        <chr>                                   
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghi~
        `21`                 
        <chr>                
      1 AbcdefghijAbcdefghijA
        `33`                             
        <chr>                            
      1 AbcdefghijAbcdefghijAbcdefghijAbc
        `45`                                    
        <chr>                                   
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghi~
        `47`                                    
        <chr>                                   
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghi~
        `34`                              
        <chr>                             
      1 AbcdefghijAbcdefghijAbcdefghijAbcd
        `25`                      `14`          
        <chr>                     <chr>         
      1 AbcdefghijAbcdefghijAbcde AbcdefghijAbcd
        `18`              
        <chr>             
      1 AbcdefghijAbcdefgh
        `23`                    `7`     `3`  
        <chr>                   <chr>   <chr>
      1 AbcdefghijAbcdefghijAbc Abcdefg Abc  
        `42`                                    
        <chr>                                   
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghi~
        `36`                                
        <chr>                               
      1 AbcdefghijAbcdefghijAbcdefghijAbcdef
        `11`        `2`   `20`                
        <chr>       <chr> <chr>               
      1 AbcdefghijA Ab    AbcdefghijAbcdefghij
        `31`                            `1`  
        <chr>                           <chr>
      1 AbcdefghijAbcdefghijAbcdefghijA A    
        `4`  
        <chr>
      1 Abcd 
        `38`                                  
        <chr>                                 
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefgh
        `9`       `27`                       
        <chr>     <chr>                      
      1 Abcdefghi AbcdefghijAbcdefghijAbcdefg
        `40`                                    
        <chr>                                   
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghij
        `32`                            
        <chr>                           
      1 AbcdefghijAbcdefghijAbcdefghijAb
        `17`              `6`   
        <chr>             <chr> 
      1 AbcdefghijAbcdefg Abcdef
        `49`                                    
        <chr>                                   
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghi~
        `16`             `19`               
        <chr>            <chr>              
      1 AbcdefghijAbcdef AbcdefghijAbcdefghi
        `15`            `22`     `39`      `10` 
        <chr>           <chr>    <chr>     <chr>
      1 AbcdefghijAbcde Abcdefg~ Abcdefgh~ Abcd~
        `46`    `5`   `30`    `8`   `26`  `37`  
        <chr>   <chr> <chr>   <chr> <chr> <chr> 
      1 Abcdef~ Abcde Abcdef~ Abcd~ Abcd~ Abcde~
      
      $extra_cols
      named list()
      
    Code
      ctl_colonnade(df_str[c(40L, 17L, 13L, 23L, 22L, 2L, 18L, 3L, 29L, 45L, 14L, 19L,
        33L, 37L, 47L, 43L, 44L, 10L, 31L, 27L, 34L, 35L, 41L, 21L, 4L, 25L, 38L, 48L,
        9L, 24L, 26L, 39L, 20L, 36L, 42L, 16L, 6L, 11L, 7L, 12L, 1L, 46L, 15L, 5L, 8L,
        50L, 32L, 30L, 49L, 28L)], width = {
        options(width = 39)
        934
      })
    Output
      $body
        `40`                                 
        <chr>                                
      1 AbcdefghijAbcdefghijAbcdefghijAbcdef~
        `17`              `13`         
        <chr>             <chr>        
      1 AbcdefghijAbcdefg AbcdefghijAbc
        `23`                   
        <chr>                  
      1 AbcdefghijAbcdefghijAbc
        `22`                   `2`  
        <chr>                  <chr>
      1 AbcdefghijAbcdefghijAb Ab   
        `18`               `3`  
        <chr>              <chr>
      1 AbcdefghijAbcdefgh Abc  
        `29`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefghi
        `45`                                 
        <chr>                                
      1 AbcdefghijAbcdefghijAbcdefghijAbcdef~
        `14`           `19`               
        <chr>          <chr>              
      1 AbcdefghijAbcd AbcdefghijAbcdefghi
        `33`                             
        <chr>                            
      1 AbcdefghijAbcdefghijAbcdefghijAbc
        `37`                                 
        <chr>                                
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefg
        `47`                                 
        <chr>                                
      1 AbcdefghijAbcdefghijAbcdefghijAbcdef~
        `43`                                 
        <chr>                                
      1 AbcdefghijAbcdefghijAbcdefghijAbcdef~
        `44`                                 
        <chr>                                
      1 AbcdefghijAbcdefghijAbcdefghijAbcdef~
        `10`      
        <chr>     
      1 Abcdefghij
        `31`                           
        <chr>                          
      1 AbcdefghijAbcdefghijAbcdefghijA
        `27`                       
        <chr>                      
      1 AbcdefghijAbcdefghijAbcdefg
        `34`                              
        <chr>                             
      1 AbcdefghijAbcdefghijAbcdefghijAbcd
        `35`                               
        <chr>                              
      1 AbcdefghijAbcdefghijAbcdefghijAbcde
        `41`                                 
        <chr>                                
      1 AbcdefghijAbcdefghijAbcdefghijAbcdef~
        `21`                  `4`   `25`     
        <chr>                 <chr> <chr>    
      1 AbcdefghijAbcdefghijA Abcd  Abcdefgh~
        `38`   `48`   `9`   `24`  `26`  `39` 
        <chr>  <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcde~ Abcd~ Abcd~ Abcd~ Abcd~
        `20`   `36`   `42`  `16`  `6`   `11` 
        <chr>  <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcde~ Abcd~ Abcd~ Abcd~ Abcd~
        `7`    `12`  `1`   `46`   `15`  `5`  
        <chr>  <chr> <chr> <chr>  <chr> <chr>
      1 Abcde~ Abcd~ A     Abcde~ Abcd~ Abcde
        `8`    `50`   `32`  `30`  `49`  `28` 
        <chr>  <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcde~ Abcd~ Abcd~ Abcd~ Abcd~
      
      $extra_cols
      named list()
      
    Code
      ctl_colonnade(df_str[c(11L, 36L, 17L, 14L, 31L, 35L, 23L, 13L, 6L, 44L, 45L,
        22L, 21L, 18L, 33L, 10L, 43L, 2L, 46L, 34L, 3L, 19L, 1L, 38L, 9L, 37L, 5L, 8L,
        25L, 49L, 27L, 29L, 15L, 39L, 24L, 40L, 48L, 26L, 47L, 42L, 41L, 12L, 28L,
        30L, 7L, 16L, 4L, 50L, 20L, 32L)], width = {
        options(width = 32)
        565
      })
    Output
      $body
        `11`       
        <chr>      
      1 AbcdefghijA
        `36`                          
        <chr>                         
      1 AbcdefghijAbcdefghijAbcdefghi~
        `17`             
        <chr>            
      1 AbcdefghijAbcdefg
        `14`          
        <chr>         
      1 AbcdefghijAbcd
        `31`                          
        <chr>                         
      1 AbcdefghijAbcdefghijAbcdefghi~
        `35`                          
        <chr>                         
      1 AbcdefghijAbcdefghijAbcdefghi~
        `23`                   
        <chr>                  
      1 AbcdefghijAbcdefghijAbc
        `13`          `6`   
        <chr>         <chr> 
      1 AbcdefghijAbc Abcdef
        `44`                          
        <chr>                         
      1 AbcdefghijAbcdefghijAbcdefghi~
        `45`                          
        <chr>                         
      1 AbcdefghijAbcdefghijAbcdefghi~
        `22`    `21`    `18`   `33`   
        <chr>   <chr>   <chr>  <chr>  
      1 Abcdef~ Abcdef~ Abcde~ Abcdef~
        `10`   `43`  `2`   `46`  `34` 
        <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcd~ Ab    Abcd~ Abcd~
        `3`   `19`   `1`   `38`  `9`  
        <chr> <chr>  <chr> <chr> <chr>
      1 Abc   Abcde~ A     Abcd~ Abcd~
        `37`   `5`   `8`   `25`  `49` 
        <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcde Abcd~ Abcd~ Abcd~
        `27`   `29`  `15`  `39`  `24` 
        <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcd~ Abcd~ Abcd~ Abcd~
        `40`   `48`  `26`  `47`  `42` 
        <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcd~ Abcd~ Abcd~ Abcd~
        `41`   `12`  `28`  `30`  `7`  
        <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcd~ Abcd~ Abcd~ Abcd~
        `16`   `4`   `50`  `20`  `32` 
        <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcd  Abcd~ Abcd~ Abcd~
      
      $extra_cols
      named list()
      
    Code
      ctl_colonnade(df_str[c(18L, 46L, 11L, 43L, 31L, 47L, 48L, 44L, 50L, 15L, 28L,
        33L, 13L, 4L, 22L, 3L, 37L, 32L, 40L, 9L, 25L, 16L, 45L, 23L, 21L, 6L, 49L,
        36L, 27L, 38L, 14L, 34L, 8L, 24L, 29L, 1L, 12L, 2L, 20L, 17L, 35L, 5L, 19L,
        30L, 7L, 26L, 42L, 41L, 39L, 10L)], width = {
        options(width = 35)
        1121
      })
    Output
      $body
        `18`              
        <chr>             
      1 AbcdefghijAbcdefgh
        `46`                             
        <chr>                            
      1 AbcdefghijAbcdefghijAbcdefghijAb~
        `11`       
        <chr>      
      1 AbcdefghijA
        `43`                             
        <chr>                            
      1 AbcdefghijAbcdefghijAbcdefghijAb~
        `31`                           
        <chr>                          
      1 AbcdefghijAbcdefghijAbcdefghijA
        `47`                             
        <chr>                            
      1 AbcdefghijAbcdefghijAbcdefghijAb~
        `48`                             
        <chr>                            
      1 AbcdefghijAbcdefghijAbcdefghijAb~
        `44`                             
        <chr>                            
      1 AbcdefghijAbcdefghijAbcdefghijAb~
        `50`                             
        <chr>                            
      1 AbcdefghijAbcdefghijAbcdefghijAb~
        `15`           
        <chr>          
      1 AbcdefghijAbcde
        `28`                        
        <chr>                       
      1 AbcdefghijAbcdefghijAbcdefgh
        `33`                             
        <chr>                            
      1 AbcdefghijAbcdefghijAbcdefghijAbc
        `13`          `4`  
        <chr>         <chr>
      1 AbcdefghijAbc Abcd 
        `22`                   `3`  
        <chr>                  <chr>
      1 AbcdefghijAbcdefghijAb Abc  
        `37`                             
        <chr>                            
      1 AbcdefghijAbcdefghijAbcdefghijAb~
        `32`                            
        <chr>                           
      1 AbcdefghijAbcdefghijAbcdefghijAb
        `40`                             
        <chr>                            
      1 AbcdefghijAbcdefghijAbcdefghijAb~
        `9`      
        <chr>    
      1 Abcdefghi
        `25`                     
        <chr>                    
      1 AbcdefghijAbcdefghijAbcde
        `16`            
        <chr>           
      1 AbcdefghijAbcdef
        `45`                             
        <chr>                            
      1 AbcdefghijAbcdefghijAbcdefghijAb~
        `23`                   
        <chr>                  
      1 AbcdefghijAbcdefghijAbc
        `21`                  `6`   
        <chr>                 <chr> 
      1 AbcdefghijAbcdefghijA Abcdef
        `49`                             
        <chr>                            
      1 AbcdefghijAbcdefghijAbcdefghijAb~
        `36`                             
        <chr>                            
      1 AbcdefghijAbcdefghijAbcdefghijAb~
        `27`                       
        <chr>                      
      1 AbcdefghijAbcdefghijAbcdefg
        `38`                             
        <chr>                            
      1 AbcdefghijAbcdefghijAbcdefghijAb~
        `14`          
        <chr>         
      1 AbcdefghijAbcd
        `34`                             
        <chr>                            
      1 AbcdefghijAbcdefghijAbcdefghijAb~
        `8`      `24`        `29`        
        <chr>    <chr>       <chr>       
      1 Abcdefgh Abcdefghij~ AbcdefghijA~
        `1`   `12`   `2`   `20`    `17`  
        <chr> <chr>  <chr> <chr>   <chr> 
      1 A     Abcde~ Ab    Abcdef~ Abcde~
        `35`    `5`   `19`   `30`   `7`  
        <chr>   <chr> <chr>  <chr>  <chr>
      1 Abcdef~ Abcde Abcde~ Abcde~ Abcd~
        `26`   `42`   `41`   `39`   `10` 
        <chr>  <chr>  <chr>  <chr>  <chr>
      1 Abcde~ Abcde~ Abcde~ Abcde~ Abcd~
      
      $extra_cols
      named list()
      
    Code
      ctl_colonnade(df_str[c(43L, 1L, 3L, 15L, 28L, 12L, 46L, 34L, 31L, 7L, 11L, 4L,
        44L, 8L, 9L, 5L, 36L, 22L, 17L, 39L, 18L, 45L, 37L, 13L, 29L, 6L, 30L, 16L,
        20L, 10L, 19L, 26L, 33L, 40L, 35L, 48L, 38L, 25L, 2L, 47L, 42L, 41L, 27L, 14L,
        21L, 24L, 50L, 49L, 23L, 32L)], width = {
        options(width = 32)
        446
      })
    Output
      $body
        `43`                          
        <chr>                         
      1 AbcdefghijAbcdefghijAbcdefghi~
        `1`   `3`   `15`           
        <chr> <chr> <chr>          
      1 A     Abc   AbcdefghijAbcde
        `28`                        
        <chr>                       
      1 AbcdefghijAbcdefghijAbcdefgh
        `12`        
        <chr>       
      1 AbcdefghijAb
        `46`                          
        <chr>                         
      1 AbcdefghijAbcdefghijAbcdefghi~
        `34`         `31`        `7`  
        <chr>        <chr>       <chr>
      1 AbcdefghijA~ Abcdefghij~ Abcd~
        `11`   `4`   `44`  `8`   `9`  
        <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcd  Abcd~ Abcd~ Abcd~
        `5`   `36`   `22`  `17`  `39` 
        <chr> <chr>  <chr> <chr> <chr>
      1 Abcde Abcde~ Abcd~ Abcd~ Abcd~
        `18`   `45`  `37`  `13`  `29` 
        <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcd~ Abcd~ Abcd~ Abcd~
        `6`    `30`  `16`  `20`  `10` 
        <chr>  <chr> <chr> <chr> <chr>
      1 Abcdef Abcd~ Abcd~ Abcd~ Abcd~
        `19`   `26`  `33`  `40`  `35` 
        <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcd~ Abcd~ Abcd~ Abcd~
        `48`   `38`  `25`  `2`   `47` 
        <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcd~ Abcd~ Ab    Abcd~
        `42`   `41`  `27`  `14`  `21` 
        <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcd~ Abcd~ Abcd~ Abcd~
        `24`   `50`  `49`  `23`  `32` 
        <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcd~ Abcd~ Abcd~ Abcd~
      
      $extra_cols
      named list()
      
    Code
      ctl_colonnade(df_str[c(37L, 46L, 21L, 3L, 16L, 39L, 34L, 33L, 10L, 17L, 19L,
        36L, 45L, 49L, 11L, 50L, 14L, 29L, 44L, 13L, 30L, 38L, 32L, 40L, 42L, 1L, 31L,
        41L, 7L, 23L, 35L, 28L, 6L, 25L, 2L, 9L, 12L, 15L, 5L, 18L, 20L, 27L, 43L, 8L,
        47L, 4L, 48L, 24L, 26L, 22L)], width = {
        options(width = 31)
        1166
      })
    Output
      $body
        `37`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefgh~
        `46`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefgh~
        `21`                  `3`  
        <chr>                 <chr>
      1 AbcdefghijAbcdefghijA Abc  
        `16`            
        <chr>           
      1 AbcdefghijAbcdef
        `39`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefgh~
        `34`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefgh~
        `33`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefgh~
        `10`       `17`             
        <chr>      <chr>            
      1 Abcdefghij AbcdefghijAbcdefg
        `19`               
        <chr>              
      1 AbcdefghijAbcdefghi
        `36`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefgh~
        `45`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefgh~
        `49`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefgh~
        `11`       
        <chr>      
      1 AbcdefghijA
        `50`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefgh~
        `14`          
        <chr>         
      1 AbcdefghijAbcd
        `29`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefghi
        `44`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefgh~
        `13`         
        <chr>        
      1 AbcdefghijAbc
        `30`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefgh~
        `38`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefgh~
        `32`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefgh~
        `40`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefgh~
        `42`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefgh~
        `1`  
        <chr>
      1 A    
        `31`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefgh~
        `41`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefgh~
        `7`    
        <chr>  
      1 Abcdefg
        `23`                   
        <chr>                  
      1 AbcdefghijAbcdefghijAbc
        `35`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefgh~
        `28`                        
        <chr>                       
      1 AbcdefghijAbcdefghijAbcdefgh
        `6`   
        <chr> 
      1 Abcdef
        `25`                     
        <chr>                    
      1 AbcdefghijAbcdefghijAbcde
        `2`   `9`       `12`        
        <chr> <chr>     <chr>       
      1 Ab    Abcdefghi AbcdefghijAb
        `15`            `5`  
        <chr>           <chr>
      1 AbcdefghijAbcde Abcde
        `18`              
        <chr>             
      1 AbcdefghijAbcdefgh
        `20`                
        <chr>               
      1 AbcdefghijAbcdefghij
        `27`    `43`    `8`    `47`  
        <chr>   <chr>   <chr>  <chr> 
      1 Abcdef~ Abcdef~ Abcde~ Abcde~
        `4`   `48`  `24`  `26`  `22` 
        <chr> <chr> <chr> <chr> <chr>
      1 Abcd  Abcd~ Abcd~ Abcd~ Abcd~
      
      $extra_cols
      named list()
      
    Code
      ctl_colonnade(df_str[c(31L, 39L, 40L, 30L, 10L, 21L, 9L, 16L, 46L, 25L, 15L,
        24L, 3L, 50L, 35L, 1L, 12L, 34L, 48L, 4L, 29L, 23L, 37L, 36L, 28L, 43L, 11L,
        17L, 32L, 8L, 41L, 13L, 44L, 7L, 38L, 26L, 33L, 20L, 19L, 2L, 18L, 49L, 27L,
        47L, 22L, 14L, 6L, 5L, 45L, 42L)], width = {
        options(width = 58)
        546
      })
    Output
      $body
        `31`                           
        <chr>                          
      1 AbcdefghijAbcdefghijAbcdefghijA
        `39`                                   
        <chr>                                  
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghi
        `40`                                    
        <chr>                                   
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghij
        `30`                           `10`      
        <chr>                          <chr>     
      1 AbcdefghijAbcdefghijAbcdefghij Abcdefghij
        `21`                  `9`       `16`            
        <chr>                 <chr>     <chr>           
      1 AbcdefghijAbcdefghijA Abcdefghi AbcdefghijAbcdef
        `46`         `25`      `15`   `24`    `3`   `50`        
        <chr>        <chr>     <chr>  <chr>   <chr> <chr>       
      1 AbcdefghijA~ Abcdefgh~ Abcde~ Abcdef~ Abc   AbcdefghijA~
        `35`   `1`   `12`   `34`   `48`  `4`   `29`  `23`  `37` 
        <chr>  <chr> <chr>  <chr>  <chr> <chr> <chr> <chr> <chr>
      1 Abcde~ A     Abcde~ Abcde~ Abcd~ Abcd  Abcd~ Abcd~ Abcd~
        `36`   `28`   `43`   `11`  `17`  `32`  `8`   `41`  `13` 
        <chr>  <chr>  <chr>  <chr> <chr> <chr> <chr> <chr> <chr>
      1 Abcde~ Abcde~ Abcde~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~
        `44`   `7`    `38`   `26`  `33`  `20`  `19`  `2`   `18` 
        <chr>  <chr>  <chr>  <chr> <chr> <chr> <chr> <chr> <chr>
      1 Abcde~ Abcde~ Abcde~ Abcd~ Abcd~ Abcd~ Abcd~ Ab    Abcd~
        `49`   `27`   `47`   `22`  `14`  `6`   `5`   `45`  `42` 
        <chr>  <chr>  <chr>  <chr> <chr> <chr> <chr> <chr> <chr>
      1 Abcde~ Abcde~ Abcde~ Abcd~ Abcd~ Abcd~ Abcde Abcd~ Abcd~
      
      $extra_cols
      named list()
      
    Code
      ctl_colonnade(df_str[c(43L, 21L, 41L, 48L, 22L, 25L, 2L, 8L, 1L, 24L, 6L, 39L,
        38L, 20L, 49L, 45L, 47L, 12L, 9L, 13L, 36L, 26L, 44L, 11L, 46L, 28L, 7L, 18L,
        50L, 16L, 29L, 30L, 4L, 23L, 17L, 40L, 33L, 14L, 27L, 19L, 34L, 32L, 3L, 37L,
        15L, 10L, 5L, 35L, 31L, 42L)], width = {
        options(width = 57)
        1035
      })
    Output
      $body
        `43`                                       
        <chr>                                      
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbc
        `21`                 
        <chr>                
      1 AbcdefghijAbcdefghijA
        `41`                                     
        <chr>                                    
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijA
        `48`                                            
        <chr>                                           
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcdefgh
        `22`                   `25`                      `2`  
        <chr>                  <chr>                     <chr>
      1 AbcdefghijAbcdefghijAb AbcdefghijAbcdefghijAbcde Ab   
        `8`      `1`   `24`                     `6`   
        <chr>    <chr> <chr>                    <chr> 
      1 Abcdefgh A     AbcdefghijAbcdefghijAbcd Abcdef
        `39`                                   
        <chr>                                  
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghi
        `38`                                  
        <chr>                                 
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefgh
        `20`                
        <chr>               
      1 AbcdefghijAbcdefghij
        `49`                                             
        <chr>                                            
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcdefghi
        `45`                                         
        <chr>                                        
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcde
        `47`                                           
        <chr>                                          
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcdefg
        `12`         `9`       `13`         
        <chr>        <chr>     <chr>        
      1 AbcdefghijAb Abcdefghi AbcdefghijAbc
        `36`                                
        <chr>                               
      1 AbcdefghijAbcdefghijAbcdefghijAbcdef
        `26`                      
        <chr>                     
      1 AbcdefghijAbcdefghijAbcdef
        `44`                                        
        <chr>                                       
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcd
        `11`   `46`   `28`  `7`   `18`  `50`  `16`  `29`  `30` 
        <chr>  <chr>  <chr> <chr> <chr> <chr> <chr> <chr> <chr>
      1 Abcde~ Abcde~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~
        `4`   `23`   `17`   `40`  `33`  `14`  `27`  `19`  `34` 
        <chr> <chr>  <chr>  <chr> <chr> <chr> <chr> <chr> <chr>
      1 Abcd  Abcde~ Abcde~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~
        `32`   `3`   `37`   `15`  `10`  `5`   `35`  `31`  `42` 
        <chr>  <chr> <chr>  <chr> <chr> <chr> <chr> <chr> <chr>
      1 Abcde~ Abc   Abcde~ Abcd~ Abcd~ Abcde Abcd~ Abcd~ Abcd~
      
      $extra_cols
      named list()
      
    Code
      ctl_colonnade(df_str[c(40L, 6L, 25L, 5L, 26L, 17L, 19L, 2L, 11L, 34L, 45L, 24L,
        22L, 44L, 35L, 7L, 4L, 49L, 1L, 36L, 12L, 41L, 39L, 13L, 48L, 27L, 18L, 30L,
        42L, 28L, 3L, 46L, 21L, 20L, 16L, 29L, 50L, 10L, 9L, 8L, 47L, 31L, 14L, 38L,
        33L, 32L, 43L, 23L, 15L, 37L)], width = {
        options(width = 33)
        1217
      })
    Output
      $body
        `40`                           
        <chr>                          
      1 AbcdefghijAbcdefghijAbcdefghij~
        `6`   
        <chr> 
      1 Abcdef
        `25`                      `5`  
        <chr>                     <chr>
      1 AbcdefghijAbcdefghijAbcde Abcde
        `26`                      
        <chr>                     
      1 AbcdefghijAbcdefghijAbcdef
        `17`             
        <chr>            
      1 AbcdefghijAbcdefg
        `19`                `2`  
        <chr>               <chr>
      1 AbcdefghijAbcdefghi Ab   
        `11`       
        <chr>      
      1 AbcdefghijA
        `34`                           
        <chr>                          
      1 AbcdefghijAbcdefghijAbcdefghij~
        `45`                           
        <chr>                          
      1 AbcdefghijAbcdefghijAbcdefghij~
        `24`                    
        <chr>                   
      1 AbcdefghijAbcdefghijAbcd
        `22`                  
        <chr>                 
      1 AbcdefghijAbcdefghijAb
        `44`                           
        <chr>                          
      1 AbcdefghijAbcdefghijAbcdefghij~
        `35`                           
        <chr>                          
      1 AbcdefghijAbcdefghijAbcdefghij~
        `7`     `4`  
        <chr>   <chr>
      1 Abcdefg Abcd 
        `49`                           
        <chr>                          
      1 AbcdefghijAbcdefghijAbcdefghij~
        `1`  
        <chr>
      1 A    
        `36`                           
        <chr>                          
      1 AbcdefghijAbcdefghijAbcdefghij~
        `12`        
        <chr>       
      1 AbcdefghijAb
        `41`                           
        <chr>                          
      1 AbcdefghijAbcdefghijAbcdefghij~
        `39`                           
        <chr>                          
      1 AbcdefghijAbcdefghijAbcdefghij~
        `13`         
        <chr>        
      1 AbcdefghijAbc
        `48`                           
        <chr>                          
      1 AbcdefghijAbcdefghijAbcdefghij~
        `27`                       
        <chr>                      
      1 AbcdefghijAbcdefghijAbcdefg
        `18`              
        <chr>             
      1 AbcdefghijAbcdefgh
        `30`                          
        <chr>                         
      1 AbcdefghijAbcdefghijAbcdefghij
        `42`                           
        <chr>                          
      1 AbcdefghijAbcdefghijAbcdefghij~
        `28`                        
        <chr>                       
      1 AbcdefghijAbcdefghijAbcdefgh
        `3`  
        <chr>
      1 Abc  
        `46`                           
        <chr>                          
      1 AbcdefghijAbcdefghijAbcdefghij~
        `21`                 
        <chr>                
      1 AbcdefghijAbcdefghijA
        `20`                
        <chr>               
      1 AbcdefghijAbcdefghij
        `16`            
        <chr>           
      1 AbcdefghijAbcdef
        `29`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefghi
        `50`                           
        <chr>                          
      1 AbcdefghijAbcdefghijAbcdefghij~
        `10`       `9`       `8`     
        <chr>      <chr>     <chr>   
      1 Abcdefghij Abcdefghi Abcdefgh
        `47`   `31`   `14`  `38`  `33` 
        <chr>  <chr>  <chr> <chr> <chr>
      1 Abcde~ Abcde~ Abcd~ Abcd~ Abcd~
        `32`   `43`   `23`  `15`  `37` 
        <chr>  <chr>  <chr> <chr> <chr>
      1 Abcde~ Abcde~ Abcd~ Abcd~ Abcd~
      
      $extra_cols
      named list()
      
    Code
      ctl_colonnade(df_str[c(43L, 23L, 22L, 11L, 6L, 26L, 48L, 17L, 7L, 42L, 36L, 21L,
        35L, 50L, 13L, 19L, 29L, 8L, 15L, 4L, 2L, 27L, 49L, 47L, 30L, 31L, 25L, 28L,
        46L, 12L, 32L, 39L, 24L, 10L, 45L, 5L, 37L, 14L, 40L, 20L, 41L, 44L, 33L, 18L,
        38L, 3L, 1L, 34L, 16L, 9L)], width = {
        options(width = 32)
        770
      })
    Output
      $body
        `43`                          
        <chr>                         
      1 AbcdefghijAbcdefghijAbcdefghi~
        `23`                   
        <chr>                  
      1 AbcdefghijAbcdefghijAbc
        `22`                  
        <chr>                 
      1 AbcdefghijAbcdefghijAb
        `11`        `6`   
        <chr>       <chr> 
      1 AbcdefghijA Abcdef
        `26`                      
        <chr>                     
      1 AbcdefghijAbcdefghijAbcdef
        `48`                          
        <chr>                         
      1 AbcdefghijAbcdefghijAbcdefghi~
        `17`              `7`    
        <chr>             <chr>  
      1 AbcdefghijAbcdefg Abcdefg
        `42`                          
        <chr>                         
      1 AbcdefghijAbcdefghijAbcdefghi~
        `36`                          
        <chr>                         
      1 AbcdefghijAbcdefghijAbcdefghi~
        `21`                 
        <chr>                
      1 AbcdefghijAbcdefghijA
        `35`                          
        <chr>                         
      1 AbcdefghijAbcdefghijAbcdefghi~
        `50`                          
        <chr>                         
      1 AbcdefghijAbcdefghijAbcdefghi~
        `13`         
        <chr>        
      1 AbcdefghijAbc
        `19`               
        <chr>              
      1 AbcdefghijAbcdefghi
        `29`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefghi
        `8`      `15`            `4`  
        <chr>    <chr>           <chr>
      1 Abcdefgh AbcdefghijAbcde Abcd 
        `2`  
        <chr>
      1 Ab   
        `27`                       
        <chr>                      
      1 AbcdefghijAbcdefghijAbcdefg
        `49`                          
        <chr>                         
      1 AbcdefghijAbcdefghijAbcdefghi~
        `47`            `30`          
        <chr>           <chr>         
      1 AbcdefghijAbcd~ AbcdefghijAbc~
        `31`   `25`  `28`  `46`  `12` 
        <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcd~ Abcd~ Abcd~ Abcd~
        `32`   `39`  `24`  `10`  `45` 
        <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcd~ Abcd~ Abcd~ Abcd~
        `5`   `37`   `14`  `40`  `20` 
        <chr> <chr>  <chr> <chr> <chr>
      1 Abcde Abcde~ Abcd~ Abcd~ Abcd~
        `41`   `44`  `33`  `18`  `38` 
        <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcd~ Abcd~ Abcd~ Abcd~
        `3`   `1`   `34`   `16`  `9`  
        <chr> <chr> <chr>  <chr> <chr>
      1 Abc   A     Abcde~ Abcd~ Abcd~
      
      $extra_cols
      named list()
      
    Code
      ctl_colonnade(df_str[c(5L, 24L, 43L, 46L, 35L, 39L, 18L, 26L, 8L, 27L, 2L, 50L,
        6L, 14L, 29L, 47L, 9L, 16L, 36L, 4L, 13L, 41L, 3L, 28L, 37L, 33L, 38L, 31L,
        34L, 19L, 42L, 32L, 1L, 45L, 15L, 7L, 11L, 49L, 23L, 12L, 48L, 20L, 21L, 44L,
        25L, 10L, 22L, 30L, 40L, 17L)], width = {
        options(width = 46)
        1439
      })
    Output
      $body
        `5`   `24`                    
        <chr> <chr>                   
      1 Abcde AbcdefghijAbcdefghijAbcd
        `43`                                       
        <chr>                                      
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbc
        `46`                                        
        <chr>                                       
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbc~
        `35`                               
        <chr>                              
      1 AbcdefghijAbcdefghijAbcdefghijAbcde
        `39`                                   
        <chr>                                  
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghi
        `18`              
        <chr>             
      1 AbcdefghijAbcdefgh
        `26`                       `8`     
        <chr>                      <chr>   
      1 AbcdefghijAbcdefghijAbcdef Abcdefgh
        `27`                        `2`  
        <chr>                       <chr>
      1 AbcdefghijAbcdefghijAbcdefg Ab   
        `50`                                        
        <chr>                                       
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbc~
        `6`    `14`          
        <chr>  <chr>         
      1 Abcdef AbcdefghijAbcd
        `29`                         
        <chr>                        
      1 AbcdefghijAbcdefghijAbcdefghi
        `47`                                        
        <chr>                                       
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbc~
        `9`       `16`            
        <chr>     <chr>           
      1 Abcdefghi AbcdefghijAbcdef
        `36`                                 `4`  
        <chr>                                <chr>
      1 AbcdefghijAbcdefghijAbcdefghijAbcdef Abcd 
        `13`         
        <chr>        
      1 AbcdefghijAbc
        `41`                                     
        <chr>                                    
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijA
        `3`   `28`                        
        <chr> <chr>                       
      1 Abc   AbcdefghijAbcdefghijAbcdefgh
        `37`                                 
        <chr>                                
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefg
        `33`                             
        <chr>                            
      1 AbcdefghijAbcdefghijAbcdefghijAbc
        `38`                                  
        <chr>                                 
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefgh
        `31`                           
        <chr>                          
      1 AbcdefghijAbcdefghijAbcdefghijA
        `34`                              
        <chr>                             
      1 AbcdefghijAbcdefghijAbcdefghijAbcd
        `19`               
        <chr>              
      1 AbcdefghijAbcdefghi
        `42`                                      
        <chr>                                     
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAb
        `32`                             `1`  
        <chr>                            <chr>
      1 AbcdefghijAbcdefghijAbcdefghijAb A    
        `45`                                        
        <chr>                                       
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbc~
        `15`            `7`     `11`       
        <chr>           <chr>   <chr>      
      1 AbcdefghijAbcde Abcdefg AbcdefghijA
        `49`                                        
        <chr>                                       
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbc~
        `23`                    `12`        
        <chr>                   <chr>       
      1 AbcdefghijAbcdefghijAbc AbcdefghijAb
        `48`                                        
        <chr>                                       
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbc~
        `20`                 `21`                 
        <chr>                <chr>                
      1 AbcdefghijAbcdefghij AbcdefghijAbcdefghijA
        `44`   `25`   `10`   `22`  `30`  `40`  `17` 
        <chr>  <chr>  <chr>  <chr> <chr> <chr> <chr>
      1 Abcde~ Abcde~ Abcde~ Abcd~ Abcd~ Abcd~ Abcd~
      
      $extra_cols
      named list()
      
    Code
      ctl_colonnade(df_str[c(7L, 44L, 19L, 21L, 18L, 35L, 23L, 50L, 33L, 37L, 25L,
        26L, 10L, 39L, 2L, 47L, 42L, 14L, 9L, 41L, 45L, 6L, 4L, 11L, 24L, 43L, 32L,
        3L, 38L, 5L, 49L, 27L, 17L, 8L, 22L, 40L, 12L, 15L, 1L, 28L, 31L, 29L, 13L,
        48L, 34L, 36L, 30L, 20L, 16L, 46L)], width = {
        options(width = 52)
        1065
      })
    Output
      $body
        `7`    
        <chr>  
      1 Abcdefg
        `44`                                        
        <chr>                                       
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcd
        `19`                `21`                 
        <chr>               <chr>                
      1 AbcdefghijAbcdefghi AbcdefghijAbcdefghijA
        `18`              
        <chr>             
      1 AbcdefghijAbcdefgh
        `35`                               
        <chr>                              
      1 AbcdefghijAbcdefghijAbcdefghijAbcde
        `23`                   
        <chr>                  
      1 AbcdefghijAbcdefghijAbc
        `50`                                              
        <chr>                                             
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcdefghij
        `33`                             
        <chr>                            
      1 AbcdefghijAbcdefghijAbcdefghijAbc
        `37`                                 
        <chr>                                
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefg
        `25`                     
        <chr>                    
      1 AbcdefghijAbcdefghijAbcde
        `26`                       `10`      
        <chr>                      <chr>     
      1 AbcdefghijAbcdefghijAbcdef Abcdefghij
        `39`                                    `2`  
        <chr>                                   <chr>
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghi Ab   
        `47`                                           
        <chr>                                          
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcdefg
        `42`                                      
        <chr>                                     
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAb
        `14`           `9`      
        <chr>          <chr>    
      1 AbcdefghijAbcd Abcdefghi
        `41`                                     
        <chr>                                    
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijA
        `45`                                         
        <chr>                                        
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghijAbcde
        `6`    `4`   `11`    `24`        `43`             
        <chr>  <chr> <chr>   <chr>       <chr>            
      1 Abcdef Abcd  Abcdef~ Abcdefghij~ AbcdefghijAbcdef~
        `32`   `3`   `38`   `5`   `49`   `27`  `17`  `8`  
        <chr>  <chr> <chr>  <chr> <chr>  <chr> <chr> <chr>
      1 Abcde~ Abc   Abcde~ Abcde Abcde~ Abcd~ Abcd~ Abcd~
        `22`   `40`   `12`   `15`  `1`   `28`  `31`  `29` 
        <chr>  <chr>  <chr>  <chr> <chr> <chr> <chr> <chr>
      1 Abcde~ Abcde~ Abcde~ Abcd~ A     Abcd~ Abcd~ Abcd~
        `13`   `48`   `34`   `36`  `30`  `20`  `16`  `46` 
        <chr>  <chr>  <chr>  <chr> <chr> <chr> <chr> <chr>
      1 Abcde~ Abcde~ Abcde~ Abcd~ Abcd~ Abcd~ Abcd~ Abcd~
      
      $extra_cols
      named list()
      
    Code
      ctl_colonnade(df_str[c(38L, 18L, 23L, 36L, 35L, 20L, 44L, 19L, 13L, 41L, 31L,
        7L, 11L, 29L, 2L, 14L, 26L, 46L, 40L, 45L, 9L, 34L, 33L, 22L, 1L, 17L, 28L,
        10L, 21L, 30L, 47L, 49L, 6L, 12L, 4L, 25L, 32L, 15L, 43L, 24L, 48L, 3L, 37L,
        50L, 42L, 39L, 16L, 8L, 27L, 5L)], width = {
        options(width = 35)
        393
      })
    Output
      $body
        `38`                             
        <chr>                            
      1 AbcdefghijAbcdefghijAbcdefghijAb~
        `18`              
        <chr>             
      1 AbcdefghijAbcdefgh
        `23`      `36`        `35`       
        <chr>     <chr>       <chr>      
      1 Abcdefgh~ Abcdefghij~ Abcdefghij~
        `20`   `44`    `19`  `13`  `41`  
        <chr>  <chr>   <chr> <chr> <chr> 
      1 Abcde~ Abcdef~ Abcd~ Abcd~ Abcde~
        `31`    `7`    `11`  `29`   `2`  
        <chr>   <chr>  <chr> <chr>  <chr>
      1 Abcdef~ Abcde~ Abcd~ Abcde~ Ab   
        `14`   `26`   `46`   `40`   `45` 
        <chr>  <chr>  <chr>  <chr>  <chr>
      1 Abcde~ Abcde~ Abcde~ Abcde~ Abcd~
        `9`    `34`    `33`   `22`  `1`  
        <chr>  <chr>   <chr>  <chr> <chr>
      1 Abcde~ Abcdef~ Abcde~ Abcd~ A    
        `17`   `28`    `10`  `21`  `30`  
        <chr>  <chr>   <chr> <chr> <chr> 
      1 Abcde~ Abcdef~ Abcd~ Abcd~ Abcde~
        `47`    `49`    `6`   `12`  `4`  
        <chr>   <chr>   <chr> <chr> <chr>
      1 Abcdef~ Abcdef~ Abcd~ Abcd~ Abcd 
        `25`   `32`    `15`  `43`   `24` 
        <chr>  <chr>   <chr> <chr>  <chr>
      1 Abcde~ Abcdef~ Abcd~ Abcde~ Abcd~
        `48`   `3`   `37`   `50`   `42`  
        <chr>  <chr> <chr>  <chr>  <chr> 
      1 Abcde~ Abc   Abcde~ Abcde~ Abcde~
        `39`    `16`   `8`   `27`   `5`  
        <chr>   <chr>  <chr> <chr>  <chr>
      1 Abcdef~ Abcde~ Abcd~ Abcde~ Abcde
      
      $extra_cols
      named list()
      
    Code
      ctl_colonnade(df_str[c(22L, 9L, 11L, 26L, 19L, 16L, 32L, 25L, 1L, 30L, 31L, 6L,
        24L, 10L, 39L, 21L, 50L, 7L, 29L, 12L, 46L, 43L, 15L, 35L, 20L, 40L, 49L, 38L,
        36L, 48L, 34L, 3L, 8L, 4L, 27L, 42L, 44L, 33L, 45L, 18L, 5L, 2L, 13L, 47L,
        28L, 17L, 37L, 14L, 41L, 23L)], width = {
        options(width = 41)
        999
      })
    Output
      $body
        `22`                   `9`      
        <chr>                  <chr>    
      1 AbcdefghijAbcdefghijAb Abcdefghi
        `11`        `26`                      
        <chr>       <chr>                     
      1 AbcdefghijA AbcdefghijAbcdefghijAbcdef
        `19`                `16`            
        <chr>               <chr>           
      1 AbcdefghijAbcdefghi AbcdefghijAbcdef
        `32`                            
        <chr>                           
      1 AbcdefghijAbcdefghijAbcdefghijAb
        `25`                      `1`  
        <chr>                     <chr>
      1 AbcdefghijAbcdefghijAbcde A    
        `30`                          
        <chr>                         
      1 AbcdefghijAbcdefghijAbcdefghij
        `31`                            `6`   
        <chr>                           <chr> 
      1 AbcdefghijAbcdefghijAbcdefghijA Abcdef
        `24`                     `10`      
        <chr>                    <chr>     
      1 AbcdefghijAbcdefghijAbcd Abcdefghij
        `39`                                   
        <chr>                                  
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefghi
        `21`                 
        <chr>                
      1 AbcdefghijAbcdefghijA
        `50`                                   
        <chr>                                  
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefgh~
        `7`     `29`                         
        <chr>   <chr>                        
      1 Abcdefg AbcdefghijAbcdefghijAbcdefghi
        `12`        
        <chr>       
      1 AbcdefghijAb
        `46`                                   
        <chr>                                  
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefgh~
        `43`                                   
        <chr>                                  
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefgh~
        `15`           
        <chr>          
      1 AbcdefghijAbcde
        `35`                               
        <chr>                              
      1 AbcdefghijAbcdefghijAbcdefghijAbcde
        `20`                
        <chr>               
      1 AbcdefghijAbcdefghij
        `40`                                   
        <chr>                                  
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefgh~
        `49`                                   
        <chr>                                  
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefgh~
        `38`                                  
        <chr>                                 
      1 AbcdefghijAbcdefghijAbcdefghijAbcdefgh
        `36`        `48`        `34`      `3`  
        <chr>       <chr>       <chr>     <chr>
      1 Abcdefghij~ Abcdefghij~ Abcdefgh~ Abc  
        `8`    `4`   `27`   `42`   `44`   `33` 
        <chr>  <chr> <chr>  <chr>  <chr>  <chr>
      1 Abcde~ Abcd  Abcde~ Abcde~ Abcde~ Abcd~
        `45`    `18`   `5`   `2`   `13`  `47`  
        <chr>   <chr>  <chr> <chr> <chr> <chr> 
      1 Abcdef~ Abcde~ Abcde Ab    Abcd~ Abcde~
        `28`   `17`   `37`   `14`  `41`   `23` 
        <chr>  <chr>  <chr>  <chr> <chr>  <chr>
      1 Abcde~ Abcde~ Abcde~ Abcd~ Abcde~ Abcd~
      
      $extra_cols
      named list()
      

