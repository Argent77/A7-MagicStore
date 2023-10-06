Magasin magique de Vergadain
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Version :        3.0
Auteur :         Argent77

Téléchargement : https://github.com/Argent77/A7-MagicStore/releases
Discussion :     https://www.gibberlings3.net/forums/topic/32357-magic-store-of-vergadain-visit-any-store-anywhere-and-anytime
                 https://forums.beamdog.com/discussion/81331/mod-magic-store-of-vergadain-visit-any-store-anywhere-and-anytime


Présentation générale
~~~~~~~~~~~~~~~~~~~~~

Le jeu contient un grand nombre de magasins pour vos besoins de consommation. Cependant, trouver ou retourner dans un magasin peut prendre beaucoup de temps ou n'est parfois même pas possible.

Ce mod vous permet d'acquérir un artefact magique qui vous donne le moyen de visiter n'importe quel magasin que vous avez visité dans le passé. Mettre la main sur cet artefact unique implique une petite quête d'une sorte ou d'un autre.

Ce mod est compatible avec les versions originales de BG2, Tutu, BGT, BG:EE (avec ou sans SoD), BG2:EE, EET et IWD:EE.


Installation
~~~~~~~~~~~~

Ceci est un mod WeiDU, ce qui signifie qu'il est très facile à installer. Il suffit de décompresser l'archive téléchargée dans le répertoire de votre jeu et d'exécuter "setup-A7-MagicStore.exe" (Windows) ou "setup-A7-MagicStore.command" (macOS). Suivez les instructions et vous serez prêt(e) à commencer.

Pour désinstaller, exécutez de nouveau "setup-A7-MagicStore.exe" (Windows) ou "setup-A7-MagicStore.command" (macOS) et suivez les instructions.

Note pour Siege of Dragonspear (SoD) :
GOG et Steam installent tous deux l'extension "Siege of Dragonspear" d'une manière qui n'est pas moddable à l'origine. Vous devez installer un mod appelé "DLC Merger" sur votre installation SoD avant que ce mod ou tout autre mod basé sur WeiDU ne puisse être installé.
Il peut être téléchargé ici : https://github.com/Argent77/A7-DlcMerger/releases/latest


Ordre d'installation et compatibilité avec les modules
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Ce mod surveille les magasins du jeu de base ainsi que les magasins ajoutés par les mods. Il est recommandé de l'installer après les mods d'ajout de contenu (tels que les mods de PNJ ou de quête) pour s'assurer que tous les magasins soient pris en compte.

Il n'y a pas de problèmes de compatibilité connus avec d'autres mods. Cependant, comme les magasins sont analysés et indexés automatiquement, il est possible d'accéder à des magasins dépendant de l'intrigue qui sont censés être accessibles uniquement pendant une période limitée, ainsi qu'aux magasins qui sont remplacés par des versions améliorées à un certain stade du jeu ou de la quête.


Composants
~~~~~~~~~~

1. Magasin magique de Vergadain (pour BG2, Tutu, BGT, BG:EE, SoD, BG2:EE, EET et IWD:EE)

C'est le composant principal. Il installe l'artefact "Magasin magique de Vergadain" et l'associe à une petite quête.

Le Magasin magique garde la trace des magasins que vous visitez tout au long du jeu, afin que vous puissiez les visiter plus tard à tout moment et en tout lieu, même si le magasin d'origine devient indisponible. L'activation de l'artefact fait apparaître un marchand fantôme qui vous propose une liste de magasins disponibles pour vos achats.

Le magasin peut être installé en deux variantes :
1) Frais requis
Le marchand fantôme vous fera payer des frais chaque fois que vous souhaiterez accéder à un magasin. Le montant dépend du jeu ou de la campagne en cours.
Il commence par 25 pièces d'or dans BG1 et double à chaque campagne : 50 pièces d'or dans SoD, 100 pièces d'or dans BG2:SoA et 200 pièces d'or dans BG2:ToB. Dans IWD:EE, les frais sont toujours de 50 pièces d'or.
Si nécessaire, le prix de chaque campagne peut être personnalisé dans le fichier A7-MagicStore/2da/fee.2da avant d'installer ce composant.

2) Gratuité
Le marchand fantôme ne vous fait pas payer lorsque vous souhaitez accéder à un magasin.

Chaque campagne de jeu fournit sa propre petite quête pour accéder au magasin magique de Vergadain.
La quête commence généralement par l'acquisition d'un livre sur les artefacts oubliés. Il peut être trouvé :
BG1     : Quelque part dans Beregost.
SoD     : Dans le donjon d'ouverture.
BG2     : SoA : Quelque part sur la promenade de Waukyne à Athkatla.
BG2:ToB : Quelque part à Saradush.
IWD:EE  : Quelque part à Kuldahar.

Vous ne pouvez acquérir qu'un seul magasin magique dans tout le jeu. Par exemple, si vous avez acquis le magasin magique dans EET pendant la campagne BG1, vous ne pouvez pas en obtenir un autre pendant les campagnes SoD, BG2:SoA ou BG2:ToB.


2. Portrait alternatif pour le Marchand Fantôme (nécessite le composant principal)

Ce composant optionnel installe une version alternative du portrait du marchand fantôme sans caractéristiques fantomatiques.


Remerciements
~~~~~~~~~~~~~

Codage et test : Argent77

Additional coding: DavidW

Traduction russe : yota13

Traduction polonaise : Cahir (Traduction), GoForTheEyes (relecture)

Traduction française : Deratiseur

Portrait du marchand : basé sur le portrait de "Aron" dans Ultima Underworld II.


Avis de droit d'auteur
~~~~~~~~~~~~~~~~~~~~~~

Le mod "Magasin magique de Vergadain" est sous licence "Creative Commons Attribution-NonCommercial-
ShareAlike 4.0 International License" (https://creativecommons.org/licenses/by-nc-sa/4.0/).


Historique
~~~~~~~~~~

3.0
- Added new subcomponents that allow you to restrict available services in summoned stores (EE only)

2.3
- Fixed a comparison bug in the store installation routine

2.2
- Ajout de la traduction française (merci à Deratiseur)
- Ajout d'un lisez_moi en français

2.1
- Ajout de la traduction polonaise (merci à Cahir et GoForTheEyes)

2.0
- Ajout d'une nouvelle option d'installation : Le marchand fantôme peut exiger des frais lorsque vous voulez visiter un magasin.
- Ajout d'un traitement spécial pour les magasins pour lesquels le marchand d'origine exige des frais d'accès.
- Ajout de la traduction russe (merci yota13)
- Ajout d'un lisez_moi en allemand

1.0
- Version initiale
