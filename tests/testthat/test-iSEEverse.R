test_that("We got the logo", {
  expect_type(iSEEverse_logo(), "character")
})

test_that("Check & update iSEEverse", {
  expect_true(
    is.null(iSEEverse_update())
  )
})
