BEGIN ~A7_MERC~

IF ~Global("A7STO_MerchantSummoned","GLOBAL",0) !ActuallyInCombat()~ Intro.1
  SAY @2000 /* The ghostly shape of a man dressed like a merchant takes form and turns his attention to you. */
// Responses for each game/campaign
%A7_MERC_INTRO_LIST%
END

// Two entries for each game/campaign
%A7_MERC_GAME_ENTRY%

IF ~ActuallyInCombat()~ Combat.1
  SAY @2004 /* The merchant turns his attention to you. He attempts to present you a list of stores but is too distracted by the hostile atmosphere around you. */
  IF ~~ EXIT
END
