BEGIN ACQ21002 //Gorgar Blaurock
APPEND ACQ21001 //Baldar Goldbart

IF ~Global("ACQ2SNAKESTART","GLOBAL",5)~ THEN coppercoronet
SAY@100 /* ~[Baldar Goldbart]Look, Gorgar, <PRO_HIMHER> is here.~ */
IF ~~ THEN EXTERN ACQ21002 gorgar_01
END
END //APPEND

CHAIN
IF ~Global("ACQ2SNAKESTART","GLOBAL",5)~ THEN ACQ21002 gorgar_01
@101 /* ~[Gorgar Blaurock]Greetings, <CHARNAME>, and thank you for following our call. We do not mean to trouble you in any way. We are friends of Wostok Hammerhead.~ */
== ACQ21001 @102 /* ~[Baldar Goldbart]Very good friends of Wostok.~ */
== ACQ21002 @103 /* ~[Gorgar Blaurock]Don't be alarmed that we found you here - the explotion at the promenade draw a lot of attention. We recognized you amongst the ones that emerged from the rubble and decided it is time to approach you.~ */
== ACQ21002 @104 /* ~[Gorgar Blaurock]You had the kindness to see to Wostok's remains being transferred to us.~ */
== ACQ21001 @105 /* ~[Baldar Goldbart]Our hero friend who clearly fell by a blade which is the greatest honor to die for a dwarf.~ */
END
++ @106 /* ~Wostok! Yes, I remember him. I helped him against this evil dwarven cult.~ */ + gorgar_02
++ @120 /* ~Why didn't you say so when approaching me? I wouldn't have been so suspicious of you.~ */ + gorgar_11
+ ~Global("C#IM_ImoenStays","GLOBAL",0)~ + @133 /* ~You saw me? Do you know what happened to my friend Imoen?~ */ + gorgar_03
+ ~GlobalGT("C#IM_ImoenStays","GLOBAL",0)~ + @134 /* ~You saw me? Do you know what happened to this mage Irenicus?~ */ + gorgar_03
++ @107 /* ~I don't have much time. Get to the point.~ */ + gorgar_04

APPEND ACQ21002 
IF ~~ THEN gorgar_02
SAY @108 /* ~[Gorgar Blaurock]The Serpents of Abbathor, correct.~ */
++ @120 /* ~Why didn't you say so when approaching me? I wouldn't have been so suspicious of you.~ */ + gorgar_11
+ ~Global("C#IM_ImoenStays","GLOBAL",0)~ + @133 /* ~You saw me? Do you know what happened to my friend Imoen?~ */ + gorgar_03
+ ~GlobalGT("C#IM_ImoenStays","GLOBAL",0)~ + @134 /* ~You saw me? Do you know what happened to this mage Irenicus?~ */ + gorgar_03
++ @107 /* ~I don't have much time. Get to the point.~ */ + gorgar_04
END

IF ~~ THEN gorgar_03
SAY @109 /* ~[Gorgar Blaurock]Unfortunately, we could only witness the scene of you being part of a conflict with the Coweld Wizards. We do not know anything further.~ */
IF ~~ THEN + gorgar_04
END

END //APPEND

CHAIN
IF ~~ THEN ACQ21002 gorgar_04
@110 /* ~[Gorgar Blaurock]Thanks to your efforts against the Serpents of Abbathor, the cult was weakened significantly.~ */
== ACQ21002 IF ~Global("ACQBROUGHTJOURNALTEMPLE","GLOBAL",1)~ THEN @111 /* ~[Gorgar Blaurock]The journal of the cult leader responsible for taking the Nashkel mines you also sent to us helped us a lot to track his followers here in Amn.~ */
== ACQ21001 @112 /* ~[Baldar Goldbart]We gave the rest of them hell here in Amn. There is hardly any of them *cultists* left. That they were seen as rivals by the Shadow Thieves didn't help them, either, tehehehe.~ */
== ACQ21002 IF ~Global("ACQSGUNDMAGTOR","GLOBAL",1)~ THEN @113 /* ~[Gorgar Blaurock]You were also thoughtful enough of having the Gundmagtor being delivered to us.~ */
== ACQ21002 IF ~Global("ACQSGUNDMAGTOR","GLOBAL",2)~ THEN @114 /* ~[Gorgar Blaurock]You were also thoughtful enough of having the Gundmagtor being destroyed.~ */
== ACQ21002 @115 /* ~[Gorgar Blaurock]That evil artefact is now gone and will no longer endanger the spirits of our ancestors. We are in your debt, <CHARNAME>, and therefore wanted to express our gratitude - also in the name of our friend, Wostok.~ */
== ACQ21001 @116 /* ~[Baldar Goldbart]Our very good friend.~ */
== ACQ21002 @117 /* ~[Gorgar Blaurock]That is why we decided that you should have this. It was taken from him by Serpents when he fell in Nashkel, but we traced it down in the hands of our enemies and reworked it. We think that Wostok would like you to have his hammer.~ */
END
++ @118 /* ~That's a great honor. Thank you, and thank you for taking the time to bring it to me.~ */ EXTERN ACQ21001 baldar_01
++ @119 /* ~That is too much. I don't think I am worthy to hold Wostok's hammer.~ */ + gorgar_05
++ @136 /* ~Fine, I'll take the hammer.~ */ + gorgar_07
++ @121 /* ~I need to gather a lot of gold. Can you help me with that, too?~ */ + gorgar_06

APPEND ACQ21002 
IF ~~ THEN gorgar_05
SAY @122 /* ~[Gorgar Blaurock]Balderdash! We know Wostok would like the thought of you having it, <CHARNAME>. In his last report, he mentioned you as someone trustworthy, which is a high praise coming from him, and we can only assume how selflessly you helped him in the mines.~ */
IF ~~ THEN EXTERN ACQ21001 baldar_01
END

IF ~~ THEN gorgar_06
SAY @123 /* ~[Gorgar Blaurock]Unfortunately, our resources aren't that great. Wostok's hammer is all we can offer, and it comes from our hearts. We wish you the best for your coming endevours, <CHARNAME>.~ */
IF ~~ THEN + gorgar_07
END
END //APPEND


APPEND ACQ21001 
IF ~~ THEN baldar_01
SAY @124 /* ~[Baldar Goldbart]Told ye <PRO_HESHE> is humble.~ */
IF ~~ THEN EXTERN ACQ21002 gorgar_07
END
END //APPEND

CHAIN
IF ~~ THEN ACQ21002 gorgar_07
@125 /* ~[Gorgar Blaurock]We have only one plea.~ */
== ACQ21001 @126 /* ~[Baldar Goldbart]Never forget our Wostok!~ */
== ACQ21002 @127 /* ~[Gorgar Blaurock]Yes - when wielding this hammer, tell everyone who is noticing it the story of Wostok, the brave dwarven warrior and priest of Moradin who fell against the Serpents of Abbathor. This is the service we would ask of you, in honor to our fallen friend.~ */
END
++ @128 /* ~Of course. I thank you for honoring me with his hammer.~ */ + gorgar_10
++ @129 /* ~Fine, I can do that.~ */ + gorgar_09
++ @130 /* ~I'll take the hammer, but I'm not a bard. You want his tale spread you'll have to do it yourself.~ */ + gorgar_08

APPEND ACQ21002 
IF ~~ THEN gorgar_08
SAY @131 /* ~[Gorgar Blaurock]We do not expect you to tell any stories. Just tell whoever is interested in this hammer who it is from.~ */
IF ~~ THEN + gorgar_09
END

IF ~~ THEN gorgar_09
SAY @132 /* ~[Gorgar Blaurock]This is all we would ask of you.~ */
IF ~~ THEN + gorgar_10
END

IF ~~ THEN gorgar_10
SAY @135 /* ~[Gorgar Blaurock]Farewell, <CHARNAME>. Moradin be with you.~ */
IF ~~ THEN DO ~GiveItem("acq10128",Player1) EraseJournalEntry(@3000080) SetGlobal("ACQ2SNAKESTART","GLOBAL",6)~ SOLVED_JOURNAL @3000081 EXIT
END

IF ~~ THEN gorgar_11
SAY @137 /* ~[Gorgar Blaurock]We didn't want our names to spread any further than they already had. We do not trust the people here.~ */
IF ~~ THEN + gorgar_04
END
END //APPEND

/* update the weapon with Cromwell.
ACQ10128 -> ACQ1128A
SCRL6M: Enchanted Weapon
SCRLA5: Melf's Minute Meteors
MISC42: Diamond
6,500 gold
*/
EXTEND_BOTTOM WSMITH01 13
IF ~PartyHasItem("acq10128")~ THEN + upgrade_cromwell
END

APPEND WSMITH01
IF ~~ THEN upgrade_cromwell
SAY @138 /* ~[Cromwell]Hmm, this hammer is a dwarven one, no doubt. It is very conveniently shaped - I could enchant it so it returns to your hand when thrown. I would need a scroll of Enchanted Weapon, a scroll of Melf's Minute Meteors, and a Diamond.~  */
 IF ~PartyHasItem("SCRL6M") //Enchanted Weapon
     PartyHasItem("SCRLA5") //Melf's Minute Meteors
     PartyHasItem("MISC42")~ THEN + allthere
 IF ~OR(3)
	!PartyHasItem("SCRL6M") //Enchanted Weapon
	!PartyHasItem("SCRLA5") //Melf's Minute Meteors
	!PartyHasItem("MISC42")~ THEN + itemsmissing
END

IF ~~ THEN allthere
SAY @139 /* ~[Cromwell]Aye, I see all I'd need on you to make the hammer throwable.~ */
++ @140 /* ~This is the hammer of Wostok, dwarven warrior and priest of Moradin, who died while fighting the Serpents of Abbathor.~ */ DO ~SetGlobal("ACQ_5000","MYAREA",1)~ + mentioned_wostok
++ @141 /* ~What would that take?~ */ + HowMuch
++ @142 /* ~No, I'm not interested. Is there anything else you can use?~ */ + MovingRightAlong
END

IF ~~ THEN mentioned_wostok
SAY @144 /* ~[Cromwell]Ye're doing Wostok honor by mentioning his bravery, kid. Know what, I wanted to charge ye 6,500 gold for it, but seeing how ye do right by the dwarf I'll reduce it to 5,000 for ye.~ */
++ @145 /* ~You shouldn't. It's my duty - and honor - to remind the world of Wostok as long as I am deemed suitable to wield his hammer.~ */ + mentioned_wostok_01
++ @143 /* ~That's great! Thank you.~ */ + howlong
END

IF ~~ THEN mentioned_wostok_01
SAY @146 /* ~[Cromwell]Ah, but that's the exact humble respect that made me lower the fee, <PRO_GIRLBOY>. 5,000 it is.~ */
IF ~~ THEN + howlong
END

IF ~~ THEN HowMuch
SAY @147 /* ~[Cromwell]It'll cost ye 6,500 gold.~ */
IF ~~ THEN + howlong
END

IF ~~ THEN howlong
SAY @148 /* ~[Cromwell]Without me apprentice, ye'll need to stay a day and help me run the forge.~ */
 IF ~PartyGoldGT(6499)
Global("ACQ_5000","MYAREA",0)~ THEN DO ~SetGlobal("ACQSMAKEHAMMERTHROWABLE","MYAREA",1)
                                 TakePartyGold(6500)
                                 DestroyGold(6500)~ REPLY @149 /* ~Yes, let's do it.~ */ GOTO 56
 IF ~PartyGoldGT(4999)
Global("ACQ_5000","MYAREA",1)~ THEN DO ~SetGlobal("ACQSMAKEHAMMERTHROWABLE","MYAREA",1)
                                 TakePartyGold(5000)
                                 DestroyGold(5000)~ REPLY @149 /* ~Yes, let's do it.~ */ GOTO 56
++ @142 /* ~No, I'm not interested. Is there anything else you can use?~ */ + MovingRightAlong
END

IF ~~ THEN BEGIN itemsmissing
SAY @150 /* ~[Cromwell]Bring me those items and I'll change its enchantment.~ */
++ @151 /* ~A scroll of Enchanted Weapon, a scroll of Melf's Minute Meteors, and a Diamond to make Wostok's hammer throwable. Got it.~ */ JOURNAL @3000083 + MovingRightAlong
END

IF ~~ THEN BEGIN MovingRightAlong 
SAY @152 /* ~[Cromwell]Well, let's see what else ye've got then.~ */
COPY_TRANS WSMITH01 13
END

IF WEIGHT #-1
~Global("ACQSMAKEHAMMERTHROWABLE","MYAREA",1)~ THEN BEGIN done
  SAY #59797 /* ~Well, there ye go, me friend.  Use it well.  And if ye comes across anything else of interest, ye knows where to bring it, aye?~ */
  IF ~~ THEN DO ~EraseJournalEntry(@3000083) SetGlobal("ACQSMAKEHAMMERTHROWABLE","MYAREA",0)~ EXIT
END
END //APPEND

/* Cespenar:
ACQ1128a -> ACQ1128b - 10.000 Gold, HAMM08: Hammer +2
ACQ10128 -> ACQ1128c - 10.000 Gold, HAMM08: Hammer +2, MISC42: Diamond, SCRL6M: Enchanted Weapon
*/

EXTEND_BOTTOM BOTSMITH 4  // 82?
IF ~OR(2) PartyHasItem("ACQ1128a") PartyHasItem("ACQ10128")~ THEN + upgrade_cespenar
END

CHAIN
IF ~~ THEN BOTSMITH upgrade_cespenar
@153 /* ~[Cespenar]Mmm - you gots dwarven hammer.~ */
== BOTSMITH IF ~PartyHasItem("ACQ1128a")~ THEN @154 /* ~[Cespenar]Recipe says I cans upgrade your hammer, but I needs a hammer +2 and 10,000 gold.~ */ DO ~AddJournalEntry(@3000084,INFO)~
== BOTSMITH IF ~PartyHasItem("ACQ10128")~ THEN @155 /* ~[Cespenar]Recipe says I cans upgrade your hammer, but I needs a hammer +2, scroll of Enchanted Weapon, a diamond, and 10,000 gold.~ */ DO ~AddJournalEntry(@3000085,INFO)~
END
IF ~PartyHasItem("ACQ1128a") !PartyHasItem("HAMM08")~ THEN + PartyDoesNotHaveAllParts 
IF ~PartyHasItem("ACQ10128") 
OR(3) !PartyHasItem("HAMM08") !PartyHasItem("MISC42") !PartyHasItem("SCRL6M")~ THEN + PartyDoesNotHaveAllParts 

IF ~PartyHasItem("ACQ1128a") PartyHasItem("HAMM08")~ THEN + PartyHasAllParts 
IF ~PartyHasItem("ACQ10128") 
PartyHasItem("HAMM08") PartyHasItem("MISC42") PartyHasItem("SCRL6M")~ THEN + PartyHasAllParts 

APPEND BOTSMITH

IF ~~ THEN BEGIN PartyDoesNotHaveAllParts 
SAY @156 /* ~[Cespenar]Bring shiny things and I cans make hammer better, okay?~ */
 IF ~~ THEN GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts 
SAY @157 /* ~[Cespenar]Cespenar sees all needed to make hammer stronger, yes?~ */
+ ~Global("ACQ_WOSTOK","MYAREA",0)~ + @158 /* ~This is the hammer of Wostok, dwarven warrior and priest of Moradin, who died while fighting the Serpents of Abbathor.~ */ DO ~SetGlobal("ACQ_WOSTOK","MYAREA",1)~ + mentioned_wostok_cespenar
COPY_TRANS_LATE BOTSMITH mentioned_wostok_cespenar_01
END

IF ~~ THEN BEGIN mentioned_wostok_cespenar
SAY @159 /* ~[Cespenar]Blahblahblah, Cespenar doets not know this dwarf and doets not care. Wants to work with shiny thing, yes?~ */
++ @160 /* Watch you tone when talking about Wostok, or I won't let you work on this "shiny thing".~ */ + mentioned_wostok_cespenar_01
COPY_TRANS_LATE BOTSMITH mentioned_wostok_cespenar_01
END

IF ~~ THEN BEGIN mentioned_wostok_cespenar_01
SAY @161 /* ~[Cespenar]Oh, Cespenar doets not want to be disrespectful towards friends of master, master's friends are Cespenar's friends, oh yes!~ */
+ ~PartyHasItem("ACQ1128a") PartyGoldGT(9999)~ + #66760 /* ~Sure, go ahead.~ */ 
DO ~SetGlobal("ACQ_ItemMaker","GLOBAL",1)
TakePartyGold(10000)
TakePartyItem("ACQ1128a")
     TakePartyItemNum("HAMM08",1)
     DestroyItem("ACQ1128a")
     DestroyItem("HAMM08")
DestroyGold(10000)~ GOTO 11
+ ~PartyHasItem("ACQ10128") PartyGoldGT(9999)~ + #66760 /* ~Sure, go ahead.~ */ 
DO ~SetGlobal("ACQ_ItemMaker","GLOBAL",2)
TakePartyGold(10000)
TakePartyItem("ACQ10128")
     TakePartyItemNum("HAMM08",1)
     TakePartyItemNum("MISC42",1)
     TakePartyItemNum("SCRL6M",1)
     DestroyItem("ACQ10128")
     DestroyItem("HAMM08")
     DestroyItem("MISC42")
     DestroyItem("SCRL6M")
DestroyGold(10000)~ GOTO 11
+ ~PartyGoldLT(10000)~ + @162 /* ~It seems I don't have that much money.~ */ + MovingRightAlong
++ @142 /* ~No, I'm not interested. Is there anything else you can use?~ */ GOTO MovingRightAlong
END

IF ~~ THEN BEGIN MovingRightAlong 
SAY @163 /* ~[Cespenar]I goes back to digging through backpacks.~ */
COPY_TRANS BOTSMITH 4
END

IF WEIGHT #-1
~GlobalGT("ACQ_ItemMaker","GLOBAL",0)~ THEN BEGIN 143_ajantis
  SAY #70888 /* ~Enjoy!!  Now Cespenar goes back to his duties, oh yes!  Lots of goodies to find, lots to collect!~ [BOTSM10] */
  IF ~~ THEN DO ~//AddXP2DA("smith")
EraseJournalEntry(@3000084)
EraseJournalEntry(@3000085)
SetGlobal("ACQ_ItemMaker","GLOBAL",0)~ EXIT
END

END

