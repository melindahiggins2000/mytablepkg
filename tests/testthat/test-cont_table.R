test_that("cont_table() make custom tbl_summary object", {
  expect_s3_class(
    cont_table(varlist = c("mpg", "wt"), data = mtcars),
    "gtsummary")
  expect_s3_class(
    cont_table(varlist = c("mpg", "wt"), data = mtcars),
    "tbl_summary")
})
