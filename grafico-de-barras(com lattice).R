#--- Gr�fico de barras com lattice ----
library(lattice)

df <- data.frame(name=c("a","b","c"),
                 value=c(1,2,3))

# dotplot(x=value ~ name,
#         data=df,
#         main="grafico",
#         xlab="name",
#         ylab="value")

barchart(x=value ~ name,
         data=df,
         main="Gr�fico",
         xlab="name",
         ylab="value",
         col="grey")

