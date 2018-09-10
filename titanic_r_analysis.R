setwd("~/aside_projects/datascience/titanic")
train <- read.csv("~/aside_projects/datascience/titanic/train.csv")
test <- read.csv("~/aside_projects/datascience/titanic/test.csv")

str(train)
# Inicial guess, they all died MUAHAHA!
test$Survived <- rep(0,418)
submit <- data.frame(PassengerId = test$PassengerId, Survived = test$Survived)
write.csv(submit, file = "./they_all_died.csv", row.names = FALSE)
test
