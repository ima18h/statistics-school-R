temp <- read.table("https://www.uio.no/studier/emner/matnat/math/STK1110/data/temp.txt", header=T)


menn <- temp$Menn
kvinner <- temp$Kvinner


# plot
#boxplot(temps$Menn)
#boxplot(temps$Kvinner)

#qqnorm(temps$Menn)
#qqline(temps$Menn)

#qqnorm(temps$Kvinner)
#qqline(temps$Kvinner)

n <- length(menn)
m <- n
m1 <- mean(menn)
m2 <- mean(kvinner)
s1.2 <- var(menn)
s2.2 <- var(kvinner)
sp.2 <- ((n-1)*s1.2+(n-1)*s2.2)/(n+n-2)
low.p <- m1-m2-qt(0.975, n+n-2)*sqrt(sp.2*(1/n+1/n))
up.p <- m1-m2+qt(0.975, n+n-2)*sqrt(sp.2*(1/n+1/n))
#c(low.p,up.p)
#t.test(menn, kvinner, var.equal=TRUE)


df <- (s1.2/m+s2.2/n)^2/((s1.2/m)^2/(m-1)+(s2.2/n)^2/(n-1))
low.s <- m1-m2-qt(0.975, df)*sqrt(s1.2/m+s2.2/n)
up.s <- m1-m2+qt(0.975, df)*sqrt(s1.2/m+s2.2/n)
#c(low.s,up.s)
#t.test(menn, kvinner, var.equal=FALSE)
#var.test(menn, kvinner, alternative="two.sided")
