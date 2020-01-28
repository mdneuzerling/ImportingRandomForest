#' Predict the mpg of a car from the weight and number of cylinders
#'
#' @param cyl Number of cylinders, usually 4, 6 or 8
#' @param wt Weight of the vehicle, in 1000 pounds
#'
#' @return Predicted mpg
#' @export
#'
#' @examples predict_mpg(cyl = 6, wt = 3.6)
predict_mpg <- function(cyl, wt) {
  as.numeric(
    randomForest:::predict.randomForest(
      mtcars_rf,
      newdata = list(cyl = cyl, wt = wt),
      type = "response"
    )
  )
}
