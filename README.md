<a href='https://github.com/abderrahim-ait/Projet_R-Groupe4/graphs/contributors' target="_blank"><img alt='GitHub' src='https://img.shields.io/badge/Contributors_-100000?style=flat&logo=GitHub&logoColor=white&labelColor=EAD809&color=black'/></a>

# Sudoku Game 
Bibliothèque pour générer, valider, résoudre des puzzles sudoku

## Objectif
L’objectif de ce travail est de créer une bibliothèque R, incluant une application Shiny, contenant des fonctions permettant de :
- générer aléatoirement des grilles de Sudoku complètes
- résoudre des grilles de Sudoku incomplètes
- générer des grilles de Sudoku incomplètes associées à un niveau de difficulté

# Le solveur utiliser : ( backtracking )
----------------------------------------
Principe :

Le backtracking est une forme de parcours en profondeur d'un arbre avec des contraintes sur les noeuds.
L'idée est de partir du noeud parent, descendre dans le premier noeud fils satisfaisant la contrainte. Ce noeud fils devient alors un noeud parent et l'on parcourt ensuite ses noeuds fils sous le même principe.
Lorsque l'on a parcouru tous les noeuds fils d'un noeud et qu'aucun ne satisfait la contrainte, on remonte alors au noeud parent et on descend dans le noeud fils suivant.
Si l'on arrive au dernier fils du premier noeud parent et qu'il ne satisfait pas la contrainte alors il n'existe pas de solution.
La solution est identifiée lorsque l'on arrive à un noeud qui satisfait la contrainte et qui n'a pas de noeud fils.

# Le niveau de difficulté :
----------------------------
Le niveau de difficulté est dépend de nombre de passage (" nombre de back")  dans l'algorithme backtracking.

# Application Shiny 
Thème 1 :
---------
<p >
  <img src="https://github.com/abderrahim-ait/Projet_R-Groupe4/blob/main/inst/Sudoku/www/Sudoku.png" width="1000" title="Suduko">
</p>

Thème 2 :
---------
<p align="center">
  <img src="https://github.com/abderrahim-ait/Projet_R-Groupe4/blob/main/inst/Sudoku/www/Sudoku2.png" width="1000" title="Suduko">
</p>


Pour voir l'application shiny vous pouvez installer le fichier `sudokugr4_0.1.0.tar.gz` et appeler la fonction `Application()`.



## Membres du Groupe
------------------------

Abderrahim Ait Moulay abderrahim.ait-moulay01@etu.umontpellier.fr

Jiayue Yuan jiayue.yuan@etu.umontpellier.fr




PROJET M1 SSD -- Programmation R










