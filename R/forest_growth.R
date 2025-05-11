#' Forest Growth Function
#'
#' @param C size of the forest (units of Carbon (C))
#' @param parms a df with three values (r, g, K)
#' @param Time 
#'
#' @return derivative of size with time 
#'
#' @examples

forest_growth <- function(Time, C, parms, thresh = 50) {
  
  r <- parms$r
  g <- parms$g
  K <- parms$K
  
  if(C < thresh) {
    dC <- r * C
  } else {
    dC <- g * (1 - C/K)
  }
  return(list(dC))
}