# GetDFPData

Version: 0.6

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Error in utils::download.file(url = dl.link, destfile = dest.file, quiet = T,  : 
      cannot open URL 'http://www2.bmfbovespa.com.br/dxw/Download.asp?moeda=L&site=B&mercado=1&ccvm=9512&data=31/12/2005&tipo=2'
    Quitting from lines 73-81 (gdfpd-vignette-introduction.Rmd) 
    Error: processing vignette 'gdfpd-vignette-introduction.Rmd' failed with diagnostics:
    missing value where TRUE/FALSE needed
    Execution halted
    ```

