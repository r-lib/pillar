context("format_multi")

withr::with_options(list(pillar.bold = TRUE), {
  test_that("output test", {
    x <- list(column_zero_one = 1:3 + 0.23, col_02 = letters[1:3], col_03 = factor(letters[1:3]), col_04 = ordered(letters[1:3]))
    expect_pillar_output(xf = colonnade(x, width = 4), filename = "multi-04.txt")
    expect_pillar_output(xf = colonnade(x, width = 5), filename = "multi-05.txt")
    expect_pillar_output(xf = colonnade(x, width = 6), filename = "multi-06.txt")
    expect_pillar_output(xf = colonnade(x, width = 7), filename = "multi-07.txt")
    expect_pillar_output(xf = colonnade(x, width = 8), filename = "multi-08.txt")
    expect_pillar_output(xf = colonnade(x, width = 9), filename = "multi-09.txt")
    expect_pillar_output(xf = colonnade(x, width = 10), filename = "multi-10.txt")
    expect_pillar_output(xf = colonnade(x, width = 11), filename = "multi-11.txt")
    expect_pillar_output(xf = colonnade(x, width = 12), filename = "multi-12.txt")
    expect_pillar_output(xf = colonnade(x, width = 13), filename = "multi-13.txt")
    expect_pillar_output(xf = colonnade(x, width = 14), filename = "multi-14.txt")
    expect_pillar_output(xf = colonnade(x, width = 15), filename = "multi-15.txt")
    expect_pillar_output(xf = colonnade(x, width = 16), filename = "multi-16.txt")
    expect_pillar_output(xf = colonnade(x, width = 17), filename = "multi-17.txt")
    expect_pillar_output(xf = colonnade(x, width = 18), filename = "multi-18.txt")
    expect_pillar_output(xf = colonnade(x, width = 19), filename = "multi-19.txt")
    expect_pillar_output(xf = colonnade(x, width = 20), filename = "multi-20.txt")
    expect_pillar_output(xf = colonnade(x, width = 21), filename = "multi-21.txt")
    expect_pillar_output(xf = colonnade(x, width = 22), filename = "multi-22.txt")
    expect_pillar_output(xf = colonnade(x, width = 23), filename = "multi-23.txt")
    expect_pillar_output(xf = colonnade(x, width = 24), filename = "multi-24.txt")
    expect_pillar_output(xf = colonnade(x, width = 25), filename = "multi-25.txt")
    expect_pillar_output(xf = colonnade(x, width = 26), filename = "multi-26.txt")
    expect_pillar_output(xf = colonnade(x, width = 27), filename = "multi-27.txt")
    expect_pillar_output(xf = colonnade(x, width = 28), filename = "multi-28.txt")
    expect_pillar_output(xf = colonnade(x, width = 29), filename = "multi-29.txt")
    expect_pillar_output(xf = colonnade(x, width = 30), filename = "multi-30.txt")
    expect_pillar_output(xf = colonnade(x, width = 31), filename = "multi-31.txt")
    expect_pillar_output(xf = colonnade(x, width = 32), filename = "multi-32.txt")
    expect_pillar_output(xf = colonnade(x, width = 33), filename = "multi-33.txt")
    expect_pillar_output(xf = colonnade(x, width = 34), filename = "multi-34.txt")
    expect_pillar_output(xf = colonnade(x, width = 35), filename = "multi-35.txt")
    expect_pillar_output(xf = colonnade(x, width = 36), filename = "multi-36.txt")
    expect_pillar_output(xf = colonnade(x, width = 37), filename = "multi-37.txt")
    expect_pillar_output(xf = colonnade(x, width = 38), filename = "multi-38.txt")
    expect_pillar_output(xf = colonnade(x, width = 39), filename = "multi-39.txt")
    expect_pillar_output(xf = colonnade(x, width = Inf), filename = "multi-inf.txt")

    expect_pillar_output(
      xf = colonnade(
        rep(list(paste(letters, collapse = " ")), 4),
        width = Inf
      ),
      filename = "letters-inf.txt"
    )

    # Spurious warnings on Windows
    suppressWarnings(
      expect_pillar_output(
        xf = new_vertical(extra_cols(squeeze(colonnade(x), width = 10))),
        filename = "multi-extra-10.txt"
      )
    )

    suppressWarnings(
      expect_pillar_output(
        xf = new_vertical(extra_cols(squeeze(colonnade(x), width = 20))),
        filename = "multi-extra-20.txt"
      )
    )

    suppressWarnings(
      expect_pillar_output(
        xf = new_vertical(extra_cols(squeeze(colonnade(x), width = 30))),
        filename = "multi-extra-30.txt"
      )
    )

    suppressWarnings(
      expect_pillar_output(
        xf = new_vertical(extra_cols(squeeze(colonnade(x), width = 35))),
        filename = "multi-extra-35.txt"
      )
    )

    expect_pillar_output(
      xf = new_vertical(extra_cols(squeeze(colonnade(x), width = 40))),
      filename = "multi-extra-40.txt"
    )
  })

  test_that("tests from tibble", {
    expect_pillar_output(
      crayon = FALSE,
      xf = colonnade(mtcars[1:8, ], has_row_id = "*", width = 30),
      filename = "tibble-mtcars-8-30.txt"
    )
    expect_pillar_output(
      crayon = FALSE,
      xf = colonnade(iris[1:5, ], width = 30),
      filename = "tibble-iris-5-30.txt"
    )
    expect_pillar_output(
      crayon = FALSE,
      xf = colonnade(iris[1:3, ], width = 20),
      filename = "tibble-iris-3-20.txt"
    )
    expect_pillar_output(
      crayon = FALSE,
      xf = colonnade(df_all, width = 30),
      filename = "tibble-all--30.txt"
    )
    expect_pillar_output(
      crayon = FALSE,
      xf = colonnade(df_all, width = 300),
      filename = "tibble-all--300.txt"
    )
    expect_pillar_output(
      crayon = FALSE,
      xf = colonnade(df_all, width = 300),
      output_width = 70L,
      filename = "tibble-all--300-70.txt"
    )
    expect_pillar_output(
      crayon = FALSE,
      xf = colonnade(df_all, width = 300),
      output_width = 60L,
      filename = "tibble-all--300-60.txt"
    )
    expect_pillar_output(
      crayon = FALSE,
      xf = colonnade(df_all, width = 300),
      output_width = 50L,
      filename = "tibble-all--300-50.txt"
    )
    expect_pillar_output(
      crayon = FALSE,
      xf = colonnade(df_all, width = 300),
      output_width = 40L,
      filename = "tibble-all--300-40.txt"
    )
    expect_pillar_output(
      crayon = FALSE,
      xf = colonnade(df_all, width = 300),
      output_width = 30L,
      filename = "tibble-all--300-30.txt"
    )
    expect_pillar_output(
      crayon = FALSE,
      xf = colonnade(df_all, width = 300),
      output_width = 20L,
      filename = "tibble-all--300-20.txt"
    )
    expect_pillar_output(
      crayon = FALSE,
      xf = colonnade(list(`\n` = c("\n", '"'), `\r` = factor("\n")), width = 30),
      filename = "tibble-newline.txt"
    )
    expect_pillar_output(
      crayon = FALSE,
      xf = colonnade(list(a = c("", " ", "a ", " a")), width = 30),
      filename = "tibble-space.txt"
    )
    expect_pillar_output(
      crayon = FALSE,
      xf = colonnade(list("mean(x)" = 5, "var(x)" = 3), width = 30),
      filename = "tibble-non-syntactic.txt"
    )
  })

  test_that("strings with varying widths", {
    # Generated by data-raw/create-chr-tests.R
    expect_pillar_output(
      xf = colonnade(df_str[c(12L, 33L, 36L, 7L, 41L, 3L, 18L, 23L, 13L, 44L, 14L, 16L, 25L, 21L, 19L, 45L, 43L, 29L, 1L, 30L, 22L, 27L, 15L, 47L, 28L, 31L, 10L, 50L, 4L, 40L, 42L, 8L, 6L, 9L, 24L, 48L, 38L, 37L, 34L, 49L, 46L, 2L, 32L, 35L, 39L, 11L, 17L, 5L, 26L, 20L)], width = 1382),
      output_width = 59,
      filename = "str-01-1382-59.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(40L, 28L, 7L, 16L, 48L, 6L, 21L, 1L, 20L, 17L, 47L, 45L, 29L, 41L, 49L, 34L, 4L, 39L, 18L, 36L, 26L, 38L, 10L, 8L, 5L, 15L, 44L, 24L, 46L, 14L, 25L, 27L, 3L, 37L, 35L, 12L, 9L, 13L, 22L, 33L, 42L, 11L, 19L, 50L, 23L, 30L, 32L, 2L, 43L, 31L)], width = 837),
      output_width = 54,
      filename = "str-02-837-54.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(47L, 42L, 4L, 46L, 9L, 34L, 19L, 39L, 8L, 32L, 36L, 12L, 29L, 5L, 15L, 11L, 31L, 27L, 33L, 28L, 43L, 6L, 13L, 22L, 14L, 16L, 35L, 50L, 38L, 7L, 23L, 45L, 40L, 3L, 2L, 24L, 41L, 10L, 30L, 25L, 17L, 26L, 48L, 37L, 49L, 1L, 18L, 21L, 44L, 20L)], width = 455),
      output_width = 32,
      filename = "str-03-455-32.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(41L, 4L, 25L, 31L, 8L, 22L, 19L, 10L, 29L, 21L, 34L, 5L, 26L, 36L, 47L, 46L, 2L, 24L, 27L, 39L, 28L, 43L, 32L, 30L, 48L, 44L, 6L, 20L, 13L, 15L, 18L, 42L, 9L, 12L, 37L, 45L, 16L, 40L, 11L, 14L, 38L, 1L, 7L, 3L, 23L, 35L, 50L, 17L, 49L, 33L)], width = 855),
      output_width = 55,
      filename = "str-04-855-55.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(27L, 22L, 9L, 23L, 16L, 19L, 25L, 31L, 44L, 1L, 28L, 46L, 12L, 20L, 43L, 37L, 5L, 2L, 18L, 41L, 26L, 33L, 11L, 49L, 24L, 35L, 4L, 47L, 30L, 7L, 34L, 3L, 32L, 42L, 10L, 45L, 38L, 39L, 48L, 14L, 6L, 17L, 36L, 50L, 40L, 13L, 8L, 21L, 15L, 29L)], width = 552),
      output_width = 54,
      filename = "str-05-552-54.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(32L, 24L, 18L, 25L, 26L, 13L, 33L, 2L, 50L, 38L, 37L, 16L, 27L, 9L, 28L, 49L, 34L, 15L, 17L, 35L, 22L, 47L, 3L, 21L, 23L, 41L, 5L, 1L, 14L, 46L, 30L, 31L, 44L, 4L, 7L, 40L, 43L, 12L, 29L, 8L, 36L, 45L, 11L, 20L, 10L, 6L, 19L, 48L, 39L, 42L)], width = 1031),
      output_width = 49,
      filename = "str-06-1031-49.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(44L, 34L, 49L, 9L, 15L, 16L, 1L, 10L, 40L, 29L, 26L, 22L, 4L, 43L, 20L, 17L, 46L, 33L, 35L, 32L, 2L, 12L, 8L, 37L, 23L, 39L, 7L, 18L, 36L, 42L, 6L, 30L, 19L, 25L, 5L, 21L, 47L, 50L, 28L, 11L, 31L, 14L, 24L, 27L, 45L, 41L, 38L, 3L, 13L, 48L)], width = 429),
      output_width = 38,
      filename = "str-07-429-38.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(21L, 26L, 8L, 22L, 41L, 24L, 13L, 5L, 47L, 37L, 4L, 42L, 19L, 34L, 11L, 43L, 38L, 3L, 33L, 20L, 31L, 2L, 18L, 48L, 27L, 44L, 9L, 35L, 30L, 6L, 49L, 10L, 1L, 16L, 46L, 29L, 12L, 14L, 45L, 36L, 15L, 39L, 50L, 23L, 17L, 28L, 7L, 32L, 40L, 25L)], width = 633),
      output_width = 54,
      filename = "str-08-633-54.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(23L, 49L, 13L, 37L, 3L, 25L, 36L, 4L, 9L, 7L, 27L, 48L, 12L, 10L, 50L, 14L, 38L, 39L, 46L, 22L, 28L, 8L, 21L, 44L, 32L, 40L, 31L, 1L, 29L, 34L, 35L, 33L, 19L, 15L, 41L, 20L, 47L, 18L, 16L, 45L, 6L, 5L, 24L, 26L, 43L, 11L, 42L, 30L, 17L, 2L)], width = 1496),
      output_width = 39,
      filename = "str-09-1496-39.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(45L, 14L, 49L, 24L, 22L, 31L, 42L, 18L, 16L, 47L, 25L, 4L, 37L, 8L, 26L, 21L, 50L, 5L, 41L, 30L, 2L, 33L, 34L, 3L, 44L, 19L, 43L, 6L, 32L, 29L, 20L, 1L, 13L, 11L, 40L, 12L, 48L, 23L, 9L, 15L, 46L, 36L, 27L, 35L, 28L, 10L, 7L, 39L, 17L, 38L)], width = 493),
      output_width = 31,
      filename = "str-10-493-31.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(38L, 46L, 17L, 11L, 24L, 18L, 16L, 39L, 50L, 42L, 6L, 13L, 37L, 29L, 41L, 47L, 9L, 33L, 44L, 31L, 45L, 36L, 28L, 5L, 10L, 30L, 20L, 1L, 14L, 43L, 49L, 23L, 26L, 21L, 32L, 19L, 34L, 15L, 48L, 4L, 7L, 35L, 40L, 8L, 22L, 3L, 25L, 12L, 27L, 2L)], width = 1130),
      output_width = 52,
      filename = "str-11-1130-52.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(17L, 28L, 29L, 27L, 20L, 31L, 43L, 30L, 32L, 48L, 10L, 50L, 13L, 12L, 36L, 21L, 46L, 33L, 25L, 35L, 1L, 5L, 16L, 34L, 18L, 42L, 3L, 11L, 40L, 26L, 37L, 7L, 39L, 6L, 4L, 19L, 8L, 45L, 14L, 24L, 23L, 2L, 47L, 9L, 49L, 41L, 38L, 22L, 44L, 15L)], width = 1310),
      output_width = 58,
      filename = "str-12-1310-58.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(1L, 26L, 20L, 12L, 49L, 16L, 24L, 4L, 15L, 47L, 8L, 11L, 14L, 50L, 17L, 2L, 44L, 30L, 36L, 45L, 25L, 38L, 18L, 29L, 5L, 13L, 3L, 23L, 48L, 40L, 34L, 22L, 39L, 33L, 27L, 7L, 19L, 10L, 37L, 6L, 35L, 46L, 31L, 41L, 43L, 28L, 42L, 32L, 21L, 9L)], width = 484),
      output_width = 47,
      filename = "str-13-484-47.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(6L, 49L, 26L, 45L, 25L, 15L, 31L, 20L, 21L, 44L, 23L, 48L, 37L, 36L, 5L, 43L, 11L, 14L, 13L, 39L, 16L, 12L, 4L, 18L, 42L, 3L, 10L, 28L, 40L, 24L, 29L, 17L, 35L, 47L, 2L, 38L, 34L, 9L, 7L, 8L, 50L, 33L, 32L, 27L, 46L, 19L, 22L, 41L, 30L, 1L)], width = 779),
      output_width = 55,
      filename = "str-14-779-55.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(38L, 42L, 41L, 10L, 40L, 11L, 27L, 9L, 17L, 37L, 46L, 13L, 36L, 18L, 31L, 20L, 39L, 12L, 44L, 33L, 50L, 34L, 26L, 32L, 23L, 30L, 29L, 21L, 4L, 49L, 19L, 25L, 3L, 6L, 15L, 14L, 43L, 48L, 8L, 22L, 1L, 2L, 45L, 35L, 16L, 5L, 47L, 28L, 24L, 7L)], width = 694),
      output_width = 46,
      filename = "str-15-694-46.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(28L, 34L, 16L, 29L, 47L, 25L, 42L, 27L, 44L, 20L, 14L, 36L, 43L, 41L, 26L, 45L, 22L, 9L, 13L, 32L, 31L, 12L, 19L, 48L, 49L, 35L, 3L, 11L, 23L, 24L, 40L, 15L, 38L, 10L, 46L, 5L, 50L, 18L, 21L, 6L, 30L, 2L, 7L, 1L, 4L, 8L, 17L, 33L, 39L, 37L)], width = 516),
      output_width = 54,
      filename = "str-16-516-54.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(28L, 41L, 12L, 29L, 13L, 43L, 24L, 50L, 48L, 35L, 44L, 21L, 33L, 45L, 47L, 34L, 25L, 14L, 18L, 23L, 7L, 3L, 42L, 36L, 11L, 2L, 20L, 31L, 1L, 4L, 38L, 9L, 27L, 40L, 32L, 17L, 6L, 49L, 16L, 19L, 15L, 22L, 39L, 10L, 46L, 5L, 30L, 8L, 26L, 37L)], width = 1365),
      output_width = 42,
      filename = "str-17-1365-42.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(40L, 17L, 13L, 23L, 22L, 2L, 18L, 3L, 29L, 45L, 14L, 19L, 33L, 37L, 47L, 43L, 44L, 10L, 31L, 27L, 34L, 35L, 41L, 21L, 4L, 25L, 38L, 48L, 9L, 24L, 26L, 39L, 20L, 36L, 42L, 16L, 6L, 11L, 7L, 12L, 1L, 46L, 15L, 5L, 8L, 50L, 32L, 30L, 49L, 28L)], width = 934),
      output_width = 39,
      filename = "str-18-934-39.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(11L, 36L, 17L, 14L, 31L, 35L, 23L, 13L, 6L, 44L, 45L, 22L, 21L, 18L, 33L, 10L, 43L, 2L, 46L, 34L, 3L, 19L, 1L, 38L, 9L, 37L, 5L, 8L, 25L, 49L, 27L, 29L, 15L, 39L, 24L, 40L, 48L, 26L, 47L, 42L, 41L, 12L, 28L, 30L, 7L, 16L, 4L, 50L, 20L, 32L)], width = 565),
      output_width = 32,
      filename = "str-19-565-32.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(18L, 46L, 11L, 43L, 31L, 47L, 48L, 44L, 50L, 15L, 28L, 33L, 13L, 4L, 22L, 3L, 37L, 32L, 40L, 9L, 25L, 16L, 45L, 23L, 21L, 6L, 49L, 36L, 27L, 38L, 14L, 34L, 8L, 24L, 29L, 1L, 12L, 2L, 20L, 17L, 35L, 5L, 19L, 30L, 7L, 26L, 42L, 41L, 39L, 10L)], width = 1121),
      output_width = 35,
      filename = "str-20-1121-35.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(43L, 1L, 3L, 15L, 28L, 12L, 46L, 34L, 31L, 7L, 11L, 4L, 44L, 8L, 9L, 5L, 36L, 22L, 17L, 39L, 18L, 45L, 37L, 13L, 29L, 6L, 30L, 16L, 20L, 10L, 19L, 26L, 33L, 40L, 35L, 48L, 38L, 25L, 2L, 47L, 42L, 41L, 27L, 14L, 21L, 24L, 50L, 49L, 23L, 32L)], width = 446),
      output_width = 32,
      filename = "str-21-446-32.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(37L, 46L, 21L, 3L, 16L, 39L, 34L, 33L, 10L, 17L, 19L, 36L, 45L, 49L, 11L, 50L, 14L, 29L, 44L, 13L, 30L, 38L, 32L, 40L, 42L, 1L, 31L, 41L, 7L, 23L, 35L, 28L, 6L, 25L, 2L, 9L, 12L, 15L, 5L, 18L, 20L, 27L, 43L, 8L, 47L, 4L, 48L, 24L, 26L, 22L)], width = 1166),
      output_width = 31,
      filename = "str-22-1166-31.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(31L, 39L, 40L, 30L, 10L, 21L, 9L, 16L, 46L, 25L, 15L, 24L, 3L, 50L, 35L, 1L, 12L, 34L, 48L, 4L, 29L, 23L, 37L, 36L, 28L, 43L, 11L, 17L, 32L, 8L, 41L, 13L, 44L, 7L, 38L, 26L, 33L, 20L, 19L, 2L, 18L, 49L, 27L, 47L, 22L, 14L, 6L, 5L, 45L, 42L)], width = 546),
      output_width = 58,
      filename = "str-23-546-58.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(43L, 21L, 41L, 48L, 22L, 25L, 2L, 8L, 1L, 24L, 6L, 39L, 38L, 20L, 49L, 45L, 47L, 12L, 9L, 13L, 36L, 26L, 44L, 11L, 46L, 28L, 7L, 18L, 50L, 16L, 29L, 30L, 4L, 23L, 17L, 40L, 33L, 14L, 27L, 19L, 34L, 32L, 3L, 37L, 15L, 10L, 5L, 35L, 31L, 42L)], width = 1035),
      output_width = 57,
      filename = "str-24-1035-57.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(40L, 6L, 25L, 5L, 26L, 17L, 19L, 2L, 11L, 34L, 45L, 24L, 22L, 44L, 35L, 7L, 4L, 49L, 1L, 36L, 12L, 41L, 39L, 13L, 48L, 27L, 18L, 30L, 42L, 28L, 3L, 46L, 21L, 20L, 16L, 29L, 50L, 10L, 9L, 8L, 47L, 31L, 14L, 38L, 33L, 32L, 43L, 23L, 15L, 37L)], width = 1217),
      output_width = 33,
      filename = "str-25-1217-33.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(43L, 23L, 22L, 11L, 6L, 26L, 48L, 17L, 7L, 42L, 36L, 21L, 35L, 50L, 13L, 19L, 29L, 8L, 15L, 4L, 2L, 27L, 49L, 47L, 30L, 31L, 25L, 28L, 46L, 12L, 32L, 39L, 24L, 10L, 45L, 5L, 37L, 14L, 40L, 20L, 41L, 44L, 33L, 18L, 38L, 3L, 1L, 34L, 16L, 9L)], width = 770),
      output_width = 32,
      filename = "str-26-770-32.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(5L, 24L, 43L, 46L, 35L, 39L, 18L, 26L, 8L, 27L, 2L, 50L, 6L, 14L, 29L, 47L, 9L, 16L, 36L, 4L, 13L, 41L, 3L, 28L, 37L, 33L, 38L, 31L, 34L, 19L, 42L, 32L, 1L, 45L, 15L, 7L, 11L, 49L, 23L, 12L, 48L, 20L, 21L, 44L, 25L, 10L, 22L, 30L, 40L, 17L)], width = 1439),
      output_width = 46,
      filename = "str-27-1439-46.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(7L, 44L, 19L, 21L, 18L, 35L, 23L, 50L, 33L, 37L, 25L, 26L, 10L, 39L, 2L, 47L, 42L, 14L, 9L, 41L, 45L, 6L, 4L, 11L, 24L, 43L, 32L, 3L, 38L, 5L, 49L, 27L, 17L, 8L, 22L, 40L, 12L, 15L, 1L, 28L, 31L, 29L, 13L, 48L, 34L, 36L, 30L, 20L, 16L, 46L)], width = 1065),
      output_width = 52,
      filename = "str-28-1065-52.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(38L, 18L, 23L, 36L, 35L, 20L, 44L, 19L, 13L, 41L, 31L, 7L, 11L, 29L, 2L, 14L, 26L, 46L, 40L, 45L, 9L, 34L, 33L, 22L, 1L, 17L, 28L, 10L, 21L, 30L, 47L, 49L, 6L, 12L, 4L, 25L, 32L, 15L, 43L, 24L, 48L, 3L, 37L, 50L, 42L, 39L, 16L, 8L, 27L, 5L)], width = 393),
      output_width = 35,
      filename = "str-29-393-35.txt"
    )
    expect_pillar_output(
      xf = colonnade(df_str[c(22L, 9L, 11L, 26L, 19L, 16L, 32L, 25L, 1L, 30L, 31L, 6L, 24L, 10L, 39L, 21L, 50L, 7L, 29L, 12L, 46L, 43L, 15L, 35L, 20L, 40L, 49L, 38L, 36L, 48L, 34L, 3L, 8L, 4L, 27L, 42L, 44L, 33L, 45L, 18L, 5L, 2L, 13L, 47L, 28L, 17L, 37L, 14L, 41L, 23L)], width = 999),
      output_width = 41,
      filename = "str-30-999-41.txt"
    )
  })

  test_that("empty", {
    expect_equal(
      format(colonnade(list(a = character(), b = logical()), width = 30)),
      structure(character(), class = "pillar_vertical")
    )
    expect_equal(
      format(colonnade(iris[1:5, character()], width = 30)),
      structure(character(), class = "pillar_vertical")
    )
  })

  test_that("NA names", {
    x <- list(`NA` = 1:3, set_to_NA = 4:6)
    names(x)[[2]] <- NA_character_
    expect_pillar_output(
      crayon = FALSE,
      xf = colonnade(x, width = 30),
      filename = "na-names.txt"
    )
  })

  test_that("sep argument", {
    x <- list(sep = 1:3)
    expect_pillar_output(
      crayon = FALSE,
      xf = colonnade(x, width = 30),
      filename = "sep.txt"
    )
  })

  test_that("without styling", {
    xf <- colonnade(list(x = (10^(-3:4)) * c(-1, 1)))

    withr::with_options(
      list(),
      expect_pillar_output(
        xf = xf,
        filename = "style-regular.txt"
      )
    )
    withr::with_options(
      list(pillar.subtle_num = TRUE),
      expect_pillar_output(
        xf = xf,
        filename = "style-subtle-num-true.txt"
      )
    )
    withr::with_options(
      list(pillar.subtle = FALSE),
      expect_pillar_output(
        xf = xf,
        filename = "style-subtle-false.txt"
      )
    )
    withr::with_options(
      list(pillar.neg = FALSE),
      expect_pillar_output(
        xf = xf,
        filename = "style-neg-false.txt"
      )
    )
    withr::with_options(
      list(pillar.subtle = FALSE, pillar.neg = FALSE),
      expect_pillar_output(
        xf = xf,
        filename = "style-subtle-neg-false.txt"
      )
    )
    withr::with_options(
      list(pillar.bold = FALSE),
      expect_pillar_output(
        xf = xf,
        filename = "style-bold-false.txt"
      )
    )
  })

  test_that("tibble columns", {
    x <- list(a = 1:3, b = data.frame(c = 4:6, d = 7:9))
    expect_pillar_output(
      crayon = FALSE,
      xf = colonnade(x, width = 30),
      filename = "tibble-col.txt"
    )
  })

  test_that("tibble columns (nested)", {
    x <- list(
      a = 1:3,
      b = structure(
        list(
          c = 4:6, d = 7:9,
          e = data.frame(f = 10:12, g = 13:15)
        ),
        class = "data.frame"
      )
    )
    expect_pillar_output(
      crayon = FALSE,
      xf = colonnade(x, width = 40),
      filename = "tibble-col-nested.txt"
    )
  })

  test_that("tibble columns (empty)", {
    x <- list(
      a = 1:3,
      b = structure(
        list(
          c = 4:6, d = 7:9,
          e = data.frame(f = 10:12)[, 0]
        ),
        class = "data.frame"
      )
    )
    expect_pillar_output(
      crayon = FALSE,
      xf = colonnade(x, width = 40),
      filename = "tibble-col-empty.txt"
    )
  })

  test_that("matrix columns (unnamed)", {
    x <- list(a = 1:3, b = matrix(4:9, ncol = 2))
    expect_pillar_output(
      crayon = FALSE,
      xf = colonnade(x, width = 30),
      filename = "matrix-col.txt"
    )
  })

  test_that("matrix columns (named)", {
    x <- list(a = 1:3, b = matrix(4:9, ncol = 2, dimnames = list(NULL, c("c", "d"))))
    expect_pillar_output(
      crayon = FALSE,
      xf = colonnade(x, width = 30),
      filename = "matrix-col-named.txt"
    )
  })

  test_that("matrix columns (empty)", {
    x <- list(a = 1:3, b = matrix(4:6, ncol = 1)[, 0])
    expect_pillar_output(
      crayon = FALSE,
      xf = colonnade(x, width = 30),
      filename = "matrix-col-empty.txt"
    )
  })
}) # withr::with_options(list(pillar.bold = TRUE),
