
#--- Gr�fico em R nativo ----
setwd("E:/Local/RlangWorkspace/graficos-em-R-FN")

movies <- read.csv("movies.csv")
#head(movies)

par(mfrow = c(4,1)) # divide a tela pra colocar mais graficos

##X
#plot(
#  x = movies$Rating,
#  main = "Filmes por pontua��o",
#  ylab ="Pontua��o",
#  xlab="Quantidade de filmes")

##X
#plot(
#  x = movies$Rating,
#  horiz = TRUE,
#  main = "Filmes por pontua��o",
#  ylab ="Pontua��o",
#  xlab="Quantidade de filmes")

dotchart(x = table(movies$Rating),
   pch = 16,#character  que marca o ponto
   main = "Filmes por pontua��o",
   ylab ="Pontua��o",
   xlab="Quantidade de filmes")

pie(x = table(movies$Awards),
     clockwise = TRUE,
     main ="Filmes que ganharam pr�mio")

# plot(
#   x = movies$Runtime,
#   y = rep(0,nrow(movies)),
#   main = "Distribui��o da dura��o dos filmes",
#   xlab = "Dura��o",
#   ylab =  "",
#   yaxt = "n")

# plot(x = movies$Runtime,
#      y = rep(0,nrow(movies)),
#      main =  "Distribui��o da dura��o dos filmes",
#      xlab = "Dura��o",
#      ylab =  "",
#      yaxt = "n",
#      pch=16,
#      col = rgb(0,0,0,0.1))

# plot(x = movies$Runtime,
#      y = jitter(rep(0,nrow(movies))),
#      main = "Distribui��o da dura��o dos filmes",
#      xlab = "Dura��o",
#      ylab =  "",
#      yaxt = "n")

# boxplot(x = movies$Runtime,
#         horizontal = TRUE,
#         main = "Distribui��o da dura��o dos filmes",
#         xlab = "Dura��o")

# hist(x = movies$Runtime,
#      main = "Distribui��o da dura��o dos filmes",
#      xlab = "Dura��o")

hist(
     x = movies$Runtime,
     breaks = 30,
     main = "Distribui��o da dura��o dos filmes",
     xlab = "Dura��o")

plot(x = density(movies$Runtime),
     main = "Distribui��o da dura��o dos filmes",
     xlab = "Dura��o")


par(mfrow = c(1,1)) 
