
> #a
> a <- 12/exp(12)
> a
[1] 7.373055e-05
> help(sqrt)
> #wektor
> wektor <- seq(80, 90)
> wektor
 [1] 80 81 82 83 84 85 86 87 88 89 90
> sum(wektor*wektor)
[1] 79585
> setwd("C:\Users\EKRZDAW\Desktop\APu")
Error: '\U' used without hex digits in character string starting ""C:\U"
> setwd("C:/Users/EKRZDAW/Desktop/APu")
> a <- smartfon Motorola""
Error: unexpected symbol in "a <- smartfon Motorola"
> a <- "smartfon Motorola"
> getwd()
[1] "C:/Users/EKRZDAW/Desktop/APu"
> ls()
[1] "a"      "wektor"
> a
[1] "smartfon Motorola"
> save(a, file="zad1.RData")
> remove(a)
> ls()
[1] "wektor"
> load("zad1.RData")
> ls()
[1] "a"      "wektor"
> a
[1] "smartfon Motorola"
> install.packages("gridExtra")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:

https://cran.rstudio.com/bin/windows/Rtools/
also installing the dependency ‘gtable’

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/gtable_0.3.0.zip'
Content type 'application/zip' length 434339 bytes (424 KB)
downloaded 424 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/gridExtra_2.3.zip'
Content type 'application/zip' length 1109482 bytes (1.1 MB)
downloaded 1.1 MB

package ‘gtable’ successfully unpacked and MD5 sums checked
package ‘gridExtra’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\EKRZDAW\AppData\Local\Temp\RtmpO29SuN\downloaded_packages
> library(gridExtra)
> help(package = "gridExtra")
> c=titanic[seq(1,10)]
Error: object 'titanic' not found
> c=Titanic[seq(1,10)]
> titanicResult = Titanic[seq(1,10)]
> grid.table(titanicResult)
> #wektor400320
> wektor400320 = seq(400, 320, -8)
> wektor400320
 [1] 400 392 384 376 368 360 352 344 336 328 320
> a <- seq(60,40)
> #b
> b <- seq(40,50)
> #sumaandb
> sumaandb <- sumaandb(b,a)
Error in sumaandb(b, a) : could not find function "sumaandb"
> a
 [1] 60 59 58 57 56 55 54 53 52 51 50 49 48 47 46 45 44 43 42
[20] 41 40
> b
 [1] 40 41 42 43 44 45 46 47 48 49 50
> sumaandb = sumaandb(b,a)
Error in sumaandb(b, a) : could not find function "sumaandb"
> sumaandb <- c(b,a)
> c
 [1]   0   0  35   0   0   0  17   0 118 154
> a <- seq(60,40)
> b <- seq(40,50)
> c = c(b,a)
> c
 [1] 40 41 42 43 44 45 46 47 48 49 50 60 59 58 57 56 55 54 53
[20] 52 51 50 49 48 47 46 45 44 43 42 41 40
> nazwa = c("Motorola Moto G200", "Motorola Moto G60", "Motorola Moto E7", "Motorola Moto G100", "Motorola Moto G30", "Motorola Moto G50", "Motorola Edge 20", "Motorola Moto E20", "Motorola Edge 20 Lite", "Motorola Moto E7 Power 4")
> wyswietlacz = c(6.8,  6.78, 6.5, 6.7, 6.5, 6.67, 6.5, 6.5, 6.67, 6.5)
> aparat_foto = c(108, 108, 13, 64, 64, 48, 108, 13, 108, 13)
> cena = c(1999, 1399, 599, 1699, 899, 999, 1999, 499, 1699, 599)
> liczba_opinin = c(5, 16, 78, 23, 128, 10, 9, 6, 9, 14)
> pamiec_RAM = c(8, 6, 4, 8, 6, 4, 8, 2, 8, 4)
> pamiec_wbudowana = c(128, 128, 64, 128, 128, 64, 128,32, 128, 64)
> ramka = data.frame(nazwa, wyswietlacz, pamiec_RAM, pamiec_wbudowana, aparat_foto, cena, liczba_opinin)
> srednia_cena = mean(ramka[, "cena"])
> srednia_cena
[1] 1239
> nowy_fon = data.frame(nazwa ="Motorola Edge 20 PRO", wyswietlacz = 6.67, aparat_foto = 108, cena = 3299, liczba_opinin = 13, pamiec_RAM = 12, pamiec_wbudowana = 256 )
> ramka = rbind(ramka, nowy_fon)
> srednia_cena = mean(ramka[, "cena"])
> srednia_cena
[1] 1426.273
> ocena = c("5", "4.5", "4", "3", "3.5", "3", "3.5", "4", "5", "5")
> ramka = cbind(ramka, ocena)
Error in data.frame(..., check.names = FALSE) : 
  arguments imply differing number of rows: 11, 10
> ocena = c("5", "4.5", "4", "3", "3.5", "3", "3.5", "4", "5", "5", "3")
> ramka = cbind(ramka, ocena)
> ramka
                      nazwa wyswietlacz pamiec_RAM pamiec_wbudowana aparat_foto cena liczba_opinin ocena
1        Motorola Moto G200        6.80          8              128         108 1999             5     5
2         Motorola Moto G60        6.78          6              128         108 1399            16   4.5
3          Motorola Moto E7        6.50          4               64          13  599            78     4
4        Motorola Moto G100        6.70          8              128          64 1699            23     3
5         Motorola Moto G30        6.50          6              128          64  899           128   3.5
6         Motorola Moto G50        6.67          4               64          48  999            10     3
7          Motorola Edge 20        6.50          8              128         108 1999             9   3.5
8         Motorola Moto E20        6.50          2               32          13  499             6     4
9     Motorola Edge 20 Lite        6.67          8              128         108 1699             9     5
10 Motorola Moto E7 Power 4        6.50          4               64          13  599            14     5
11     Motorola Edge 20 PRO        6.67         12              256         108 3299            13     3
>  
> ocena3 = mean(ramka[ramka$ocena == "3", "cena"])
> ocena3
[1] 1999
> ocena35 = mean(ramka[ramka$ocena == "3.5", "cena"])
> ocena4 = mean(ramka[ramka$ocena == "4", "cena"])
> ocena4.5 = mean(ramka[ramka$ocena == "4.5", "cena"])
> ocena45 = mean(ramka[ramka$ocena == "4.5", "cena"])
> ocena5 = mean(ramka[ramka$ocena == "5", "cena"])
> ocena3
[1] 1999
> ocena35
[1] 1449
> ocena4
[1] 549
> ocena45
[1] 1399
> ocena5
[1] 1432.333
> nowy_fon1 = data.frame(nazwa ="Sony Xperia 1 III", wyswietlacz = 6.5, aparat_foto = 12, cena = 5400, liczba_opinin = 4, pamiec_RAM = 12, pamiec_wbudowana = 256 )
> nowy_fon2 = data.frame(nazwa ="Sony Xperia 5 III", wyswietlacz = 6.1, aparat_foto = 12, cena = 4299, liczba_opinin = 3, pamiec_RAM = 8, pamiec_wbudowana = 128 )
> nowy_fon3 = data.frame(nazwa ="Sony Xperia 10 III", wyswietlacz = 6, aparat_foto = 12, cena = 1899, liczba_opinin = 15, pamiec_RAM = 6, pamiec_wbudowana = 128, ocena = "3" )
> nowy_fon2 = data.frame(nazwa ="Sony Xperia 5 III", wyswietlacz = 6.1, aparat_foto = 12, cena = 4299, liczba_opinin = 3, pamiec_RAM = 8, pamiec_wbudowana = 128, ocena = "4")
> nowy_fon2 = data.frame(nazwa ="Sony Xperia 5 III", wyswietlacz = 6.1, aparat_foto = 12, cena = 4299, liczba_opinin = 3, pamiec_RAM = 8, pamiec_wbudowana = 128, ocena = "5" )
> nowy_fon2 = data.frame(nazwa ="Sony Xperia 5 III", wyswietlacz = 6.1, aparat_foto = 12, cena = 4299, liczba_opinin = 3, pamiec_RAM = 8, pamiec_wbudowana = 128, ocena = "4")
> nowy_fon1 = data.frame(nazwa ="Sony Xperia 1 III", wyswietlacz = 6.5, aparat_foto = 12, cena = 5400, liczba_opinin = 4, pamiec_RAM = 12, pamiec_wbudowana = 256, ocena = "5")
> nowy_fon4 = data.frame(nazwa ="Sony Xperia 10 Plus", wyswietlacz = 6.5, aparat_foto = 12, cena = 1199, liczba_opinin = 7, pamiec_RAM = 4, pamiec_wbudowana = 64, ocena = "5")
> ramka = rbind(ramka, nowy_fon1)
> ramka = rbind(ramka, nowy_fon2)
> ramka = rbind(ramka, nowy_fon3)
> ramka = rbind(ramka, nowy_fon4)
> ramka
                      nazwa wyswietlacz pamiec_RAM pamiec_wbudowana aparat_foto cena liczba_opinin ocena
1        Motorola Moto G200        6.80          8              128         108 1999             5     5
2         Motorola Moto G60        6.78          6              128         108 1399            16   4.5
3          Motorola Moto E7        6.50          4               64          13  599            78     4
4        Motorola Moto G100        6.70          8              128          64 1699            23     3
5         Motorola Moto G30        6.50          6              128          64  899           128   3.5
6         Motorola Moto G50        6.67          4               64          48  999            10     3
7          Motorola Edge 20        6.50          8              128         108 1999             9   3.5
8         Motorola Moto E20        6.50          2               32          13  499             6     4
9     Motorola Edge 20 Lite        6.67          8              128         108 1699             9     5
10 Motorola Moto E7 Power 4        6.50          4               64          13  599            14     5
11     Motorola Edge 20 PRO        6.67         12              256         108 3299            13     3
12        Sony Xperia 1 III        6.50         12              256          12 5400             4     5
13        Sony Xperia 5 III        6.10          8              128          12 4299             3     4
14       Sony Xperia 10 III        6.00          6              128          12 1899            15     3
15      Sony Xperia 10 Plus        6.50          4               64          12 1199             7     5
> install.packages("plotrix")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:

https://cran.rstudio.com/bin/windows/Rtools/
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/plotrix_3.8-2.zip'
Content type 'application/zip' length 1139092 bytes (1.1 MB)
downloaded 1.1 MB

package ‘plotrix’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\EKRZDAW\AppData\Local\Temp\RtmpO29SuN\downloaded_packages
> libry(plotrix)
Error in libry(plotrix) : could not find function "libry"
> library(plotrix)
> d = table(ramka&ocena)
Error in FUN(left, right) : 
  operations are possible only for numeric, logical or complex types
> d <- table(ramka&ocena)
Error in FUN(left, right) : 
  operations are possible only for numeric, logical or complex types
> #d
> d <- table(ramka&ocena)
Error in FUN(left, right) : 
  operations are possible only for numeric, logical or complex types
> d = table(ramka&ocena)
Error in FUN(left, right) : 
  operations are possible only for numeric, logical or complex types
> d <- table(ramka&liczba_opinin)
Error in FUN(left, right) : 
  operations are possible only for numeric, logical or complex types
> d <- table(ramk$ocena)
Error in table(ramk$ocena) : object 'ramk' not found
> d <- table(ramka$ocena)
> barplot(d, main = "Ilosc", ylim = c(0, 10), xlab= "ocena", ylab = "ilosc")
> p <-table(ramka$ocena) / length(ramka$ocena)
> pie(p)
> fan.plot(p, labels = names (P), main="Ilosc")
Error in fan.plot(p, labels = names(P), main = "Ilosc") : 
  object 'P' not found
> fan.plot(p, labels = names (p), main="Ilosc")
> status_opini = ("mniej niz 50 opinii", "mniej niz 50 opinii", "50-100 opinii",  "mniej niz 50 opinii", "wiecej niz 100 opinii","mniej niz 50 opinii","mniej niz 50 opinii","mniej niz 50 opinii","mniej niz 50 opinii","mniej niz 50 opinii","mniej niz 50 opinii","mniej niz 50 opinii","mniej niz 50 opinii","mniej niz 50 opinii","mniej niz 50 opinii")
Error: unexpected ',' in "status_opini = ("mniej niz 50 opinii","
> status_opini = c("mniej niz 50 opinii", "mniej niz 50 opinii", "50-100 opinii",  "mniej niz 50 opinii", "wiecej niz 100 opinii","mniej niz 50 opinii","mniej niz 50 opinii","mniej niz 50 opinii","mniej niz 50 opinii","mniej niz 50 opinii","mniej niz 50 opinii","mniej niz 50 opinii","mniej niz 50 opinii","mniej niz 50 opinii","mniej niz 50 opinii")
> ramka = cbind(ramka, status_opini)
> p <-table(ramka$status_opini) / length(ramka$status_opini)
> pie(p)
> paste(ramka$nazwa, " ma ocene klientow ", ramka$ocena, " bo ma liczbe opinii ", ramka$liczba_opinin)
 [1] "Motorola Moto G200  ma ocene klientow  5  bo ma liczbe opinii  5"       
 [2] "Motorola Moto G60  ma ocene klientow  4.5  bo ma liczbe opinii  16"     
 [3] "Motorola Moto E7  ma ocene klientow  4  bo ma liczbe opinii  78"        
 [4] "Motorola Moto G100  ma ocene klientow  3  bo ma liczbe opinii  23"      
 [5] "Motorola Moto G30  ma ocene klientow  3.5  bo ma liczbe opinii  128"    
 [6] "Motorola Moto G50  ma ocene klientow  3  bo ma liczbe opinii  10"       
 [7] "Motorola Edge 20  ma ocene klientow  3.5  bo ma liczbe opinii  9"       
 [8] "Motorola Moto E20  ma ocene klientow  4  bo ma liczbe opinii  6"        
 [9] "Motorola Edge 20 Lite  ma ocene klientow  5  bo ma liczbe opinii  9"    
[10] "Motorola Moto E7 Power 4  ma ocene klientow  5  bo ma liczbe opinii  14"
[11] "Motorola Edge 20 PRO  ma ocene klientow  3  bo ma liczbe opinii  13"    
[12] "Sony Xperia 1 III  ma ocene klientow  5  bo ma liczbe opinii  4"        
[13] "Sony Xperia 5 III  ma ocene klientow  4  bo ma liczbe opinii  3"        
[14] "Sony Xperia 10 III  ma ocene klientow  3  bo ma liczbe opinii  15"      
[15] "Sony Xperia 10 Plus  ma ocene klientow  5  bo ma liczbe opinii  7"      
> write.csv(ramka, "ramka.csv")
> ramkaCsv = read.csv("ramka.csv")
> ramkaCsv
    X                    nazwa wyswietlacz pamiec_RAM pamiec_wbudowana aparat_foto cena liczba_opinin ocena          status_opini
1   1       Motorola Moto G200        6.80          8              128         108 1999             5   5.0   mniej niz 50 opinii
2   2        Motorola Moto G60        6.78          6              128         108 1399            16   4.5   mniej niz 50 opinii
3   3         Motorola Moto E7        6.50          4               64          13  599            78   4.0         50-100 opinii
4   4       Motorola Moto G100        6.70          8              128          64 1699            23   3.0   mniej niz 50 opinii
5   5        Motorola Moto G30        6.50          6              128          64  899           128   3.5 wiecej niz 100 opinii
6   6        Motorola Moto G50        6.67          4               64          48  999            10   3.0   mniej niz 50 opinii
7   7         Motorola Edge 20        6.50          8              128         108 1999             9   3.5   mniej niz 50 opinii
8   8        Motorola Moto E20        6.50          2               32          13  499             6   4.0   mniej niz 50 opinii
9   9    Motorola Edge 20 Lite        6.67          8              128         108 1699             9   5.0   mniej niz 50 opinii
10 10 Motorola Moto E7 Power 4        6.50          4               64          13  599            14   5.0   mniej niz 50 opinii
11 11     Motorola Edge 20 PRO        6.67         12              256         108 3299            13   3.0   mniej niz 50 opinii
12 12        Sony Xperia 1 III        6.50         12              256          12 5400             4   5.0   mniej niz 50 opinii
13 13        Sony Xperia 5 III        6.10          8              128          12 4299             3   4.0   mniej niz 50 opinii
14 14       Sony Xperia 10 III        6.00          6              128          12 1899            15   3.0   mniej niz 50 opinii
15 15      Sony Xperia 10 Plus        6.50          4               64          12 1199             7   5.0   mniej niz 50 opinii
