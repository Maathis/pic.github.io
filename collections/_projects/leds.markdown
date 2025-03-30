---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: '#1 Défilement de leds automatiquement'
layout: page
permalink: /:collection/:name
nav_order: 1
---

# Projet : Allumer des leds

Ce projet est simple, nous prenons 3 LEDs qui doivent s'allumer chacune leur tour puis s'éteindre en boucle.

## Branchements

Le circuit est alimenté par le kit de développement (PICKit).

pickit_2 = 4.75V | pickit_3 = GND

![alt text](pr1-schema.png)

## Configuration du microcontrôleur

Référez-vous à cette partie pour la base : [Générer le code de base](/developer/gen-codebase)

Rendez-vous dans l'onglet "Application Builder", cliquez sur "Pins", un onglet s'ouvre.

![alt text](pr1-gen-codebase-1.png)

Définissez les ports B : 1, 2 et 3 en sortie (output). Cliquez sur les cadenas pour qu'ils deviennent verts.

![alt text](pr1-gen-codebase-2.png)

Générez le code de base en cliquant sur le bouton "Generate" dans l'onglet "Project Resources".

![alt text](pr1-gen-codebase-3.png)


## Code

```c
#include "mcc_generated_files/system/system.h"

/*
    Main application
*/

int main(void)
{
    SYSTEM_Initialize();
    // On éteint les ports au début
    RB1 = 0;
    RB2 = 0;
    RB3 = 0;
    while(1)
    {
        RB1 = 1; // On allume le port
        __delay_ms(1000); // 1 seconde de délais
        RB1 = 0;
        RB2 = 1;
        __delay_ms(1000);
        RB2 = 0;
        RB3 = 1;
        __delay_ms(1000);
        RB3 = 0;
    }    
}
```

## Resultat

![alt text](project_1.gif)
