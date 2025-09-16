#' Table of Descriptive Statistics for Continuous Variables
#'
#' The `cont_table()` function is built upon the
#' [gtsummary::tbl_summary()] function from the [`gtsummary`](https://www.danieldsjoberg.com/gtsummary/index.html) package. Try internal package link [gtsummary].
#'
#' @param varlist list of variables for table
#' @param data data.frame for dataset
#'
#' @returns a gtsummary table of class "tbl_summary"
#' @export
#'
#' @examples
#' cont_table(varlist = c("mpg", "wt"), data = mtcars)
cont_table <- function(varlist, data){
  gtsummary::tbl_summary(
    data = data,
    include = tidyselect::any_of(varlist),
    statistic = list(gtsummary::all_continuous() ~ "{mean} ({sd})"),
    digits = gtsummary::all_continuous() ~ 2
  )
}
