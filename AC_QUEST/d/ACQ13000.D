BEGIN ACQ13001
IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
SAY @0 = @1 = @2
++ @3 + 1
++ @4 + 1
++ @5 + 1
++ @6 + 2
++ @7 + 2
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 0a
SAY @1
++ @8 + 7
++ @4 + 8
++ @5 + 9
++ @6 + 2
END

IF ~~ THEN BEGIN 1
SAY @9
++ @10 + 3
++ @11 + 3
++ @6 + 2
++ @7 + 2
END

IF ~~ THEN BEGIN 2
SAY @12
IF ~~ THEN DO ~EscapeAreaDestroy(10)~ EXIT
END

IF ~~ THEN BEGIN 3
SAY @13
++ @14 + 4
++ @15 + 5
++ @16 + 6
++ @6 + 2
++ @7 + 2
END

IF ~~ THEN BEGIN 4
SAY @17
++ @18 + 5
++ @19 + 6
++ @6 + 2
++ @7 + 2
END

IF ~~ THEN BEGIN 5
SAY @20 = @21 = @22
++ @14 + 4
++ @19 + 6
++ @6 + 2
++ @7 + 2
END

IF ~~ THEN BEGIN 6
SAY @23
IF ~~ THEN DO ~SetGlobal("ACQ13","GLOBAL",1)AddJournalEntry(@10004,QUEST)~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 0a
SAY @1
IF ~PartyHasItem("ACQ13003")~ THEN REPLY @24 + 11
IF ~Dead("ACQ13003")~ THEN REPLY @25 + 10
++ @8 + 7
++ @26 + 8
++ @27 + 9
END

IF ~~ THEN BEGIN 7
SAY @28
IF ~PartyHasItem("ACQ13003")~ THEN REPLY @24 + 11
IF ~Dead("ACQ13003")~ THEN REPLY @25 + 10
++ @26 + 8
++ @27 + 9
END

IF ~~ THEN BEGIN 8
SAY @29
IF ~PartyHasItem("ACQ13003")~ THEN REPLY @24 + 11
IF ~Dead("ACQ13003")~ THEN REPLY @25 + 10
++ @8 + 7
++ @27 + 9
END

IF ~~ THEN BEGIN 9
SAY @30
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
SAY @31
IF ~~ THEN DO ~EscapeAreaDestroy(10)~ EXIT
END

IF ~~ THEN BEGIN 11
SAY @32
IF ~Global("ACQ13","GLOBAL",2)~ THEN REPLY @33 DO ~TakePartyItem("ACQ13003")AddexperienceParty(300)EraseJournalEntry(@10004)~ + 12
IF ~!Global("ACQ13","GLOBAL",2)~ THEN REPLY @34 DO ~TakePartyItem("ACQ13003")AddexperienceParty(300)EraseJournalEntry(@10004)~ + 13
END

IF ~~ THEN BEGIN 12
SAY @35 = @36
IF ~~ THEN DO ~EscapeAreaDestroy(10)~ UNSOLVED_JOURNAL @10005 EXIT
END

IF ~~ THEN BEGIN 13
SAY @37
IF ~~ THEN DO ~EscapeAreaDestroy(10)~ SOLVED_JOURNAL @10006 EXIT
END

BEGIN ACQ13002
IF ~NumTimesTalkedToGT(0)!Global("ACQ13","GLOBAL",2)~ THEN BEGIN 0a
SAY @38
++ @39 + 1
++ @40 + 2
++ @41 + 3
++ @42 + 4
IF ~Global("ACQ13","GLOBAL",1)~ THEN REPLY @43 + 5
++ @44 + 0b
END

IF ~NumTimesTalkedToGT(0)Global("ACQ13","GLOBAL",2)~ THEN BEGIN 0c
SAY @45
IF ~PartyHasItem("ACQ13004")~ THEN REPLY @46 + 15
++ @44 EXIT
END

IF ~~ THEN BEGIN 15
SAY @47 = @48 = @49
IF ~~ THEN DO ~TakePartyItem("ACQ13004")AddexperienceParty(450)EraseJournalEntry(@10005)EscapeAreaDestroy(10)~ SOLVED_JOURNAL @10007 EXIT
END

IF ~~ THEN BEGIN 0b
SAY @50
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1
SAY @51 = @52 = @53
++ @54 + 1a
++ @40 + 2
++ @41 + 3
++ @42 + 4
IF ~Global("ACQ13","GLOBAL",1)~ THEN REPLY @43 + 5
++ @55 + 6
END

IF ~~ THEN BEGIN 1a
SAY @56
IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
SAY @57
++ @58 + 1a
++ @59 + 2a
++ @42 + 4
IF ~Global("ACQ13","GLOBAL",1)~ THEN REPLY @43 + 5
++ @55 + 6
END

IF ~~ THEN BEGIN 2a
SAY @60
++ @61 + 1a
++ @62 + 2
++ @41 + 3
++ @42 + 4
IF ~Global("ACQ13","GLOBAL",1)~ THEN REPLY @43 + 5
++ @55 + 6
END

IF ~~ THEN BEGIN 3
SAY @63
++ @61 + 1a
++ @59 + 2a
++ @42 + 4
IF ~Global("ACQ13","GLOBAL",1)~ THEN REPLY @43 + 5
++ @55 + 6
END

IF ~~ THEN BEGIN 4
SAY @64
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
SAY @65
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
SAY @66
++ @67 + 7
++ @68 + 8
++ @69 + 9
++ @70 + 11
++ @71 + 10
END

IF ~~ THEN BEGIN 7
SAY @72
++ @73 + 12
++ @74 + 8
++ @69 + 9
++ @70 + 11
++ @71 + 10
END

IF ~~ THEN BEGIN 8
SAY @75
++ @76 + 7
++ @77 + 8a
++ @69 + 9
++ @70 + 11
++ @71 + 10
END

IF ~~ THEN BEGIN 8a
SAY @78
++ @76 + 7
++ @68 + 8
++ @69 + 9
++ @70 + 11
++ @71 + 10
END

IF ~~ THEN BEGIN 9
SAY @79
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
SAY @80
IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 11
SAY @81
++ @76 + 7
++ @68 + 8
++ @69 + 9
++ @82 + 10
END

IF ~~ THEN BEGIN 12
SAY @83
++ @84 + 13
++ @85 + 9
++ @86 + 10
END

IF ~~ THEN BEGIN 13
SAY @87
++ @88 + 14
++ @85 + 9
++ @86 + 10
END

IF ~~ THEN BEGIN 14
SAY @89 = @90 = @91
IF ~~ THEN DO ~SetGlobal("ACQ13","GLOBAL",2)ActionOverride(LastTalkedToBy(),CreateItem("ACQ13003",0,0,0))ActionOverride("ACQ13003",DestroySelf())~ EXIT
END

BEGIN ACQ13003
IF ~True()~ THEN BEGIN 0
SAY @92
++ @93 + 1
++ @94 + 2
++ @95 + 3
++ @96 + 4
END

IF ~~ THEN BEGIN 3
SAY @97
IF ~~ THEN EXIT
END

CHAIN
IF ~NumTimesTalkedTo(0)~ THEN ACQ13002 0
@98 = @99 = @100 = @101
==ACQ13003 @102
==ACQ13002 @103
END
++ @39 + 1
++ @40 + 2
++ @41 + 3
++ @42 + 4
IF ~Global("ACQ13","GLOBAL",1)~ THEN REPLY @43 + 5

CHAIN
IF ~~ THEN ACQ13003 1
@104
==ACQ13002 @105
END
++ @94 + 2
++ @95 + 3
++ @96 + 4

CHAIN
IF ~~ THEN ACQ13003 2
@106 DO ~Kill("ACQ13003")~
==ACQ13002 IF ~InMyArea("ACQ13002")!StateCheck("ACQ13002",CD_STATE_NOTVALID)!Dead("ACQ13002")~ THEN @107 DO ~Enemy()~
EXIT

CHAIN
IF ~~ THEN ACQ13003 4
@108
==ACQ13002 IF ~InMyArea("ACQ13002")!StateCheck("ACQ13002",CD_STATE_NOTVALID)!Dead("ACQ13002")~ THEN @109
END
++ @95 + 3
++ @96 EXTERN ACQ13003 4a

CHAIN
IF ~~ THEN ACQ13003 4a
@110 DO ~ActionOverride(LastTalkedToBy(),CreateItem("ACQ13003",0,0,0))ActionOverride("ACQ13003",DestroySelf())~
==ACQ13002 IF ~InMyArea("ACQ13002")!StateCheck("ACQ13002",CD_STATE_NOTVALID)!Dead("ACQ13002")~ THEN @111 DO ~Enemy()~
EXIT

BEGIN ACQ13004
IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
SAY @112
++ @113 + 1
IF ~Global("ACQ13","GLOBAL",2)~ THEN REPLY @114 + 2
++ @115 + 3
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 0a
SAY @116
++ @113 + 1
IF ~Global("ACQ13","GLOBAL",2)~ THEN REPLY @114 + 2
++ @115 + 3
END

IF ~~ THEN BEGIN 1
SAY @117
IF ~Global("ACQ13","GLOBAL",2)~ THEN REPLY @114 + 2
++ @118 + 3
END

IF ~~ THEN BEGIN 3
SAY @119
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
SAY @120 = @121
IF ~PartyGoldGT(9)~ THEN REPLY @122 DO ~TakePartyGold(10)GiveItemCreate("ACQ13004",LastTalkedToBy(),0,0,0)~ + 5
++ @123 + 4
END

IF ~~ THEN BEGIN 4
SAY @124
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
SAY @125
IF ~~ THEN DO ~EscapeAreaDestroy(10)~ EXIT
END