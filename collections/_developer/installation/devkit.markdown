---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: Kit de développement (IMPORTANT!)
layout: page
parent: Mise en place
nav_order: 1
---


Le kit de développement est un élément indispensable pour développer sur un microcontrolleur PIC. Ce dernier coute plus ou moins cher, pour ce tutoriel, j'utiliserai un clone qui est achetable sur aliexpress pour une quinzaine d'euros et fait parfaitement le travail pour des projets personnels.

Pour les personnes voulant la référence : [Lien vers aliexpress](https://fr.aliexpress.com/item/1005005973904576.html?spm=a2g0o.order_list.order_list_main.5.7bad5e5bHLNZnV&gatewayAdapt=glo2fra)

On peut utiliser ce kit de deux manières. La première consiste à utiliser le support fourni avec le microcontrolleur et la seconde à brancher directement le PICKit sur la plaque de test où se trouve votre circuit éléctronique. Ces deux méthodes vont être détaillées dans la suite de ce document.

## PICKit 3 non détécté par MPLAB

![alt text](mplab_pickit-1.png)

{: .warning }
La version de votre MPLab est trop récente, rétrograder cette dernière à une version inférieure.

## Utilisation du support
Voici le support qui est fourni avec le PICKit, il permet de brancher un large éventail de microcontrolleurs. Voici une explication de chaque élément présent sur le support.

![alt text](mplab_pickit-2.jpg)

- En orange : les emplacements des broches ;
- En bleu : le levier permettant de bloquer les broches pour établir la connexion physique entre le support et votre puce ;
- En violet : Très important, des cavaliers ou jumper en anglais, pour configurer votre support en fonction de votre puce (voir partie suivante) ;
- En vert : les broches pour brancher le PICKit au support.

A l'arrière, on retrouve des dessins qui indique comment configurer le support physiquement avec les cavaliers (jumper) vus ci-dessus. 

| **DIP 28,40**      | J1: 3 | J2      | J3      | J4 | J5 | J6 | J7: 2-3 |
| **DIP 8,14,18,20** | J1: 2 | J2      | J3      | J4 | J5 | J6 | J7: 2-3 |
| **PIC10FXXX**      | J1: 1 | J3: 1-2 | J2      | J4 | J5 | J6 | J7: 2-3 |
| **PIC16F57**       | J1: 3 | J2: 1-2 | J3      | J4 | J5 | J6 | J7: 2-3 |
| **PIC16F59**       | J1: 2 | J2      | J3: 2-3 | J4 | J5 | J6 | J7: 1-2 |

![alt text](mplab_pickit-3.jpg)

Voici un exemple, si j'ai un PIC16F1827 qui a 18 broches, donc DIP 18. J'ai mis en orange les broches obligatoires à avoir et la trace de la puce qui indique comment la placer sur le support.

![alt text](mplab_pickit-3-example.jpg)

Une fois la configuration du support faite, **baisser le levier vert pour bloquer la puce**, puis il ne vous reste plus qu'à connecter ce dernier au PICKit et de le relier en USB à votre ordinateur. 

![alt text](mplab_pickit-4.jpg)

## Utilisation du PICKit directement

La méthode présentée ci-dessus n'est pas très pratique si vous souhaitez tester votre code puisqu'il faut retirer la puce et la mettre dans votre circuit et vice-versa pour modifier le code. Le plus simple est de brancher directement le PICKit à votre puce sur votre circuit. Vous trouverez ci-dessous un exemple toujours avec le PIC16F1827. Les informations sont disponibles dans le tableau récapitulatif des broches dans la datasheet.

<div class="image-grid">
  <img src="mplab_pickit-5.png" alt="" />
  <img src="mplab_pickit-5-pic.png" alt="PIC16F1827 pins" />
</div>

Le branchement direct permet aussi au PICKit 3 d'alimenter votre circuit si ce dernier n'est pas trop demandant, comme des leds. Ainsi, les modifications apportées à votre programme sont directements appliquées et visibles.