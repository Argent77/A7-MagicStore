Magic Store of Vergadain
~~~~~~~~~~~~~~~~~~~~~~~~

Version:    4.0
Author:     Argent77

Download:   https://github.com/Argent77/A7-MagicStore/releases
Discussion: https://www.gibberlings3.net/forums/topic/32357-magic-store-of-vergadain-visit-any-store-anywhere-and-anytime
            https://forums.beamdog.com/discussion/81331/mod-magic-store-of-vergadain-visit-any-store-anywhere-and-anytime


Overview
~~~~~~~~

The game contains a great number of stores for your shopping needs. However, finding or returning
to a store can take a lot of time or is sometimes not even possible.

This mod allows you to acquire a magical artifact that provides the means to visit any store you
have visited in the past. Getting your hands on this unique artifact involves a small quest of
one kind or another.

The mod supports original BG2, Tutu, BGT, BG:EE (with or without SoD), BG2:EE, EET and IWD:EE.


Installation
~~~~~~~~~~~~

This is a WeiDU mod, that means it is very easy to install. Simply unpack the downloaded archive
into your game directory and run either "setup-A7-MagicStore.exe" (Windows) or
"setup-A7-MagicStore.command" (macOS). Follow the instructions and you are ready to start.

To uninstall, run "setup-A7-MagicStore.exe" (Windows) or "setup-A7-MagicStore.command" (macOS)
again and follow the prompts.

Note for Siege of Dragonspear (SoD):
GOG and Steam both install the "Siege of Dragonspear" expansion in a way that is not moddable out
of the box. You must install a mod called "DLC Merger" on your SoD installation before this or
any other WeiDU-based mods can be installed.
It can be downloaded from here: https://github.com/Argent77/A7-DlcMerger/releases/latest


Installation order & mod compatibility
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This mod tracks vanilla game stores as well as stores added by mods. It is recommended to install
it after content-adding mods (such as NPC or quest mods) to ensure all stores are considered.

There are no compatibility issues known with other mods. However, because stores are scanned and
processed automatically it is possible to access plot-dependent stores that are supposed to be
accessible only for a limited period of time as well as stores which are replaced by improved
versions at a certain point in the game or quest stage.


Components
~~~~~~~~~~

1. Magic Store of Vergadain (for BG2, Tutu, BGT, BG:EE, SoD, BG2:EE, EET and IWD:EE)

This is the main component. It installs the artifact "Magic Store of Vergadain" and associates it
with a small quest.

The Magic Store keeps track of the stores you visit throughout the game, so you can visit them later
at any time and place even if the original store becomes unavailable. Activating the artifact
summons a ghostly merchant who offers a list of available stores for your shopping needs.

The store can be installed in two variants:
1) Fee required
The ghostly merchant will charge you a fee whenever you wish to access a store. The amount depends
on the current game or campaign.
It starts with 25 gold in BG1 and doubles with each campaign: 50 gold in SoD, 100 gold in BG2:SoA
and 200 gold in BG2:ToB. In IWD:EE the fee is always 50 gold.
If needed, the fee for each campaign can be customized in the file A7-MagicStore/2da/fee.2da before
installing this component.

2) Free of charge
The ghostly merchant won't charge you when you wish to access a store.

Each game campaign provides their own small quest to get access to the Magic Store of Vergadain.
The quest usually starts by acquiring a book about forgotten artifacts. It can be found in:
BG1:     Somewhere in Beregost.
SoD:     In the opening dungeon.
BG2:SoA: Somewhere at Waukeen's Promenade in Athkatla.
BG2:ToB: Somewhere in Saradush.
IWD:EE:  Somewhere in Kuldahar.

Only one Magic Store can be acquired in the whole game. For example, if you acquired the Magic
Store in EET during the BG1 campaign you can't get another one during the SoD, BG2:SoA or BG2:ToB
campaigns.


2. Alternate portrait for Ghostly Merchant (requires main component)

This optional component installs an alternate portrait version of the Ghostly Merchant without
ghostly features.


3. Restrict available services in summoned stores (requires main component, EE games only)

Some of the available services can be easily abused, such as resting or healing in the middle of
combat.

This optional component allows you to restrict the services offered by the summoned stores.

The following options are available:
- Prohibit resting:
  Removes the service "Rooms" from the store.
- Prohibit resting and curing:
  Removes the services "Rooms" and "Healing" from the store.
- Prohibit resting, curing, donating and drinking:
  Removes the services "Rooms", "Healing", "Donate" and "Drinks" from the store.
- Allow only trading:
  Removes all of the services above as well as the options to identify items or steal from the store.


4. Tweak item charges of the Magic Store (requires main component)

This optional component allows you to tweak number and type of item charges for the Magic Store
of Vergadain.

The following options are available:
- Once per day:      The Magic Store can be summoned only once per day.
- 10 times per day:  The Magic Store can be summoned ten times per day.
- 10 charges:        The Magic Store can be summoned a total of 10 times before it vanishes forever.
- 50 charges:        The Magic Store can be summoned a total of 50 times before it vanishes forever.
- 100 charges:       The Magic Store can be summoned a total of 100 times before it vanishes forever.
- Unlimited charges: The Magic Store can be summoned without restrictions.

Note: The Magic Store can be recharged by selling it to a merchant and purchase it back.


Credits
~~~~~~~

Coding and testing: Argent77

Additional coding: DavidW

Russian translation: yota13

Polish translation: Cahir (translation), GoForTheEyes (proofreading)

French translation: Deratiseur, JohnBob

Merchant portrait: Based on 'Aron' portrait from Ultima Underworld II.


Copyright Notice
~~~~~~~~~~~~~~~~

The mod "Magic Store of Vergadain" is licensed under the "Creative Commons Attribution-NonCommercial-
ShareAlike 4.0 International License" (https://creativecommons.org/licenses/by-nc-sa/4.0/).


History
~~~~~~~

4.0
- Added a new subcomponent that allows you to tweak number and type of the Magic Store item charges
- Updated French translation (thanks JohnBob)
- Updated Polish translation

3.0
- Added new subcomponents that allow you to restrict available services in summoned stores (EE only)

2.3
- Fixed a comparison bug in the store installation routine

2.2
- Added French translation (thanks Deratiseur)
- Added French readme

2.1
- Added Polish translation (thanks Cahir and GoForTheEyes)

2.0
- Added new install option: Ghostly Merchant may charge a fee whenever you want to visit a store
- Added special treatment of stores where the original merchant demands a fee for access
- Added Russian translation (thanks yota13)
- Added German readme

1.0
- Initial release
