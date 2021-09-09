BEGIN ACQ21001
IF ~Global("ACQ2SNAKESTART","GLOBAL",3)~ THEN BEGIN 0
SAY @0
++ @1 DO ~SetGlobal("ACQ2SNAKESTART","GLOBAL",4)~ + 1
++ @2 DO ~SetGlobal("ACQ2SNAKESTART","GLOBAL",4)~ + 2
++ @3 DO ~SetGlobal("ACQ2SNAKESTART","GLOBAL",4)~ + 3
++ @4 DO ~SetGlobal("ACQ2SNAKESTART","GLOBAL",4)~ + 3
END

IF ~~ THEN BEGIN 1
SAY @5
IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 2
SAY @6
IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3
SAY @7
IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
SAY @8
++ @9 + 5
++ @10 + 6
++ @11 + 7
++ @12 + 8
++ @13 + 9
++ @14 + 10
END

IF ~~ THEN BEGIN 5
SAY @15
++ @16 + 6
++ @11 + 7
++ @12 + 8
++ @13 + 9
++ @14 + 10
END

IF ~~ THEN BEGIN 6
SAY @17
++ @18 + 5
++ @11 + 7
++ @12 + 8
++ @13 + 9
++ @14 + 10
END

IF ~~ THEN BEGIN 7
SAY @19
++ @18 + 5
++ @16 + 6
++ @12 + 8
++ @13 + 9
++ @14 + 10
END

IF ~~ THEN BEGIN 8
SAY @20
IF ~~ THEN DO ~AddJournalEntry(@20023,QUEST)EscapeAreaMove("AR0406",475,1504,2)~ EXIT
END

IF ~~ THEN BEGIN 9
SAY @21
IF ~~ THEN DO ~AddJournalEntry(@20023,QUEST)EscapeAreaMove("AR0406",475,1504,2)~ EXIT
END

IF ~~ THEN BEGIN 10
SAY @22
IF ~~ THEN DO ~ClearAllActions()StartCutSceneMode()StartCutScene("ACQCUT04")~ EXIT
END




