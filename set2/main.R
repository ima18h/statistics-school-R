B <- 10000
set.seed(5)
matrix <- replicate(n = B,
                    expr = rnorm(n = 15, mean = 558, sd = 30))

CI_stor_utvlg <- function (x, ci = 0.95)
{
    a <- mean(x)
    s <- sd(x)
    n <- length(x)
    error <- 1.96 * s/sqrt(n)
    return(c(upper = a + error, mean = a, lower = a - error))
}
library(dplyr)

i <- 0
for (b in 1:B)
{
  ci <- CI_stor_utvlg(matrix[ , b])
  if(between(558, getElement(ci, "lower"), getElement(ci, "upper")))
  {
    i <- i + 1
  }
}

print(i)
