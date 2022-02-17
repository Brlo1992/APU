# Wczytanie niezbednych paczek
install.packages("neuralnet")
library(neuralnet)
# Funckja normalizujaca wartosci
normalize <- function(x) { return ((x-min(x)) / (max(x) -min(x)) ) }
#Dane i losowanie 100 liczb z przedzialu od 0-2PI
a = as.data.frame(runif(100, min =0, max =2*pi))
#Podstawienie wylosowanych wartosci do wyrazenia
wynik <-sin(a^cos(a))
#normalizacja
zeskalowane.a <- as.data.frame(lapply(a, normalize))
zeskalowane.a
#Przygotowanie zestawu danych dla sieci neuronowej
dane <- cbind(zeskalowane.a, wynik)
colnames(dane) <- c("A", "Wynik")
#Stworzenie i wyswietlenie sieci neuronowej
net.price <-neuralnet(Wynik~A, dane, hidden =c(3,2), threshold = 0.01)
plot(net.price)
