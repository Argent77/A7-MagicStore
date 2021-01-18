BEGIN ~A7_MERC~

IF ~Global("A7STO_MerchantSummoned","GLOBAL",0) !ActuallyInCombat()~ Intro.1
  SAY @2000 /* The ghostly shape of a man dressed like a merchant takes form and turns his attention to you. */
  IF ~~ DO ~SetGlobal("A7STO_MerchantSummoned","GLOBAL",1)~ + Intro.2
END

IF ~~ Intro.2
  %A7_MERC_STATE_INTRO%
  %A7_MERC_RESPONSE_LIST%
  // Store example:
  // + ~!Global("A7STO-STO0703","GLOBAL",0)~ + ~"Sorcerous Sundries" by Halbazzer Drin, in "E Baldur's Gate".~ DO ~StartStore("STO0703",LastTalkedToBy(Myself))~ EXIT
END

IF ~!Global("A7STO_MerchantSummoned","GLOBAL",0) !ActuallyInCombat()~ Stores.1
  %A7_MERC_STATE%
  COPY_TRANS SAFE ~A7_MERC~ Intro.2
END

IF ~ActuallyInCombat()~ Combat.1
  SAY @2004 /* The merchant turns his attention to you. He attempts to present you a list of stores but is too distracted by the hostile atmosphere around you. */
  IF ~~ EXIT
END
