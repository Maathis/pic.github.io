---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: Les registres
layout: page
parent: Configuration d'un microcontrôleur
nav_order: 2
---

# Les registres

Pour gérer les caractéristiques du microcontrôleur et de ses broches, il faut passer par des registres. Les registres sont des mémoires internes qui stockent des informations. Les documentations des microcontrôleurs apportent beaucoup d'informations sur leur structure, mais la librairie C que le constructeur, Microchip, propose suffit. Néanmoins, si vous souhaitez utiliser de l'assembleur pour programmer votre microcontrôleur, vous devrez prendre connaissance de la structure de la mémoire.

Pour voir tous les registres disponibles, vous pouvez directement passer par MPLab, "Windows" > "Debugging" > "IO View".

![alt text](mplab-registerview.png)

Deux onglets vont s'ouvrir, un avec un tableau à 2 colonnes "Icon" et "Peripheral". L'autre avec "Icon", "Name", "Address", "Value", "Decimal" et "Bits". Le premier permet de sélectionner les registres qui vous intéressent. Si vous cliquez sur "Port A" ou "Port B", vous aurez la liste des registres pour configurer les GPIO de votre microcontrôleur. Sur la capture d'écran ci-dessous, vous pouvez retrouver les éléments dont je viens de vous parler.

L'avantage de chercher les registres comme ceci est que si vous avez configuré votre projet MPLab avec la bonne puce, les registres qui apparaissent sont ceux de votre puce avec les bonnes adresses mémoires.

![alt text](mplab-register-port-a.png)

Pour savoir la fonction de chaque registre de chaque catégorie, il faut consulter la documentation de votre puce. Pour vous faire gagner du temps, voici une liste des principaux registres :

| Nom    | Fonction                                                                                                                      | Source   |
|--------|-------------------------------------------------------------------------------------------------------------------------------|----------|
| PORTA  | Définir si le port est allumé sur les ports RAx où x est un chiffre                                                           | page 117 |
| PORTB  | Définir si le port est allumé sur les ports RBx où x est un chiffre                                                           | page 117 |
| TRISA  | Définir la direction des données, c'est-à-dire, si le port est une entrée ou une sortie sur les ports RAx où x est un chiffre | page 117 |
| TRISB  | Définir la direction des données, c'est-à-dire, si le port est une entrée ou une sortie sur les ports RBx où x est un chiffre | page 117 |
| ANSELA | Définir le type de signal soit analogique ou numérique pour les ports RAx où x est un chiffre                                 | page 117 |
| ANSELB | Définir le type de signal soit analogique ou numérique pour les ports RBx où x est un chiffre                                 | page 117 |

Pour découvrir les autres registres, vous pouvez récupérer leurs noms dans l'onglet indiqué ci-dessus et les rechercher directement sur internet ou sur une IA.