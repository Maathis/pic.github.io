---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: '#2 Défilement de leds avec un bouton'
layout: page
permalink: /:collection/:name
nav_order: 1
---

# Projet : Allumer des leds

Ce projet reprend le premier, mais les leds s'allument une par une lorsqu'on appuie sur un bouton.

## Branchements

Le circuit est allimenté par le kit de developpement (PICKit).

pickit_2 = 4.75V | pickit_3 = GND

![alt text](pr2-schema.png)

## Configuration du microcontrolleur

Réferrez-vous à cette partie pour la base : [Générer le code de base](/developer/gen-codebase)

Rendez-vous dans l'onglet "Application builder", cliquer sur "Pins", un onglet s'ouvre.
![alt text](pr1-gen-codebase-1.png)

Définiser les ports B : 1, 2 et 3 en sortie (output) et le port 4 en entrée (input). Cliquer sur les cadenas pour qu'ils deviennent vert.

![alt text](pr2-gen-codebase-2.png)

Générer le code de base en cliquant sur le bouton "Generate" dans l'onglet "Project Resources".
![alt text](pr1-gen-codebase-3.png)

## Code

```c
#include "mcc_generated_files/system/system.h"

void switchLed(int currentLed) {
    if(currentLed == 0) {
        RB1 = 1;
        RB3 = 0;
    } else if(currentLed == 1) {
        RB2 = 1;
        RB1 = 0;
    } else if(currentLed == 2) {
        RB3 = 1;
        RB2 = 0;
    }
}

/*
    Main application
*/
int main(void)
{
    SYSTEM_Initialize();
    int currentLed = 0;
    RB1 = 0;
    RB2 = 0;
    RB3 = 0;
    while(1)
    {
        if (PORTBbits.RB4) 
        {
            switchLed(currentLed);
            __delay_ms(500);
            currentLed = (currentLed+1)%3;
        }
    }    
}
```

## Resultat

![alt text](project_2.gif)
