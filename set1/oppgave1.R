krav.bilforsikring = read.table("https://www.uio.no/studier/emner/matnat/math/STK1110/data/forsikringskrav.txt")
krav.bilforsikring$V1


n = length(V1)
# Beregner momentestimatene
data_squared = V1^2

mom_mean = sum(V1) / n
mom_var = log(sum(data_squared / n))


# Beregner mle estimater
lnx = log(V1)

mle_mean = sum(lnx) / n
mle_var = sum((lnx - mle_mean)^2) / n


mom_mean
mom_var

mle_mean
mle_var
