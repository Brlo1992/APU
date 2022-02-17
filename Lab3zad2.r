# Wczytanie niezbednych paczek
install.packages("neuralnet")
library(neuralnet)
# Funckja normalizujaca wartosci
normalize <- function(x) { return ((x-min(x)) / (max(x) -min(x)) ) }
# ustawienie working directory i zaladowanie danych
setwd("C:/Users/EKRZDAW/Desktop/APu")
telefony <-read.csv("ramka.csv")
#Przygotowanie dancyh i stworzenie sieci
net.price <-neuralnet(cena~ocena, telefony, hidden = c(5,3,3), threshold = 0.01)
plot(net.price)

