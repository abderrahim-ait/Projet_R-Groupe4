test_that("multiplication works", {
  A <- diag(9)
  res<-testcolonne(A,2,1)
  expect_equal(res,TRUE)
})
