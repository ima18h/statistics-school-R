n <- 8280
f <- 486
n <- 441

prop.test(c(n, n), c(f, n), alternative="two.sided")
