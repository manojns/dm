library(party)
library(caret)
library(e1071)

data <- read.csv("Hospital.csv")

features <- i4 ~ i1 + i2 + i3

model <- naiveBayes(features, data)

print(model)

