#' Title
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
