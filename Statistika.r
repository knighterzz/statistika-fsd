#19523096
#Daffa Nayaka Bagaskara Jusuf
#FSD - Stastistika

library(ISLR)

dataCredit <- Credit
head(dataCredit)

#1. Compute the mean and the median of Rating, Cards,
# and Age
mean(dataCredit$Rating)
mean(dataCredit$Cards)
mean(dataCredit$Age)

#2. Compute the mode of Gender, Student, and Married
library(lsr)

modeOf(dataCredit$Gender)
modeOf(dataCredit$Student)
modeOf(dataCredit$Married)

#3. Compute the sample 10,37, and 91 percentiles of Education
quantile(x =dataCredit$Education, probs = 0.1)
quantile(x =dataCredit$Education, probs = 0.37)
quantile(x =dataCredit$Education, probs = 0.91)

#4. Compute the quartiles of Balance and its corresponding boxplot
quantile(x = dataCredit$Balance, probs = c(0.25, 0.50, 0.75))
boxplot(dataCredit$Balance)

#5. Compute the correlation and the scatter plot between pairs of 
#Limit and Rating, Age and Card, Income and Education
data1 <- data.frame(limit = dataCredit$Limit, rating = dataCredit$Rating)
data2 <- data.frame(age = dataCredit$Age, card = dataCredit$Cards)
data3 <- data.frame(income = dataCredit$Income, education = dataCredit$Education)

cor(data1)
cor(data2)
cor(data3)

plot(data1$limit, data1$rating)
plot(data2$age, data2$card)
plot(data3$income, data3$education)