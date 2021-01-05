// Cromwell's Forge
APPEND ~WSMITH01~
	IF ~~ WSMITH01.1
    SAY @6000 /* Now this is unexpected. A tome written by me kin up in the north describing a Magic Store. */
		IF ~PartyHasItem("a7_cfrm")
			  PartyHasItem("a7_crys")~ + WSMITH01.2
		IF ~!PartyHasItem("a7_cfrm")
        !PartyHasItem("a7_crys")~ + WSMITH01.3.1
		IF ~PartyHasItem("a7_cfrm")
        !PartyHasItem("a7_crys")~ + WSMITH01.3.2
		IF ~!PartyHasItem("a7_cfrm")
        PartyHasItem("a7_crys")~ + WSMITH01.3.3
	END

	IF ~~ WSMITH01.2
    SAY @6001 /* Looks like ye've the required copper frame and crystal ready. It would cost ye 3,000 gold. */
		+ ~PartyGoldLT(3000)~ + #66662 + WSMITH01.4
		+ ~PartyGoldGT(2999)~ + #66664
      DO ~SetGlobal("A7STO-BG2ForgeItem","AR0334",1)
          SetGlobal("ForgeStuff","GLOBAL",1)
          TakePartyGold(3000)
          DestroyGold(3000)
          TakePartyItem("a7_mbk")
          DestroyItem("a7_mbk")
          TakePartyItemNum("a7_cfrm",1)
          DestroyItem("a7_cfrm")
          TakePartyItemNum("a7_crys",1)
          DestroyItem("a7_crys")~ + 56
    ++ #66770 + WSMITH01.4
	END

	IF ~~ WSMITH01.3.1
    SAY @6002 /* If ye had a copper frame and crystal I could do the job for 3,000 gold. */
		IF ~~ + WSMITH01.4
	END

	IF ~~ WSMITH01.3.2
    SAY @6003 /* Ye've a copper frame, but no crystal. I could do the job for 3,000 gold if ye had both. */
		IF ~~ + WSMITH01.4
	END

	IF ~~ WSMITH01.3.3
    SAY @6004 /* Ye've the crystal, but no copper frame. I could do the job for 3,000 gold if ye had both. */
		IF ~~ + WSMITH01.4
	END

	IF ~~ WSMITH01.4
    SAY @6005 /* Well, let's see what else ye got. */
		COPY_TRANS WSMITH01 13
	END
END

EXTEND_BOTTOM ~WSMITH01~ 13
	IF ~GlobalLT("A7STO-BG2Quest","GLOBAL",2) PartyHasItem("a7_mbk")~ + WSMITH01.1
END
