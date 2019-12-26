library(cluster)
library(factoextra)

data <- read.csv("diabetes.csv")

data$Result<-NULL

d<- scale(dist(data,method = "euclidian"))

hfit <- hkmeans(d, 3)

fviz_cluster(hfit, data)
