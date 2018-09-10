setwd("~/aside_projects/datascience/titanic")
train <- read.csv("~/aside_projects/datascience/titanic/train.csv")
test <- read.csv("~/aside_projects/datascience/titanic/test.csv")

## First attempt
str(train)
# Inicial guess, they all died MUAHAHA!
test$Survived <- rep(0,418)
submit <- data.frame(PassengerId = test$PassengerId, Survived = test$Survived)
write.csv(submit, file = "./submissions/they_all_died.csv", row.names = FALSE)

## Second attempt

# Let's analyse if we can make any correlation
# between sex/age and if they survived
summary(train$Sex)
# The final parameter is for prop.table to analyse
# specific by the Sex and not to divide by all
# values
prop.table(table(train$Sex,train$Survived),1)
# We see that most females survived when most man didn't 
# using this data we can change or prediction to take this
# information in consideration
are_female <- test$Sex == "female"
test$Survived[are_female] <- 1
submit <- data.frame(PassengerId = test$PassengerId, Survived = test$Survived)
write.csv(submit, file = "./submissions/gender_model.csv", row.names = FALSE)

# Now we can also understand if the age couldn't be also
# related 
summary(train$Age)
# We see that we have some NA's, we could subs this NA's to the mean value
# But we'll create another column indicating if the person is a child. 
train$Child <- 0
is_under_age <- train$Age < 18
train$Child[is_under_age] <- 1
aggregate(Survived ~ Child + Sex, data=train, FUN=function(x) {sum(x)/length(x)})
# We see that independent if you're a child or an adult 
# it didn't matter
