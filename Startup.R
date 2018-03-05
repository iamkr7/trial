#Startup funding dplyr - practice

test <- read.csv("startup_funding.csv", na.strings = c("","NA"))
test1 <- as.data.frame(test)
test1 <- test1[complete.cases(test1),]
test2 <- tbl_df(test1)


#Basic idea about the dataset
View(test2)
glimpse(test2)
head(test2,4)
tail(test2,4)
dim(test2)

#Using dplyr Concepts to get insights
#Select verb
str(test2)
summary(test2)  

test2 <- aggregate(test2$AmountInUSD,
                   by = list(Category = test2$StartupName),
                   FUN = sum)
test2

View()
