## jour 1

- création de l'architecture de notre projet
- connexion de notre github avec notre projet
- Clonage du repository en local avec Git.
- Installation de l'environnement de travail dans VS Code.

## Jour 2

- sélection et téléchargement du dataset COVID-19 depuis data.gouv.fr
- Chargement des données avec Pandas
  - covid-hospit-2023-03-31-18h01.csv
  - metadonnees-sexe.csv
- Vérification du chemin d'accès au fichier
- Début de l'exploration du dataset
- Analyse des dimensions du dataset :
  - 338 245 lignes
  - 10 colonnes

## Jour 3 
- Suite exploration des données
- Identification de 102 codes départementaux.
- Vérification de la période couverte :
  - du 18/03/2020 au 31/03/2023
- Analyse des valeurs manquantes.
- Identification de valeurs manquantes dans :
  - HospConv
  - SSR_USLD
  - autres
## Jour 4: Conclusions provisoires de l'exploration
- Les indicateurs principaux (hosp, rea, rad, dc) sont complets.
- Trois variables présentent environ 33 % de valeurs manquantes.
- Une analyse complémentaire est nécessaire pour comprendre l'origine de ces valeurs manquantes avant toute opération de nettoyage.
- début du nettoyage
- préparer le notebook de nettoyage
- La colonne jour a été convertie au format datetime.
- Aucun doublon
- Aucun doublon détecté.

## Jour 5: fin exploration
- résolution du problème d'environnement Python
- valeurs manquantes liées à un changement de collecte
- vérification des types de nos données
- export de notre dataset clean dans notre repertoire data.

## Jour 6: début analyse de nos données
- mise à jour de nos fichiers exploration et nettoyage
- début de l'analyse dans notre fichier analyse
- séparation de notre df selon les sexes 0: hommes + femmes d'une part et 1: hommes et 2: femmes d'autres part afin de réaliser des analyses globaux et selon les sexes repectivement.
- nous avons ressorti df_total et df_sex
- Les variables dc et rad semblent être des variables cumulées.
- debut analyses graphiques

## Jour 7: bonne avancer de l'analyse 
 - ressortir les pics moyen d'hospitalisation
 - les pics moyen en réanimation
 - les pics en réanimation
 - le jour et l'effectif des pics nationaux.
 - récupérer le dataset kpi_total_jour pour l'analyse BI constituer des hosp, rea, dc et rad

## Analyse descriptive avancée

### Analyse temporelle

L'évolution des hospitalisations et des admissions en réanimation a permis d'identifier plusieurs vagues épidémiques entre 2020 et 2023.

Le pic national d'hospitalisation a été observé le 16 novembre 2020 avec 33 466 patients hospitalisés simultanément.

Le pic national de réanimation a été observé le 8 avril 2020 avec 7 019 patients simultanément admis en réanimation.

Les pics d'hospitalisation et de réanimation ne sont pas observés à la même période, suggérant que la première vague a généré proportionnellement davantage de formes graves.

### Analyse par sexe

Les femmes représentent : 54 % des hospitalisations

Les hommes représentent :

63 % des admissions en réanimation
57 % des décès

Ces résultats suggèrent que les hommes ont davantage été touchés par les formes graves de la maladie.

#### Analyse géographique

Les départements les plus touchés sont :

Paris (75)
Hauts-de-Seine (92)
Val-de-Marne (94)
Seine-Saint-Denis (93)
Nord (59)
Rhône (69)
Bouches-du-Rhône (13)

Les zones urbaines fortement peuplées ont subi la plus forte pression hospitalière.

## Jour 8: Dashboard (Disponible bientôt) 
- importation des tables générées (annuelle, evolution, sexe et departements) dans le fichier analyse vers notre Power BI 
- mise en forme des différentes tables: vérifier les types des données, puis les tranformer  et changement si nécessaire, suppression des colonnes inutiles
- début sortie des KPI dans power BI : Covid-19 en France Vue d'ensemble (2020-2023)
- debut réalisation des graphiques 
    - Répartition géographique des hospitalisations
    - Impact du Covid-19 selon le sexe
    - Comparaison des vagues épidémiques 

## Jour 9: Suite Power BI - Ajout des dashboards dans le repertoire images
- Création des tables analytiques
- Construction de la page "Vue d'ensemble"
- Création des KPI nationaux
- Création des courbes d'évolution des hospitalisations et des réanimations
- Construction de la page géographique
- Identification des départements les plus touchés
- Construction de la page temporelle
- Analyse des moyennes annuelles des hospitalisations et des réanimations
- Rédaction des conclusions métier
- Validation des résultats avec contrôle de cohérence entre Python et Power BI.
- quelques exemples de requêtes qui auraient pu être faites pour resortir les KPI en utilisant SQL.


Les variables HospConv, SSR_USLD et autres n'ont pas été retenues dans l'analyse principale en raison d'une disponibilité partielle des données sur la période étudiée. Les indicateurs hospitalisations, réanimations, décès et retours à domicile ont été privilégiés afin de garantir une cohérence temporelle sur l'ensemble de la période 2020–2023.