library(party)
library(caret)
library(e1071)

data <- read.csv("fever.csv")

features <- i4 ~ i1 + i2 +i3 + Result

model <- ctree(features, data)

plot(model)

