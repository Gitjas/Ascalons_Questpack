/* for BGT: state 35 replaces 1 if talked to Thalantyr more than three times */

EXTEND_BOTTOM %tutu_var%THALAN 35
+ ~PartyHasItem("ACQ1011A")
Global("ACQOffered","MYAREA",0)~ + @39 /* ~I have this powerful dwarven artefact called Gundmagtor here I would like to get rid of.~ */ + gundmagtor_thalan
+ ~PartyHasItem("ACQ1011A")
Global("ACQOffered","MYAREA",1)
PartyGoldGT(999)~ + @40 /* ~I really want the Gundmagtor to be gone from existence. Please destroy it, here is the gold.~ */ + gundmagtor_thalan_01
END
