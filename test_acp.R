install.packages("FactoMineR")
install.packages("factoextra")

library(FactoMineR)
library(factoextra)

data <- read.csv("C:/Users/Admin/Desktop/M1/S2/MarathonDuWeb/MarathonDuWeb_SojAmaz/Data/data_binaires_tout.csv")


data_quali <- read.csv("C:/Users/Admin/Desktop/M1/S2/MarathonDuWeb/MarathonDuWeb_SojAmaz/Data/var_quali_no_binaire1.csv", sep = ";")

# Supprimer les colonnes spécifiées
data <- data[, !names(data) %in% c("Q_6.2.1.2_Utilisation_de_produits_chimiques_pour_lutter_contre_les_nuisibles_d.acces_difficile",
                                   "Q_6.2.1.2_Utiliser_des_produits_chimiques_pour_controler_les_nuisibles_dans_la_famille_des_amis",
                                   "Q_6.2.1.2_Utilisation_de_produits_chimiques_pour_controler_les_nuisibles_tec_union",
                                   "Q_7.5.1.2_Type_de_financement_Pronaf_femmes",
                                   "Q_7.5.1.2_Type_de_financement_du_jeune_Pronaf",
                                   "Q_7.5.1.2_Type.de.financement",
                                   "Q_7.6.2_Os_tecnicos_ONG",
                                   "Q_9.3.1.5_Sources_d.eau_seche_ou_ruisseau_sec")]

test <- table(data_quali_afc)
mca <- MCA(data, graph = TRUE)
acm_resultat <- FactoMineR::MCA(data_quali, graph = TRUE)

data_quali_afc

afc <- CA (data, graph = TRUE)
names (afc)
summary (afc)


mca <- MCA(data, graph = TRUE)
data1 <- data[, 2:ncol(data)]

# Générer une séquence de nombres de 1 à 545
nombres <- seq(1, 321)

# Assigner cette séquence à la première ligne du dataframe
colnames(data) <- nombres

# Afficher le dataframe pour vérifier
print(df)


acm <- CA(data, graph = TRUE)  


# matricecorrelation
mat_cor <- cor(data)
mat_cor
acp <- PCA(mat_cor, graph = TRUE)

mat_cor["id"]
 
write.csv(mat_cor, file = "C:/Users/Admin/Desktop/M1/S2/MarathonDuWeb/MarathonDuWeb_SojAmaz/Data/matrice.csv", row.names = FALSE)

