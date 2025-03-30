---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: Installer MPLab X IDE
layout: page
parent: Mise en place
nav_order: 2
---

# Installation des outils  
MPLAB X IDE est un logiciel qui intègre plusieurs outils pour aider au développement de programmes sur les produits Microchip. C'est un outil indispensable pour le développement sur la plateforme PIC, car il permet de communiquer avec le kit de développement.

## Installation de MPLAB X IDE  
Rendez-vous sur le site de Microchip, à cette page [Page MPLAB X IDE](https://www.microchip.com/en-us/tools-resources/develop/mplab-x-ide) et téléchargez le logiciel. Au moment où j'écris ces lignes, la dernière version est la 6.25, mais il y a des problèmes pour reconnaître le PICKit. Je vous conseille donc de télécharger la version antérieure, la 6.20.

![Page officielle de MPLAB X IDE](mplab_dl.png)

Ouvrez le fichier que vous venez de télécharger et procédez à l'installation.  
![alt text](mplab_step-1.png)

Acceptez les conditions et continuez l'installation.  
![alt text](mplab_step-2.png)

Ensuite, choisissez l'emplacement où l'IDE sera installé sur votre ordinateur, sélectionnez que vous ne voulez pas de proxy, décochez les cases, puis poursuivez l'installation.  
![alt text](mplab_step-3.png)

Sélectionnez les éléments qui vous intéressent. Si vous ne savez pas, cochez toutes les cases.  
![alt text](mplab_step-4.png)

L'installateur va télécharger, extraire et installer correctement chaque composant. Cela prend un certain temps. Une fois fait, plusieurs messages vont apparaître pour demander l'autorisation d'installer un nouveau périphérique. Cochez sur chaque message la case, puis cliquez sur **Installer**.

Voici un exemple de message :  
![alt text](mplab_step-4.1.png)

Une fois terminée, une fenêtre s'ouvre et vous demande quel(s) compilateur(s) vous souhaitez installer. Référez-vous à la section ci-dessous pour plus de détails.

## Installation du/des compilateurs

Un compilateur est un programme qui permet de transformer du texte respectant une syntaxe et une sémantique particulières en une suite d'instructions compréhensibles par un ordinateur. Le compilateur que vous devez télécharger dépend de votre microcontrôleur. Pour le savoir, vous pouvez vous rendre sur la page Microchip de votre microcontrôleur et consulter la rubrique "Tools and Software".  
![alt text](mplab_find_compiler.png)

Lorsque vous poursuivez l'installation, tous les compilateurs sélectionnés seront téléchargés et installés un par un.

![alt text](mplab_compil_step-1.png)

Acceptez les conditions d'utilisation.  
![alt text](mplab_compil_step-2.png)

Sélectionnez la licence "Free" et continuez.  
![alt text](mplab_compil_step-3.png)

Sélectionnez l'endroit où vous souhaitez installer le compilateur.  
![alt text](mplab_compil_step-4.png)

Cochez la case pour ajouter le compilateur à votre variable d'environnement PATH, puis cliquez sur "Next" jusqu'à ce que l'installation commence.  
![alt text](mplab_compil_step-5.png)

Une fois l'installation terminée, cliquez sur "Next", puis sur "Finish".  
![alt text](mplab_compil_step-6.png)
