Magischer Laden von Vergadain
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Version:    2.0
Autor:      Argent77

Download:   https://github.com/Argent77/A7-MagicStore/releases
Diskussion: https://www.gibberlings3.net/forums/topic/32357-magic-store-of-vergadain-visit-any-store-anywhere-and-anytime
            https://forums.beamdog.com/discussion/81331/mod-magic-store-of-vergadain-visit-any-store-anywhere-and-anytime


Übersicht
~~~~~~~~~

Im Spiel gibt es eine große Anzahl an Läden für Eure Einkaufswünsche. Allerdings ist es oft
zeitaufwändig oder umständlich, zu einem Laden zurückzukehren, und manchmal ist es sogar unmöglich.

Diese Mod stellt ein magisches Artefakt bereit, mit der Fähigkeit, Euch Zutritt zu allen Läden zu
verschaffen, die Ihr in der Vergangenheit besucht habt. Um in den Besitz dieses einzigartigen
Artefakts zu gelangen, müsst Ihr eine bestimmte Quest erledigen.

Die Mod unterstützt die folgenden Spiele bzw. Spielvarianten:
- Originales BG2
- Tutu/EasyTutu
- BGT (Baldur's Gate Trilogy)
- BG:EE (mit oder ohne „Die Belagerung von Drachenspeer”-Erweiterung)
- BG2:EE
- EET (Enhanced Edition Trilogy)
- IWD:EE


Installation
~~~~~~~~~~~~

Dies ist eine WeiDU Mod. Das bedeutet, sie ist sehr einfach zu installieren. Entpackt das
komprimierte Mod-Archiv in das Installationsverzeichnis Eures Spiels und startet entweder
„setup-A7-MagicStore.exe” (Windows) oder „setup-A7-MagicStore.command” (macOS). Folgt den
Anweisungen im Textfenster und die Mod ist startbereit.

Um die Mod zu deinstallieren, startet „setup-A7-MagicStore.exe” (Windows) oder
„setup-A7-MagicStore.command” (macOS) erneut und folgt den Anweisungen.


Installationsreihenfolge und Modkompatibilität
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Diese Mod ermittelt alle Läden des Spiels als auch von Mods installierte Läden. Sie sollte nach
allen Mods installiert werden, die neue Spielinhalte hinzufügen (z.B. NPC- oder Quest-Mods),
um sicherzustellen, dass alle Läden berücksichtigt werden.

Es sind keine Kompatibilitätsprobleme mit anderen Mods bekannt. Da die Läden im Spiel automatisch
verarbeitet werden, kann es allerdings zu unerwarteten Situationen kommen, z.B. falls ein Laden
regulär nur für eine bestimmte Zeit zugänglich sein soll oder ein Laden im Laufe des Spiels durch
eine verbesserte Variante des Ladens ersetzt wird.


Komponenten
~~~~~~~~~~~

1. Magischer Laden von Vergadain (für BG2, Tutu, BGT, BG:EE, SoD, BG2:EE, EET und IWD:EE)

Dies ist die Hauptkomponente. Sie installiert das Artefakt „Magischer Laden von Vergadain” und
verknüpft es mit einer kleinen Quest.

Der Magische Laden verfolgt Eure Besuche aller Läden des Spiels, so dass sie später über das
Artefakt überall und zu jeder Zeit zugänglich gemacht werden können. Das Artefakt ruft einen
geisterhaften Händler herbei, der Euch eine Liste mit den verfügbaren Läden präsentiert.

Der Magische Laden kann in zwei Varianten installiert werden:
1) Gebührenpflichtig
Bei dieser Variante verlangt der geisterhafte Händler eine Gebühr, wenn Ihr einen Laden besuchen
wollt. Die Höhe richtet sich nach dem gegenwärtigen Spiel bzw. Spielabschnitt.
In BG1 beträgt sie 25 Goldmünzen. Der Betrag verdoppelt sich in den jeweils nachfolgenden Spielen:
50 Goldmünzen in SoD, 100 Goldmünzen in BG2:SvA und 200 Goldmünzen in BG2:TdB. In IWD:EE beträgt
die Gebühr 50 Goldmünzen.
Bei Bedarf kann die Höhe der Gebühr in der Datei A7-MagicStore/2da/fee.2da angepasst werden, bevor
diese Komponente installiert wird.

2) Gebührenfrei
Bei dieser Variante verlangt der geisterhafte Händler keine Gebühr, wenn Ihr einen Laden besuchen
wollt.

Jedes Spiel bzw. jeder Spielabschnitt bietet eine eigene kleine Quest an, um in den Besitz des
Ladens von Vergadain zu gelangen.
Die Quest beginnt üblicherweise, in dem Ihr in den Besitz eines Buchs über vergessene Artefakte
gelangt. Das Buch könnt Ihr hier finden:
BG1:     Irgendwo in Beregost.
SoD:     Im Startverließ des Spiels.
BG2:SvA: Irgendwo auf Waukeens Promenade in Athkatla.
BG2:TdB: Irgendwo in Saradush.
IWD:EE:  Irgendwo in Kuldahar.

Im gesamten Spiel kann man nur einen Magischen Laden erlangen. Zum Beispiel ist es in EET nicht
möglich, weitere Läden in den Spielabschnitten SoD, BG2:SvA und BG2:TdB zu erwerben, wenn Ihr den
Laden bereits im BG1-Teil erworben habt.


2. Alternatives Porträt für den geisterhaften Händler (benötigt die Hauptkomponente)

Diese optionale Komponente installiert eine Porträtversion für den geisterhaften Händler ohne
geisterhafte Gesichtszüge.


Danksagungen
~~~~~~~~~~~~

Coding and testing: Argent77

Russian translation: yota13

Merchant portrait: Based on 'Aron' portrait from Ultima Underworld II.


Urheberrechtshinweis
~~~~~~~~~~~~~~~~~~~~

The mod "Magic Store of Vergadain" is licensed under the "Creative Commons Attribution-NonCommercial-
ShareAlike 4.0 International License" (https://creativecommons.org/licenses/by-nc-sa/4.0/).


Versionshistorie
~~~~~~~~~~~~~~~~

2.0
- Added new install option: Ghostly Merchant may charge a fee whenever you want to visit a store
- Added special treatment of stores where the original merchant demands a fee for access
- Added Russian translation (thanks yota13)
- Added German readme

1.0
- Initial release
