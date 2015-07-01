#' Goodness-of-Fit Plot
#' \code{GoodnessOfFitPlot} A generic function used to produce plots illustrating the goodness-of-fit of
#' the model object.  The function invokes particular \code{\link{methods}}
#' which depend on the \code{\link{class}} of the first argument.
#'
#' reports the goodness-of-fit of an object.
#' @param object An object for which a summary is desired.
#' @param ... Additional arguments affecting the goodness-of-fit displayed.
#' @param digits Minimal number of significant digits, see \code{\link{print.default}}.
#' @examples
#'
#' # linear regression
#' x <- rnorm(10)
#' y <- rnorm(10) + x
#' mod <- lm(y ~ x)
#' GoodnessOfFitPlot(mod)
#'
#' # MDS - square
#' library(smacof)
#' data(breakfastDissimilarities)
#' mdsInterval <- smacofSym(breakfastDissimilarities[[4]],
#'     type = "interval", eps = 1e-12, itmax = 100000)
#' GoodnessOfFitPlot(mdsInterval)
#' @export
GoodnessOfFitPlot <- function(object, ...) {
  UseMethod("GoodnessOfFitPlot")
}

#' @describeIn GoodnessOfFitPlot  Default goodness-of-fit plot
#' @export
GoodnessOfFitPlot.default = function(object, digits = max(3L, getOption("digits") - 3L), ...) {
  obs.fit = FittedAndObserved(object)
  print(summary(obs.fit$observed))
  linear.regression = lm(obs.fit$fitted ~ obs.fit$observed)
  GoodnessOfFitPlot.lm(linear.regression, digits, ...)
}

#' @describeIn GoodnessOfFitPlot  Goodness-of-fit plot for a linear model
#' @export
GoodnessOfFitPlot.lm = function(object, digits = max(3L, getOption("digits") - 3L), ...) {
  r2 =  paste0(formatC(100 * summary(object)$r.squared, digits = digits), "%")
  plot(fitted(object)~object$model[,1], xlab = "Observed", ylab = "Fitted", main = paste0("Adjusted R-squared: ", r2), asp = 1)
  abline(object, lty = 2, col = "red")
}

#' @describeIn GoodnessOfFitPlot  Goodness-of-fit plot for a square smacof object
#' @export
GoodnessOfFitPlot.smacof = function(object,  ...) {
  plot(object, plot.type = "Shepard")
}

#' @describeIn GoodnessOfFitPlot  Goodness-of-fit plot for a rectangular smacof object
#' @export
GoodnessOfFitPlot.smacofR = function(object, ...) {
  plot(object, plot.type = "Shepard")
}
