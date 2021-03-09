# Title     : TODO
# Objective : TODO
# Created by: royber manjarrez y gustavo
# Created on: 8 mar. 2021
irisData <- read.csv("C:/users/royber manjarrez/Downloads/iris.data", header = FALSE, stringsAsFactors = TRUE)
names(irisData) <- c("Sepal.length", "Sepal.width","Petal.length","Petal.width", "Species")
summary(irisData)

