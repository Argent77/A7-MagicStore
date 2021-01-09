// Conlan

APPEND ~DCONLAN~
  IF ~~ DCONLAN.1
    SAY @8000 /* That should be no problem. I rarely have the opportunity to work with copper, since it's mainly used for trinkets and adornments. A copper frame should be easy enough to forge though. */
    = @8001 /* Unfortunately I don't have any copper ore in stock. The next shipment is long overdue, but with the abnormal weather and the strange goings-on I don't expect it anytime soon. */
    + ~!PartyHasItem("a7_cnug")~ + @4004 /* Where can I find copper ore? */ DO ~SetGlobal("A7STO-IWDQuestFrame","GLOBAL",1)~ + DCONLAN.1.1
    + ~PartyHasItem("a7_cnug")~ + @8002 /* Actually, I have some copper ore with me. */ DO ~SetGlobal("A7STO-IWDQuestFrame","GLOBAL",1)~ + DCONLAN.1.2
    ++ @4006 /* Actually, I don't want one right now. I'll be back later. */ + DCONLAN.1.3
  END

  IF ~~ DCONLAN.1.1
    SAY @8003 /* I can't say for sure. There might be found some in the mines of Dorn's Deep to the south. But that's quite a distance to travel, and I don't even know if the dwarves would grant you entrance. I'd rather try my luck with the tombs of the Vale of Shadows first. */
    ++ @4008 /* Thank you. I'll take a look. */ UNSOLVED_JOURNAL @10500 EXIT
  END

  IF ~~ DCONLAN.1.2
    SAY @8004 /* Very good. For 100 gold I can forge the copper frame right away. */
    + ~PartyGoldLT(100)~ + @4010 /* I don't have enough gold to pay you. Maybe later. */ + DCONLAN.1.3
    + ~PartyGoldGT(99)~ + @4011 /* Yes, please do. Here is the gold. */ DO ~TakePartyGold(100) DestroyGold(100)~ + DCONLAN.2
    ++ @4006 /* Actually, I don't want one right now. I'll be back later. */ + DCONLAN.1.3
  END

  IF ~~ DCONLAN.1.3
    SAY @8005 /* Alright. Come back when you've changed your mind. */
    IF ~~ EXIT
  END

  IF ~~ DCONLAN.2
    SAY @4013 /* Then let's not waste any more time. Just make yourself comfortable. I'll be back in a moment. */
    IF ~~ DO ~TakePartyItemNum("a7_cnug",1)
              DestroyItem("a7_cnug")~ + DCONLAN.2.1
  END

  IF ~~ DCONLAN.2.1
    SAY @4014 /* The smith turns to his smithing equipment and starts with the process of smelting the copper ore followed by a short session on the forge. He repeats the process several times before he turns his attention back to you. */
    = @4015 /* And here is the copper frame I promised you. It was a pleasure doing business with you. */
    IF ~~ DO ~SetGlobal("A7STO-IWDQuestFrame","GLOBAL",2)
              GiveItemCreate("a7_cfrm",LastTalkedToBy(Myself),1,0,0)
              EraseJournalEntry(@10500)~ UNSOLVED_JOURNAL @10501 EXIT
  END

  IF ~~ DCONLAN.3
    SAY @4017 /* Certainly. If you can provide me with copper ore I can start right away. */
    + ~PartyHasItem("a7_cnug")~ + @4018 /* Here it is. */ + DCONLAN.1.2
    + ~!PartyHasItem("a7_cnug")~ + @4019 /* I don't have any. I'll be back later. */ + DCONLAN.1.3
  END
END

EXTEND_BOTTOM ~DCONLAN~ 0 1 13 #1
  + ~Global("A7STO-IWDQuest","GLOBAL",1) Global("A7STO-IWDQuestFrame","GLOBAL",0)~ + @4000 /* A book mentioned a copper frame that is required for a magical artifact. Can you build one for me? */ + DCONLAN.1
  + ~Global("A7STO-IWDQuestFrame","GLOBAL",1)~ + @4002 /* I'm back for the copper frame. Can you build one for me? */ + DCONLAN.3
END

EXTEND_BOTTOM ~DCONLAN~ 14 17 44 #1
  + ~Global("A7STO-IWDQuest","GLOBAL",1) Global("A7STO-IWDQuestFrame","GLOBAL",0)~ + @4000 /* A book mentioned a copper frame that is required for a magical artifact. Can you build one for me? */ + DCONLAN.1
  + ~Global("A7STO-IWDQuestFrame","GLOBAL",1)~ + @4002 /* I'm back for the copper frame. Can you build one for me? */ + DCONLAN.3
END


// Orrick the Grey
APPEND ~DORRICK~
  IF ~~ DORRICK.1
    SAY @8100 /* It could be, if the book speaks true. May I take a look? */
    + ~!PartyHasItem("a7_mbk")~ + @4103 /* I don't have it with me. */ + DORRICK.1.1
    + ~PartyHasItem("a7_mbk")~ + @4104 /* Here it is. */
      DO ~SetGlobal("A7STO-IWDQuestArtifact","LOCALS",1)
          TakePartyItem("a7_mbk")
          DestroyItem("a7_mbk")~ + DORRICK.1.2
    ++ #607 /* Never mind. Farewell. */ EXIT
  END

  IF ~~ DORRICK.1.1
    SAY @8101 /* Well, without the book I can do nothing for you. Come back again if you have it. */
    IF ~~ EXIT
  END

  IF ~~ DORRICK.1.2
    SAY @8102 /* Ah, this book dates from the time of the cooperation between elves and dwarves. I think it can be believed what is stated here. */
    = @8103 /* Fortunately, the ritual is outlined in great detail. I think it is possible to create such an artifact. I would need two components for the initial enchantment though. */
    IF ~Global("A7STO-IWDQuestFrame","GLOBAL",0)~ + DORRICK.1.2.1
    IF ~!Global("A7STO-IWDQuestFrame","GLOBAL",0)~ + DORRICK.1.2.2
  END

  IF ~~ DORRICK.1.2.1
    SAY @8104 /* The first one is a copper frame. You might want to ask Conlan the Smith about it. */
    IF ~!PartyHasItem("a7_crys")~ + DORRICK.1.2.3
    IF ~PartyHasItem("a7_crys")~ + DORRICK.1.2.4
  END

  IF ~~ DORRICK.1.2.2
    SAY @8105 /* The first one is a copper frame. */
    IF ~!PartyHasItem("a7_crys")~ + DORRICK.1.2.3
    IF ~PartyHasItem("a7_crys")~ + DORRICK.1.2.4
  END

  IF ~~ DORRICK.1.2.3
    SAY @8106 /* The second component is a crystal. This is not surprising considering their usefulness for enchanting purposes. I may still have one in stock if you want to take a look. */
    IF ~~ UNSOLVED_JOURNAL @10502 + DORRICK.1.3
  END

  IF ~~ DORRICK.1.2.4
    SAY @8107 /* The second component is a crystal. This is not surprising considering their usefulness for enchanting purposes. */
    IF ~~ + DORRICK.1.3
  END

  IF ~~ DORRICK.1.3
    SAY @8108 /* For the enchantment ritual I would also have to ask for 3000 gold pieces. Are you still interested? */
    + ~PartyHasItem("a7_crys") PartyHasItem("a7_cfrm") PartyGoldGT(2999)~ + @4112 /* I have everything you need with me. Please create the artifact. */ + DORRICK.3
    + ~PartyHasItem("a7_crys") PartyHasItem("a7_cfrm") PartyGoldLT(3000)~ + @4113 /* I don't have enough money. I'll be back later. */ UNSOLVED_JOURNAL @10503 EXIT
    + ~OR(2) !PartyHasItem("a7_crys") !PartyHasItem("a7_cfrm")~ + @4114 /* I don't have all the components with me. I'll be back later. */ UNSOLVED_JOURNAL @10503 EXIT
    ++ #607 /* Never mind. Farewell. */ UNSOLVED_JOURNAL @10503 EXIT
  END

  IF ~~ DORRICK.2
    SAY @8109 /* Certainly. Do you have the copper frame and crystal ready? I would also have to ask for 3000 gold pieces for the enchantment ritual. */
    + ~PartyHasItem("a7_crys") PartyHasItem("a7_cfrm") PartyGoldGT(2999)~ + @4112 /* I have everything you need with me. Please create the artifact. */ + DORRICK.3
    + ~PartyHasItem("a7_crys") PartyHasItem("a7_cfrm") PartyGoldLT(3000)~ + @4113 /* I don't have enough money. I'll be back later. */ EXIT
    + ~OR(2) !PartyHasItem("a7_crys") !PartyHasItem("a7_cfrm")~ + @4114 /* I don't have all the components with me. I'll be back later. */ EXIT
    ++ #607 /* Never mind. Farewell. */ EXIT
  END

  IF ~~ DORRICK.3
    SAY @8110 /* Excellent. Just give me a moment to cast the enchantment spell... */
    IF ~~ DO ~TakePartyItemNum("a7_cfrm",1)
              DestroyItem("a7_cfrm")
              TakePartyItemNum("a7_crys",1)
              DestroyItem("a7_crys")
              TakePartyGold(3000)
              DestroyGold(3000)~ + DORRICK.3.1
  END

  IF ~~ DORRICK.3.1
    SAY @8111 /* ...And it is done. I hope you enjoy it. Artifacts of this quality are rarely seen in this day and age. */
    IF ~~ DO ~SetGlobal("A7STO-IWDQuest","GLOBAL",2)
              SetGlobal("A7STO-ItemCreated","GLOBAL",1)
              GiveItemCreate("a7_mcsum",LastTalkedToBy(Myself),3,0,0)
              EraseJournalEntry(@10001)
              EraseJournalEntry(@10500)
              EraseJournalEntry(@10501)
              EraseJournalEntry(@10502)
              EraseJournalEntry(@10503)~ SOLVED_JOURNAL @10504 EXIT
  END

END

EXTEND_BOTTOM ~DORRICK~ 0 2 38
  + ~Global("A7STO-IWDQuest","GLOBAL",1) Global("A7STO-IWDQuestArtifact","LOCALS",0)~ + @4100 /* A book described the creation of a powerful magical artifact, called a Magic Store. Can you create it for me? */ + DORRICK.1
  + ~Global("A7STO-IWDQuest","GLOBAL",1) Global("A7STO-IWDQuestArtifact","LOCALS",1)~ + @4101 /* I wish to talk about the Magic Store again. */ + DORRICK.2
END

EXTEND_BOTTOM ~DORRICK~ 18 19 23 24 #1
  + ~Global("A7STO-IWDQuest","GLOBAL",1) Global("A7STO-IWDQuestArtifact","LOCALS",0)~ + @4100 /* A book described the creation of a powerful magical artifact, called a Magic Store. Can you create it for me? */ + DORRICK.1
  + ~Global("A7STO-IWDQuest","GLOBAL",1) Global("A7STO-IWDQuestArtifact","LOCALS",1)~ + @4101 /* I wish to talk about the Magic Store again. */ + DORRICK.2
END
