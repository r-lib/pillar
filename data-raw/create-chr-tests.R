devtools::load_all()

N <- 30
set.seed(20180704)

idx <- seq_len(N)
order <- map(idx, function(i) deparse(sample(seq_along(df_str)), width = 500))
width <- sample.int(1200, N) + 300L
output_width <- sample.int(30, N, replace = TRUE) + 30L

code <- paste0(
  'expect_pillar_output(\n',
  '  xf = colonnade(df_str[', order, '], width = ', width, '),\n',
  '  output_width = ', output_width, ',\n',
  '  filename = "str-', sprintf("%.2d", idx), '-', width, '-', output_width, '.txt"\n',
  ')'
)

cat(code, sep = "\n")
clipr::write_clip(code)
message("Copied to clipboard")
