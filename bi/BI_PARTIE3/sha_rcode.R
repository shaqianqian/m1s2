
library(readr)
data <- read_csv("pokemon.csv")
data <- data.frame(data)
data$japanese_name <- NULL
data$name <- NULL
data$abilities <- NULL
library(rpart)
data2 <- na.omit(data)

m1 <- rpart(factor(is_legendary) ~ . , data = data2)

pred <- predict(m1, type = "class")

library(caret)

tb <- table(pred, data2$is_legendary)
tb

precision <-  5/(5 + 2)
recall <-  5/(5 + 0)

Fmeasure <- 2 * precision * recall / (precision + recall)
Fmeasure



m2 <- glm(factor(is_legendary) ~ . , data = data2, family = binomial(link = "logit"))

pred <- round(predict(m2, type = "response"))


tb <- table(pred, data2$is_legendary)
tb

precision <-  5/(5 + 0)
recall <-  5/(5 + 0)

Fmeasure <- 2 * precision * recall / (precision + recall)
Fmeasure

library(e1071)
m3 <- svm(factor(is_legendary) ~ . , data = data2)

pred <- predict(m3, type = "class")


tb <- table(pred, data2$is_legendary)
tb

precision <-  4/(4 + 0)
recall <-  4/(4 + 1)

Fmeasure <- 2 * precision * recall / (precision + recall)
Fmeasure







