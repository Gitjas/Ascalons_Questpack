BEGIN ACQ12001
IF ~NumTimesTalkedTo(1)~ THEN BEGIN 0a
SAY @0
++ @1 + 1
++ @2 + 2
++ @3 + 3
++ @4 + 4
++ @5 + 5
END

IF ~~ THEN BEGIN 1
SAY @6
IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 2
SAY @7
IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 3
SAY @8
IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 4
SAY @9
IF ~~ THEN DO ~SetNumTimesTalkedTo(1)~ EXIT
END

IF ~~ THEN BEGIN 6
SAY @10
++ @11 + 7
++ @12 + 7
++ @13 + 4
END

IF ~~ THEN BEGIN 7
SAY @14 = @15
++ @16 + 11
++ @17 + 12
++ @18 + 8
++ @19 + 10
++ @20 + 9
++ @13 + 4
END

IF ~~ THEN BEGIN 8
SAY @21
++ @22 + 11
++ @17 + 12
++ @18 + 8
++ @19 + 10
++ @20 + 9
++ @13 + 4
END

IF ~~ THEN BEGIN 9
SAY @23 = @24
IF ~~ THEN DO ~SetNumTimesTalkedTo(2)IncrementGlobal("ACQ12","GLOBAL",1)~ UNSOLVED_JOURNAL @10008 EXIT
END

IF ~~ THEN BEGIN 10
SAY @25
++ @22 + 11
++ @17 + 12
++ @18 + 8
++ @20 + 9
++ @13 + 4
END

IF ~~ THEN BEGIN 11
SAY @26
++ @17 + 12
++ @18 + 8
++ @19 + 10
++ @20 + 9
++ @13 + 4
END

IF ~~ THEN BEGIN 12
SAY @27
++ @22 + 11
++ @18 + 8
++ @19 + 10
++ @20 + 9
++ @13 + 4
END

IF ~NumTimesTalkedTo(2)!See("ACQ12002")~ THEN BEGIN 13
SAY @28
++ @29 + 14
IF ~Global("ACQ122","GLOBAL",2)~ THEN REPLY @30 + 15
IF ~Global("ACQ122","GLOBAL",3)~ THEN REPLY @31 + 15a
IF ~Dead("ACQ12002")~ THEN REPLY @32 + 16
END

IF ~~ THEN BEGIN 14
SAY @33
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15
SAY @34
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15a
SAY @35
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16
SAY @36 = @37
IF ~~ THEN DO ~EraseJournalEntry(@10008)AddJournalEntry(@10024,QUEST_DONE)SetGlobal("ACQ12","GLOBAL",7)EscapeAreaDestroy(10)~ EXIT
END

IF ~~ THEN BEGIN 21
SAY @38
++ @39 + 22
++ @40 + 23
++ @41 + 24
++ @42+ 24
++ @43 + 25
END

BEGIN ACQ12002
IF ~Global("ACQ12","GLOBAL",1)~ THEN BEGIN 0
SAY @44
++ @45 + 1
++ @46 + 2
++ @47 + 3
END

IF ~~ THEN BEGIN 1
SAY @48
++ @49 + 4
++ @46 + 2
++ @47 + 3
END

IF ~~ THEN BEGIN 2
SAY @50
++ @45 + 1
++ @49 + 4
++ @47 + 3
END

IF ~~ THEN BEGIN 3
SAY @51
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
SAY @52
++ @53 + 5
END

IF ~~ THEN BEGIN 5
SAY @54 = @55 = @56
IF ~PartyHasItem("ACQ12000")~ THEN REPLY @57 + 6
IF ~!PartyHasItem("ACQ12000")~ THEN REPLY @58 + 9
END

IF ~~ THEN BEGIN 6
SAY @59
++ @60 + 7
++ @61 DO ~SetGlobal("ACKEEPRING","LOCALS",1)~ + 8
END

IF ~~ THEN BEGIN 7
SAY @62
IF ~~ THEN DO ~TakePartyItem("ACQ12000")~ GOTO 9
END

IF ~~ THEN BEGIN 8
SAY @63
IF ~~ THEN DO ~~ GOTO 9
END

IF ~~ THEN BEGIN 9
SAY @64
IF ~~ THEN DO ~AddJournalEntry(@10025,QUEST)ClearAllActions()StartCutSceneMode()SetGlobal("ACQ12","GLOBAL",2)Wait(1)FadeToColor([40.0],0)Wait(1)
ActionOverride("ACQ12002",JumpToPoint([5031.2709]))
ActionOverride("ACQ12002",MakeGlobal())FadeFromColor([40.0],0)EndCutSceneMode()~ EXIT
END

IF ~Global("ACQ12","GLOBAL",2)~ THEN BEGIN 10
SAY @65
IF ~HasItem("ACQ12000","ACQ12002")~ THEN REPLY @66 DO ~SetGlobal("ACQ12","LOCALS",1)~ + 11
IF ~Global("ACKEEPRING","LOCALS",1)PartyHasItem("ACQ12000")~ THEN REPLY @67 DO ~SetGlobal("ACQ12","LOCALS",1)~ + 11
IF ~Global("ACKEEPRING","LOCALS",0)PartyHasItem("ACQ12000")~ THEN REPLY @68 DO ~SetGlobal("ACQ12","LOCALS",1)~ + 12
IF ~!HasItem("ACQ12000","ACQ12002")Global("ACKEEPRING","LOCALS",0)!PartyHasItem("ACQ12000")~ THEN REPLY @69 DO ~SetGlobal("ACQ12","LOCALS",1)~ + 15
++ @70 DO ~SetGlobal("ACQ12","LOCALS",1)~ + 13
END

IF ~~ THEN BEGIN 11
SAY @71
++ @72 + 14
++ @73 + 13
END

IF ~~ THEN BEGIN 12
SAY @74
++ @75 DO ~TakePartyItem("ACQ12000")~ + 11
++ @61 DO ~SetGlobal("ACKEEPRING","LOCALS",1)~ + 16
END

IF ~~ THEN BEGIN 13
SAY @76
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14
SAY @77
IF ~HasItem("ACQ12000","ACQ12002")~ THEN DO ~EraseJournalEntry(@10025) ClearAllActions()StartCutSceneMode()StartCutScene("ACQ12CUT")~ EXIT
IF ~!HasItem("ACQ12000","ACQ12002")~ THEN DO ~EraseJournalEntry(@10025) ClearAllActions()StartCutSceneMode()StartCutScene("ACQ12CU2")~ EXIT
END

IF ~~ THEN BEGIN 15
SAY @78
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16
SAY @79 = @80
++ @72 + 14
++ @73 + 13
END

IF ~OR(3)
    Global("ACQ122","GLOBAL",1)
    Global("ACQ122","GLOBAL",2)
    Global("ACQ122","GLOBAL",3)~ THEN BEGIN 20
SAY @81
IF ~Global("ACQ122","GLOBAL",1)~ THEN REPLY @82 + 21
IF ~Global("ACQ122","GLOBAL",2)~ THEN REPLY @83 + 22
IF ~Global("ACQ122","GLOBAL",3)~ THEN REPLY @84 + 23
++ @85 EXIT
END

IF ~~ THEN BEGIN 21
SAY @86
IF ~Global("ACQ12","GLOBAL",4)~ THEN EXIT
IF ~!Global("ACQ12","GLOBAL",4)~ EXTERN ACQ12001 21
END

IF ~~ THEN BEGIN 22
SAY @87
++ @88 + 24
END

/* I did not give XP here because player already gained from killing the ghost - jastey */
IF ~~ THEN BEGIN 23
SAY @89 = @90
IF ~Global("ACQ12","GLOBAL",4)~ THEN DO ~EraseJournalEntry(@10009)
EraseJournalEntry(@10026)
EraseJournalEntry(@10008)
SetGlobal("ACQ122","GLOBAL",4)~ SOLVED_JOURNAL @20024 EXIT
IF ~!Global("ACQ12","GLOBAL",4)~ THEN DO ~EraseJournalEntry(@10009)
EraseJournalEntry(@10026)
EraseJournalEntry(@10008)
SetGlobal("ACQ122","GLOBAL",4)~ SOLVED_JOURNAL @20024 EXTERN ACQ12001 21
END

BEGIN ACQ12003
IF ~Global("ACKnowsMarinaStory","GLOBAL",0)~ THEN BEGIN 0
SAY @91
IF ~Global("ACKnowsMarinaStory","GLOBAL",1)PartyHasItem("ACQ12000")~ THEN REPLY @92 + 12
++ @93 + 1
++ @94 + 2
++ @95 + 3
IF ~GlobalGT("ACQ12","GLOBAL",0)Global("ACQ12_KnowsMarina","MYAREA",0)~ THEN REPLY @96 DO ~SetGlobal("ACQ122","GLOBAL",2) SetGlobal("ACQ12_KnowsMarina","MYAREA",1)~ + 7
++ @97 + 4
END

IF ~~ THEN BEGIN 1
SAY @98 /* ~I... am waiting for Aaron...~ */
IF ~!GlobalGT("ACQ12","GLOBAL",1)~ THEN REPLY @99 /* ~Who is Aaron?~ */ + 5
++ @100 /* ~Why are you waiting?~ */ + 6
++ @94 /* ~Be careful, friends! A ghost!~ */ + 2
++ @95 /* ~Die, undead fiend!~ */ + 3
IF ~GlobalGT("ACQ12","GLOBAL",0)Global("ACQ12_KnowsMarina","MYAREA",0)~ THEN REPLY @96 /* ~Marina? Is it you?~ */ DO ~SetGlobal("ACQ122","GLOBAL",2) SetGlobal("ACQ12_KnowsMarina","MYAREA",1)~ + 7
++ @97 /* ~(turn away)~ */ + 4
END

IF ~~ THEN BEGIN 2
SAY @101
COPY_TRANS_LATE ACQ12003 1
END
/*
IF ~!GlobalGT("ACQ12","GLOBAL",1)~ THEN REPLY @99 + 5
++ @100 + 6
++ @94 + 2
++ @95 + 3
IF ~GlobalGT("ACQ12","GLOBAL",0)Global("ACQ12_KnowsMarina","MYAREA",0)~ THEN REPLY @96 DO ~SetGlobal("ACQ122","GLOBAL",2) SetGlobal("ACQ12_KnowsMarina","MYAREA",1)~ + 7
++ @97 + 4
END
*/

IF ~~ THEN BEGIN 3
SAY @102
IF ~~ THEN DO ~SetGlobal("ACQ122","GLOBAL",3)ReallyForceSpell(Myself,REVENANT_CHANGE)~ EXIT
END

IF ~~ THEN BEGIN 4
SAY @103
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
SAY @104
++ @100 + 6
++ @94 + 2
++ @95 + 3
IF ~GlobalGT("ACQ12","GLOBAL",0)Global("ACQ12_KnowsMarina","MYAREA",0)~ THEN REPLY @96 DO ~SetGlobal("ACQ122","GLOBAL",2) SetGlobal("ACQ12_KnowsMarina","MYAREA",1)~ + 7
++ @97 + 4
END

IF ~~ THEN BEGIN 6
SAY @105 /* ~I promised... Aaron... wait for Aaron...~ */
IF ~!GlobalGT("ACQ12","GLOBAL",1)~ THEN REPLY @99 /* ~Who is Aaron?~ */ + 5
IF ~Global("ACKnowsMarinaStory","GLOBAL",1) PartyHasItem("ACQ12000")~ THEN REPLY @92 /* ~I've got something for you.~ */ + 12
++ @94 + 2
++ @95 + 3
IF ~GlobalGT("ACQ12","GLOBAL",0)Global("ACQ12_KnowsMarina","MYAREA",0)~ THEN REPLY @96 /* ~Marina? Is it you?~ */ DO ~SetGlobal("ACQ122","GLOBAL",2) SetGlobal("ACQ12_KnowsMarina","MYAREA",1)~ + 7
++ @97 + 4
END

IF ~~ THEN BEGIN 7
SAY @106 /* ~Ma... Marina? Yes... my name is Marina. Oh, <LADYLORD>, memories lost are returning, I begin to remember. Oh no! (cries)~ */
IF ~Global("ACKnowsMarinaStory","GLOBAL",1) PartyHasItem("ACQ12000")~ THEN REPLY @92 /* ~I've got something for you.~ */ + 12
++ @107 /* ~Shhhh, everything will be alright. I'm here to help.~ */ + 8
IF ~!GlobalGT("ACQ12","GLOBAL",1)~ THEN REPLY @108 /* ~Listen, we are looking for Aaron. Help us - what happened?~ */ + 8
+ ~Global("ACKnowsMarinaStory","GLOBAL",0)~ + @109 /* ~Why are you still here? What binds you to this place?~ */ + 9
+ ~!GlobalGT("ACQ12","GLOBAL",1)~ + @110 /* ~I will go then and find Aaron.~ */ + 10
+ ~Global("ACKnowsMarinaStory","GLOBAL",1)~ + @97 + 4
END

IF ~~ THEN BEGIN 8
SAY @111
IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
SAY @112 = @113 = @114 = @115
+ ~Global("ACKnowsMarinaStory","GLOBAL",0)~ + @116 + 11
IF ~Global("ACKnowsMarinaStory","GLOBAL",1) PartyHasItem("ACQ12000")~ THEN REPLY @92 /* ~I've got something for you.~ */ + 12
+ ~Global("ACKnowsMarinaStory","GLOBAL",1)~ + @97 + 4
END

IF ~~ THEN BEGIN 10
SAY @117
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
SAY @118
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
SAY @119 = @120 = @121
IF ~~ THEN DO ~EraseJournalEntry(@10008)EraseJournalEntry(@10009)EraseJournalEntry(@10024)EraseJournalEntry(@10025)EraseJournalEntry(@10026)AddJournalEntry(@10027,QUEST_DONE)SetGlobal("ACQ122","GLOBAL",6)TakePartyItem("ACQ12000")DestroyItem("ACQ12000")AddexperienceParty(1200)CreateItem("MISC36",0,0,0)DropInventory()CreateVisualEffectObject("spholy",Myself)PlaySound("EFF_P15")DestroySelf()~ EXIT
END

IF ~Global("ACKnowsMarinaStory","GLOBAL",1)~ THEN BEGIN 13
SAY @91 /* ~Aaron.... is it you? Aaron...!~ */
IF ~PartyHasItem("ACQ12000")~ THEN REPLY @92 /* ~I've got something for you.~ */ + 12
++ @93 /* ~Who are you?~ */ + 1
++ @94 /* ~Be careful, friends! A ghost!~ */ + 2
++ @95 /* ~Die, undead fiend!~ */ + 3
+ ~GlobalGT("ACQ12","GLOBAL",0)Global("ACQ12_KnowsMarina","MYAREA",0)~ + @96 /* ~Marina? Is it you?~ */ DO ~SetGlobal("ACQ122","GLOBAL",2) SetGlobal("ACQ12_KnowsMarina","MYAREA",1)~ + 7
++ @97 /* ~(turn away)~ */ + 4
END

BEGIN ACQ12004
IF ~!Global("ACQ12","GLOBAL",9)AreaCheck("%Nashkel_TempleofHelm%")~ THEN BEGIN 0
SAY @122
++ @93 + 1
++ @123 + 2
IF ~Global("ACQ12","GLOBAL",1)~ THEN REPLY @124 + 3
++ @125 + 4
END

IF ~~ THEN BEGIN 1
SAY @126
++ @123 + 2
IF ~Global("ACQ12","GLOBAL",1)~ THEN REPLY @124 + 3
++ @125 + 4
END

IF ~~ THEN BEGIN 2
SAY @127
IF ~CheckStatGT(LastTalkedToBy(),11,WIS)~ THEN REPLY @128 + 6
++ @129 + 5
IF ~Global("ACQ12","GLOBAL",1)~ THEN REPLY @124 + 3
++ @125 + 4
END

IF ~~ THEN BEGIN 3
SAY @130
++ @131 + 7
++ @132 + 8
++ @133 + 9
END

IF ~~ THEN BEGIN 4
SAY @134
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
SAY @135
++ @93 + 1
++ @123 + 2
IF ~CheckStatGT(LastTalkedToBy(),11,WIS)~ THEN REPLY @128 + 6
IF ~Global("ACQ12","GLOBAL",1)~ THEN REPLY @124 + 3
++ @125 + 4
END

IF ~~ THEN BEGIN 6
SAY @136
IF ~Global("ACQ12","GLOBAL",1)~ THEN REPLY @137 + 8
IF ~!Global("ACQ12","GLOBAL",1)~ THEN REPLY @138 + 6a
END

IF ~~ THEN BEGIN 6a
SAY @139
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
SAY @140 = @141
++ @132 + 8
++ @133 + 9
++ @142 + 10
END

IF ~~ THEN BEGIN 8
SAY @143 = @144
IF ~Global("ACQ122","GLOBAL",2)~ THEN REPLY @145 + 11
IF ~Global("ACQ122","GLOBAL",3)~ THEN REPLY @146 + 11a
IF ~Global("ACQ122","GLOBAL",0)~ THEN REPLY @147 DO ~AddJournalEntry(@10009,QUEST)SetGlobal("ACQ122","GLOBAL",1)~ + 7
IF ~Global("ACQ122","GLOBAL",0)~ THEN REPLY @133 DO ~SetGlobal("ACQ122","GLOBAL",1)AddJournalEntry(@10009,QUEST)~ + 9
IF ~Global("ACQ122","GLOBAL",0)~ THEN REPLY @142 DO ~SetGlobal("ACQ122","GLOBAL",1)AddJournalEntry(@10009,QUEST)~ + 10
IF ~GlobalGT("ACQ122","GLOBAL",0)~ THEN REPLY @147 DO ~AddJournalEntry(@10009,QUEST)~ + 7
IF ~GlobalGT("ACQ122","GLOBAL",0)~ THEN REPLY @133 DO ~AddJournalEntry(@10009,QUEST)~ + 9
IF ~GlobalGT("ACQ122","GLOBAL",0)~ THEN REPLY @142 DO ~AddJournalEntry(@10009,QUEST)~ + 10
END

IF ~~ THEN BEGIN 9
SAY @148
++ @147 + 7
++ @132 + 8
++ @142 + 10
END

IF ~~ THEN BEGIN 10
SAY @149
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
SAY @150
++ @147 + 7
++ @133 + 9
++ @142 + 10
END

IF ~~ THEN BEGIN 11a
SAY @151
++ @147 + 7
++ @133 + 9
++ @142 + 10
END

CHAIN
IF ~Global("ACQ12","GLOBAL",3)~ THEN ACQ12001 20
@152
==ACQ12002 @153
==ACQ12001 @154
==ACQ12002 @155
==ACQ12001 @156
==ACQ12002 @157 = @158 = @159
END
IF ~Global("ACQ122","GLOBAL",1)~ THEN REPLY @160 EXTERN ACQ12002 21
IF ~Global("ACQ122","GLOBAL",2)~ THEN REPLY @161 EXTERN ACQ12002 22
IF ~Global("ACQ122","GLOBAL",3)~ THEN REPLY @162 EXTERN ACQ12002 23
++ @163  EXTERN ACQ12001 21

CHAIN
IF ~~ THEN ACQ12001 22
@164 DO ~SetGlobal("ACQ12","GLOBAL",4)AddexperienceParty(1200)ReputationInc(1)EscapeAreaDestroy(10)~
==ACQ12002 @165 
DO ~//EscapeAreaMove("%Nashkel%",4490,2344,10)
EraseJournalEntry(@10008)
ActionOverride("ACQ12002",JumpToPoint([4490.2344]))
ActionOverride("ACQ12002",MoveToPointNoInterrupt([4490.2344]))
ActionOverride("ACQ12002",Face(10))~
EXIT

CHAIN
IF ~~ THEN ACQ12001 23
@166 DO ~SetGlobal("ACQ12","GLOBAL",4)AddexperienceParty(1200)GiveItemCreate("AMUL09",PLAYER1,0,0,0)EscapeAreaDestroy(10)~
==ACQ12002 @165 
DO ~//EscapeAreaMove("%Nashkel%",4490,2344,10)
EraseJournalEntry(@10008)
ActionOverride("ACQ12002",JumpToPoint([4490.2344]))
ActionOverride("ACQ12002",MoveToPointNoInterrupt([4490.2344]))
ActionOverride("ACQ12002",Face(10))~
EXIT

CHAIN
IF ~~ THEN ACQ12001 24
@167 DO ~SetGlobal("ACQ12","GLOBAL",4)AddexperienceParty(1200)GiveItemCreate("AMUL09",PLAYER1,0,0,0)EscapeAreaDestroy(10)~
==ACQ12002 @168 
DO ~//EscapeAreaMove("%Nashkel%",4490,2344,10)
EraseJournalEntry(@10008)
ActionOverride("ACQ12002",JumpToPoint([4490.2344]))
ActionOverride("ACQ12002",MoveToPointNoInterrupt([4490.2344]))
ActionOverride("ACQ12002",Face(10))~
EXIT

CHAIN
IF ~~ THEN ACQ12001 25
@169 DO ~SetGlobal("ACQ12","GLOBAL",4)AddexperienceParty(1200)Shout(HELPME)Enemy()~
==ACQ12002 @170 DO ~Shout(HELPME)Enemy()~
EXIT

CHAIN
IF ~~ THEN ACQ12002 24
@171 = @172 = @173 DO ~AddJournalEntry(@10026,QUEST)~
==ACQ12002 IF ~HasItem("ACQ12000","ACQ12002")~ THEN @174 DO ~SetGlobal("ACKnowsMarinaStory","GLOBAL",1)GiveItem("ACQ12000",LastTalkedToBy())~
==ACQ12002 IF ~!HasItem("ACQ12000","ACQ12002")~ THEN @175 DO ~SetGlobal("ACKnowsMarinaStory","GLOBAL",1)~
END
IF ~Global("ACQ12","GLOBAL",4)~ THEN DO ~SetGlobal("ACQ122","GLOBAL",4)~ EXIT
IF ~!Global("ACQ12","GLOBAL",4)~ THEN DO ~SetGlobal("ACQ122","GLOBAL",4)~ EXTERN ACQ12001 21

APPEND ACQ12002

IF ~Global("ACQ122","GLOBAL",6)~ THEN thankyou
SAY @183
IF ~~ THEN DO ~SetGlobal("ACQ122","GLOBAL",7)~ EXIT
END

IF ~True()~ THEN BEGIN True1
SAY @81
IF ~~ THEN EXIT
END
END

CHAIN
IF ~NumTimesTalkedTo(0)~ THEN ACQ12001 0
@176
== %AJANTIS_JOINED% IF ~InParty("AJANTIS")See("AJANTIS")!StateCheck("AJANTIS",CD_STATE_NOTVALID)~ THEN @177
== %KAGAIN_JOINED% IF ~InParty("KAGAIN")See("KAGAIN")!StateCheck("KAGAIN",CD_STATE_NOTVALID)~ THEN @178
END
++ @1 + 1
++ @2 + 2
++ @3 + 3
++ @4 + 4
++ @5 + 5

CHAIN
IF ~~ THEN ACQ12001 5
@179 DO ~SetGlobal("ACQ12","GLOBAL",9)EscapeAreaDestroy(10)~
== %KAGAIN_JOINED% IF ~InParty("KAGAIN")See("KAGAIN")!StateCheck("KAGAIN",CD_STATE_NOTVALID)~ THEN @180
== %JAHEIRA_JOINED% IF ~InParty("JAHEIRA")See("JAHEIRA")!StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @181
== %MONTARON_JOINED% IF ~InParty("MONTARON")See("MONTARON")!StateCheck("MONTARON",CD_STATE_NOTVALID)~ THEN @182
EXIT
