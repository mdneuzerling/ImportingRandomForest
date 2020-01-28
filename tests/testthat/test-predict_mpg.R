test_that("mpg is sensible", {
  prediction <- predict_mpg(cyl = 6, wt = 3.6)
  expect_gte(prediction, 5)
  expect_lte(prediction, 40)
})


