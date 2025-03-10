---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: Installer MPLab X IDE
layout: page
parent: Initiation
nav_order: 2
---

# Installation des outils
MPLAB X IDE est un logiciel qui incorpe plusieurs outils pour aider à développer des programmes sur les produits microchip. C'est un outil irremplaçable pour le développement sur la plateforme PIC, car il permet de communiquer avec le kit de développement.

## Installation de MPLab X IDE
Rendez-vous sur le site de microchip, sur cette page [Page MPLAB X IDE](https://www.microchip.com/en-us/tools-resources/develop/mplab-x-ide) et télécharger le logiciel. Au moment où j'écris ces lignes, la dernière version est la 6.25 .

![Page officiel de MPLAB X IDE](mplab_dl.png)

Ouvrer le fichier que vous venez de télécharger et procéder à l'installation.
![alt text](mplab_step-1.png)

Accepter les conditions et continuer l'installation.
![alt text](mplab_step-2.png)

Ensuite, choisissez l'endroit où va être installé l'IDE sur votre ordinateur, séléctionner que vous ne voulez pas de proxy et décocher les cases, puis poursuiver l'installation.
![alt text](mplab_step-3.png)

Séléctionner les éléments qui vous intéressent, si vous ne savez pas cocher toutes les cases.
![alt text](mplab_step-4.png)

L'installateur va télécharger, extraire et placer correctement chaque composant. L'installation prend du temps. Une fois finie, une fenêtre s'ouvre et vous demande le/les compilateurs que vous voulez installer, référez-vous à la partie ci-dessous.

## Installation du/des compilateurs

Un compilateur est un programme qui permet de transformer du texte qui suit une syntaxe et sémantique particulière en une suite d'instructions compréhensible par un ordinateur. Le compilateur que vous devez télécharger dépend de votre microcontrolleur. Pour voir cela vous pouvez vous rendre sur la page microchip de votre microcontrolleur et regarder dans la rubrique "Tools and software".
![alt text](mplab_find_compiler.png)

Lorsque vous poursuivez l'installation, tous les compilateurs séléctionnés vont se télécharger et s'installer un par un.

![alt text](mplab_compil_step-1.png)

Accepter les conditions d'utilisation.
![alt text](mplab_compil_step-2.png)

Séléctionner la licence "Free" et continuer.
![alt text](mplab_compil_step-3.png)

Séléctionner l'endroit où vous voulez installer le compilateur.
![alt text](mplab_compil_step-4.png)

Cocher la case pour ajouter le compilateur dans votre variable d'environnement PATH, puis cliquer sur "Next" jusqu'à ce que l'installation se lance.
![alt text](mplab_compil_step-5.png)

Une fois l'installation finie, cliquez sur "Next" puis "Finish".
![alt text](mplab_compil_step-6.png)