---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: Kit de développement (IMPORTANT!)
layout: page
parent: Mise en place
nav_order: 1
---


Le kit de développement est un élément indispensable pour programmer un microcontrôleur PIC. Son coût varie, mais pour ce tutoriel, j'utiliserai un clone disponible sur AliExpress pour une quinzaine d'euros, qui remplit parfaitement son rôle pour des projets personnels.

Pour ceux qui souhaitent la référence : [Lien vers aliexpress](https://fr.aliexpress.com/item/1005005973904576.html?spm=a2g0o.order_list.order_list_main.5.7bad5e5bHLNZnV&gatewayAdapt=glo2fra)

Ce kit peut être utilisé de deux manières. La première consiste à utiliser le support fourni avec le microcontrôleur, et la seconde à brancher directement le PICKit sur la plaque de test où se trouve votre circuit électronique. Ces deux méthodes seront détaillées dans la suite de cette page.

## PICKit 3 non détécté par MPLAB

Si vous rencontrez cette erreur au lancement de MPLab IDE avec votre boîtier branché, désinstallez-le puis installez une version plus ancienne de MPLab IDE. Votre version actuelle est probablement trop récente et ne prend pas encore en charge le PICKit 3.

![alt text](mplab_pickit-1.png)

## Utilisation du support

Voici le support fourni avec le PICKit. Il permet de connecter un large éventail de microcontrôleurs. Voici une explication de chaque élément présent sur ce support.

![alt text](mplab_pickit-2.jpg){: .resize-big-img-300 .centered-image}

- En orange : les emplacements des broches ;
- En bleu : le levier permettant de bloquer les broches pour établir la connexion physique entre le support et votre puce ;
- En violet : très important, les cavaliers (ou jumpers en anglais), utilisés pour configurer votre support en fonction de votre puce (voir la section suivante) ;
- En vert : les broches pour connecter le PICKit au support.

À l'arrière, on trouve des dessins indiquant comment configurer physiquement le support avec les cavaliers (jumpers) mentionnés ci-dessus.

Extrait du tableau à l'arrière :

| **DIP 28,40**      | J1: 3 | J2      | J3      | J4 | J5 | J6 | J7: 2-3 |
| **DIP 8,14,18,20** | J1: 2 | J2      | J3      | J4 | J5 | J6 | J7: 2-3 |
| **PIC10FXXX**      | J1: 1 | J3: 1-2 | J2      | J4 | J5 | J6 | J7: 2-3 |
| **PIC16F57**       | J1: 3 | J2: 1-2 | J3      | J4 | J5 | J6 | J7: 2-3 |
| **PIC16F59**       | J1: 2 | J2      | J3: 2-3 | J4 | J5 | J6 | J7: 1-2 |

![alt text](mplab_pickit-3.jpg){: .resize-big-img-300 .centered-image}

### Exemple pour PIC16F1827
Le PIC16F1827 dispose de 18 broches, soit un format DIP 18. J'ai mis en orange les broches essentielles à connecter sur la face du support, ainsi que la trace de la puce indiquant la manière de la placer sur le support.

![alt text](mplab_pickit-3-example.jpg){: .resize-big-img-300 .centered-image}

Une fois la configuration du support effectuée, abaissez le levier vert pour bloquer la puce. Il ne vous reste alors plus qu'à connecter ce dernier au PICKit et à le relier en USB à votre ordinateur.

![alt text](mplab_pickit-4.jpg){: .resize-big-img-300 .centered-image}

## Utilisation du PICKit directement

La méthode présentée ci-dessus n'est pas très pratique si vous souhaitez tester votre code, car il faut retirer la puce et la placer dans votre circuit, puis la remettre sur le support pour modifier le code. Le plus simple est de brancher directement le PICKit à votre puce, sur votre circuit. Vous trouverez ci-dessous un exemple avec le PIC16F1827. Pour les autres puces, les informations nécessaires sont disponibles dans le tableau récapitulatif des broches dans la datasheet.

{: .remind}
Le branchement direct permet également au PICKit 3 d'alimenter votre circuit, à condition que ce dernier ne soit pas trop exigeant, comme pour des LED.

<div class="image-grid">
  <img src="mplab_pickit-5.png" alt="" />
  <img src="mplab_pickit-5-pic.png" alt="PIC16F1827 pins" />
</div>