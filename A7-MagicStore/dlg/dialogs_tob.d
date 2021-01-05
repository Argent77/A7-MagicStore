// Cespenar
APPEND BOTSMITH
	IF ~~ BOTSMITH.1
    SAY @7000 /* What gots we here? A book? Ah...is book of many merchants. I's no good enough for you? */
		IF ~PartyHasItem("a7_cfrm")
        PartyHasItem("a7_crys")~ + BOTSMITH.2
		IF ~OR(2)
          !PartyHasItem("a7_cfrm")
          !PartyHasItem("a7_crys")~ + BOTSMITH.3
	END

	IF ~~ BOTSMITH.2
    SAY @7001 /* Anyway...you has copper frame and crystal. For 4,000 gp I makes contract with many merchants for you. */
		+ ~PartyGoldLT(4000)~ + #66662 + BOTSMITH.4
		+ ~PartyGoldGT(3999)~ + #66664
      DO ~SetGlobal("A7STO-TOBForgeItem","GLOBAL",1)
          SetGlobal("ImpForgeStuff","GLOBAL",1)
          TakePartyGold(4000)
          DestroyGold(4000)
          TakePartyItem("a7_mbk")
          DestroyItem("a7_mbk")
          TakePartyItemNum("a7_cfrm",1)
          DestroyItem("a7_cfrm")
          TakePartyItemNum("a7_crys",1)
          DestroyItem("a7_crys")~ + 11
    ++ #66770 + BOTSMITH.4
	END

	IF ~~ BOTSMITH.3
    SAY @7002 /* Anyway...I needs both copper frame and crystal, or no merchants for you. */
		IF ~~ + BOTSMITH.4
	END

	IF ~~ BOTSMITH.4
    SAY @7003 /* Well, let's sees what else you has... */
		COPY_TRANS BOTSMITH 4
	END
END

EXTEND_BOTTOM ~BOTSMITH~ 4
	IF ~GlobalLT("A7STO-TOBQuest","GLOBAL",2) PartyHasItem("a7_mbk")~ + BOTSMITH.1
END
