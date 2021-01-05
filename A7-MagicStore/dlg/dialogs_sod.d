APPEND ~BDSORALI~
  IF ~~ BDSorali.1
    SAY @5000 /* I don't rightly know. May I take a look? */
    + ~!PartyHasItem("a7_mbk")~ + @5001 /* I don't have the book with me. */ + BDSorali.1.1
    + ~PartyHasItem("a7_mbk")~ + @5002 /* Certainly. Here is the book. */
      DO ~SetGlobal("A7STO-SODQuestArtifact","GLOBAL",1)
          TakePartyItem("a7_mbk")
          DestroyItem("a7_mbk")~ + BDSorali.1.2
    ++ @5003 /* I've changed my mind. Good day. I must be off. */ + 6
  END

  IF ~~ BDSorali.1.1
    SAY @5004 /* I can't help you without the book. Come back when you have it. */
    IF ~~ EXIT
  END

  IF ~~ BDSorali.1.2
    SAY @5005 /* Hmm, from what I can see I require two components for the enchantment, a copper frame and a crystal. */
    IF ~!PartyHasItem("a7_cfrm") !PartyHasItem("a7_crys")~ + BDSorali.1.2.1
    IF ~OR(2) PartyHasItem("a7_cfrm") PartyHasItem("a7_crys")~ + BDSorali.1.2.2
  END

  IF ~~ BDSorali.1.2.1
    SAY @5006 /* Unfortunately I don't know where to find these. You might want to check out the merchants, or search the area for hidden treasures. This region has been pretty busy lately with the crusade going on. */
    IF ~~ + BDSorali.1.2.2
  END

  IF ~~ BDSorali.1.2.2
    SAY @5007 /* I will also have to ask for a fee of 2000 gold pieces for the enchantment ritual. */
    + ~PartyHasItem("a7_cfrm") PartyHasItem("a7_crys") PartyGoldGT(1999)~ + @5008 /* I have everything you need. Here you go. */ + BDSorali.3
    + ~PartyHasItem("a7_cfrm") PartyHasItem("a7_crys") PartyGoldLT(2000)~ + @5009 /* I don't have enough gold right now. I'll be back later. */ UNSOLVED_JOURNAL @10104 + BDSorali.1.3
    + ~OR(2) !PartyHasItem("a7_cfrm") !PartyHasItem("a7_crys")~ + @5010 /* I don't have all the items required for the artifact. I'll be back later. */ UNSOLVED_JOURNAL @10104 + BDSorali.1.3
    ++ @5003 /* I've changed my mind. Good day. I must be off. */ UNSOLVED_JOURNAL @10104 + 6
  END

  IF ~~ BDSorali.1.3
    SAY @5011 /* Return when you have everything. Good day to you. */
    IF ~~ EXIT
  END

  IF ~~ BDSorali.2
    SAY @5012 /* Do you have everything required for the enchantment ritual? */
    + ~PartyHasItem("a7_cfrm") PartyHasItem("a7_crys") PartyGoldGT(1999)~ + @5008 /* I have everything you need. Here you go. */ + BDSorali.3
    + ~PartyHasItem("a7_cfrm") PartyHasItem("a7_crys") PartyGoldLT(2000)~ + @5009 /* I don't have enough gold right now. I'll be back later. */ + BDSorali.1.3
    + ~OR(2) !PartyHasItem("a7_cfrm") !PartyHasItem("a7_crys")~ + @5010 /* I don't have all the items required for the artifact. I'll be back later. */ + BDSorali.1.3
    ++ @5003 /* I've changed my mind. Good day. I must be off. */ + 6
  END

  IF ~~ BDSorali.3
    SAY @5013 /* Thank you. It looks like everything is in order. */
    IF ~~ DO ~TakePartyItemNum("a7_cfrm",1)
              DestroyItem("a7_cfrm")
              TakePartyItemNum("a7_crys",1)
              DestroyItem("a7_crys")
              TakePartyGold(2000)
              DestroyGold(2000)~ + BDSorali.3.1
  END

  IF ~~ BDSorali.3.1
    SAY @5014 /* Give me a moment to prepare the ritual... */
    = @5015 /* ...And that's it. I'm certain the item will function flawlessly. */
    IF ~~ DO ~SetGlobal("A7STO-SODQuest","GLOBAL",2)
              SetGlobal("A7STO-ItemCreated","GLOBAL",1)
              GiveItemCreate("a7_mcsum",LastTalkedToBy(Myself),0,0,0)
              EraseJournalEntry(@10000)
              EraseJournalEntry(@10100)
              EraseJournalEntry(@10101)
              EraseJournalEntry(@10102)
              EraseJournalEntry(@10103)
              EraseJournalEntry(@10104)~ SOLVED_JOURNAL @10105 EXIT
  END
END

EXTEND_BOTTOM ~BDSORALI~ 4 7 #1
  + ~Global("A7STO-SODQuest","GLOBAL",1) Global("A7STO-SODQuestArtifact","GLOBAL",0)~ + @4100 /* A book described the creation of a powerful magical artifact, called a Magic Store. Can you create it for me? */ + BDSorali.1
  + ~Global("A7STO-SODQuest","GLOBAL",1) Global("A7STO-SODQuestArtifact","GLOBAL",1)~ + @4101 /* I wish to talk about the Magic Store again. */ + BDSorali.2
END
