BEGIN ACQ17001
IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
SAY @0 = @1
++ @2 + 1
++ @3 + 1
++ @4 + 2
++ @5 + 3
++ @6 + 4
END

IF ~~ THEN BEGIN 1
SAY @7
IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 2
SAY @8
IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 3
SAY @9
IF ~~ THEN GOTO 6
END


IF ~~ THEN BEGIN 4
SAY @10
IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5
SAY @11
++ @12 + 7
++ @13 + 8
++ @14 + 9
END

IF ~~ THEN BEGIN 6
SAY @15
++ @16 + 7
++ @13 + 8
++ @14 + 9
END

IF ~~ THEN BEGIN 7
SAY @17
++ @18 + 10
++ @19 + 11
++ @20 + 12
END

IF ~~ THEN BEGIN 8
SAY @21
IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 9
SAY @22
++ @23 + 7
++ @24 + 9a
END

IF ~~ THEN BEGIN 9a
SAY @25
IF ~~ THEN DO ~EraseJournalEntry(@2000001) EraseJournalEntry(@2000002) AddJournalEntry(@2000004,QUEST_DONE) ActionOverride("ACQ17001",EscapeAreaDestroy(5))~ EXIT
END

IF ~~ THEN BEGIN 10
SAY @26
++ @27 + 13
++ @28 + 13a
++ @29 + 9a
END

IF ~~ THEN BEGIN 11
SAY @30
++ @31 + 11a
++ @32 + 10
END

IF ~~ THEN BEGIN 11a
SAY @33 = @34 = @35 = @36 = @37 = @38 = @39
++ @27 + 13
++ @28 + 14
++ @29 + 15
END

IF ~~ THEN BEGIN 12
SAY @40
++ @41 + 7
++ @24 + 9a
END

IF ~~ THEN BEGIN 13
SAY @42
IF ~~ THEN + 13a
END

IF ~~ THEN BEGIN 13a
SAY @43
++ @44 + 14
++ @45 + 15
++ @46 + 16
END

IF ~~ THEN BEGIN 14
SAY @47
IF ~~ THEN DO ~RevealAreaOnMap("%Ulcaster%") AddJournalEntry(@2000001,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 15
SAY @48
++ @49 + 14
++ @50 + 15
++ @46 + 16
END

IF ~~ THEN BEGIN 16
SAY @51
++ @49 + 14
++ @52 + 15
++ @53 + 9a
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 17
SAY @54
IF ~PartyHasItem("ACQBOOK2")~ THEN REPLY @55 DO ~ActionOverride("ACQ17001",TakePartyItem("ACQBOOK2"))~ + 18
++ @56 + 19
++ @57 + 20
END

IF ~~ THEN BEGIN 20
SAY @58 = @59
++ @60 + 9a
IF ~PartyHasItem("ACQBOOK2")~ THEN REPLY @61 DO ~ActionOverride("ACQ17001",TakePartyItem("ACQBOOK2"))~ + 18
++ @62 + 19
END

IF ~~ THEN BEGIN 19
SAY @63
IF ~~ THEN DO ~ActionOverride("ACQ17001",SetNumTimesTalkedTo(1))~ EXIT
END

IF ~~ THEN BEGIN 18
SAY @64 = @65 = @66 = @67 = @66 = @68
++ @69 + 21
++ @70 + 22
++ @71 + 23
END

IF ~~ THEN BEGIN 21
SAY @72
++ @73 + 24
++ @70 + 22
++ @71 + 23
END

IF ~~ THEN BEGIN 22
SAY @74
IF ~~ THEN DO ~EraseJournalEntry(@2000001) EraseJournalEntry(@2000002) AddJournalEntry(@2000005,QUEST_DONE)GiveGoldForce(300)ActionOverride("ACQ17001",EscapeAreaDestroy(5))~ EXIT
END

IF ~~ THEN BEGIN 23
SAY @74
IF ~~ THEN DO ~EraseJournalEntry(@2000001) EraseJournalEntry(@2000002) AddJournalEntry(@2000005,QUEST_DONE)GiveGoldForce(300)ActionOverride("ACQ17001",EscapeAreaDestroy(5))~ EXIT
END

IF ~~ THEN BEGIN 24
SAY @75
++ @76 + 25
++ @70 + 22
++ @71 + 23
END

IF ~~ THEN BEGIN 25
SAY @77
++ @78 + 26
++ @70 + 22
++ @71 + 23
END

IF ~~ THEN BEGIN 26
SAY @79
++ @80 + 27
++ @70 + 22
++ @71 + 23
END

IF ~~ THEN BEGIN 27
SAY @81
IF ~~ THEN DO ~AddJournalEntry(@2000003,QUEST)
SetGlobal("AC_QUEST_spawn_ACQ17001","GLOBAL",1)
//ActionOverride("ACQ17001",SetNumTimesTalkedTo(2))
//EscapeAreaMove("%LionsWay%",2470,1537,0)
ActionOverride("ACQ17001",EscapeAreaDestroy(5))~ EXIT
END

IF ~NumTimesTalkedToGT(1)~ THEN BEGIN 28
SAY @82
++ @83 + 29
++ @84 + 30
END

IF ~~ THEN BEGIN 29
SAY @85
IF ~~ THEN DO ~ClearAllActions()StartCutSceneMode()StartCutScene("ACQCUT03")~ EXIT
END

IF ~~ THEN BEGIN 30
SAY @86
IF ~~ THEN DO ~ActionOverride("ACQ17001",SetNumTimesTalkedTo(2))~ EXIT
END

BEGIN ACQ17003
IF ~TRUE()~ THEN BEGIN 0
SAY @87
++ @88 + 1
++ @89 + 1
++ @90 + 1
++ @91 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
SAY @92
++ @93 + 2
++ @94 + 3
++ @91 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
SAY @95
++ @96 + 4
++ @97 + 5
++ @91 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
SAY @98 = @99
++ @96 + 4
++ @97 + 5
++ @91 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
SAY @100
++ @101 + 6
++ @97 + 5
++ @91 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
SAY @102
IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 6
SAY @103
IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
SAY @104
++ @105 + 8
++ @106 + 8
++ @91 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 8
SAY @107 = @108 = @109
++ @110 + 9
++ @111 + 10
++ @91 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 9
SAY @112
++ @113 + 11
++ @114 + 10
++ @91 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 10
SAY @115 = @116
IF ~~ THEN DO ~EraseJournalEntry(@2000001)EraseJournalEntry(@2000002)EraseJournalEntry(@2000003)AddJournalEntry(@2000007,QUEST_DONE)GiveItem("ACQ17003",Player1)
ActionOverride("ACQ17003",ForceSpell(Myself,DRYAD_TELEPORT))
ActionOverride("ACQ17003",Wait(1))
ActionOverride("ACQ17003",DestroySelf())~ EXIT
END

IF ~~ THEN BEGIN 11
SAY @117
++ @118 + 12
++ @119 + 10
++ @91 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 12
SAY @120 = @121 = @122
++ @123 + 13
++ @119 + 10
++ @91 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 13
SAY @124
++ @125 + 14
++ @126 + 15
++ @127 + 16
++ @128 + 17
END

IF ~~ THEN BEGIN 14
SAY @129
IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 15
SAY @130
IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 16
SAY @131
IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 17
SAY @132
IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
SAY @133
IF ~~ THEN DO ~Kill(PLAYER1)~ EXIT
END

IF ~~ THEN BEGIN 18
SAY @134
++ @135 + 22
++ @136 + 21
++ @137 + 20
++ @138 + 23
END

IF ~~ THEN BEGIN 20
SAY @139
IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 21
SAY @140
IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 22
SAY @141
IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 23
SAY @142
IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 24
SAY @143
++ @144 + 25
++ @145 + 26
++ @146 + 27
++ @147 + 28
END

IF ~~ THEN BEGIN 25
SAY @148
IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 26
SAY @129
IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 27
SAY @149
IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 28
SAY @150
IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 29
SAY @151
IF ~~ THEN DO ~CreateCreatureDoor("ACQ17001",[2475.1547],0)CreateCreatureDoor("ACQ17002",[2470.1527],0)
ActionOverride("ACQ17003",ForceSpell(Myself,DRYAD_TELEPORT))
ActionOverride("ACQ17003",Wait(1))
ActionOverride("ACQ17003",DestroySelf())~ EXIT
END

BEGIN ACQ17002
IF ~~ THEN BEGIN 1
SAY @152
IF ~~ THEN EXTERN ACQ17001 31
END

IF ~~ THEN BEGIN 2
SAY @153
IF ~~ THEN EXTERN ACQ17001 31
END

IF ~~ THEN BEGIN 3
SAY @154
IF ~~ THEN EXTERN ACQ17001 31
END

IF ~~ THEN BEGIN 4
SAY @155
IF ~~ THEN EXTERN ACQ17001 31
END

CHAIN 
IF ~NumTimesTalkedTo(0)~ THEN ACQ17002 0
@156
==ACQ17001 @157
==ACQ17002 @158 = @159 = @160 = @161
END
++ @162 + 1
++ @163 + 2
++ @164 + 3
++ @165 + 4

CHAIN
IF ~~ THEN ACQ17001 31
@166
==ACQ17002 @167
==ACQ17001 @168
==ACQ17002 @169
==ACQ17001 @170
==ACQ17002 @171 DO ~ActionOverride("ACQ17002",EscapeAreaDestroy(5))~
==ACQ17001 @172 = @173 DO ~EraseJournalEntry(@2000001)EraseJournalEntry(@2000002)EraseJournalEntry(@2000003)AddJournalEntry(@2000008,QUEST_DONE)GiveGoldForce(300)GiveItemCreate("ACQ17003",PLAYER1,0,0,0)
ActionOverride("ACQ17001",EscapeAreaDestroy(5))~ 
EXIT