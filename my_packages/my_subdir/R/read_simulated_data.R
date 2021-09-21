#' Title
#'
#' @param path
#'
#' @return
#' @export
#'
#' @examples
read_simulated_data <- function(path) {
  #filenames = list("p.csv","q.csv","e.csv","eta.csv","iZero.csv","iNonZero.csv","nNonZero.csv","market.csv")
  #myfiles = lapply(filenames, read.csv)
  #return(myfiles)

  p <- read.csv(file.path(path,"p.csv"), header = FALSE)
  q <- read.csv(file.path(path,"q.csv"), header = FALSE)
  e <- read.csv(file.path(path,"e.csv"), header = FALSE)
  eta <- read.csv(file.path(path,"eta.csv"), header = FALSE)
  iZero <- read.csv(file.path(path,"iZero.csv"), header = FALSE)
  iNonZero <- read.csv(file.path(path,"iNonZero.csv"), header = FALSE)
  nNonZero <- read.csv(file.path(path,"nNonZero.csv"), header = FALSE)
  market <- read.csv(file.path(path,"market.csv"), header = FALSE)
  return(list("p" = p, "q" = q, "e" = e, "eta" = eta, "iZero" = iZero, "iNonZero" = iNonZero, "nNonZero" = nNonZero, "market" = market))
}
