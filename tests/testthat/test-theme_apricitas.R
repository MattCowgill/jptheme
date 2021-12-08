test_that("theme_apricitas works", {
  p <- ggplot(mtcars, aes(wt, mpg)) + geom_point()

  p_a <- p + theme_apricitas()

  expect_s3_class(p_a,
                  "gg")
  expect_s3_class(theme_apricitas(),
                  "theme")

  vdiffr::expect_doppelganger("Basic theme_apricitas() plot",
                              p_a)
})
