#' Title
#'
#' @param path
#'
#' @return
#' @export
#'
#' @examples
read_estimation_results <- function(path) {
  t <- read.table(file = file.path(path,"results.txt"), header = TRUE, row.names = 1)
  h <- read.table(file = file.path(path, "hess.txt"), header = FALSE)
  return(list("results" = t,"hess" = h))
}
