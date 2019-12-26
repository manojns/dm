data <- read.csv("climate.csv")

hum <- data$humidity
moist <- data$moisture

plot(hum, moist, xlab = "humidity", ylab = "moisture")

data <- data.frame(hum, moist)
model = lm(moist ~ hum, data)

summary(model)

abline(model)

new_data <- data.frame(hum = 200)
result <- predict(model, new_data)
print(result)

