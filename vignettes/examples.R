#### GoodnessOfFit

# Linear regression

x <- rnorm(10)
y <- rnorm(10) + x
mod <- glm(y ~ x)
GoodnessOfFit(mod)

# MDS
library(smacof)
data(breakfastDissimilarities)
mdsInterval <- smacofSym(breakfastDissimilarities[[4]], type = "interval", eps = 1e-12, itmax = 100000)
GoodnessOfFit(mdsInterval)

#### GoodnessOfFitPlot

# Linear regression

x <- rnorm(1000)
y <- rnorm(1000) + x
mod <- lm(y ~ x)
GoodnessOfFitPlot(mod)

# smacof

library(smacof)
library(flipGenerics)
data(breakfastDissimilarities)
mdsInterval <- smacofSym(breakfastDissimilarities[[4]], type = "interval", eps = 1e-12, itmax = 100000)
GoodnessOfFitPlot(mdsInterval)



