---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: Générer le code de base
layout: page
parent: Configuration d'un microcontrôleur
nav_order: 2
---

# Génération du code de base

La configuration d'un microcontrôleur peut être longue et complexe en raison des nombreux éléments sur lesquels il faut faire attention. MPLab IDE propose une fonctionnalité de construction du programme pour créer la base (configuration de l'horloge, des ports...), ce qui permet de gagner du temps et d'être sûr de ne rien oublier.

Pour accéder à cette fonctionnalité, cliquez sur le logo **MCC** dans la barre en haut à gauche.  
![alt text](gencode-2.png)

Un chargement va se lancer, qui prendra plus ou moins de temps, et un onglet **Application Builder** doit apparaître.  
![alt text](gencode-3.png)

Si un autre onglet s'ouvre avec un tableau et une liste de composants comme sur la capture d'écran ci-dessous, cela signifie que vous devez mettre à jour les plugins de votre MPLab. Consultez la section "Problèmes" à la fin de la page pour mettre à jour les composants.

Vérifiez tout de même si le tableau que vous avez ne concerne pas juste des dépendances que vous n'avez pas. Si c'est le cas, vous trouverez un bouton "Finish" en bas à droite. En cliquant dessus, cela lancera un chargement et le configurateur apparaîtra.

![alt text](gencode-1.png)

## Générer la code de base de votre projet

L'onglet **Application Builder** permet d'accéder à plusieurs caractéristiques de votre puce. Vous pouvez configurer ces dernières en passant par les menus. Pour éviter de faire 15 pages sur la configuration des différentes fonctionnalités, vous trouverez dans cette documentation une liste de projets que j'ai faite. Ainsi, vous trouverez les détails de comment configurer des ports, l'horloge...

Une fois votre configuration terminée, générez votre configuration en cliquant sur le bouton **Generate** dans l'onglet **Project Resources**.

![alt text](gencode-5.png)

Lorsque vous avez fait cela, vous pouvez constater dans votre projet que de nouveaux fichiers ont été générés.

![alt text](gencode-6.png)

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

## Problèmes

### Mettre à jour les plugins de MPLab x IDE. 

Ouvrez le menu déroulant de la barre en haut à gauche s'appelant **Tools**, puis **Plugins**.

![alt text](gencode-4.png)

Cochez tous les composants de l'onglet **Updates** et cliquez sur le bouton **Update** en bas.

![alt text](gencode-7.png)

Une fenêtre qui résume les mises à jour qui vont être faites apparaît, cliquez sur "Next".

![alt text](gencode.png)

Un téléchargement se lance et une nouvelle fenêtre avec des conditions d'utilisation s'ouvre. Cochez la case et cliquez sur "Update".

![alt text](gencode-8.png)

Un téléchargement se lance, à la fin une fenêtre vous demandant si vous voulez redémarrer tout de suite ou plus tard apparaît. Cochez "Restart Now" et cliquez sur "Finish".