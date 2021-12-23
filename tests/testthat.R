if (require(testthat)) {
  library(pillar)
  test_check("pillar")
} else {
  message("testthat not available.")
}
