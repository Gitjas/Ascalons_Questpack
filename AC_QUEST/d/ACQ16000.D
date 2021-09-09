BEGIN ACQ16001
IF ~Detect("ACQ16003")Detect([PC])!Global("ACQ16","GLOBAL",10)~ THEN BEGIN Final
SAY @0
IF ~~ THEN GOTO 30
END

IF ~!Dead("ACQ16002")Global("ACQ16","GLOBAL",0)~ THEN BEGIN 0
SAY @1
++ @2 + 1
++ @3 + 2
++ @4 + 3
++ @5 + 4
++ @6 + 5
END

IF ~!Dead("ACQ16002")NumTimesTalkedTo(1)Global("ACQ16","GLOBAL",0)~ THEN BEGIN 0a
SAY @7
++ @2 + 1
++ @3 + 2
++ @4 + 3
++ @5 + 4
++ @6 + 5
END

IF ~~ THEN BEGIN 1
SAY @8
++ @9 + 6
++ @10 + 2
++ @4 + 3
++ @5 + 4
++ @6 + 5
END

IF ~~ THEN BEGIN 2
SAY @11
++ @9 + 6
++ @4 + 3
++ @5 + 4
++ @6 + 5
END

IF ~~ THEN BEGIN 3
SAY @12
++ @2 + 1
++ @9 + 6
++ @10 + 2
++ @5 + 4
++ @6 + 5
END

IF ~~ THEN BEGIN 4
SAY @13
++ @9 + 6
++ @2 + 1
++ @3 + 2
++ @4 + 3
++ @6 + 5
END

IF ~~ THEN BEGIN 5
SAY @14
IF ~~ THEN DO ~ActionOverride("ACQ16001",SetNumTimesTalkedTo(1))~ EXIT
END

IF ~~ THEN BEGIN 6
SAY @15 = @16
++ @17 + 7
++ @18 + 8
++ @19 + 9
++ @20 + 5
++ @21 + 11
END

IF ~~ THEN BEGIN 7
SAY @22
IF ~Global("ACQ16_MoveWolfLocation","GLOBAL",0)~ THEN GOTO 12
IF ~Global("ACQ16_MoveWolfLocation","GLOBAL",1)~ THEN GOTO 36
END

IF ~~ THEN BEGIN 8
SAY @23
IF ~Global("ACQ16_MoveWolfLocation","GLOBAL",0)~ THEN GOTO 12
IF ~Global("ACQ16_MoveWolfLocation","GLOBAL",1)~ THEN GOTO 36
END

IF ~~ THEN BEGIN 9
SAY @24
IF ~Global("ACQ16_MoveWolfLocation","GLOBAL",0)~ THEN GOTO 12
IF ~Global("ACQ16_MoveWolfLocation","GLOBAL",1)~ THEN GOTO 36
END

IF ~~ THEN BEGIN 11
SAY @25
IF ~Global("ACQ16_MoveWolfLocation","GLOBAL",0)~ THEN GOTO 12
IF ~Global("ACQ16_MoveWolfLocation","GLOBAL",1)~ THEN GOTO 36
END

IF ~~ THEN BEGIN 12
SAY @26 
IF ~~ THEN + 35
END

IF ~~ THEN BEGIN 13
SAY @33
IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 14
SAY @34
IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 15
SAY @35
IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 16
SAY @36
IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
SAY @37
++ @38 + 18
++ @39 + 19
++ @40 + 20
END

IF ~~ THEN BEGIN 18
SAY @41
IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 19
SAY @42
IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 20
SAY @43
IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
SAY @44 = @45
IF ~Global("ACQ16_MoveWolfLocation","GLOBAL",1)~ THEN DO ~AddJournalEntry(@3000015,QUEST)SetGlobal("ACQ16","GLOBAL",1)~ EXIT
IF ~Global("ACQ16_MoveWolfLocation","GLOBAL",0)~ THEN DO ~AddJournalEntry(@10033,QUEST)SetGlobal("ACQ16","GLOBAL",1)~ EXIT
END

IF ~!Dead("ACQ16002")Global("ACQ16","GLOBAL",1)~ THEN BEGIN 22
SAY @46
IF ~~ THEN EXIT
END

IF ~!Dead("ACQ16002")Global("ACQ16","GLOBAL",2)!Global("ACQ16_ResetAiwell","MYAREA",1)~ THEN BEGIN 23
SAY @47
IF ~Global("ACQ16","LOCALS",0)~ THEN REPLY @48 DO ~ActionOverride("ACQ16001",SetGlobal("ACQ16","LOCALS",1))~ + 29
++ @49 + 24
++ @50 + 25
+ ~!Global("ACQ16_ResetAiwell","MYAREA",1)~ + @51 + 26
+ ~Global("ACQ16_ResetAiwell","MYAREA",1)~ + @51 + 33
END

IF ~~ THEN BEGIN 24
SAY @52
IF ~~ THEN EXIT
END

IF ~Dead("ACQ16002") PartyHasItem("ACQ16002")
Global("ACQ16_ResetQuest","GLOBAL",0)
OR(2) Global("ACQ16","GLOBAL",2) Global("ACQ16","GLOBAL",3)~ THEN BEGIN 25
SAY @53
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26
SAY @54
IF ~~ THEN EXIT
END

IF ~Dead("ACQ16002") Global("ACQ16","GLOBAL",0)~ THEN BEGIN 27
SAY @55
IF ~Global("ACQ16_MoveWolfLocation","GLOBAL",1)~ THEN DO ~ActionOverride("ACQ16001",EscapeAreaDestroy(5))~ UNSOLVED_JOURNAL @3000014 EXIT
IF ~Global("ACQ16_MoveWolfLocation","GLOBAL",0)~ THEN DO ~ActionOverride("ACQ16001",EscapeAreaDestroy(5))~ UNSOLVED_JOURNAL @10037 EXIT
END

IF ~Dead("ACQ16002") 
GlobalLT("ACQ16","GLOBAL",4) !Global("ACQ16","GLOBAL",0)
OR(3)
!PartyHasItem("ACQ16002")
Global("ACQ16","GLOBAL",1)
!Global("ACQ16_ResetQuest","GLOBAL",0)~ THEN BEGIN 27_1
SAY @55
IF ~~ THEN DO ~SetGlobal("ACQ16_ResetQuest","GLOBAL",3) ReputationInc(-1)ActionOverride("ACQ16001",EscapeAreaDestroy(5))~ EXIT
END

IF ~Dead("ACQ16002") 
GlobalGT("ACQ16","GLOBAL",3)~ THEN BEGIN 28
SAY @56
IF ~~ THEN DO ~EraseJournalEntry(@10041) AddJournalEntry(@10042,QUEST_DONE)ActionOverride("ACQ16001",EscapeAreaDestroy(10))~ EXIT
END

IF ~~ THEN BEGIN 29
SAY @57 = @58 = @59 = @58 = @60
IF ~~ THEN DO ~GiveItemCreate("ACQ16003",LastTalkedToBy(),0,0,0)~ EXIT
END

IF ~!Dead("ACQ16002")GlobalGT("ACQ16","GLOBAL",2)~ THEN BEGIN 31
SAY @146
IF ~~ THEN REPLY @147 + 34
++ @78 + 34
END

IF ~!Dead("ACQ16002")Global("ACQ16","GLOBAL",2)Global("ACQ16_ResetAiwell","MYAREA",1)~ THEN BEGIN 32
SAY @165
IF ~~ THEN DO ~SetGlobal("ACQ16_ResetAiwell","MYAREA",2)~ + 23
END

IF ~~ THEN BEGIN 33
SAY @166
IF ~~ THEN + 26
END

IF ~~ THEN BEGIN 34
SAY @168
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35
SAY @27
++ @28 + 13
++ @29 + 14
++ @30 + 15
++ @31 + 16
++ @32 + 16
END

IF ~~ THEN BEGIN 36
SAY @170
IF ~~ THEN + 35
END

/////////////////

//EXTEND_TOP %Thalantyr_Dialog% 1 #1
EXTEND_BOTTOM %Thalantyr_Dialog% 1
IF ~!Dead("ACQ16001")Global("ACQ16","GLOBAL",0)!Dead("ACQ16002")~ THEN REPLY @61 + AC0
IF ~!Dead("ACQ16001")Global("ACQ16","GLOBAL",0)Dead("ACQ16002")~ THEN REPLY @148 + AC0
IF ~!Dead("ACQ16001")Global("ACQ16","GLOBAL",3)~ THEN REPLY @62 + AC0a
IF ~!Dead("ACQ16001")Global("ACQ16","GLOBAL",1)!Dead("ACQ16002")~ THEN REPLY @63 + AC0b

IF ~OR(2)
PartyHasItem("ACQ16001")
PartyHasItem("misc6c")
Global("ACQ16","GLOBAL",2)!Global("ACQ16_HelpWerewolf","LOCALS",1)~ THEN REPLY @64 + AC15

IF ~PartyHasItem("ACQ16002")
GlobalGT("ACQ16","GLOBAL",0)
!Global("ACQ16_HelpWerewolf","LOCALS",1)~ THEN REPLY @65 + AC16
IF ~PartyHasItem("ACQ16002")
OR(2) Global("ACQ16","GLOBAL",2) Global("ACQ16","GLOBAL",3)
Global("ACQ16_HelpWerewolf","LOCALS",1)~ THEN REPLY @160 + AC16
IF ~Global("ACQ16_ResetQuest","GLOBAL",0)
PartyHasItem("ACQ16002")
OR(2) Global("ACQ16","GLOBAL",2) Global("ACQ16","GLOBAL",3)
Global("ACQ16_HelpWerewolf","LOCALS",1)~ THEN REPLY @161 + AC21
IF ~Dead("ACQ16002") !PartyHasItem("ACQ16002")
GlobalGT("ACQ16","GLOBAL",1) GlobalLT("ACQ16","GLOBAL",4)!Global("ACQ16","GLOBAL",11)~ THEN REPLY @167 + AC23

IF ~PartyHasItem("ACQ16003")Global("ACQ16","GLOBAL",2)!Global("ACQ16_HelpWerewolf","LOCALS",1)~ THEN REPLY @66 + AC17
IF ~OR(2)
PartyHasItem("MISC1I")
PartyHasItem("bdbellad")
Global("ACQ16","GLOBAL",2)!Global("ACQ16_HelpWerewolf","LOCALS",1)~ THEN REPLY @67 + AC18
END

//EXTEND_TOP %Thalantyr_Dialog% 2 #1
EXTEND_BOTTOM %Thalantyr_Dialog% 2
IF ~!Dead("ACQ16001")Global("ACQ16","GLOBAL",0)~ THEN REPLY @61 + AC0
IF ~!Dead("ACQ16001")Global("ACQ16","GLOBAL",3)~ THEN REPLY @62 + AC0a
IF ~!Dead("ACQ16001")Global("ACQ16","GLOBAL",1)~ THEN REPLY @63 + AC0b
END

APPEND %Thalantyr_Dialog%
IF ~~ THEN BEGIN AC0
SAY @68
+ ~!Dead("ACQ16002")~ + @69 + AC1
+ ~!Dead("ACQ16002")~ + @70 + AC2

+ ~Dead("ACQ16002")~ + @149 + AC2

++ @71 + AC3
END

IF ~~ THEN BEGIN AC0a
SAY @72
++ @73 + AC11A
++ @74 + AC11B
++ @75 + AC11C
++ @76 + AC12
++ @77 + AC13
++ @78 + AC14
END

IF ~~ THEN BEGIN AC0b
SAY @79 = @80
++ @73 + AC11A
++ @74 + AC11B
++ @75 + AC11C
++ @76 + AC12
++ @77 + AC13
++ @78 + AC14
END

IF ~~ THEN BEGIN AC1
SAY @81
IF ~Global("ACQ16_MoveWolfLocation","GLOBAL",0)~ THEN GOTO AC4
IF ~Global("ACQ16_MoveWolfLocation","GLOBAL",1)~ THEN GOTO AC4_B
END

IF ~~ THEN BEGIN AC2
SAY @82
IF ~Global("ACQ16_MoveWolfLocation","GLOBAL",0)~ THEN GOTO AC4
IF ~Global("ACQ16_MoveWolfLocation","GLOBAL",1)~ THEN GOTO AC4_B
END

IF ~~ THEN BEGIN AC3
SAY @83
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN AC4
SAY @84 
IF ~~ THEN + AC4_C
END

IF ~~ THEN BEGIN AC4_B
SAY @171
IF ~~ THEN + AC4_C
END

IF ~~ THEN BEGIN AC4_C
SAY @85 = @86
+ ~!Dead("ACQ16002")~ + @87 + AC5
+ ~Dead("ACQ16002")~ + @150 + AC9_1
++ @88 + AC6
++ @89 + AC7
END

IF ~~ THEN BEGIN AC5
SAY @90
++ @91 + AC8
++ @92 + AC6
END

IF ~~ THEN BEGIN AC6
SAY @93
++ @94 + AC9
+ ~!Dead("ACQ16002")~ + @95 + AC5
+ ~Dead("ACQ16002")~ + @151 + AC9_1
END

IF ~~ THEN BEGIN AC7
SAY @96
IF ~~ THEN GOTO AC10
END

IF ~~ THEN BEGIN AC8
SAY @97
IF ~~ THEN GOTO AC10
END

IF ~~ THEN BEGIN AC9
SAY @98
IF ~~ THEN GOTO AC10
END

IF ~~ THEN BEGIN AC9_1
SAY @154
IF ~~ THEN GOTO AC10
END

IF ~~ THEN BEGIN AC10
SAY @99 = @100
++ @101 + AC11
+ ~!Dead("ACQ16002")~ + @102 + AC12
//++ @77 + AC13

+ ~Dead("ACQ16002") PartyHasItem("ACQ16002")~ + @152 + AC16
+ ~Dead("ACQ16002") !PartyHasItem("ACQ16002")~ + @153 + AC14_1
++ @78 + AC14
END

IF ~~ THEN BEGIN AC11
SAY @103 = @104 = @105 = @106
++ @73 + AC11A
++ @74 + AC11B
++ @75 + AC11C
++ @76 + AC12
+ ~!Dead("ACQ16002")~ + @77 + AC13
+ ~Dead("ACQ16002")~ + @155 + AC19
++ @78 + AC14
END

IF ~~ THEN BEGIN AC11A
SAY @107
++ @74 + AC11B
++ @75 + AC11C
++ @76 + AC12
+ ~!Dead("ACQ16002")~ + @77 + AC13
+ ~Dead("ACQ16002")~ + @155 + AC19
++ @78 + AC14
END

IF ~~ THEN BEGIN AC11B
SAY @108
++ @73 + AC11A
++ @75 + AC11C
++ @76 + AC12
+ ~!Dead("ACQ16002")~ + @77 + AC13
+ ~Dead("ACQ16002")~ + @155 + AC19
++ @78 + AC14
END

IF ~~ THEN BEGIN AC11C
SAY @109
++ @74 + AC11B
++ @73 + AC11A
++ @76 + AC12
+ ~!Dead("ACQ16002")~ + @77 + AC13
+ ~Dead("ACQ16002")~ + @155 + AC19
++ @78 + AC14
END

IF ~~ THEN BEGIN AC12
SAY @110
++ @111 + AC11
+ ~!Dead("ACQ16002")~ + @77 + AC13

+ ~Dead("ACQ16002") PartyHasItem("ACQ16002")~ + @152 + AC16
+ ~Dead("ACQ16002") !PartyHasItem("ACQ16002")~ + @153 + AC14_1

++ @78 + AC14
END

IF ~~ THEN BEGIN AC13
SAY @112
IF ~~ THEN DO ~AddJournalEntry(@10034,QUEST)SetGlobal("ACQ16","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN AC14
SAY @113
IF ~~ THEN DO ~SetGlobal("ACQ16","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN AC14_1
SAY @113
IF ~~ THEN DO ~SetGlobal("ACQ16","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN AC15
SAY @114
IF ~~ THEN DO ~AddexperienceParty(300)EraseJournalEntry(@10033)EraseJournalEntry(@10034)EraseJournalEntry(@10037)
EraseJournalEntry(@3000014)EraseJournalEntry(@3000015)
SetGlobal("ACQ16","GLOBAL",4)AddJournalEntry(@10038,QUEST)
ActionOverride("Thalantyr",TakePartyItem("ACQ16001"))
ClearAllActions()StartCutSceneMode()StartCutScene("ACQ161")~ EXIT
IF ~!PartyHasItem("ACQ16001") PartyHasItem("misc6c")~ THEN DO ~AddexperienceParty(300)EraseJournalEntry(@10033)EraseJournalEntry(@10034)EraseJournalEntry(@10037)
EraseJournalEntry(@3000014)EraseJournalEntry(@3000015)
SetGlobal("ACQ16","GLOBAL",4)AddJournalEntry(@10038,QUEST)
ActionOverride("Thalantyr",TakePartyItemNum("misc6c",1))
ClearAllActions()StartCutSceneMode()StartCutScene("ACQ161")~ EXIT
END

IF ~~ THEN BEGIN AC16
SAY @115 = @116
IF ~~ THEN DO ~AddexperienceParty(300)EraseJournalEntry(@10033)EraseJournalEntry(@10034)EraseJournalEntry(@10037)EraseJournalEntry(@10042)
EraseJournalEntry(@3000014)EraseJournalEntry(@3000015)
SetGlobal("ACQ16","GLOBAL",6)AddJournalEntry(@10035,QUEST_DONE)
ActionOverride("Thalantyr",TakePartyItem("ACQ16002"))
ActionOverride("Thalantyr",DestroyItem("ACQ16002"))
GiveItemCreate("AC1H53",LastTalkedToBy(),0,0,0)~ EXIT
END

IF ~~ THEN BEGIN AC17
SAY @117
IF ~~ THEN DO ~AddexperienceParty(150)EraseJournalEntry(@10033)EraseJournalEntry(@10034)EraseJournalEntry(@10037)
EraseJournalEntry(@3000014)EraseJournalEntry(@3000015)
SetGlobal("ACQ16","GLOBAL",4)AddJournalEntry(@10039,QUEST)
ActionOverride("Thalantyr",TakePartyItem("ACQ16003"))
ClearAllActions()StartCutSceneMode()StartCutScene("ACQ163")~ EXIT
END

IF ~~ THEN BEGIN AC18
SAY @118
IF ~~ THEN DO ~AddexperienceParty(450)EraseJournalEntry(@10033)EraseJournalEntry(@10034)EraseJournalEntry(@10037)
EraseJournalEntry(@3000014)EraseJournalEntry(@3000015)
SetGlobal("ACQ16","GLOBAL",4)AddJournalEntry(@10040,QUEST)
ActionOverride("Thalantyr",TakePartyItemNum("MISC1I",1)) 
ClearAllActions()StartCutSceneMode()StartCutScene("ACQ164")~ EXIT
IF ~!PartyHasItem("MISC1I") PartyHasItem("bdbellad")~ THEN DO ~AddexperienceParty(450)EraseJournalEntry(@10033)EraseJournalEntry(@10034)EraseJournalEntry(@10037)
EraseJournalEntry(@3000014)EraseJournalEntry(@3000015)
SetGlobal("ACQ16","GLOBAL",4)AddJournalEntry(@10040,QUEST)
ActionOverride("Thalantyr",TakePartyItemNum("bdbellad",1)) 
ClearAllActions()StartCutSceneMode()StartCutScene("ACQ164")~ EXIT
END

IF ~~ THEN BEGIN AC19
SAY @156
+ ~PartyHasItem("ACQ16002")~ + @157 + AC20
+ ~!PartyHasItem("ACQ16002")~ + @158 DO ~SetGlobal("ACQ16_HelpWerewolf","LOCALS",1)~ + AC14_1
END

IF ~~ THEN BEGIN AC20
SAY @164
IF ~~ THEN DO ~EraseJournalEntry(@10037) SetGlobal("ACQ16","GLOBAL",2) ActionOverride("Thalantyr",SetGlobal("ACQ16_HelpWerewolf","LOCALS",2)) AddJournalEntry(@10034,QUEST)
ActionOverride("Thalantyr",TakePartyItem("ACQ16002"))
ActionOverride("Thalantyr",DestroyItem("ACQ16002"))
SetGlobal("ACQ16_ResetQuest","GLOBAL",1) 
SetGlobal("SPRITE_IS_DEADACQ16001","GLOBAL",0)
SetGlobal("SPRITE_IS_DEADACQ16002","GLOBAL",0)
ClearAllActions() StartCutSceneMode() StartCutScene("ACQCUT05")~ EXIT
END

IF ~~ THEN BEGIN AC21
SAY @162
IF ~~ THEN + AC20
END

IF WEIGHT #-1
~Global("ACQ16_HelpWerewolf","LOCALS",2)~ THEN BEGIN AC22
SAY @163 = @159
IF ~~ THEN DO ~ActionOverride("Thalantyr",SetGlobal("ACQ16_HelpWerewolf","LOCALS",3))~ EXIT
END

IF ~~ THEN BEGIN AC23
SAY @169
IF ~~ THEN DO ~SetGlobal("ACQ16","GLOBAL",11)EraseJournalEntry(@10034)EraseJournalEntry(@10037)EraseJournalEntry(@10041)~ SOLVED_JOURNAL @10043 EXIT
END

END

BEGIN ACQ16002
IF ~NumTimesTalkedTo(0)Detect([PC])Allegiance(Myself,NEUTRAL)~ THEN BEGIN 0
SAY @119
IF ~OR(3)PartyHasItem("ACQ16004")PartyHasItem("ACQ16005")PartyHasItem("ACQ16006")~ THEN REPLY @120 DO ~ActionOverride("ACQ16002",Enemy())~ + 1
IF ~!PartyHasItem("ACQ16004")!PartyHasItem("ACQ16005")!PartyHasItem("ACQ16006")~ THEN REPLY @120 DO ~ActionOverride("ACQ16002",SetNumTimesTalkedTo(0))ActionOverride("ACQ16002",Enemy())~ + 1
++ @121 DO ~ActionOverride("ACQ16002",SetNumTimesTalkedTo(0))~ + 1a
IF ~PartyHasItem("ACQ16004")~ THEN REPLY @122 DO ~ActionOverride("ACQ16002",TakePartyItem("ACQ16004"))
ActionOverride("ACQ16002",DestroyItem("ACQ16004"))~ + 2
IF ~PartyHasItem("ACQ16005")~ THEN REPLY @122 DO ~ActionOverride("ACQ16002",TakePartyItem("ACQ16005"))
ActionOverride("ACQ16002",DestroyItem("ACQ16005"))~ + 3
IF ~PartyHasItem("ACQ16006")~ THEN REPLY @122 DO ~ActionOverride("ACQ16002",TakePartyItem("ACQ16006"))
ActionOverride("ACQ16002",DestroyItem("ACQ16006"))~ + 4
END

IF ~NumTimesTalkedTo(0)Detect([PC])!Allegiance(Myself,NEUTRAL)OR(3)PartyHasItem("ACQ16004")PartyHasItem("ACQ16005")PartyHasItem("ACQ16006")~ THEN BEGIN 0a
SAY @119
++ @120 DO ~ActionOverride("ACQ16002",Enemy())~ + 1
++ @121 DO ~ActionOverride("ACQ16002",SetNumTimesTalkedTo(0))~ + 1a
IF ~PartyHasItem("ACQ16004")~ THEN REPLY @122 DO ~ActionOverride("ACQ16002",TakePartyItem("ACQ16004"))
ActionOverride("ACQ16002",DestroyItem("ACQ16004"))~ + 2
IF ~PartyHasItem("ACQ16005")~ THEN REPLY @122 DO ~ActionOverride("ACQ16002",TakePartyItem("ACQ16005"))
ActionOverride("ACQ16002",DestroyItem("ACQ16005"))~ + 3
IF ~PartyHasItem("ACQ16006")~ THEN REPLY @122 DO ~ActionOverride("ACQ16002",TakePartyItem("ACQ16006"))
ActionOverride("ACQ16002",DestroyItem("ACQ16006"))~ + 4
END

IF ~~ THEN BEGIN 1
SAY @123
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1a
SAY @124
IF ~Global("ACQ16_MoveWolfLocation","GLOBAL",0)~ THEN DO ~ActionOverride(Player1,LeaveAreaLUA("%HighHedge%","",[1663.1731],4))
	ActionOverride(Player2,LeaveAreaLUA("%HighHedge%","",[1593.1680],4))
	ActionOverride(Player3,LeaveAreaLUA("%HighHedge%","",[1707.1649],4))
	ActionOverride(Player4,LeaveAreaLUA("%HighHedge%","",[1640.1612],4))
	ActionOverride(Player5,LeaveAreaLUA("%HighHedge%","",[1726.1616],4))
	ActionOverride(Player6,LeaveAreaLUA("%HighHedge%","",[1651.1591],4))
	~ EXIT
IF ~Global("ACQ16_MoveWolfLocation","GLOBAL",1)~ THEN DO ~ActionOverride(Player1,LeaveAreaLUA("%Beregost%","",[924.3336],12))
	ActionOverride(Player2,LeaveAreaLUA("%Beregost%","",[970.3280],12))
	ActionOverride(Player3,LeaveAreaLUA("%Beregost%","",[864.3312],12))
	ActionOverride(Player4,LeaveAreaLUA("%Beregost%","",[902.3276],12))
	ActionOverride(Player5,LeaveAreaLUA("%Beregost%","",[884.3305],12))
	ActionOverride(Player6,LeaveAreaLUA("%Beregost%","",[886.3260],12))~ EXIT
END

IF ~~ THEN BEGIN 2
SAY @125 = @126
IF ~RandomNumGT(10,1)~ THEN DO ~EraseJournalEntry(@10038)EraseJournalEntry(@10039)EraseJournalEntry(@10040)
//ClearAllActions()
//CreateCreature("ACVIRGI",[10.10],0)
//StartCutSceneMode()
//StartCutScene("ACQ162") 
~ + 5
IF ~RandomNumLT(10,2)~ THEN GOTO 6
END

IF ~~ THEN BEGIN 3
SAY @125 = @126
IF ~RandomNumGT(10,5)~ THEN DO ~EraseJournalEntry(@10038)EraseJournalEntry(@10039)EraseJournalEntry(@10040)
//ClearAllActions()
//CreateCreature("ACVIRGI",[10.10],0)
//StartCutSceneMode()
//StartCutScene("ACQ162") 
~ + 5
IF ~RandomNumLT(10,6)~ THEN GOTO 6
END

IF ~~ THEN BEGIN 4
SAY @125 = @126
IF ~RandomNumGT(10,1)~ THEN GOTO 6
IF ~RandomNumLT(10,2)~ THEN DO ~EraseJournalEntry(@10038)EraseJournalEntry(@10039)EraseJournalEntry(@10040)
//ClearAllActions()
//CreateCreature("ACVIRGI",[10.10],0)
//StartCutSceneMode()
//StartCutScene("ACQ162")
~ + 5
END

IF ~~ THEN BEGIN 5
SAY @127
IF ~~ THEN DO ~ClearAllActions()
CreateCreature("ACVIRGI",[10.10],0)
StartCutSceneMode()
StartCutScene("ACQ162")~ EXIT
END

IF ~~ THEN BEGIN 6
SAY @128
IF ~~ THEN DO ~EraseJournalEntry(@10038)EraseJournalEntry(@10039)EraseJournalEntry(@10040)
ActionOverride("ACQ16002",Enemy())~ UNSOLVED_JOURNAL @10041 EXIT
END

BEGIN ACQ16003
IF ~Allegiance(Myself,NEUTRAL)~ THEN BEGIN 0
SAY @129
++ @130 + 1
++ @131 + 2
++ @132 + 3
++ @133 + 4
++ @134 + 5
END

IF ~~ THEN BEGIN 1
SAY @135
IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 2
SAY @136
IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 3
SAY @137
IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 4
SAY @138
IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5
SAY @139
IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
SAY @140
IF ~~ THEN DO ~SetGlobal("ACQ16_TonderWithAiwell","GLOBAL",1) ActionOverride("ACQ16003",EscapeAreaDestroy(5))~ EXIT
END

CHAIN
IF ~~ THEN ACQ16001 30
@141
==ACQ16003 @142
==ACQ16001 @143 DO ~ActionOverride("ACQ16001",EscapeAreaDestroy(5))~
==ACQ16003 @144 = @145 DO ~AddexperienceParty(450)AddJournalEntry(@10036,QUEST_DONE)SetGlobal("ACQ16","GLOBAL",10)
ActionOverride("ACQ16003",EscapeAreaDestroy(5))~
EXIT