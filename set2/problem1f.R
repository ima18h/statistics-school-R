B <- 10000
set.seed(5)
matrix <- replicate(n = B,
                    expr = rt(n = 15, df = 7))
matrix = matrix*30
matrix = matrix + 558

CI_sd <- function (x, ci = 0.95)
{
    a <- mean(x)
    s <- sd(x)
    n <- length(x)
    error1 <- 1.4*s * sqrt((n-1) / qchisq(ci + (1 - ci)/2, df = n - 1))
    error2 <- 1.4*s * sqrt((n-1) / qchisq(1-(ci + (1 - ci)/2), df = n - 1))
    return(c(upper = error2, mean = a, lower = error1))
}
library(dplyr)

i <- 0
for (b in 1:B)
{
  ci <- CI_sd(matrix[ , b])
  if(between(30, getElement(ci, "lower"), getElement(ci, "upper")))
  {
    i <- i + 1
  }
}

print(i)
