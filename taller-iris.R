# Title     : TODO
# Objective : TODO
# Created by: royber manjarrez y gustavo garcia
# Created on: 8 mar. 2021
library(VIM)
library(dplyr)
library(modeest)
library(tidyr)
library(magrittr)
library(FactoMineR)

irisData <- read.csv("https://raw.githubusercontent.com/Roybermahe/train-with-iris/main/iris%20(3).data", header = FALSE, stringsAsFactors = TRUE)
names(irisData) <- c("Sepal.length", "Sepal.width","Petal.length","Petal.width", "Species")
summary(irisData)

data <- irisData %>% select_if(is.numeric)
colnames(data)
groupSetosa <- subset(irisData, Species == "Iris-setosa")
groupVersicolor <- subset(irisData, Species == "Iris-versicolor")
groupVirginica <- subset(irisData, Species == "Iris-virginica")
groupSetosa %>% summarise(
  attr = "Iris-Setosa",
  mPetal.length = mlv(Petal.length ,method = "mfv"),
  mPetal.width = mlv(Petal.width ,method = "mfv"),
  mSepa.length = mlv(Sepal.length ,method = "mfv"),
  mSepa.width = mlv(Sepal.width ,method = "mfv")
)
groupVersicolor %>% summarise(
  attr = "Iris-Versicolor",
  mPetal.length = mlv(Petal.length ,method = "mfv"),
  mPetal.width = mlv(Petal.width ,method = "mfv"),
  mSepa.length = mlv(Sepal.length ,method = "mfv"),
  mSepa.width = mlv(Sepal.width ,method = "mfv")
)
groupVirginica %>% summarise(
  attr = "Iris-Virginica",
  mPetal.length = mlv(Petal.length ,method = "mfv"),
  mPetal.width = mlv(Petal.width ,method = "mfv"),
  mSepa.length = mlv(Sepal.length ,method = "mfv"),
  mSepa.width = mlv(Sepal.width ,method = "mfv")
)
apply(irisData, 2, mlv,method = "mfv")
aggr(irisData, number = TRUE, border= NA, combine = TRUE)


  etiquetas <- c("Iris Setosa", "Iris Versicolour", "Iris Virginica")

  registro-iris-setosa <- nrow(irisData, Species== "iris-setosa")
  registro-Iris-versicolor <- nrow(irisData, Species== "Iris-versicolor")
  registro-Iris-virginica <- nrow(irisData, Species== "Iris-virginica")