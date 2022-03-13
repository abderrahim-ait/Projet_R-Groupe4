test_that("multiplication works", {
  A <- Suduko()
  res<-TestSuduko(A)
  expect_equal(res,TRUE)
})
