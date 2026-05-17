BEGIN ~A7_MERC~

IF ~ActuallyInCombat()~ Combat.1
  SAY @2004 /* The merchant turns his attention to you. He attempts to present you a list of stores but is too distracted by the hostile atmosphere around you. */
  IF ~~ EXIT
END

IF ~Global("A7STO_FREE_STORAGE","GLOBAL",1)~ Temple.1
  SAY @2030 /* As the ghostly merchant takes form he looks around, and his eyes light up. */
  IF ~~ DO ~SetGlobal("A7STO_MerchantSummoned","GLOBAL",1)~ + Temple.2
END

IF ~~ Temple.2
  SAY @2031 /* Though barely a whisper you can make out his surprise to be summoned to a place of worship dedicated to a fellow deity of commerce. */
  = @2032 /* Expressing his kinship with Waukeen he makes you an offer to prepare personal storage space for your equipment in a similar way a Bag of Holding would work. */
  = @2033 /* He stretches out his hands, and you instinctively know that he expects a monetary compensation for his offer. */
  + ~CheckStatLT(LastTalkedToBy,14,CHR) !PartyGoldLT(2000)~ + @2034 /* Pay 2,000 gold for the personal storage space. */ DO ~SetGlobal("A7STO_FREE_STORAGE","GLOBAL",2) TakePartyGold(2000)~ FLAGS 512 + Temple.Accept
  + ~CheckStatLT(LastTalkedToBy,14,CHR) PartyGoldLT(2000)~ + @2038 /* I don't have enough gold to accept your offer. */ DO ~SetGlobal("A7STO_FREE_STORAGE","GLOBAL",3)~ + Temple.Refuse

  + ~!CheckStatLT(LastTalkedToBy,14,CHR) CheckStatLT(LastTalkedToBy,18,CHR) !PartyGoldLT(1000)~ + @2035 /* Pay 1,000 gold for the personal storage space. */ DO ~SetGlobal("A7STO_FREE_STORAGE","GLOBAL",2) TakePartyGold(1000)~ FLAGS 512 + Temple.Accept
  + ~!CheckStatLT(LastTalkedToBy,14,CHR) CheckStatLT(LastTalkedToBy,18,CHR) PartyGoldLT(1000)~ + @2038 /* I don't have enough gold to accept your offer. */ DO ~SetGlobal("A7STO_FREE_STORAGE","GLOBAL",3)~ + Temple.Refuse

  + ~!CheckStatLT(LastTalkedToBy,18,CHR) CheckStatLT(LastTalkedToBy,25,CHR) !PartyGoldLT(500)~ + @2036 /* Pay 500 gold for the personal storage space. */ DO ~SetGlobal("A7STO_FREE_STORAGE","GLOBAL",2) TakePartyGold(500)~ FLAGS 512 + Temple.Accept
  + ~!CheckStatLT(LastTalkedToBy,18,CHR) CheckStatLT(LastTalkedToBy,25,CHR) PartyGoldLT(500)~ + @2038 /* I don't have enough gold to accept your offer. */ DO ~SetGlobal("A7STO_FREE_STORAGE","GLOBAL",3)~ + Temple.Refuse

  + ~!CheckStatLT(LastTalkedToBy,25,CHR)~ + @2037 /* Accept his offer to prepare the personal storage space for free. */ DO ~SetGlobal("A7STO_FREE_STORAGE","GLOBAL",2)~ FLAGS 512 + Temple.Accept

  ++ @2039 /* I'm not interested. */ DO ~SetGlobal("A7STO_FREE_STORAGE","GLOBAL",3)~ + Temple.Refuse
END

IF ~~ Temple.Accept
  SAY @2040 /* He nods his head in approval and mutters an enchantment spell. A short while later he continues with his original task. */
// Responses for each game/campaign
%A7_MERC_OFFER_LIST%
END

IF ~~ Temple.Refuse
  SAY @2041 /* Recognizing your refusal he simply shrugs and returns to his original task. */
// Responses for each game/campaign
%A7_MERC_OFFER_LIST%
END

IF ~Global("A7STO_MerchantSummoned","GLOBAL",0)~ Intro.1
  SAY @2000 /* The ghostly shape of a man dressed like a merchant takes form and turns his attention to you. */
// Responses for each game/campaign
%A7_MERC_INTRO_LIST%
END

// Two entries for each game/campaign
%A7_MERC_GAME_ENTRY%

// One entry for each individual store
%A7_MERC_STORE_ENTRY%
