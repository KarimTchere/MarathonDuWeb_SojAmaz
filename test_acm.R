install.packages("FactoMineR")
install.packages("Factoshiny")

library(FactoMineR)
library(Factoshiny)

data <- read.csv("C:/Users/Admin/Desktop/M1/S2/MarathonDuWeb/MarathonDuWeb_SojAmaz/Data/var_quali_no_binaire1.csv", sep = ";", encoding = "UTF-8")

res.mca <- MCA(data)

#Utiliser Factoshiny pour lancer l'interface interactive pour l'analyse PCA
resshiny <- MCAshiny(res.mca)
