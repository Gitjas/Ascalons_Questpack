BEGIN ACQ18002
IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
SAY @0
++ @1 + 1
++ @2 + 2
++ @3 + 3
++ @4 + 4
++ @5 + 5
++ @6 + 6
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 0a
SAY @7
++ @8 + 3
++ @6 + 6
END

IF ~NumTimesTalkedTo(2)~ THEN BEGIN 0b
SAY @9
++ @10 + 9
++ @11 + 10
END

IF ~~ THEN BEGIN 1
SAY @12
++ @13 + 2
++ @3 + 3
++ @4 + 4
++ @5 + 5
++ @6 + 6
END

IF ~~ THEN BEGIN 2
SAY @14
IF ~~ GOTO 7
END

IF ~~ THEN BEGIN 3
SAY @15
IF ~~ GOTO 7
END

IF ~~ THEN BEGIN 4
SAY @16
IF ~~ THEN DO ~SetNumTimesTalkedTo(1)~ EXIT
END

IF ~~ THEN BEGIN 5
SAY @17
++ @13 + 2
++ @3 + 3
++ @4 + 4
++ @18 + 5a
++ @6 + 6
END

IF ~~ THEN BEGIN 5a
SAY @19
IF ~~ THEN DO ~EraseJournalEntry(@3000001)EraseJournalEntry(@3000002)EraseJournalEntry(@3000003)SetGlobal("ACQ18","GLOBAL",9)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6
SAY @20
IF ~~ THEN DO ~SetNumTimesTalkedTo(1)~ EXIT
END

IF ~~ THEN BEGIN 7
SAY @21
++ @22 + 8
++ @23 + 9
++ @24 + 10
END

IF ~~ THEN BEGIN 8
SAY @25
IF ~~ GOTO 11
END

IF ~~ THEN BEGIN 9
SAY @26
IF ~~ GOTO 11
END

IF ~~ THEN BEGIN 10
SAY @27
IF ~~ THEN DO ~SetNumTimesTalkedTo(2)~ EXIT
END

IF ~~ THEN BEGIN 11
SAY @28 = @29 = @30
++ @31 + 12
++ @32 + 13
++ @33 + 14
++ @34 + 15
++ @35 + 16
END

IF ~~ THEN BEGIN 12
SAY @36
IF ~~ GOTO 17
END

IF ~~ THEN BEGIN 13
SAY @37
IF ~~ GOTO 17
END

IF ~~ THEN BEGIN 14
SAY @38
IF ~~ GOTO 17
END

IF ~~ THEN BEGIN 15
SAY @39
++ @40 + 17
++ @41 + 5a
END

IF ~~ THEN BEGIN 16
SAY @42
++ @40 + 17
++ @43 + 5a
END

IF ~~ THEN BEGIN 17
SAY @44 = @45
++ @46 + 18
++ @47 + 5a
++ @48 + 5a
END

IF ~~ THEN BEGIN 18
SAY @49
IF ~~ THEN DO ~AddJournalEntry(@3000001,QUEST)GiveItemCreate("ACQKEY03",LastTalkedToBy(),0,0,0)SetNumTimesTalkedTo(3)~ EXIT
END

IF ~NumTimesTalkedTo(3)~ THEN BEGIN 19
SAY @50
++ @51 DO ~SetNumTimesTalkedTo(3)~ EXIT
++ @52 + 20
IF ~PartyHasItem("ACQ18001")~ THEN REPLY @53 + 21
END

IF ~~ THEN BEGIN 20
SAY @54
IF ~~ THEN DO ~EraseJournalEntry(@3000001)EraseJournalEntry(@3000002)EraseJournalEntry(@3000003)AddJournalEntry(@3000005,QUEST_DONE)SetGlobal("ACQ18","GLOBAL",9) TakePartyItem("ACQ18003") EscapeAreaDestroy(10)~ EXIT
END

IF ~~ THEN BEGIN 21
SAY @55 = @56
++ @57 + 22
++ @58 + 22
++ @59 + 22
++ @60 + 22
++ @61 + 22
END

IF ~~ THEN BEGIN 22
SAY @62 = @63 = @64 = @65
++ @66 + 23
++ @47 + 5a
++ @67 + 20
END

IF ~~ THEN BEGIN 23
SAY @68
IF ~~ THEN DO ~AddJournalEntry(@3000003,QUEST)GiveItemCreate("ACQ18003",LastTalkedToBy(),0,0,0)~ GOTO 25
END

IF ~TRUE()~ THEN BEGIN 24
SAY @69
++ @70 EXIT
++ @71 + 20
IF ~PartyHasItem("ACQ18001")~ THEN REPLY @72 + 25
END

IF ~~ THEN BEGIN 25
SAY @73
IF ~NumItemsParty("ACQ18001",1)~ THEN DO ~IncrementGlobal("ACQ18001","LOCALS",1)TakePartyItemNum("ACQ18001",1)GiveGoldForce(50)~ GOTO GotFur.1
IF ~NumItemsParty("ACQ18001",2)~ THEN DO ~IncrementGlobal("ACQ18001","LOCALS",2)TakePartyItemNum("ACQ18001",2)GiveGoldForce(100)~ GOTO GotFur.1
IF ~NumItemsParty("ACQ18001",3)~ THEN DO ~IncrementGlobal("ACQ18001","LOCALS",3)TakePartyItemNum("ACQ18001",3)GiveGoldForce(150)~ GOTO GotFur.1
IF ~NumItemsParty("ACQ18001",4)~ THEN DO ~IncrementGlobal("ACQ18001","LOCALS",4)TakePartyItemNum("ACQ18001",4)GiveGoldForce(200)~ GOTO GotFur.1
IF ~NumItemsParty("ACQ18001",5)~ THEN DO ~IncrementGlobal("ACQ18001","LOCALS",5)TakePartyItemNum("ACQ18001",5)GiveGoldForce(250)~ GOTO GotFur.1
IF ~NumItemsParty("ACQ18001",6)~ THEN DO ~IncrementGlobal("ACQ18001","LOCALS",6)TakePartyItemNum("ACQ18001",6)GiveGoldForce(300)~ GOTO GotFur.1
IF ~NumItemsParty("ACQ18001",7)~ THEN DO ~IncrementGlobal("ACQ18001","LOCALS",7)TakePartyItemNum("ACQ18001",7)GiveGoldForce(350)~ GOTO GotFur.1
IF ~NumItemsParty("ACQ18001",8)~ THEN DO ~IncrementGlobal("ACQ18001","LOCALS",8)TakePartyItemNum("ACQ18001",8)GiveGoldForce(400)~ GOTO GotFur.1
IF ~NumItemsParty("ACQ18001",9)~ THEN DO ~IncrementGlobal("ACQ18001","LOCALS",9)TakePartyItemNum("ACQ18001",9)GiveGoldForce(450)~ GOTO GotFur.1
IF ~NumItemsParty("ACQ18001",10)~ THEN DO ~IncrementGlobal("ACQ18001","LOCALS",10)TakePartyItemNum("ACQ18001",10)GiveGoldForce(500)~ GOTO GotFur.1
IF ~NumItemsParty("ACQ18001",11)~ THEN DO ~IncrementGlobal("ACQ18001","LOCALS",11)TakePartyItemNum("ACQ18001",11)GiveGoldForce(550)~ GOTO GotFur.1
IF ~NumItemsParty("ACQ18001",12)~ THEN DO ~IncrementGlobal("ACQ18001","LOCALS",12)TakePartyItemNum("ACQ18001",12)GiveGoldForce(600)~ GOTO GotFur.1
IF ~NumItemsParty("ACQ18001",13)~ THEN DO ~IncrementGlobal("ACQ18001","LOCALS",13)TakePartyItemNum("ACQ18001",13)GiveGoldForce(650)~ GOTO GotFur.1
IF ~NumItemsParty("ACQ18001",14)~ THEN DO ~IncrementGlobal("ACQ18001","LOCALS",14)TakePartyItemNum("ACQ18001",14)GiveGoldForce(700)~ GOTO GotFur.1
IF ~NumItemsParty("ACQ18001",15)~ THEN DO ~IncrementGlobal("ACQ18001","LOCALS",15)TakePartyItemNum("ACQ18001",15)GiveGoldForce(750)~ GOTO GotFur.1
IF ~NumItemsParty("ACQ18001",16)~ THEN DO ~IncrementGlobal("ACQ18001","LOCALS",16)TakePartyItemNum("ACQ18001",16)GiveGoldForce(800)~ GOTO GotFur.1
IF ~NumItemsParty("ACQ18001",17)~ THEN DO ~IncrementGlobal("ACQ18001","LOCALS",17)TakePartyItemNum("ACQ18001",17)GiveGoldForce(850)~ GOTO GotFur.1
IF ~NumItemsParty("ACQ18001",18)~ THEN DO ~IncrementGlobal("ACQ18001","LOCALS",18)TakePartyItemNum("ACQ18001",18)GiveGoldForce(900)~ GOTO GotFur.1
END

IF ~~ THEN BEGIN GotFur.1
SAY @74 = @75
IF ~GlobalLT("ACQ18001","LOCALS",20)~ GOTO 26
IF ~Global("ACQ18001","LOCALS",20)~ GOTO 27
END

IF ~~ THEN BEGIN 26
SAY @76
IF ~~ THEN DO ~SetNumTimesTalkedTo(4)~ EXIT
END

IF ~~ THEN BEGIN 27
SAY @77 = @78
IF ~~ THEN DO ~EraseJournalEntry(@3000001)EraseJournalEntry(@3000002)EraseJournalEntry(@3000003)AddJournalEntry(@3000004,QUEST_DONE)GiveItemCreate("ACQ18002",LastTalkedToBy(),0,0,0) TakePartyItem("ACQ18003") SetGlobal("ACQ18","GLOBAL",9)EscapeAreaDestroy(10)~ EXIT
END
