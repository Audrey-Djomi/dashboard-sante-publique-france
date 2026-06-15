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