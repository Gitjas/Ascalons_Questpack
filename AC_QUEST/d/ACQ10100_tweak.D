/*
Global("ACQSGUNDMAGTOR","GLOBAL",1) : gave Gundmagtor to priest of Helm
Global("ACQSGUNDMAGTOR","GLOBAL",2) : Thalantyr destroyed it
Global("ACQSGUNDMAGTOR","GLOBAL",3) : sold it to Zhentarim
*/


EXTEND_BOTTOM %Prihel_Dialog% 0
+ ~GlobalGT("ACQWOSTOK","GLOBAL",6)
PartyHasItem("ACQ10127")~ + @0 /* ~Wostok... died in the attempt to stop the cultists of the Serpents of Abbathor in the Nashkel mines. Could you take care of him?~ */ DO ~EraseJournalEntry(@3000050)  AddJournalEntry(@3000051,QUEST_DONE) AddexperienceParty(500)SetGlobal("ACQBROUGHTWOSTOKTEMPLE","GLOBAL",1) TakePartyItem("ACQ10127") DestroyItem("ACQ10127")~ + take_wostok
+ ~GlobalGT("ACQWOSTOK","GLOBAL",6)
PartyHasItem("ACQ1011A")~ + @1 /* ~This is the Gundmagtor - an evil dwarven artefact Wostok tried to save from the hands of the Serpents of Abbathor. Can you give it to his friends?~ */ DO ~EraseJournalEntry(@3000055) EraseJournalEntry(@3000059) EraseJournalEntry(@3000061) EraseJournalEntry(@3000062) AddJournalEntry(@3000057,QUEST_DONE) SetGlobal("ACQSGUNDMAGTOR","GLOBAL",1) TakePartyItem("ACQ1011A") DestroyItem("ACQ1011A")~ + take_gundmagtor
+ ~GlobalGT("ACQWOSTOK","GLOBAL",6)
PartyHasItem("ACQBOOK3")~ + @2 /* ~This is the journal of Lugosch, the cultist leader who infiltrated the Nashkel mines. It might be useful to Wostok's friends.~ */ DO ~SetGlobal("ACQBROUGHTJOURNALTEMPLE","GLOBAL",1) TakePartyItem("ACQBOOK3") DestroyItem("ACQBOOK3")~ + take_journal
END

APPEND %Prihel_Dialog%

IF WEIGHT #-1
~PartyHasItem("ACQ10127")~ THEN wostok_body
SAY @3 /* ~What do I see? You are carrying dead Wostok - what a shame such a brave warrior was called to his god.~ */
++ @0 /* ~Wostok... died in the attempt to stop the cultists of the Serpents of Abbathor in the Nashkel mines. Could you take care of him?~ */ DO ~EraseJournalEntry(@3000050) AddJournalEntry(@3000051,QUEST_DONE) AddexperienceParty(500) SetGlobal("ACQBROUGHTWOSTOKTEMPLE","GLOBAL",1) TakePartyItem("ACQ10127") DestroyItem("ACQ10127")~ + take_wostok
END

IF ~~ THEN take_wostok
SAY @4 /* ~Let me take his remains. I will make sure he will be transferred to his clan to receive a proper burial. I will also see to the other good dwarves who died in the mines, now that I know what happened.~ */
+ ~PartyHasItem("ACQ1011A")~ + @1 /* ~This is the Gundmagtor - an evil dwarven artefact Wostok tried to save from the hands of the Serpents of Abbathor. Can you give it to his friends?~ */ DO ~EraseJournalEntry(@3000055) EraseJournalEntry(@3000059) EraseJournalEntry(@3000061) EraseJournalEntry(@3000062) AddJournalEntry(@3000057,QUEST_DONE) SetGlobal("ACQSGUNDMAGTOR","GLOBAL",1) TakePartyItem("ACQ1011A") DestroyItem("ACQ1011A")~ + take_gundmagtor
+ ~PartyHasItem("ACQBOOK3")~ + @2 /* ~This is the journal of Lugosch, the cultist leader who infiltrated the Nashkel mines. It might be useful to Wostok's friends.~ */ DO ~SetGlobal("ACQBROUGHTJOURNALTEMPLE","GLOBAL",1) TakePartyItem("ACQBOOK3") DestroyItem("ACQBOOK3")~ + take_journal
++ @7 /* ~Thank you.~ */ + bring_stuff
END

IF ~~ THEN bring_stuff
SAY @5 /* ~Is there more you want to tell me?~ */
+ ~PartyHasItem("ACQ10127")~ + @0 /* ~Wostok... died in the attempt to stop the cultists of the Serpents of Abbathor in the Nashkel mines. Could you take care of him?~ */ DO ~EraseJournalEntry(@3000050) AddJournalEntry(@3000051,QUEST_DONE) AddexperienceParty(500)SetGlobal("ACQBROUGHTWOSTOKTEMPLE","GLOBAL",1) TakePartyItem("ACQ10127") DestroyItem("ACQ10127")~ + take_wostok
+ ~PartyHasItem("ACQ1011A")~ + @1 /* ~This is the Gundmagtor - an evil dwarven artefact Wostok tried to save from the hands of the Serpents of Abbathor. Can you give it to his friends?~ */ DO ~EraseJournalEntry(@3000055) EraseJournalEntry(@3000059) EraseJournalEntry(@3000061) EraseJournalEntry(@3000062) AddJournalEntry(@3000057,QUEST_DONE) SetGlobal("ACQSGUNDMAGTOR","GLOBAL",1) TakePartyItem("ACQ1011A") DestroyItem("ACQ1011A")~ + take_gundmagtor
+ ~PartyHasItem("ACQBOOK3")~ + @2 /* ~This is the journal of Lugosch, the cultist leader who infiltrated the Nashkel mines. It might be useful to Wostok's friends.~ */ DO ~SetGlobal("ACQBROUGHTJOURNALTEMPLE","GLOBAL",1) TakePartyItem("ACQBOOK3") DestroyItem("ACQBOOK3")~ + take_journal
++ @8 /* ~That is all.~ */ + goodbye
END

IF ~~ THEN goodbye
SAY @6 /* ~May The Watchful be with you.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN take_gundmagtor
SAY @9 /* ~It is good you are bringing this to me. I know Wostok's leader and will assure it gets savely to him.~ */
IF ~~ THEN + bring_stuff
END

IF ~~ THEN take_journal
SAY @10 /* ~Thank you, this will be helpful indeed. I will give it to Wostok's leader.~ */
IF ~~ THEN + bring_stuff
END

END //APPEND

/* emissary of the Zentharim */

BEGIN ACQSZENT

IF ~Allegiance(Myself,ENEMY)~ THEN enemy
SAY @20 /* ~[male emissary of Zhentarim]I am not here to fight you, <CHARNAME>. Your actions are very short sighted - but today, it will not matter!~ */
IF ~~ THEN DO ~EraseJournalEntry(@3000059) CreateVisualEffectObject("SPDIMNDR",Myself) DestroySelf()~ EXIT
END

IF ~GlobalGT("ACQSGUNDMAGTOR","GLOBAL",0)~ THEN no_gundmagtor
SAY @11 /* ~[male emissary of Zhentarim]It seems you decided against selling the Gundmagtor to us. It's a pity, but such is life. I'll take my leave then. I have the strong feeling we will hear from you again. Farewell.~ */
IF ~~ THEN DO ~EraseJournalEntry(@3000059) CreateVisualEffectObject("SPDIMNDR",Myself) DestroySelf()~ EXIT
END 

IF ~Global("ACQZENTISWAITING","GLOBAL",0)~ THEN zent
SAY @12 /* ~[male emissary of Zhentarim]Greetings, <CHARNAME>. Don't be startled that I know your name - you made quite the impression with your deeds these last weeks. I am with those who call themselves the Zhentarim, and my leader have a huge interest in a dwarven artifact that you have only recently come into possession of.~ */
++ @13 /* ~You want the Gundmagtor?~ */ + zent_01
++ @14 /* ~And why would I give this to you?~ */ + zent_02
++ @16 /* ~Handing this thing to another evil organization? Do you think I'm crazy?~ */ + zent_10
++ @15 /* ~How about I just kill you, instead.~ */ + zent_06
END

IF ~~ THEN zent_01
SAY @17 /* ~[male emissary of Zhentarim]Indeed, that is the artifact we would like to obtain.~ */
++ @14 /* ~And why would I give this to you?~ */ + zent_02
++ @16 /* ~Handing this thing to another evil organization? Do you think I'm crazy?~ */ + zent_10
++ @15 /* ~How about I just kill you, instead.~ */ + zent_06
END

IF ~~ THEN zent_02
SAY @18 /* ~[male emissary of Zhentarim]We would pay you an increadible sum of 3000 gold in addition to this scroll of magic protection for it.~ */
++ @19 /* ~What if I say no?~ */ + zent_04
++ @21 /* ~No thanks. I've seen what it can do, I'd prefer not to give it to another organization who could use it against me.~ */ + zent_03
+ ~!PartyHasItem("ACQ1011A")~ + @22 /* ~I'd like to, but I don't have it with me currently.~ */ + zent_09
+ ~PartyHasItem("ACQ1011A")~ + @23 /* ~Why not - I don't have a use for it, anyway. Here it is.~ */ + sold_gundmagtor
+ ~PartyHasItem("ACQ1011A")~ + @24 /* ~3000 gold is increadible indeed. Make it at least 5000, and this thing is yours.~ */ DO ~SetGlobal("ACQ5000","LOCALS",1)~ + zent_07
END

IF ~~ THEN zent_03
SAY @25 /* ~[male emissary of Zhentarim]It might sound surprising, but chances of that happening would decrease if you'd sell the artefact to us - we want to keep it *out* of the Serpents' hands and would bring it rather far away from Amn and even the SwordCoast.~ */
IF ~~ THEN + zent_05
END

IF ~~ THEN zent_04
SAY @26 /* ~[male emissary of Zhentarim]Then we would try to persuade you to sell it to us.~ */
IF ~~ THEN + zent_05
END

IF ~~ THEN zent_05
SAY @27 /* ~[male emissary of Zhentarim]You have no use of it whatsoever, and the Serpents' attention was drawn to its presence. Leave it to us and we will make sure the information will be spread that it is no longer in your possession.~ */
++ @28 /* ~I said no.~ */ + zent_08
++ @29 /* ~Can I think about this?~ */ + zent_09
+ ~!PartyHasItem("ACQ1011A")~ + @22 /* ~I'd like to, but I don't have it with me currently.~ */ + zent_09
+ ~PartyHasItem("ACQ1011A")~ + @23 /* ~Why not - I don't have a use for it, anyway. Here it is.~ */ + sold_gundmagtor
+ ~PartyHasItem("ACQ1011A")~ + @24 /* ~3000 gold is increadible indeed. Make it at least 5000, and this thing is yours.~ */ DO ~SetGlobal("ACQ5000","LOCALS",1)~ + zent_07
END

IF ~~ THEN zent_06
SAY @30 /* ~[male emissary of Zhentarim]I have no doubts about your capability of killing *me*, but we are a great and powerful organization you do not wish to trifle with, <CHARNAME>. How about we come to a peaceful understanding?~ */
IF ~~ THEN + zent_02
END

IF ~~ THEN zent_07
SAY @31 /* ~[male emissary of Zhentarim]Hmm. Fine, 5000 it is. I am not here to stir trouble.~ */
IF ~~ THEN + sold_gundmagtor
END

IF ~~ THEN zent_08
SAY @32 /* ~[male emissary of Zhentarim]Most unfortunate. But that doesn't matter - you will soon realize that you have no use for this artifact, only potential trouble.~ */
IF ~~ THEN + zent_09
END

IF ~~ THEN zent_09
SAY @33 /* ~[male emissary of Zhentarim]Come and find me in the Blushing Mermaid if you are willing to part with the Gundmagtor. The offer stands and we will be waiting.~ */
IF ~~ THEN DO ~SetGlobal("ACQZENTISWAITING","GLOBAL",1) CreateVisualEffectObject("SPDIMNDR",Myself) DestroySelf()~ UNSOLVED_JOURNAL @3000059 EXIT
END

IF ~~ THEN zent_10
SAY @34 /* ~[male emissary of Zhentarim]Absolutely not - we want to keep it *out* of the Serpents' hands and would bring it rather far away from Amn and even the SwordCoast. Chances of you ever getting in touch with its power again would be almost nill, you have my word.~ */
IF ~~ THEN + zent_02
END

IF ~Global("ACQZENTISWAITING","GLOBAL",1)~ THEN zent2_01
SAY @35 /* ~[male emissary of Zhentarim]Greetings, <CHARNAME>. Do I assume you came to sell the Gundmagtor to us?~ */
+ ~!PartyHasItem("ACQ1011A")~ + @22 /* ~I'd like to, but I don't have it with me currently.~ */ + zent2_02
+ ~PartyHasItem("ACQ1011A")~ + @23 /* ~Why not - I don't have a use for it, anyway. Here it is.~ */ + sold_gundmagtor
+ ~PartyHasItem("ACQ1011A")~ + @24 /* ~3000 gold is increadible indeed. Make it at least 5000, and this thing is yours.~ */ DO ~SetGlobal("ACQ5000","LOCALS",1)~ + zent_07
++ @36 /* ~No, I didn't. Farewell.~ */ + zent2_02
END

IF ~~ THEN zent2_02
SAY @37 /* ~[male emissary of Zhentarim]I'll be here. Good day to you.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN sold_gundmagtor
SAY @38 /* ~[male emissary of Zhentarim]A wise choice to sell it to us - and a fortunate one, not only for us but I believe for you, as well. My deed here is done - farewell, <CHARNAME>. I have the strong feeling we will hear from you again.~ */
IF ~~ THEN DO ~GiveGoldForce(3000) SetGlobal("ACQZENTISWAITING","GLOBAL",2)~ EXIT
IF ~Global("ACQ5000","LOCALS",1)~ THEN DO ~GiveGoldForce(5000) SetGlobal("ACQZENTISWAITING","GLOBAL",2)~ EXIT
END

/* Thalantyr - takes the Gundmagtor but no gold 
BGT: state 35 covered in extra file
*/
EXTEND_BOTTOM ~%tutu_var%THALAN~ 1
+ ~PartyHasItem("ACQ1011A")
Global("ACQOffered","MYAREA",0)~ + @39 /* ~I have this powerful dwarven artefact called Gundmagtor here I would like to get rid of.~ */ + gundmagtor_thalan
+ ~PartyHasItem("ACQ1011A")
Global("ACQOffered","MYAREA",1)
PartyGoldGT(999)~ + @40 /* ~I really want the Gundmagtor to be gone from existence. Please destroy it, here is the gold.~ */ + gundmagtor_thalan_01
END

APPEND ~%tutu_var%THALAN~
IF ~~ THEN gundmagtor_thalan
SAY @41 /* ~[Thalantyr]Powerful indeed - not for the uninformed, but I see it clearly. End very evil - too evil. I could destroy it for you, but I need quite some resources to do so. It would cost you 1000 gold.~ */
+ ~GlobalGT("ACQSNAKEWORK","GLOBAL",1)~ + @42 /* ~Wait, what? Destroy it? And I should pay for it? No, this is a huge misunderstanding. I'm gone.~ */ + gundmagtor_thalan_04
+ ~PartyGoldGT(999)~ + @43 /* ~That sounds appropriate. I really want this thing to be gone from existence. Here is the gold.~ */ + gundmagtor_thalan_01
+ ~!PartyGoldGT(999)~ + @44 /* ~That sounds appropriate but I don't have enough gold with me.~ */ + gundmagtor_thalan_03
++ @45 /* ~You want me to *pay* 1000 gold for this?~ */ + gundmagtor_thalan_02
++ @46 /* ~I'll think about it.~ */ + gundmagtor_thalan_03
END

IF ~~ THEN gundmagtor_thalan_01
SAY @47 /* ~[Thalantyr]As you wish. That makes one evil artefact less.~ */
IF ~~ THEN DO ~DestroyGold(1000) EraseJournalEntry(@3000055) EraseJournalEntry(@3000056) EraseJournalEntry(@3000059) EraseJournalEntry(@3000061) EraseJournalEntry(@3000062) SetGlobal("ACQSGUNDMAGTOR","GLOBAL",2) TakePartyItem("ACQ1011A") DestroyItem("ACQ1011A")~ SOLVED_JOURNAL @3000060 EXIT
END

IF ~~ THEN gundmagtor_thalan_02
SAY @48 /* ~[Thalantyr]Young adventurer, I have an interest in getting this off the streets, but it's not that great that I'd volunteer to cover the expenses.~ */
+ ~PartyGoldGT(999)~ + @43 /* ~That sounds appropriate. I really want this thing to be gone from existence. Here is the gold.~ */ + gundmagtor_thalan_01
+ ~!PartyGoldGT(999)~ + @44 /* ~That sounds appropriate but I don't have enough gold with me.~ */ + gundmagtor_thalan_03
++ @46 /* ~I'll think about it.~ */ + gundmagtor_thalan_03
END

IF ~~ THEN gundmagtor_thalan_03
SAY @49 /* ~[Thalantyr]Goodbye then.~ */
IF ~~ THEN DO ~SetGlobal("ACQOffered","MYAREA",1)~ UNSOLVED_JOURNAL @3000061 EXIT
END

IF ~~ THEN gundmagtor_thalan_04
SAY @51 /* ~[Thalantyr]Then get out of here before I start asking question where you got this from.~ */
IF ~~ THEN DO ~SetGlobal("ACQOffered","MYAREA",2)~ EXIT
END

END //APPEND

/* Halbazzer Drin - this is too evil even for him */
EXTEND_BOTTOM ~%tutu_var%HALBAZ~ 0
+ ~PartyHasItem("ACQ1011A")
Global("ACQOffered","MYAREA",0)~ + @39 /* ~I have this powerful dwarven artefact called Gundmagtor here I would like to get rid of.~ */ + halbazzer
END

EXTEND_BOTTOM ~%tutu_var%HALBAZ~ 1
+ ~PartyHasItem("ACQ1011A")
Global("ACQOffered","MYAREA",0)~ + @39 /* ~I have this powerful dwarven artefact called Gundmagtor here I would like to get rid of.~ */ + halbazzer
END

APPEND ~%tutu_var%HALBAZ~
IF ~~ THEN halbazzer
SAY @50 /* ~[Halbazzer Drin]And I would see why, but not here. Get this thing out of my shop, now.~ */
IF ~~ THEN DO ~SetGlobal("ACQOffered","MYAREA",1)~ UNSOLVED_JOURNAL @3000062 EXIT
END
END //APPEND