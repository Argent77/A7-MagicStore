Magiczny sklep Vergadaina
~~~~~~~~~~~~~~~~~~~~~~~~~

Wersja:     2.1
Autor:      Argent77

Pobierz:    https://github.com/Argent77/A7-MagicStore/releases
Dyskusja:   https://www.gibberlings3.net/forums/topic/32357-magic-store-of-vergadain-visit-any-store-anywhere-and-anytime
            https://forums.beamdog.com/discussion/81331/mod-magic-store-of-vergadain-visit-any-store-anywhere-and-anytime


Ogólny zarys
~~~~~~~~~~~~

Gra zawiera dużą ilość sklepów, mogących zaspokoić dowolne potrzeby gracza. Jednakże ponowne dotarcie do odwiedzonego wcześniej sklepu potrafi zająć wiele czasu lub nawet okazać się niemożliwe.

Modyfikacja ta pozwala na zakupienie magicznego artefaktu pozwalającego odwiedzić dowolny sklep, w którym postać gracza robiła wcześniej zakupy. Zdobycie tego artefaktu wymaga jednak wykonania pewnego drobnego zadania.

Modyfikacja ta działa z klasyczną wersją BG2, Tutu, BGT, BG:EE (z SoD lub bez), BG2:EE, EET oraz IWD:EE.


Instalacja
~~~~~~~~~~

Jest to modyfikacja WeiDU, co oznacza, iż jest bardzo prosta w instalacji. Wystarczy rozpakować pobrane archiwum do katalogu z grą, a następnie uruchomić plik „setup-A7-MagicStore.exe” (Windows) lub„ setup-A7-MagicStore.command” (macOS) i postępować zgodnie z pojawiającymi się dalej instrukcjami.

W celu odinstalowania modyfikacji należy uruchomić plik „setup-A7-MagicStore.exe” (Windows) lub „setup-A7-MagicStore.command” (macOS) i postępować zgodnie z pojawiającymi się dalej instrukcjami.

Informacja dla osób grających w Siege of Dragonspear (SoD):
GOG i Steam instalują „Siege of Dragonspear” w sposób, który nie pozwala na bezpośrednie modowanie gry. Aby można było instalować jakiekolwiek modyfikacje oparte na WeiDU, niezbędne jest zainstalowanie w folderze SoD modyfikacji o nazwie „DLC Merger”.
Można ją pobrać stąd: https://github.com/Argent77/A7-DlcMerger/releases/latest


Kolejność instalacji i kompatybilność z innymi modyfikacjami
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Modyfikacja ta śledzi wszystkie sklepy znajdujące się w podstawowej wersji gry, jak również te dodane przez inne modyfikacje. Aby mieć pewność, że wszystkie sklepy zostaną wzięte pod uwagę, zaleca się zainstalowanie jej po innych modyfikacjach zmieniających zawartość gry (takich jak mody wprowadzające nowych BN czy dodatkowe zadania).

Nie stwierdzono dotychczas niekompatybilności z innymi modyfikacjami. Jednakże z uwagi na to, że w modyfikacji tej sklepy są skanowane i przetwarzane w sposób automatyczny, istnieje możliwość dostępu do sklepów powiązanych z fabułami innych modyfikacji, który to dostęp powinien być ograniczony czasowo lub do sklepów, które zostały na pewnym etapie gry lub zadania zastąpione ich ulepszonymi wersjami.


Komponenty
~~~~~~~~~~

1. Magiczny sklep Vergadaina (dla BG2, Tutu, BGT, BG:EE, SoD, BG2:EE, EET i IWD:EE)

To jest główny komponent modyfikacji. Po jego wybraniu zainstalowany zostanie artefakt zwany „Magicznym sklepem Vergadaina” oraz związane z nim niewielkie zadanie.

Magiczny sklep Vergadaina śledzi wszystkie sklepy odwiedzone przez gracza w trakcie gry, pozwalając na ponowne ich odwiedzenie w dowolnej chwili i z dowolnej lokacji, nawet jeśli dany sklep nie byłby już normalnie dostępny. Aktywowanie artefaktu powoduje przyzwanie widmowego handlarza oferującego listę sklepów, w których można dokonać zakupów.

Podczas instalacji tego komponentu można wybrać jedną z dwóch poniższych opcji:
1) Wymagana opłata
Za każdym razem, gdy gracz zechce uzyskać dostęp do wybranego sklepu, widmowy handlarz będzie pobierał opłatę. Jej wysokość uzależniona jest od obecnej gry lub kampanii.
Opłata rozpoczyna się od poziomu 25 sztuk złota w BG1 i podwaja z każdą kolejną kampanią, wynosząc 50 sztuk złota w SoD, 100 sztuk złota w BG2:SoA i 200 sztuk złota w BG2:ToB. W IWD:EE opłata ta zawsze wyniesie 50 sztuk złota.
W razie potrzeb opłata może zostać zmieniona dla każdej kampanii w pliku A7-MagicStore/2da/fee.2da, jednak należy to zrobić przed instalacją tego komponentu.

2) Bez opłat
Widmowy handlarz nie będzie pobierał żadnych opłat za dostęp do sklepu.

Każda z kampanii oferuje niewielkie zadanie oferujące dostęp do Magicznego sklepu Vergadaina.
Zadanie to rozpoczyna się od zdobycia księgi traktującej o zapomnianych artefaktach. Można ją znaleźć w następujących lokacjach:
BG1:     Gdzieś w Beregoście.
SoD:     W pierwszym lochu.
BG2:SoA: Gdzieś na Promenadzie Waukeen w Athkatli.
BG2:ToB: Gdzieś w Saradush.
IWD:EE:  Gdzieś w Kuldahar.

W trakcie całej gry można zdobyć tylko jeden Magiczny sklep Vergadaina. Przykładowo, jeśli gracz zdobędzie go w EET na etapie kampanii BG1, nie będzie mógł go zdobyć ponownie w SoD, BG2:SoA lub BG2:ToB.


2. Alternatywny portret widmowego handlarza (wymaga zainstalowania głównego komponentu)

Po uruchomieniu tego opcjonalnego komponentu zostanie zainstalowana alternatywna wersja portretu widmowego handlarza, bez widocznych widmowych cech.


Autorzy
~~~~~~~

Kodowanie i testowanie: Argent77

Tłumaczenie na język rosyjski: yota13

Tłumaczenie na język polski: Cahir (tłumaczenie), GoForTheEyes (korekta)

Portret kupca: Na podstawie portretu „Aron” z gry Ultima Underworld II.


Informacja o prawach autorskich
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Modyfikacja „Magic Store of Vergadain” powstała na licencji „Creative Commons Attribution-NonCommercial-
ShareAlike 4.0 International License” (https://creativecommons.org/licenses/by-nc-sa/4.0/).


Historia wersji
~~~~~~~~~~~~~~~

2.1
- Added Polish translation (thanks Cahir and GoForTheEyes)

2.0
- Added new install option: Ghostly Merchant may charge a fee whenever you want to visit a store
- Added special treatment of stores where the original merchant demands a fee for access
- Added Russian translation (thanks yota13)
- Added German readme

1.0
- Initial release
