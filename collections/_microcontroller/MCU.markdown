---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: C'est quoi un microcontrolleur ?
layout: page
permalink: /:collection/:name
nav_order: 1
---

# Présentation générale

Les microcontrolleurs sont des puces éléctroniques qui permettent d'ajouter de la logique dans un circuit éléctronique. Pour ce faire, ces puces vont gérer des ports GPIO qui vont être soit une entrée soit une sortie. Les microcontrolleurs les plus connus par le grand public sont ceux d'Arduino. Ces derniers sont intégrés à des cartes sur lesquels on ajoute des éléments supplémentaires pour faciliter le développement comme des ports USB. Il s'agit en réalité juste d'un microcontrolleur qui est bien présenté.

<div class="image-grid">
  <img src="arduino.png" alt="Arduino 1" />
  <img src="arduino2.jpg" alt="Arduino 2" />
</div>

Certains GPIO peuvent avoir des fonctionnalités additonnelles :
- Compatibilité avec des protocoles (ICC qu'on appelle aussi I²C, PWD, UART...etc)
- Fonctionnalité de conversions : analogique vers digital ou l'inverse
et pleins d'autres encore.

# Différence entre microcontrolleur et microprocesseur

Un point important à comprendre ; est la difference entre un microcontrolleur et un microprocesseur.Il y a deux caractéristiques importantes qui les différencie.

- La première concerne la structure d'un microcontrolleur. Celui-ci regroupe en son sein un microprocesseur, une mémoire et des périphiques (les GPIO). Alors qu'un microprocesseur n'a que son unité de calcul. Il ne peut donc rien stocker, il a donc besoin de composants externes (RAM, disques durs...). Un microcontrolleur peut donc fonctionner de manière autonome à l'inverse d'un microprocesseur.

- La deuxième est que le microcontrolleur ne peut réaliser qu'une tâche à la fois, alors lorsqu'on utilise ce type de composant, on va lui faire faire une tâche bien précise. A contrario, un microprocesseur peut effectuer plusieurs tâches simultanéments.

# Les formats

Un même microcontrolleur peut avoir plusieurs format, ce qui impacte son implémentation dans un circuit éléctronique. Prenons l'exemple du microcontroller [PIC16F1827](https://www.microchip.com/en-us/product/pic16f1827), ce dernier à 5 formats dont 3 qui sont très différents à l'oeil nu :

<div class="image-grid">
  <img src="pic16f1827-m4x.png" alt="PIC16F1827 QFN" />
  <img src="pic16f1827-g3x.png" alt="PIC16F1827 SSOP" />
  <img src="pic16f1827-f3x.png" alt="PIC16F1827 PDIP" />
</div>

Nous le verrons dans la partie sur les entrées / sorties, il faut faire attention lorsqu'on lit une datasheet à ne pas se tromper de format.

A noter, si vous regardez cette partie d'une documentation il se peut que le terme **DIP XX** revienne, où **XX** est un nombre. Ce dernier indique le nombre de broches que la puce possède (ex: DIP18, DIP40...). Le mot 'broche' n'est pas forcement un pique, il peut s'agir aussi juste d'une surface limité qui sert de point de contact pour transmettre/remplir un role. Si l'on regarde les trois images ci-dessus, l'image de droite nous voyons clairement des broches mais celui à gauche a juste XX surfaces de contact.