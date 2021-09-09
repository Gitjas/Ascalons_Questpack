BEGIN ACQ15001
IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
SAY @0
+ ~!See("ACQ15002")~ + @1 + 1
+ ~!See("ACQ15002")~ + @2 + 2
+ ~!See("ACQ15002")~ + @3 + 3
+ ~!See("ACQ15002")~ + @4 + 4
+ ~!See("ACQ15002")~ + @5 + 5
IF ~See("ACQ15002")~ THEN + 32
END

IF ~~ THEN BEGIN 1
SAY @6
++ @2 + 2
++ @3 + 3
++ @4 + 4
++ @5 + 5
END

IF ~~ THEN BEGIN 2
SAY @7
++ @8 + 6
++ @9 + 7
++ @10 + 8
++ @11 + 9
END

IF ~~ THEN BEGIN 3
SAY @12
++ @13 + 2
++ @14 + 4
++ @5 + 5
END

IF ~~ THEN BEGIN 4
SAY @15
++ @2 + 2
++ @3 + 3
++ @5 + 5
END

IF ~~ THEN BEGIN 5
SAY @16
++ @17 + 2
++ @18 + 3
++ @19 + 5a
END

IF ~~ THEN BEGIN 5a
SAY @20
IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6
SAY @21
++ @22 + 14
++ @23 + 10
++ @24 + 11
++ @25 + 12
++ @26 + 13
END

IF ~~ THEN BEGIN 7
SAY @27
++ @22 + 14
++ @23 + 10
++ @24 + 11
++ @25 + 12
++ @26 + 13
END

IF ~~ THEN BEGIN 8
SAY @28
++ @22 + 14
++ @23 + 10
++ @24 + 11
++ @25 + 12
++ @26 + 13
END

IF ~~ THEN BEGIN 9
SAY @29
IF ~~ THEN DO ~EscapeAreaDestroy(10)~ EXIT
END

IF ~~ THEN BEGIN 10
SAY @30
++ @22 + 14
++ @24 + 11
++ @25 + 12
++ @26 + 13
END

IF ~~ THEN BEGIN 11
SAY @31
++ @22 + 14
++ @23 + 10
++ @25 + 12
++ @26 + 13
END

IF ~~ THEN BEGIN 12
SAY @32
++ @22 + 14
++ @23 + 10
++ @25 + 12
++ @26 + 13
END

IF ~~ THEN BEGIN 13
SAY @33
IF ~~ THEN DO ~AddJournalEntry(@10028,QUEST)SetGlobal("ACQ15","GLOBAL",1)EscapeAreaMove("%FriendlyArmInn%",870,3560,0)~ EXIT
END

IF ~~ THEN BEGIN 14
SAY @34
IF ~~ THEN DO ~AddJournalEntry(@10028,QUEST)SetGlobal("ACQ15","GLOBAL",1)EscapeAreaMove("%FriendlyArmInn%",870,3560,0)~ EXIT
END

IF ~NumTimesTalkedToGT(0)PartyHasItem("ACQ15002")~ THEN BEGIN 15
SAY @35 = @36
++ @37 DO ~TakePartyItem("ACQ15002")~ + 16
++ @38 + 17
END

IF ~~ THEN BEGIN 16
SAY @39
IF ~Class(PLAYER1,CLERIC_ALL)~ THEN REPLY @40 + 18
IF ~Class(PLAYER2,CLERIC_ALL)~ THEN REPLY @41 + 18
IF ~Class(PLAYER3,CLERIC_ALL)~ THEN REPLY @42 + 18
IF ~Class(PLAYER4,CLERIC_ALL)~ THEN REPLY @43 + 18
IF ~Class(PLAYER5,CLERIC_ALL)~ THEN REPLY @44 + 18
IF ~Class(PLAYER6,CLERIC_ALL)~ THEN REPLY @45 + 18
IF ~Class(PLAYER1,DRUID_ALL)~ THEN REPLY @46 + 18
IF ~Class(PLAYER2,DRUID_ALL)~ THEN REPLY @47 + 18
IF ~Class(PLAYER3,DRUID_ALL)~ THEN REPLY @48 + 18
IF ~Class(PLAYER4,DRUID_ALL)~ THEN REPLY @49 + 18
IF ~Class(PLAYER5,DRUID_ALL)~ THEN REPLY @50 + 18
IF ~Class(PLAYER6,DRUID_ALL)~ THEN REPLY @51 + 18
++ @52 + 19
END

IF ~~ THEN BEGIN 17
SAY @53
++ @54 DO ~TakePartyItem("ACQ15002")~ + 16
++ @55 + 5a
END

IF ~~ THEN BEGIN 18
SAY @56
IF ~~ THEN DO ~EraseJournalEntry(@10028)EraseJournalEntry(@10029)EraseJournalEntry(@10030)EraseJournalEntry(@10031)EscapeAreaDestroy(10)~ EXIT
END

IF ~~ THEN BEGIN 19
SAY @57
IF ~~ THEN DO ~EraseJournalEntry(@10028)EraseJournalEntry(@10029)EraseJournalEntry(@10030)EraseJournalEntry(@10031)EscapeAreaDestroy(10)~ EXIT
END

IF ~NumTimesTalkedToGT(0)!InMyArea("ACQ15002")!PartyHasItem("ACQ15002")~ THEN BEGIN 20
SAY @58
++ @59 + 21
IF ~Global("ACQ15","GLOBAL",2)~ THEN REPLY @60 + 22a
IF ~Global("ACQ15","GLOBAL",3)~ THEN REPLY @61 + 22
END

IF ~~ THEN BEGIN 21
SAY @62
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22
SAY @63
++ @64 + 23
++ @65 + 24
++ @66 + 25
END

IF ~~ THEN BEGIN 22a
SAY @67
IF ~~ THEN DO ~EraseJournalEntry(@10030)AddJournalEntry(@10031,QUEST_DONE)EscapeAreaDestroy(10)~ EXIT
END

IF ~~ THEN BEGIN 23
SAY @68
++ @69 + 26
++ @65 + 24
++ @66 + 25
END

IF ~~ THEN BEGIN 24
SAY @70
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25
SAY @71
++ @72 + 26
++ @73 + 24
++ @74 + 27
END

IF ~~ THEN BEGIN 26
SAY @75
IF ~~ THEN DO ~EraseJournalEntry(@10028)EraseJournalEntry(@10029)EraseJournalEntry(@10030)AddJournalEntry(@10031,QUEST_DONE)SetGlobal("ACQ15","GLOBAL",7)EscapeAreaDestroy(10)~ EXIT
END

IF ~~ THEN BEGIN 27
SAY @76
++ @77 DO ~GiveItem("ACQ15001",LastTalkedToBy())ReputationInc(-1)~ + 28
++ @78 + 29
++ @79 + 26
END

IF ~~ THEN BEGIN 28
SAY @80
++ @81 + 30
++ @69 + 31
END

IF ~~ THEN BEGIN 29
SAY @82
++ @83 DO ~GiveItem("ACQ15001",LastTalkedToBy())ReputationInc(-1)~ + 28
++ @84 + 30
++ @79 + 26
END

IF ~~ THEN BEGIN 30
SAY @85
IF ~~ THEN DO ~EraseJournalEntry(@10028)EraseJournalEntry(@10029)EraseJournalEntry(@10030)EraseJournalEntry(@10031)SetGlobal("ACQ15","GLOBAL",7)ReputationInc(-1)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 31
SAY @86
IF ~~ THEN DO ~EraseJournalEntry(@10028)EraseJournalEntry(@10029)EraseJournalEntry(@10030)EraseJournalEntry(@10031)SetGlobal("ACQ15","GLOBAL",7)EscapeAreaDestroy(10)~ EXIT
END

BEGIN ACQ15002
IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
SAY @87
++ @88 + 1
++ @89 + 2
++ @90 + 3
END

IF ~~ THEN BEGIN 1
SAY @91
++ @92 + 4
++ @93 + 5
++ @94 + 6
END

IF ~~ THEN BEGIN 2
SAY @95
++ @88 + 1
++ @90 + 3
END

IF ~~ THEN BEGIN 3
SAY @96
IF ~~ THEN DO ~SetNumTimesTalkedTo(0)~ EXIT
END

IF ~~ THEN BEGIN 4
SAY @97
IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 5
SAY @98
IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 6
SAY @99
IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
SAY @100
++ @101 + 8
++ @102 + 9
++ @103 + 10
END

IF ~~ THEN BEGIN 8
SAY @104 = @105
IF ~~ THEN DO ~AddexperienceParty(1200)EraseJournalEntry(@10028)AddJournalEntry(@10029,QUEST)SetNumTimesTalkedTo(1)SetGlobal("ACQ15","GLOBAL",3)EscapeAreaMove("%CloakwoodMines%",1534,1953,12)~ EXIT
END

IF ~~ THEN BEGIN 9
SAY @106
++ @107 + 8
++ @103 + 10
END

IF ~~ THEN BEGIN 10
SAY @108
IF ~~ THEN DO ~AddexperienceParty(1200)EraseJournalEntry(@10028)AddJournalEntry(@10030,QUEST)SetGlobal("ACQ15","GLOBAL",2)EscapeAreaDestroy(10)~ EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 11
SAY @109
++ @110 + 12
++ @111 + 13
++ @112 + 14
END

IF ~~ THEN BEGIN 12
SAY @113
IF ~~ THEN DO ~SetNumTimesTalkedTo(1)~ EXIT
END

IF ~~ THEN BEGIN 13
SAY @114
IF ~~ THEN DO ~SetGlobal("ACQ15","GLOBAL",4)ChangeEnemyAlly(Myself,GOODBUTBLUE)~ EXIT
END

IF ~~ THEN BEGIN 14
SAY @113
IF ~~ THEN DO ~SetNumTimesTalkedTo(1)~ EXIT
END

IF ~Global("ACQ15","GLOBAL",5)~ THEN BEGIN 15
SAY @115
IF ~~ THEN DO ~DropItem("ACQ15002",[-1.-1])DestroySelf()~ EXIT
END

CHAIN
IF ~NumTimesTalkedToGT(0)See("ACQ15002")~ THEN ACQ15001 32
@116 DO ~EraseJournalEntry(@10028)EraseJournalEntry(@10029)EraseJournalEntry(@10030)EraseJournalEntry(@10031)AddJournalEntry(@10032,QUEST_DONE)~
==ACQ15002 @117
==ACQ15001 @118
==ACQ15002 @119
==ACQ15001 @120 = @121
END
++ @122 DO ~GiveItem("ACQ15001",LastTalkedToBy())~ + 33
++ @123 + 34

CHAIN
IF ~~ THEN ACQ15001 33
@124
==ACQ15002 @125 
==ACQ15001 @126 DO ~AddexperienceParty(1200) ActionOverride("ACQ15002",EscapeAreaDestroy(3)) EscapeAreaDestroy(10)~
EXIT

CHAIN
IF ~~ THEN ACQ15001 34
@127
==ACQ15002 @125 
==ACQ15001 @126 DO ~AddexperienceParty(1200)ReputationInc(1) ActionOverride("ACQ15002",EscapeAreaDestroy(3)) EscapeAreaDestroy(10)~
EXIT