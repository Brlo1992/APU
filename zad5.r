# pobranie i instalacja paczek
install.packages("mlr")
install.packages("rFerns")
install.packages("randomForest")
install.packages("e1071")
install.packages("party")
library(mlr)
library(rFerns)
library(randomForest)
library(rpart.plot)
library(party)
#Ustawienie working directory
setwd("C:/Users/EKRZDAW/Desktop/APu")
#wczytanie danych dot. telefonow
telefony = read.csv("ramka2.csv")
telefony$nazwa = factor(telefony$nazwa)
telefony$ocena = factor(telefony$ocena)
summarizeColumns(telefony)
rdesc = makeResampleDesc("CV", iters = 10)
task = makeClassifTask(id = deparse(substitute(telefony)), telefony,
                       "ocena", weights = NULL, blocking = NULL, coordinates =  NULL, positive =
                         NA_character_, fixup.data = "warn", check.data = TRUE)
lrns <- makeLearners(c("rpart", "C50", "ctree", "naiveBayes",
                       "randomForest"), type = "classif")
benchmarkResults <- benchmark(learners = lrns, tasks = task, rdesc,
                              models = TRUE, measures = list(acc, ber))))
p = getBMRPredictions(benchmarkResults)
