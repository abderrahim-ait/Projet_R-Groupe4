test_that("multiplication works", {
  A <- diag(9)
  res<-testligne(A,1,5)
  expect_equal(res,FALSE)
})
