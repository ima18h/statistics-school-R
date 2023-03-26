B <- 10000
set.seed(5)
matrix <- replicate(n = B,
                    expr = rnorm(n = 15, mean = 558, sd = 30))

library(Rmisc)
library(dplyr)

i <- 0
for (b in 1:B)
{
  ci <- CI(matrix[ , b])
  if(between(558, getElement(ci, "lower"), getElement(ci, "upper")))
  {
    i <- i + 1
  }
}

print(i)
