install.packages("FactoMineR")
install.packages("factoextra")

library(FactoMineR)
library(factoextra)

data <- read.csv("C:/Users/duboi/Desktop/cours/M1/mdw/MarathonDuWeb_SojAmaz/Data/data_binaires_tout.csv")



# Supprimer les colonnes spécifiées
data <- data[, !names(data) %in% c("Q_6.2.1.2_Utilisation_de_produits_chimiques_pour_lutter_contre_les_nuisibles_d.acces_difficile",
                                   "Q_6.2.1.2_Utiliser_des_produits_chimiques_pour_controler_les_nuisibles_dans_la_famille_des_amis",
                                   "Q_6.2.1.2_Utilisation_de_produits_chimiques_pour_controler_les_nuisibles_tec_union",
                                   "Q_7.5.1.2_Type_de_financement_Pronaf_femmes",
                                   "Q_7.5.1.2_Type_de_financement_du_jeune_Pronaf",
                                   "Q_7.5.1.2_Type.de.financement",
                                   "Q_7.6.2_Os_tecnicos_ONG",
                                   "Q_9.3.1.5_Sources_d.eau_seche_ou_ruisseau_sec")]

mca <- MCA(data1, graph = FALSE)
data1 <- data[, 2:ncol(data)]

acm <- CA(data, graph = TRUE)  

# matricecorrelation
mat_cor <- cor(data)
mat_cor
acp <- PCA(mat_cor, graph = TRUE)

fviz_pca_biplot(acp, repel = TRUE)
