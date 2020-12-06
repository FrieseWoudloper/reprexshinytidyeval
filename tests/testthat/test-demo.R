test_that("Create file with map and POI", {
  f <- tempfile(fileext = ".png")
  demo(f)
  expect_true(file.exists(f))
})
