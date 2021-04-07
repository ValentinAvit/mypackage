# mypackage
Exemple simple de structure de package (en utilisant devtools, usethis et roxygen2).

Le package "mypackage" contient une unique fonction, "ajoute_deux", une vignette, un test unitaire simple sur ajoute_deux, un devtools_history.

Cet exemple a pour vocation d'aider à comprendre comment se structure un package, en l'illustrant avec une unique fonction.

Le devtools_history sert à centraliser les exécutions de commandes usethis (afin d'en garder une trace, c'est un historique).
Les fonctions du packages se trouvent dans les fichiers stockées dans le dossier "R". Chaque fonction contient, avant celle-ci, un squelette Roxygen, servant à générer la documentation.
La vignette contient un titre, une brève description et un exemple pour chaque fonction.
Les tests (un fichier de test unitaire est généré en exécutant la commande "usethis::use_test("nomfonction" depuis le devtools_history) se trouvent dans le dossier tests (dans le dossier testthat).






Le cas d'appel de fonctions de packages n'est ici pas illustré. 
Lorsqu'une fonction de ce package appelle une fonction qui n'est pas inclue dans le R de base, la fonction doit être de la forme "nompackage::nomfonction"
(contrairement à simplement "nomfonction" d'habitude). "@import nompackage" (ou bien "@importFrom nompackage nomfonction") doit être inclus entre "@return" et "@export".
La commande "usethis::use_package("nompackage") doit ensuite être exécutée depuis le devtools_history.
