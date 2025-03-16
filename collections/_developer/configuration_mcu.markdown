---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: Configurer le microcontrolleur
layout: page
nav_order: 2
---

La configuration d'un microcontrolleur peut être long et complexe du fait au nombreux éléments sur lesquels on doit faire attention. MPLab IDE propose une fonctionnalité de construction du programme pour créer la base (configuration de l'horloge, des ports...), ainsi on gagne du temps et on est sûr de ne rien oublier.

Pour accéder à cette fonctionnalité, cliquer sur le logo **MCC** dans la barre en haut à gauche.
![alt text](image-2.png)

Un chargement va se lancer qui prend plus ou moins du temps, et un onglet **Application Builder** doit apparaître.

![alt text](image-3.png)

Si un autre onglet s'ouvre avec un tableau et une liste de composants, cela signifie que vous devez mettre à jour les plugins de votre MBLab. Regarder la partie ci-dessous pour régler ce problème.

![alt text](image-1.png)

## Mettre à jour les plugins de MPLab x IDE. 

Ouvrez le menu déroulant de la barre en haut à gauche s'appelant **Tools**, puis **Plugins**.
![alt text](image-4.png)

Cocher tous les composants de l'onglet **Updates** et cliquer sur le bouton **Update** en bas. Accepter les conditions d'utilisiation et procéder à l'installation.
![alt text](image.png)

Penser à redémarrer votre MPLab IDE une fois que c'est fini si cela ne se fait pas automatiquement.

## Générer la code de base de votre projet

L'onglet **Application Builder** permet de d'accéder à plusieurs caractéristiques de votre puce. Vous pouvez configurer ces dernières en passant par les menus.
![alt text](image-1.png)

Une fois votre configuration finie, générer votre configuration en cliquant sur le bouton **Generate** dans l'onglet **Project Ressources**.

![alt text](image-5.png)

Lorsque vous avez fait cela, vous pouvez constater dans votre projet que de nouveaux fichiers ont été générés.

![alt text](image-6.png)

Le code de base exécute une fonction en premier pour configurer les registres avec vos valeurs.
```c++
#include "mcc_generated_files/system/system.h"

int main(void)
{
    SYSTEM_Initialize();
    while(1)
    {
    }    
}
```