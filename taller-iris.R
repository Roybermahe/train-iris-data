# Title     : TODO
# Objective : TODO
# Created by: royber manjarrez y gustavo
# Created on: 8 mar. 2021
irisData <- read.csv("https://raw.githubusercontent.com/Roybermahe/train-with-iris/main/iris%20(3).data", header = FALSE, stringsAsFactors = TRUE)
names(irisData) <- c("Sepal.length", "Sepal.width","Petal.length","Petal.width", "Species")
summary(irisData)

