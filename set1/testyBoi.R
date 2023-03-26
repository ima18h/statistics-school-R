blindern = read.table("https://www.uio.no/studier/emner/matnat/math/STK1110/data/nedbor-blindern.txt",header=T)

# Tar bare med de 54 dagene det regnet:
V1 = blindern$nedbor[blindern$nedbor > -1]

V1
nedbor.blindern
