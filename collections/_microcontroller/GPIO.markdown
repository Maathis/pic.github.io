---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: Comprendre les entrées sorties
layout: page
---

# Les entrées / sorties

Les entrées/sorties sont primordiales pour un microcontrolleur, en fonction de votre puce une broche peut avoir une ou plusieurs fonctionnalités. Dans la famille des PIC, le nom de chaque broche est composé de R_XX où _ représente une lettre majuscule de A à Z et XX un nombre. Vous pouvez trouver ci-dessous le diagramme des broches pour le PIC16F1827. On y retrouve deux catégories de broches RAXX et RBXX.


![Schema des broches PIC16F1827 PDIP](pins_pic16f1827.png){: .centered-image}

Dans le datasheet du PIC16F1827 on retrouve un tableau qui récapitule les fonctions de chaque broche avec des acronymes barbares.

![Tableau recapitulatif des broches](table_pin_pic16f1827.png)

Pour mieux s'y retrouver, un second tableau moins dense est disponible plus bas pour indiquer les fonctionnalités de chaque broche. En voici un extrait :

![Extrait tableau explicatif des broches](explain_table_pic16f1827.png)
