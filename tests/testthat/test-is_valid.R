test_that("multiplication works", {
  A <- diag(9)
  res<-is_valid(A,2,3,1)
  expect_equal(res,FALSE)
})
