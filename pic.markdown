---
title: La famille PIC
layout: page
permalink: /pic
nav_order: 3
---

# La famille PIC

Les microcontrôleurs PIC de l'entreprise Microchip forment une famille assez vaste regroupant plusieurs gammes : PIC10, PIC12, PIC16, PIC24 et dsPIC. Ils sont utilisés dans diverses applications industrielles, telles que la gestion des moteurs en automobile, le traitement des signaux ou encore la gestion de capteurs.

Chaque puce à une page dédiée sur le site du constructeur, voici celle du PIC16F1827 : [retrouvez là ici](https://www.microchip.com/en-us/product/pic16f1827)

Comme pour les autres composants en éléctronique, chaque puce à un **datasheet**, qui est le document de référence. Pour la PIC16F1827, vous pouvez la retrouver dans l'onglet **Documentation**, puis en filtre vous indiquez **Data sheets**. Il se peut qu'il y ait plusieurs documents classés comme **data sheets**, pour repérer celui qui nous intéresse, ce dernier décrivant tous les aspects du produit il comporte donc beaucoup de pages (quelques centaines).

![alt text](doc-pic16f1827.png)

En terme de caractéristiques, ces microcontrolleurs ont une horloge interne qui peut être choisie. Les plages de fréquences possibles vont du 31kHz à plusieurs MHz pour le PIC16F1827. 
Leur capacité de stockage est quant à elle de quelques milliers de bytes.
8 Kb pour stocker votre programme, et la RAM est de 384 bytes.
Ils sont alimentés entre 1.8-5.5 Volts et ont besoins de nano/micro amperes, parfois micro amperes pour des grosses puces (PIC18F452-I/P par exemple). Leur consommation d'énergie est donc faible, ce qui en fait un candidat parfais pour des circuits qui nécessites une faible consommation de courant. Leur petite taille comparé à des microcontrolleurs habillés comme les arduino en font un candidat idéal si vous voulez faire des circuits discrets.