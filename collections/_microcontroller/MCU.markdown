---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: C'est quoi un microcontrolleur ?
layout: page
permalink: /:collection/:name
nav_order: 1
---

# Présentation générale

Les microcontrôleurs sont des puces électroniques qui permettent d'ajouter de la logique dans un circuit électronique. Pour ce faire, ces puces vont gérer des ports GPIO qui vont être soit une entrée soit une sortie. Les microcontrôleurs les plus connus par le grand public sont ceux d'Arduino. Ces derniers sont intégrés à des cartes sur lesquelles on ajoute des éléments supplémentaires pour faciliter le développement comme des ports USB. Il s'agit en réalité juste d'un microcontrôleur qui est bien habillé.

<div class="image-grid">
  <img src="arduino.png" alt="Arduino 1" />
  <img src="arduino2.jpg" alt="Arduino 2" />
</div>

Certains GPIO peuvent avoir des fonctionnalités additionnelles :
- Compatibilité avec des protocoles (I2C qu'on appelle aussi I²C, PWM, UART...etc)
- Fonctionnalité de conversions : analogique vers numérique ou l'inverse
et plein d'autres encore.

# Différence entre microcontrôleur et microprocesseur

Un point important à comprendre est la différence entre un microcontrôleur et un microprocesseur. Il y a deux caractéristiques importantes qui les différencient.

- La première concerne la structure d'un microcontrôleur. Celui-ci regroupe en son sein un microprocesseur, une mémoire et des périphériques (les GPIO). Alors qu'un microprocesseur n'a que son unité de calcul. Il ne peut donc rien stocker, il a donc besoin de composants externes (RAM, disques durs...). Un microcontrôleur peut donc fonctionner de manière autonome, à l'inverse d'un microprocesseur.

- La deuxième est que le microcontrôleur ne peut réaliser qu'une tâche à la fois, alors lorsqu'on utilise ce type de composant, on va lui faire faire une tâche bien précise. À contrario, un microprocesseur peut effectuer plusieurs tâches simultanément.

# Les formats

Un même microcontrôleur peut avoir plusieurs formats, ce qui impacte son implémentation dans un circuit électronique. Prenons l'exemple du microcontrôleur [PIC16F1827](https://www.microchip.com/en-us/product/pic16f1827), ce dernier a 5 formats, dont 3 qui sont très différents à l'œil nu :

<div class="image-grid">
  <img src="pic16f1827-m4x.png" alt="PIC16F1827 QFN" />
  <img src="pic16f1827-g3x.png" alt="PIC16F1827 SSOP" />
  <img src="pic16f1827-f3x.png" alt="PIC16F1827 PDIP" />
</div>

Nous le verrons dans la partie sur les entrées/sorties, il faut faire attention lorsqu'on lit une data sheet à ne pas se tromper de format.

À noter, si vous regardez cette partie d'une documentation, il se peut que le terme **DIP XX** revienne, où **XX** est un nombre. Ce dernier indique le nombre de broches que la puce possède (ex : DIP18, DIP40...). Le mot 'broche' n'est pas forcément un pic, il peut s'agir aussi juste d'une surface limitée qui sert de point de contact pour transmettre/remplir un rôle. Si l'on regarde les trois images ci-dessus, l'image de droite, nous voyons clairement des broches, mais celui à gauche a juste **XX** surfaces de contact.