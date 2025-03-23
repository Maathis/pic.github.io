---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: Exécuter du code
layout: page
nav_order: 2
---

# Exécuter du code

Si vous êtes habituer aux environnements de développement, vous pouvez penser que faire tourner votre code sur le microcontrolleur est facile. Vous avez raison, mais à quelques subtilités près.

Brancher votre kit de développement à votre ordinateur via le cable USB. Rendez-vous sur votre projet MPLab et cliquer sur l'icone play sur la barre de navigation en haut de votre écran.

![alt text](runcode-1.png)

Si vous n'avez pas relier votre projet à votre kit de développement, une fenêtre s'ouvre vous demandant de séléctionner un outil. Séléctionner votre kit dans la liste et cliquer sur "OK".
![alt text](runcode-1.png)

Si vous regardez en bas de votre écran, des onglets s'ouvre. Un qui concerne la compilation de votre code et un autre qui indique l'état de transfère de votre code à votre microcontrolleur. Après la compilation de votre code, une fenêtre avec une icone danger s'ouvre et vous demande si vous avez bien séléctionner le bon microcontrolleur lorsque vous avez créé votre projet. Cliquer sur "OK".

![alt text](runcode-2.png)

Le programme va ensuite se transférer dans votre microcontrolleur.

![alt text](runcode-9.png)

## Problème

### Erreur, le voltage n'est pas trouvé

{: .remind }
Si vous avez ce message d'erreur, alors il se peut que vous ayez le problème d'après sur le voltage trop faible.

Dans le cas où vous avez un message d'erreur comme celui-ci :
![alt text](runcode-3.png)

Rendez-vous dans l'onglet "Projet", faites un clique droit sur votre projet et séléctionner "Properties".
![alt text](runcode-4.png)

Aller dans le menu "PICkit 3", puis faites dérouler le menu et séléctionner "Power".
![alt text](runcode-5.png)

Cocher la case "Power target circuit from PICkit3" pour que votre kit de développement alimente votre circuit.
![alt text](runcode-6.png)

### Voltage fourni trop faible

Dans le cas où vous avez un message d'erreur comme celui-ci :
![alt text](runcode-7.png)

Rendez-vous dans l'onglet "Projet", faites un clique droit sur votre projet et séléctionner "Properties".
![alt text](runcode-4.png)

Aller dans le menu "PICkit 3", puis faites dérouler le menu et séléctionner "Power".
![alt text](runcode-5.png)

Séléctionner le courant qui a été mesuré. Pour le connaître, regarder le message d'erreur. Dans la capture d'écran au-dessus il s'agit de 4.75 Volts.
![alt text](runcode-8.png)