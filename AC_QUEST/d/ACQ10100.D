BEGIN ACQ08000
IF ~NumTimesTalkedTo(0)Race(LastTalkedToBy(),DWARF)~ THEN BEGIN 0
SAY @0
++ @1 + 1
END

IF ~NumTimesTalkedToGT(0)Race(LastTalkedToBy(),DWARF)~ THEN BEGIN 0a
SAY @2
++ @3 + 1a
++ @4 EXIT
END

IF ~~ THEN BEGIN 1
SAY @5
IF ~~ THEN DO ~GiveItemCreate("ACQLET03",LastTalkedToBy(myself),0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 1a
SAY @6
IF ~~ THEN DO ~GiveItemCreate("ACQLET03",LastTalkedToBy(myself),0,0,0)~ EXIT
END

IF ~NumTimesTalkedTo(0)!Race(LastTalkedToBy(),DWARF)~ THEN BEGIN 2
SAY @7
IF ~~ THEN DO ~SetNumTimesTalkedTo(0)~ EXIT
END

IF ~NumTimesTalkedToGT(0)!Race(LastTalkedToBy(),DWARF)~ THEN BEGIN 2a
SAY @8
IF ~~ THEN EXIT
END

BEGIN ACQ10102
IF ~TRUE()~ THEN BEGIN 0
SAY @9
++ @10 + 1
++ @11 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
++ @12 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
++ @13 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
++ @14 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
++ @15 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
++ @16 + 3
++ @17 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
++ @18 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
++ @19 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
++ @20 + 4
++ @21 + 5
++ @22 + 6
END

IF ~~ THEN BEGIN 1
SAY @23
++ @11 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
++ @12 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
++ @13 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
++ @14 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
++ @15 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
++ @16 + 3
++ @17 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
++ @18 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
++ @19 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
++ @20 + 4
++ @21 + 5
++ @22 + 6
END

IF ~~ THEN BEGIN 2
SAY @24
IF ~GlobalLT("ACWORNG","LOCALS",3)~ THEN REPLY @11 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
IF ~GlobalLT("ACWORNG","LOCALS",3)~ THEN REPLY @12 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
IF ~GlobalLT("ACWORNG","LOCALS",3)~ THEN REPLY @13 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
IF ~GlobalLT("ACWORNG","LOCALS",3)~ THEN REPLY @14 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
IF ~GlobalLT("ACWORNG","LOCALS",3)~ THEN REPLY @15 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
IF ~GlobalLT("ACWORNG","LOCALS",3)~ THEN REPLY @16 + 3
IF ~GlobalLT("ACWORNG","LOCALS",3)~ THEN REPLY @17 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
IF ~GlobalLT("ACWORNG","LOCALS",3)~ THEN REPLY @18 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
IF ~GlobalLT("ACWORNG","LOCALS",3)~ THEN REPLY @19 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
IF ~GlobalLT("ACWORNG","LOCALS",3)~ THEN REPLY @22 + 6
IF ~Global("ACWORNG","LOCALS",3)~ THEN GOTO 2a
END

IF ~~ THEN BEGIN 2a
SAY @25
IF ~~ THEN DO ~EraseJournalEntry(@10021)AddJournalEntry(@10022,QUEST)SetGlobal("ACSNAKEPLOT","GLOBAL",1)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
SAY @26
++ @27 + 7
++ @28 + 8
++ @29 + 9
++ @22 + 6
END

IF ~~ THEN BEGIN 4
SAY @30
++ @11 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
++ @12 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
++ @13 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
++ @14 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
++ @15 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
++ @16 + 3
++ @17 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
++ @18 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
++ @19 DO ~IncrementGlobal("ACWORNG","LOCALS",1)~ + 2
++ @22 + 6
END

IF ~~ THEN BEGIN 5
SAY @31
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
SAY @32
IF ~~ THEN DO ~EraseJournalEntry(@10021)AddJournalEntry(@10022,QUEST)SetGlobal("ACSNAKEPLOT","GLOBAL",1)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7
SAY @33
++ @34 + 10
++ @35 + 11
++ @36 + 6
END

IF ~~ THEN BEGIN 8
SAY @37
++ @34 + 10
++ @35 + 11
++ @38 + 12
++ @36 + 6
END

IF ~~ THEN BEGIN 9
SAY @39 = @40
IF ~~ THEN DO ~EraseJournalEntry(@10021)AddJournalEntry(@10022,QUEST)SetGlobal("ACSNAKEPLOT","GLOBAL",1)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 10
SAY @41
++ @35 + 11
++ @36 + 6
END

IF ~~ THEN BEGIN 11
SAY @42
IF ~~ THEN DO ~SetGlobal("ACSNAKEPLOT","GLOBAL",1)EscapeAreaDestroy(10)~ EXIT
END

IF ~~ THEN BEGIN 12
SAY @43
IF ~~ THEN DO ~SetGlobal("ACSNAKEPLOT","GLOBAL",1)EscapeAreaDestroy(10)~ EXIT
END

BEGIN ACQ10104
BEGIN ACQ10105

CHAIN
IF ~TRUE()~ THEN ACQ10105 0
@44
==ACQ10104 @45
==ACQ10105 @46
==ACQ10104 @47 DO ~ClearAllActions()StartCutSceneMode()StartCutScene("ACQCUT02")~ 
EXIT

BEGIN ACQ10106
IF ~!Global("ACQWOSTOK","GLOBAL",2)Global("ACQSNAKEENEMY","GLOBAL",1)~ THEN BEGIN ATTACK
SAY @48
IF ~~ THEN DO ~UseItem("potn10",Myself)DestroySelf()~ EXIT
END

IF ~!Global("ACQWOSTOK","GLOBAL",2)NumTimesTalkedTo(0)Race(LastTalkedToBy(),DWARF)~ THEN BEGIN 0
SAY @49
IF ~PartyHasItem("ACQBOOK1")~ THEN REPLY @50 + 1
IF ~PartyHasItem("ACQLET03")~ THEN REPLY @51 + 2
++ @1 + 4
++ @52 + 3
END

IF ~~ THEN BEGIN 2
SAY @53
++ @54 + 10
IF ~Race(LastTalkedToBy(),DWARF)~ THEN REPLY @55 + 11a
IF ~!Race(LastTalkedToBy(),DWARF)~ THEN REPLY @55 + 11b
IF ~Race(LastTalkedToBy(),DWARF)~ THEN REPLY @56 + 12a
IF ~!Race(LastTalkedToBy(),DWARF)~ THEN REPLY @56 + 12b
IF ~Race(LastTalkedToBy(),DWARF)~ THEN REPLY @57 + 12a
IF ~!Race(LastTalkedToBy(),DWARF)~ THEN REPLY @57 + 12b
END

IF ~!Global("ACQWOSTOK","GLOBAL",2)NumTimesTalkedTo(0)!Race(LastTalkedToBy(),DWARF)~ THEN BEGIN 0a
SAY @58
IF ~PartyHasItem("ACQBOOK1")~ THEN REPLY @59 + 1
IF ~PartyHasItem("ACQLET03")~ THEN REPLY @60 + 2a
++ @52 + 3
END

IF ~~ THEN BEGIN 3
SAY @61
IF ~~ THEN DO ~SetNumTimesTalkedTo(0)~ EXIT
END

IF ~~ THEN BEGIN 2a
SAY @62
++ @63 + 4
++ @64 + 4
IF ~ CheckStatGT(LastTalkedToBy(),15,WIS)~ THEN REPLY @65 + 5
IF ~ CheckStatGT(LastTalkedToBy(),15,INT)~ THEN REPLY @66 + 6
IF ~ CheckStatGT(LastTalkedToBy(),15,STR)~ THEN REPLY @67 + 7
IF ~Race(LastTalkedToBy(),DWARF)~ THEN REPLY @68 DO ~TakePartyItem("ACQLET03")~ + 8
IF ~!Race(LastTalkedToBy(),DWARF)~ THEN REPLY @68 DO ~TakePartyItem("ACQLET03")~ + 8a
END

IF ~~ THEN BEGIN 1
SAY @69 = @70
++ @63 + 4
++ @71 + 4
++ @64 + 4
IF ~ CheckStatGT(LastTalkedToBy(),15,WIS)~ THEN REPLY @65 + 5
IF ~ CheckStatGT(LastTalkedToBy(),15,INT)~ THEN REPLY @66 + 6
IF ~ CheckStatGT(LastTalkedToBy(),15,STR)~ THEN REPLY @67 + 7
IF ~Race(LastTalkedToBy(),DWARF)~ THEN REPLY @68 DO ~TakePartyItem("ACQBOOK1")~ + 8
IF ~!Race(LastTalkedToBy(),DWARF)~ THEN REPLY @68 DO ~TakePartyItem("ACQBOOK1")~ + 8a
END

IF ~~ THEN BEGIN 4
SAY @72
IF ~InPartySlot(LastTalkedToBy(),0)OR(2)ReputationGT(PLAYER1,13)ReputationLT(PLAYER1,8)~ THEN GOTO 4a
IF ~!InPartySlot(LastTalkedToBy(),0)OR(2)ReputationGT(PLAYER1,13)ReputationLT(PLAYER1,8)~ THEN GOTO 4b
IF ~ReputationGT(PLAYER1,7)ReputationLT(PLAYER1,12)~ THEN GOTO 4c
END

IF ~~ THEN BEGIN 4a
SAY @73
IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 4b
SAY @74
IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 4c
SAY @75
IF ~~ THEN DO ~SetGlobal("ACQSNAKEENEMY","GLOBAL",1)UseItem("potn10",Myself) AddJournalEntry(@3000009,QUEST) Wait(1)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 5
SAY @76
IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 6
SAY @77
IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 7
SAY @78
IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 8
SAY @79
IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 8a
SAY @80
IF ~~ THEN DO ~SetGlobal("ACQSNAKEENEMY","GLOBAL",1)UseItem("potn10",Myself) AddJournalEntry(@3000009,QUEST) Wait(1)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 9
SAY @81
++ @54 + 10
IF ~Race(LastTalkedToBy(),DWARF)~ THEN REPLY @55 + 11a
IF ~!Race(LastTalkedToBy(),DWARF)~ THEN REPLY @55 + 11b
IF ~Race(LastTalkedToBy(),DWARF)~ THEN REPLY @56 + 12a
IF ~!Race(LastTalkedToBy(),DWARF)~ THEN REPLY @56 + 12b
IF ~Race(LastTalkedToBy(),DWARF)~ THEN REPLY @57 + 12a
IF ~!Race(LastTalkedToBy(),DWARF)~ THEN REPLY @57 + 12b
END

IF ~~ THEN BEGIN 10
SAY @82
++ @83 + 10a
++ @84 + 10b
++ @85 + 10c
IF ~Race(LastTalkedToBy(),DWARF)~ THEN REPLY @55 + 11a
IF ~!Race(LastTalkedToBy(),DWARF)~ THEN REPLY @55 + 11b
IF ~Race(LastTalkedToBy(),DWARF)~ THEN REPLY @56 + 12a
IF ~!Race(LastTalkedToBy(),DWARF)~ THEN REPLY @56 + 12b
IF ~Race(LastTalkedToBy(),DWARF)~ THEN REPLY @57 + 12a
IF ~!Race(LastTalkedToBy(),DWARF)~ THEN REPLY @57 + 12b
END

IF ~~ THEN BEGIN 10a
SAY @86
++ @84 + 10b
++ @85 + 10c
IF ~Race(LastTalkedToBy(),DWARF)~ THEN REPLY @55 + 11a
IF ~!Race(LastTalkedToBy(),DWARF)~ THEN REPLY @55 + 11b
IF ~Race(LastTalkedToBy(),DWARF)~ THEN REPLY @56 + 12a
IF ~!Race(LastTalkedToBy(),DWARF)~ THEN REPLY @56 + 12b
IF ~Race(LastTalkedToBy(),DWARF)~ THEN REPLY @57 + 12a
IF ~!Race(LastTalkedToBy(),DWARF)~ THEN REPLY @57 + 12b
END

IF ~~ THEN BEGIN 10b
SAY @87
++ @83 + 10a
++ @85 + 10c
IF ~Race(LastTalkedToBy(),DWARF)~ THEN REPLY @55 + 11a
IF ~!Race(LastTalkedToBy(),DWARF)~ THEN REPLY @55 + 11b
IF ~Race(LastTalkedToBy(),DWARF)~ THEN REPLY @56 + 12a
IF ~!Race(LastTalkedToBy(),DWARF)~ THEN REPLY @56 + 12b
IF ~Race(LastTalkedToBy(),DWARF)~ THEN REPLY @57 + 12a
IF ~!Race(LastTalkedToBy(),DWARF)~ THEN REPLY @57 + 12b
END

IF ~~ THEN BEGIN 10c
SAY @88
++ @83 + 10a
++ @84 + 10b
IF ~Race(LastTalkedToBy(),DWARF)~ THEN REPLY @55 + 11a
IF ~!Race(LastTalkedToBy(),DWARF)~ THEN REPLY @55 + 11b
IF ~Race(LastTalkedToBy(),DWARF)~ THEN REPLY @56 + 12a
IF ~!Race(LastTalkedToBy(),DWARF)~ THEN REPLY @56 + 12b
IF ~Race(LastTalkedToBy(),DWARF)~ THEN REPLY @57 + 13a
IF ~!Race(LastTalkedToBy(),DWARF)~ THEN REPLY @57 + 13b
END

IF ~~ THEN BEGIN 11a
SAY @89
++ @90 + 17
++ @91 + 14
++ @92 + 15
++ @93 + 16
END

IF ~~ THEN BEGIN 11b
SAY @94
++ @90 + 17
++ @91 + 14
++ @92 + 15
++ @93 + 16
END

IF ~~ THEN BEGIN 12a
SAY @95 = @96
++ @90 + 17
++ @91 + 14
++ @92 + 15
++ @93 + 16
END

IF ~~ THEN BEGIN 12b
SAY @97 = @98 = @96
++ @90 + 17
++ @91 + 14
++ @92 + 15
++ @93 + 16
END

IF ~~ THEN BEGIN 13a
SAY @99
++ @90 + 17
++ @91 + 14
++ @92 + 15
++ @93 + 16
END

IF ~~ THEN BEGIN 13b
SAY @100
++ @90 + 17
++ @91 + 14
++ @92 + 15
++ @93 + 16
END

IF ~~ THEN BEGIN 14
SAY @101
IF ~~ THEN DO ~SetGlobal("ACQSNAKEENEMY","GLOBAL",1)UseItem("potn10",Myself) AddJournalEntry(@3000009,QUEST) Wait(1)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 15
SAY @102
++ @90 + 17
++ @103 + 14
++ @93 + 16
END

IF ~~ THEN BEGIN 16
SAY @104
IF ~~ THEN DO ~SetGlobal("ACQSNAKEENEMY","GLOBAL",1)UseItem("potn10",Myself) AddJournalEntry(@3000009,QUEST) Wait(1)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 17
SAY @105 = @106 = @107
IF ~~ THEN DO ~SetGlobal("ACQSNAKEWORK","GLOBAL",1)PlaySound("GULP")Deactivate(MYSELF)~ EXIT
END

IF ~Race(LastTalkedToBy(),DWARF)Dead("ACQ10116")Global("ACQSNAKEWORK","GLOBAL",1)~ THEN BEGIN 18
SAY @108
IF ~~ THEN GOTO 20
END

IF ~!Race(LastTalkedToBy(),DWARF)Dead("ACQ10116")Global("ACQSNAKEWORK","GLOBAL",1)~ THEN BEGIN 19
SAY @109
IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 21
SAY @110
++ @111 + 25
++ @112 + 22
++ @113 + 23
END

IF ~~THEN BEGIN 23
SAY @114
IF ~~ THEN DO ~SetGlobal("ACQSNAKEWORK","GLOBAL",2)PlaySound("GULP")Deactivate(MYSELF)~ EXIT
END

IF ~~ THEN BEGIN 24
SAY @115
IF ~~ THEN DO ~SetGlobal("ACQSNAKEENEMY","GLOBAL",1)UseItem("potn10",Myself) AddJournalEntry(@3000009,QUEST) Wait(1)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 25
SAY @116
++ @117 + 22
++ @118 + 22
++ @119 + 22
++ @120 + 22
++ @121 + 22
END

IF ~PartyHasItem("ACQ10101")~ THEN BEGIN 26
SAY @122
++ @123 DO ~AddexperienceParty(500)SetGlobal("ACQSNAKEWORK","GLOBAL",3)TakePartyItem("ACQ10101")GiveItemCreate("MISC41",LastTalkedToBy(),0,0,0)~ + 27
++ @124 DO ~AddexperienceParty(500)SetGlobal("ACQSNAKEWORK","GLOBAL",3)TakePartyItem("ACQ10101")GiveItemCreate("MISC41",LastTalkedToBy(),0,0,0)~ + 28
++ @125 DO ~AddexperienceParty(500)SetGlobal("ACQSNAKEWORK","GLOBAL",3)TakePartyItem("ACQ10101")GiveItemCreate("MISC41",LastTalkedToBy(),0,0,0)~ + 29
END

CHAIN
IF ~~ THEN ACQ10106 27
@126
==ACQ10106 IF ~Race(LastTalkedToBy(),DWARF)~ THEN @127 DO ~GiveItemCreate("ACQKEY02",LastTalkedToBy(),0,0,0)~
==ACQ10106 IF ~!Race(LastTalkedToBy(),DWARF)~ THEN @128 DO ~GiveItemCreate("ACQKEY02",LastTalkedToBy(),0,0,0)~
==ACQ10106 @129 DO ~PlaySound("GULP")Deactivate(MYSELF)~
EXIT

CHAIN
IF ~~ THEN ACQ10106 28
@130
==ACQ10106 IF ~Race(LastTalkedToBy(),DWARF)~ THEN @127 DO ~GiveItemCreate("ACQKEY02",LastTalkedToBy(),0,0,0)~
==ACQ10106 IF ~!Race(LastTalkedToBy(),DWARF)~ THEN @128 DO ~GiveItemCreate("ACQKEY02",LastTalkedToBy(),0,0,0)~
==ACQ10106 @129 DO ~PlaySound("GULP")Deactivate(MYSELF)~
EXIT

CHAIN
IF ~~ THEN ACQ10106 29
@131
==ACQ10106 IF ~Race(LastTalkedToBy(),DWARF)~ THEN @127 DO ~GiveItemCreate("ACQKEY02",LastTalkedToBy(),0,0,0)~
==ACQ10106 IF ~!Race(LastTalkedToBy(),DWARF)~ THEN @128 DO ~GiveItemCreate("ACQKEY02",LastTalkedToBy(),0,0,0)~
==ACQ10106 @129 DO ~PlaySound("GULP")Deactivate(MYSELF)~
EXIT

CHAIN
IF ~~ THEN ACQ10106 20
@132
==ACQ10106 IF ~Race(LastTalkedToBy(),DWARF)~ THEN @133 DO ~GiveItemCreate("MISC42",LastTalkedToBy(),0,0,0)~
==ACQ10106 IF ~!Race(LastTalkedToBy(),DWARF)~ THEN @134 DO ~GiveItemCreate("MISC42",LastTalkedToBy(),0,0,0)~
==ACQ10106 @135
END
++ @111 + 25
++ @136 + 21
++ @137 + 22
++ @138 + 23

CHAIN
IF ~~ THEN ACQ10106 22
@139
==ACQ10106 IF ~Race(LastTalkedToBy(),DWARF)~ THEN @140
==ACQ10106 IF ~!Race(LastTalkedToBy(),DWARF)~ THEN @141
==ACQ10106 @142
END
++ @143 + 24
++ @113 + 23

EXTEND_TOP %Prihel_Dialog% 0 #1
IF ~Global("ACQWOSTOK","GLOBAL",0)Global("ACQSNAKEWORK","GLOBAL",1)~ THEN REPLY @144 DO ~SetGlobal("ACQWOSTOK","GLOBAL",1)~ GOTO AC.1
IF ~Global("ACQWOSTOK","GLOBAL",0)PartyHasItem("ACQBOOK1")~ THEN REPLY @145 DO ~SetGlobal("ACQWOSTOK","GLOBAL",1)~ GOTO AC.2
IF ~Global("ACQWOSTOK","GLOBAL",0)PartyHasItem("ACQLET03")~ THEN REPLY @146 DO ~SetGlobal("ACQWOSTOK","GLOBAL",1)~ GOTO AC.3
END

APPEND %Prihel_Dialog%

IF ~~ THEN BEGIN AC.1
SAY @147
IF ~~ THEN GOTO AC.4
END

IF ~~ THEN BEGIN AC.2
SAY @148
IF ~~ THEN GOTO AC.4
END

IF ~~ THEN BEGIN AC.3
SAY @149
IF ~~ THEN GOTO AC.4
END

IF ~~ THEN BEGIN AC.4
SAY @150
++ @151 EXIT
++ @152 DO ~StartStore("%Prihel_Store%",LastTalkedToBy(Myself))~ EXIT
END
END

BEGIN ACQ10113 // GALDER
IF ~Global("ACQWOSTOK","GLOBAL",1)~ THEN BEGIN 0
SAY @153
IF ~~ THEN EXTERN ACQ10116 1
END

BEGIN ACQ10114 //THERK
IF ~Global("ACQWOSTOK","GLOBAL",1)~ THEN BEGIN 0
SAY @153
IF ~~ THEN EXTERN ACQ10116 1
END
BEGIN ACQ10115 //JARGER
IF ~Global("ACQWOSTOK","GLOBAL",1)~ THEN BEGIN 0
SAY @153
IF ~~ THEN EXTERN ACQ10116 1
END

IF ~Global("ACQWOSTOK","GLOBAL",5)~ THEN BEGIN 1
SAY @154
++ @155 DO ~EraseJournalEntry(@3000012)~ + 2
END

IF ~~ THEN BEGIN 2
SAY @156
++ @157 + 3
++ @158 + 4
++ @159 + 5
END

IF ~~ THEN BEGIN 3
SAY @160 = @161
++ @158 + 4
++ @159 + 5
++ @162 + 6
END

IF ~~ THEN BEGIN 4
SAY @163
++ @164 + 3
++ @159 + 5
++ @162 + 6
END

IF ~~ THEN BEGIN 5
SAY @165
++ @164 + 3
++ @158 + 4
++ @162 + 6
END

IF ~~ THEN BEGIN 6
SAY @166 = @167
IF ~~ THEN DO ~AddJournalEntry(@3000013,QUEST) SetGlobal("ACQWOSTOK","GLOBAL",6)EscapeAreaDestroy(10)~ EXIT
END
BEGIN ACQ10116 //WOSTOK
IF ~NumTimesTalkedTo(0)Global("ACQWOSTOK","GLOBAL",1)~ THEN BEGIN 0
SAY @168
IF ~~ THEN GOTO 1
END

IF ~NumTimesTalkedToGT(0)Global("ACQWOSTOK","GLOBAL",1)~ THEN BEGIN 0a
SAY @169
++ @170 + 3
IF ~Global("ACQSNAKEWORK","GLOBAL",1)~ THEN REPLY @171 + 2
IF ~PartyHasItem("ACQBOOK1")~ THEN REPLY @172 DO ~EraseJournalEntry(@409)~ + 4
IF ~PartyHasItem("ACQLET03")~ THEN REPLY @173 + 5
++ @174 + 6
END

IF ~~ THEN BEGIN 3
SAY @175
IF ~Global("ACQSNAKEWORK","GLOBAL",1)~ THEN REPLY @171 + 2
IF ~PartyHasItem("ACQBOOK1")~ THEN REPLY @176 DO ~EraseJournalEntry(@409)~ + 4
IF ~PartyHasItem("ACQLET03")~ THEN REPLY @146 + 5
++ @174 + 6
END

IF ~~ THEN BEGIN 4
SAY @177
++ @178 + 7
IF ~PartyHasItem("ACQLET03")~ THEN REPLY @179 + 8
++ @180 + 9
END

IF ~~ THEN BEGIN 5
SAY @181
IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 6
SAY @182
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
SAY @183 = @184 = @185
IF ~Global("ACQSNAKEWORK","GLOBAL",1)~ THEN REPLY @186 + 2
++ @187 + 10
++ @188 + 11
++ @189 + 9
END

IF ~~ THEN BEGIN 10
SAY @190
++ @188 + 11
++ @191 + 9
END

IF ~Global("ACQSNAKEENEMY","GLOBAL",1)Global("ACQWOSTOK","GLOBAL",2)~ THEN BEGIN 12
SAY @192
++ @193 + 13
++ @194 DO ~EraseJournalEntry(@3000009)~ + 14
++ @195 + 16
END

IF ~~ THEN BEGIN 13
SAY @196
++ @193 + 17
++ @194 DO ~EraseJournalEntry(@3000009)~ + 14
++ @195 + 16
END

IF ~~ THEN BEGIN 14
SAY @197
++ @198 + 18
++ @199 + 19
++ @200 + 15
++ @201 + 15
END

IF ~~ THEN BEGIN 15
SAY @202
++ @203 + 18
++ @204 + 20
END

IF ~~ THEN BEGIN 16
SAY @205
++ @193 + 17
++ @194 + 14
END

IF ~~ THEN BEGIN 17
SAY @206
++ @194 DO ~EraseJournalEntry(@3000009)~ + 14
END

IF ~~ THEN BEGIN 18
SAY @207 = @208 = @209
IF ~~ THEN DO ~SetGlobal("ACQWOSTOK","GLOBAL",3) AddJournalEntry(@3000010,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 19
SAY @210
IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 20
SAY @211
IF ~~ THEN DO ~SetGlobal("ACQWOSTOK","GLOBAL",9) AddJournalEntry(@3000011,QUEST_DONE)~ EXIT
END

CHAIN
IF ~~ THEN ACQ10116 1
@212
==ACQ10114 @213
==ACQ10115 @214
==ACQ10116 @215
END
++ @170 + 3
IF ~Global("ACQSNAKEWORK","GLOBAL",1)~ THEN REPLY @171 + 2
IF ~PartyHasItem("ACQBOOK1")~ THEN REPLY @172 DO ~EraseJournalEntry(@409)~ + 4
IF ~PartyHasItem("ACQLET03")~ THEN REPLY @173 + 5
++ @174 + 6

CHAIN 
IF ~~ THEN ACQ10116 2
@216
==ACQ10114 @217
==ACQ10113 @218
==ACQ10116 @219
END
++ @220 + 3a
++ @409 + 3a

CHAIN 
IF ~~ THEN ACQ10116 3a
@221 DO ~Enemy()~
==%YESLICK_JOINED% IF ~InParty("YESLICK")InMyArea("YESLICK")!StateCheck("YESLICK",CD_STATE_NOTVALID)~ THEN @222 DO ~LeaveParty()Enemy()~
==ACQ10114 @223 DO ~Enemy()~
==ACQ10113 @224 DO ~Enemy()~
==ACQ10115 @225 DO ~Enemy()~
EXIT

CHAIN
IF ~~ THEN ACQ10116 8
@226
==ACQ10115 @227
==ACQ10114 @228
==ACQ10113 @229
==ACQ10116 @230 = @184 = @231
END
IF ~Global("ACQSNAKEWORK","GLOBAL",1)~ THEN REPLY @186 + 2
++ @187 + 10
++ @188 + 11
++ @232 + 9

CHAIN
IF ~~ THEN ACQ10116 9
@233 DO ~TakePartyItem("ACQBOOK1")TakePartyItem("ACQLET03") EraseJournalEntry(@409)~
==ACQ10114 @234 DO ~EscapeAreaDestroy(10)~
==ACQ10115 @235 DO ~EscapeAreaDestroy(10)~
==ACQ10113 @236 DO ~EscapeAreaDestroy(10)~ 
==ACQ10116 @237 DO ~SetGlobal("ACQWOSTOK","GLOBAL",2)EscapeAreaDestroy(10)~ 
EXIT

CHAIN
IF ~~ THEN ACQ10116 11
@238 DO ~TakePartyItem("ACQBOOK1")TakePartyItem("ACQLET03") EraseJournalEntry(@409) AddJournalEntry(@3000008,QUEST)~
==ACQ10114 @234 DO ~EscapeAreaDestroy(10)~
==ACQ10115 @235 DO ~EscapeAreaDestroy(10)~
==ACQ10113 @236 DO ~EscapeAreaDestroy(10)~ 
==ACQ10116 @239 DO ~SetGlobal("ACQWOSTOK","GLOBAL",2)EscapeAreaDestroy(10)~ 
EXIT

BEGIN ACQ10117 // Jassir
IF ~NumTimesTalkedToGT(0)!StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN a
SAY @240
IF ~~ THEN EXIT
END

BEGIN ACQ10118 // Jenna
IF ~NumTimesTalkedToGT(0)!StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN a
SAY @241
++ @242 + 1
++ @243 + 2
++ @244 + 3
IF ~Global("ACQSNAKEWORK","GLOBAL",2)~ THEN REPLY @245 + 11
IF ~Global("ACQSNAKEWORK","GLOBAL",2)~ THEN REPLY @246 + 12
++ @247 EXIT
END

IF ~~ THEN BEGIN 1
SAY @248 = @249
++ @250 + 5
++ @251 + 2
++ @252 + 4
IF ~Global("ACQSNAKEWORK","GLOBAL",2)~ THEN REPLY @245 + 11
IF ~Global("ACQSNAKEWORK","GLOBAL",2)~ THEN REPLY @246 + 12
END

IF ~~ THEN BEGIN 2
SAY @253
++ @254 + 6
++ @252 + 4
++ @255 + 7
++ @256 + 3
IF ~Global("ACQSNAKEWORK","GLOBAL",2)~ THEN REPLY @245 + 11
IF ~Global("ACQSNAKEWORK","GLOBAL",2)~ THEN REPLY @246 + 12
END

IF ~~ THEN BEGIN 3
SAY @257
++ @258 + 3a
++ @259 + 3b
IF ~Global("ACQSNAKEWORK","GLOBAL",2)~ THEN REPLY @245 + 11
IF ~Global("ACQSNAKEWORK","GLOBAL",2)~ THEN REPLY @246 + 12
END

IF ~~ THEN BEGIN 3a
SAY @260
IF ~~ THEN DO ~ActionOverride("ACQ10117",ENEMY())ENEMY()~ EXIT
END

IF ~~ THEN BEGIN 3b
SAY @261
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
SAY @262
++ @263 + 3a
++ @259 + 3b
++ @254 + 6
++ @255 + 7
IF ~Global("ACQSNAKEWORK","GLOBAL",2)~ THEN REPLY @245 + 11
IF ~Global("ACQSNAKEWORK","GLOBAL",2)~ THEN REPLY @246 + 12
++ @256 + 3
END

IF ~~ THEN BEGIN 5
SAY @264
IF ~Global("ACQSNAKEWORK","GLOBAL",2)~ THEN REPLY @245 + 11
IF ~Global("ACQSNAKEWORK","GLOBAL",2)~ THEN REPLY @246 + 12
++ @265 + 3
++ @254 + 6
++ @255 + 7
END

IF ~~ THEN BEGIN 6
SAY @266
IF ~Global("ACQSNAKEWORK","GLOBAL",2)~ THEN REPLY @245 + 11
IF ~Global("ACQSNAKEWORK","GLOBAL",2)~ THEN REPLY @246 + 12
++ @267 + 7
++ @256 + 3
++ @268 + 8
END

IF ~~ THEN BEGIN 7
SAY @269
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
SAY @270
IF ~Global("ACQSNAKEWORK","GLOBAL",2)~ THEN REPLY @245 + 11
IF ~Global("ACQSNAKEWORK","GLOBAL",2)~ THEN REPLY @246 + 12
++ @267 + 7
++ @256 + 3
++ @271 + 9
END

IF ~~ THEN BEGIN 8a
SAY @272
IF ~Global("ACQSNAKEWORK","GLOBAL",2)~ THEN REPLY @245 + 11
IF ~Global("ACQSNAKEWORK","GLOBAL",2)~ THEN REPLY @246 + 12
++ @267 + 7
++ @256 + 3
++ @271 + 9
END

IF ~~ THEN BEGIN 9
SAY @273
IF ~Global("ACQSNAKEWORK","GLOBAL",2)~ THEN REPLY @245 + 11
IF ~Global("ACQSNAKEWORK","GLOBAL",2)~ THEN REPLY @246 + 12
++ @267 + 7
++ @256 + 3
++ @274 + 10
END

IF ~~ THEN BEGIN 10
SAY @275
IF ~Global("ACQSNAKEWORK","GLOBAL",2)~ THEN REPLY @245 + 11
IF ~Global("ACQSNAKEWORK","GLOBAL",2)~ THEN REPLY @246 + 12
++ @267 + 7
++ @256 + 3
++ @276 + 9
END

IF ~~ THEN BEGIN 11
SAY @277
++ @278 + 12
++ @279 + 13
END

IF ~~ THEN BEGIN 12
SAY @280
IF ~~ THEN DO ~EraseJournalEntry(@3000010) ActionOverride("ACQ10117",ENEMY())ENEMY()~ EXIT
END

IF ~~ THEN BEGIN 13
SAY @281
++ @282 + 12
++ @283 + 14
++ @284 + 15
END

IF ~~ THEN BEGIN 14
SAY @285
IF ~~ THEN DO ~EraseJournalEntry(@3000010) ActionOverride("ACQ10117",ENEMY())ENEMY()~ EXIT
END

IF ~~ THEN BEGIN 15
SAY @286 = @287
++ @288 + 16
++ @289 + 16
++ @290 + 17
++ @291 + 16
++ @292 + 16
++ @293 + 16
++ @294 + 16
++ @295 + 16
++ @296 + 16
++ @297 + 16
END

IF ~~ THEN BEGIN 16
SAY @298
IF ~~ THEN DO ~EraseJournalEntry(@3000010) ActionOverride("ACQ10117",ENEMY())ENEMY()~ EXIT
END

IF ~~ THEN BEGIN 17
SAY @299
IF ~~ THEN DO ~AddexperienceParty(550)DropItem("ACQKEY01",[-1.-1])ActionOverride("ACQ10117",EscapeAreaDestroy(10))EscapeAreaDestroy(10) EraseJournalEntry(@3000010)~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 17a
SAY @300
IF ~~ THEN DO ~AddexperienceParty(400)DropItem("ACQKEY01",[-1.-1])ActionOverride("ACQ10117",EscapeAreaDestroy(10))EscapeAreaDestroy(10) EraseJournalEntry(@3000010)~ EXIT
END

CHAIN
IF ~NumTimesTalkedTo(0)!StateCheck(Myself,STATE_CHARMED)~ THEN ACQ10118 0
@301
==ACQ10117 @302 DO ~SetNumTimesTalkedTo(1)~
==ACQ10118 @303
END
IF ~Global("ACQSNAKEWORK","GLOBAL",2)~ THEN REPLY @245 + 11
IF ~Global("ACQSNAKEWORK","GLOBAL",2)~ THEN REPLY @246 + 12
++ @242 + 1
++ @251 + 2
++ @304 + 3
++ @305 + 4
++ @247 EXIT

CHAIN
IF ~NumTimesTalkedTo(0)!StateCheck(Myself,STATE_CHARMED)~ THEN ACQ10117 0
@302
==ACQ10118 @303 DO ~SetNumTimesTalkedTo(1)~
END
IF ~Global("ACQSNAKEWORK","GLOBAL",2)~ THEN REPLY @245 EXTERN ACQ10118 11
IF ~Global("ACQSNAKEWORK","GLOBAL",2)~ THEN REPLY @246 EXTERN ACQ10118 12
++ @242 EXTERN ACQ10118 1
++ @251 EXTERN ACQ10118 2
++ @304 EXTERN ACQ10118 3
++ @305 EXTERN ACQ10118 4
++ @247 EXIT

BEGIN ACQ18201
IF ~!Name("ACQ10111",MYSELF)RandomNum(3,1)~ THEN BEGIN 0
SAY @306
IF ~~ THEN EXIT
END

IF ~!Name("ACQ10111",MYSELF)RandomNum(3,2)~ THEN BEGIN 1
SAY @307
IF ~~ THEN EXIT
END

IF ~!Name("ACQ10111",MYSELF)RandomNum(3,3)~ THEN BEGIN 2
SAY @308
IF ~~ THEN EXIT
END

CHAIN
IF ~Name("ACQ10111",MYSELF)~ THEN ACQ18201 3
@309 DO ~SetGlobal("ACQSNAKEENEMY","GLOBAL",1)~
==ACQ18201 IF ~InPartySlot(LastTalkedToBy(),0)~ THEN @310
==ACQ18201 IF ~!InPartySlot(LastTalkedToBy(),0)~ THEN @311
==ACQ18201 IF ~GlobalGT("ACQSNAKEWORK","GLOBAL",1)~ THEN @312
==ACQ18201 @313 = @314
EXIT

BEGIN ACQEMERS
IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 0a
SAY @315
IF ~Global("ACQ1SNAKESDEFEATED","GLOBAL",1)~ THEN REPLY @316 + 14
++ @317 EXIT
END

IF ~~ THEN BEGIN 1
SAY @318
IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
SAY @319 = @320
++ @321 DO ~AddJournalEntry(@10012,QUEST)~ + 6
++ @322 DO ~AddJournalEntry(@10013,QUEST)~ + 7
++ @323 DO ~AddJournalEntry(@10014,QUEST)~ + 8
++ @324 DO ~AddJournalEntry(@10016,QUEST)~ + 9
++ @325 + 10
++ @326 + 11
++ @327 + 12
++ @328 + 13
END

IF ~~ THEN BEGIN 3
SAY @329
IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 4
SAY @330
IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 5
SAY @331
IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 6
SAY @332
++ @322 DO ~AddJournalEntry(@10013,QUEST)~ + 7
++ @323 DO ~AddJournalEntry(@10014,QUEST)~ + 8
++ @324 DO ~AddJournalEntry(@10012,QUEST)~ + 9
++ @325 DO ~AddJournalEntry(@10015,QUEST)~ + 10
++ @326 + 11
++ @327 + 12
++ @328 + 13
END

IF ~~ THEN BEGIN 7
SAY @333
++ @334 DO ~AddJournalEntry(@10012,QUEST)~ + 6
++ @323 DO ~AddJournalEntry(@10014,QUEST)~ + 8
++ @324 DO ~AddJournalEntry(@10016,QUEST)~ + 9
++ @325 DO ~AddJournalEntry(@10015,QUEST)~ + 10
++ @326 + 11
++ @327 + 12
++ @328 + 13
END

IF ~~ THEN BEGIN 8
SAY @335
++ @334  + 6
++ @322 DO ~AddJournalEntry(@10013,QUEST)~ + 7
++ @324 DO ~AddJournalEntry(@10014,QUEST)~ + 9
++ @325 DO ~AddJournalEntry(@10015,QUEST)~ + 10
++ @326 + 11
++ @327 + 12
++ @328 + 13
END

IF ~~ THEN BEGIN 10
SAY @336
++ @334 DO ~AddJournalEntry(@10012,QUEST)~ + 6
++ @322 DO ~AddJournalEntry(@10013,QUEST)~ + 7
++ @323 DO ~AddJournalEntry(@10014,QUEST)~ + 8
++ @324 DO ~AddJournalEntry(@10016,QUEST)~ + 9
++ @326 + 11
++ @327 + 12
++ @328 + 13
END

IF ~~ THEN BEGIN 9
SAY @337
++ @334 DO ~AddJournalEntry(@10012,QUEST)~ + 6
++ @322 DO ~AddJournalEntry(@10013,QUEST)~ + 7
++ @323 DO ~AddJournalEntry(@10014,QUEST)~ + 8
++ @325 DO ~AddJournalEntry(@10015,QUEST)~ + 10
++ @326 + 11
++ @327 + 12
++ @328 + 13
END

IF ~~ THEN BEGIN 11
SAY @338
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
SAY @339
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13
SAY @340
IF ~~ THEN EXIT
END

CHAIN
IF ~NumTimesTalkedTo(0)~ THEN ACQEMERS 0
@341
==ACQEMERS IF ~InPartySlot(LastTalkedToBy(),0)~ THEN @342
==ACQEMERS IF ~!InPartySlot(LastTalkedToBy(),0)~ THEN @343
==ACQEMERS @344
END
++ @345 + 1
++ @346 + 2
++ @347 + 3
++ @348 + 4
++ @349 + 5

CHAIN
IF ~~ THEN ACQEMERS 14
@350 = @351 DO ~AddexperienceParty(1200)GiveGoldForce(1500)~
==ACQEMERS IF ~PartyHasItem("ACQBOOK4")~ THEN @352 DO ~AddexperienceParty(1200)TakePartyItem("ACQBOOK4")~
==ACQEMERS IF ~Dead("ACQ10120")~ THEN @353 DO ~AddexperienceParty(1200)ReputationInc(1)~
==ACQEMERS IF ~Global("ACUMBWAKE","GLOBAL",2)~ THEN @354 DO ~AddexperienceParty(1200)~
==ACQEMERS @355 DO ~EraseJournalEntry(@10011)EraseJournalEntry(@10012)EraseJournalEntry(@10013)EraseJournalEntry(@10014)EraseJournalEntry(@10015)EraseJournalEntry(@10016)EraseJournalEntry(@10017)EraseJournalEntry(@10018)EraseJournalEntry(@10021)EraseJournalEntry(@10022)
AddJournalEntry(@10020,QUEST_DONE) EscapeAreaDestroy(10)~
EXIT

BEGIN ACQ10120
BEGIN ACQ10121
IF ~OR(3)!Dead("ACQ10120")See([ENEMY])!CombatCounter(0)~ THEN BEGIN 0
SAY @356
IF ~~ THEN EXIT
END

IF ~Dead("ACQ10120")!See([ENEMY])~ THEN BEGIN 1
SAY @357
IF ~~ THEN DO ~SetGlobal("ACQMINERSFREE","GLOBAL",1)~ EXIT
END

BEGIN ACQ10122
IF ~OR(3)!Dead("ACQ10120")See([ENEMY])!CombatCounter(0)~ THEN BEGIN 0
SAY @356
IF ~~ THEN EXIT
END

IF ~Dead("ACQ10120")!See([ENEMY])~ THEN BEGIN 1
SAY @357
IF ~~ THEN DO ~SetGlobal("ACQMINERSFREE","GLOBAL",1)~ EXIT
END

BEGIN ACQ10123
IF ~OR(3)!Dead("ACQ10120")See([ENEMY])!CombatCounter(0)~ THEN BEGIN 0
SAY @356
IF ~~ THEN EXIT
END

IF ~Dead("ACQ10120")!See([ENEMY])~ THEN BEGIN 1
SAY @357
IF ~~ THEN DO ~SetGlobal("ACQMINERSFREE","GLOBAL",1)~ EXIT
END

BEGIN ACQ10124
IF ~OR(3)!Dead("ACQ10120")See([ENEMY])!CombatCounter(0)~ THEN BEGIN 0
SAY @356
IF ~~ THEN EXIT
END

IF ~Dead("ACQ10120")!See([ENEMY])~ THEN BEGIN 1
SAY @357
IF ~~ THEN DO ~SetGlobal("ACQMINERSFREE","GLOBAL",1)~ EXIT
END

CHAIN
IF ~!Allegiance(Myself,ENEMY)~ THEN ACQ10120 0
@358
==ACQ10121 @359
==ACQ10122 @360
==ACQ10120 @361
==ACQ10123 @362
==ACQ10124 @363
==ACQ10120 @364 = @365 DO ~Enemy()~
EXIT

BEGIN ACUMBHUL
IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
SAY @366
IF ~~ THEN EXIT
END

BEGIN ACQ44055
BEGIN ACQ44054
BEGIN ACQ44053
BEGIN ACQ44052

BEGIN ACQ44051
IF ~Name("ACQ10111",MYSELF)NumTimesTalkedTo(0)Race(PLAYER1,DWARF)~ THEN BEGIN 0
SAY @367 = @368
++ @369 DO ~IncrementGlobal("ACTALKTOMUCH","LOCALS",1)~ + 2
++ @370 DO ~IncrementGlobal("ACTALKTOMUCH","LOCALS",1)~ + 3
++ @371 DO ~IncrementGlobal("ACTALKTOMUCH","LOCALS",1)~ + 4
++ @372 DO ~IncrementGlobal("ACTALKTOMUCH","LOCALS",1)~ + 5
END

IF ~Name("ACQ10111",MYSELF)NumTimesTalkedTo(0)!Race(PLAYER1,DWARF)~ THEN BEGIN 1
SAY @373 = @374
++ @369 DO ~IncrementGlobal("ACTALKTOMUCH","LOCALS",1)~ + 2
++ @370 DO ~IncrementGlobal("ACTALKTOMUCH","LOCALS",1)~ + 3
++ @371 DO ~IncrementGlobal("ACTALKTOMUCH","LOCALS",1)~ + 4
++ @372 DO ~IncrementGlobal("ACTALKTOMUCH","LOCALS",1)~ + 5
END

IF ~~ THEN BEGIN 2
SAY @375 = @376
IF ~GlobalLT("ACTALKTOMUCH","LOCALS",2)~ THEN REPLY @370 DO ~IncrementGlobal("ACTALKTOMUCH","LOCALS",1)~ + 3
IF ~GlobalLT("ACTALKTOMUCH","LOCALS",2)~ THEN REPLY @371 DO ~IncrementGlobal("ACTALKTOMUCH","LOCALS",1)~ + 4
IF ~GlobalLT("ACTALKTOMUCH","LOCALS",2)~ THEN REPLY @372 DO ~IncrementGlobal("ACTALKTOMUCH","LOCALS",1)~ + 5
IF ~GlobalGT("ACTALKTOMUCH","LOCALS",1)~ THEN GOTO 5a
END

IF ~~ THEN BEGIN 3
SAY @377
IF ~GlobalLT("ACTALKTOMUCH","LOCALS",2)~ THEN REPLY @369 DO ~IncrementGlobal("ACTALKTOMUCH","LOCALS",1)~ + 2
IF ~GlobalLT("ACTALKTOMUCH","LOCALS",2)~ THEN REPLY @371 DO ~IncrementGlobal("ACTALKTOMUCH","LOCALS",1)~ + 4
IF ~GlobalLT("ACTALKTOMUCH","LOCALS",2)~ THEN REPLY @372 DO ~IncrementGlobal("ACTALKTOMUCH","LOCALS",1)~ + 5
IF ~GlobalGT("ACTALKTOMUCH","LOCALS",1)~ THEN GOTO 5a
END

IF ~~ THEN BEGIN 4
SAY @378 = @379
IF ~GlobalLT("ACTALKTOMUCH","LOCALS",2)~ THEN REPLY @369 DO ~IncrementGlobal("ACTALKTOMUCH","LOCALS",1)~ + 2
IF ~GlobalLT("ACTALKTOMUCH","LOCALS",2)~ THEN REPLY @370 DO ~IncrementGlobal("ACTALKTOMUCH","LOCALS",1)~ + 3
IF ~GlobalLT("ACTALKTOMUCH","LOCALS",2)~ THEN REPLY @372 DO ~IncrementGlobal("ACTALKTOMUCH","LOCALS",1)~ + 5
IF ~GlobalGT("ACTALKTOMUCH","LOCALS",1)~ THEN GOTO 5a
END

IF ~~ THEN BEGIN 5
SAY @380
IF ~~ THEN GOTO 5b
END

IF ~~ THEN BEGIN 5a
SAY @381
IF ~~ THEN GOTO 5b
END

CHAIN
IF ~~ THEN ACQ44051 5b
@382 DO ~Enemy()~
== ACQ44055 @383 DO ~Enemy()~
== ACQ44054 @384 DO ~Enemy()~
== ACQ44053 @385 DO ~Enemy()~
== ACQ44052 @383 DO ~Enemy()~
== ACQ44051 @386 DO ~CreateCreature("ACQ10119",[217.591],5)CreateCreature("ACQ10119",[217.591],5)CreateCreature("ACQ10119",[217.591],5)CreateCreature("ACQ10119",[217.591],5)CreateCreature("ACQ10119",[217.591],5)CreateCreature("ACQ10119",[217.591],5)~
EXIT

CHAIN
IF ~NumTimesTalkedToGT(0)!Dead("ACQ10116")Global("ACQWOSTOK","GLOBAL",2)~ THEN ACQ10106 0a
@387 DO ~EraseJournalEntry(@3000008)~
==ACQ10106 IF ~!Race(LastTalkedToBy(),DWARF)~ THEN @388 DO ~SetGlobal("ACQSNAKEENEMY","GLOBAL",1)UseItem("potn10",Myself)Wait(1)DestroySelf()~
==ACQ10106 IF ~Race(LastTalkedToBy(),DWARF)~ THEN @389 DO ~SetGlobal("ACQSNAKEENEMY","GLOBAL",1)UseItem("potn10",Myself)Wait(1)DestroySelf()~
EXIT

CHAIN
IF ~NumTimesTalkedTo(0)!Dead("ACQ10116")Global("ACQWOSTOK","GLOBAL",2)~ THEN ACQ10106 0a
@390 DO ~EraseJournalEntry(@3000008)~
==ACQ10106 IF ~!InPartySlot(LastTalkedToBy(),0)~ THEN @391
==ACQ10106 IF ~InPartySlot(LastTalkedToBy(),0)~ THEN @392
==ACQ10106 IF ~!Race(LastTalkedToBy(),DWARF)~ THEN @388 DO ~SetGlobal("ACQSNAKEENEMY","GLOBAL",1)UseItem("potn10",Myself)Wait(1)DestroySelf()~
==ACQ10106 IF ~Race(LastTalkedToBy(),DWARF)~ THEN @389 DO ~SetGlobal("ACQSNAKEENEMY","GLOBAL",1)UseItem("potn10",Myself)Wait(1)DestroySelf()~
EXIT

BEGIN ACQ10127
IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
SAY @393
++ @394 + 1
++ @395 + 1
++ @396 + 1
++ @397 + 1
++ @398 + 1
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 0a
SAY @399
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1
SAY @400
++ @397 + 2
++ @398 + 3
++ @401 + 4
END

IF ~~ THEN BEGIN 2
SAY @402
++ @403 + 5
++ @398 + 3
++ @401 + 4
END

IF ~~ THEN BEGIN 3
SAY @404
++ @403 + 5
++ @397 + 2
++ @401 + 4
END

IF ~~ THEN BEGIN 4
SAY @405
++ @403 + 5
++ @397 + 2
++ @398 + 3
END

IF ~~ THEN BEGIN 5
SAY @406 = @407 = @408
IF ~~ THEN DO ~DestroyItem("MINHP1")~ EXIT
END