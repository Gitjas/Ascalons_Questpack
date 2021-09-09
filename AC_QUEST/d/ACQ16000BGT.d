/*
EXTEND_TOP %Thalantyr_Dialog% 35 #1
IF ~!Dead("ACQ16001")Global("ACQ16","GLOBAL",0)~ THEN REPLY @61 + AC0
IF ~!Dead("ACQ16001")Global("ACQ16","GLOBAL",3)~ THEN REPLY @62 + AC0a
IF ~!Dead("ACQ16001")Global("ACQ16","GLOBAL",1)~ THEN REPLY @63 + AC0b
IF ~PartyHasItem("ACQ16001")Global("ACQ16","GLOBAL",2)~ THEN REPLY @64 + AC15
IF ~PartyHasItem("ACQ16002")Global("ACQ16","GLOBAL",2)~ THEN REPLY @65 + AC16
IF ~PartyHasItem("ACQ16003")Global("ACQ16","GLOBAL",2)~ THEN REPLY @66 + AC17
IF ~PartyHasItem("MISC1I")Global("ACQ16","GLOBAL",2)~ THEN REPLY @67 + AC18
END
*/

/* new for v2.5: new reply options */
EXTEND_TOP %Thalantyr_Dialog% 35 #1
IF ~!Dead("ACQ16001")Global("ACQ16","GLOBAL",0)!Dead("ACQ16002")~ THEN REPLY @61 + AC0
IF ~!Dead("ACQ16001")Global("ACQ16","GLOBAL",0)Dead("ACQ16002")~ THEN REPLY @148 + AC0
IF ~!Dead("ACQ16001")Global("ACQ16","GLOBAL",3)~ THEN REPLY @62 + AC0a
IF ~!Dead("ACQ16001")Global("ACQ16","GLOBAL",1)~ THEN REPLY @63 + AC0b

IF ~PartyHasItem("ACQ16001")Global("ACQ16","GLOBAL",2)!Global("ACQ16_HelpWerewolf","LOCALS",1)~ THEN REPLY @64 + AC15

IF ~PartyHasItem("ACQ16002")
GlobalGT("ACQ16","GLOBAL",2)
!Global("ACQ16_HelpWerewolf","LOCALS",1)~ THEN REPLY @65 + AC16
IF ~PartyHasItem("ACQ16002")
OR(2) Global("ACQ16","GLOBAL",2) Global("ACQ16","GLOBAL",3)
Global("ACQ16_HelpWerewolf","LOCALS",1)~ THEN REPLY @160 + AC16
IF ~PartyHasItem("ACQ16002")
OR(2) Global("ACQ16","GLOBAL",2) Global("ACQ16","GLOBAL",3)
Global("ACQ16_HelpWerewolf","LOCALS",1)~ THEN REPLY @161 + AC21
IF ~Dead("ACQ16002")GlobalGT("ACQ16","GLOBAL",1) GlobalLT("ACQ16","GLOBAL",4)!Global("ACQ16","GLOBAL",11)~ THEN REPLY @167 + AC23

IF ~PartyHasItem("ACQ16003")Global("ACQ16","GLOBAL",2)!Global("ACQ16_HelpWerewolf","LOCALS",1)~ THEN REPLY @66 + AC17
IF ~PartyHasItem("MISC1I")Global("ACQ16","GLOBAL",2)!Global("ACQ16_HelpWerewolf","LOCALS",1)~ THEN REPLY @67 + AC18
END