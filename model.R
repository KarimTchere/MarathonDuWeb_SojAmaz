library(readxl)

data <- read_excel("C:/Users/FZ/Desktop/marathon web/github/MarathonDuWeb_SojAmaz/Datatest.xlsx")

data$Q_2_2_municipe <- factor(data$Q_2_2_municipe)

data$Q_2_2_1_zone <- factor(data$Q_2_2_1_zone)

data$Q_3_1_3_genre <- factor(data$Q_3_1_3_genre)

ordre_scolarite <- c("Jamaisetudie", "Enseignementprimaireincomplet",
                     "Terminerl'enseignementprimaire","ecolesecondaireincomplete",
                     "Diplomed'etudessecondaires","Enseignementsuperieurincomplet",
                     "Enseignementsuperieurcomplet")
data$Q_3_1_4_Scolarite <- factor(data$Q_3_1_4_Scolarite, levels = ordre_scolarite)

ordre_temps_comu <- c("Moinsde5ans", "De5a15ans",
                     "Entre15et30ans","Plusde30ans",
                     "Jesuisne(e)ici/j'aigrandiici/jesuisarrive(e)icipendantmonenfance(jusqu'al'agede18ans)")
data$Q_3_3_2_temps_communautes <- factor(data$Q_3_3_2_temps_communautes, levels = ordre_temps_comu)

data$Q_3_4_2_activites_professionnelles <- factor(data$Q_3_4_2_activites_professionnelles)

ordre_personnes_habitent <- c("1","2","3","4","5","6","7","8","9","10","11","13","21")
data$Q_4_1_2_combien_personnes_habitent <- factor(data$Q_4_1_2_combien_personnes_habitent, levels = ordre_personnes_habitent)

data$Q_4_1_2_1_qui_habite <- factor(data$Q_4_1_2_1_qui_habite)

data$Q_4_4_1_participer_eglise<- factor(data$Q_4_4_1_participer_eglise)

data$Q_4_4_1_participer_au_groupe_jeunes <- factor(data$Q_4_4_1_participer_au_groupe_jeunes)

data$Q_4_4_1_participe_groupe_femmes <- factor(data$Q_4_4_1_participe_groupe_femmes)

data$Q_4_4_1_participer_syndicat <- factor(data$Q_4_4_1_participer_syndicat)

data$Q_4_4_1_participer_a_la_cooperation <- factor(data$Q_4_4_1_participer_a_la_cooperation)

data$Q_4_4_1_participer_a_la_communaute_associative <- factor(data$Q_4_4_1_participer_a_la_communaute_associative)

data$Q_4_4_1_participer_au_football_de_club <- factor(data$Q_4_4_1_participer_au_football_de_club)

ordre_revenu_ext <- c("Vousnesavezpas","Personnenetravailleendehorsdulotissement",
                      "Jusqu'aunsalaireminimum","Plusde1a3salairesminimums",
                      "Plusde3a5salairesminimums")
data$Q_4_5_1_revenu_travail_exterieur <- factor(data$Q_4_5_1_revenu_travail_exterieur, levels = ordre_revenu_ext)

data$Q_5_1_2_type_culture <- factor(data$Q_5_1_2_type_culture)

data$Q_5_3_2_cueillette_produits_forestiers <- factor(data$Q_5_3_2_cueillette_produits_forestiers)

ordre_emploi_main_oeuvre <- c("Pasdereponse","Quelquesfoisparans",
                      "Quelquesfoisparmois","Plusieursfoisparsemaine")
data$Q_6_1_2_emploi_main_doeuvre <- factor(data$Q_6_1_2_emploi_main_doeuvre, levels = ordre_emploi_main_oeuvre)

data$Q_6_1_4_2_Insecticides_chimiques <- factor(data$Q_6_1_4_2_Insecticides_chimiques)

data$Q_6_1_4_2_defensifs_naturels <- factor(data$Q_6_1_4_2_defensifs_naturels)

ordre_herbicide <- c("Jamais","1ou2foisparan","Tousles2-3mois","Touslesmois")
data$Q_6_1_4_3_herbicide <- factor(data$Q_6_1_4_3_herbicide, levels = ordre_herbicide)

data$Q_6_2_1_Produits_chimiques <- factor(data$Q_6_2_1_Produits_chimiques)

data$Q_6_2_1_2_pourquoi_nutiliser_plus_de_produits_chimiques <- factor(data$Q_6_2_1_2_pourquoi_nutiliser_plus_de_produits_chimiques)

data$Q_6_3_1_entendu_parler_agroecologie <- factor(data$Q_6_3_1_entendu_parler_agroecologie)

data$Q_6_3_1_3_1_quelle_culture_agroecologie <- factor(data$Q_6_3_1_3_1_quelle_culture_agroecologie)

data <- subset(data, select = -Q_6_3_1_3_2_depuis_quand_pratique_agroecologie)

data$Q_6_3_1_3_Pratiquedelagroecologie <- factor(data$Q_6_3_1_3_Pratiquedelagroecologie)

data$Q_7_1_1_2_produitprincipal <- factor(data$Q_7_1_1_2_produitprincipal)

data$Q_7_1_1_2_3_forme_commercialisation <- factor(data$Q_7_1_1_2_3_forme_commercialisation)

data$Q_7_1_1_3_certification <- factor(data$Q_7_1_1_3_certification)

data$Q_7_1_1_2_Produits_commerciaux <- factor(data$Q_7_1_1_2_Produits_commerciaux)

ordre_rev_agri <- c("Vousnesavezpas","Rien","Jusqu'a0,5salaireminimum",
                             "Entre0,5et1salaireminimum","Plusde1a3salairesminimums",
                             "Plusde3salairesminimums")
data$Q_7_2_1_revenu_agricole_bon_mois <- factor(data$Q_7_2_1_revenu_agricole_bon_mois, levels = ordre_rev_agri)

data$Q_7_2_2_revenu_agricole_mois_difficile <- factor(data$Q_7_2_2_revenu_agricole_mois_difficile, levels = ordre_rev_agri)

data$Q_7_4_1_1_autres_difficultes_de_production <- factor(data$Q_7_4_1_1_autres_difficultes_de_production)

data$Q_7_4_1_Principales_difficultes_de_production <- factor(data$Q_7_4_1_Principales_difficultes_de_production)

data$Q_7_4_2_principales_difficultes_de_la_commercialisation <- factor(data$Q_7_4_2_principales_difficultes_de_la_commercialisation)

data$Q_7_5_1_2_credit <- factor(data$Q_7_5_1_2_credit)

data$Q_7_6_1_Technique_dassistance_a_la_visite <- factor(data$Q_7_6_1_Technique_dassistance_a_la_visite)

data$Q_7_6_2_Douviennentlestechniciens <- factor(data$Q_7_6_2_Douviennentlestechniciens)

ordre_freq_visite <- c("Lorsquelebesoins'enfaitsentir","Moinsd'unefoisparan","Unefoisparan",
                    "Touslestroismois","Touslessixmois","Touslesmois")
data$Q_7_6_3_frequence_visites <- factor(data$Q_7_6_3_frequence_visites, levels = ordre_freq_visite)

data$Q_8_1_2_titredubien <- factor(data$Q_8_1_2_titredubien)

data$Q_8_1_4_enregistrement_environnemental_CAR <- factor(data$Q_8_1_4_enregistrement_environnemental_CAR)

data <- subset(data, select = -Q_8_1_5_annee_CAR)

data$Q_8_4_1_nouvelles_terres <- factor(data$Q_8_4_1_nouvelles_terres)

data <- subset(data, select = -Q_8_4_1_3_annee_acquisition)

data <- subset(data, select = -Q_8_5_1_5_annee_vendu)

data$Q_8_5_1_evenementdeterrain <- factor(data$Q_8_5_1_evenementdeterrain)

data$Q_8_5_2_refu_proposition_achat_refuse <- factor(data$Q_8_5_2_refu_proposition_achat_refuse)

data$Q_8_5_2_refu_proposition_achat_refuse <- factor(data$Q_8_5_2_refu_proposition_achat_refuse)

data <- subset(data, select = -Q_8_5_2_1_annee_proposition_achat)

data$Q_8_5_3_campagne_ne_vend_pas_ta_terre <- factor(data$Q_8_5_3_campagne_ne_vend_pas_ta_terre)

data$Q_9_1_1_2_abandondelaculture <- factor(data$Q_9_1_1_2_abandondelaculture)

data$Q_9_1_1_3_pourquoi_abandonner <- factor(data$Q_9_1_1_3_pourquoi_abandonner)

data$Q_9_2_1_2_quelles_nouvelles_activites <- factor(data$Q_9_2_1_2_quelles_nouvelles_activites)

data$Q_9_2_1_nouvelles_activites <- factor(data$Q_9_2_1_nouvelles_activites)

data$Q_9_3_1_Changement_du_climat <- factor(data$Q_9_3_1_Changement_du_climat)

data$Q_9_3_1_4_assechement_source <- factor(data$Q_9_3_1_4_assechement_source)

data$Q_9_3_1_5_Sourcesdeauassechees <- factor(data$Q_9_3_1_5_Sourcesdeauassechees)

data$Q_9_4_1_Changement_apres_soja <- factor(data$Q_9_4_1_Changement_apres_soja)

data$Q_9_4_1_5_changements_negatifs_soja <- factor(data$Q_9_4_1_5_changements_negatifs_soja)

data$Q_9_4_1_4_changements_positifs_soja <- factor(data$Q_9_4_1_4_changements_positifs_soja)

data <- subset(data, select = -Q_9_4_1_2_quand_changements)

data <- subset(data, select = -Q_9_4_1_3_quand_changements_lies_soja)

data$Q_9_4_2_atteint_pour_la_pulverisation_des_pesticides <- factor(data$Q_9_4_2_atteint_pour_la_pulverisation_des_pesticides)

data$Q_9_4_2_3_commentaire_pesticides_impactant <- factor(data$Q_9_4_2_3_commentaire_pesticides_impactant)

data$Q_9_4_2_4_problemes_sante_lies_pulverisations <- factor(data$Q_9_4_2_4_problemes_sante_lies_pulverisations)

data$Q_9_5_1_enfants_veulent_continuer_leur_activite_agricole <- factor(data$Q_9_5_1_enfants_veulent_continuer_leur_activite_agricole)

data$Q_9_5_1_2_quel_futur_veulent_pour_les_enfants <- factor(data$Q_9_5_1_2_quel_futur_veulent_pour_les_enfants)

data$Q_9_5_2_quel_futur_5_ans <- factor(data$Q_9_5_2_quel_futur_5_ans)

data$Q_9_6_1_situation_communautaire_sante <- factor(data$Q_9_6_1_situation_communautaire_sante)

data$Q_9_6_1_situation_communaute_education <- factor(data$Q_9_6_1_situation_communaute_education)

data$Q_9_6_1_situation_communaute_production_agricole <- factor(data$Q_9_6_1_situation_communaute_production_agricole)

data$Q_9_6_1_situation_communaute_liens_sociaux <- factor(data$Q_9_6_1_situation_communaute_liens_sociaux)

data$Q_9_6_1_situation_communaute_pouvoirs_publics <- factor(data$Q_9_6_1_situation_communaute_pouvoirs_publics)

data$Q_9_6_1_situation_communaute_route_transport <- factor(data$Q_9_6_1_situation_communaute_route_transport)

data$Q_9_6_1_situation_communaute_relations_autres_acteurs_dont_soja <- factor(data$Q_9_6_1_situation_communaute_relations_autres_acteurs_dont_soja)

data$Q_9_6_2_changements_15ans_acteurs_exterieurs <- factor(data$Q_9_6_2_changements_15ans_acteurs_exterieurs)

data$Q_9_6_2_changements_15ans_education <- factor(data$Q_9_6_2_changements_15ans_education)

data$Q_9_6_2_changements_15ans_sante <- factor(data$Q_9_6_2_changements_15ans_sante)

data$Q_9_6_2_changements_15ans_education <- factor(data$Q_9_6_2_changements_15ans_production_agricole)

data$Q_9_6_2_changements_15ans_transport_route <- factor(data$Q_9_6_2_changements_15ans_transport_route)

data$Q_9_6_2_changements_15ans_liens_sociaux <- factor(data$Q_9_6_2_changements_15ans_liens_sociaux)

data$Q_9_6_2_changements_15ans_pouvoirs_publics <- factor(data$Q_9_6_2_changements_15ans_pouvoirs_publics)

data$Q_9_6_2_changements_15ans_production_agricole <- factor(data$Q_9_6_2_changements_15ans_production_agricole)

data$Q_9_6_3_situation_agricole_familiale <- factor(data$Q_9_6_3_situation_agricole_familiale)

data$Q_9_6_3_situation_communaute_si_continue <- factor(data$Q_9_6_3_situation_communaute_si_continue)

data$Q_9_6_3_situation_soja_si_continue <- factor(data$Q_9_6_3_situation_soja_si_continue)
                                                  
var_reponse <- data$score_negatif

data <- data[, 1:50]

# Parcourir toutes les colonnes de data
for (colonne in names(data)) {
  if ((is.factor(data[[colonne]]) && length(levels(data[[colonne]])) <= 2) || (is.factor(data[[colonne]]) && length(levels(data[[colonne]]))) > 20) {
    data[[colonne]] <- NULL  # Supprimer la colonne
  }
}

#création modèle vide 
null <- lm(var_reponse~ 1, data=data)
lower <- ~1
upper <- ~ .
scope<- list(lower=lower,upper=upper)
fwd <- step(null,scope,direction = "forward", trace=FALSE)

summary(modele_regression)
modele_regression <- lm(var_reponse ~ ., data = data)


library(leaps) 
null <- lm(var_reponse~ 1, data=data)

lower <- ~1 
upper <- ~lcavol+lweight+age+lbph+svi+lcp+gleason+pgg45 
scope <- list(lower=lower,upper=upper) 
```
Stepwise avec AIC (forward, backward, both) 
```{r, echo=TRUE} 
fwd <- step(null, scope, direction="forward", trace=FALSE) 
bwd <- step(full, scope, direction="backward", trace=FALSE) 
both <- step(null, scope, direction="both", trace=FALSE) 
```
$\Rightarrow$  3 modèles équivalents ?
  
  
  ## Forward regression (résultats)
  
  
  ```{r, echo=TRUE} 
fwd 
fwd$anova 
```
## Backward regression
```{r, echo=TRUE} 
bwd
bwd$anova 
```
## Stepwise regression
```{r, echo=TRUE} 
both 
both$anova 
```

## Stepwise regression 

### Modification pour utiliser le BIC
```{r, echo=TRUE} 
BIC <- step(null, scope, k=log(n <- nrow(prostate.train)), trace=FALSE) 
BIC 
```

