#instalacja paczki C50
install.packages("C50")
library("C50")
#ustawienie katalogu roboczego i wczytanie danych
setwd("C:/Users/EKRZDAW/Desktop/APu")
telefony = read.csv("ramka.csv")
#Statystyki dla wczytanych danych
summary(telefony)
#Zastosowanie funkcji factor na wczytanych danych
telefony$ocena <- factor(telefony$ocena)
#Wyswietlenie zfaktoryzowanych danych
telefony
#drzewo 
tree = C5.0.default(x=telefony[,-8], y=telefony$ocena)
summary(tree)
#wyswietlenie wykresu
plot(tree)
