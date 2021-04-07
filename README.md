# mypackage
Exemple simple de structure de package (en utilisant devtools, usethis et roxygen2).

Le package "mypackage" contient une unique fonction, "ajoute_deux", une vignette, un test unitaire simple sur ajoute_deux, un devtools_history.

Cet exemple a pour vocation d'aider à comprendre comment se structure un package, en l'illustrant avec une unique fonction.

Le devtools_history sert à centraliser les exécutions de commandes usethis (afin d'en garder une trace, c'est un historique).
Les fonctions du package se trouvent dans les fichiers stockées dans le dossier "R". Chaque fonction contient, avant celle-ci, un squelette Roxygen, servant à générer la documentation.
La vignette contient un titre, une brève description et un exemple pour chaque fonction.
Les tests (un fichier de test unitaire est généré en exécutant la commande "usethis::use_test("nomfonction" depuis le devtools_history) se trouvent dans le dossier tests (dans le dossier testthat).


Dans la fenêtre "Build" de l'interface Rstudio, "Check" permet d'effectuer des vérifications et est à utiliser régulièrement. 
"Install and Restart" permet de télécharger son package.
"More > Build Source Package" sert à générer un .zip qui permet de partager son package avec d'autres utilisateurs.






Le cas d'appel de fonctions d'autres packages n'est ici pas illustré. 
Lorsqu'une fonction de ce package appelle une fonction qui n'est pas incluse dans le R de base, la fonction doit être de la forme "nompackage::nomfonction"
(contrairement à simplement "nomfonction" d'habitude). "@import nompackage" (ou bien "@importFrom nompackage nomfonction") doit être inclus entre "@return" et "@export".
La commande "usethis::use_package("nompackage") doit ensuite être exécutée depuis le devtools_history.



En cas d'interrogations, me contacter
(à valentin.avit@supagro.fr)
