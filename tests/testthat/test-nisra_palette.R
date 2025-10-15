test_that("nisra_palette gives right number of colours", {
  expect_equal(length(nisra_palette()(4)), 4)
  expect_equal(nisra_palette()(2), rev(nisra_palette(reverse = TRUE)(2)))
  expect_warning(nisra_palette()(10))
})
