// Taerom Fuiruim of the Thunderhammer Smithy
APPEND ~%tutu_var%TAEROM~
  IF ~~ Taerom.1
    SAY @4003 /* But of course. Copper is easy to forge. I could build a frame for you in no time. However, I don't have the required material in stock at the moment. If you can provide me with copper ore I can start right away. */
    + ~!PartyHasItem("a7_cnug")~ + @4004 /* Where can I find copper ore? */ DO ~SetGlobal("A7STO-BG1QuestFrame","GLOBAL",1)~ + Taerom.1.1
    + ~PartyHasItem("a7_cnug")~ + @4005 /* Certainly, I have some for you. */ DO ~SetGlobal("A7STO-BG1QuestFrame","GLOBAL",1)~ + Taerom.1.2
    ++ @4006 /* Actually, I don't want one right now. I'll be back later. */ + Taerom.1.3
  END

  IF ~~ Taerom.1.1
    SAY @4007 /* You might still find some in the Nashkel mines south of here. It's mainly an iron mine now, but in the past it yielded copper ore as well. */
    ++ @4008 /* Thank you. I'll take a look. */ UNSOLVED_JOURNAL @10001 EXIT
  END

  IF ~~ Taerom.1.2
    SAY @4009 /* Ahh, that's a fine piece of copper you have. For 100 gold pieces I can forge the copper frame right away. */
    + ~PartyGoldLT(100)~ + @4010 /* I don't have enough gold to pay you. Maybe later. */ + Taerom.1.3
    + ~PartyGoldGT(99)~ + @4011 /* Yes, please do. Here is the gold. */ DO ~TakePartyGold(100) DestroyGold(100)~ + Taerom.2
    ++ @4006 /* Actually, I don't want one right now. I'll be back later. */ + Taerom.1.3
  END

  IF ~~ Taerom.1.3
    SAY @4012 /* Suit yourself. I'll still be here if you change you mind. */
    IF ~~ EXIT
  END

  IF ~~ Taerom.2
    SAY @4013 /* Then let's not waste any more time. Just make yourself comfortable. I'll be back in a moment. */
    IF ~~ DO ~TakePartyItemNum("a7_cnug",1)
              DestroyItem("a7_cnug")~ + Taerom.2.1
  END

  IF ~~ Taerom.2.1
    SAY @4014 /* The smith turns to his smithing equipment and starts with the process of smelting the copper ore followed by a short session on the forge. He repeats the process several times before he turns his attention back to you. */
    IF ~OR(2) PartyHasItem("a7_crys") Global("A7STO-BG1Quest","GLOBAL",2)~ + Taerom.2.2
    IF ~!PartyHasItem("a7_crys") !Global("A7STO-BG1Quest","GLOBAL",2)~ + Taerom.2.3
  END

  IF ~~ Taerom.2.2
    SAY @4015 /* And here is the copper frame I promised you. It was a pleasure doing business with you. */
    IF ~~ DO ~SetGlobal("A7STO-BG1QuestFrame","GLOBAL",2)
              GiveItemCreate("a7_cfrm",LastTalkedToBy(Myself),1,0,0)
              EraseJournalEntry(@10001)~ UNSOLVED_JOURNAL @10002 EXIT
  END

  IF ~~ Taerom.2.3
    SAY @4015 /* And here is the copper frame I promised you. It was a pleasure doing business with you. */
    = @4016 /* Unfortunately I can't really help you with the crystal. But maybe a friend of mine can. His name is Thalantyr, and he is a talented mage. You can find him in the High Hedge, east of Beregost. */
    IF ~~ DO ~SetGlobal("A7STO-BG1QuestFrame","GLOBAL",2)
              GiveItemCreate("a7_cfrm",LastTalkedToBy(Myself),1,0,0)
              EraseJournalEntry(@10001)~ UNSOLVED_JOURNAL @10003 EXIT
  END

  IF ~~ Taerom.3
    SAY @4017 /* Certainly. If you can provide me with copper ore I can start right away. */
    + ~PartyHasItem("a7_cnug")~ + @4018 /* Here it is. */ + Taerom.1.2
    + ~!PartyHasItem("a7_cnug")~ + @4019 /* I don't have any. I'll be back later. */ + Taerom.1.3
  END
END

EXTEND_BOTTOM ~%tutu_var%TAEROM~ 0 14 #1
  + ~Global("A7STO-BG1Quest","GLOBAL",1) Global("A7STO-BG1QuestFrame","GLOBAL",0)~ + @4000 /* A book mentioned a copper frame that is required for a magical artifact. Can you build one for me? */ + Taerom.1
  + ~Global("A7STO-BG1Quest","GLOBAL",2) Global("A7STO-BG1QuestFrame","GLOBAL",0)~ + @4001 /* The mage Thalantyr referred me to you for a copper frame. Can you build one for me? */ + Taerom.1
  + ~Global("A7STO-BG1QuestFrame","GLOBAL",1)~ + @4002 /* I'm back for the copper frame. Can you build one for me? */ + Taerom.3
END

EXTEND_BOTTOM ~%tutu_var%TAEROM~ 4 12
  + ~Global("A7STO-BG1Quest","GLOBAL",1) Global("A7STO-BG1QuestFrame","GLOBAL",0)~ + @4000 /* A book mentioned a copper frame that is required for a magical artifact. Can you build one for me? */ + Taerom.1
  + ~Global("A7STO-BG1Quest","GLOBAL",2) Global("A7STO-BG1QuestFrame","GLOBAL",0)~ + @4001 /* The mage Thalantyr referred me to you for a copper frame. Can you build one for me? */ + Taerom.1
  + ~Global("A7STO-BG1QuestFrame","GLOBAL",1)~ + @4002 /* I'm back for the copper frame. Can you build one for me? */ + Taerom.3
END


// Thalantyr
APPEND ~%tutu_var%THALAN~
  IF ~~ Thalan.1
    SAY @4102 /* Maybe, or maybe not. Let me see that book of yours. */
    + ~!PartyHasItem("a7_mbk")~ + @4103 /* I don't have it with me. */ + Thalan.1.1
    + ~PartyHasItem("a7_mbk")~ + @4104 /* Here it is. */
      DO ~SetGlobal("A7STO-BG1QuestArtifact","LOCALS",1)
          TakePartyItem("a7_mbk")
          DestroyItem("a7_mbk")~ + Thalan.1.2
    ++ @4105 /* I've changed my mind. I'm sorry to have bothered you, and will leave immediately. */ + 4
  END

  IF ~~ Thalan.1.1
    SAY @4106 /* Then do not waste my time further. */
    IF ~~ EXIT
  END

  IF ~~ Thalan.1.2
    SAY @4107 /* Hmm, that's quite a curious read. The ritual sounds difficult to perform, but I have never shied away from a challenge. */
    IF ~!PartyHasItem("a7_crys")~ + Thalan.1.2.1
    IF ~PartyHasItem("a7_crys")~ + Thalan.1.2.2
  END

  IF ~~ Thalan.1.2.1
    SAY @4108 /* I need two components for the enchantment, a copper frame and a crystal. Luckily for you I have crystals in stock. They are useful for all kinds of enchantments. */
    IF ~Global("A7STO-BG1QuestFrame","GLOBAL",0) !PartyHasItem("a7_cfrm")~ DO ~SetGlobal("RumorTalkThalan","GLOBAL",1)~ + Thalan.1.2.3
    IF ~OR(2) !Global("A7STO-BG1QuestFrame","GLOBAL",0) PartyHasItem("a7_cfrm")~ DO ~SetGlobal("RumorTalkThalan","GLOBAL",1)~ UNSOLVED_JOURNAL @10005 + Thalan.1.3
  END

  IF ~~ Thalan.1.2.2
    SAY @4109 /* I need two components for the enchantment, a copper frame and a crystal. */
    IF ~Global("A7STO-BG1QuestFrame","GLOBAL",0) !PartyHasItem("a7_cfrm")~ + Thalan.1.2.3
    IF ~OR(2) !Global("A7STO-BG1QuestFrame","GLOBAL",0) PartyHasItem("a7_cfrm")~ UNSOLVED_JOURNAL @10005 + Thalan.1.3
  END

  IF ~~ Thalan.1.2.3
    SAY @4110 /* For the copper frame I would refer you to Taerom Fuiruim. He runs the Thunderhammer Smithy in Beregost. */
    IF ~~ DO ~SetGlobal("A7STO-BG1Quest","GLOBAL",2)~ UNSOLVED_JOURNAL @10004 + Thalan.1.3
  END

  IF ~~ Thalan.1.3
    SAY @4111 /* If you can provide me with the required components I can create the Magic Store for you. For the actual enchantment process I will also have to ask for 2000 gold pieces. What do you say? */
    + ~PartyHasItem("a7_crys") PartyHasItem("a7_cfrm") PartyGoldGT(1999)~ + @4112 /* I have everything you need with me. Please create the artifact. */ + Thalan.3
    + ~PartyHasItem("a7_crys") PartyHasItem("a7_cfrm") PartyGoldLT(2000)~ + @4113 /* I don't have enough money. I'll be back later. */ + Thalan.1.4
    + ~OR(2) !PartyHasItem("a7_crys") !PartyHasItem("a7_cfrm")~ + @4114 /* I don't have all the components with me. I'll be back later. */ + Thalan.1.4
    ++ @4105 /* I've changed my mind. I'm sorry to have bothered you, and will leave immediately. */ + 4
  END

  IF ~~ Thalan.1.4
    SAY @4115 /* Then return when you have everything I need. Until then I have nothing more to say to you. */
    IF ~~ EXIT
  END

  IF ~~ Thalan.2
    SAY @4116 /* I have told you already what I require to create the Magic Store. Do you have everything I need? */
    + ~PartyHasItem("a7_crys") PartyHasItem("a7_cfrm") PartyGoldGT(1999)~ + @4112 /* I have everything you need with me. Please create the artifact. */ + Thalan.3
    + ~PartyHasItem("a7_crys") PartyHasItem("a7_cfrm") PartyGoldLT(2000)~ + @4113 /* I don't have enough money. I'll be back later. */ + Thalan.1.4
    + ~OR(2) !PartyHasItem("a7_crys") !PartyHasItem("a7_cfrm")~ + @4114 /* I don't have all the components with me. I'll be back later. */ + Thalan.1.4
    ++ @4105 /* I've changed my mind. I'm sorry to have bothered you, and will leave immediately. */ + 4
  END

  IF ~~ Thalan.3
    SAY @4117 /* Yes, it looks like everything is in order. */
    IF ~~ DO ~TakePartyItemNum("a7_cfrm",1)
              DestroyItem("a7_cfrm")
              TakePartyItemNum("a7_crys",1)
              DestroyItem("a7_crys")
              TakePartyGold(2000)
              DestroyGold(2000)~ + Thalan.3.1
  END

  IF ~~ Thalan.3.1
    SAY @4118 /* Now be quiet for a moment. I need utmost concentration to perform the enchantment ritual... */
    = @4119 /* ...And it is done. I leave it to your intellectual abilities to figure out how to make the item work.  Please go now. I feel a bit weary. */
    IF ~~ DO ~SetGlobal("A7STO-BG1Quest","GLOBAL",3)
              SetGlobal("A7STO-ItemCreated","GLOBAL",1)
              GiveItemCreate("a7_mcsum",LastTalkedToBy(Myself),0,0,0)
              EraseJournalEntry(@10000)
              EraseJournalEntry(@10001)
              EraseJournalEntry(@10002)
              EraseJournalEntry(@10003)
              EraseJournalEntry(@10004)
              EraseJournalEntry(@10005)~ SOLVED_JOURNAL @10006 EXIT
  END
END

EXTEND_BOTTOM ~%tutu_var%THALAN~ 1
  + ~Global("A7STO-BG1Quest","GLOBAL",1) Global("A7STO-BG1QuestArtifact","LOCALS",0)~ + @4100 /* A book described the creation of a powerful magical artifact, called a Magic Store. Can you create it for me? */ + Thalan.1
  + ~GlobalLT("A7STO-BG1Quest","GLOBAL",3) Global("A7STO-BG1QuestArtifact","LOCALS",1)~ + @4101 /* I wish to talk about the Magic Store again. */ + Thalan.2
END
