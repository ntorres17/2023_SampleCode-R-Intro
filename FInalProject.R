#Final Project
#Nancy Torres
#Created on Tuesday, May 2, 2023 
#Submitted on Saturday, May 6, 2023

library(datasets)
data("iris")
iris

?iris

#Question 1a: 
unique(iris$Species)

#Question 1b: 
nrow(iris)

#Question 1c:
Freq<-table(iris$Species)
Freq

#Question 1d:
colnames(iris)

#Question 1e:
summary(iris)

#Question 2a: 
cor(iris$Petal.Length, iris$Petal.Width)

#Question 2b: 
cor(iris$Sepal.Length, iris$Sepal.Width)
#The petal length and width are strongly positively correlated, whereas
#the Sepal length and width are slightly inversely correlated. 

#Question 3:
#1) 
AssoPetal<-plot(iris$Petal.Length, iris$Petal.Width, main = "Petals Scatter Plot",
             xlab = "Petal Length", ylab = "Petal Width")

#2)
AssoSepal<-plot(iris$Sepal.Length, iris$Sepal.Width, main = "Sepals Scatter Plot",
             xlab = "Sepal Length", ylab = "Sepal Width")

#Question 4: 
#1)
install.packages("Ckmeans.1d.dp")
library(Ckmeans.1d.dp)

X = as.integer(as.factor(Ckmeans.1d.dp(iris$Petal.Width)$cluster))
X

#2) 
Y = iris$Species
Y

#3)
XYtog<-table(X, Y)

#4) See attached statement
chisq.test(XYtog)
summary(XYtog)

#5)
Box<-boxplot(Petal.Width ~ Species, data=iris, main = "Problem 4.5 Box Plot", 
             xlab = "Species", ylab = "Petal Width")

#6)
#The three species can be distinguished based off their
#size of petal. For example, the Setosa has the smallest of the 3
#species petal width followed by the Veriscolor and 
#the virginica has the largest petal width of all 3.
