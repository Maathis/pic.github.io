---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: C'est quoi un microcontrolleur ?
layout: page
permalink: /:collection/:name
nav_order: 1
---

TODO: clarifier le PIC et ESP32

# Présentation générale

Les microcontrolleurs sont des puces éléctroniques qui permettent d'ajouter de la logique dans un circuit éléctronique. Pour ce faire, ces puces vont gérer des ports GPIO qui vont être soit une entrée soit une sortie. Les microcontrolleurs les plus connus par le grand public sont ceux d'Arduino qui sont bien présentés avec une carte, port USB pour communiquer.

En réalité, il s'agit juste d'un microcontrolleur qui est bien présenté avec des commodités pour rendre son utilisation moins prise de tête. Vous trouverez ci-dessous un exemple, avec le microcontrolleur encadré en rouge et les GPIO encadrés en orange.

![Carte Arduino](arduino.png){: .centered-image }


Certains GPIO peuvent avoir des fonctionnalités additonnelles :
- Compatibilité avec des protocoles (ICC qu'on appelle aussi I²C, PWD, UART...etc)
- Fonctionnalité de conversions : analogique vers digital ou l'inverse
- Watchdog
et pleins d'autres encore.

# Différence entre microcontrolleur et microprocesseur

Il y a deux caractéristiques importantes qui les différencie.

## Composition des puces

un microcontrolleur regroupe en son sein un microprocesseur, une mémoire et des périphiques (les GPIO).

Un microprocesseur n'a que son unité de calcul. Il ne peut donc rien stocker, il a donc besoin de composants externes (RAM, disques durs...).

Un microcontrolleur peut donc fonctionner de manière autonome à l'inverse d'un microprocesseur.

## Exécution de tâches

Un microcontrolleur ne peut réaliser qu'une tâche à la fois, alors lorsqu'on utilise ce type de composant, on va lui faire faire une tâche bien précise. A contrario, un microprocesseur peut effectuer plusieurs tâches simultanéments.

# Les formats

Un même microcontrolleur peut avoir plusieurs format, ce qui impacte son implémentation dans un circuit éléctronique. Prenons l'exemple du microcontroller [PIC16F1827](https://www.microchip.com/en-us/product/pic16f1827), ce dernier à 5 formats dont 3 qui sont très différents à l'oeil nu :

<div class="image-grid">
  <img src="pic16f1827-m4x.png" alt="PIC16F1827 QFN" />
  <img src="pic16f1827-g3x.png" alt="PIC16F1827 SSOP" />
  <img src="pic16f1827-f3x.png" alt="PIC16F1827 PDIP" />
</div>

Nous le verrons dans la partie sur les entrées / sorties, il faut faire attention lorsqu'on lit une datasheet à ne pas se tromper de format.

// Expliquer DIP

# Consommation d'énergie

La consommation d'energie dépend des fonctionnalités du microcontroller. Si je reprends l'exemple du PIC16F1827, sa consommation d'énergie est très faible et peut être mesuré en μA (10^-6 ampères). Si nous regardons ce même point chez un ESP32, qui est un microcontrolleur qui possède des fonctionnalités avancées (Bluetooth, WiFi) et que nous activons toutes ses options nous arrivons à 160mA.