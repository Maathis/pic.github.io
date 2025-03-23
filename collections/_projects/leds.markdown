---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: '#1 Allumer des leds'
layout: page
permalink: /:collection/:name
nav_order: 1
---

# Projet : Allumer des leds

Ce projet est simple, nous prenons 3 leds qui doivent s'allumer chacune leur tour puis s'éteindre en boucle.

## Branchements

Le circuit est allimenté par le kit de developpement (PICKit).

![alt text](pr1-schema.png)

## Configuration du microcontrolleur

Réferrez-vous à cette partie pour la base : [Générer le code de base](/developer/gen-codebase)

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