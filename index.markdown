---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---

# Motivation

Je rédige ces pages à la suite d'une frustration de ne pas trouver de documentation claire pour programmer les microcontrôleurs en C. Beaucoup de documents abordent la syntaxe du C en général, mais peu traitent à la fois du débogueur, des API C et de l'IDE MPLab. Par conséquent, j'ai décidé de structurer et de consigner proprement tout ce que j'ai appris en expérimentant sur cette plateforme.

{: .remind }
Dans ce document, je me référerai très souvent à la puce PIC16F1827 pour les exemples. J'ai essayé d'expliquer la démarche à suivre pour trouver les informations, afin que vous puissiez rechercher par vous-même en toute sérénité si vous travaillez sur une autre puce de cette famille.

Ce document ne s'adresse à personne en particulier. Lors de sa rédaction, j'ai essayé de le rendre le plus accessible possible au plus grand nombre en expliquant comment j'ai trouvé l'information pour essayer de rendre le plus universelle possible ma.

# Famille PIC
Les microcontrôleurs PIC forment une famille assez vaste regroupant plusieurs gammes : PIC10, PIC12, PIC16, PIC24 et dsPIC. Ils sont utilisés dans diverses applications industrielles, telles que la gestion des moteurs en automobile, le traitement des signaux ou encore la gestion des capteurs.

Chaque puce à une page dédiée sur le site du constructeur, Microchip, voici celle du PIC16F1827 : [retrouvez là ici](https://www.microchip.com/en-us/product/pic16f1827)

Comme pour les autres composants en éléctronique, chaque puce à un **datasheet**, qui est le document de référence sur celle-ci. Pour la PIC16F1827, vous pouvez la retrouver dans l'onglet **Documentation**, puis en filtre vous indiquez **Data sheets**. Il se peut qu'il y ait plusieurs documents classés comme **data sheets**, pour repérer celui qui nous intéresse, ce dernier décrivant tous les aspects du produit il comporte beaucoup de pages (quelques centaines).

![alt text](doc-pic16f1827.png)

