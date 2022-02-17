setwd("C:/Users/EKRZDAW/Desktop/APu")

install.packages("data.tree")
install.packages("formattable")
install.packages("DiagrammeR")
install.packages("C:/Users/EKRZDAW/Downloads/ahp_0.2.12.tar.gz", repos=NULL, type = "source")
library(ahp)
library(data.tree)
library(formattable)
library(DiagrammeR)

telefonyAHP<- Load("telefony.yml")
Calculate(telefonyAHP)
print(telefonyAHP, priority = function(x) x$parent$priority["Total", x$name])
Visualize(telefonyAHP)
Analyze(telefonyAHP)
AnalyzeTable(telefonyAHP)
