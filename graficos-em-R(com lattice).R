#--- Gr�ficos com Lattice ---
library(lattice)

setwd("E:/Local/RlangWorkspace/graficos-em-R-FN")

movies <- read.csv("movies.csv")
#head(movies)

table <- table(movies$Rating)

ratings <- as.data.frame(table)

names(ratings)[1] <- "Rating"
names(ratings)[2] <- "Count"

#print(ratings)


# dotplot(
#   x =  Rating ~ Count,
#   data = ratings,
#   main = "Filmes por pontua��o",
#   ylab = "Pontua��o")

#X
#histogram(
#  x = ~Rating,
#  data = movies,
#  main = "Porcentagem de filmes por pontua��o")


barchart(
  x = Count ~ Rating,
  data = ratings,
  main = "Filmes por pontua��o",
  xlab = "Pontua��o")