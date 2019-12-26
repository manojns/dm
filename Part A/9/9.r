library(cluster)
library(factoextra)

data <- read.csv("movie.csv")

data$Species<-NULL

d<- scale(dist(data,method = "euclidian"))

kfit <- kmeans(d,3)

fviz_cluster(kfit, data)
