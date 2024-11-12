local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("LevelingCTWW") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Earthen Starter (10-11)",{
condition_valid=function() return raceclass('EarthenDwarf') and not raceclass('DeathKnight') end,
condition_valid_msg="Earthen only.",
condition_suggested=function() return raceclass('EarthenDwarf') and level < 12 and not completedq(50305) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Starter Guides\\Chromie Time",
startlevel=10,
},[[
step
talk Dawn##221839
accept Who am I?##79200 |goto Hall of Awakening/0 89.46,48.03
step
click Diagnostics Scanner##222024
Complete the Diagnostics Scan |q 79200/1 |goto Hall of Awakening/0 87.04,49.47
step
clicknpc Cognitive Scanner##223110
Complete the Cognitive Scan |q 79200/2 |goto Hall of Awakening/0 83.70,60.93
step
click Anomaly Scanner
Complete the Anomaly Scan |q 79200/3 |goto Hall of Awakening/0 83.77,37.91
step
Disrupt the Containment Protocol |q 79200/4 |goto Hall of Awakening/0 83.77,37.91
|tip Use the {o}Inner Song{} ability.
|tip It appears as a button on the screen.
step
talk Dawn##221887
turnin Who am I?##79200 |goto Hall of Awakening/0 62.65,49.65
step
talk Foreman Uzjax##221891
accept The Analysis Interface##83328 |goto Hall of Awakening/0 62.65,49.30 |only if Hunter
accept The Analysis Interface##79201 |goto Hall of Awakening/0 62.64,49.31 |only if not Hunter
step
clicknpc Primary Interface##224809
Select _"I am ready to begin the Analyzing Sequence."_ |gossip 122137
Select _"I choose to omit an answer."_ |gossip 122227
Select _"I choose to omit an answer."_ |gossip 122214
Complete the Primary Analysis |q 83328/1 |goto Hall of Awakening/0 61.36,47.01 |only if Hunter
Complete the Primary Analysis |q 79201/1 |goto Hall of Awakening/0 61.36,47.01 |only if not Hunter
step
clicknpc Secondary Interface##224797
Select _"I am ready to continue the Analyzing Sequence."_ |gossip 122312
Select _"I choose to omit an answer."_ |gossip 122229
Select _"I choose to omit an answer."_ |gossip 122228
Complete the Secondary Analysis |q 83328/2 |goto Hall of Awakening/0 61.38,52.03 |only if Hunter
Complete the Secondary Analysis |q 79201/2 |goto Hall of Awakening/0 61.38,52.03 |only if not Hunter
step
clicknpc Tertiary Interface##224810
talk Tertiary Interface##224810
Select _"I am ready to finish the Analyzing Sequence."_ |gossip 122313
Select _"I choose to omit an answer."_ |gossip 122230
Select _"I choose to omit an answer."_ |gossip 122231
Complete the Tertiary Analysis |q 83328/3 |goto Hall of Awakening/0 57.32,49.52 |only if Hunter
Complete the Tertiary Analysis |q 79201/3 |goto Hall of Awakening/0 57.32,49.52 |only if not Hunter
step
talk Dawn##221888
turnin The Analysis Interface##83328 |goto Hall of Awakening/0 47.77,54.82 |only if Hunter
turnin The Analysis Interface##79201 |goto Hall of Awakening/0 47.77,54.82 |only if not Hunter
accept Rock Beats Rock##79202 |goto Hall of Awakening/0 47.77,54.82
step
talk Awakened Machinist##227273+
Select _"Let's spar!"_ |gossip 122263
Defeat #6# Earthen in Combat |q 79202/1 |goto Hall of Awakening/0 43.61,49.87
'|talk Awakened Stormhand##221912
step
talk Dawn##221889
turnin Rock Beats Rock##79202 |goto Hall of Awakening/0 30.77,48.21
step
talk Speaker Kuldas##221898
accept Authorization: Negated##79203 |goto Hall of Awakening/0 30.92,48.57
step
kill Phalanx of Authorization##221917 |q 79203/1 |goto Hall of Awakening/0 25.53,49.56
step
talk Speaker Kuldas##221900
|tip He runs to this location.
turnin Authorization: Negated##79203 |goto Hall of Awakening/0 16.28,48.09
accept Whoever You Want to Be##79204 |goto Hall of Awakening/0 16.28,48.09
step
Meet Dawn in the Awakening Vestibule |q 79204/1 |goto Hall of Awakening/0 8.61,49.68
step
talk Dawn##221890
turnin Whoever You Want to Be##79204 |goto Hall of Awakening/0 8.61,49.68
accept For the Alliance##81886 |goto Hall of Awakening/0 8.61,49.68	|only if Alliance
accept For the Horde##81888 |goto Hall of Awakening/0 8.61,49.69	|only if Horde
step
click Portal to Stormwind
Teleport to Stormwind City |complete zone("Stormwind City") |goto Hall of Awakening/0 7.26,46.31 |q 81886
|only if Alliance
step
talk Ambassador Moorgard##133362
turnin For the Alliance##81886 |goto Stormwind City/0 53.05,15.26
accept Stranger in a Strange Land##81887 |goto Stormwind City/0 53.05,15.26 |next
|only if Alliance
step
talk Chromie##167032
Talk to Chromie |q 81887/1 |goto Stormwind City/0 56.28,17.31
|only if Alliance
step
talk Adhelda##224806
turnin Stranger in a Strange Land##81887 |goto Stormwind City/0 56.21,17.68
|only if Alliance
step
click Portal to Orgrimmar
Teleport to Orgrimmar |complete zone("Orgrimmar") |goto Hall of Awakening/0 7.12,52.76 |q 81888
|only if Horde
step
talk Ambassador Blackguard##133407
turnin For the Horde##81888 |goto Orgrimmar/1 39.39,79.56
accept Stranger in a Strange Land##81889 |goto Orgrimmar/1 39.39,79.56
|only if Horde
step
talk Chromie##167032
Talk to Chromie |q 81889/1 |goto Orgrimmar/1 40.84,80.16
|only if Horde
step
talk Brunhold##224807
turnin Stranger in a Strange Land##81889 |goto Orgrimmar/1 40.78,80.41
|only if Horde
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Allied Races\\Earthen Race Unlock",{
description="This guide will walk you through unlocking the Earthen allied race.",
},[[
step
achieve The Isle of Dorn##20118
achieve The Ringing Deeps##19560
achieve Hallowfall##20598
achieve Azj-Kahet##19559
|tip Use the {o}War Within leveling guides{} to accomplish this.
|tip If you use the {o}Full Zone{} leveling guides to level up, you will {o}naturally complete the required quests{} for unlocking the Earthen allied race.
|tip You will also {o}reach level 80{}, which is {o}required to start the War Within campaign{} later in this guide.
step
talk Aldra##219393
accept How Scandalous!##80207 |goto Dornogal/0 62.71,21.74
step
Investigate the Disturbance Near the Forgegrounds |q 80207/1 |goto Dornogal/0 49.89,49.32
|tip Next to the doorway of the building.
step
talk Peacekeeper Kragad##219394
|tip Next to the doorway of the building.
turnin How Scandalous!##80207 |goto Dornogal/0 49.89,49.32
accept Seizing Evidence##79521 |goto Dornogal/0 49.89,49.32
step
click Shipment Crate+
|tip They look like {o}treasure chests{}.
Gather #3# Seized Shipments |q 79521/1 |goto Dornogal/0 51.38,51.24
step
talk Peacekeeper Kragad##219394
|tip Next to the doorway of the building.
turnin Seizing Evidence##79521 |goto Dornogal/0 49.89,49.32
accept Withheld Information##79522 |goto Dornogal/0 49.89,49.32
step
talk Line Worker##219395
|tip Inside the building.
Interrogate the Line Worker |q 79522/1 |goto Dornogal/0 50.06,48.33 |count 1
step
talk Line Worker##219395
|tip Inside the building.
Interrogate the Line Worker |q 79522/1 |goto Dornogal/0 49.78,48.03 |count 2
step
talk Line Worker##219395
|tip Inside the building.
Interrogate the Line Worker |q 79522/1 |goto Dornogal/0 49.59,48.25 |count 3
step
talk Line Worker##219395
Interrogate the Line Worker |q 79522/1 |goto Dornogal/0 48.98,49.49 |count 4
step
talk Line Worker##219395
Interrogate the Line Worker |q 79522/1 |goto Dornogal/0 48.90,49.59 |count 5
step
talk Peacekeeper Kragad##219394
|tip Next to the doorway of the building.
turnin Withheld Information##79522 |goto Dornogal/0 49.88,49.32
accept Something Hidden##79523 |goto Dornogal/0 49.88,49.32
step
click False-Bottomed Crate+
|tip They look like {o}treasure chests{}.
Smash #3# Crates |q 79523/1 |goto Dornogal/0 51.39,51.23
step
click Nerubian Silk Ropes
Gather the Evidence |q 79523/2 |goto Dornogal/0 51.26,51.18 |count 1
step
click Infused Underclay
Gather the Evidence |q 79523/2 |goto Dornogal/0 51.37,51.38 |count 2
step
click Bag of Glowing Shards
Gather the Evidence |q 79523/2 |goto Dornogal/0 51.49,51.25 |count 3
step
click Bundle of Receipts
Gather the Evidence |q 79523/2 |goto Dornogal/0 51.55,51.29 |count 4
step
talk Peacekeeper Kragad##219394
|tip Next to the doorway of the building.
turnin Something Hidden##79523 |goto Dornogal/0 49.89,49.32
accept Report to the Councilward##79525 |goto Dornogal/0 49.89,49.32
step
click Open Ledger
|tip Inside the building.
|tip High up on the mountain.
Find Merrix at the Councilward's Rise |q 79525/1 |goto Dornogal/0 55.62,6.08
step
click Open Ledger
|tip Inside the building.
Approach Merrix's Desk |q 79525/2 |goto Dornogal/0 55.62,6.08
step
click Open Ledger
|tip Inside the building.
turnin Report to the Councilward##79525 |goto Dornogal/0 55.62,6.08
step
talk Korgran##213184
accept Before I Depart##78743 |goto Isle of Dorn/0 57.45,42.96
step
talk Urtago##213687
turnin Before I Depart##78743 |goto Isle of Dorn/0 61.70,41.59
accept Honor Their Memories##78744 |goto Isle of Dorn/0 61.70,41.59
stickystart "Deal_With_The_Kobold_Infestation"
step
click Earthen Figurine
Place the Earthen Figurine |q 78744/2 |goto Isle of Dorn/0 62.01,41.77
step
click Deck of Cards
Place the Deck of Cards |q 78744/1 |goto Isle of Dorn/0 62.11,41.38
step
click Precious Gem
Place the Precious Gem |q 78744/3 |goto Isle of Dorn/0 62.52,40.95
step
label "Deal_With_The_Kobold_Infestation"
Kill enemies around this area
Deal with the Kobold Infestation |q 78744/4 |goto Isle of Dorn/0 62.47,41.33
'|kill Candlelit Desecrator##215236, Candlelit Pebblemaker##218658
step
talk Urtago##213687
turnin Honor Their Memories##78744 |goto Isle of Dorn/0 61.70,41.59
accept You No Take Plunder!##78745 |goto Isle of Dorn/0 61.70,41.59
accept Laws Apply to All##78746 |goto Isle of Dorn/0 61.70,41.59
stickystart "Slay_Kobold_Invaders"
step
click Pile of Earthen Belongings
|tip Inside the small room.
collect Earthen Belongings##211428 |q 78745/1 |goto Isle of Dorn/0 62.70,44.33 |count 1
step
click Pile of Earthen Belongings
|tip Inside the small room.
collect Earthen Belongings##211428 |q 78745/1 |goto Isle of Dorn/0 63.19,43.35 |count 2
step
click Pile of Earthen Belongings
|tip Inside the small room.
collect Earthen Belongings##211428 |q 78745/1 |goto Isle of Dorn/0 63.87,42.33 |count 3
step
label "Slay_Kobold_Invaders"
Kill enemies around this area |notinsticky
Slay #12# Kobold Invaders |q 78746/1 |goto Isle of Dorn/0 63.33,42.54
'|kill Candlelit Hexthrower##213685, Candlelit Lootsnatcher##213197, Candlelit Boomer##213683, Candlelit Ouchpatcher##214252, Candlelit Big-Boomer##211546, Candlelit Blind-Hound##218213
step
talk Urtago##213688
turnin You No Take Plunder!##78745 |goto Isle of Dorn/0 63.30,42.64
turnin Laws Apply to All##78746 |goto Isle of Dorn/0 63.30,42.64
accept The Great Collapse##78747 |goto Isle of Dorn/0 63.30,42.64
accept Cutting the Wick##78748 |goto Isle of Dorn/0 63.30,42.64
step
use Explosive Sticks##211435
|tip Use it on the {o}ladder{} sticking out of the ground.
Destroy the Kobold Tunnel |q 78747/1 |goto Isle of Dorn/0 62.85,44.78 |count 1
step
kill Workmaster Nast##213200 | q 78748/3 |goto Isle of Dorn/0 63.26,45.01
|tip He walks around this area.
step
use Explosive Sticks##211435
|tip Use it on the {o}ladder{} sticking out of the ground.
Destroy the Kobold Tunnel |q 78747/1 |goto Isle of Dorn/0 63.54,44.34 |count 2
step
kill Workmaster Earwax##213195 | q 78748/2 |goto Isle of Dorn/0 64.35,44.09
step
use Explosive Sticks##211435
|tip Use it on the {o}ladder{} sticking out of the ground.
Destroy the Kobold Tunnel |q 78747/1 |goto Isle of Dorn/0 64.19,42.96 |count 3
step
kill Hairless the Menace##213550 |q 78748/1 |goto Isle of Dorn/0 64.74,42.51
|tip He walks around this area.
step
talk Urtago##213688
turnin The Great Collapse##78747 |goto Isle of Dorn/0 63.30,42.64
turnin Cutting the Wick##78748 |goto Isle of Dorn/0 63.30,42.64
accept Who Runs this Fine Establishment?##78749 |goto Isle of Dorn/0 63.30,42.64
step
kill Grand-Heister Bokk##213679 |q 78749/1 |goto Isle of Dorn/0 62.23,38.63
|tip He walks around this area.
|tip Inside the small cave.
step
talk Urtago##214292
Select _"It is done."_ |gossip 120867
Talk to Urtago |q 78749/2 |goto Isle of Dorn/0 62.46,39.55
step
talk Urtago##213187
turnin Who Runs this Fine Establishment?##78749 |goto Isle of Dorn/0 57.47,42.94
step
talk Korgran##213184
accept One More Tradition##79335 |goto Isle of Dorn/0 57.45,42.96
stickystart "Collect_Charged_Cores"
step
click Vein of Ore+
|tip They look like {o}grey mining nodes{} with {o}blue crystals{} in them.
collect 5 Clump of Ore##213001 |q 79335/2 |goto Isle of Dorn/0 59.50,42.45
step
label "Collect_Charged_Cores"
Kill enemies around this area
collect 5 Charged Core##213002 |q 79335/1 |goto Isle of Dorn/0 59.50,42.45
'|kill Scavenging Stormfang##218401, Great Stormfang##216017
step
Enter the building |goto Isle of Dorn/0 57.39,42.91 < 15 |walk
talk Korgran##216169
|tip Inside the building.
turnin One More Tradition##79335 |goto Isle of Dorn/0 57.06,42.49
accept The Forging of Memories##79336 |goto Isle of Dorn/0 57.06,42.49
step
_NOTE:_
During This Quest
|tip {o}Korgran{} will {o}begin forging{} and tell you to {o}give him objects nearby{}.
|tip {o}Click the objects{} when he tells you to.
Click Here to Continue |confirm |q 79336
step
talk Korgran##216169
|tip Inside the building.
Select _"I am ready to begin!"_ |gossip 120605
Speak with Korgran to Start Forging the Lantern |q 79336/1 |goto Isle of Dorn/0 57.06,42.49
step
Watch the dialogue
|tip {o}Korgran{} will {o}begin forging{} and tell you to {o}give him objects nearby{}.
|tip {o}Click the objects{} when he tells you to.
|tip Inside the building.
click A Pile of Coals
|tip It looks like a {o}smaller pile of black rocks{} nearby.
click Charged Core
|tip They look like {o}blue crystals{} on a table nearby.
click Ore Barrel
|tip It looks like a {o}bucket full of dirt and rocks{} nearby.
Forge the Lantern |q 79336/2 |goto Isle of Dorn/0 57.06,42.45
step
talk Korgran##216169
|tip Inside the building.
turnin The Forging of Memories##79336 |goto Isle of Dorn/0 57.06,42.49
accept The Last Journey##79337 |goto Isle of Dorn/0 57.06,42.49
step
Watch the dialogue
talk Urtago##213187
|tip She eventually runs to this location.
turnin The Last Journey##79337 |goto Isle of Dorn/0 57.47,42.94
accept The Lost Earthen##79338 |goto Isle of Dorn/0 57.47,42.94
step
Meet with Urtago |q 79338/1 |goto Isle of Dorn/0 61.00,43.89
step
click Korgran's Lantern
Find Korgran |q 79338/2 |goto Isle of Dorn/0 61.36,43.70
step
talk Korgran##216171
Select _"<Show the lantern to Korgran.>"_ |gossip 120893
Select _"Her name is Urtago. She is waiting for you."_ |gossip 120892
Watch the dialogue
|tip Follow {o}Korgran{} as he walks.
Speak to Korgran |q 79338/3 |goto Isle of Dorn/0 61.38,43.71
'|clicknpc Korgran##216877
step
talk Urtago##216878
turnin The Lost Earthen##79338 |goto Isle of Dorn/0 60.99,43.90
accept A Change of Tradition##79339 |goto Isle of Dorn/0 60.99,43.90
step
talk Urtago##216173
turnin A Change of Tradition##79339 |goto Isle of Dorn/0 69.82,56.77
accept Tools of Declaration##79340 |goto Isle of Dorn/0 69.82,56.77
accept Cleansing Ashes##79341 |goto Isle of Dorn/0 69.82,56.77
stickystart "Collect_Ashenfolds"
step
kill Shalehorn Impaler##216970+
collect 4 Pristine Horn##213171 |q 79340/1 |goto Isle of Dorn/0 66.94,56.06
step
label "Collect_Ashenfolds"
click Ashenfold+
|tip They look like {o}groups of white flowers{}.
collect 6 Ashenfold##213157 |q 79341/1 |goto Isle of Dorn/0 67.38,55.97
step
talk Urtago##216173
turnin Tools of Declaration##79340 |goto Isle of Dorn/0 69.82,56.77
turnin Cleansing Ashes##79341 |goto Isle of Dorn/0 69.82,56.77
accept As He Departs##79342 |goto Isle of Dorn/0 69.82,56.77
step
click Incense
Place the Incense |q 79342/1 |goto Isle of Dorn/0 69.84,56.79
step
talk Korgran##216174
Select _"<Hand Korgran the horn.>"_ |gossip 120638
Give the Horn to Korgran |q 79342/2 |goto Isle of Dorn/0 69.85,56.76
step
Watch the dialogue
Conclude the Ceremony |q 79342/3 |goto Isle of Dorn/0 69.85,56.76
step
talk Urtago##216173
turnin As He Departs##79342 |goto Isle of Dorn/0 69.82,56.77
step
Watch the dialogue
talk Urtago##224930
accept The Weight of Duty##82895 |goto Isle of Dorn/0 69.89,57.04
step
talk Urtago##224948
|tip Inside the building.
Select _"I'm ready to help."_ |gossip 122723
Speak to Urtago at Fallside Outpost |q 82895/1 |goto Isle of Dorn/0 57.30,42.86
step
click New Placard
|tip Inside the building.
Collect the New Placard |q 82895/2 |goto Isle of Dorn/0 57.36,42.53
step
click Forge Tongs
|tip Inside the building.
Heat the Placard |q 82895/3 |goto Isle of Dorn/0 57.23,42.79
step
click Quenching Oil
Quench the Placard |q 82895/4 |goto Isle of Dorn/0 57.37,43.05
step
click Tempered Placard
Carve the Tempered Placard |q 82895/5 |goto Isle of Dorn/0 57.06,43.49
step
talk Urtago##224948
turnin The Weight of Duty##82895 |goto Isle of Dorn/0 57.18,43.36
step
Complete the "Pomp and Dire Circumstance" Quest |complete completedq(78837)
|tip Use the {o}Ringing Deeps (Story Only) leveling guide{} to accomplish this.
|tip You may need to use the {o}Intro & Isle of Dorn (Story Only){} leveling guide to unlock {o}The Ringing Deeps{} campaign quests.
step
talk Saradi##225426
accept The Councilward's Summons##79542 |goto The Ringing Deeps/0 47.50,32.67
step
talk Machinist Kittrin##212695
|tip Inside the building.
accept Discarded and Broken##78562 |goto The Ringing Deeps/0 48.24,33.39
step
click Machinist Plinth
collect Machinist's Gauge##210733 |q 78562/1 |goto The Ringing Deeps/0 46.68,29.38
step
click Machinist Plinth##411622
collect Machinist's Calipers##210732 |q 78562/2 |goto The Ringing Deeps/0 52.47,34.11
step
click Machinist Plinth##411624
|tip On top of the building, near the ground.
collect Machinist's Wrench##210734 |q 78562/3 |goto The Ringing Deeps/0 50.06,36.64
step
talk Machinist Kittrin##212695
|tip Inside the building.
turnin Discarded and Broken##78562 |goto The Ringing Deeps/0 48.24,33.39
accept The Weight of a World##78563 |goto The Ringing Deeps/0 48.24,33.39
step
kill Oath-Eater##206844
collect Machinist's Calibrated Weight##210740 |q 78563/1 |goto The Ringing Deeps/0 44.61,31.48
step
talk Machinist Kittrin##212695
|tip Inside the building.
turnin The Weight of a World##78563 |goto The Ringing Deeps/0 48.24,33.39
accept Reforged Purpose##78564 |goto The Ringing Deeps/0 48.24,33.39
step
talk Machinist Kittrin##212695
|tip Inside the building.
Select _"I'm ready to help you reforge the tools."_ |gossip 120147
Speak with Kittrin |q 78564/1 |goto The Ringing Deeps/0 48.24,33.39
step
clicknpc Spattered Charcoal##214843+
|tip They appear on the ground nearby.
|tip Inside the building.
Kick the Spattered Charcoal |q 78564/2 |goto The Ringing Deeps/0 48.24,33.39
Repair All the Tools |q 78564/3 |goto The Ringing Deeps/0 48.24,33.39
step
Watch the dialogue
|tip Inside the building.
talk Machinist Kittrin##212695
turnin Reforged Purpose##78564 |goto The Ringing Deeps/0 48.23,33.39
step
talk Merrix##217069
|tip Inside the building.
Select _"Peacekeeper Kragad asked I bring these receipts to you."_ |gossip 121397
Meet Merrix at the Councilward's Rise |q 79542/1 |goto Dornogal/0 55.23,6.19
step
talk Merrix##217069
|tip Inside the building.
turnin The Councilward's Summons##79542 |goto Dornogal/0 55.23,6.19
accept Dornogal's Benefactor##79543 |goto Dornogal/0 55.23,6.19
step
talk Aufta##219431
|tip Inside the building.
Select _"I have a shipment from a mutual friend for you."_ |gossip 121217
Deliver the Spa Supplies |q 79543/1 |goto Dornogal/0 32.11,24.67
step
talk Gostrof##217080
Select _"I've brought a gift from a mutual friend."_ |gossip 121218
Deliver the Country Supplies |q 79543/2 |goto Dornogal/0 58.45,62.12
step
talk Trader Harthan##217081
Select _"I've brought a gift from a mutual friend."_ |gossip 121219
Deliver the Care Package |q 79543/3 |goto Dornogal/0 52.29,52.24
step
talk Trader Harthan##217081
Select _"I'm listening."_ |gossip 121405
Speak to Harthan |q 79543/4 |goto Dornogal/0 52.29,52.24
step
talk Merrix##217095
turnin Dornogal's Benefactor##79543 |goto Dornogal/0 49.34,26.26
accept Security Through Trade##79544 |goto Dornogal/0 49.34,26.26
step
talk Bevrusi##217072
Select _"I'm told you could get me into the private Machine Speaker speakeasy."_ |gossip 121407
Speak to Bevrusi |q 79544/1 |goto Dornogal/0 55.61,50.23
step
talk Bevrusi##217072
Select _"What are you looking to trade?"_ |gossip 123489
See What Bevrusi Will Trade |q 79544/2 |goto Dornogal/0 55.61,50.23
step
talk Bevrusi##217072
turnin Security Through Trade##79544 |goto Dornogal/0 55.61,50.23
accept The Market Reeve of the Forgegrounds##79545 |goto Dornogal/0 55.61,50.23
step
Approach Vokgret |q 79545/1 |goto Dornogal/0 45.06,48.93
step
talk Ronesh##212370
|tip Inside the building.
buy Fresh Mug of Cinderbrew Mead##219961 |n
Acquire the Cinderbrew |q 79545/2 |goto Dornogal/0 44.72,46.40
step
talk Vokgret##217091
Select _"Here's your cinderbrew. Now, can we do business?"_ |gossip 121505
Bring the Cinderbrew to Vokgret |q 79545/3 |goto Dornogal/0 45.06,48.93
step
talk Vokgret##217091
Select _"I am looking for liquid opal. I am told you have the resources to acquire some."_ |gossip 121504
Ask About Obtaining a Vial of Liquid Opal |q 79545/4 |goto Dornogal/0 45.06,48.93
step
talk Loldren##217090
|tip Inside the building.
Select _"Vokgret sent me to collect some paperwork."_ |gossip 121507
Speak to Loldren |q 79545/5 |goto Dornogal/0 48.33,73.09
step
click Auditor's Manifest
|tip Inside the building.
Select _"<Begin filling out the blank sections on the form.>"_ |gossip 121512
Tell  _"Lord of the Pans: A historical guide to Earthen Cooking Tools"_ |gossip 121509
Tell  _"Belga"_ |gossip 121519
Tell  _"Spicy Pepper Vendor"_ |gossip 123990
Sign the Bills of Purchase |q 79545/6 |goto Dornogal/0 48.27,73.18
Audit Loldren's Market |q 79545/7 |goto Dornogal/0 48.27,73.18
step
talk Nernabel##217088
|tip Inside the building.
Select _"Loldren requires your signature on this document."_ |gossip 121452
Select _"Where can I find a magma core for you?"_ |gossip 121528
Speak to Nernabel |q 79545/8 |goto Dornogal/0 49.59,73.11
step
click Sizzling Magma Core
|tip Inside the building.
|tip You will be attacked.
collect Sizzling Magma Core##211863 |q 79545/9 |goto Dornogal/0 50.44,63.78
step
talk Nernabel##217088
|tip Inside the building.
Select _"I've brought you a magma core. An elemental attacked me for my trouble."_ |gossip 121547
Acquire Nernabel's Signature |q 79545/10 |goto Dornogal/0 49.59,73.11
step
talk Vokgret##217091
turnin The Market Reeve of the Forgegrounds##79545 |goto Dornogal/0 45.06,48.93
accept Opals and Runes##79176 |goto Dornogal/0 45.06,48.93
step
talk Bevrusi##217072
Select _"What are you looking to trade?"_ |gossip 121412
buy Speakeasy Passrune##217414 |n
Trade for the Speakeasy Passrune |q 79176/1 |goto Dornogal/0 55.61,50.23
step
talk Merrix##217097
turnin Opals and Runes##79176 |goto Dornogal/0 60.52,33.07
accept The Machine Speakeasy##79546 |goto Dornogal/0 60.52,33.07
step
Enter the building |goto Dornogal/0 61.51,34.55 < 15 |walk
Meet Merrix in the Tunnels |q 79546/1 |goto Dornogal/0 62.86,40.69
|tip Inside the building.
step
talk Speakeasy Runeguard##220564
|tip Inside the building.
Select _"<Trace the passrune onto the golem.>"_ |gossip 121576
Open the Speakeasy |q 79546/2 |goto Dornogal/0 62.36,40.28
step
talk Obstorn##217082
|tip Inside the building.
Select _"Hear him out. Merrix just wants you to relay a message to Ardgrin."_ |gossip 121577
kill Obstorn##217082
Confront Obstorn |q 79546/3 |goto Dornogal/0 62.04,37.65
step
talk Merrix##219566
|tip Inside the building.
turnin The Machine Speakeasy##79546 |goto Dornogal/0 62.10,38.67
step
ding 80
step
click Angrily-Scrawled Poster##429303
accept Sedition##79526 |goto Dornogal/0 45.90,47.17
step
talk Merrix##219400
|tip Inside the building.
turnin Sedition##79526 |goto Dornogal/0 55.61,5.58
accept Damage Mitigation##79527 |goto Dornogal/0 55.61,5.58
accept Dispelling Rumors##79528 |goto Dornogal/0 55.61,5.58
stickystart "Tear_Down_Seditious_Posters"
step
clicknpc Murmuring Peacekeeper##219449+
|tip They look like {o}armored dwarves{}.
|tip You may be attacked.
Disperse #6# Murmuring Peacekeepers |q 79528/1 |goto Dornogal/0 47.93,28.31
step
label "Tear_Down_Seditious_Posters"
click Seditious Poster+
|tip They look like {o}papers pinned to walls{}.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
Tear Down #8# Seditious Posters |q 79527/1 |goto Dornogal/0 47.93,28.31
step
talk Merrix##219400
|tip Inside the building.
turnin Damage Mitigation##79527 |goto Dornogal/0 55.61,5.57
turnin Dispelling Rumors##79528 |goto Dornogal/0 55.61,5.57
accept Forcing My Hand##79529 |goto Dornogal/0 55.61,5.57
step
click Bundled Cloak
|tip Inside the building.
Carry the Cloak |havebuff Carrying Cloak##441006 |goto Dornogal/0 55.08,6.38 |q 79529
step
clicknpc Merrix##219400
|tip Inside the building.
Hand the Cloak to Merrix |q 79529/1 |goto Dornogal/0 55.61,5.57
step
click Accessory Chest
|tip Inside the building.
Carry the Gloves |havebuff Carrying Gloves##441007 |goto Dornogal/0 56.38,5.95 |q 79529
step
clicknpc Merrix##219400
|tip Inside the building.
Hand the Gloves to Merrix |q 79529/2 |goto Dornogal/0 55.61,5.58
step
clicknpc Gilded Knuckles##220092
|tip Inside the building.
Carry the Weapons |havebuff Carrying Weapons##441008 |goto Dornogal/0 55.36,5.60 |q 79529
step
clicknpc Merrix##219400
|tip Inside the building.
Hand the Weapons to Merrix |q 79529/3 |goto Dornogal/0 55.61,5.57
step
click Titan Device
|tip Inside the building.
Carry the Titan Device |havebuff Carrying Titan Device##441009 |goto Dornogal/0 55.85,6.67 |q 79529
step
clicknpc Merrix##219400
|tip Inside the building.
Bring the  Titan Device to Merrix |q 79529/4 |goto Dornogal/0 55.61,5.58
step
talk Steelvein##219475
|tip Inside the building.
turnin Forcing My Hand##79529 |goto Dornogal/0 55.61,5.58
accept Bad Business##79530 |goto Dornogal/0 55.61,5.58
step
Regroup with Steelvein in the Ringing Deeps |q 79530/1 |goto The Ringing Deeps/0 42.78,23.93
step
talk Overseer Ardgrin##219477
|tip Inside the building.
Select _"Steelvein is here to speak with you."_ |gossip 121524
Watch the dialogue
kill Sparking Haulbot##219497+
Confront Overseer Ardgrin |q 79530/2 |goto The Ringing Deeps/0 42.21,24.12
'|kill Sparking Haulbot##220191
step
talk Steelvein##220192
turnin Bad Business##79530 |goto The Ringing Deeps/0 42.48,23.94
step
achieve The War Within##20597
|tip Use the {o}War Within Campaign{} guide to accomplish this.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)",{
author="support@zygorguides.com",
},[[
step
_NOTE:_
{o}It is Very Important to Avoid Accepting Quests that Aren't in this Guide{}
|tip Certain quests, when completed out of order, can permanently cause breadcrumb quests to become incomplete.
|tip This could cause issues with your quest flow.
|tip Disable automatically accepting all quests and avoid accepting quests from NPCs when not directed to.
Click Here to Continue |confirm
step
accept The War Within##81930 |goto Stormwind City/0 63.19,72.02
|tip You will automatically accept this quest.
|only if Alliance
step
use the Teleportation Scroll##227669
Teleport to Silithus |complete zone("Silithus") |q 81930
|only if Alliance
step
talk Zidormi##128607
Select _"Can you return me to the present time?"_ |gossip 47635
Time Travel to New Silithus |complete not ZGV.InPhase("Old Silithus") |goto Silithus/0 78.93,21.97 |q 81930
|only if Alliance
step
Meet Jaina in Silithus |q 81930/2 |goto Silithus/0 41.93,45.11
|only if Alliance
step
talk Lady Jaina Proudmoore##213625
turnin The War Within##81930 |goto Silithus/0 41.93,45.11
|only if Alliance
step
accept The War Within##78713
|tip You will automatically accept this quest.
|only if Horde
step
use the Teleportation Scroll##227669
Teleport to Silithus |complete zone("Silithus") |q 78713
|only if Horde
step
talk Zidormi##128607
Select _"Can you return me to the present time?"_ |gossip 47635
Time Travel to New Silithus |complete not ZGV.InPhase("Old Silithus") |goto Silithus/0 78.93,21.97 |q 78713
|only if Horde
step
Meet Thrall in Silithus |q 78713/2 |goto Silithus/0 41.93,45.11
|only if Horde
step
talk Thrall##213620
turnin The War Within##78713 |goto Silithus/0 41.96,45.05
|only if Horde
step
talk Thrall##213620
accept A Poor Reception##78714 |goto Silithus/0 41.96,45.05 |noautoaccept
_Or_ |only if completedq(79573)
Select _"I have heard this tale before. <Skip the Dalaran introduction and travel to Dornogal.>"_ |gossip 123176 |noautogossip |only if completedq(79573)
|tip If you've {o}unlocked Adventure Mode{}, you can {o}skip the intro quests{}. |only if completedq(79573)
step
click Titan Translocator
Enter the Heart Chamber |q 78714/1 |goto Silithus/0 43.20,44.49
step
talk Magni Bronzebeard##213624
turnin A Poor Reception##78714 |goto Chamber of Heart/2 50.06,65.19
accept Azeroth's Voice##78715 |goto Chamber of Heart/2 50.06,65.19
step
click Chamber Console
Activate the Chamber of Heart Console |q 78715/1 |goto Chamber of Heart/2 56.50,64.69 |count 1
step
click Chamber Console
Activate the Chamber of Heart Console |q 78715/1 |goto Chamber of Heart/2 50.14,74.00 |count 2
step
click Chamber Console
Activate the Chamber of Heart Console |q 78715/1 |goto Chamber of Heart/2 43.90,64.72 |count 3
step
talk Magni Bronzebeard##213624
Select _"I'm ready. Let's begin."_ |gossip 120882
Talk to Magni to Begin the Ritual |q 78715/2 |goto Chamber of Heart/2 50.06,65.21
step
talk Lady Jaina Proudmoore##213625
turnin Azeroth's Voice##78715 |goto Chamber of Heart/2 49.53,58.51
accept Painful Lessons##78716 |goto Chamber of Heart/2 49.53,58.51
step
click Portal to Dalaran
Take Jaina's Portal to Dalaran |q 78716/1 |goto Chamber of Heart/2 53.43,58.01
step
Meet with Khadgar in Dalaran |q 78716/2 |goto Dalaran L/12 46.80,54.47
step
talk Archmage Khadgar##213627
|tip Inside the building.
turnin Painful Lessons##78716 |goto Dalaran L/12 42.87,59.86
step
talk Moira Thaurissan##214651
|tip Inside the building.
accept The Bronzebeard Family##80500 |goto Dalaran L/12 40.39,54.13
step
talk Brann Bronzebeard##214669
|tip Inside the building.
Select _"Magni's hurt. Moira needs you both in the Portrait Room."_ |gossip 121542
Talk to Brann |q 80500/1 |goto Dalaran L/10 50.73,55.59
step
talk Moira Thaurissan##214651
|tip Inside the building.
turnin The Bronzebeard Family##80500 |goto Dalaran L/12 40.35,54.03
step
talk Moira Thaurissan##214651
turnin Slept Like a Rock##81966 |goto Dalaran L/12 43.48,54.90
|only if haveq(81966) or completedq(81966)
step
talk Magni Bronzebeard##213624
|tip Inside the building.
accept A Mysterious Warning##78717 |goto Dalaran L/12 45.33,57.32
step
talk Archmage Khadgar##213627
|tip Inside the building.
Select _"I'll wait for you here."_ |gossip 121395
Talk to Khadgar |q 78717/1 |goto Dalaran L/12 42.84,59.91
step
talk Archmage Khadgar##213627
|tip Inside the building.
turnin A Mysterious Warning##78717 |goto Dalaran L/12 41.13,62.32
accept Citizens of Dalaran##78719 |goto Dalaran L/12 41.13,62.32
step
talk Brann Bronzebeard##214669
|tip Inside the building.
accept Meet the Team##78721 |goto Dalaran L/12 47.05,49.11
step
talk Archmage Drenden##214665
|tip Inside the building.
accept Strengthen the Wards##78718 |goto Dalaran L/12 56.41,33.22
step
extraaction Eat Food##441949
Help the Citizen of Dalaran |q 78719/1 |goto Dalaran L/10 52.66,35.03 |count 1
|tip Use the {o}Eat Food{} ability.
|tip It appears as a button on the screen.
|tip You may need to dismount to see it.
step
use the Tuning Wand##220483
Strengthen the Ward |q 78718/1 |goto Dalaran L/10 51.00,23.72 |count 1
step
extraaction Catch Butterflies##441953
Help the Citizen of Dalaran |q 78719/1 |goto Dalaran L/10 42.65,34.27 |count 2
|tip Use the {o}Catch Butterflies{} ability.
|tip It appears as a button on the screen.
|tip Inside the building.
|tip You may need to dismount to see it.
step
talk Elise Starseeker##220018
Select _"Brann wanted me to check in on you."_ |gossip 121860
Check on the Algari Expedition |q 78721/1 |goto Dalaran L/10 37.62,46.25
step
use the Tuning Wand##220483
|tip Inside the building.
Strengthen the Ward |q 78718/1 |goto Dalaran L/10 30.90,48.96 |count 2
step
use the Tuning Wand##220483
Strengthen the Ward |q 78718/1 |goto Dalaran L/10 45.04,72.14 |count 3
step
extraaction Secure Shelves##440732
Help the Citizen of Dalaran |q 78719/1 |goto Dalaran L/10 53.95,61.58 |count 3
|tip Use the {o}Secure Shelves{} ability.
|tip It appears as a button on the screen.
|tip Inside the building.
|tip You may need to dismount to see it.
step
use the Tuning Wand##220483
Strengthen the Ward |q 78718/1 |goto Dalaran L/10 60.73,61.58 |count 4
step
talk Archmage Drenden##214665
|tip Inside the building.
turnin Strengthen the Wards##78718 |goto Dalaran L/12 56.42,33.15
step
talk Brann Bronzebeard##214669
|tip Inside the building.
turnin Meet the Team##78721 |goto Dalaran L/12 47.06,49.12
step
talk Archmage Khadgar##213627
|tip Inside the building.
turnin Citizens of Dalaran##78719 |goto Dalaran L/12 41.11,62.31
accept To Khaz Algar!##78722 |goto Dalaran L/12 41.11,62.31
step
talk Archmage Khadgar##213627
|tip Inside the building.
Select _"I'm ready to depart."_ |gossip 120143
Talk to Khadgar |q 78722/1 |goto Dalaran L/12 41.11,62.31
step
talk Alleria Windrunner##214908
|tip Inside the building.
|tip If she won't interact with you, relog to fix it.
turnin To Khaz Algar!##78722 |goto Dalaran TWW/0 50.45,50.45
accept Breach##79105 |goto Dalaran TWW/0 50.45,50.45
stickystart "Slay_The_Nerubians_79105"
step
clicknpc Professor Pallin##222425
|tip Inside the building.
Save the Citizen |q 79105/1 |goto Dalaran TWW/0 58.68,50.37 |count 1
step
clicknpc Sabriana Sorrowgaze##222424
Save the Citizen |q 79105/1 |goto Dalaran TWW/0 57.82,52.89 |count 2
step
clicknpc Lianna Tai##222426
|tip Inside the building.
Save the Citizen |q 79105/1 |goto Dalaran TWW/0 58.83,54.36 |count 3
step
clicknpc Glaciela Rimebang##222474
Save the Citizen |q 79105/1 |goto Dalaran TWW/0 57.93,57.12 |count 4
step
clicknpc Sandra Bartan##222446
|tip Inside the building.
Save the Citizen |q 79105/1 |goto Dalaran TWW/0 53.34,53.45 |count 5
step
clicknpc Ol' Toomba##222447
|tip Inside the building.
Save the Citizen |q 79105/1 |goto Dalaran TWW/0 51.89,53.22 |count 6
step
clicknpc Amisi Azuregaze##222445
|tip Inside the building.
Save the Citizen |q 79105/1 |goto Dalaran TWW/0 51.56,57.24 |count 7
step
clicknpc Fialla Sweetberry##222473
Save the Citizen |q 79105/1 |goto Dalaran TWW/0 51.03,62.21 |count 8
step
clicknpc Lucian Trias##222433
|tip Inside the building.
Save the Citizen |q 79105/1 |goto Dalaran TWW/0 51.32,65.78 |count 9
step
clicknpc Kizi Copperclip##222449
|tip Inside the building.
Save the Citizen |q 79105/1 |goto Dalaran TWW/0 53.24,66.66 |count 10
step
label "Slay_The_Nerubians_79105"
Kill enemies around this area
Slay the Nerubians |q 79105/2 |goto Dalaran TWW/0 56.03,64.29
'|kill Drone Abductor##219655, Nerubian Venomspitter##219661, Nerubian War-Weaver##219657, Pestilent Drone##219653, Rampaging Threadling##219664, Small Threadling##219662
step
talk Alleria Windrunner##214908
turnin Breach##79105 |goto Dalaran TWW/0 35.73,71.34
accept Rupture##79106 |goto Dalaran TWW/0 35.73,71.34
step
Return to the City |q 79106/1 |goto Dalaran TWW/0 41.20,59.43
step
Navigate the Sewers |q 79106/2 |goto Dalaran TWW/1 39.37,51.95
step
clicknpc Webbed Victim##219873
|tip If you cannot click on the citizens, your quest is bugged.
|tip Abandon the quest, log out of the game, then log in and accept it again.
Free the Webbed Citizen |q 79106/3 |goto Dalaran TWW/1 51.31,51.12 |count 1
step
clicknpc Webbed Victim##219873
|tip If you cannot click on the citizens, your quest is bugged.
|tip Abandon the quest, log out of the game, then log in and accept it again.
Free the Webbed Citizen |q 79106/3 |goto Dalaran TWW/1 50.57,59.01 |count 2
step
clicknpc Webbed Victim##219873
|tip If you cannot click on the citizens, your quest is bugged.
|tip Abandon the quest, log out of the game, then log in and accept it again.
Free the Webbed Citizen |q 79106/3 |goto Dalaran TWW/1 55.06,57.76 |count 3
step
clicknpc Webbed Victim##219873
|tip If you cannot click on the citizens, your quest is bugged.
|tip Abandon the quest, log out of the game, then log in and accept it again.
Free the Webbed Citizen |q 79106/3 |goto Dalaran TWW/1 58.04,53.06 |count 4
step
clicknpc Webbed Victim##219873
|tip If you cannot click on the citizens, your quest is bugged.
|tip Abandon the quest, log out of the game, then log in and accept it again.
Free the Webbed Citizen |q 79106/3 |goto Dalaran TWW/1 60.85,49.00 |count 5
step
click Sewer Grate
Enter the Sewer Grate |q 79106/4 |goto Dalaran TWW/1 66.80,50.81
step
Take the Citizens to Safety |q 79106/5 |goto Dalaran TWW/2 72.55,57.77
step
talk Anduin Wrynn##219885
|tip He runs to this location.
turnin Rupture##79106 |goto Dalaran TWW/2 72.55,57.77
accept Departure##80321 |goto Dalaran TWW/2 72.55,57.77
step
Seek a Different Exit |q 80321/1 |goto Dalaran TWW/2 23.20,79.68
step
Run up stairs |goto Dalaran TWW/2 12.46,78.64 < 10 |walk
Return to the Surface |q 80321/2 |goto Dalaran TWW/0 40.95,36.44
step
kill Queensguard An'Jak Shabtir##219665 |q 80321/3 |goto Dalaran TWW/0 42.80,33.73
step
talk Archmage Khadgar##219956
Select _"What do you need me to do?"_ |gossip 124153
Talk to Khadgar |q 80321/4 |goto Dalaran TWW/0 44.47,37.57
step
click Khadgar's Portal##433329
turnin Departure##80321 |goto Dalaran TWW/0 44.13,36.59
step
accept Violent Impact##78529
|tip You will accept this quest automatically.
|only if not (completedq(83621) or completedq(83543))
step
click Pile of Rubble
|tip The {o}large grey rocks{} you're buried under.
|tip Click it {o}multiple times{}.
Escape the Rubble |q 78529/1 |goto Isle of Dorn/0 28.91,54.53
|only if not (completedq(83621) or completedq(83543))
step
label "Skip_Isle_Of_Dorn_Intro"
talk Brann Bronzebeard##206017
|tip Inside the building.
accept Adventuring in Khaz Algar##83543 |goto Dornogal/0 47.40,44.41
|only if completedq(83621) or completedq(83543)
step
click Scouting Map
|tip It looks like a {o}large brown paper map{} on the table.
|tip You are {o}choosing the zone{} you wish to {o}do quests in{}.
|tip {o}Pick whichever{} you like, it doesn't matter.
accept Isle of Dorn##83548 |goto Dornogal/0 48.26,43.79		|or |only if not completedq(83548)
accept The Ringing Deeps##83550 |goto Dornogal/0 48.26,43.79	|or |only if not completedq(83550)
accept Hallowfall##83551 |goto Dornogal/0 48.26,43.79		|or |only if not completedq(83551)
accept Azj-Kahet##83552 |goto Dornogal/0 48.26,43.79		|or |only if not completedq(83552)
Choose a Zone from the Scouting Map |q 83543/1 |goto Dornogal/0 48.26,43.79 |only if haveq(83543)
|only if (haveq(83543) or completedq(83543)) and not haveq(78529)
step
_Click the Quest Complete Box:_
|tip In the quest tracker area.
turnin Adventuring in Khaz Algar##83543
|only if (haveq(83543) or completedq(83543)) and not haveq(78529)
step
_Which Zone Did You Choose?_
|tip Click the line below for the zone you want to complete quests in.
Isle of Dorn		|confirm	|next "Isle_Of_Dorn"
The Ringing Deeps	|confirm	|next "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\The Ringing Deeps (Story Only)"
Hallowfall		|confirm	|next "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Hallowfall (Story Only)"
Azj-Kahet		|confirm	|next "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Azj-Kahet (Story Only)"
|only if (haveq(83543) or completedq(83543)) and not haveq(78529)
step
label "Isle_Of_Dorn"
talk Thrall##211993
turnin Violent Impact##78529 |goto Isle of Dorn/0 29.45,55.07
|only if ((haveq(78529) or completedq(78529)) and not haveq(83548)) and Horde
step
talk Lady Jaina Proudmoore##211994
turnin Violent Impact##78529 |goto Isle of Dorn/0 29.51,55.01		|only if ((haveq(78529) or completedq(78529)) and not haveq(83548)) and Alliance
turnin Isle of Dorn##83548 |goto Isle of Dorn/0 29.51,55.01		|only if haveq(83548) or completedq(83548)
accept Slay the Saboteurs##78530 |goto Isle of Dorn/0 29.51,55.01
step
talk Thrall##211993
accept Urgent Recovery##78531 |goto Isle of Dorn/0 29.45,55.07
stickystart "Slay_Nerubians"
step
click Hastily-Prepared Antidote
Aid the Crash Survivor |q 78531/1 |goto Isle of Dorn/0 30.22,54.60 |count 1
step
click Tower Fragment
Aid the Crash Survivor |q 78531/1 |goto Isle of Dorn/0 30.57,53.86 |count 3
step
click Dalaran Power Shard
Aid the Crash Survivor |q 78531/1 |goto Isle of Dorn/0 30.36,52.74 |count 4
step
click Rittsyn's Soulstone
Aid the Crash Survivor |q 78531/1 |goto Isle of Dorn/0 31.41,54.20 |count 5
step
clicknpc Polymorphed Victim##214543
|tip It looks like a {o}friendly sheep{} that walks around this small area.
Aid the Crash Survivor |q 78531/1 |goto Isle of Dorn/0 31.09,55.32 |count 6
step
click Sunreaver Satchel
Aid the Crash Survivor |q 78531/1 |goto Isle of Dorn/0 30.92,55.13 |count 7
step
talk Archmage Aethas Sunreaver##223166
accept Erratic Artifacts##78532 |goto Isle of Dorn/0 30.95,55.11
step
clicknpc Damaged Arcane Relic##212795+
|tip They look like {o}blue and pink floating crystals{}.
Destroy #5# Damaged Arcane Relics |q 78532/1 |goto Isle of Dorn/0 31.50,55.94
step
label "Slay_Nerubians"
Kill enemies around this area
Slay #12# Nerubians |q 78530/1 |goto Isle of Dorn/0 30.69,54.44
'|kill Devious Webspinner##212717, Burrowing Saboteur##212715, Burrowing Saboteur##228057
step
talk Lady Jaina Proudmoore##211994
turnin Slay the Saboteurs##78530 |goto Isle of Dorn/0 29.50,55.01
turnin Erratic Artifacts##78532 |goto Isle of Dorn/0 29.50,55.01
step
talk Lady Jaina Proudmoore##211994
turnin Slay the Saboteurs##78530 |goto Isle of Dorn/0 29.50,55.01
turnin Erratic Artifacts##78532 |goto Isle of Dorn/0 29.50,55.01
step
talk Thrall##211993
turnin Urgent Recovery##78531 |goto Isle of Dorn/0 29.45,55.07
step
Watch the dialogue
talk Anduin Wrynn##212450
accept Secure the Beach##78533 |goto Isle of Dorn/0 29.53,54.98
step
Regroup with Magni |q 78533/1 |goto Isle of Dorn/0 30.31,56.08
step
kill Queensguard Zirix##211858
Hold Off Queensguard Zirix |q 78533/2 |goto Isle of Dorn/0 30.19,56.53
step
Watch the dialogue
Stand Against Zirix's Swarm |q 78533/3 |goto Isle of Dorn/0 30.19,56.53
step
talk Baelgrim##211859
turnin Secure the Beach##78533 |goto Isle of Dorn/0 30.42,55.73
accept To Dornogal##78534 |goto Isle of Dorn/0 30.42,55.73
step
Meet Baelgrim in Dornogal |q 78534/3 |goto Dornogal/0 33.57,75.20
|tip On top of the wall.
step
talk Baelgrim##216628
|tip On top of the wall.
turnin To Dornogal##78534 |goto Dornogal/0 33.57,75.20
accept They Come from Below##78535 |goto Dornogal/0 33.57,75.20
step
clicknpc Lokren##212696
|tip On top of the wall.
Mount Lokren |q 78535/1 |goto Dornogal/0 33.91,75.71
step
_As You Fly:_
Kill enemies around this area
|tip They look like {o}various spider enemies{}.
|tip Use the abilities on your action bar.
|tip If Lokren is bugged, relog to fix it.
Slay the Nerubian Invaders |q 78535/2
step
Watch the dailogue
Regroup with Baelgrim |q 78535/3
step
talk Baelgrim##217852
turnin They Come from Below##78535 |goto Dornogal/0 36.20,64.23
accept Impossible Odds##78536 |goto Dornogal/0 36.20,64.23
step
talk Thrall##219757
Select _"What is the plan?"_ |gossip 121391
Speak to Thrall |q 78536/1 |goto Dornogal/0 36.49,65.37
step
talk Baelgrim##217852
turnin Impossible Odds##78536 |goto Dornogal/0 36.21,64.22
accept Hypocenter##78460 |goto Dornogal/0 36.21,64.22
step
clicknpc Coreway Worker##216985
Clear the Hazard and Rescue the Earthen |q 78460/1 |goto Dornogal/0 35.08,66.48 |count 1
step
clicknpc Coreway Worker##219992
Clear the Hazard and Rescue the Earthen |q 78460/1 |goto Dornogal/0 33.47,66.77 |count 2
step
click Coreway Rubble
Clear the Hazard and Rescue the Earthen |q 78460/1 |goto Dornogal/0 33.36,64.73 |count 3
step
click Dead Earthen
|tip He is under the rubble.
Clear the Hazard and Rescue the Earthen |q 78460/1 |goto Dornogal/0 33.42,64.73 |count 4
step
clicknpc Coreway Worker##219993
Clear the Hazard and Rescue the Earthen |q 78460/1 |goto Dornogal/0 33.64,64.10 |count 5
step
click Coreway Rubble
Clear the Hazard and Rescue the Earthen |q 78460/1 |goto Dornogal/0 31.95,62.60 |count 6
step
click Coreway Rubble
Clear the Hazard and Rescue the Earthen |q 78460/1 |goto Dornogal/0 31.27,60.80 |count 7
step
click Coreway Rubble
Clear the Hazard and Rescue the Earthen |q 78460/1 |goto Dornogal/0 31.27,59.37 |count 8
step
talk Baelgrim##217853
|tip Inside the building.
turnin Hypocenter##78460 |goto Dornogal/0 29.65,59.68
step
talk Speaker Brinthe##217857
|tip Inside the building.
accept The Archive##78468 |goto Dornogal/0 29.39,59.94
step
talk Merrix##217854
|tip Inside the building.
accept Stones of Dornogal##78457 |goto Dornogal/0 29.40,59.45
step
extraaction Prismatic Codex##446651
Use the Prismatic Codex to View the Memory Gem |q 78468/1 |goto Dornogal/0 29.22,59.68
|tip Use the {o}Prismatic Codex{} ability.
|tip It appears as a button on the screen.
|tip Upstairs inside the building.
step
click Archival Repository
|tip Upstairs inside the building.
Deposit the Memory Gem in the Archival Repository |q 78468/2 |goto Dornogal/0 29.22,59.68
step
talk Speaker Brinthe##217857
|tip Inside the building.
turnin The Archive##78468 |goto Dornogal/0 29.39,59.94
step
talk Oathsworn Peacekeeper##219014
Select _"Profession Trainer"_ |gossip 122786
Ask a Guard About Profession Trainers |q 78457/1 |goto Dornogal/0 30.64,60.17
step
talk Breem##212369
|tip Upstairs outside.
Select _"<Introduce yourself with Councilward's Signet.>"_ |gossip 120909
Speak to Flight Master Breem |q 78457/2 |goto Dornogal/0 44.67,51.16
step
talk Breem##212369
fpath Dornogal |goto Dornogal/0 44.67,51.16
step
talk Ronesh##212370
|tip Inside the building.
Select _"<Introduce yourself with Councilward's Signet.>"_ |gossip 120913
Speak to Innkeeper Ronesh |q 78457/3 |goto Dornogal/0 44.73,46.41
step
talk Ronesh##212370
|tip Inside the building.
home Dornogal |goto Dornogal/0 44.73,46.41 |q 78457
step
talk Brann Bronzebeard##206017
|tip Inside the building.
Select _"You made it, Brann! What's going on here?"_ |gossip 122129
Speak to Brann Bronzebeard |q 78457/4 |goto Dornogal/0 47.39,44.41
step
talk Auditor Balwurz##223728
|tip Inside the building.
Speak to Auditor Balwurz |q 78457/5 |goto Dornogal/0 39.09,24.15
step
talk Merrix##217861
|tip Inside the building.
turnin Stones of Dornogal##78457 |goto Dornogal/0 39.87,26.00
accept State of the Union##78459 |goto Dornogal/0 39.87,26.00
step
talk Merrix##217861
|tip Inside the building.
Select _"Tell me about the Council of Dornogal."_ |gossip 122305 |noautogossip
|tip You can watch the dialogue, or choose {o}"<Skip conversation> Tell me another time."{}
Speak to Merrix |q 78459/1 |goto Dornogal/0 39.87,26.00
step
talk Merrix##217861
|tip Inside the building.
turnin State of the Union##78459 |goto Dornogal/0 39.87,26.00
step
talk Moira Thaurissan##217864
|tip Inside the building.
accept The Fourth Seat##78461 |goto Dornogal/0 40.55,25.84
step
click Earthen Teleporter
|tip Inside the building.
Use the Earthen Teleporter |q 78461/1 |goto Dornogal/0 40.73,22.33
step
Regroup with Baelgrim at the Top of Foundation Hall |q 78461/2 |goto Dornogal/0 40.68,28.37
step
talk Adelgonn##217879
Select _"Are you Adelgonn?"_ |gossip 122307
Find Adelgonn |q 78461/3 |goto Isle of Dorn/0 41.86,72.64
step
talk Adelgonn##217879
turnin The Fourth Seat##78461 |goto Isle of Dorn/0 41.86,72.64
accept Delve into the Earth##78464 |goto Isle of Dorn/0 41.86,72.64
step
talk Iridi##217439
fpath Freywold Village |goto Isle of Dorn/0 41.04,72.93
step
Journey to the Earthcrawl Mines Delve |q 78464/1 |goto Isle of Dorn/0 38.87,73.27
step
talk Brann Bronzebeard##213030
Select _"Let's go save the earthen in the delve."_ |gossip 120958
Speak to Brann Bronzebeard |q 78464/2 |goto Isle of Dorn/0 38.87,73.27
step
click Explorer's League Supplies
Select _"<View Brann Bronzebeard's supplies.>"_ |gossip 122660
Open the Explorer's League Supplies |q 78464/3 |goto Isle of Dorn/0 38.90,73.28
step
Select a Combat Role for Brann Bronzebeard |q 78464/4 |goto Isle of Dorn/0 38.90,73.28
|tip Follow the instructions on the screen.
step
Enter the Earthcrawl Mines |q 78464/5 |goto Isle of Dorn/0 38.55,73.93
|tip Walk through the {o}portal{} to enter the delve.
|tip Inside the small mine.
step
Complete the Earthcrawl Mines Objectives |q 78464/6
|tip The delve is simple to complete.
step
Find the Earthcrawl Mines Treasure |q 78464/7
|tip Open the {o}treasure chests{} inside the delve.
step
Leave the Earthcrawl Mines Delve |complete not subzone("Earthcrawl Mines") |q 78464
|tip Click the {o}Leave-O-Bot 7000{} near the {o}treasure{} inside the delve.
|tip Walk through the {o}portal{} to leave the delve.
step
talk Brann Bronzebeard##213030
Select _"What will you do now?"_ |gossip 120969
Speak to Brann Bronzebeard Outside the Delve |q 78464/8 |goto Isle of Dorn/0 38.75,73.30
step
talk Adelgonn##217879
turnin Delve into the Earth##78464 |goto Isle of Dorn/0 41.86,72.64
accept A Natural Remedy##79553 |goto Isle of Dorn/0 41.86,72.64
step
talk Baelgrim##217881
accept Building Blocks##78463 |goto Isle of Dorn/0 41.77,72.66
stickystart "Collect_Glittering_Ore"
step
Kill enemies around this area
collect 10 Fungarian Chunks##213233 |q 79553/1 |goto Isle of Dorn/0 36.07,74.91
'|kill Scarlet Stinkcap##212579, Budling Morel##212577, Rustul Titancap##213115, Agaric Spreader##212578
step
label "Collect_Glittering_Ore"
click Unsorted Ore Pile+
|tip They look like large {o}piles of grey rocks{} with {o}red gems{} in them.
click Ore Fragment+
|tip They look like {o}small red crystals{}.
collect 20 Glittering Ore##211962 |q 78463/1 |goto Isle of Dorn/0 36.07,74.91
step
talk Baelgrim##217881
turnin Building Blocks##78463 |goto Isle of Dorn/0 41.76,72.91
step
talk Adelgonn##217879
turnin A Natural Remedy##79553 |goto Isle of Dorn/0 41.86,72.63
accept Echoes of Compassion##78462 |goto Isle of Dorn/0 41.86,72.63
step
clicknpc Injured Earthen##215765
Heal the Injured Earthen |q 78462/1 |goto Isle of Dorn/0 41.75,72.43 |count 1
step
clicknpc Injured Earthen##215765
Heal the Injured Earthen |q 78462/1 |goto Isle of Dorn/0 41.83,72.35 |count 2
step
clicknpc Injured Earthen##223459
Heal the Injured Earthen |q 78462/1 |goto Isle of Dorn/0 42.07,72.62 |count 3
step
clicknpc Injured Earthen##215765
Heal the Injured Earthen |q 78462/1 |goto Isle of Dorn/0 41.94,72.99 |count 4
step
clicknpc Injured Earthen##215765
Heal the Injured Earthen |q 78462/1 |goto Isle of Dorn/0 41.92,73.01 |count 5
step
talk Findorn##216109
Select _"<Carry Findorn to the pool.>"_ |gossip 120682
Pick Up Findorn |q 78462/2 |goto Isle of Dorn/0 41.79,72.96
step
clicknpc Findorn##217502
Place Findorn in the Pool |q 78462/3 |goto Isle of Dorn/0 41.87,72.75
step
talk Ebona##216111
Select _"How is Ebona doing?"_ |gossip 120684
Assess Ebona |q 78462/4 |goto Isle of Dorn/0 41.86,72.67
step
Watch the dialogue
talk Adelgonn##217879
turnin Echoes of Compassion##78462 |goto Isle of Dorn/0 41.86,72.64
step
talk Moira Thaurissan##217878
accept The Proscenium##78470 |goto Isle of Dorn/0 41.89,72.69
step
talk Moira Thaurissan##217898
turnin The Proscenium##78470 |goto Isle of Dorn/0 56.53,52.03
step
talk Baelgrim##217766
accept The Cavalry is Here##79701 |goto Isle of Dorn/0 56.56,52.02
step
talk Wenbrandt##212295
accept Fire in the Hole##79721 |goto Isle of Dorn/0 56.67,52.10
step
click Cinderbrew Keg
Pick Up the Cinderbrew Keg |q 79721/1 |goto Isle of Dorn/0 56.66,52.02
step
Throw the Cinderbrew into the Burrow |q 79721/2 |goto Isle of Dorn/0 56.74,52.13
|tip Use the {o}Bottle of Cinderbrew{} ability on the large {o}mound of cracked dirt{}.
|tip It appears as a button on the screen.
stickystart "Repel_The_Nerubian_Invasion"
step
Collapse the Nerubian Burrow |q 79721/3 |goto Isle of Dorn/0 58.22,50.49 |count 1
|tip Use the {o}Bottle of Cinderbrew{} ability on the large {o}mound of cracked dirt{}.
|tip It appears as a button on the screen.
step
Collapse the Nerubian Burrow |q 79721/3 |goto Isle of Dorn/0 56.79,49.37 |count 2
|tip Use the {o}Bottle of Cinderbrew{} ability on the large {o}mound of cracked dirt{}.
|tip It appears as a button on the screen.
step
Collapse the Nerubian Burrow |q 79721/3 |goto Isle of Dorn/0 55.03,49.49 |count 3
|tip Use the {o}Bottle of Cinderbrew{} ability on the large {o}mound of cracked dirt{}.
|tip It appears as a button on the screen.
step
Check Up on Alleria Windrunner |q 79701/2 |goto Isle of Dorn/0 56.26,50.25
step
label "Repel_The_Nerubian_Invasion"
Kill enemies around this area
|tip Some of them fly in the air.
Repel the Nerubian Invasion |q 79701/1 |goto Isle of Dorn/0 56.59,50.94
'|kill Nerubian Swarmer##216197, Clotweave Widow##216193, Venombane Spitter##216192, Armored Scuttler##216194, Necrofang Reaper##216191
step
talk Baelgrim##217766
turnin The Cavalry is Here##79701 |goto Isle of Dorn/0 56.45,48.09
step
talk Wenbrandt##212295
turnin Fire in the Hole##79721 |goto Isle of Dorn/0 56.42,47.95
step
talk Moira Thaurissan##217898
accept Convergence##78471 |goto Isle of Dorn/0 56.48,47.96
step
talk Moira Thaurissan##217905
|tip Inside the building.
turnin Convergence##78471 |goto Dornogal/0 40.17,26.03
step
talk Merrix##217904
|tip Inside the building.
accept Group Effort##78538 |goto Dornogal/0 39.87,26.01
step
use the Work Orders##213271+
|tip Use them on {o}Unbound Workers{}.
|tip They look like {o}dwarves{} around the perimeter of the large hole nearby.
Distribute #10# Orders |q 78538/1 |goto Dornogal/0 36.01,52.58
'|clicknpc Unbound Worker##222539
step
talk Merrix##212746
turnin Group Effort##78538 |goto Dornogal/0 36.01,52.58
step
talk Baelgrim##212747
accept Calling the Stormriders##80022 |goto Dornogal/0 36.05,52.80
step
Meet Baelgrim Outside Stormperch |q 80022/1 |goto Dornogal/0 32.16,35.72
step
talk Baelgrim##222177
Select _"Let's go. <Queue for follower dungeon.>"_ |gossip 122130
Speak to Baelgrim to Proceed |q 80022/2 |goto Dornogal/0 32.16,35.72
step
Enter The Rookery Dungeon |goto The Rookery/5 |q 80022
|tip You will automatically be queued to enter the dungeon.
step
Purge the Corruption from the Stormperch |q 80022/3
|tip Use the {o}Rookery{} dungeon guide to accomplish this.
|tip You can also use the {o}Dungeon Assistance{} ability.
|tip It appears as a button on the screen.
|tip Your {o}helpers will lead you{} through the dungeon.
step
clicknpc Stormrook##222818
|tip It looks like a {o}large blue gryphon{} standing on the platform nearby after you complete the dungeon.
Return to Dornogal |complete zone("Dornogal") |goto The Rookery/1 55.08,40.85 |q 80022
step
talk Merrix##212746
turnin Calling the Stormriders##80022 |goto Dornogal/0 36.00,52.58
step
talk Baelgrim##222555
accept Lasting Repairs##78539 |goto Dornogal/0 35.92,52.71
step
talk Baelgrim##222555
Select _"What is the plan?"_ |gossip 120626 |noautogossip
|tip You can watch the dialogue, or choose {o}"<Skip conversation> You can discuss this amongst yourselves."{}
Discuss the Plan to Fight the Nerubians |q 78539/1 |goto Dornogal/0 35.92,52.71
step
talk Baelgrim##222555
turnin Lasting Repairs##78539 |goto Dornogal/0 35.92,52.71
accept To the Meadery##78540 |goto Dornogal/0 35.92,52.71
step
talk Drelda##217542
fpath Durgaz Cabin |goto Isle of Dorn/0 67.48,43.31
step
talk Baelgrim##212749
turnin To the Meadery##78540 |goto Isle of Dorn/0 75.31,43.13
accept Lay the Trap##78541 |goto Isle of Dorn/0 75.31,43.13
step
talk Wenbrandt##212750
accept Evacuation Area##78542 |goto Isle of Dorn/0 75.31,43.17
stickystart "Evacuate_Unbound_Meadworkers"
step
click Rope Fuse
|tip On top of the {o}wooden beam{}.
Hold the Fuse |complete hasbuff(434279) or countremains(78541,1) <= 3 |goto Isle of Dorn/0 74.75,42.64 |q 78541
step
click Sizzling Keg
Connect the Fuse to the Keg |q 78541/1 |goto Isle of Dorn/0 74.78,42.71 |count 1
step
click Rope Fuse
|tip On top of the {o}wooden beam{}.
Hold the Fuse |complete hasbuff(450651) or countremains(78541,1) <= 2 |goto Isle of Dorn/0 74.50,42.20 |q 78541
step
click Sizzling Keg
Connect the Fuse to the Keg |q 78541/1 |goto Isle of Dorn/0 74.51,42.27 |count 2
step
click Rope Fuse
|tip On top of the {o}wooden beam{}.
Hold the Fuse |complete hasbuff(450652) or countremains(78541,1) <= 1 |goto Isle of Dorn/0 74.45,41.75 |q 78541
step
click Sizzling Keg
Connect the Fuse to the Keg |q 78541/1 |goto Isle of Dorn/0 74.41,41.75 |count 3
step
click Rope Fuse
|tip On top of the {o}wooden beam{}.
Hold the Fuse |complete hasbuff(450653) or readyq(78541) |goto Isle of Dorn/0 74.79,41.71 |q 78541
step
click Sizzling Keg
Connect the Fuse to the Keg |q 78541/1 |goto Isle of Dorn/0 74.79,41.66 |count 4
step
label "Evacuate_Unbound_Meadworkers"
clicknpc Unbound Meadworker##212452+
|tip They look like {o}dwarves{}.
Evacuate #8# Unbound Meadworkers |q 78542/1 |goto Isle of Dorn/0 74.64,43.21
step
talk Wenbrandt##212750
turnin Evacuation Area##78542 |goto Isle of Dorn/0 75.31,43.17
step
talk Baelgrim##212749
turnin Lay the Trap##78541 |goto Isle of Dorn/0 75.31,43.13
accept Poking the Spider Nest##78543 |goto Isle of Dorn/0 75.31,43.13
step
click Keg of Cinderbrew Mead
Take the Keg of Cinderbrew Mead |q 78543/1 |goto Isle of Dorn/0 74.53,40.97
step
Disturb the Nerubian Burrow |q 78543/2 |goto Isle of Dorn/0 75.08,38.81
|tip Use the {o}Throw Keg{} ability on the {o}large spider web{} nearby.
|tip It appears as a button on the screen.
step
talk Baelgrim##212756
turnin Poking the Spider Nest##78543 |goto Isle of Dorn/0 74.78,42.34
accept Bring the Thunder##78544 |goto Isle of Dorn/0 74.78,42.34
step
Place the Defenses |q 78544/1 |goto Isle of Dorn/0 74.63,42.43 |count 1
|tip Use the {o}Place Sticky Cinderhoney{} ability on the ground.
|tip {o}Enemies will swarm{} soon and the {o}honey will root them{} in place, making them {o}easier to target{}.
|tip You can use the other abilities, if you prefer.
|tip It doesn't really matter.
step
Place the Defenses |q 78544/1 |goto Isle of Dorn/0 74.65,42.22 |count 2
|tip Use the {o}Place Sticky Cinderhoney{} ability on the ground.
|tip {o}Enemies will swarm{} soon and the {o}honey will root them{} in place, making them {o}easier to target{}.
|tip You can use the other abilities, if you prefer.
|tip It doesn't really matter.
step
Place the Defenses |q 78544/1 |goto Isle of Dorn/0 74.74,42.14 |count 3
|tip Use the {o}Place Sticky Cinderhoney{} ability on the ground.
|tip {o}Enemies will swarm{} soon and the {o}honey will root them{} in place, making them {o}easier to target{}.
|tip You can use the other abilities, if you prefer.
|tip It doesn't really matter.
step
Place the Defenses |q 78544/1 |goto Isle of Dorn/0 74.84,42.13 |count 4
|tip Use the {o}Place Sticky Cinderhoney{} ability on the ground.
|tip {o}Enemies will swarm{} soon and the {o}honey will root them{} in place, making them {o}easier to target{}.
|tip You can use the other abilities, if you prefer.
|tip It doesn't really matter.
step
Place the Defenses |q 78544/1 |goto Isle of Dorn/0 74.89,41.33 |count 5
|tip Use the {o}Place Sticky Cinderhoney{} ability on the ground.
|tip {o}Enemies will swarm{} soon and the {o}honey will root them{} in place, making them {o}easier to target{}.
|tip You can use the other abilities, if you prefer.
|tip It doesn't really matter.
step
Place the Defenses |q 78544/1 |goto Isle of Dorn/0 74.46,41.26 |count 6
|tip Use the {o}Place Sticky Cinderhoney{} ability on the ground.
|tip {o}Enemies will swarm{} soon and the {o}honey will root them{} in place, making them {o}easier to target{}.
|tip You can use the other abilities, if you prefer.
|tip It doesn't really matter.
step
talk Baelgrim##212756
Select _"I have finished setting up our defenses."_ |gossip 120672
Speak to Baelgrim to Begin the Defense |q 78544/2 |goto Isle of Dorn/0 74.78,42.34
step
Kill the enemies that attack in waves
|tip They are on the ground as you fly.
|tip Use the abilities on your action bar.
Slay the Nerubians |q 78544/3 |goto Isle of Dorn/0 74.78,42.34
step
Watch the dialogue
Witness Baelgrim's Plan |q 78544/4 |goto Isle of Dorn/0 74.78,42.34
step
talk Adelgonn##217849
turnin Bring the Thunder##78544 |goto Isle of Dorn/0 75.10,43.82
accept Return to the Coreway##78545 |goto Isle of Dorn/0 75.10,43.82
step
talk Tordrin##217543
fpath Rambleshire |goto Isle of Dorn/0 59.16,28.58
step
Return to Merrix in Dornogal |q 78545/1 |goto Dornogal/0 32.07,59.69
step
talk Merrix##217880
turnin Return to the Coreway##78545 |goto Dornogal/0 32.07,59.69
accept Recompense##78546 |goto Dornogal/0 32.07,59.69
step
Watch the dialogue
talk Adelgonn##217883
Select _"Tell them what happened at the meadery."_ |gossip 120772 |noautogossip
|tip You can watch the dialogue, or choose {o}"<Skip conversation> We can give them the details later."{}
Speak to Adelgonn |q 78546/1 |goto Dornogal/0 31.85,59.27
step
Watch the dialogue
Listen to the Debriefing |q 78546/2 |goto Dornogal/0 31.85,59.27
step
talk Merrix##217880
Select _"Let's do it."_ |gossip 120762
Witness the Coreway's Restoration |q 78546/3 |goto Dornogal/0 32.07,59.69
step
talk Merrix##217880
turnin Recompense##78546 |goto Dornogal/0 32.06,59.69
step
|next "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"	|only if completedq(79573) and level < 80
|next "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\The Ringing Deeps (Story Only)"	|only if not completedq(79573) and level < 80
|next "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\The War Within Campaign"		|only if level >= 80 and completedallq(78546,81689,78630,84022)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The War Within (70-80)\\Story Campaigns\\The Ringing Deeps (Story Only)",{
author="support@zygorguides.com",
},[[
step
_NOTE:_
{o}It is Very Important to Avoid Accepting Quests that Aren't in this Guide{}
|tip Certain quests, when completed out of order, can permanently cause breadcrumb quests to become incomplete.
|tip This could cause issues with your quest flow.
|tip Disable automatically accepting all quests and avoid accepting quests from NPCs when not directed to.
Click Here to Continue |confirm
step
talk Moira Thaurissan##217887
accept Into the Deeps##80434 |goto Dornogal/0 31.98,59.86
|only if not (haveq(83550) or completedq(83550))
step
talk Speaker Brinthe##212592
turnin Into the Deeps##80434 |goto The Ringing Deeps/0 42.10,28.34	|only if (haveq(80434) or completedq(80434)) and not haveq(83550)
turnin The Ringing Deeps##83550 |goto The Ringing Deeps/0 42.10,28.34	|only if haveq(83550) or completedq(83550)
accept Underground and Overwhelmed##78555 |goto The Ringing Deeps/0 42.10,28.34
step
talk Foreman Uzjax##218290
accept Getting Off Track##78557 |goto The Ringing Deeps/0 42.12,28.27
stickystart "Help_The_Machine_Speakers_Secure_Ironhaul_Station"
step
clicknpc Buried Legs##215249
|tip You will be attacked.
Investigate the Area Around the Overturned Mine Cart |q 78557/1 |goto The Ringing Deeps/0 43.90,29.90
step
label "Help_The_Machine_Speakers_Secure_Ironhaul_Station"
clicknpc Injured Railhand##212390+
|tip They look like {o}dwarves{} laying on the ground.
click Nerubian Explosive Cache+
|tip They look like {o}large spiked metal balls{}.
click Priority Transport Crate+
|tip They look like {o}large wooden and metal chests{}.
kill Malfunctioning Railbot##218251+
|tip They look like {o}humanoid robots{}.
Help the Machine Speakers Secure Ironhaul Station |q 78555/1 |goto The Ringing Deeps/0 43.83,28.32
step
talk Foreman Uzjax##218290
turnin Getting Off Track##78557 |goto The Ringing Deeps/0 42.13,28.27
step
talk Speaker Brinthe##212592
turnin Underground and Overwhelmed##78555 |goto The Ringing Deeps/0 42.10,28.34
accept Pomp and Dire Circumstance##78837 |goto The Ringing Deeps/0 42.10,28.34
step
talk Speaker Brinthe##212592
Select _"Who is this "High Speaker" everyone keeps talking about?"_ |gossip 122955
Ask Speaker Brinthe About the High Speaker |q 78837/1 |goto The Ringing Deeps/0 42.10,28.34
step
talk Igram Underwing##215563
fpath Gundargaz |goto The Ringing Deeps/0 46.87,33.36
step
talk Speaker Brinthe##212741
|tip Inside the building.
turnin Pomp and Dire Circumstance##78837 |goto The Ringing Deeps/0 47.19,34.17
accept Cogs in the Machine##78838 |goto The Ringing Deeps/0 47.19,34.17
step
talk Igram Underwing##215563
Select _"Are you Underwing?"_ |gossip 121192
Meet Igram Underwing |q 78838/1 |goto The Ringing Deeps/0 46.87,33.36
step
talk Speaker Jurlax##213875
Select _"Speaker Jurlax?"_ |gossip 121195
Meet Speaker Jurlax |q 78838/2 |goto The Ringing Deeps/0 46.95,32.41
step
talk Watcher Toki##213869
Select _"Watcher Toki, I presume?"_ |gossip 121196
Meet Watcher Toki |q 78838/3 |goto The Ringing Deeps/0 48.04,34.83
step
Return to Brinthe's House |q 78838/4 |goto The Ringing Deeps/0 47.19,34.17
|tip Inside the building.
step
talk Speaker Brinthe##212741
|tip Inside the building.
turnin Cogs in the Machine##78838 |goto The Ringing Deeps/0 47.19,34.17
accept Speaking to the Speakers##78631 |goto The Ringing Deeps/0 47.19,34.17
step
talk Emergency Militia##212839+
Select _"Speaker Brinthe and I are going to investigate the kobold incursion. Hold on until we get back."_ |gossip 120320
Reassure #3# Defenders |q 78631/1 |goto The Ringing Deeps/0 51.84,29.58
step
Scout the Vantage Point |q 78631/2 |goto The Ringing Deeps/0 57.65,29.14
step
Watch the dialogue
talk Speaker Brinthe##212519
turnin Speaking to the Speakers##78631 |goto The Ringing Deeps/0 57.65,29.14
accept Leave No Stone Behind##78634 |goto The Ringing Deeps/0 57.65,29.14
accept Kobold Shoulder##78839 |goto The Ringing Deeps/0 57.65,29.14
step
talk Skitter##212269
accept Death and Waxes##78635 |goto The Ringing Deeps/0 57.68,29.15
stickystart "Collect_Flickerflame_Candles"
stickystart "Slay_Flickerflame_Kobolds"
step
click Fallen Earthen
Collect the Earthen Identification Plaque |q 78634/1 |goto The Ringing Deeps/0 56.47,24.85 |count 1
collect Faded Memory Gem##212178 |n |only if not completedq(78634)
accept Broken Memories##79206 |goto The Ringing Deeps/0 56.47,24.85 |only if not completedq(78634)
step
click Fallen Earthen
Collect the Earthen Identification Plaque |q 78634/1 |goto The Ringing Deeps/0 58.82,25.07 |count 2
step
click Fallen Earthen
Collect the Earthen Identification Plaque |q 78634/1 |goto The Ringing Deeps/0 61.51,23.53 |count 3
step
click Fallen Earthen
Collect the Earthen Identification Plaque |q 78634/1 |goto The Ringing Deeps/0 58.16,20.94 |count 4
step
label "Collect_Flickerflame_Candles"
Kill Flickerflame enemies around this area
|tip Some of them fly in the air. |notinsticky
|tip The {o}Flickerflame Dirtclaw{} animals {o}won't drop{} the {o}quest item{}. |notinsticky
click Flickerflame Candles+
|tip They look like {o}bundles of white candles{}.
collect 12 Flickerflame Candle##210878 |q 78635/1 |goto The Ringing Deeps/0 59.33,25.41
'|kill Flickerflame Kobold##212536, Flickerflame Sticker##212629, Flickerflame Scrabbler##212515, Flickerflame Geomancer##212528, Flickerflame Enforcer##212548, Flickerflame Candlekeeper##212524, Flickerflame Candleflyer##219341, Flickerflame Overseer##212542
step
label "Slay_Flickerflame_Kobolds"
Kill Flickerflame enemies around this area |notinsticky
|tip Some of them fly in the air. |notinsticky
|tip The {o}Flickerflame Dirtclaw{} animals {o}won't count{}. |notinsticky
Slay #24# Flickerflame Kobolds |q 78839/1 |goto The Ringing Deeps/0 58.78,25.48
'|kill Flickerflame Kobold##212536, Flickerflame Sticker##212629, Flickerflame Scrabbler##212515, Flickerflame Geomancer##212528, Flickerflame Enforcer##212548, Flickerflame Candlekeeper##212524, Flickerflame Candleflyer##219341, Flickerflame Overseer##212542
step
talk Skitter##212269
turnin Death and Waxes##78635 |goto The Ringing Deeps/0 57.68,29.14
step
talk Speaker Brinthe##212519
turnin Leave No Stone Behind##78634 |goto The Ringing Deeps/0 57.65,29.14
turnin Kobold Shoulder##78839 |goto The Ringing Deeps/0 57.65,29.14
turnin Broken Memories##79206 |goto The Ringing Deeps/0 57.65,29.14 |only if haveq(79206) or completedq(79206)
accept Engineering Destruction##78638 |goto The Ringing Deeps/0 57.65,29.14
step
talk Skitter##212269
accept Cracking Cogchewer##78637 |goto The Ringing Deeps/0 57.69,29.15
step
Enter the Storage Depot |q 78638/1 |goto The Ringing Deeps/0 57.64,24.20
stickystart "Scuttle_Mining_Rigs"
step
kill Cogchewer##212617
collect Cogchewer's Keys##211865 |q 78637/2 |goto The Ringing Deeps/0 55.88,21.01
step
label "Scuttle_Mining_Rigs"
click Abandoned Mining Rig+
|tip They look like {o}broken down robots{}.
kill Sparklit Rust Crusher##212597+
|tip They look like {o}brown humanoids robots{}.
Scuttle #8# Mining Rigs |q 78638/2 |goto The Ringing Deeps/0 56.03,22.65
step
Leave the Storage Depot |goto The Ringing Deeps/0 57.65,24.20 < 15 |walk |only if subzone("Lost Mines") and indoors()
talk Skitter##212269
turnin Cracking Cogchewer##78637 |goto The Ringing Deeps/0 57.69,29.15
step
talk Speaker Brinthe##212519
turnin Engineering Destruction##78638 |goto The Ringing Deeps/0 57.65,29.14
accept Retaking the Mines##78636 |goto The Ringing Deeps/0 57.65,29.14
step
click Sealed Gate
Watch the dialogue
Open the Gate |q 78636/1 |goto The Ringing Deeps/0 59.65,21.52
step
kill Wickbreaker##215077 |q 78636/2 |goto The Ringing Deeps/0 59.43,22.16
step
talk Speaker Brinthe##215671
|tip She walks to this location.
turnin Retaking the Mines##78636 |goto The Ringing Deeps/0 59.51,21.74
step
talk Skitter##215672
accept Manifesto Destiny##78640 |goto The Ringing Deeps/0 59.54,21.75
step
Scout a Safe Area |q 78640/2 |goto The Ringing Deeps/0 61.50,32.00
step
Distribute #120# Pamphlets |q 78640/3 |goto The Ringing Deeps/0 64.78,32.29
|tip You will {o}automatically throw pamphlets{} while mounted.
|tip Fly through the {o}large rings in the air{} to throw {o}many pamphlets{} quickly.
step
talk Skitter##212991
turnin Manifesto Destiny##78640 |goto The Ringing Deeps/0 61.50,32.02
accept Ko-boldening##78639 |goto The Ringing Deeps/0 61.50,32.02
accept Not Waste, Not Want##79205 |goto The Ringing Deeps/0 61.50,32.02
stickystart "Free_Oppressed_Kobolds"
stickystart "Collect_Useful_Looking_Scraps"
step
click Sizzling Barrel+
|tip They look like {o}larger wooden barrels{}.
collect 3 Unstable Cinderbrew Barrel##217015 |q 79205/2 |goto The Ringing Deeps/0 64.53,33.00
step
label "Free_Oppressed_Kobolds"
kill Waxtail Browbeater##213000+
|tip They look like {o}much larger kobolds{}.
kill Waxtail Tormentor##212983+
|tip They look like {o}larger kobolds with whips{}.
Free #10# Oppressed Kobolds |q 78639/1 |goto The Ringing Deeps/0 64.53,33.00
step
label "Collect_Useful_Looking_Scraps"
Kill Waxtail enemies around this area
|tip Waxtail Browbeaters and Tormentors will not drop the quest item. |notinsticky
click Intriguing Scrap+
|tip They look like {o}various different objects{}.
collect 24 Useful Looking Scrap##212177 |q 79205/1 |goto The Ringing Deeps/0 64.53,33.00
'|kill Waxtail Scavenger##212985, Waxtail Trapper##212987, Waxtail Candleflyer##219343, Waxtail Outrider##213095, Waxtail Dirtcaller##212988
step
talk Skitter##212991
turnin Ko-boldening##78639 |goto The Ringing Deeps/0 61.50,32.02
turnin Not Waste, Not Want##79205 |goto The Ringing Deeps/0 61.50,32.02
accept Tackling Torchsnarl##78641 |goto The Ringing Deeps/0 61.50,32.02
step
talk Speaker Brinthe##212992
accept Wax On, Pot Off##79267 |goto The Ringing Deeps/0 61.49,31.98
stickystart "Ruin_Wax_Pots"
step
Enter the cave |goto The Ringing Deeps/0 66.79,29.13 < 30 |walk
kill Torchsnarl##212993
|tip Inside the cave.
Defeat Torchsnarl |q 78641/1 |goto The Ringing Deeps/0 67.25,28.25
step
label "Ruin_Wax_Pots"
click Kobold Cauldron+
|tip They look like {o}huge pots with yellow liquid{} in them.
Ruin #6# Wax Pots |q 79267/1 |goto The Ringing Deeps/0 66.22,30.26
step
talk Speaker Brinthe##212992
turnin Wax On, Pot Off##79267 |goto The Ringing Deeps/0 61.49,31.98
step
talk Skitter##212991
turnin Tackling Torchsnarl##78641 |goto The Ringing Deeps/0 61.50,32.02
accept New Candle, New Hope##78642 |goto The Ringing Deeps/0 61.50,32.02
step
talk Skitter##212991
Select _"I'm ready to infiltrate Darkflame Cleft."_ |gossip 119957
Speak with Skitter to Enter the Darkflame Cleft |q 78642/1 |goto The Ringing Deeps/0 61.50,32.02
step
click Discarded Loot
|tip You can open it {o}after killing the last boss{} in the delve.
|tip Complete the Darkflame Cleft delve to accomplish this.
|tip The delve is simple to complete.
Retrieve the Candle Crown |q 78642/2 |goto Darkflame Cleft Scenario/0 44.45,89.81
step
Watch the dialogue
talk Skitter##216103
Select _"Let's get out of here!"_ |gossip 119961
Speak with Skitter to Exit the Darkflame Cleft |complete subzone("The Warrens") |goto Darkflame Cleft Scenario/0 41.53,90.00 |q 78642
step
talk Skitter##212991
turnin New Candle, New Hope##78642 |goto The Ringing Deeps/0 61.49,32.02
step
talk Speaker Brinthe##212992
accept Back to Gundargaz##80082 |goto The Ringing Deeps/0 61.49,31.98
step
talk Speaker Brinthe##218715
turnin Back to Gundargaz##80082 |goto The Ringing Deeps/0 47.09,33.23
step
talk Moira Thaurissan##218714
accept A Wrench in the Works##80079 |goto The Ringing Deeps/0 47.13,33.24
step
talk Concerned Machine Speaker##219158
Select _"Now is the time to speak up."_ |gossip 121184
Hear the Grievance |q 80079/1 |goto The Ringing Deeps/0 47.22,32.33 |count 1
step
talk Concerned Machine Speaker##218722
Select _"Now is the time to speak up."_ |gossip 121182
Hear the Grievance |q 80079/1 |goto The Ringing Deeps/0 47.27,32.21 |count 2
step
talk Agitated Machine Speaker##218724
Select _"Now is the time to speak up."_ |gossip 121038
Hear the Grievance |q 80079/1 |goto The Ringing Deeps/0 47.22,32.01 |count 3
step
talk Agitated Machine Speaker##219155
Select _"Now is the time to speak up."_ |gossip 121181
Hear the Grievance |q 80079/1 |goto The Ringing Deeps/0 47.14,32.13 |count 4
step
talk Moira Thaurissan##218714
turnin A Wrench in the Works##80079 |goto The Ringing Deeps/0 47.13,33.23
step
talk Speaker Brinthe##218715
accept The Tunnel's End##78685 |goto The Ringing Deeps/0 47.09,33.23
step
talk Milgrit Stonefeather##218388
fpath Shadowvein Point |goto The Ringing Deeps/0 61.44,47.95
step
talk Kargen Ironbrow##224940
fpath Camp Murroch |goto The Ringing Deeps/0 58.16,64.05
step
talk Clixi Fastfare##224884
fpath Opportunity Point |goto The Ringing Deeps/0 64.71,78.08
step
Find Magni and Dagran Near Taelloch |q 78685/1 |goto The Ringing Deeps/0 60.40,59.79
step
talk Magni Bronzebeard##213612
turnin The Tunnel's End##78685 |goto The Ringing Deeps/0 60.40,59.79
accept We Don't Go to Taelloch##78696 |goto The Ringing Deeps/0 60.40,59.79
step
Kill enemies around this area
Kill #6# Encroaching Wildlife |q 78696/1 |goto The Ringing Deeps/0 62.13,59.83
'|kill Invasive Witherling##219913, Territorial Deepflayer##219902, Emboldened Fog Wither##219909
step
Find Magni and Dagran |q 78696/2 |goto The Ringing Deeps/0 62.51,58.69
|tip In the doorway of the building.
step
talk Dagran Thaurissan II##213634
|tip Inside the building.
turnin We Don't Go to Taelloch##78696 |goto The Ringing Deeps/0 62.31,58.14
accept Ghost of a Company Town##78697 |goto The Ringing Deeps/0 62.31,58.14
step
talk Magni Bronzebeard##213633
|tip Inside the building.
Select _"I am ready to go."_ |gossip 123513
Tell Magni You Are Ready to Go |q 78697/1 |goto The Ringing Deeps/0 62.31,58.08
step
Enter the Town |q 78697/2 |goto The Ringing Deeps/0 63.85,58.36
step
click Earthen Slate
|tip Use the {o}Investigate{} ability to reveal it.
|tip It appears as a button on the screen.
Investigate and Inspect the Clue |q 78697/3 |goto The Ringing Deeps/0 64.16,58.06 |count 1
step
click Full Mug
|tip Use the {o}Investigate{} ability to reveal it.
|tip It appears as a button on the screen.
Investigate and Inspect the Clue |q 78697/3 |goto The Ringing Deeps/0 64.13,58.63 |count 2
step
click Hastily Constructed Blockade
|tip Use the {o}Investigate{} ability to reveal it.
|tip It appears as a button on the screen.
Investigate and Inspect the Clue |q 78697/3 |goto The Ringing Deeps/0 63.49,57.83 |count 3
step
click Earthen Slate
|tip Use the {o}Investigate{} ability to reveal it.
|tip It appears as a button on the screen.
Investigate and Inspect the Clue |q 78697/3 |goto The Ringing Deeps/0 65.08,57.85 |count 4
step
click Earthen Hammer
|tip Use the {o}Investigate{} ability to reveal it.
|tip It appears as a button on the screen.
Investigate and Inspect the Clue |q 78697/3 |goto The Ringing Deeps/0 65.32,58.70 |count 5
step
click Hastily Constructed Blockade
|tip Use the {o}Investigate{} ability to reveal it.
|tip It appears as a button on the screen.
Investigate and Inspect the Clue |q 78697/3 |goto The Ringing Deeps/0 65.84,57.41 |count 6
step
click Barricade
Investigate the Call for Help |q 78697/4 |goto The Ringing Deeps/0 66.05,58.34
step
talk Magni Bronzebeard##216479
|tip Inside the building.
turnin Ghost of a Company Town##78697 |goto The Ringing Deeps/0 66.14,58.36
accept Controlled Demolition##78700 |goto The Ringing Deeps/0 66.14,58.36
step
_Next to you:_
talk Dagran Thaurissan II##214892
accept The Truth in Chalk##78701
stickystart "Slay_Skardyn"
step
click Earthen Slate
Find the First Slate |q 78701/1 |goto The Ringing Deeps/0 66.02,60.43
step
click Earthen Slate
|tip Inside the small cave.
Find the Second Slate |q 78701/2 |goto The Ringing Deeps/0 61.47,62.66
step
click Earthen Slate
|tip Inside the small cave.
Find the Third Slate |q 78701/3 |goto The Ringing Deeps/0 64.44,65.06
step
click Earthen Slate
Find the Fourth Slate |q 78701/4 |goto The Ringing Deeps/0 67.26,63.99
step
_Next to you:_
talk Dagran Thaurissan II##214892
turnin The Truth in Chalk##78701
step
label "Slay_Skardyn"
Kill enemies around this area
Slay #18# Skardyn |q 78700/1 |goto The Ringing Deeps/0 64.86,62.11
'|kill Reconstructed Skardyn##219245, Corrupted Spellshaper##219302, Unstable Skardyn##223414, Cursed Miner##213565, Hijacked Ironstrider##219287, Voidtouched Speaker##223469, Skardyn Husk##213566
step
_Next to you:_
talk Magni Bronzebeard
turnin Controlled Demolition##78700
'|talk Magni Bronzebeard##214890
step
_Next to you:_
talk Dagran Thaurissan II##214892
accept Buried in Stone##78703
step
Locate the entrance of the cave |goto The Ringing Deeps/0 67.39,62.00 < 15 |walk
Enter the Cave |q 78703/1 |goto The Ringing Deeps/0 68.00,61.81
|tip Inside the cave.
step
Explore the Cave |q 78703/2 |goto The Ringing Deeps/0 68.46,62.88
|tip Inside the cave.
step
kill Cave Blockage##216508
|tip It looks like a {o}wall of boulders{} blocking the path.
|tip Inside the cave.
Destroy the Blockage |q 78703/3 |goto The Ringing Deeps/0 68.46,62.88
step
_Next to you:_
talk Dagran Thaurissan II##214892
turnin Buried in Stone##78703
step
_Next to you:_
talk Magni Bronzebeard
accept Find the Foreman##78704
'|talk Magni Bronzebeard##214890
step
kill Kol Bruncrag##213658
|tip Upstairs inside the cave.
Confront the Foreman |q 78704/1 |goto The Ringing Deeps/0 68.47,64.18
step
_Next to you:_
talk Magni Bronzebeard
turnin Find the Foreman##78704
'|talk Magni Bronzebeard##214890
step
_Next to you:_
talk Dagran Thaurissan II##214892
accept What She Saw##78705
step
click Memory Gem
|tip Inside the cave, on the ground floor.
Examine the Gem |q 78705/1 |goto The Ringing Deeps/0 68.58,64.45
step
Watch the dialogue
|tip Inside the cave, on the ground floor.
View the Memory |q 78705/2 |goto The Ringing Deeps/0 68.57,64.35
step
talk Dagran Thaurissan II##219453
|tip Inside the cave, on the ground floor.
turnin What She Saw##78705 |goto The Ringing Deeps/0 68.57,64.35
step
talk Magni Bronzebeard##219452
|tip Inside the cave, on the ground floor.
accept The High Speaker's Secret##78706 |goto The Ringing Deeps/0 68.55,64.35
step
Leave the cave |goto The Ringing Deeps/0 67.61,62.01 < 20 |walk |only if subzone("Taelloch Mine") and indoors()
talk Speaker Brinthe##212741
|tip Inside the building.
turnin The High Speaker's Secret##78706 |goto The Ringing Deeps/0 47.19,34.17
accept Absent Speaker##78738 |goto The Ringing Deeps/0 47.19,34.17
step
talk Speaker Brinthe##213569
|tip On the other side of the mountain.
turnin Absent Speaker##78738 |goto The Ringing Deeps/0 47.13,20.72
accept Sympathetic Speakers##78741 |goto The Ringing Deeps/0 47.13,20.72
step
talk Moira Thaurissan##213763
accept Battle of the Earthenworks##78742 |goto The Ringing Deeps/0 47.08,20.71
stickystart "Fight_The_High_Speakers_Followers_In_The_Earthenworks"
step
talk Foreman Gesa##213674
|tip He walks around this area.
Select _"Can you help us?"_ |gossip 121209
kill Foreman Gesa##213674
Confront Foreman Gesa |q 78741/1 |goto The Ringing Deeps/0 50.33,21.20
step
talk Foreman Otan##213673
Select _"Can you help us?"_ |gossip 121212
kill Foreman Otan##213673
Confront Foreman Otan |q 78741/2 |goto The Ringing Deeps/0 45.80,14.04
step
Confront Foreman Uzjax |q 78741/3 |goto The Ringing Deeps/0 48.99,17.44
|tip Inside the small room beneath the bridge.
step
Watch the dialogue
talk Speaker Brinthe##219428
|tip She appears at this location.
turnin Sympathetic Speakers##78741 |goto The Ringing Deeps/0 49.02,17.31
step
label "Fight_The_High_Speakers_Followers_In_The_Earthenworks"
Kill enemies around this area
clicknpc Assembly Worker##213543+
|tip They look like {o}scared dwarves{}.
click Broken Machinery+
|tip They look like {o}pillars shooting fireballs{}.
Fight the High Speaker's Followers in The Earthenworks |q 78742/1 |goto The Ringing Deeps/0 47.63,17.18
'|kill Dogmatic Machine Speaker##212878, High Speaker's Construct##219635, Dogmatic Forgecaster##212884, Swarming Cogwalker##213962, Earthenwork Ironstrider##213951, Dogmatic Soot-Seer##212876, Slag Elemental##212885
step
talk Moira Thaurissan##213763
turnin Battle of the Earthenworks##78742 |goto The Ringing Deeps/0 47.08,20.71
|tip {o}Do not accept{} the follow-up quest {o}Dark Iron from Above{}.
|tip You will be unable to accept the next quest.
step
talk Foreman Uzjax##213672
accept Return to Moira##81798 |goto The Ringing Deeps/0 48.97,17.44
|tip {o}Do not accept{} the follow-up quest {o}Dark Iron from Above{} from Moira.
|tip You will be unable to accept this quest.
step
talk Moira Thaurissan##213763
turnin Return to Moira##81798 |goto The Ringing Deeps/0 47.08,20.71
accept Dark Iron from Above##78760 |goto The Ringing Deeps/0 47.08,20.71
step
Watch the dialogue
talk Moira Thaurissan##213763
Select _"I'm ready, let's go!"_ |gossip 120506
Speak with Moira |q 78760/1 |goto The Ringing Deeps/0 47.08,20.71
step
Begin Flying to Supervisor Varric |invehicle |goto The Ringing Deeps/0 47.08,20.71 |q 78760
step
Fly to Supervisor Varric |outvehicle |goto The Ringing Deeps/0 49.60,15.39 |q 78760
step
kill Supervisor Varric##223263 |q 78760/2 |goto The Ringing Deeps/0 49.58,14.39
step
click Varric's Damaged Ironstrider
Mount Varric's Damaged Ironstrider |q 78760/3 |goto The Ringing Deeps/0 46.84,14.06
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Defeat the Attacking Forces |q 78760/4 |goto The Ringing Deeps/0 46.84,14.06
'|kill Swarming Cogwalker##213962, Zealous Ironguard##223904, Zealot's Guardbot##223911
step
talk Moira Thaurissan##213796
turnin Dark Iron from Above##78760 |goto The Ringing Deeps/0 46.70,10.26
accept Into the Machine##78761 |goto The Ringing Deeps/0 46.70,10.26
step
Enter the Halls of Awakening |q 78761/1 |goto The Ringing Deeps/0 46.44,8.76
|tip {o}Follow your allies{} into the {o}swirling portal{}.
|tip Inside the building.
step
Begin the Scenario |scenariostart |q 78761
step
_Inside the Halls of Awakening:_
Follow the Trail of the High Speaker into the Hall of Awakening |scenariogoal 1/65229 |goto Hall of Awakening Scenario/0 22.65,49.54 |q 78761
|tip Follow the path with your allies.
step
_Inside the Halls of Awakening:_
click Ironfuse Bomb+
|tip They look like {o}grey round balls{} on the floor.
|tip You will get a {o}time limited buff{} that gives you an ability, {o}so hurry{}.
Destroy #4# Inferno Sprayers |scenariogoal 2/66045 |goto Hall of Awakening Scenario/0 28.75,49.61 |q 78761
|tip They look like {o}turrets shooting fireballs{}.
|tip Use the {o}Ironfuse Bomb{} ability on them.
|tip It appears as a button on the screen.
step
_Inside the Halls of Awakening:_
Journey Deeper into the Hall of Awakening |scenariogoal 3/65469 |goto Hall of Awakening Scenario/0 37.08,49.59 |q 78761
|tip Follow the path with your allies.
step
_Inside the Halls of Awakening:_
click Earthen Console
|tip Follow the path with your allies.
Help Dagran Activate the Runelock Sequence |scenariogoal 4/65423 |goto Hall of Awakening Scenario/0 42.73,45.18 |q 78761
step
_Inside the Halls of Awakening:_
Kill the enemies that attack
Protect Dagran While He Solves the Runelock Combination |scenariostage 5 |goto Hall of Awakening Scenario/0 43.29,43.26 |q 78761
'|kill Deranged Skardyn##217672, Skardyn Remnants##216487, Skardyn Metamorphosis##219148, Deviant Skardyn##217610, Enraged Skardyn##213743, Void Crystal Monstrosity##217200, Deranged Skardyn##217684
step
_Inside the Halls of Awakening:_
Enter the Annihilation Interface |scenariogoal 6/65482 |goto Hall of Awakening Scenario/0 55.43,49.58 |q 78761
|tip Follow the path with your allies.
stickystart "Defeat_The_Iron_Runed_Protector"
step
_Inside the Halls of Awakening:_
kill Earthen-Ward Sentinel##216221
Defeat the Earthen-Ward Sentinel |scenariogoal 6/65444 |goto Hall of Awakening Scenario/0 59.68,49.51 |q 78761
step
label "Defeat_The_Iron_Runed_Protector"
_Inside the Halls of Awakening:_ |notinsticky
kill Iron-Runed Protector##214576
Defeat the Iron-Runed Protector |scenariogoal 6/65446 |goto Hall of Awakening Scenario/0 59.68,49.51 |q 78761
step
_Inside the Halls of Awakening:_
Enter the Final Chamber |scenariogoal 7/65497 |goto Hall of Awakening Scenario/0 77.34,49.46 |q 78761
|tip Follow the path with your allies.
step
_Inside the Halls of Awakening:_
kill Master Machinist Dunstan##217353
Defeat Master Machinist Dunstan |scenariogoal 8/65464 |goto Hall of Awakening Scenario/0 85.44,49.38 |q 78761
'|kill Master Machinist Dunstan##217435
step
_Inside the Halls of Awakening:_
Watch the dialogue
Confront High Speaker Eirich at the Awakening Machine |scenarioend |goto Hall of Awakening Scenario/0 87.40,49.44 |q 78761
Confront the High Speaker in the Halls of Awakening |q 78761/2 |goto Hall of Awakening Scenario/0 87.40,49.44
step
talk Moira Thaurissan##212742
|tip Inside the building.
turnin Into the Machine##78761 |goto The Ringing Deeps/0 47.17,34.12
accept The Machine Speakers##79354 |goto The Ringing Deeps/0 47.17,34.12
step
Watch the dialogue
|tip Inside the building.
talk Moira Thaurissan##212742
turnin The Machine Speakers##79354 |goto The Ringing Deeps/0 47.17,34.12
accept Orientation: Gundargaz##81689 |goto The Ringing Deeps/0 47.17,34.12
|tip If you cannot accept this quest, log out and log back in.
step
talk Waxmonger Squick##221390
Speak to Waxmonger Squick |q 81689/1 |goto The Ringing Deeps/0 47.30,32.93
step
Watch the dialogue
|tip Inside the building.
talk Moira Thaurissan##212742
turnin Orientation: Gundargaz##81689 |goto The Ringing Deeps/0 47.17,34.12
step
|next "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"	|only if completedq(79573) and level < 80
|next "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Hallowfall (Story Only)"		|only if not completedq(79573) and level < 80
|next "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\The War Within Campaign"		|only if level >= 80 and completedallq(78546,81689,78630,84022)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Hallowfall (Story Only)",{
author="support@zygorguides.com",
},[[
step
_NOTE:_
{o}It is Very Important to Avoid Accepting Quests that Aren't in this Guide{}
|tip Certain quests, when completed out of order, can permanently cause breadcrumb quests to become incomplete.
|tip This could cause issues with your quest flow.
|tip Disable automatically accepting all quests and avoid accepting quests from NPCs when not directed to.
Click Here to Continue |confirm
step
talk Anduin Wrynn##213983
accept The Hallowed Path##78658 |goto The Ringing Deeps/0 47.08,32.22
step
Find the Gate to Hallowfall |q 78658/1 |goto The Ringing Deeps/0 40.68,24.11
step
talk Anduin Wrynn##213120
Select _"I'm ready."_ |gossip 120906
Speak with Anduin in Hallowfall |q 78658/2 |goto Hallowfall/0 77.17,43.00
step
Meet the Arathi in Dunelle's Kindness |q 78658/3 |goto Hallowfall/0 68.40,45.11
step
Watch the dialogue
talk Faerin##213116
turnin The Hallowed Path##78658 |goto Hallowfall/0 68.40,45.11	|only if (haveq(78658) or completedq(78658)) and not haveq(83551)
turnin Hallowfall##83551 |goto Hallowfall/0 68.40,45.11		|only if haveq(83551) or completedq(83551)
accept Where the Light Touches##78659 |goto Hallowfall/0 68.40,45.11
step
talk Auro Flitter##217639
fpath Dunelle's Kindness |goto Hallowfall/0 67.48,44.62
step
click Relief Cart
|tip This step is {o}optional{}.
|tip You can {o}skip this step{} if you {o}don't want to listen{} to the story.
Ride with Faerin to the Aegis Wall |q 78659/1 |goto Hallowfall/0 68.22,45.17
step
Arrive at the Aegis Wall |q 78659/2 |goto Hallowfall/0 71.43,57.50 |notravel
step
talk Great Kyron##224310
turnin Where the Light Touches##78659 |goto Hallowfall/0 71.62,57.59
accept Tunnel Trouble##78665 |goto Hallowfall/0 71.62,57.59
step
talk Faerin##213116
accept Igniting Hope##79999 |goto Hallowfall/0 71.57,57.59
step
talk Vellas Tearen##218298
fpath The Aegis Wall |goto Hallowfall/0 71.37,56.50
stickystart "Collect_Shattered_Remnants_From_Nerubians"
step
click Nerubian Burrow+
|tip They look like large {o}dusty piles of cracked dirt{}.
|tip You will be attacked.
Destroy #6# Nerubian Burrows |q 78665/1 |goto Hallowfall/0 69.96,58.78
step
label "Collect_Shattered_Remnants_From_Nerubians"
Kill enemies around this area
|tip Some of them fly in the air.
Collect #5# Shattered Remnants from Nerubians |q 79999/1 |goto Hallowfall/0 71.34,61.09
'|kill Dreadstrike Subjugator##213129, Dreadstrike Flitterer##213320, Dreadstrike Priest##213189, Dreadstrike Ambusher##217481
step
click Aegis Keyflame
|tip Up on the wall.
|tip Click it {o}repeatedly{}.
Empower the Aegis Keyflame by Shattered Remnants #5# Times |q 79999/2 |goto Hallowfall/0 70.04,61.06
step
talk Faerin##213116
|tip Up on the wall.
turnin Igniting Hope##79999 |goto Hallowfall/0 70.12,61.00
step
talk Great Kyron##224310
|tip Up on the wall.
turnin Tunnel Trouble##78665 |goto Hallowfall/0 70.06,61.31
accept The Only Good Spider##78666 |goto Hallowfall/0 70.06,61.31
step
talk Faerin##213116
|tip Up on the wall.
accept Rekindled Memories##78667 |goto Hallowfall/0 70.12,60.99
stickystart "Slay_Nerubian_Attackers"
step
click Fallen Defender+
|tip They look like {o}armored humans{} laying on the ground.
Recover #6# Tinderboxes |q 78667/1 |goto Hallowfall/0 71.61,61.20
step
label "Slay_Nerubian_Attackers"
Kill enemies around this area
|tip Some of them fly in the air.
Slay #12# Nerubian Attackers |q 78666/1 |goto Hallowfall/0 71.17,60.94
'|kill Dreadstrike Subjugator##213129, Dreadstrike Flitterer##213320, Dreadstrike Priest##213189
step
talk Great Kyron##224310
|tip Up on the wall.
turnin The Only Good Spider##78666 |goto Hallowfall/0 70.06,61.31
step
talk Faerin##213116
|tip Up on the wall.
turnin Rekindled Memories##78667 |goto Hallowfall/0 70.12,61.00
accept Rally on the Dawnbreaker##78668 |goto Hallowfall/0 70.12,61.00
step
talk Faerin##224945
|tip On the deck of the airship.
turnin Rally on the Dawnbreaker##78668 |goto Hallowfall/0 57.50,64.43
accept Siege Weapon Sabotage##78670 |goto Hallowfall/0 57.50,64.43
step
talk Great Kyron##224946
|tip On the deck of the airship.
accept For Their Eyes Only##78669 |goto Hallowfall/0 57.50,64.39
stickystart "Collect_Sureki_Shadecasters"
step
click Blackpowder Barrel+
|tip They look like {o}brown wooden barrels{}.
collect 4 Keg of Black Powder##213630 |q 78670/1 |goto Hallowfall/0 57.01,65.95
step
click Blackpowder Barrel
Destroy the Siege Weapon |q 78670/2 |goto Hallowfall/0 59.40,65.43 |count 1
step
click Blackpowder Barrel
Destroy the Siege Weapon |q 78670/2 |goto Hallowfall/0 59.62,66.18 |count 2
step
click Blackpowder Barrel
Destroy the Siege Weapon |q 78670/2 |goto Hallowfall/0 59.64,66.70 |count 3
step
click Blackpowder Barrel
Destroy the Siege Weapon |q 78670/2 |goto Hallowfall/0 59.69,67.40 |count 4
step
label "Collect_Sureki_Shadecasters"
Kill enemies around this area
|tip Only enemies that look like {o}spiders{} will drop the quest item.
collect 3 Sureki Shadecaster##216658 |q 78669/1 |goto Hallowfall/0 57.01,65.95
'|kill Direweb Marauder##221302, Direweb Lasher##221303, Direweb Ritualist##221300
step
talk Anduin Wrynn##213120
|tip On the deck of the airship.
turnin For Their Eyes Only##78669 |goto Hallowfall/0 57.54,64.33
turnin Siege Weapon Sabotage##78670 |goto Hallowfall/0 57.54,64.33
accept Zero out Xerosh##82836 |goto Hallowfall/0 57.54,64.33
step
kill Siegelord Xerosh##224311 |q 82836/1 |goto Hallowfall/0 57.71,68.14
step
talk Anduin Wrynn##213120
turnin Zero out Xerosh##82836 |goto Hallowfall/0 56.90,68.27
accept The Light of the Dawntower##78671 |goto Hallowfall/0 56.90,68.27
step
talk Anduin Wrynn##217826
Select _"I'm ready."_ |gossip 120738
Witness the Lighting of the Dawntower |q 78671/1 |goto Hallowfall/0 54.10,64.65
step
talk Faerin##213116
turnin The Light of the Dawntower##78671 |goto Hallowfall/0 54.11,64.70
accept A Lamplighter's Duty##78672 |goto Hallowfall/0 54.11,64.70
step
talk Gear Flamepierce##218300
fpath Lightspark |goto Hallowfall/0 52.86,61.33
step
clicknpc Lamplighter Skiff##215779
Begin Taking the Skiff to Lorel's Crossing |complete invehicle() and subzone("Tenir's Ascent") |goto Hallowfall/0 53.89,64.09 |q 78672
step
Watch the dialogue
Kill the enemies that attack
|tip The skiff will {o}stop multiple times{}.
|tip The enemies fly up to the skiff.
|tip Use the ability on your action bar.
Take the Skiff to Lorel's Crossing |q 78672/1 |goto Hallowfall/0 48.39,40.63 |notravel
step
talk Bastian Wynfall##218295
fpath Lorel's Crossing |goto Hallowfall/0 48.38,40.71
step
talk Tristan Lyte##218323
|tip Up on the ledge.
fpath Priory of the Sacred Flame |goto Hallowfall/0 41.14,33.67
step
talk Faerin##214378
turnin A Lamplighter's Duty##78672 |goto Hallowfall/0 53.91,31.44
accept Tricks of the Dark##78929 |goto Hallowfall/0 53.91,31.44
step
talk General Steelstrike##214376
accept Fickle Fiendish Fish##78932 |goto Hallowfall/0 53.93,31.48
stickystart "Slay_Kobyss_Invaders"
step
talk Arathi Captive##215891+
|tip They look like {o}scared humans{}.
Rescue #5# Arathi |q 78929/1 |goto Hallowfall/0 54.11,28.61
step
label "Slay_Kobyss_Invaders"
Kill enemies around this area
|tip Enemies that look like {o}crabs won't count{}.
Slay #13# Kobyss Invaders |q 78932/1 |goto Hallowfall/0 54.02,29.08
'|kill Deepwater Eel##215680, Deepwater Kobyss##215750, Drowned Arathi##215684, Deepwater Abomination##215654, Awakener Kobyss##215683
step
talk Anduin Wrynn##214377
turnin Tricks of the Dark##78929 |goto Hallowfall/0 53.91,30.78
turnin Fickle Fiendish Fish##78932 |goto Hallowfall/0 53.91,30.78
step
talk Faerin##214378
accept Blades of the Arathi##78934 |goto Hallowfall/0 53.93,30.74
step
talk General Steelstrike##214376
accept Something's Fishy##78936 |goto Hallowfall/0 55.18,32.69
step
click Torch
Light the Torch |q 78934/1 |goto Hallowfall/0 55.16,32.72
stickystart "Rally_Arathi_Groups"
step
kill Tidelord Teethwretch##216527 |q 78936/3 |goto Hallowfall/0 56.10,34.08
step
kill The Abominable Wavecrasher##216526 |q 78936/2 |goto Hallowfall/0 54.47,33.84
step
kill Deepsludger##216536 |q 78936/1 |goto Hallowfall/0 53.32,32.65
|tip He walks around this area.
step
label "Rally_Arathi_Groups"
Rally #6# Arathi Groups |q 78934/2 |goto Hallowfall/0 54.92,33.46
|tip They look like {o}small groups of humans{}.
|tip Use the {o}Rally{} ability next to them.
|tip It appears as a button on the screen.
step
talk General Steelstrike##214376
turnin Something's Fishy##78936 |goto Hallowfall/0 55.18,32.69
step
talk Faerin##221100
turnin Blades of the Arathi##78934 |goto Hallowfall/0 55.15,32.69
step
Watch the dialogue
talk Faerin##221100
accept Shadow upon Shadow##78937 |goto Hallowfall/0 55.15,32.69
step
talk Faerin Lothar##214407
Select _"<Look closer at the tower with Faerin and Anduin.>"_ |gossip 121725
Find Faerin at the Tower Overlook |q 78937/1 |goto Hallowfall/0 55.20,35.03
step
Watch the dialogue
talk Alleria Windrunner##214405
turnin Shadow upon Shadow##78937 |goto Hallowfall/0 55.77,41.31
accept The Darkened Flame##78939 |goto Hallowfall/0 55.77,41.31
step
click Darkfire
|tip Inside the tower, on the ground floor.
Watch the dialogue
Investigate the Darkfire |q 78939/1 |goto Hallowfall/0 56.17,41.89
step
click Order of Night Polearm
Find a Clue Outside the Tower |q 78939/2 |goto Hallowfall/0 56.30,40.64 |count 1
step
clicknpc Kelther Hearthen##221411
Select _"<Wish his spirit well.>"_ |gossip 121757
Find a Clue Outside the Tower |q 78939/2 |goto Hallowfall/0 55.93,42.02 |count 2
step
click Order of Night Poster
Find a Clue Outside the Tower |q 78939/2 |goto Hallowfall/0 55.38,42.02 |count 3
step
click Order of Night Journal
Find a Clue Outside the Tower |q 78939/2 |goto Hallowfall/0 54.72,43.03 |count 4
step
talk Faerin Lothar##214404
|tip Inside the tower, on the ground floor.
Select _"<Tell Faerin what you learned.>"_ |gossip 120685
Return to Faerin |q 78939/3 |goto Hallowfall/0 56.28,41.97
step
Watch the dialogue
talk Faerin Lothar##214404
|tip Inside the tower, on the ground floor.
turnin The Darkened Flame##78939 |goto Hallowfall/0 56.22,42.01
accept Ever Deeper Shadow##78951 |goto Hallowfall/0 56.22,42.01
step
Kill enemies around this area
|tip Inside the cave.
Slay #10# Order of Night Cultists |q 78951/1 |goto Hallowfall/0 56.22,42.81
'|kill Glooming Belligerent##216865, Glooming Skulk##216869, Glooming Disciple##216867, Glooming Darkweaver##216868
step
talk Faerin Lothar##214413
|tip Inside the cave.
turnin Ever Deeper Shadow##78951 |goto Hallowfall/0 55.83,40.50
accept The Final Resistance##78952 |goto Hallowfall/0 55.83,40.50
step
click Shadow Rift
|tip Inside the cave.
Destroy the Shadow Rift |q 78952/1 |goto Hallowfall/0 55.09,40.11
step
kill Anguishing Nightmare##214415 |q 78952/2 |goto Hallowfall/0 55.09,40.11
|tip Inside the cave.
step
talk Faerin Lothar##221733
|tip Inside the cave.
turnin The Final Resistance##78952 |goto Hallowfall/0 55.13,40.23
accept The Light at the End of the Tunnel##81690 |goto Hallowfall/0 55.13,40.23
step
Watch the dialogue
|tip Follow {o}Faerin Lothar{} and {o}protect her{} as she walks.
|tip She eventually walks to the entrance of the cave at this location.
Follow Faerin |q 81690/1 |goto Hallowfall/0 56.50,42.58
'|clicknpc Faerin Lothar##221736
step
talk Alleria Windrunner##214405
|tip She runs to this location.
turnin The Light at the End of the Tunnel##81690 |goto Hallowfall/0 55.72,43.36
step
talk Faerin Lothar##221733
accept Restore the Flame##78954 |goto Hallowfall/0 55.78,43.43
step
talk Faerin Lothar##214404
|tip Inside the tower, on the ground floor.
Select _"I'm ready."_ |gossip 120602
Restore the Dawntower to Light |q 78954/1 |goto Hallowfall/0 56.22,42.01
step
talk Faerin Lothar##214404
|tip Inside the tower, on the ground floor.
turnin Restore the Flame##78954 |goto Hallowfall/0 56.22,42.01
accept To Mereldar##78607 |goto Hallowfall/0 56.22,42.01
step
talk Rubaen Hillhelm##206537
fpath Hillhelm Family Farm |goto Hallowfall/0 61.34,30.99
step
talk Faerin Lothar##214364
turnin To Mereldar##78607 |goto Hallowfall/0 43.45,48.58
step
talk General Steelstrike##213108
accept The Bastion of Hallowfall##78613 |goto Hallowfall/0 43.42,48.63
step
talk Anje Noon##218305
|tip Up on the wall.
fpath Mereldar |goto Hallowfall/0 41.57,52.59
step
Meet Faerin, Anduin, and Alleria at Empire's Edge Inn |q 78613/1 |goto Hallowfall/0 42.72,55.70
|tip Inside the building.
step
talk Nalina Ironsong##217642
|tip Inside the building.
Select _" Purchase a round of drinks."_ |gossip 122686 |noautogossip
buy A Round of Drinks##217708 |q 78613/2 |goto Hallowfall/0 42.81,55.83
step
click Drink+
|tip Inside the building.
Hand Out #4# Drinks |q 78613/3 |goto Hallowfall/0 42.72,55.65
step
talk Faerin Lothar##220124
|tip Inside the building.
turnin The Bastion of Hallowfall##78613 |goto Hallowfall/0 42.75,55.63
step
talk Alleria Windrunner##218182
|tip Inside the building.
accept Nightwatch##79297 |goto Hallowfall/0 42.75,55.67
step
click Order of Night Propaganda+
|tip They look like {o}rolled up scrolls{} and {o}pieces of paper{} nailed to objects.
collect 8 Order of Night Propaganda##217990 |q 79297/1 |goto Hallowfall/0 43.46,56.60
step
Meet General Steelstrike in the Barracks |q 79297/4 |goto Hallowfall/0 41.26,52.98
|tip Inside the tent.
step
talk General Steelstrike##213108
|tip Inside the tent.
turnin Nightwatch##79297 |goto Hallowfall/0 41.26,52.98
accept Spar Day##78626 |goto Hallowfall/0 41.26,52.98
step
talk Arathi Reserve##215727
Select _"Your general asked me to spar with you."_ |gossip 120333
|tip They will attack you.
Duel #8# Arathi Recruits |q 78626/1 |goto Hallowfall/0 41.83,52.24
'|talk Arathi Reserve##214429
step
talk General Steelstrike##213108
|tip Inside the tent.
turnin Spar Day##78626 |goto Hallowfall/0 41.26,52.98
accept Mereldar's Light##78614 |goto Hallowfall/0 41.26,52.98
step
clicknpc Arathi Orphan##218456+
|tip They look like {o}2 children running together{}.
Play with the Orphans |q 78614/1 |goto Hallowfall/0 41.85,55.10 |count 1
step
talk Arathi Orphan##223365
Select _"I can play."_ |gossip 122367
Begin Playing with the Orphan |havebuff Scary Monster##448382 |goto Hallowfall/0 42.02,55.43 |q 78614
step
Play with the Orphans |q 78614/1 |goto Hallowfall/0 42.00,55.40 |count 2
|tip Use the abilities on your action bar.
|tip Use the abilities {o}until they kill you{}.
step
talk Arathi Orphan##218493
Begin Playing with the Orphan |invehicle |goto Hallowfall/0 41.90,55.53 |q 78614
step
Play with the Orphans |q 78614/1 |goto Hallowfall/0 42.00,55.40 |count 3
|tip Use the ability on your action bar.
|tip Aim at one of the {o}red and white targets{} nearby.
step
talk Faerin Lothar##220124
|tip Inside the building.
turnin Mereldar's Light##78614 |goto Hallowfall/0 41.68,55.51
step
Watch the dialogue
|tip Inside the building.
talk Faerin Lothar##220124
accept The Bell Tolls##78615 |goto Hallowfall/0 41.68,55.51
step
Go to the Gates of Mereldar |q 78615/1 |goto Hallowfall/0 41.06,54.71
step
talk Faerin Lothar##213107
turnin The Bell Tolls##78615 |goto Hallowfall/0 41.06,54.71
step
talk General Steelstrike##213108
accept Crossroads of Twilight##78620 |goto Hallowfall/0 41.06,54.76
step
talk Alleria Windrunner##214402
accept The Shadow Rising##78621 |goto Hallowfall/0 41.05,54.67
stickystart "Slay_Kobyss_Attackers_78620"
step
kill Lighteater##216036 |q 78621/3 |goto Hallowfall/0 35.09,52.37
step
kill Old Grim##213403 |q 78621/1 |goto Hallowfall/0 34.87,54.64
step
kill Heartfang##216035 |q 78621/2 |goto Hallowfall/0 35.04,56.85
step
label "Slay_Kobyss_Attackers_78620"
Kill enemies around this area
Slay #15# Kobyss Attackers |q 78620/1 |goto Hallowfall/0 35.38,54.75
'|kill Ragefin Carver##215652, Ragefin Executioner##213408, Ragefin Necromancer##213406, Darkwater Tidecrusher##220621, Ragefin Shadowcaster##213405
step
talk Alleria Windrunner##214402
turnin The Shadow Rising##78621 |goto Hallowfall/0 34.07,54.74
step
talk General Steelstrike##213108
turnin Crossroads of Twilight##78620 |goto Hallowfall/0 34.07,54.68
accept A Candle in the Dark##78624 |goto Hallowfall/0 34.07,54.68
step
talk Alleria Windrunner##214402
Select _" Bring down the bubble."_ |gossip 121810
Watch the dialogue
Have Alleria Bring Down the Void Bubble |q 78624/1 |goto Hallowfall/0 34.07,54.74
step
kill Aelric Leid##213208 |q 78624/2 |goto Hallowfall/0 33.40,54.60
step
talk General Steelstrike##225188
turnin A Candle in the Dark##78624 |goto Hallowfall/0 33.62,54.63
accept Consecrated Cleanup##79089 |goto Hallowfall/0 33.62,54.63
step
talk Faerin Lothar##213107
accept The Flame Still Burns##80049 |goto Hallowfall/0 33.59,54.80
stickystart "Clear_The_Veneration_Grounds"
step
talk Arathi Stalwart##225226
Select _"The only good kobyss is a dead kobyss."_ |gossip 122722
Speak to the Arathi Survivors |q 80049/1 |goto Hallowfall/0 35.32,55.81 |count 1
step
talk Arathi Stalwart##225226
Select _"You had no choice."_ |gossip 122719
Speak to the Arathi Survivors |q 80049/1 |goto Hallowfall/0 36.01,56.01 |count 2
step
talk Arathi Stalwart##225226
Select _"You did well."_ |gossip 122712
Speak to the Arathi Survivors |q 80049/1 |goto Hallowfall/0 36.95,54.79 |count 3
step
talk Arathi Stalwart##225226
Select _"The Arathi are survivors. You'll pull through this."_ |gossip 122713
Speak to the Arathi Survivors |q 80049/1 |goto Hallowfall/0 35.73,54.05 |count 4
step
talk Arathi Stalwart##225226
Select _"You fought to keep those you love safe."_ |gossip 122717
Speak to the Arathi Survivors |q 80049/1 |goto Hallowfall/0 35.39,52.72 |count 5
step
label "Clear_The_Veneration_Grounds"
click Kobyss Spear+
|tip They look like {o}poles{} stuck in the ground and in objects.
click Memorial Plant+
|tip They look like {o}various plant pots and vases{} that are knocked over.
Clear the Veneration Grounds |q 79089/1 |goto Hallowfall/0 35.22,54.63
step
talk General Steelstrike##225188
turnin Consecrated Cleanup##79089 |goto Hallowfall/0 33.62,54.64
turnin The Flame Still Burns##80049 |goto Hallowfall/0 33.62,54.64
step
Watch the dialogue
talk General Steelstrike##225188
accept The Final Front##78627 |goto Hallowfall/0 33.62,54.64
step
talk 'Red' Fearon##218304
fpath Light's Redoubt |goto Hallowfall/0 40.46,71.31
step
Travel to Light's Redoubt |q 78627/1 |goto Hallowfall/0 38.97,71.61
|tip On the deck of the airship.
step
talk General Steelstrike##213108
|tip On the deck of the airship.
turnin The Final Front##78627 |goto Hallowfall/0 38.97,71.61
accept Trapdoor Sprung##78628 |goto Hallowfall/0 38.97,71.61
step
talk Faerin Lothar##213107
|tip On the deck of the airship.
accept Running on Reserves##78629 |goto Hallowfall/0 38.95,71.59
stickystart "Slay_Nerubians"
step
talk Arathi Reserve##213286
|tip Inside the building.
Select _"I'll buy you time."_ |gossip 120658
|tip You will be attacked.
Rescue the Reservist |q 78629/1 |goto Hallowfall/0 39.06,81.32 |count 1
step
talk Arathi Reserve##213286
|tip Inside the building.
Select _"I'll buy you time."_ |gossip 120658
|tip You will be attacked.
Rescue the Reservist |q 78629/1 |goto Hallowfall/0 38.86,83.12 |count 2
step
talk Arathi Reserve##213286
|tip Inside the doorway of the tower.
Select _"I'll buy you time."_ |gossip 120658
|tip You will be attacked.
Rescue the Reservist |q 78629/1 |goto Hallowfall/0 38.06,82.70 |count 3
step
talk Arathi Reserve##213286
|tip Inside the building.
Select _"I'll buy you time."_ |gossip 120658
|tip You will be attacked.
Rescue the Reservist |q 78629/1 |goto Hallowfall/0 37.47,81.90 |count 4
step
talk Arathi Reserve##213286
|tip Inside the doorway of the building.
Select _"I'll buy you time."_ |gossip 120658
|tip You will be attacked.
Rescue the Reservist |q 78629/1 |goto Hallowfall/0 36.88,81.00 |count 5
step
label "Slay_Nerubians"
Kill enemies around this area
Slay #15# Nerubians |q 78628/1 |goto Hallowfall/0 38.63,80.28
'|kill Kaheti Swarmer##213398, Kaheti Ravager##213395, Kaheti Ambusher##217448, Kaheti Fighter##217362, Kaheti Shadeweaver##213396
step
talk Faerin Lothar##213107
|tip Up on the platform.
turnin Trapdoor Sprung##78628 |goto Hallowfall/0 38.78,81.52
turnin Running on Reserves##78629 |goto Hallowfall/0 38.78,81.52
accept The Rise of the Reckoning##78630 |goto Hallowfall/0 38.78,81.52
step
click Rope Ladder
Board the Reckoning |q 78630/1 |goto Hallowfall/0 38.87,81.58
step
_As Your Fly:_
Kill enemies around this area
|tip They are on the ground as you fly.
|tip Use the ability on your action bar.
Slay #150# Nerubian Forces |q 78630/2
step
Watch the dialogue
Reach Azj-Kahet |complete zone("Azj-Kahet") |q 78630
step
talk Faerin##211699
turnin The Rise of the Reckoning##78630 |goto Azj-Kahet/0 29.39,42.20
step
|next "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"	|only if completedq(79573) and level < 80
|next "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Azj-Kahet (Story Only)"		|only if not completedq(79573) and level < 80
|next "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\The War Within Campaign"		|only if level >= 80 and completedallq(78546,81689,78630,84022)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Azj-Kahet (Story Only)",{
author="support@zygorguides.com",
},[[
step
_NOTE:_
{o}It is Very Important to Avoid Accepting Quests that Aren't in this Guide{}
|tip Certain quests, when completed out of order, can permanently cause breadcrumb quests to become incomplete.
|tip This could cause issues with your quest flow.
|tip Disable automatically accepting all quests and avoid accepting quests from NPCs when not directed to.
Click Here to Continue |confirm
step
Take the Burrow to Azj-Kahet |complete zone("Azj-Kahet") |goto Dornogal/0 63.61,52.55 |q 83552
|tip Walk into the {o}swirling portal{}.
|only if haveq(83552) or completedq(83552)
step
talk Faerin##211699
|tip On the air ship.
turnin Azj-Kahet##83552 |goto Azj-Kahet/0 29.39,42.20 |only if haveq(83552) or completedq(83552)
accept Heroes Never Die##78350 |goto Azj-Kahet/0 29.39,42.20
step
talk Alleria Windrunner##211752
|tip On the air ship.
accept Chasing the Light##78384 |goto Azj-Kahet/0 29.35,42.64
stickystart "Rescue_Wounded_Aeroknights"
step
click Airship Rubble##411102
|tip You may be attacked.
collect Crumpled Lion Gauntlet##211774 |q 78384/1 |goto Azj-Kahet/0 29.14,44.62
step
click Well-Bleached Bones##411104
|tip You may be attacked.
collect Bleached Bones##211775 |q 78384/2 |goto Azj-Kahet/0 26.55,43.02
step
click Weathered Cloth##411106
collect Scrap of Weathered Fabric##211783 |q 78384/3 |goto Azj-Kahet/0 32.55,38.85
step
label "Rescue_Wounded_Aeroknights"
clicknpc Wounded Aeroknight##214767+
|tip They look like {o}humans{} laying on the ground.
Rescue #12# Wounded Aeroknights |q 78350/1 |goto Azj-Kahet/0 29.56,42.03
step
talk Alleria Windrunner##211752
|tip On the air ship.
turnin Chasing the Light##78384 |goto Azj-Kahet/0 32.47,47.19
You may also find her at [29.51,42.52]
step
talk Faerin##211699
|tip On the air ship.
turnin Heroes Never Die##78350 |goto Azj-Kahet/0 32.48,47.14
accept Friends in Low Places##78348 |goto Azj-Kahet/0 32.48,47.14
step
talk Courier Nailen##208384
fpath Wildcamp Or'lay |goto Azj-Kahet/0 23.14,51.14
step
Jump into the Breathing Pit |q 78348/1 |goto Azj-Kahet/0 33.37,55.94
|tip Fly down into the hole to enter the cave.
step
Find the Mysterious Protector |q 78348/2 |goto Azj-Kahet/0 32.99,56.33
|tip Inside the cave.
step
talk Orweyna##215944
|tip Inside the cave.
turnin Friends in Low Places##78348 |goto Azj-Kahet/0 32.99,56.33
accept For Naught, So Vial##78352 |goto Azj-Kahet/0 32.99,56.33
accept Fear the Old Blood##78353 |goto Azj-Kahet/0 32.99,56.33
stickystart "Cleanse_The_Breathing_Pit"
step
click Nerubian Extractor+
|tip They look like {o}red orbs in pedestals{} stuck to walls.
|tip {o}Follow the spiral path up{} toward this location as you work on the quest.
|tip Inside the cave.
Destroy #8# Nerubian Extractors |q 78352/1 |goto Azj-Kahet/0 35.58,58.08
step
label "Cleanse_The_Breathing_Pit"
Kill enemies around this area
|tip {o}Follow the spiral path up{} toward this location as you work on the quest. |notinsticky
|tip Inside the cave. |notinsticky
Cleanse the Breathing Pit |q 78353/1 |goto Azj-Kahet/0 35.58,58.08
'|kill Horrid Effusia##211866, Blackblood Coalescence##215205
step
Follow the path up and leave the cave |goto Azj-Kahet/0 35.58,58.08 < 20 |walk |only if subzone("Breathing Pit") and indoors()
Watch the dialogue
talk Orweyna##215113
turnin For Naught, So Vial##78352 |goto Azj-Kahet/0 35.74,58.19
turnin Fear the Old Blood##78353 |goto Azj-Kahet/0 35.74,58.19
accept Alone in the Dark##79139 |goto Azj-Kahet/0 35.74,58.19
step
Meet Orweyna at the Eye of Ansurek |q 79139/1 |goto Azj-Kahet/0 42.32,54.15
step
talk Orweyna##219109
Select _"Where do we go from here?"_ |gossip 121150
Investigate the Overlook |q 79139/2 |goto Azj-Kahet/0 44.29,57.22
step
Watch the dialogue
talk Spindle##216213
turnin Alone in the Dark##79139 |goto Azj-Kahet/0 44.25,56.77
accept A Guiding Thread##78354 |goto Azj-Kahet/0 44.25,56.77
step
Follow Spindle Towards the City |q 78354/1 |goto Azj-Kahet/0 47.14,53.01
'|clicknpc Spindle##216215
step
Use 'Weaver's Wile' |q 78354/2 |goto Azj-Kahet/0 47.14,53.01
|tip Use the {o}Weaver's Wile{} ability.
|tip It appears as a button on the screen.
step
Follow Spindle Across the Bridge |q 78354/3 |goto Azj-Kahet/0 48.47,50.35
|tip You will be attacked.
'|clicknpc Spindle##216216
step
Follow Spindle into the Cliffs |q 78354/4 |goto Azj-Kahet/0 49.47,46.79
'|clicknpc Spindle##216217
step
talk Widow Arak'nai##207471
turnin A Guiding Thread##78354 |goto Azj-Kahet/0 55.73,43.84
accept The Tangled Web##78392 |goto Azj-Kahet/0 55.73,43.84
accept A Seeming Respite##78393 |goto Azj-Kahet/0 55.73,43.84
step
talk Widow Arak'nai##207471
Select _"Tell me about yourself."_ |gossip 122860
Learn About the Weaver |q 78392/1 |goto Azj-Kahet/0 55.73,43.84
step
talk Widow Arak'nai##207471
Select _"Tell me about the enemy forces."_ |gossip 122859
Learn About the Sureki Forces |q 78392/2 |goto Azj-Kahet/0 55.73,43.84
step
talk Widow Arak'nai##207471
Select _"Tell me about the Ascended."_ |gossip 122858
Learn About the Ascended |q 78392/3 |goto Azj-Kahet/0 55.73,43.84
step
talk Widow Arak'nai##207471
Select _"Tell me about the Queen's inner circle."_ |gossip 122863
Learn About the Queen's Allies |q 78392/4 |goto Azj-Kahet/0 55.73,43.84
step
talk Widow Arak'nai##207471
turnin The Tangled Web##78392 |goto Azj-Kahet/0 55.73,43.84
step
Locate the Repair Vendor |q 78393/2 |goto Azj-Kahet/0 56.88,41.78
step
Locate the Innkeeper |q 78393/3 |goto Azj-Kahet/0 56.95,38.79
|tip Inside the building.
step
Locate the Flight Master |q 78393/1 |goto Azj-Kahet/0 56.88,47.04
step
talk Wings of the Widow##207470
fpath Weaver's Lair |goto Azj-Kahet/0 56.88,47.04
step
talk Widow Arak'nai##207471
turnin A Seeming Respite##78393 |goto Azj-Kahet/0 55.73,43.84
accept The Weaver's Gift##78233 |goto Azj-Kahet/0 55.73,43.84
step
Locate the Weaver's Gift |q 78233/1 |goto Azj-Kahet/0 59.37,19.36
step
talk Faerin Lothar##211409
turnin The Weaver's Gift##78233 |goto Azj-Kahet/0 59.37,19.36
accept Rations and Revelations##80399 |goto Azj-Kahet/0 59.37,19.36
step
click Arathi Rations
Distribute Arathi Rations |q 80399/1 |goto Azj-Kahet/0 59.38,19.23 |count 1
step
talk Courier Aidal##216973
fpath Faerin's Advance |goto Azj-Kahet/0 60.00,18.70
step
click Arathi Rations
Distribute Arathi Rations |q 80399/1 |goto Azj-Kahet/0 59.02,19.04 |count 2
step
click Arathi Rations
Distribute Arathi Rations |q 80399/1 |goto Azj-Kahet/0 58.76,20.00 |count 3
step
talk Faerin Lothar##211409
turnin Rations and Revelations##80399 |goto Azj-Kahet/0 59.37,19.36
accept Scrappy Straggler##78236 |goto Azj-Kahet/0 59.37,19.36
step
Find the Straggler |q 78236/1 |goto Azj-Kahet/0 63.04,27.15
step
talk Flynn Fairwind##220051
Select _"<Look where Flynn is indicating.>"_ |gossip 121919
Talk to Flynn |q 78236/2 |goto Azj-Kahet/0 63.04,27.15
step
talk Flynn Fairwind##220051
turnin Scrappy Straggler##78236 |goto Azj-Kahet/0 63.04,27.15
accept Force Your Way##78234 |goto Azj-Kahet/0 63.04,27.15
step
_Next to you:_
talk Flynn Fairwind##211444
accept Strategic Edge##78383
stickystart "Slay_Kaheti_Forces"
step
click Crate of Emptied Vials##441587
|tip Up on the platform.
Gather the Nerubian Intelligence |q 78383/2 |goto Azj-Kahet/0 62.87,27.83 |count 1
step
click Military Correspondence##441586
|tip On the upper platform.
Gather the Nerubian Intelligence |q 78383/2 |goto Azj-Kahet/0 60.99,28.44 |count 2
step
Enter the cave |goto Azj-Kahet/0 64.75,29.64 < 15 |walk
click Confiscated Weapons##441588
collect Flynn's Blades##211870 |q 78383/1 |goto Azj-Kahet/0 66.53,31.38
step
click Burning Venom Flask##441585
Gather the Nerubian Intelligence |q 78383/2 |goto Azj-Kahet/0 67.68,28.24 |count 3
step
_Next to you:_
talk Flynn Fairwind##211444
turnin Strategic Edge##78383
step
label "Slay_Kaheti_Forces"
Kill enemies around this area
Slay #8# Kaheti Forces |q 78234/1 |goto Azj-Kahet/0 63.97,28.89
'|kill Kaheti Skirmisher##214940, Kaheti Overseer##214941, Kaheti Threadmancer##214939, Dependable Skitterling##222153, Stalwart Hauler##214935
step
_Next to you:_
talk Flynn Fairwind##211444
turnin Force Your Way##78234
accept Let Fly!##78237
step
click Inconspicuous Box
Inspect the Inconspicuous Box |q 78237/1 |goto Azj-Kahet/0 62.79,31.10
step
Watch the dialogue
Begin Flying to Siegehold |invehicle |goto Azj-Kahet/0 62.79,31.10 |q 78237
step
Fly to Siegehold |outvehicle |goto Azj-Kahet/0 45.39,20.29 |q 78237 |notravel
step
talk Anub'azal##217330
|tip Inside the building.
turnin Let Fly!##78237 |goto Azj-Kahet/0 45.50,19.69
accept Not Quite Dead##79625 |goto Azj-Kahet/0 45.50,19.69
step
talk Monte Gazlowe##219156
|tip Inside the building.
Select _"<Nudge Gazlowe.>"_ |gossip 121784
Find Something Useful |q 79625/1 |goto Azj-Kahet/0 45.18,20.21
step
talk Anub'azal##217330
|tip Inside the building.
turnin Not Quite Dead##79625 |goto Azj-Kahet/0 45.50,19.69
accept I Think I'm a Drone Now##79175 |goto Azj-Kahet/0 45.50,19.69
step
Apply Anub'azal's Mark |q 79175/1 |goto Azj-Kahet/0 45.32,19.84
|tip Use the {o}Apply Pheromones{} ability.
|tip It appears as a button on the screen.
|tip Inside the building.
step
talk Anub'azal##217330
|tip Inside the building.
turnin I Think I'm a Drone Now##79175 |goto Azj-Kahet/0 45.50,19.69
accept Specific Personages##78249 |goto Azj-Kahet/0 45.50,19.69
accept General Admission##78250 |goto Azj-Kahet/0 45.50,19.69
step
_NOTE:_
During the Next Steps
|tip {o}Avoid enemies with blue circles{} above their heads.
|tip They can {o}see through{} your disguise.
Click Here to Continue |confirm |q 78249
step
click Siegehold Records
|tip It looks like a {o}rolled up scroll in a hanging shelf{}.
|tip Inside the building.
collect Zev'kall's Attrition Log##217165 |q 78250/1 |goto Azj-Kahet/0 43.24,25.32
step
kill Hevo'myk##211591 |q 78249/3 |goto Azj-Kahet/0 44.51,27.66
step
kill Mi'thk##211582 |q 78249/1 |goto Azj-Kahet/0 46.74,28.69
step
kill Diu'mik##211564 |q 78249/2 |goto Azj-Kahet/0 48.93,23.82
|tip Inside the building.
step
Enter the building |goto Azj-Kahet/0 45.60,21.80 < 15 |walk
talk Anub'azal##217330
|tip Inside the building.
turnin Specific Personages##78249 |goto Azj-Kahet/0 45.50,19.69
turnin General Admission##78250 |goto Azj-Kahet/0 45.50,19.69
accept Stolen Influence##78254 |goto Azj-Kahet/0 45.50,19.69
step
talk Monte Gazlowe##211399
|tip Inside the building.
accept Dalaran's Most Distressed##78251 |goto Azj-Kahet/0 45.33,19.85
step
click Gazlowe's Detonator
Assist Gazlowe |q 78251/3 |goto Azj-Kahet/0 45.14,23.06
step
talk High Arcanist Savor##221806
Select _"Hello?"_ |gossip 121832
Select _"Have you seen Anduin?"_ |gossip 121834
Select _"Meet up at the transport wagons."_ |gossip 121833
Free the Caged Prisoners |q 78251/2 |goto Azj-Kahet/0 43.99,24.86
'|talk High Arcanist Savor##221757
step
talk Wriggling Web##221722
Select _"I'm here to rescue you. Pretend you're part of the next prisoner convoy!"_ |gossip 121812
Free the Webbed Prisoners |q 78251/1 |goto Azj-Kahet/0 47.22,26.94
step
kill Tij'allet##215600
|tip Inside the building.
collect Zev'kall's Pheromone Emitter##212528 |q 78254/1 |goto Azj-Kahet/0 48.54,19.95
step
talk Monte Gazlowe##215413
turnin Dalaran's Most Distressed##78251 |goto Azj-Kahet/0 47.39,23.90
turnin Stolen Influence##78254 |goto Azj-Kahet/0 47.39,23.90
accept Just Act Casual##78255 |goto Azj-Kahet/0 47.39,23.90
step
talk Monte Gazlowe##215413
Select _"I am ready."_ |gossip 121494
Tell Gazlowe You're Ready |q 78255/1 |goto Azj-Kahet/0 47.39,23.90
step
talk Siegehold Gateminder##215419
Select _"I have General Anub'azal's pheromone mark on me, let us pass."_ |gossip 120311
Speak to the Gateminder |q 78255/2 |goto Azj-Kahet/0 48.16,25.35
step
Watch the dialogue
Meet the Convoy Outside |q 78255/3 |goto Azj-Kahet/0 48.95,26.63
step
talk Monte Gazlowe##215845
turnin Just Act Casual##78255 |goto Azj-Kahet/0 51.80,25.77
accept The General's Consensus##78256 |goto Azj-Kahet/0 51.80,25.77
step
click Inconspicuous Box
collect Zev'kall's Pheromone Emitter##212528 |q 78256/1 |goto Azj-Kahet/0 51.78,25.87
step
talk Widow Arak'nai##207471
turnin The General's Consensus##78256 |goto Azj-Kahet/0 55.73,43.84
accept A Most Intriguing Invitation##78226 |goto Azj-Kahet/0 55.73,43.84
step
Apply the Pheromones |q 78226/1 |goto Azj-Kahet/0 55.99,43.51
|tip Use the {o}Apply Pheromones{} ability.
|tip It appears as a button on the screen.
step
clicknpc Vizier's Personal Swarmite##219239
|tip You can {o}skip ahead{}, if you {o}prefer to fly yourself{}.
Take the Vizier's Flyer |q 78226/3 |goto Azj-Kahet/0 55.63,44.30
step
Begin Flying to the Burrows |invehicle |goto Azj-Kahet/0 55.63,44.30 |q 78226
step
Fly to the Burrows |outvehicle |goto Nerub'ar/0 67.19,25.01 |q 78226 |notravel
step
Arrive in the Burrows |q 78226/2 |goto Nerub'ar/0 67.19,25.01
step
Meet The Vizier |q 78226/4 |goto Nerub'ar/0 67.12,31.50
|tip Inside the building.
step
Watch the dialogue
talk Anduin Wrynn##211351
|tip Inside the building.
turnin A Most Intriguing Invitation##78226 |goto Nerub'ar/0 67.12,31.50
accept Into a Skittering City##78228 |goto Nerub'ar/0 67.12,31.50
step
talk Executor Nizrek##211499
|tip Inside the building.
Select _"The Weaver wants to take out Xal'atath and free Queen Ansurek from her influence."_ |gossip 121538
Speak with the Vizier |q 78228/1 |goto Nerub'ar/0 67.46,32.44
step
extraaction Apply Pheromones##441852
Have Tulumun Apply the Pheromones |q 78228/2 |goto Nerub'ar/0 66.99,32.60
|tip Use the {o}Apply Pheromones{} ability.
|tip It appears as a button on the screen.
|tip Inside the building.
step
talk Executor Nizrek##211499
|tip Inside the building.
turnin Into a Skittering City##78228 |goto Nerub'ar/0 67.47,32.45
accept Rewriting the Rewritten##78232 |goto Nerub'ar/0 67.47,32.45
step
Watch the dialogue
|tip Inside the building.
talk Anduin Wrynn##211351
accept Like a Spider on the Wall##78231 |goto Nerub'ar/0 66.90,31.91
step
_NOTE:_
During the Next Steps
|tip {o}Avoid enemies with blue circles{} above their heads.
|tip They can {o}see through{} your disguise.
Click Here to Continue |confirm |q 78231
step
click Shadecaster
Overwrite the Shadecasters |q 78232/1 |goto Nerub'ar/1 58.19,28.97 |count 1
step
talk Nana Lek'kel##222139
Select _"Me? Why?"_ |gossip 120653
Select _"<Step away.>"_ |gossip 120657
Attempt to Meet Meesk |q 78231/5 |goto Nerub'ar/1 62.11,20.72
step
click Shadecaster
Overwrite the Shadecasters |q 78232/1 |goto Nerub'ar/1 60.93,18.81 |count 2
step
Listen to the Sureki Crier |q 78231/1 |goto Nerub'ar/1 54.84,20.29
step
click Shadecaster
|tip Inside the building.
Overwrite the Shadecasters |q 78232/1 |goto Nerub'ar/1 53.11,16.00 |count 3
step
Observe the Tailorers |q 78231/4 |goto Nerub'ar/1 49.72,17.41
step
click Catalogue of Cagables
|tip Inside the building.
Read the Twitchery Catalogue |q 78231/3 |goto Nerub'ar/1 43.42,16.55
step
Discover the Cuisine Stalls |q 78231/2 |goto Nerub'ar/1 49.05,26.54
step
talk Tekazza of the Aimless Few##209330
|tip On the ground.
fpath The Burrows |goto Nerub'ar/0 53.98,44.33
step
talk Alleria Windrunner##211375
|tip Up on the platform.
turnin Rewriting the Rewritten##78232 |goto Nerub'ar/1 54.97,45.84
step
talk Anduin Wrynn##217386
|tip Up on the platform.
turnin Like a Spider on the Wall##78231 |goto Nerub'ar/1 55.29,46.06
accept Kaheti Hospitality##78244 |goto Nerub'ar/1 55.29,46.06
step
talk Anduin Wrynn##217386
|tip Up on the platform.
Select _"Yes. I'm ready to observe the Ascendance Day speech."_ |gossip 120665
Speak with Anduin |q 78244/1 |goto Nerub'ar/1 55.29,46.06
step
Watch the dialogue
Watch Queen Sureki's Speech |q 78244/2 |goto Nerub'ar/1 55.29,46.06
step
Begin the Scenario |scenariostart |q 78244
step
Kill the enemies that attack
|tip Move forward {o}straight ahead{} to begin the enemy attack.
|tip {o}Threadmaestro Fothis{} will attack you {o}after{} you defeat the enemies.
kill Threadmaestro Fothis##216541 |scenariogoal 1/65266 |q 78244
step
click Web Blockade
|tip {o}Follow{} your allies.
|tip It appears on your {o}minimap{} as a {o}yellow dot{}.
Destroy the Web Wall |scenariogoal 1/65318 |q 78244
step
kill Swarm-Maven Donmiss##216578 |scenariogoal 2/65267 |q 78244
|tip {o}Avoid the green circles{} on the ground as you run to her.
|tip She appears on your {o}minimap{} as a {o}yellow dot{}.
step
Watch the dialogue
|tip {o}Follow{} your allies.
clicknpc Vizier's Getaway Flyer##216581
|tip They appears on your {o}minimap{} as {o}yellow dots{}.
Reach the Vizier's Flyers |scenariogoal 3/65268 |q 78244
step
kill Kx##216582
Slay Kx, Fang of the Queen |scenariogoal 4/65269 |q 78244
step
Escape from the Burrows |q 78244/3
|tip {o}Follow{} your allies.
|tip {o}Jump off the platform{} to escape.
step
Watch the dialogue
talk Anduin Wrynn##217386
|tip He walks to this location.
turnin Kaheti Hospitality##78244 |goto Azj-Kahet/0 60.63,68.89
step
talk Alleria Windrunner##217385
accept What We Still Have##78248 |goto Azj-Kahet/0 60.63,68.78
step
talk Courier Lyan##216972
fpath Wildcamp Ul'ar |goto Azj-Kahet/0 44.49,67.48
step
talk Roughrider Tany##216979
fpath Mmarl |goto Azj-Kahet/0 76.84,64.45
step
talk Widow Arak'nai##207471
Select _"I need to inform you of what happened in the city."_ |gossip 120666
Report to the Weaver |q 78248/1 |goto Azj-Kahet/0 55.73,43.84
step
talk Widow Arak'nai##207471
turnin What We Still Have##78248 |goto Azj-Kahet/0 55.73,43.84
accept Uniting Severed Threads##84022 |goto Azj-Kahet/0 55.73,43.84
step
click General's Shadecaster
Activate the General's Shadecaster |q 84022/1 |goto Azj-Kahet/0 55.50,43.79
step
click Vizier's Shadecaster
Activate the Vizier's Shadecaster |q 84022/2 |goto Azj-Kahet/0 55.53,44.02
step
talk Widow Arak'nai##207471
Select _"<Begin Severed Threads conference.>"_ |gossip 123526
Speak to the Weaver to Begin the Conference |q 84022/3 |goto Azj-Kahet/0 55.73,43.84
step
Watch the dialogue
Witness the Formation of the Severed Threads |q 84022/4 |goto Azj-Kahet/0 55.73,43.84
step
talk Widow Arak'nai##207471
turnin Uniting Severed Threads##84022 |goto Azj-Kahet/0 55.73,43.84
step
|next "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"	|only if completedq(79573) and level < 80
|next "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Hallowfall (Full Zone)"		|only if not completedq(79573) and level < 80
|next "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\The War Within Campaign"		|only if level >= 80 and completedallq(78546,81689,78630,84022)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)",{
author="support@zygorguides.com",
},[[
step
_NOTE:_
Some Side Quests Require Progress in Other Zones
|tip This guide contains {o}side quests{} that {o}require progress in other zones{} to complete.
|tip To complete this entire guide, you must be level 80 and complete The Ringing Deeps and Hallowfall story campaigns.
|tip You will {o}not be shown these quests{} if you have not progressed in various other questlines across Khaz Algar.
{o}It is Very Important to Avoid Accepting Quests that Aren't in this Guide{}
|tip Certain quests, when completed out of order, can permanently cause breadcrumb quests to become incomplete.
|tip This could cause issues with your quest flow.
|tip Disable automatically accepting all quests and avoid accepting quests from NPCs when not directed to.
Click Here to Continue |confirm
step
accept The War Within##81930 |goto Stormwind City/0 63.19,72.02
|tip You will automatically accept this quest.
|only if Alliance
step
use the Teleportation Scroll##227669
Teleport to Silithus |complete zone("Silithus") |q 81930
|only if Alliance
step
talk Zidormi##128607
Select _"Can you return me to the present time?"_ |gossip 47635
Time Travel to New Silithus |complete not ZGV.InPhase("Old Silithus") |goto Silithus/0 78.93,21.97 |q 81930
|only if Alliance
step
Meet Jaina in Silithus |q 81930/2 |goto Silithus/0 41.93,45.11
|only if Alliance
step
talk Lady Jaina Proudmoore##213625
turnin The War Within##81930 |goto Silithus/0 41.93,45.11
|only if Alliance
step
accept The War Within##78713
|tip You will automatically accept this quest.
|only if Horde
step
use the Teleportation Scroll##227669
Teleport to Silithus |complete zone("Silithus") |q 78713
|only if Horde
step
talk Zidormi##128607
Select _"Can you return me to the present time?"_ |gossip 47635
Time Travel to New Silithus |complete not ZGV.InPhase("Old Silithus") |goto Silithus/0 78.93,21.97 |q 78713
|only if Horde
step
Meet Thrall in Silithus |q 78713/2 |goto Silithus/0 41.96,45.04
|only if Horde
step
talk Thrall##213620
turnin The War Within##78713 |goto Silithus/0 41.96,45.04
|only if Horde
step
talk Thrall##213620
accept A Poor Reception##78714 |goto Silithus/0 41.96,45.05 |noautoaccept
_Or_ |only if completedq(79573)
Select _"I have heard this tale before. <Skip the Dalaran introduction and travel to Dornogal.>"_ |gossip 123176 |noautogossip |only if completedq(79573)
|tip If you've {o}unlocked Adventure Mode{}, you can {o}skip the intro quests{}. |only if completedq(79573)
step
click Titan Translocator
Enter the Heart Chamber |q 78714/1 |goto Silithus/0 43.20,44.49
step
talk Magni Bronzebeard##213624
turnin A Poor Reception##78714 |goto Chamber of Heart/2 50.06,65.19
accept Azeroth's Voice##78715 |goto Chamber of Heart/2 50.06,65.19
step
click Chamber Console
Activate the Chamber of Heart Console |q 78715/1 |goto Chamber of Heart/2 56.50,64.69 |count 1
step
click Chamber Console
Activate the Chamber of Heart Console |q 78715/1 |goto Chamber of Heart/2 50.14,74.00 |count 2
step
click Chamber Console
Activate the Chamber of Heart Console |q 78715/1 |goto Chamber of Heart/2 43.90,64.72 |count 3
step
talk Magni Bronzebeard##213624
Select _"I'm ready. Let's begin."_ |gossip 120882
Talk to Magni to Begin the Ritual |q 78715/2 |goto Chamber of Heart/2 50.06,65.21
step
talk Lady Jaina Proudmoore##213625
turnin Azeroth's Voice##78715 |goto Chamber of Heart/2 49.53,58.51
accept Painful Lessons##78716 |goto Chamber of Heart/2 49.53,58.51
step
click Portal to Dalaran
Take Jaina's Portal to Dalaran |q 78716/1 |goto Chamber of Heart/2 53.43,58.01
step
Meet with Khadgar in Dalaran |q 78716/2 |goto Dalaran L/12 46.80,54.47
step
talk Archmage Khadgar##213627
|tip Inside the building.
turnin Painful Lessons##78716 |goto Dalaran L/12 42.87,59.86
step
talk Moira Thaurissan##214651
|tip Inside the building.
accept The Bronzebeard Family##80500 |goto Dalaran L/12 40.39,54.13
step
talk Brann Bronzebeard##214669
|tip Inside the building.
Select _"Magni's hurt. Moira needs you both in the Portrait Room."_ |gossip 121542
Talk to Brann |q 80500/1 |goto Dalaran L/10 50.73,55.59
step
talk Moira Thaurissan##214651
|tip Inside the building.
turnin The Bronzebeard Family##80500 |goto Dalaran L/12 40.35,54.03
step
talk Moira Thaurissan##214651
turnin Slept Like a Rock##81966 |goto Dalaran L/12 43.48,54.90
|only if haveq(81966) or completedq(81966)
step
talk Magni Bronzebeard##213624
|tip Inside the building.
accept A Mysterious Warning##78717 |goto Dalaran L/12 45.33,57.32
step
talk Archmage Khadgar##213627
|tip Inside the building.
Select _"I'll wait for you here."_ |gossip 121395
Talk to Khadgar |q 78717/1 |goto Dalaran L/12 42.84,59.91
step
talk Archmage Khadgar##213627
|tip Inside the building.
turnin A Mysterious Warning##78717 |goto Dalaran L/12 41.13,62.32
accept Citizens of Dalaran##78719 |goto Dalaran L/12 41.13,62.32
step
talk Brann Bronzebeard##214669
|tip Inside the building.
accept Meet the Team##78721 |goto Dalaran L/12 47.05,49.11
step
talk Archmage Drenden##214665
|tip Inside the building.
accept Strengthen the Wards##78718 |goto Dalaran L/12 56.41,33.22
step
extraaction Eat Food##441949
Help the Citizen of Dalaran |q 78719/1 |goto Dalaran L/10 52.66,35.03 |count 1
|tip Use the {o}Eat Food{} ability.
|tip It appears as a button on the screen.
|tip You may need to dismount to see it.
step
use the Tuning Wand##220483
Strengthen the Ward |q 78718/1 |goto Dalaran L/10 51.00,23.72 |count 1
step
extraaction Catch Butterflies##441953
Help the Citizen of Dalaran |q 78719/1 |goto Dalaran L/10 42.65,34.27 |count 2
|tip Use the {o}Catch Butterflies{} ability.
|tip It appears as a button on the screen.
|tip Inside the building.
|tip You may need to dismount to see it.
step
talk Elise Starseeker##220018
Select _"Brann wanted me to check in on you."_ |gossip 121860
Check on the Algari Expedition |q 78721/1 |goto Dalaran L/10 37.62,46.25
step
use the Tuning Wand##220483
|tip Inside the building.
Strengthen the Ward |q 78718/1 |goto Dalaran L/10 30.90,48.96 |count 2
step
use the Tuning Wand##220483
Strengthen the Ward |q 78718/1 |goto Dalaran L/10 45.04,72.14 |count 3
step
extraaction Secure Shelves##440732
Help the Citizen of Dalaran |q 78719/1 |goto Dalaran L/10 53.95,61.58 |count 3
|tip Use the {o}Secure Shelves{} ability.
|tip It appears as a button on the screen.
|tip Inside the building.
|tip You may need to dismount to see it.
step
use the Tuning Wand##220483
Strengthen the Ward |q 78718/1 |goto Dalaran L/10 60.73,61.58 |count 4
step
talk Archmage Drenden##214665
|tip Inside the building.
turnin Strengthen the Wards##78718 |goto Dalaran L/12 56.42,33.15
step
talk Brann Bronzebeard##214669
|tip Inside the building.
turnin Meet the Team##78721 |goto Dalaran L/12 47.06,49.12
step
talk Archmage Khadgar##213627
|tip Inside the building.
turnin Citizens of Dalaran##78719 |goto Dalaran L/12 41.11,62.31
accept To Khaz Algar!##78722 |goto Dalaran L/12 41.11,62.31
step
talk Archmage Khadgar##213627
|tip Inside the building.
Select _"I'm ready to depart."_ |gossip 120143
Talk to Khadgar |q 78722/1 |goto Dalaran L/12 41.11,62.31
step
talk Alleria Windrunner##214908
|tip Inside the building.
|tip If she won't interact with you, relog to fix it.
turnin To Khaz Algar!##78722 |goto Dalaran TWW/0 50.45,50.45
accept Breach##79105 |goto Dalaran TWW/0 50.45,50.45
stickystart "Slay_The_Nerubians_79105"
step
clicknpc Professor Pallin##222425
|tip Inside the building.
Save the Citizen |q 79105/1 |goto Dalaran TWW/0 58.68,50.37 |count 1
step
clicknpc Sabriana Sorrowgaze##222424
Save the Citizen |q 79105/1 |goto Dalaran TWW/0 57.82,52.89 |count 2
step
clicknpc Lianna Tai##222426
|tip Inside the building.
Save the Citizen |q 79105/1 |goto Dalaran TWW/0 58.83,54.36 |count 3
step
clicknpc Glaciela Rimebang##222474
Save the Citizen |q 79105/1 |goto Dalaran TWW/0 57.93,57.12 |count 4
step
clicknpc Sandra Bartan##222446
|tip Inside the building.
Save the Citizen |q 79105/1 |goto Dalaran TWW/0 53.34,53.45 |count 5
step
clicknpc Ol' Toomba##222447
|tip Inside the building.
Save the Citizen |q 79105/1 |goto Dalaran TWW/0 51.89,53.22 |count 6
step
clicknpc Amisi Azuregaze##222445
|tip Inside the building.
Save the Citizen |q 79105/1 |goto Dalaran TWW/0 51.56,57.24 |count 7
step
clicknpc Fialla Sweetberry##222473
Save the Citizen |q 79105/1 |goto Dalaran TWW/0 51.03,62.21 |count 8
step
clicknpc Lucian Trias##222433
|tip Inside the building.
Save the Citizen |q 79105/1 |goto Dalaran TWW/0 51.32,65.78 |count 9
step
clicknpc Kizi Copperclip##222449
|tip Inside the building.
Save the Citizen |q 79105/1 |goto Dalaran TWW/0 53.24,66.66 |count 10
step
label "Slay_The_Nerubians_79105"
Kill enemies around this area
Slay the Nerubians |q 79105/2 |goto Dalaran TWW/0 56.03,64.29
'|kill Drone Abductor##219655, Nerubian Venomspitter##219661, Nerubian War-Weaver##219657, Pestilent Drone##219653, Rampaging Threadling##219664, Small Threadling##219662
step
talk Alleria Windrunner##214908
turnin Breach##79105 |goto Dalaran TWW/0 35.73,71.34
accept Rupture##79106 |goto Dalaran TWW/0 35.73,71.34
step
Return to the City |q 79106/1 |goto Dalaran TWW/0 41.20,59.43
step
Navigate the Sewers |q 79106/2 |goto Dalaran TWW/1 39.37,51.95
step
clicknpc Webbed Victim##219873
|tip If you cannot click on the citizens, your quest is bugged.
|tip Abandon the quest, log out of the game, then log in and accept it again.
Free the Webbed Citizen |q 79106/3 |goto Dalaran TWW/1 51.31,51.12 |count 1
step
clicknpc Webbed Victim##219873
|tip If you cannot click on the citizens, your quest is bugged.
|tip Abandon the quest, log out of the game, then log in and accept it again.
Free the Webbed Citizen |q 79106/3 |goto Dalaran TWW/1 50.57,59.01 |count 2
step
clicknpc Webbed Victim##219873
|tip If you cannot click on the citizens, your quest is bugged.
|tip Abandon the quest, log out of the game, then log in and accept it again.
Free the Webbed Citizen |q 79106/3 |goto Dalaran TWW/1 55.06,57.76 |count 3
step
clicknpc Webbed Victim##219873
|tip If you cannot click on the citizens, your quest is bugged.
|tip Abandon the quest, log out of the game, then log in and accept it again.
Free the Webbed Citizen |q 79106/3 |goto Dalaran TWW/1 58.04,53.06 |count 4
step
clicknpc Webbed Victim##219873
|tip If you cannot click on the citizens, your quest is bugged.
|tip Abandon the quest, log out of the game, then log in and accept it again.
Free the Webbed Citizen |q 79106/3 |goto Dalaran TWW/1 60.85,49.00 |count 5
step
click Sewer Grate
Enter the Sewer Grate |q 79106/4 |goto Dalaran TWW/1 66.80,50.81
step
Take the Citizens to Safety |q 79106/5 |goto Dalaran TWW/2 72.55,57.77
step
talk Anduin Wrynn##219885
|tip He runs to this location.
turnin Rupture##79106 |goto Dalaran TWW/2 72.55,57.77
accept Departure##80321 |goto Dalaran TWW/2 72.55,57.77
step
Seek a Different Exit |q 80321/1 |goto Dalaran TWW/2 23.20,79.68
step
Run up stairs |goto Dalaran TWW/2 12.46,78.64 < 10 |walk
Return to the Surface |q 80321/2 |goto Dalaran TWW/0 40.95,36.44
step
kill Queensguard An'Jak Shabtir##219665 |q 80321/3 |goto Dalaran TWW/0 42.80,33.73
step
talk Archmage Khadgar##219956
Select _"What do you need me to do?"_ |gossip 124153
Talk to Khadgar |q 80321/4 |goto Dalaran TWW/0 44.47,37.57
step
click Khadgar's Portal##433329
turnin Departure##80321 |goto Dalaran TWW/0 44.13,36.59
step
accept Violent Impact##78529
|tip You will accept this quest automatically.
|only if not (completedq(83621) or completedq(83543))
step
click Pile of Rubble
|tip The {o}large grey rocks{} you're buried under.
|tip Click it {o}multiple times{}.
Escape the Rubble |q 78529/1 |goto Isle of Dorn/0 28.91,54.53
|only if not (completedq(83621) or completedq(83543))
step
label "Skip_Isle_Of_Dorn_Intro"
talk Brann Bronzebeard##206017
|tip Inside the building.
accept Adventuring in Khaz Algar##83543 |goto Dornogal/0 47.40,44.41
|only if completedq(83621) or completedq(83543)
step
click Scouting Map
|tip It looks like a {o}large brown paper map{} on the table.
|tip You are {o}choosing the zone{} you wish to {o}do quests in{}.
|tip {o}Pick whichever{} you like, it doesn't matter.
accept Isle of Dorn##83548 |goto Dornogal/0 48.26,43.79		|or |only if not completedq(83548)
accept The Ringing Deeps##83550 |goto Dornogal/0 48.26,43.79	|or |only if not completedq(83550)
accept Hallowfall##83551 |goto Dornogal/0 48.26,43.79		|or |only if not completedq(83551)
accept Azj-Kahet##83552 |goto Dornogal/0 48.26,43.79		|or |only if not completedq(83552)
Choose a Zone from the Scouting Map |q 83543/1 |goto Dornogal/0 48.26,43.79 |only if haveq(83543)
|only if (haveq(83543) or completedq(83543)) and not haveq(78529)
step
_Click the Quest Complete Box:_
|tip In the quest tracker area.
turnin Adventuring in Khaz Algar##83543
|only if (haveq(83543) or completedq(83543)) and not haveq(78529)
step
_Which Zone Did You Choose?_
|tip Click the line below for the zone you want to complete quests in.
Isle of Dorn		|confirm	|next "Isle_Of_Dorn"
The Ringing Deeps	|confirm	|next "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\The Ringing Deeps (Full Zone)"
Hallowfall		|confirm	|next "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Hallowfall (Full Zone)"
Azj-Kahet		|confirm	|next "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Azj-Kahet (Full Zone)"
|only if (haveq(83543) or completedq(83543)) and not haveq(78529)
step
label "Isle_Of_Dorn"
talk Thrall##211993
turnin Violent Impact##78529 |goto Isle of Dorn/0 29.45,55.07
|only if ((haveq(78529) or completedq(78529)) and not haveq(83548)) and Horde
step
talk Lady Jaina Proudmoore##211994
turnin Violent Impact##78529 |goto Isle of Dorn/0 29.51,55.01		|only if ((haveq(78529) or completedq(78529)) and not haveq(83548)) and Alliance
turnin Isle of Dorn##83548 |goto Isle of Dorn/0 29.51,55.01		|only if haveq(83548) or completedq(83548)
accept Slay the Saboteurs##78530 |goto Isle of Dorn/0 29.51,55.01
step
talk Thrall##211993
accept Urgent Recovery##78531 |goto Isle of Dorn/0 29.45,55.07
stickystart "Slay_Nerubians"
step
click Hastily-Prepared Antidote
Aid the Crash Survivor |q 78531/1 |goto Isle of Dorn/0 30.22,54.60 |count 1
step
click Tower Fragment
Aid the Crash Survivor |q 78531/1 |goto Isle of Dorn/0 30.57,53.86 |count 3
step
click Dalaran Power Shard
Aid the Crash Survivor |q 78531/1 |goto Isle of Dorn/0 30.36,52.74 |count 4
step
click Rittsyn's Soulstone
Aid the Crash Survivor |q 78531/1 |goto Isle of Dorn/0 31.41,54.20 |count 5
step
clicknpc Polymorphed Victim##214543
|tip It looks like a {o}friendly sheep{} that walks around this small area.
Aid the Crash Survivor |q 78531/1 |goto Isle of Dorn/0 31.09,55.32 |count 6
step
click Sunreaver Satchel
Aid the Crash Survivor |q 78531/1 |goto Isle of Dorn/0 30.92,55.13 |count 7
step
talk Archmage Aethas Sunreaver##223166
accept Erratic Artifacts##78532 |goto Isle of Dorn/0 30.95,55.11
step
clicknpc Damaged Arcane Relic##212795+
|tip They look like {o}blue and pink floating crystals{}.
Destroy #5# Damaged Arcane Relics |q 78532/1 |goto Isle of Dorn/0 31.50,55.94
step
label "Slay_Nerubians"
Kill enemies around this area
Slay #12# Nerubians |q 78530/1 |goto Isle of Dorn/0 30.69,54.44
'|kill Devious Webspinner##212717, Burrowing Saboteur##212715, Burrowing Saboteur##228057
step
talk Lady Jaina Proudmoore##211994
turnin Slay the Saboteurs##78530 |goto Isle of Dorn/0 29.50,55.01
turnin Erratic Artifacts##78532 |goto Isle of Dorn/0 29.50,55.01
step
talk Lady Jaina Proudmoore##211994
turnin Slay the Saboteurs##78530 |goto Isle of Dorn/0 29.50,55.01
turnin Erratic Artifacts##78532 |goto Isle of Dorn/0 29.50,55.01
step
talk Thrall##211993
turnin Urgent Recovery##78531 |goto Isle of Dorn/0 29.45,55.07
step
Watch the dialogue
talk Anduin Wrynn##212450
accept Secure the Beach##78533 |goto Isle of Dorn/0 29.53,54.98
step
Regroup with Magni |q 78533/1 |goto Isle of Dorn/0 30.31,56.08
step
kill Queensguard Zirix##211858
Hold Off Queensguard Zirix |q 78533/2 |goto Isle of Dorn/0 30.19,56.53
step
Watch the dialogue
Stand Against Zirix's Swarm |q 78533/3 |goto Isle of Dorn/0 30.19,56.53
step
talk Baelgrim##211859
turnin Secure the Beach##78533 |goto Isle of Dorn/0 30.42,55.73
accept To Dornogal##78534 |goto Isle of Dorn/0 30.42,55.73
step
Meet Baelgrim in Dornogal |q 78534/3 |goto Dornogal/0 33.57,75.20
|tip On top of the wall.
step
talk Baelgrim##216628
|tip On top of the wall.
turnin To Dornogal##78534 |goto Dornogal/0 33.57,75.20
accept They Come from Below##78535 |goto Dornogal/0 33.57,75.20
step
clicknpc Lokren##212696
|tip On top of the wall.
Mount Lokren |q 78535/1 |goto Dornogal/0 33.91,75.71
step
_As You Fly:_
Kill enemies around this area
|tip They look like {o}various spider enemies{}.
|tip Use the abilities on your action bar.
|tip If Lokren is bugged, relog to fix it.
Slay the Nerubian Invaders |q 78535/2
step
Watch the dailogue
Regroup with Baelgrim |q 78535/3
step
talk Baelgrim##217852
turnin They Come from Below##78535 |goto Dornogal/0 36.20,64.23
accept Impossible Odds##78536 |goto Dornogal/0 36.20,64.23
step
talk Thrall##219757
Select _"What is the plan?"_ |gossip 121391
Speak to Thrall |q 78536/1 |goto Dornogal/0 36.49,65.37
step
talk Baelgrim##217852
turnin Impossible Odds##78536 |goto Dornogal/0 36.21,64.22
accept Hypocenter##78460 |goto Dornogal/0 36.21,64.22
step
clicknpc Coreway Worker##216985
Clear the Hazard and Rescue the Earthen |q 78460/1 |goto Dornogal/0 35.08,66.48 |count 1
step
clicknpc Coreway Worker##219992
Clear the Hazard and Rescue the Earthen |q 78460/1 |goto Dornogal/0 33.47,66.77 |count 2
step
click Coreway Rubble
Clear the Hazard and Rescue the Earthen |q 78460/1 |goto Dornogal/0 33.36,64.73 |count 3
step
click Dead Earthen
|tip He is under the rubble.
Clear the Hazard and Rescue the Earthen |q 78460/1 |goto Dornogal/0 33.42,64.73 |count 4
step
clicknpc Coreway Worker##219993
Clear the Hazard and Rescue the Earthen |q 78460/1 |goto Dornogal/0 33.64,64.10 |count 5
step
click Coreway Rubble
Clear the Hazard and Rescue the Earthen |q 78460/1 |goto Dornogal/0 31.95,62.60 |count 6
step
click Coreway Rubble
Clear the Hazard and Rescue the Earthen |q 78460/1 |goto Dornogal/0 31.27,60.80 |count 7
step
click Coreway Rubble
Clear the Hazard and Rescue the Earthen |q 78460/1 |goto Dornogal/0 31.27,59.37 |count 8
step
talk Baelgrim##217853
|tip Inside the building.
turnin Hypocenter##78460 |goto Dornogal/0 29.65,59.68
step
talk Speaker Brinthe##217857
|tip Inside the building.
accept The Archive##78468 |goto Dornogal/0 29.39,59.94
step
talk Merrix##217854
|tip Inside the building.
accept Stones of Dornogal##78457 |goto Dornogal/0 29.40,59.45
step
extraaction Prismatic Codex##446651
Use the Prismatic Codex to View the Memory Gem |q 78468/1 |goto Dornogal/0 29.22,59.68
|tip Use the {o}Prismatic Codex{} ability.
|tip It appears as a button on the screen.
|tip Upstairs inside the building.
step
click Archival Repository
|tip Upstairs inside the building.
Deposit the Memory Gem in the Archival Repository |q 78468/2 |goto Dornogal/0 29.22,59.68
step
talk Speaker Brinthe##217857
|tip Inside the building.
turnin The Archive##78468 |goto Dornogal/0 29.39,59.94
step
talk Oathsworn Peacekeeper##219014
Select _"Profession Trainer"_ |gossip 122786
Ask a Guard About Profession Trainers |q 78457/1 |goto Dornogal/0 30.64,60.17
step
talk Breem##212369
|tip Upstairs outside.
Select _"<Introduce yourself with Councilward's Signet.>"_ |gossip 120909
Speak to Flight Master Breem |q 78457/2 |goto Dornogal/0 44.67,51.16
step
talk Breem##212369
fpath Dornogal |goto Dornogal/0 44.67,51.16
step
talk Ronesh##212370
|tip Inside the building.
Select _"<Introduce yourself with Councilward's Signet.>"_ |gossip 120913
Speak to Innkeeper Ronesh |q 78457/3 |goto Dornogal/0 44.73,46.41
step
talk Ronesh##212370
|tip Inside the building.
home Dornogal |goto Dornogal/0 44.73,46.41 |q 78457
step
talk Brann Bronzebeard##206017
|tip Inside the building.
Select _"You made it, Brann! What's going on here?"_ |gossip 122129
Speak to Brann Bronzebeard |q 78457/4 |goto Dornogal/0 47.39,44.41
step
talk Auditor Balwurz##223728
|tip Inside the building.
Speak to Auditor Balwurz |q 78457/5 |goto Dornogal/0 39.09,24.15
step
talk Merrix##217861
|tip Inside the building.
turnin Stones of Dornogal##78457 |goto Dornogal/0 39.87,26.00
accept State of the Union##78459 |goto Dornogal/0 39.87,26.00
step
talk Merrix##217861
|tip Inside the building.
Select _"Tell me about the Council of Dornogal."_ |gossip 122305 |noautogossip
|tip You can watch the dialogue, or choose {o}"<Skip conversation> Tell me another time."{}
Speak to Merrix |q 78459/1 |goto Dornogal/0 39.87,26.00
step
talk Merrix##217861
|tip Inside the building.
turnin State of the Union##78459 |goto Dornogal/0 39.87,26.00
step
talk Moira Thaurissan##217864
|tip Inside the building.
accept The Fourth Seat##78461 |goto Dornogal/0 40.55,25.84
step
click Earthen Teleporter
|tip Inside the building.
Use the Earthen Teleporter |q 78461/1 |goto Dornogal/0 40.73,22.33
step
Regroup with Baelgrim at the Top of Foundation Hall |q 78461/2 |goto Dornogal/0 40.68,28.37
step
talk Rannida##224544
accept Crossroads Plaza##82747 |goto Dornogal/0 46.76,32.95
step
talk Peacekeeper Leif##222224
|tip You may need to complete the {o}Hallowfall story campaign{} to be able to accept this quest.
accept An Oddball in Dornogal##80209 |goto Dornogal/0 54.34,19.28
|only if achieved(20598)
step
talk Concerned Dornogal Citizen##222259
|tip Inside the building.
Select _"What can you tell me about the Arathi Lamplighter?"_ |gossip 123322
Interview the Concerned Dornogal Citizen |q 80209/1 |goto Dornogal/0 54.44,24.28 |count 1
|only if achieved(20598)
step
talk Concerned Dornogal Citizen##222260
Select _"What can you tell me about the Arathi Lamplighter?"_ |gossip 122511
Interview the Concerned Dornogal Citizen |q 80209/1 |goto Dornogal/0 56.80,28.05 |count 2
|only if achieved(20598)
step
talk Concerned Dornogal Citizen##222263
|tip He walks around this area.
|tip Inside the building.
Select _"What can you tell me about the Arathi Lamplighter?"_ |gossip 122512
Interview the Concerned Dornogal Citizen |q 80209/1 |goto Dornogal/0 51.66,11.65 |count 3
|only if achieved(20598)
step
talk Aldra##219393
accept How Scandalous!##80207 |goto Dornogal/0 62.71,21.74
step
Enter the building high up on the mountain |goto Dornogal/0 65.72,17.08 < 10 |walk
talk Peacekeeper Leif##222268
|tip Inside the building.
turnin An Oddball in Dornogal##80209 |goto Dornogal/0 67.18,18.72
accept Found Around the Unbound##80210 |goto Dornogal/0 67.18,18.72
|only if achieved(20598)
step
Investigate the Disturbance Near the Forgegrounds |q 80207/1 |goto Dornogal/0 49.89,49.32
|tip Next to the doorway of the building.
step
talk Peacekeeper Kragad##219394
|tip Next to the doorway of the building.
turnin How Scandalous!##80207 |goto Dornogal/0 49.89,49.32
accept Seizing Evidence##79521 |goto Dornogal/0 49.89,49.32
step
click Shipment Crate+
|tip They look like {o}treasure chests{}.
Gather #3# Seized Shipments |q 79521/1 |goto Dornogal/0 51.38,51.24
step
talk Peacekeeper Kragad##219394
|tip Next to the doorway of the building.
turnin Seizing Evidence##79521 |goto Dornogal/0 49.89,49.32
accept Withheld Information##79522 |goto Dornogal/0 49.89,49.32
step
talk Line Worker##219395
|tip Inside the building.
Interrogate the Line Worker |q 79522/1 |goto Dornogal/0 50.06,48.33 |count 1
step
talk Line Worker##219395
|tip Inside the building.
Interrogate the Line Worker |q 79522/1 |goto Dornogal/0 49.78,48.03 |count 2
step
talk Line Worker##219395
|tip Inside the building.
Interrogate the Line Worker |q 79522/1 |goto Dornogal/0 49.59,48.25 |count 3
step
talk Line Worker##219395
Interrogate the Line Worker |q 79522/1 |goto Dornogal/0 48.98,49.49 |count 4
step
talk Line Worker##219395
Interrogate the Line Worker |q 79522/1 |goto Dornogal/0 48.90,49.59 |count 5
step
talk Peacekeeper Kragad##219394
|tip Next to the doorway of the building.
turnin Withheld Information##79522 |goto Dornogal/0 49.88,49.32
accept Something Hidden##79523 |goto Dornogal/0 49.88,49.32
step
click False-Bottomed Crate+
|tip They look like {o}treasure chests{}.
Smash #3# Crates |q 79523/1 |goto Dornogal/0 51.39,51.23
step
click Nerubian Silk Ropes
Gather the Evidence |q 79523/2 |goto Dornogal/0 51.26,51.18 |count 1
step
click Infused Underclay
Gather the Evidence |q 79523/2 |goto Dornogal/0 51.37,51.38 |count 2
step
click Bag of Glowing Shards
Gather the Evidence |q 79523/2 |goto Dornogal/0 51.49,51.25 |count 3
step
click Bundle of Receipts
Gather the Evidence |q 79523/2 |goto Dornogal/0 51.55,51.29 |count 4
step
talk Peacekeeper Kragad##219394
|tip Next to the doorway of the building.
turnin Something Hidden##79523 |goto Dornogal/0 49.89,49.32
accept Report to the Councilward##79525 |goto Dornogal/0 49.89,49.32
step
click Open Ledger
|tip Inside the building.
|tip High up on the mountain.
Find Merrix at the Councilward's Rise |q 79525/1 |goto Dornogal/0 55.62,6.08
step
click Open Ledger
|tip Inside the building.
Approach Merrix's Desk |q 79525/2 |goto Dornogal/0 55.62,6.08
step
click Open Ledger
|tip Inside the building.
turnin Report to the Councilward##79525 |goto Dornogal/0 55.62,6.08
step
talk Bondaz##224566
turnin Crossroads Plaza##82747 |goto Isle of Dorn/0 55.21,55.85
step
click Wanted: The Boroughbreaker
accept Wanted: The Boroughbreaker##83335 |goto Isle of Dorn/0 55.24,55.92
|tip If this quest is not available to you, skip this step.
step
talk Freysworn Etterca##226750
accept The Earthwound##83336 |goto Isle of Dorn/0 55.51,55.88
step
talk Urtago##221355
accept To Mourning Rise##81661 |goto Isle of Dorn/0 55.75,56.05 |or
|tip If this quest is not available, skip this step.
'|complete completedq(78743) |or
step
click Dropped Package
accept Lost Delivery##78754 |goto Isle of Dorn/0 55.54,56.50
step
talk Natalia Pearce##223637
accept For The Love of Gems##82441 |goto Isle of Dorn/0 43.04,70.04
|tip If this quest is not available, skip this step.
step
talk Peacekeeper Leif##222314
turnin Found Around the Unbound##80210 |goto Isle of Dorn/0 42.66,70.96
accept The Pillage of Freywold Village##80211 |goto Isle of Dorn/0 42.66,70.96
|only if achieved(20598)
step
talk Aggartha##214444
accept Weapons and Warriors##78996 |goto Isle of Dorn/0 42.73,71.75
step
Enter the building |goto Isle of Dorn/0 42.09,71.32 < 10 |walk
talk Freysworn Cruton##212708
|tip Inside the building.
accept Frayed Legacy##78570 |goto Isle of Dorn/0 41.63,71.34
|only if not haveq(78571) and not completedq(78571)
step
talk Hreka##217961
|tip Outside the building.
accept Prairie Fever##78469 |goto Isle of Dorn/0 41.75,70.84
step
click Pottery Jar
Select _"<Pick up the jar.>"_ |gossip 121544,121673,121546
Acquire the Pottery |q 78469/1 |goto Isle of Dorn/0 41.62,70.88 |count 1
step
click Pottery Jar
Select _"<Pick up the jar.>"_ |gossip 121544,121673,121546
Acquire #3# Pottery |q 78469/1 |goto Isle of Dorn/0 41.63,70.87 |count 2
step
click Pottery Jar
Select _"<Pick up the jar.>"_ |gossip 121544,121673,121546
Acquire #3# Pottery |q 78469/1 |goto Isle of Dorn/0 41.62,70.85 |count 3
step
Enter the building |goto Isle of Dorn/0 41.55,72.36 < 10 |walk
talk Betta##223648
|tip Inside the building.
Select _"What do you know about Basalteous?"_ |gossip 122466
Talk to Betta |q 82441/1 |goto Isle of Dorn/0 41.67,71.79
|only if haveq(82441) or completedq(82441)
step
talk Kurron##223652
Select _"Where can I find the Basalteous?"_ |gossip 122467
Talk to Kurron |q 82441/2 |goto Isle of Dorn/0 40.93,71.83
|only if haveq(82441) or completedq(82441)
step
talk Germira##218535
accept All Ore Nothing##82792 |goto Isle of Dorn/0 41.04,72.09
step
talk Iridi##217439
fpath Freywold Village |goto Isle of Dorn/0 41.04,72.93
step
click Weapons Crate
Acquire the Weapon Crate |q 78996/2 |goto Isle of Dorn/0 41.04,73.07 |count 1
step
talk Garrak##214459
Select _"<Explain the farmers' situation and their offer of pearls as a reward.>"_ |gossip 120276
Recruit the Warrior |q 78996/1 |goto Isle of Dorn/0 41.40,73.96 |count 1
step
click Weapons Crate
|tip Inside the building.
Acquire the Weapon Crate |q 78996/2 |goto Isle of Dorn/0 41.61,74.46 |count 2
step
talk Maluc##223649
|tip Inside the building.
Select _"What do you know about Basalteous?"_ |gossip 122463
Talk to Maluc |q 82441/3 |goto Isle of Dorn/0 41.63,74.96
|only if haveq(82441) or completedq(82441)
step
click Arathi Journal
|tip Inside the building.
Select _"<Take the journal.>"_ |gossip 122552
Collect the First Clue |q 80211/1 |goto Isle of Dorn/0 41.85,73.87
|only if achieved(20598)
step
click Conspicuous Arathi Candle
|tip Downstairs inside the building.
Select _"<Take the burnt letter fragment.>"_ |gossip 122553
|tip You will be attacked.
Collect the Second Clue |q 80211/2 |goto Isle of Dorn/0 41.48,75.10
|only if achieved(20598)
step
talk Adelgonn##217879
Select _"Are you Adelgonn?"_ |gossip 122307
Find Adelgonn |q 78461/3 |goto Isle of Dorn/0 41.86,72.64
step
talk Adelgonn##217879
turnin The Fourth Seat##78461 |goto Isle of Dorn/0 41.86,72.64
accept Delve into the Earth##78464 |goto Isle of Dorn/0 41.86,72.64
step
talk Kaldrinn##214460
Select _"<Explain the farmers' situation and their offer of pearls as a reward.>"_ |gossip 120275
Recruit the Warrior |q 78996/1 |goto Isle of Dorn/0 42.16,72.28 |count 2
step
talk Kodun##216094
|tip Inside the building.
Select _"<Hand over the pottery.>"_ |gossip 121126
Deliver the Pottery |q 78469/2 |goto Isle of Dorn/0 42.26,73.34
step
talk Kodun##216094
|tip Inside the building.
turnin Prairie Fever##78469 |goto Isle of Dorn/0 42.26,73.34
accept Monsters in the Dark##79691 |goto Isle of Dorn/0 42.26,73.34
accept Buried, Not Forgotten##79692 |goto Isle of Dorn/0 42.26,73.34
step
talk Arathi Soldier##222338
Select _"<Take the note.>"_ |gossip 122554
|tip You will be attacked.
Collect the Third Clue |q 80211/3 |goto Isle of Dorn/0 43.87,75.91
|only if achieved(20598)
step
click Weapons Crate
Acquire the Weapon Crate |q 78996/2 |goto Isle of Dorn/0 43.94,78.84 |count 3
step
talk Bertola##214462
|tip Inside the tower, on the ground floor.
Select _"<Explain the farmers' situation and their offer of pearls as a reward.>"_ |gossip 120267
Recruit the Warrior |q 78996/1 |goto Isle of Dorn/0 44.43,79.26 |count 3
step
talk Eiggard##214461
|tip Inside the tower, on the ground floor.
Select _"<Explain the farmers' situation and their offer of pearls as a reward.>"_ |gossip 120274
Recruit the Warrior |q 78996/1 |goto Isle of Dorn/0 44.46,79.26 |count 4
step
talk Merrimack##214463
|tip Outside, at the top of the tower.
Select _"<Explain the farmers' situation and their offer of pearls as a reward.>"_ |gossip 120277
Recruit the Warrior |q 78996/1 |goto Isle of Dorn/0 44.72,79.27 |count 5
step
talk Aggartha##215201
turnin Weapons and Warriors##78996 |goto Isle of Dorn/0 49.81,76.66
accept Pilfered Pearls##78997 |goto Isle of Dorn/0 49.81,76.66
accept Frontline Farmers##78998 |goto Isle of Dorn/0 49.81,76.66
stickystart "Collect_Pilfered_Pearls"
step
click Weapons Crate
Distribute the Weapon Crate |q 78998/1 |goto Isle of Dorn/0 49.19,79.45 |count 1
step
click Weapons Crate
Distribute the Weapon Crate |q 78998/1 |goto Isle of Dorn/0 50.74,77.56 |count 2
step
click Weapons Crate
Distribute the Weapon Crate |q 78998/1 |goto Isle of Dorn/0 52.07,79.12 |count 3
step
label "Collect_Pilfered_Pearls"
Kill Pearlfin enemies around this area
|tip They look like {o}gorlocs{}.
collect 8 Pilfered Pearl##212176 |q 78997/1 |goto Isle of Dorn/0 50.55,80.54
'|kill Pearlfin Sparkleseeker##214432, Pearlfin Sea-Shaman##214435, Pearlfin Waterweaver##214434, Pearlfin Tiderunner##214433
step
talk Aggartha##215327
turnin Pilfered Pearls##78997 |goto Isle of Dorn/0 49.55,76.59
turnin Frontline Farmers##78998 |goto Isle of Dorn/0 49.55,76.59
accept Heart of a Hero##78999 |goto Isle of Dorn/0 49.55,76.59
step
kill Purgle-lurgle##214544 |q 78999/3 |goto Isle of Dorn/0 51.65,82.87
|tip Inside the hut.
step
kill Murgle-whurgle##214546 |q 78999/2 |goto Isle of Dorn/0 51.12,84.63
step
kill Burgle-gurgle##214545 |q 78999/1 |goto Isle of Dorn/0 49.34,83.85
step
talk Dorbund##215420
turnin Heart of a Hero##78999 |goto Isle of Dorn/0 50.51,78.62
step
talk Natalia Pearce##223637
turnin For The Love of Gems##82441 |goto Isle of Dorn/0 43.04,70.04
accept Precious Gems##82465 |goto Isle of Dorn/0 43.04,70.04
|only if haveq(82441) or completedq(82441)
step
talk Peacekeeper Leif##222314
turnin The Pillage of Freywold Village##80211 |goto Isle of Dorn/0 42.66,70.96
accept The Abductors' Obstructors##80212 |goto Isle of Dorn/0 42.66,70.96
|only if achieved(20598)
step
Journey to the Earthcrawl Mines Delve |q 78464/1 |goto Isle of Dorn/0 38.87,73.27
step
talk Brann Bronzebeard##213030
Select _"Let's go save the earthen in the delve."_ |gossip 120958
Speak to Brann Bronzebeard |q 78464/2 |goto Isle of Dorn/0 38.87,73.27
step
click Explorer's League Supplies
Select _"<View Brann Bronzebeard's supplies.>"_ |gossip 122660
Open the Explorer's League Supplies |q 78464/3 |goto Isle of Dorn/0 38.90,73.28
step
Select a Combat Role for Brann Bronzebeard |q 78464/4 |goto Isle of Dorn/0 38.90,73.28
|tip Follow the instructions on the screen.
step
Enter the Earthcrawl Mines |q 78464/5 |goto Isle of Dorn/0 38.55,73.93
|tip Walk through the {o}portal{} to enter the delve.
|tip Inside the small mine.
step
Complete the Earthcrawl Mines Objectives |q 78464/6
|tip The delve is simple to complete.
step
Find the Earthcrawl Mines Treasure |q 78464/7
|tip Open the {o}treasure chests{} inside the delve.
step
Leave the Earthcrawl Mines Delve |complete not subzone("Earthcrawl Mines") |q 78464
|tip Click the {o}Leave-O-Bot 7000{} near the {o}treasure{} inside the delve.
|tip Walk through the {o}portal{} to leave the delve.
step
talk Brann Bronzebeard##213030
Select _"What will you do now?"_ |gossip 120969
Speak to Brann Bronzebeard Outside the Delve |q 78464/8 |goto Isle of Dorn/0 38.75,73.30
step
click Discarded Botanist Notes
|tip Inside the building.
accept Concerning Fungarians##79686 |goto Isle of Dorn/0 35.79,77.17
step
click Discarded Research Notes
|tip Upstairs inside the building.
Collect the Research Notes |q 79686/1 |goto Isle of Dorn/0 35.82,77.18 |count 1
step
click Discarded Research Notes
|tip Upstairs inside the building.
Collect the Research Notes |q 79686/1 |goto Isle of Dorn/0 35.65,77.14 |count 2
step
kill Mossbloom Hazewalker##219019
|tip Upstairs inside the building, at the top.
Collect the Research Notes |q 79686/1 |goto Isle of Dorn/0 35.68,76.99 |count 3
stickystart "Collect_Modhinas_Belongings"
step
Enter the mine |goto Isle of Dorn/0 34.92,75.48 < 15 |walk
kill Ashen Stonestalker##217624 |q 79691/1 |goto Isle of Dorn/0 34.73,74.11
|tip It looks like a {o}large bat without wings{} that walks around this area
|tip Inside the mine.
step
clicknpc Modhina##219218
|tip Inside the mine.
Find Modhina |q 79692/2 |goto Isle of Dorn/0 34.60,74.32
step
label "Collect_Modhinas_Belongings"
Kill enemies around this area
|tip Inside the mine. |notinsticky
Collect #3# Modhina's Belongings |q 79692/1 |goto Isle of Dorn/0 34.92,75.48
'|kill Festering Sporemass##217963, Acute Blightspore##218423
step
Follow the path back up and leave the mine |goto Isle of Dorn/0 34.92,75.48 < 15 |walk |only if subzone("Gemvein Tunnels") and indoors()
talk Natalia Pearce##223923
|tip Next to the entrance of the cave.
Select _"After you."_ |gossip 122493
Meet Natalia Outside the Cave |q 82465/1 |goto Isle of Dorn/0 33.56,80.26
|only if haveq(82465) or completedq(82465)
step
talk Natalia Pearce##223924
|tip Inside the small cave.
turnin Precious Gems##82465 |goto Isle of Dorn/0 33.87,79.59
accept What We Do For Gems##82466 |goto Isle of Dorn/0 33.87,79.59
|only if haveq(82465) or completedq(82465)
step
kill Igneous Elemental##223657+
Collect #4# Elemental Cores |q 82466/1 |goto Isle of Dorn/0 32.07,76.50
|only if haveq(82466) or completedq(82466)
step
talk Natalia Pearce##223924
|tip Inside the small cave.
turnin What We Do For Gems##82466 |goto Isle of Dorn/0 33.87,79.59
accept Gems Are Forever##82467 |goto Isle of Dorn/0 33.87,79.59
|only if haveq(82466) or completedq(82466)
step
click Igneous Core
|tip Inside the small cave.
Place the First Core |q 82467/1 |goto Isle of Dorn/0 33.79,79.37
|only if haveq(82467) or completedq(82467)
step
click Igneous Core
|tip Inside the small cave.
Place the Second Core |q 82467/2 |goto Isle of Dorn/0 33.96,79.67
|only if haveq(82467) or completedq(82467)
step
click Igneous Core
|tip Inside the small cave.
Place the Third Core |q 82467/3 |goto Isle of Dorn/0 33.88,79.38
|only if haveq(82467) or completedq(82467)
step
click Igneous Core
|tip Inside the small cave.
Place the Fourth Core |q 82467/4 |goto Isle of Dorn/0 33.97,79.55
|only if haveq(82467) or completedq(82467)
step
Watch the dialogue
|tip Inside the small cave.
Defeat Basalteous |complete readyq(82467) or completedq(82467) |goto Isle of Dorn/0 33.87,79.59
|only if haveq(82467) or completedq(82467)
step
talk Natalia Pearce##223924
|tip Inside the cave.
turnin Gems Are Forever##82467 |goto Isle of Dorn/0 33.87,79.59
|only if haveq(82467) or completedq(82467)
step
talk Adelgonn##217879
turnin Delve into the Earth##78464 |goto Isle of Dorn/0 41.86,72.64
accept A Natural Remedy##79553 |goto Isle of Dorn/0 41.86,72.64
step
talk Baelgrim##217881
accept Building Blocks##78463 |goto Isle of Dorn/0 41.77,72.66
step
talk Kodun##216094
|tip Inside the building.
turnin Monsters in the Dark##79691 |goto Isle of Dorn/0 42.26,73.34
turnin Buried, Not Forgotten##79692 |goto Isle of Dorn/0 42.26,73.34
step
Watch the dialogue
|tip Inside the building.
talk Hreka##217961
accept Hope, An Anomaly##79703 |goto Isle of Dorn/0 42.29,73.21
step
click Forge Vessel
|tip Inside the building.
Place the Ore in the Forge |q 79703/1 |goto Isle of Dorn/0 42.40,73.12
step
click Ball of Clay
|tip Inside the building.
Mould the Ball of Clay |q 79703/2 |goto Isle of Dorn/0 42.32,73.11
step
click Unfired Pot
|tip Inside the building.
Pick Up the Unfired Pot |q 79703/3 |goto Isle of Dorn/0 42.32,73.11
step
click Unfired Pot
|tip Inside the building.
Place the Unfired Pot in the Forge |q 79703/4 |goto Isle of Dorn/0 42.39,73.08
step
talk Hreka##217961
|tip Inside the building.
turnin Hope, An Anomaly##79703 |goto Isle of Dorn/0 42.35,73.08
step
Enter the building |goto Isle of Dorn/0 42.09,71.32 < 10 |walk
talk Yeonin##218729
|tip Inside the building.
turnin Concerning Fungarians##79686 |goto Isle of Dorn/0 41.46,71.39
stickystart "Collect_Glittering_Ore"
step
Kill enemies around this area
collect 10 Fungarian Chunks##213233 |q 79553/1 |goto Isle of Dorn/0 36.07,74.91
'|kill Scarlet Stinkcap##212579, Budling Morel##212577, Rustul Titancap##213115, Agaric Spreader##212578
step
label "Collect_Glittering_Ore"
click Unsorted Ore Pile+
|tip They look like large {o}piles of grey rocks{} with {o}red gems{} in them.
click Ore Fragment+
|tip They look like {o}small red crystals{}.
collect 20 Glittering Ore##211962 |q 78463/1 |goto Isle of Dorn/0 36.07,74.91
step
talk Baelgrim##217881
turnin Building Blocks##78463 |goto Isle of Dorn/0 41.76,72.91
step
talk Adelgonn##217879
turnin A Natural Remedy##79553 |goto Isle of Dorn/0 41.86,72.63
accept Echoes of Compassion##78462 |goto Isle of Dorn/0 41.86,72.63
step
clicknpc Injured Earthen##215765
Heal the Injured Earthen |q 78462/1 |goto Isle of Dorn/0 41.75,72.43 |count 1
step
clicknpc Injured Earthen##215765
Heal the Injured Earthen |q 78462/1 |goto Isle of Dorn/0 41.83,72.35 |count 2
step
clicknpc Injured Earthen##223459
Heal the Injured Earthen |q 78462/1 |goto Isle of Dorn/0 42.07,72.62 |count 3
step
clicknpc Injured Earthen##215765
Heal the Injured Earthen |q 78462/1 |goto Isle of Dorn/0 41.94,72.99 |count 4
step
clicknpc Injured Earthen##215765
Heal the Injured Earthen |q 78462/1 |goto Isle of Dorn/0 41.92,73.01 |count 5
step
talk Findorn##216109
Select _"<Carry Findorn to the pool.>"_ |gossip 120682
Pick Up Findorn |q 78462/2 |goto Isle of Dorn/0 41.79,72.96
step
clicknpc Findorn##217502
Place Findorn in the Pool |q 78462/3 |goto Isle of Dorn/0 41.87,72.75
step
talk Ebona##216111
Select _"How is Ebona doing?"_ |gossip 120684
Assess Ebona |q 78462/4 |goto Isle of Dorn/0 41.86,72.67
step
Watch the dialogue
talk Adelgonn##217879
turnin Echoes of Compassion##78462 |goto Isle of Dorn/0 41.86,72.64
step
talk Moira Thaurissan##217878
accept The Proscenium##78470 |goto Isle of Dorn/0 41.89,72.69
step
talk Dagran Thaurissan II##225451
accept Not Enough Minerals##83081 |goto Isle of Dorn/0 44.82,64.41
step
talk Peacekeeper Hektare##225454
|tip She fights around this area.
accept The Opalfront##83082 |goto Isle of Dorn/0 44.84,64.28
stickystart "Collect_Opals"
stickystart "Kill_Nerubian_Webspinners"
stickystart "Kill_Nerubian_Skirmishers"
step
talk Alvegar##224707
turnin All Ore Nothing##82792 |goto Isle of Dorn/0 45.87,62.83
accept Third Mine Blind##82796 |goto Isle of Dorn/0 45.87,62.83
step
label "Collect_Opals"
click Loose Opal Mound+
|tip They look like {o}piles of grey rocks{} with {o}blue gems{} in them.
Collect #6# Opals |q 83081/1 |goto Isle of Dorn/0 45.30,61.61
stickystop "Kill_Nerubian_Webspinners"
stickystop "Kill_Nerubian_Skirmishers"
step
kill Boroughbreaker Stik'kar##226294 |q 83335/1 |goto Isle of Dorn/0 45.37,55.44
|tip It looks like a {o}huge insect{}.
|tip It spawns at this location and walks along this bridge.
|only if haveq(83335) or completedq(83335)
step
talk Alvegar##224707
|tip Outside, above the cave.
turnin Third Mine Blind##82796 |goto Isle of Dorn/0 47.32,61.62
accept Hit Rock Bottom##82797 |goto Isle of Dorn/0 47.32,61.62
step
click Parachute
Equip the Parachute |q 82797/1 |goto Isle of Dorn/0 47.32,61.66
step
Explore Opalcreg |q 82797/2 |goto Isle of Dorn/0 47.75,61.73
|tip {o}Jump down{} the hole {o}into the cave{}.
|tip Use the {o}Parachute{} ability {o}before you hit the ground{}.
|tip It appears as a button on the screen.
stickystart "Kill_Nerubian_Webspinners"
stickystart "Kill_Nerubian_Skirmishers"
step
talk Cenderragg##224708
|tip Downstairs inside the cave.
turnin Hit Rock Bottom##82797 |goto Isle of Dorn/0 48.59,60.74
accept An Opal of Mine##82798 |goto Isle of Dorn/0 48.59,60.74
accept Web Beats Rock##82799 |goto Isle of Dorn/0 48.59,60.74
stickystart "Collect_Opals_82798"
step
clicknpc Opalcreg Worker##226292+
|tip They look like {o}squirming cocoons{}.
|tip Inside the cave.
|tip {o}Walk up the spiral path{} toward the cave exit {o}as you work{} on the quest.
Save #6# Opalcreg Miners |q 82799/1 |goto Isle of Dorn/0 47.35,60.90
step
label "Collect_Opals_82798"
Kill enemies around this area
|tip Inside the cave. |notinsticky
|tip {o}Walk up the spiral path{} toward the cave exit {o}as you work{} on the quest. |notinsticky
click Opal Ore##454189+
|tip They look like {o}piles of grey rocks{} with {o}blue gems{} in them.
Collect #8# Opals |q 82798/1 |goto Isle of Dorn/0 47.35,60.90
'|kill Nerubian Webspinner##224149, Nerubian Skirmisher##224150
step
talk Cenderragg##224708
|tip Inside the cave, up {o}near the exit{}.
turnin An Opal of Mine##82798 |goto Isle of Dorn/0 47.35,60.90
turnin Web Beats Rock##82799 |goto Isle of Dorn/0 47.35,60.90
accept A Sedimental Moment##82800 |goto Isle of Dorn/0 47.35,60.90
step
talk Opalcreg Worker##226838+
|tip Inside the cave.
Select _"We grabbed so much more. Don't worry."_ |gossip 123365
Inspire #4# Earthen |q 82800/1 |goto Isle of Dorn/0 47.35,60.90
step
talk Cenderragg##224708
|tip Inside the cave.
turnin A Sedimental Moment##82800 |goto Isle of Dorn/0 47.35,60.90
accept Beetlejeweled##82801 |goto Isle of Dorn/0 47.35,60.90
step
Leave the cave |goto Isle of Dorn/0 46.07,60.15 < 15 |walk |only if subzone("The Opalcreg") and indoors()
kill Kix'arak##224710 |q 82801/1 |goto Isle of Dorn/0 45.42,61.28
|tip It looks like a {o}huge insect{} that walks around this area.
step
label "Kill_Nerubian_Webspinners"
kill 6 Nerubian Webspinner##224149 |q 83082/2 |goto Isle of Dorn/0 46.07,60.14
|tip Inside and outside the mine. |notinsticky
step
label "Kill_Nerubian_Skirmishers"
kill 8 Nerubian Skirmisher##224150 |q 83082/1 |goto Isle of Dorn/0 46.07,60.14
|tip Inside and outside the mine. |notinsticky
step
talk Peacekeeper Hektare##225454
|tip She fights around this area.
turnin The Opalfront##83082 |goto Isle of Dorn/0 44.84,64.28
step
talk Dagran Thaurissan II##225451
turnin Not Enough Minerals##83081 |goto Isle of Dorn/0 44.82,64.41
accept Golgrin's Reach##78465 |goto Isle of Dorn/0 44.82,64.41
step
talk Germira##218535
turnin Beetlejeweled##82801 |goto Isle of Dorn/0 41.05,72.09
step
talk Woldtender Igris##212700
turnin Frayed Legacy##78570 |goto Isle of Dorn/0 53.55,69.90 |only if haveq(78570) or completedq(78570)
accept Mycomayhem##78571 |goto Isle of Dorn/0 53.55,69.90
step
Kill enemies around this area
collect 30 Boskroot Spores##210845 |q 78571/1 |goto Isle of Dorn/0 52.95,67.95
'|kill Boskroot Lashbane##217648, Boskroot Guardener##212697, kill Rotbark the Unfelled##217670, Boskroot Brute##212736, Boskroot Button##212766, Elder Shalehorn##212701, Infected Peafowl##212710, Boskroot Mycomancer##212698, Murmuring Trapcap##217719, Mycotic Shalehorn##212702, Mycotic Shalehorn##212704
step
talk Woldtender Igris##212700
turnin Mycomayhem##78571 |goto Isle of Dorn/0 53.55,69.90
accept Wold Memories##78572 |goto Isle of Dorn/0 53.55,69.90
step
Investigate Freydrin's Hovel |q 78572/1 |goto Isle of Dorn/0 54.11,65.45
|tip Inside the building.
step
click Fine Earthen Urn
|tip Inside the building.
Search the Urn |q 78572/2 |goto Isle of Dorn/0 54.28,65.52
step
click Dusty Memory Gem
|tip Inside the building.
Hear Freydrin's Memory |q 78572/3 |goto Isle of Dorn/0 54.17,65.23
step
click Oathbinder's Pledge
|tip Inside the building.
Read the Pledge |q 78572/4 |goto Isle of Dorn/0 54.57,65.19
step
click Freydrin's Shillelagh##411571
|tip Inside the building.
collect Freydrin's Shillelagh##216858 |q 78572/5 |goto Isle of Dorn/0 54.32,65.02
step
talk Woldtender Igris##218333
|tip Inside the building.
turnin Wold Memories##78572 |goto Isle of Dorn/0 54.23,65.28
accept Keeper's Aid##78573 |goto Isle of Dorn/0 54.23,65.28
stickystart "Cleanse_Infected_Wildlife"
step
click Ancient Stone Ward
Destroy the Stone Ward |q 78573/2 |goto Isle of Dorn/0 53.87,65.32 |count 1
step
click Ancient Stone Ward
Destroy the Stone Ward |q 78573/2 |goto Isle of Dorn/0 54.81,66.94 |count 2
step
click Ancient Stone Ward
Destroy the Stone Ward |q 78573/2 |goto Isle of Dorn/0 52.62,69.84 |count 3
step
click Ancient Stone Ward
Destroy the Stone Ward |q 78573/2 |goto Isle of Dorn/0 51.73,67.77 |count 4
step
label "Cleanse_Infected_Wildlife"
use Freydrin's Shillelagh##215158
|tip Use it on {o}Beast enemies{}.
Cleanse #4# Infected Wildlife |q 78573/1 |goto Isle of Dorn/0 52.97,68.00
'|clicknpc Elder Shalehorn##212701, Infected Peafowl##212710, Mycotic Shalehorn##212702
step
talk Woldtender Igris##218333
|tip Inside the building.
turnin Keeper's Aid##78573 |goto Isle of Dorn/0 54.24,65.28
accept Boss of the Bosk##78574 |goto Isle of Dorn/0 54.24,65.28
step
use Freydrin's Shillelagh##215142
|tip Use it on {o}Rotbark the Unfelled{}.
|tip It looks like a {o}large tree{} that walks around.
|tip He will {o}become weakened{} and {o}easier to kill{}.
|tip It will appear on your {o}minimap{} as as {o}yellow dot{}.
kill Rotbark the Unfelled##217670 |q 78574/2 |goto Isle of Dorn/0 52.66,69.68
Also check around [54.05,66.71]
step
talk Woldtender Igris##218333
|tip Inside the building.
turnin Boss of the Bosk##78574 |goto Isle of Dorn/0 54.23,65.28
step
talk Dagran Thaurissan II##225453
turnin Golgrin's Reach##78465 |goto Isle of Dorn/0 61.63,70.18
accept The History Beneath Us##79716 |goto Isle of Dorn/0 61.63,70.18
step
talk Speaker Brinthe##225478
accept Charge for a Charge##78467 |goto Isle of Dorn/0 61.66,70.19
stickystart "Collect_Shattered_Relic_Fragments"
step
click Sand Pile
|tip Stand in this {o}exact location{} to get it to appear.
collect Power Cell##215179 |q 78467/1 |goto Isle of Dorn/0 62.64,68.79 |count 1
step
click Sand Pile
|tip Stand in this {o}exact location{} to get it to appear.
collect Power Cell##215179 |q 78467/1 |goto Isle of Dorn/0 63.72,70.87 |count 2
step
click Sand Pile
|tip Move to this {o}exact location{} to get it to appear.
|tip Underwater.
collect Power Cell##215179 |q 78467/1 |goto Isle of Dorn/0 63.14,72.94 |count 3
step
label "Collect_Shattered_Relic_Fragments"
Kill enemies around this area
collect 20 Shattered Relic Fragments##225886 |q 79716/1 |goto Isle of Dorn/0 62.50,71.05
'|kill Swarming Sandwhisper##215360, Rising Tidebound##215361, Unbound Peblet##215363, Quaking Rager##215359
step
talk Dagran Thaurissan II##225453
turnin The History Beneath Us##79716 |goto Isle of Dorn/0 61.63,70.19
step
talk Speaker Brinthe##225478
turnin Charge for a Charge##78467 |goto Isle of Dorn/0 61.66,70.19
accept The Anachronism##79213 |goto Isle of Dorn/0 61.66,70.19
step
click Excavated Console
Insert the Power Cells |q 79213/1 |goto Isle of Dorn/0 61.75,69.97
step
click Titan Device
Recover the Titan Device |q 79213/2 |goto Isle of Dorn/0 61.75,69.97
step
use Titan Emitter##212602
|tip Use it on the {o}Sargassum Guardian{}.
Siphon Power from the Elemental |q 79213/3 |goto Isle of Dorn/0 62.78,72.27
|tip You will be attacked.
'|clicknpc Sargassum Guardian##212582
step
kill Sargassum Guardian##212582 |q 79213/4 |goto Isle of Dorn/0 62.78,72.27
step
talk Speaker Brinthe##225478
turnin The Anachronism##79213 |goto Isle of Dorn/0 61.66,70.18
accept A Place Forgotten##83083 |goto Isle of Dorn/0 61.66,70.18
step
kill Roth the Earthwound##226300
collect Broken Stoneheart##225674 |q 83336/1 |goto Isle of Dorn/0 60.22,53.35
step
talk Freysworn Etterca##226750
turnin The Earthwound##83336 |goto Isle of Dorn/0 55.51,55.88
step
talk Moira Thaurissan##217898
turnin The Proscenium##78470 |goto Isle of Dorn/0 56.53,52.03
step
talk Baelgrim##217766
accept The Cavalry is Here##79701 |goto Isle of Dorn/0 56.56,52.02
step
talk Wenbrandt##212295
accept Fire in the Hole##79721 |goto Isle of Dorn/0 56.67,52.10
step
click Cinderbrew Keg
Pick Up the Cinderbrew Keg |q 79721/1 |goto Isle of Dorn/0 56.66,52.02
step
extraaction Bottle of Cinderbrew##435504
Throw the Cinderbrew into the Burrow |q 79721/2 |goto Isle of Dorn/0 56.74,52.13
|tip Use the {o}Bottle of Cinderbrew{} ability on the large {o}mound of cracked dirt{}.
|tip It appears as a button on the screen.
stickystart "Repel_The_Nerubian_Invasion"
step
extraaction Bottle of Cinderbrew##435504
Collapse the Nerubian Burrow |q 79721/3 |goto Isle of Dorn/0 58.22,50.49 |count 1
|tip Use the {o}Bottle of Cinderbrew{} ability on the large {o}mound of cracked dirt{}.
|tip It appears as a button on the screen.
step
extraaction Bottle of Cinderbrew##435504
Collapse the Nerubian Burrow |q 79721/3 |goto Isle of Dorn/0 56.79,49.37 |count 2
|tip Use the {o}Bottle of Cinderbrew{} ability on the large {o}mound of cracked dirt{}.
|tip It appears as a button on the screen.
step
extraaction Bottle of Cinderbrew##435504
Collapse the Nerubian Burrow |q 79721/3 |goto Isle of Dorn/0 55.03,49.49 |count 3
|tip Use the {o}Bottle of Cinderbrew{} ability on the large {o}mound of cracked dirt{}.
|tip It appears as a button on the screen.
step
Check Up on Alleria Windrunner |q 79701/2 |goto Isle of Dorn/0 56.26,50.25
step
label "Repel_The_Nerubian_Invasion"
Kill enemies around this area
|tip Some of them fly in the air.
Repel the Nerubian Invasion |q 79701/1 |goto Isle of Dorn/0 56.59,50.94
'|kill Nerubian Swarmer##216197, Clotweave Widow##216193, Venombane Spitter##216192, Armored Scuttler##216194, Necrofang Reaper##216191
step
talk Baelgrim##217766
turnin The Cavalry is Here##79701 |goto Isle of Dorn/0 56.45,48.09
step
talk Wenbrandt##212295
turnin Fire in the Hole##79721 |goto Isle of Dorn/0 56.42,47.95
step
talk Moira Thaurissan##217898
accept Convergence##78471 |goto Isle of Dorn/0 56.48,47.96
step
talk Peacekeeper Alef##226761
turnin Wanted: The Boroughbreaker##83335 |goto Dornogal/0 54.00,19.83
|only if haveq(83335) or completedq(83335)
step
talk Moira Thaurissan##217905
|tip Inside the building.
turnin Convergence##78471 |goto Dornogal/0 40.17,26.03
step
talk Merrix##217904
|tip Inside the building.
accept Group Effort##78538 |goto Dornogal/0 39.87,26.01
step
use the Work Orders##213271+
|tip Use them on {o}Unbound Workers{}.
|tip They look like {o}dwarves{} around the perimeter of the large hole nearby.
Distribute #10# Orders |q 78538/1 |goto Dornogal/0 36.01,52.58
'|clicknpc Unbound Worker##222539
step
talk Merrix##212746
turnin Group Effort##78538 |goto Dornogal/0 36.01,52.58
step
talk Baelgrim##212747
accept Calling the Stormriders##80022 |goto Dornogal/0 36.05,52.80
step
Meet Baelgrim Outside Stormperch |q 80022/1 |goto Dornogal/0 32.16,35.72
step
talk Baelgrim##222177
Select _"Let's go. <Queue for follower dungeon.>"_ |gossip 122130
Speak to Baelgrim to Proceed |q 80022/2 |goto Dornogal/0 32.16,35.72
step
Enter The Rookery Dungeon |goto The Rookery/5 |q 80022
|tip You will automatically be queued to enter the dungeon.
step
Purge the Corruption from the Stormperch |q 80022/3
|tip Use the {o}Rookery{} dungeon guide to accomplish this.
|tip You can also use the {o}Dungeon Assistance{} ability.
|tip It appears as a button on the screen.
|tip Your {o}helpers will lead you{} through the dungeon.
step
clicknpc Stormrook##222818
|tip It looks like a {o}large blue gryphon{} standing on the platform nearby after you complete the dungeon.
Return to Dornogal |complete zone("Dornogal") |goto The Rookery/1 55.08,40.85 |q 80022
step
talk Rooktender Otwin##214352
accept To Rambleshire##78289 |goto Dornogal/0 32.76,33.63
step
talk Merrix##212746
turnin Calling the Stormriders##80022 |goto Dornogal/0 36.00,52.58
step
talk Baelgrim##222555
accept Lasting Repairs##78539 |goto Dornogal/0 35.92,52.71
step
talk Baelgrim##222555
Select _"What is the plan?"_ |gossip 120626 |noautogossip
|tip You can watch the dialogue, or choose {o}"<Skip conversation> You can discuss this amongst yourselves."{}
Discuss the Plan to Fight the Nerubians |q 78539/1 |goto Dornogal/0 35.92,52.71
step
talk Baelgrim##222555
turnin Lasting Repairs##78539 |goto Dornogal/0 35.92,52.71
accept To the Meadery##78540 |goto Dornogal/0 35.92,52.71
step
talk Urtago##213187
turnin To Mourning Rise##81661 |goto Isle of Dorn/0 57.47,42.94
step
talk Korgran##213184
accept Before I Depart##78743 |goto Isle of Dorn/0 57.45,42.96
step
talk Urtago##213687
turnin Before I Depart##78743 |goto Isle of Dorn/0 61.70,41.59
accept Honor Their Memories##78744 |goto Isle of Dorn/0 61.70,41.59
stickystart "Deal_With_The_Kobold_Infestation"
step
click Earthen Figurine
Place the Earthen Figurine |q 78744/2 |goto Isle of Dorn/0 62.01,41.77
step
click Deck of Cards
Place the Deck of Cards |q 78744/1 |goto Isle of Dorn/0 62.11,41.38
step
click Precious Gem
Place the Precious Gem |q 78744/3 |goto Isle of Dorn/0 62.52,40.95
step
label "Deal_With_The_Kobold_Infestation"
Kill enemies around this area
Deal with the Kobold Infestation |q 78744/4 |goto Isle of Dorn/0 62.47,41.33
'|kill Candlelit Desecrator##215236, Candlelit Pebblemaker##218658
step
talk Urtago##213687
turnin Honor Their Memories##78744 |goto Isle of Dorn/0 61.70,41.59
accept You No Take Plunder!##78745 |goto Isle of Dorn/0 61.70,41.59
accept Laws Apply to All##78746 |goto Isle of Dorn/0 61.70,41.59
stickystart "Slay_Kobold_Invaders"
step
click Pile of Earthen Belongings
|tip Inside the small room.
collect Earthen Belongings##211428 |q 78745/1 |goto Isle of Dorn/0 62.70,44.33 |count 1
step
click Pile of Earthen Belongings
|tip Inside the small room.
collect Earthen Belongings##211428 |q 78745/1 |goto Isle of Dorn/0 63.19,43.35 |count 2
step
click Pile of Earthen Belongings
|tip Inside the small room.
collect Earthen Belongings##211428 |q 78745/1 |goto Isle of Dorn/0 63.87,42.33 |count 3
step
label "Slay_Kobold_Invaders"
Kill enemies around this area |notinsticky
Slay #12# Kobold Invaders |q 78746/1 |goto Isle of Dorn/0 63.33,42.54
'|kill Candlelit Hexthrower##213685, Candlelit Lootsnatcher##213197, Candlelit Boomer##213683, Candlelit Ouchpatcher##214252, Candlelit Big-Boomer##211546, Candlelit Blind-Hound##218213
step
talk Urtago##213688
turnin You No Take Plunder!##78745 |goto Isle of Dorn/0 63.30,42.64
turnin Laws Apply to All##78746 |goto Isle of Dorn/0 63.30,42.64
accept The Great Collapse##78747 |goto Isle of Dorn/0 63.30,42.64
accept Cutting the Wick##78748 |goto Isle of Dorn/0 63.30,42.64
step
use Explosive Sticks##211435
|tip Use it on the {o}ladder{} sticking out of the ground.
Destroy the Kobold Tunnel |q 78747/1 |goto Isle of Dorn/0 62.85,44.78 |count 1
step
kill Workmaster Nast##213200 | q 78748/3 |goto Isle of Dorn/0 63.26,45.01
|tip He walks around this area.
step
use Explosive Sticks##211435
|tip Use it on the {o}ladder{} sticking out of the ground.
Destroy the Kobold Tunnel |q 78747/1 |goto Isle of Dorn/0 63.54,44.34 |count 2
step
kill Workmaster Earwax##213195 | q 78748/2 |goto Isle of Dorn/0 64.35,44.09
step
use Explosive Sticks##211435
|tip Use it on the {o}ladder{} sticking out of the ground.
Destroy the Kobold Tunnel |q 78747/1 |goto Isle of Dorn/0 64.19,42.96 |count 3
step
kill Hairless the Menace##213550 |q 78748/1 |goto Isle of Dorn/0 64.74,42.51
|tip He walks around this area.
step
talk Urtago##213688
turnin The Great Collapse##78747 |goto Isle of Dorn/0 63.30,42.64
turnin Cutting the Wick##78748 |goto Isle of Dorn/0 63.30,42.64
accept Who Runs this Fine Establishment?##78749 |goto Isle of Dorn/0 63.30,42.64
step
kill Grand-Heister Bokk##213679 |q 78749/1 |goto Isle of Dorn/0 62.23,38.63
|tip He walks around this area.
|tip Inside the small cave.
step
talk Urtago##214292
Select _"It is done."_ |gossip 120867
Talk to Urtago |q 78749/2 |goto Isle of Dorn/0 62.46,39.55
step
talk Urtago##213187
turnin Who Runs this Fine Establishment?##78749 |goto Isle of Dorn/0 57.47,42.94
step
talk Korgran##213184
accept One More Tradition##79335 |goto Isle of Dorn/0 57.45,42.96
stickystart "Collect_Charged_Cores"
step
click Vein of Ore+
|tip They look like {o}grey mining nodes{} with {o}blue crystals{} in them.
collect 5 Clump of Ore##213001 |q 79335/2 |goto Isle of Dorn/0 59.50,42.45
step
label "Collect_Charged_Cores"
Kill enemies around this area
collect 5 Charged Core##213002 |q 79335/1 |goto Isle of Dorn/0 59.50,42.45
'|kill Scavenging Stormfang##218401, Great Stormfang##216017
step
Enter the building |goto Isle of Dorn/0 57.39,42.91 < 15 |walk
talk Korgran##216169
|tip Inside the building.
turnin One More Tradition##79335 |goto Isle of Dorn/0 57.06,42.49
accept The Forging of Memories##79336 |goto Isle of Dorn/0 57.06,42.49
step
_NOTE:_
During This Quest
|tip {o}Korgran{} will {o}begin forging{} and tell you to {o}give him objects nearby{}.
|tip {o}Click the objects{} when he tells you to.
Click Here to Continue |confirm |q 79336
step
talk Korgran##216169
|tip Inside the building.
Select _"I am ready to begin!"_ |gossip 120605
Speak with Korgran to Start Forging the Lantern |q 79336/1 |goto Isle of Dorn/0 57.06,42.49
step
Watch the dialogue
|tip {o}Korgran{} will {o}begin forging{} and tell you to {o}give him objects nearby{}.
|tip {o}Click the objects{} when he tells you to.
|tip Inside the building.
click A Pile of Coals
|tip It looks like a {o}smaller pile of black rocks{} nearby.
click Charged Core
|tip They look like {o}blue crystals{} on a table nearby.
click Ore Barrel
|tip It looks like a {o}bucket full of dirt and rocks{} nearby.
Forge the Lantern |q 79336/2 |goto Isle of Dorn/0 57.06,42.45
step
talk Korgran##216169
|tip Inside the building.
turnin The Forging of Memories##79336 |goto Isle of Dorn/0 57.06,42.49
accept The Last Journey##79337 |goto Isle of Dorn/0 57.06,42.49
step
Watch the dialogue
talk Urtago##213187
|tip She eventually runs to this location.
turnin The Last Journey##79337 |goto Isle of Dorn/0 57.47,42.94
accept The Lost Earthen##79338 |goto Isle of Dorn/0 57.47,42.94
step
Meet with Urtago |q 79338/1 |goto Isle of Dorn/0 61.00,43.89
step
click Korgran's Lantern
Find Korgran |q 79338/2 |goto Isle of Dorn/0 61.36,43.70
step
talk Korgran##216171
Select _"<Show the lantern to Korgran.>"_ |gossip 120893
Select _"Her name is Urtago. She is waiting for you."_ |gossip 120892
Watch the dialogue
|tip Follow {o}Korgran{} as he walks.
Speak to Korgran |q 79338/3 |goto Isle of Dorn/0 61.38,43.71
'|clicknpc Korgran##216877
step
talk Urtago##216878
turnin The Lost Earthen##79338 |goto Isle of Dorn/0 60.99,43.90
accept A Change of Tradition##79339 |goto Isle of Dorn/0 60.99,43.90
step
talk Urtago##216173
turnin A Change of Tradition##79339 |goto Isle of Dorn/0 69.82,56.77
accept Tools of Declaration##79340 |goto Isle of Dorn/0 69.82,56.77
accept Cleansing Ashes##79341 |goto Isle of Dorn/0 69.82,56.77
stickystart "Collect_Ashenfolds"
step
kill Shalehorn Impaler##216970+
collect 4 Pristine Horn##213171 |q 79340/1 |goto Isle of Dorn/0 66.94,56.06
step
label "Collect_Ashenfolds"
click Ashenfold+
|tip They look like {o}groups of white flowers{}.
collect 6 Ashenfold##213157 |q 79341/1 |goto Isle of Dorn/0 67.38,55.97
step
talk Urtago##216173
turnin Tools of Declaration##79340 |goto Isle of Dorn/0 69.82,56.77
turnin Cleansing Ashes##79341 |goto Isle of Dorn/0 69.82,56.77
accept As He Departs##79342 |goto Isle of Dorn/0 69.82,56.77
step
click Incense
Place the Incense |q 79342/1 |goto Isle of Dorn/0 69.84,56.79
step
talk Korgran##216174
Select _"<Hand Korgran the horn.>"_ |gossip 120638
Give the Horn to Korgran |q 79342/2 |goto Isle of Dorn/0 69.85,56.76
step
Watch the dialogue
Conclude the Ceremony |q 79342/3 |goto Isle of Dorn/0 69.85,56.76
step
talk Urtago##216173
turnin As He Departs##79342 |goto Isle of Dorn/0 69.82,56.77
step
Watch the dialogue
talk Urtago##224930
accept The Weight of Duty##82895 |goto Isle of Dorn/0 69.89,57.04
step
talk Urtago##224948
|tip Inside the building.
Select _"I'm ready to help."_ |gossip 122723
Speak to Urtago at Fallside Outpost |q 82895/1 |goto Isle of Dorn/0 57.30,42.86
step
click New Placard
|tip Inside the building.
Collect the New Placard |q 82895/2 |goto Isle of Dorn/0 57.36,42.53
step
click Forge Tongs
|tip Inside the building.
Heat the Placard |q 82895/3 |goto Isle of Dorn/0 57.23,42.79
step
click Quenching Oil
Quench the Placard |q 82895/4 |goto Isle of Dorn/0 57.37,43.05
step
click Tempered Placard
Carve the Tempered Placard |q 82895/5 |goto Isle of Dorn/0 57.06,43.49
step
talk Urtago##224948
turnin The Weight of Duty##82895 |goto Isle of Dorn/0 57.18,43.36
step
talk Harvester Farnee##214640
turnin Lost Delivery##78754 |goto Isle of Dorn/0 66.99,43.91
step
talk Harmot##213691
accept Honey and Clay the Pain Away##78757 |goto Isle of Dorn/0 67.00,43.83
step
click Earthen Mortar
Break Up the Clay |q 78757/1 |goto Isle of Dorn/0 67.12,43.79
step
click Pot of Fire Honey
Pick Up the Fire Honey |havebuff Holding Fire Honey##435155 |goto Isle of Dorn/0 66.81,44.05 |q 78757
step
extraaction Throw Fire Honey##436681
Place the Fire Honey into the Mortar |q 78757/2 |goto Isle of Dorn/0 67.11,43.79
|tip Use the {o}Throw Fire Honey{} ability.
|tip It appears as a button on the screen.
step
click Earthen Mortar
Mix the Honey into the Clay |q 78757/3 |goto Isle of Dorn/0 67.11,43.79
step
clicknpc Shalehoof##217815
Apply the Honey Mixture to Shalehoof |q 78757/4 |goto Isle of Dorn/0 67.00,43.80
step
talk Harmot##213691
turnin Honey and Clay the Pain Away##78757 |goto Isle of Dorn/0 67.00,43.83
accept Pulse Within the Earth##78758 |goto Isle of Dorn/0 67.00,43.83
step
talk Drelda##217542
fpath Durgaz Cabin |goto Isle of Dorn/0 67.48,43.31
step
click Tremor Stone
|tip At the {o}top of the waterfall{}.
|tip You will be attacked.
Place the Tremor Stone |q 78758/1 |goto Isle of Dorn/0 65.23,46.20 |count 1
step
click Tremor Stone
|tip You will be attacked.
Place the Tremor Stone |q 78758/1 |goto Isle of Dorn/0 65.80,47.18 |count 2
step
click Tremor Stone
|tip You will be attacked.
Place the Tremor Stone |q 78758/1 |goto Isle of Dorn/0 66.30,46.26 |count 3
step
click Tremor Stone
|tip You will be attacked.
Place the Tremor Stone |q 78758/1 |goto Isle of Dorn/0 66.20,46.82 |count 4
step
talk Harmot##214921
Select _"I have placed the tremor stones."_ |gossip 120785
Talk to Harmot |q 78758/2 |goto Isle of Dorn/0 66.99,47.37
step
talk Harmot##214921
turnin Pulse Within the Earth##78758 |goto Isle of Dorn/0 66.99,47.37
accept Playing in the Mud##78755 |goto Isle of Dorn/0 66.99,47.37
step
talk Harvester Farnee##214922
accept Lots and Lots of Fire Honey##78756 |goto Isle of Dorn/0 67.01,47.29
step
kill Scornful Sandshoal##214662+
collect Frenzied Sand Globule##211483+ |n
kill Frenzied Tidecore##213699+
collect Frenzied Water Globule##211484+ |n
use the Frenzied Sand Globule##211483+
|tip You need {o}one of each globule{} to combine them.
click Elemental Silt Mound+
|tip They look like {o}piles of sand{}.
collect 20 Elementally Charged Silt##211485 |q 78755/2 |goto Isle of Dorn/0 70.29,53.57
step
kill Coalesced Living Honey##217833
|tip It looks like a {o}yellow elemental{} that walks around this area.
collect Enormous Glob of Fire Honey##211489 |q 78756/1 |goto Isle of Dorn/0 70.77,43.49
step
talk Harvester Farnee##214922
turnin Lots and Lots of Fire Honey##78756 |goto Isle of Dorn/0 67.01,47.30
step
talk Harmot##214921
turnin Playing in the Mud##78755 |goto Isle of Dorn/0 66.99,47.37
accept To Wake a Giant##78759 |goto Isle of Dorn/0 66.99,47.37
step
clicknpc Slumbering Mountain Giant##217509
Apply the Elemental Salve to the Mountain Giant |q 78759/1 |goto Isle of Dorn/0 66.44,47.05
step
talk Harmot##214921
turnin To Wake a Giant##78759 |goto Isle of Dorn/0 66.99,47.37
step
talk Baelgrim##212749
turnin To the Meadery##78540 |goto Isle of Dorn/0 75.31,43.13
accept Lay the Trap##78541 |goto Isle of Dorn/0 75.31,43.13
step
talk Wenbrandt##212750
accept Evacuation Area##78542 |goto Isle of Dorn/0 75.31,43.17
stickystart "Evacuate_Unbound_Meadworkers"
step
click Rope Fuse
|tip On top of the {o}wooden beam{}.
Hold the Fuse |complete hasbuff(434279) or countremains(78541,1) <= 3 |goto Isle of Dorn/0 74.75,42.64 |q 78541
step
click Sizzling Keg
Connect the Fuse to the Keg |q 78541/1 |goto Isle of Dorn/0 74.78,42.71 |count 1
step
click Rope Fuse
|tip On top of the {o}wooden beam{}.
Hold the Fuse |complete hasbuff(450651) or countremains(78541,1) <= 2 |goto Isle of Dorn/0 74.50,42.20 |q 78541
step
click Sizzling Keg
Connect the Fuse to the Keg |q 78541/1 |goto Isle of Dorn/0 74.51,42.27 |count 2
step
click Rope Fuse
|tip On top of the {o}wooden beam{}.
Hold the Fuse |complete hasbuff(450652) or countremains(78541,1) <= 1 |goto Isle of Dorn/0 74.45,41.75 |q 78541
step
click Sizzling Keg
Connect the Fuse to the Keg |q 78541/1 |goto Isle of Dorn/0 74.41,41.75 |count 3
step
click Rope Fuse
|tip On top of the {o}wooden beam{}.
Hold the Fuse |complete hasbuff(450653) or readyq(78541) |goto Isle of Dorn/0 74.79,41.71 |q 78541
step
click Sizzling Keg
Connect the Fuse to the Keg |q 78541/1 |goto Isle of Dorn/0 74.79,41.66 |count 4
step
label "Evacuate_Unbound_Meadworkers"
clicknpc Unbound Meadworker##212452+
|tip They look like {o}dwarves{}.
Evacuate #8# Unbound Meadworkers |q 78542/1 |goto Isle of Dorn/0 74.64,43.21
step
talk Wenbrandt##212750
turnin Evacuation Area##78542 |goto Isle of Dorn/0 75.31,43.17
step
talk Baelgrim##212749
turnin Lay the Trap##78541 |goto Isle of Dorn/0 75.31,43.13
accept Poking the Spider Nest##78543 |goto Isle of Dorn/0 75.31,43.13
step
click Keg of Cinderbrew Mead
Take the Keg of Cinderbrew Mead |q 78543/1 |goto Isle of Dorn/0 74.53,40.97
step
extraaction Throw Keg##434376
Disturb the Nerubian Burrow |q 78543/2 |goto Isle of Dorn/0 75.08,38.81
|tip Use the {o}Throw Keg{} ability on the {o}large spider web{} nearby.
|tip It appears as a button on the screen.
step
talk Baelgrim##212756
turnin Poking the Spider Nest##78543 |goto Isle of Dorn/0 74.78,42.34
accept Bring the Thunder##78544 |goto Isle of Dorn/0 74.78,42.34
step
Place the Defenses |q 78544/1 |goto Isle of Dorn/0 74.63,42.43 |count 1
|tip Use the {o}Place Sticky Cinderhoney{} ability on the ground.
|tip {o}Enemies will swarm{} soon and the {o}honey will root them{} in place, making them {o}easier to target{}.
|tip You can use the other abilities, if you prefer.
|tip It doesn't really matter.
step
Place the Defenses |q 78544/1 |goto Isle of Dorn/0 74.65,42.22 |count 2
|tip Use the {o}Place Sticky Cinderhoney{} ability on the ground.
|tip {o}Enemies will swarm{} soon and the {o}honey will root them{} in place, making them {o}easier to target{}.
|tip You can use the other abilities, if you prefer.
|tip It doesn't really matter.
step
Place the Defenses |q 78544/1 |goto Isle of Dorn/0 74.74,42.14 |count 3
|tip Use the {o}Place Sticky Cinderhoney{} ability on the ground.
|tip {o}Enemies will swarm{} soon and the {o}honey will root them{} in place, making them {o}easier to target{}.
|tip You can use the other abilities, if you prefer.
|tip It doesn't really matter.
step
Place the Defenses |q 78544/1 |goto Isle of Dorn/0 74.84,42.13 |count 4
|tip Use the {o}Place Sticky Cinderhoney{} ability on the ground.
|tip {o}Enemies will swarm{} soon and the {o}honey will root them{} in place, making them {o}easier to target{}.
|tip You can use the other abilities, if you prefer.
|tip It doesn't really matter.
step
Place the Defenses |q 78544/1 |goto Isle of Dorn/0 74.89,41.33 |count 5
|tip Use the {o}Place Sticky Cinderhoney{} ability on the ground.
|tip {o}Enemies will swarm{} soon and the {o}honey will root them{} in place, making them {o}easier to target{}.
|tip You can use the other abilities, if you prefer.
|tip It doesn't really matter.
step
Place the Defenses |q 78544/1 |goto Isle of Dorn/0 74.46,41.26 |count 6
|tip Use the {o}Place Sticky Cinderhoney{} ability on the ground.
|tip {o}Enemies will swarm{} soon and the {o}honey will root them{} in place, making them {o}easier to target{}.
|tip You can use the other abilities, if you prefer.
|tip It doesn't really matter.
step
talk Baelgrim##212756
Select _"I have finished setting up our defenses."_ |gossip 120672
Speak to Baelgrim to Begin the Defense |q 78544/2 |goto Isle of Dorn/0 74.78,42.34
step
Kill the enemies that attack in waves
|tip They are on the ground as you fly.
|tip Use the abilities on your action bar.
Slay the Nerubians |q 78544/3 |goto Isle of Dorn/0 74.78,42.34
step
Watch the dialogue
Witness Baelgrim's Plan |q 78544/4 |goto Isle of Dorn/0 74.78,42.34
step
talk Adelgonn##217849
turnin Bring the Thunder##78544 |goto Isle of Dorn/0 75.10,43.82
accept Return to the Coreway##78545 |goto Isle of Dorn/0 75.10,43.82
step
talk Harmot##224394
accept Birdman of the Three Shields##82680 |goto Isle of Dorn/0 60.17,28.38
step
talk Tordrin##217543
fpath Rambleshire |goto Isle of Dorn/0 59.16,28.58
step
talk Rannan Korren##217763
accept A Titanic Expedition!##79724 |goto Isle of Dorn/0 58.79,28.27
step
Enter the building |goto Isle of Dorn/0 58.64,27.75 < 10 |walk
Search for Lufsela at Rambleshire |q 78289/1 |goto Isle of Dorn/0 58.34,27.12
|tip Inside the building.
step
talk Violet Warden##226791
|tip Inside the building.
accept The Spirebreaker##83339 |goto Isle of Dorn/0 58.34,27.12
accept The Mage Slayer##83338 |goto Isle of Dorn/0 58.34,27.12
step
talk Rancher Edidithet##226792
|tip Inside the building.
accept Stormscarred##83337 |goto Isle of Dorn/0 58.38,28.33
step
talk Peacekeeper Leif##222353
turnin The Abductors' Obstructors##80212 |goto Isle of Dorn/0 57.56,30.05
|only if achieved(20598)
step
talk Lamplighter Kaerter##222352
accept Holy Fire in Rambleshire##80213 |goto Isle of Dorn/0 57.56,30.11
|only if achieved(20598)
step
kill Mage Slayer Phytethil##226298 | q 83338/1 |goto Isle of Dorn/0 55.49,32.20
|tip He walks around this area.
|tip Up on the mountain.
step
kill Stormscar##226295 |q 83337/1 |goto Isle of Dorn/0 59.75,34.59
step
kill Anub'esska##226299 |q 83339/1 |goto Isle of Dorn/0 61.16,37.91
|tip It comes out of the ground.
step
talk Rooktender Lufsela##211740
turnin To Rambleshire##78289 |goto Isle of Dorn/0 61.44,31.66
accept Power Predators##78291 |goto Isle of Dorn/0 61.44,31.66
accept Sleepy Sheep##78290 |goto Isle of Dorn/0 61.44,31.66
step
click Highlands Lodestone##410459+
|tip They look like {o}small dark grey rocks{}.
collect Lodestone##210489 |n
Find a Lodestone |q 78290/1 |goto Isle of Dorn/0 62.06,31.09
step
clicknpc Shraubendre##212363
Charge the Lodestone by Shraubendre |q 78290/2 |goto Isle of Dorn/0 61.51,31.61
stickystart "Slay_Mosswool_Predators"
step
clicknpc Lethargic Mosswool##212371+
Rouse #8# Lethargic Mosswools |q 78290/3 |goto Isle of Dorn/0 61.04,29.09
You can find more around [59.72,32.44]
step
label "Slay_Mosswool_Predators"
Kill enemies around this area
Slay #10# Mosswool Predators |q 78291/1 |goto Isle of Dorn/0 59.51,32.08
'|kill Stormtop Shalemaw##212364, Stormtop Terralisk##214581, Stormtop Shalemaw Young##212368
You can find more around [60.86,26.95]
step
use the Flashfire Thurible##224104
|tip Use it on {o}various sheep and dwarves{}.
|tip The {o}ones you need{} to use the item on will {o}have 3 yellow lines appearing above them{}.
|tip You will be attacked.
kill 6 Nightshade Abductor##224372 |q 80213/2 |goto Isle of Dorn/0 59.62,29.26
collect Nightshade Letter##224118 |q 80213/3 |goto Isle of Dorn/0 59.62,29.26
'|clicknpc Rambleshire Mosswool##214136, Rambleshire Mosswool##214137, Rambleshire Buck##226891, Rancher Langan##214561, Ramble Rider Enkor##226813, Tordrin##217543, Head Rancher Stenspor##209918, Rancher Tofstrun##214560, Rancher Fuoleim##214558, Rancher Kiespuch##209901, Rancher Kinnisant##214556, Rancher Silbarspra##214559, Rancher Buhisan##214557, Unthen##226509
|only if achieved(20598)
step
talk Rooktender Lufsela##211740
turnin Sleepy Sheep##78290 |goto Isle of Dorn/0 59.72,29.01
turnin Power Predators##78291 |goto Isle of Dorn/0 59.72,29.01
step
talk Head Rancher Stenspor##209918
accept Lost Lord of the Storm##78292 |goto Isle of Dorn/0 59.69,29.05
step
Enter the building |goto Isle of Dorn/0 58.64,27.75 < 15 |walk
talk Violet Warden##226791
|tip Inside the building.
turnin The Spirebreaker##83339 |goto Isle of Dorn/0 58.33,27.12
turnin The Mage Slayer##83338 |goto Isle of Dorn/0 58.33,27.12
step
talk Rancher Edidithet##226792
|tip Inside the building.
turnin Stormscarred##83337 |goto Isle of Dorn/0 58.38,28.33
step
Find Durzan |q 78292/2 |goto Isle of Dorn/0 55.56,28.79
step
click Nerubian Webbing+
|tip They look like {o}white webs{} on the large {o}ram's feet{}.
Remove #4# Webbings |q 78292/3 |goto Isle of Dorn/0 55.56,28.79
step
talk Head Rancher Stenspor##209918
turnin Lost Lord of the Storm##78292 |goto Isle of Dorn/0 58.73,30.24
accept Their Moss, Our Gain##78293 |goto Isle of Dorn/0 58.73,30.24
step
clicknpc Rambleshire Mosswool##214136+
|tip Some of them may attack you.
collect 8 Electrified Mosswool##211858 |q 78293/1 |goto Isle of Dorn/0 59.71,29.44
'|clicknpc Rambleshire Mosswool##214137, Rambleshire Mosswool##212373
step
click Harvested Mosswool
Feed Durzan |q 78293/2 |goto Isle of Dorn/0 58.79,30.36
step
talk Head Rancher Stenspor##209918
turnin Their Moss, Our Gain##78293 |goto Isle of Dorn/0 58.73,30.24
step
talk Rooktender Lufsela##211740
accept Thunderhead Butt##78294 |goto Isle of Dorn/0 58.79,30.24
step
Watch the dialogue
|tip Follow {o}Durzan{} and {o}protect him{} as he walks.
|tip He looks like a {o}large ram{}.
|tip He eventually leads you to this location.
Reunite Durzan and Belzt |q 78294/1 |goto Isle of Dorn/0 57.39,23.95
'|clicknpc Durzan##213112
step
talk Rooktender Lufsela##211740
turnin Thunderhead Butt##78294 |goto Isle of Dorn/0 58.94,29.89
step
talk Lamplighter Kaerter##222356
turnin Holy Fire in Rambleshire##80213 |goto Isle of Dorn/0 62.05,30.71
accept A Time to Kill at the Lumber Mill##80214 |goto Isle of Dorn/0 62.05,30.71
|only if achieved(20598)
step
talk Lamplighter Kaerter##222360
turnin A Time to Kill at the Lumber Mill##80214 |goto Isle of Dorn/0 67.04,31.18
accept Ungirthin' the Earthen##80215 |goto Isle of Dorn/0 67.04,31.18
|only if achieved(20598)
step
talk Peacekeeper Leif##222358
accept Concealed in the Weald##80216 |goto Isle of Dorn/0 67.06,31.25
|only if achieved(20598)
stickystart "Eliminate_Shadowsilk_Forces_At_The_Skolzgal_Mill"
step
click Lumberjack Restraints+
|tip They look like {o}metal balls chained to dwarves{}.
|tip You may be attacked.
Free #8# Abducted Lumberjacks |q 80215/1 |goto Isle of Dorn/0 66.64,27.85
'|clicknpc Abducted Lumberjack##219622
|only if achieved(20598)
step
label "Eliminate_Shadowsilk_Forces_At_The_Skolzgal_Mill"
Kill enemies around this area
Eliminate Shadowsilk Forces at the Skolzgal Mill |q 80216/1 |goto Isle of Dorn/0 66.64,27.85
'|kill Shadowsilk Wallclimber##224844, Shadowsilk Burrower##224846, Shadowsilk Taskmaster##224843, Shadowsilk Woodwebber##224845, Shadowsilk Jailer##224842
|only if achieved(20598)
step
talk Peacekeeper Leif##222362
turnin Ungirthin' the Earthen##80215 |goto Isle of Dorn/0 65.94,24.70
turnin Concealed in the Weald##80216 |goto Isle of Dorn/0 65.94,24.70
accept A Lamplight for the Shipwright##80217 |goto Isle of Dorn/0 65.94,24.70
|only if achieved(20598)
step
Enter the cave |goto Isle of Dorn/0 64.00,22.92 < 15 |walk
talk Shipwright Isaebela##219702
|tip Inside the cave.
Watch the dialogue
Confront Shipwright Isaebela |q 80217/1 |goto Isle of Dorn/0 63.53,22.97
|only if achieved(20598)
step
kill 2 Shipwright Bodyguard##225218 | q 80217/2 |goto Isle of Dorn/0 63.53,22.97
|tip Inside the cave.
|only if achieved(20598)
step
clicknpc Lamplighter Kaerter##225440
|tip Inside the cave.
Rescue Lamplighter Kaerter |q 80217/3 |goto Isle of Dorn/0 63.51,22.99
|only if achieved(20598)
step
talk Peacekeeper Leif##222363
turnin A Lamplight for the Shipwright##80217 |goto Isle of Dorn/0 65.98,23.86
accept Best Friends, Same Ends##83181 |goto Isle of Dorn/0 65.98,23.86
|only if achieved(20598)
step
talk Lamplighter Kaerter##222364
accept Up to No Good Down in Silkwood##80218 |goto Isle of Dorn/0 65.96,23.89
|only if achieved(20598)
step
Enter the cave on the beach |goto Isle of Dorn/0 64.65,20.06 < 20 |walk
click Silkwood Explosive Barrel
|tip Inside the cave.
Collect the Silkwood Explosive Barrel |q 80218/1 |goto Isle of Dorn/0 63.88,20.04 |count 1
|only if achieved(20598)
step
click Silkwood Explosive Barrel
|tip Inside the cave.
Collect the Silkwood Explosive Barrel |q 80218/1 |goto Isle of Dorn/0 64.12,21.37 |count 2
|only if achieved(20598)
step
kill Shipwright Isaebela##219801 | q 83181/1 |goto Isle of Dorn/0 64.49,21.13
kill Shadowspinner Azarak##222612 | q 83181/2 |goto Isle of Dorn/0 64.49,21.13
|tip Upstairs inside the cave.
|only if achieved(20598)
step
click Silkwood Explosive Barrel
|tip Upstairs inside the cave.
Collect the Silkwood Explosive Barrel |q 80218/1 |goto Isle of Dorn/0 64.41,20.58 |count 3
|only if achieved(20598)
step
click Pile of Explosive Barrels
|tip Inside the cave.
Collapse the Silkwood Tunnel |q 80218/2 |goto Isle of Dorn/0 63.69,20.68
|only if achieved(20598)
step
talk Peacekeeper Leif##222366
turnin Best Friends, Same Ends##83181 |goto Isle of Dorn/0 65.49,20.45
|only if achieved(20598)
step
talk Lamplighter Kaerter##222365
turnin Up to No Good Down in Silkwood##80218 |goto Isle of Dorn/0 65.51,20.45
|only if achieved(20598)
step
talk Olbarig##224392
turnin Birdman of the Three Shields##82680 |goto Isle of Dorn/0 74.56,19.71
accept Cloudrook Down##82681 |goto Isle of Dorn/0 74.56,19.71
step
Kill enemies around this area
Slay #12# Elementals |q 82681/1 |goto Isle of Dorn/0 73.80,24.54
'|kill Riled Sandtwister##225900, Riled Dirtdiver##225905, Riled Rockwalker##225904, Riled Kelpcoil##225901
step
talk Olbarig##224392
turnin Cloudrook Down##82681 |goto Isle of Dorn/0 74.56,19.71
accept Elemental Hors D'Oeuvres##82682 |goto Isle of Dorn/0 74.56,19.71
step
click Electric Eel+
|tip They look like {o}squirming blue fish{}.
click Fishing Rod+
|tip They look like {o}poles leaning on rocks{}.
|tip You may be attacked.
kill Angry Sandsnapper##225889+
collect 10 Electric Eel##224119 |q 82682/1 |goto Isle of Dorn/0 76.52,18.93
step
talk Olbarig##224392
turnin Elemental Hors D'Oeuvres##82682 |goto Isle of Dorn/0 74.56,19.71
accept Cloud Fishing##82768 |goto Isle of Dorn/0 74.56,19.71
step
extraaction Feed Cloudrook##430862
Feed #8# Wild Cloudrooks |q 82768/1 |goto Isle of Dorn/0 70.59,19.22
|tip Use the {o}Feed Cloudrook{} ability.
|tip It appears as a button on the screen.
|tip {o}Avoid the tornados{} that appear.
step
talk Olbarig##224392
|tip He walks to this location.
turnin Cloud Fishing##82768 |goto Isle of Dorn/0 70.74,19.85
step
talk Rannan Korren##217657
turnin A Titanic Expedition!##79724 |goto Isle of Dorn/0 77.92,30.29
step
talk Tuberros##217656
accept "Cataloguing"##79726 |goto Isle of Dorn/0 77.91,30.33
step
talk Rannan Korren##217828
accept Not a Heating Pack##79725 |goto Isle of Dorn/0 77.96,30.31
stickystart "Slay_Gorlocs"
step
click Titan Artifacts+
|tip They look like {o}large white balls{}.
Collect #7# Titan Artifacts |q 79726/1 |goto Isle of Dorn/0 79.66,28.89
step
label "Slay_Gorlocs"
Kill enemies around this area
Slay #12# Gorlocs |q 79725/1 |goto Isle of Dorn/0 79.72,29.19
'|kill Shimmerfin Mender##220246, Shimmerfin Scrapper##220252, Shimmerfin Oracle##220249
step
talk Rannan Korren##217828
turnin Not a Heating Pack##79725 |goto Isle of Dorn/0 77.96,30.31
step
talk Tuberros##217656
turnin "Cataloguing"##79726 |goto Isle of Dorn/0 77.91,30.33
step
talk Tharessa Sunstrand##217659
accept Because It's Shiny##79727 |goto Isle of Dorn/0 77.95,30.32
step
kill Gramwharl##220308+
collect Titan Artifact##215234 |q 79727/1 |goto Isle of Dorn/0 80.63,30.93
step
talk Tharessa Sunstrand##217659
turnin Because It's Shiny##79727 |goto Isle of Dorn/0 77.94,30.32
step
talk Rannan Korren##217828
accept It's Probably Nothing##79728 |goto Isle of Dorn/0 77.96,30.31
step
click Titan Orb
Select _"<Press the middle button.>"_ |gossip 121100
Select _"<Press the right button and then the left button.>_" |gossip 121103
Watch the dialogue
Interact with the Titan Orb |q 79728/1 |goto Isle of Dorn/0 77.94,30.27
step
talk Rannan Korren##217828
turnin It's Probably Nothing##79728 |goto Isle of Dorn/0 77.96,30.31
step
talk Speaker Brinthe##226841
turnin A Place Forgotten##83083 |goto Isle of Dorn/0 44.92,20.56
accept The Old Orders##83084 |goto Isle of Dorn/0 44.92,20.56
step
click Forgotten Weapon Rack
|tip Inside the building, on the ground floor.
Inspect the Forgotten Weapon Rack |q 83084/1 |goto Isle of Dorn/0 44.63,20.83
step
click Crumbling Ironwood Parchment##455170
|tip Inside the building, on the top floor.
Find the Petrified Parchment |q 83084/2 |goto Isle of Dorn/0 44.58,20.52
step
Meet Dagran Outside the Tower |q 83084/3 |goto Isle of Dorn/0 44.89,20.59
step
extraaction Archaic Quandary##456421
Use the Titan Emitter |q 83084/4 |goto Isle of Dorn/0 44.86,20.77
|tip Use the {o}Archaic Quandary{} ability.
|tip It appears as a button on the screen.
step
Watch the dialogue
talk Dagran Thaurissan II##225472
turnin The Old Orders##83084 |goto Isle of Dorn/0 44.89,20.58
accept The Old Guard##83087 |goto Isle of Dorn/0 44.89,20.58
step
Investigate the Collapsed Tunnel |q 83087/1 |goto Isle of Dorn/0 47.63,23.17
step
extraaction Archaic Revelation##457580
Use the Titan Emitter |q 83087/2 |goto Isle of Dorn/0 47.81,23.27
|tip Use the {o}Archaic Revelation{} ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
step
kill Manifested Protocol##222946 |q 83087/3 |goto Isle of Dorn/0 47.81,23.27
step
talk Dagran Thaurissan II##225472
turnin The Old Guard##83087 |goto Isle of Dorn/0 44.89,20.58
step
Return to Merrix in Dornogal |q 78545/1 |goto Dornogal/0 32.07,59.69
step
talk Merrix##217880
turnin Return to the Coreway##78545 |goto Dornogal/0 32.07,59.69
accept Recompense##78546 |goto Dornogal/0 32.07,59.69
step
Watch the dialogue
talk Adelgonn##217883
Select _"Tell them what happened at the meadery."_ |gossip 120772 |noautogossip
|tip You can watch the dialogue, or choose {o}"<Skip conversation> We can give them the details later."{}
Speak to Adelgonn |q 78546/1 |goto Dornogal/0 31.85,59.27
step
Watch the dialogue
Listen to the Debriefing |q 78546/2 |goto Dornogal/0 31.85,59.27
step
talk Merrix##217880
Select _"Let's do it."_ |gossip 120762
Witness the Coreway's Restoration |q 78546/3 |goto Dornogal/0 32.07,59.69
step
talk Merrix##217880
turnin Recompense##78546 |goto Dornogal/0 32.06,59.69
step
Complete the Ringing Deeps Story Campaign |complete completedq(79354)
|tip Use {o}The Ringing Deeps (Story Only){} guide to accomplish this.
|only if level >= 80
step
talk Saradi##225426
accept The Councilward's Summons##79542 |goto Dornogal/0 45.94,47.21
|only if level >= 80
step
talk Merrix##217069
|tip Inside the building.
Select _"Peacekeeper Kragad asked I bring these receipts to you."_ |gossip 121397
Meet Merrix at the Councilward's Rise |q 79542/1 |goto Dornogal/0 55.23,6.19
|only if level >= 80
step
talk Merrix##217069
|tip Inside the building.
turnin The Councilward's Summons##79542 |goto Dornogal/0 55.23,6.19
accept Dornogal's Benefactor##79543 |goto Dornogal/0 55.23,6.19
|only if level >= 80
step
talk Aufta##219431
|tip Inside the building.
Select _"I have a shipment from a mutual friend for you."_ |gossip 121217
Deliver the Spa Supplies |q 79543/1 |goto Dornogal/0 32.11,24.67
|only if level >= 80
step
talk Gostrof##217080
Select _"I've brought a gift from a mutual friend."_ |gossip 121218
Deliver the Country Supplies |q 79543/2 |goto Dornogal/0 58.45,62.12
|only if level >= 80
step
talk Trader Harthan##217081
Select _"I've brought a gift from a mutual friend."_ |gossip 121219
Deliver the Care Package |q 79543/3 |goto Dornogal/0 52.29,52.24
|only if level >= 80
step
talk Trader Harthan##217081
Select _"I'm listening."_ |gossip 121405
Speak to Harthan |q 79543/4 |goto Dornogal/0 52.29,52.24
|only if level >= 80
step
talk Merrix##217095
turnin Dornogal's Benefactor##79543 |goto Dornogal/0 49.34,26.26
accept Security Through Trade##79544 |goto Dornogal/0 49.34,26.26
|only if level >= 80
step
talk Bevrusi##217072
Select _"I'm told you could get me into the private Machine Speaker speakeasy."_ |gossip 121407
Speak to Bevrusi |q 79544/1 |goto Dornogal/0 55.61,50.23
|only if level >= 80
step
talk Bevrusi##217072
Select _"What are you looking to trade?"_ |gossip 122742
See What Bevrusi Will Trade |q 79544/2 |goto Dornogal/0 55.61,50.23
|only if level >= 80
step
talk Bevrusi##217072
turnin Security Through Trade##79544 |goto Dornogal/0 55.61,50.23
accept The Market Reeve of the Forgegrounds##79545 |goto Dornogal/0 55.61,50.23
|only if level >= 80
step
Approach Vokgret |q 79545/1 |goto Dornogal/0 45.06,48.93
|only if level >= 80
step
talk Ronesh##212370
|tip Inside the building.
Select _"I want to browse your goods."_ |gossip 121503
buy Fresh Mug of Cinderbrew Mead##219961 |n
Acquire the Cinderbrew |q 79545/2 |goto Dornogal/0 44.72,46.40
|only if level >= 80
step
talk Vokgret##217091
Select _"Here's your cinderbrew. Now, can we do business?"_ |gossip 121505
Bring the Cinderbrew to Vokgret |q 79545/3 |goto Dornogal/0 45.06,48.93
|only if level >= 80
step
talk Vokgret##217091
Select _"I am looking for liquid opal. I am told you have the resources to acquire some."_ |gossip 121504
Ask About Obtaining a Vial of Liquid Opal |q 79545/4 |goto Dornogal/0 45.06,48.93
|only if level >= 80
step
talk Loldren##217090
|tip Inside the building.
Select _"Vokgret sent me to collect some paperwork."_ |gossip 121507
Speak to Loldren |q 79545/5 |goto Dornogal/0 48.33,73.09
|only if level >= 80
step
click Auditor's Manifest
|tip Inside the building.
Select _"<Begin filling out the blank sections on the form.>"_ |gossip 121512
Tell  _"Lord of the Pans: A historical guide to Earthen Cooking Tools"_ |gossip 121509
Tell  _"Belga"_ |gossip 121519
Tell  _"Spicy Pepper Vendor"_ |gossip 123990
Sign the Bills of Purchase |q 79545/6 |goto Dornogal/0 48.27,73.18
Audit Loldren's Market |q 79545/7 |goto Dornogal/0 48.27,73.18
|only if level >= 80
step
talk Nernabel##217088
|tip Inside the building.
Select _"Loldren requires your signature on this document."_ |gossip 121452
Select _"Where can I find a magma core for you?"_ |gossip 121528
Speak to Nernabel |q 79545/8 |goto Dornogal/0 49.59,73.11
|only if level >= 80
step
click Sizzling Magma Core
|tip Inside the building.
|tip You will be attacked.
collect Sizzling Magma Core##211863 |q 79545/9 |goto Dornogal/0 50.44,63.78
|only if level >= 80
step
talk Nernabel##217088
|tip Inside the building.
Select _"I've brought you a magma core. An elemental attacked me for my trouble."_ |gossip 121547
Acquire Nernabel's Signature |q 79545/10 |goto Dornogal/0 49.59,73.11
|only if level >= 80
step
talk Vokgret##217091
turnin The Market Reeve of the Forgegrounds##79545 |goto Dornogal/0 45.06,48.93
accept Opals and Runes##79176 |goto Dornogal/0 45.06,48.93
|only if level >= 80
step
talk Bevrusi##217072
Select _"What are you looking to trade?"_ |gossip 121412
buy Speakeasy Passrune##217414 |n
Trade for the Speakeasy Passrune |q 79176/1 |goto Dornogal/0 55.61,50.23
|only if level >= 80
step
talk Merrix##217097
turnin Opals and Runes##79176 |goto Dornogal/0 60.52,33.07
accept The Machine Speakeasy##79546 |goto Dornogal/0 60.52,33.07
|only if level >= 80
step
Enter the building |goto Dornogal/0 61.51,34.55 < 15 |walk
Meet Merrix in the Tunnels |q 79546/1 |goto Dornogal/0 62.86,40.69
|tip Inside the building.
|only if level >= 80
step
talk Speakeasy Runeguard##220564
|tip Inside the building.
Select _"<Trace the passrune onto the golem.>"_ |gossip 121576
Open the Speakeasy |q 79546/2 |goto Dornogal/0 62.36,40.28
|only if level >= 80
step
talk Obstorn##217082
|tip Inside the building.
Select _"Hear him out. Merrix just wants you to relay a message to Ardgrin."_ |gossip 121577
kill Obstorn##217082
Confront Obstorn |q 79546/3 |goto Dornogal/0 62.04,37.65
|only if level >= 80
step
talk Merrix##219566
|tip Inside the building.
turnin The Machine Speakeasy##79546 |goto Dornogal/0 62.10,38.67
|only if level >= 80
step
Leave the building |goto Dornogal/0 61.51,34.55 < 15 |walk |only if (subzone("The Corridors") or subzone("Cinderside Hall")) and indoors()
click Angrily-Scrawled Poster##429303
accept Sedition##79526 |goto Dornogal/0 45.90,47.17
|only if level >= 80
step
talk Merrix##219400
|tip Inside the building.
turnin Sedition##79526 |goto Dornogal/0 55.61,5.58
accept Damage Mitigation##79527 |goto Dornogal/0 55.61,5.58
accept Dispelling Rumors##79528 |goto Dornogal/0 55.61,5.58
|only if level >= 80
stickystart "Tear_Down_Seditious_Posters"
step
clicknpc Murmuring Peacekeeper##219449+
|tip They look like {o}armored dwarves{}.
|tip You may be attacked.
Disperse #6# Murmuring Peacekeepers |q 79528/1 |goto Dornogal/0 47.93,28.31
|only if level >= 80
step
label "Tear_Down_Seditious_Posters"
click Seditious Poster+
|tip They look like {o}papers pinned to walls{}.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
Tear Down #8# Seditious Posters |q 79527/1 |goto Dornogal/0 47.93,28.31
|only if level >= 80
step
talk Merrix##219400
|tip Inside the building.
turnin Damage Mitigation##79527 |goto Dornogal/0 55.61,5.57
turnin Dispelling Rumors##79528 |goto Dornogal/0 55.61,5.57
accept Forcing My Hand##79529 |goto Dornogal/0 55.61,5.57
|only if level >= 80
step
click Bundled Cloak
|tip Inside the building.
Carry the Cloak |havebuff Carrying Cloak##441006 |goto Dornogal/0 55.08,6.38 |q 79529
|only if level >= 80
step
clicknpc Merrix##219400
|tip Inside the building.
Hand the Cloak to Merrix |q 79529/1 |goto Dornogal/0 55.61,5.57
|only if level >= 80
step
click Accessory Chest
|tip Inside the building.
Carry the Gloves |havebuff Carrying Gloves##441007 |goto Dornogal/0 56.38,5.95 |q 79529
|only if level >= 80
step
clicknpc Merrix##219400
|tip Inside the building.
Hand the Gloves to Merrix |q 79529/2 |goto Dornogal/0 55.61,5.58
|only if level >= 80
step
clicknpc Gilded Knuckles##220092
|tip Inside the building.
Carry the Weapons |havebuff Carrying Weapons##441008 |goto Dornogal/0 55.36,5.60 |q 79529
|only if level >= 80
step
clicknpc Merrix##219400
|tip Inside the building.
Hand the Weapons to Merrix |q 79529/3 |goto Dornogal/0 55.61,5.57
|only if level >= 80
step
click Titan Device
|tip Inside the building.
Carry the Titan Device |havebuff Carrying Titan Device##441009 |goto Dornogal/0 55.85,6.67 |q 79529
|only if level >= 80
step
clicknpc Merrix##219400
|tip Inside the building.
Bring the  Titan Device to Merrix |q 79529/4 |goto Dornogal/0 55.61,5.58
|only if level >= 80
step
talk Steelvein##219475
|tip Inside the building.
turnin Forcing My Hand##79529 |goto Dornogal/0 55.61,5.58
accept Bad Business##79530 |goto Dornogal/0 55.61,5.58
|only if level >= 80
step
Regroup with Steelvein in the Ringing Deeps |q 79530/1 |goto The Ringing Deeps/0 42.78,23.93
|only if level >= 80
step
talk Overseer Ardgrin##219477
|tip Inside the building.
Select _"Steelvein is here to speak with you."_ |gossip 121524
Watch the dialogue
kill Sparking Haulbot##219497+
Confront Overseer Ardgrin |q 79530/2 |goto The Ringing Deeps/0 42.21,24.12
'|kill Sparking Haulbot##220191
|only if level >= 80
step
Watch the dialogue
talk Steelvein##220192
turnin Bad Business##79530 |goto The Ringing Deeps/0 42.48,23.94
|only if level >= 80
step
|next "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"	|only if completedq(79573) and level < 80
|next "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\The Ringing Deeps (Full Zone)"	|only if not completedq(79573) and level < 80
|next "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\The War Within Campaign"		|only if level >= 80 and completedallq(78546,81689,78630,84022)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\The Ringing Deeps (Full Zone)",{
author="support@zygorguides.com",
},[[
step
_NOTE:_
{o}It is Very Important to Avoid Accepting Quests that Aren't in this Guide{}
|tip Certain quests, when completed out of order, can permanently cause breadcrumb quests to become incomplete.
|tip This could cause issues with your quest flow.
|tip Disable automatically accepting all quests and avoid accepting quests from NPCs when not directed to.
Click Here to Continue |confirm
step
talk Moira Thaurissan##217887
accept Into the Deeps##80434 |goto Dornogal/0 31.98,59.86
|only if not (haveq(83550) or completedq(83550))
step
talk Speaker Brinthe##212592
turnin Into the Deeps##80434 |goto The Ringing Deeps/0 42.10,28.34	|only if (haveq(80434) or completedq(80434)) and not haveq(83550)
turnin The Ringing Deeps##83550 |goto The Ringing Deeps/0 42.10,28.34	|only if haveq(83550) or completedq(83550)
accept Underground and Overwhelmed##78555 |goto The Ringing Deeps/0 42.10,28.34
step
talk Foreman Uzjax##218290
accept Getting Off Track##78557 |goto The Ringing Deeps/0 42.12,28.27
stickystart "Help_The_Machine_Speakers_Secure_Ironhaul_Station"
step
clicknpc Buried Legs##215249
|tip You will be attacked.
Investigate the Area Around the Overturned Mine Cart |q 78557/1 |goto The Ringing Deeps/0 43.90,29.90
step
label "Help_The_Machine_Speakers_Secure_Ironhaul_Station"
clicknpc Injured Railhand##212390+
|tip They look like {o}dwarves{} laying on the ground.
click Nerubian Explosive Cache+
|tip They look like {o}large spiked metal balls{}.
click Priority Transport Crate+
|tip They look like {o}large wooden and metal chests{}.
kill Malfunctioning Railbot##218251+
|tip They look like {o}humanoid robots{}.
Help the Machine Speakers Secure Ironhaul Station |q 78555/1 |goto The Ringing Deeps/0 43.83,28.32
step
talk Foreman Uzjax##218290
turnin Getting Off Track##78557 |goto The Ringing Deeps/0 42.13,28.27
step
talk Speaker Brinthe##212592
turnin Underground and Overwhelmed##78555 |goto The Ringing Deeps/0 42.10,28.34
accept Pomp and Dire Circumstance##78837 |goto The Ringing Deeps/0 42.10,28.34
step
talk Speaker Brinthe##212592
Select _"Who is this "High Speaker" everyone keeps talking about?"_ |gossip 122955
Ask Speaker Brinthe About the High Speaker |q 78837/1 |goto The Ringing Deeps/0 42.10,28.34
step
talk Igram Underwing##215563
fpath Gundargaz |goto The Ringing Deeps/0 46.87,33.36
step
talk Speaker Brinthe##212741
|tip Inside the building.
turnin Pomp and Dire Circumstance##78837 |goto The Ringing Deeps/0 47.19,34.17
accept Cogs in the Machine##78838 |goto The Ringing Deeps/0 47.19,34.17
step
talk Igram Underwing##215563
Select _"Are you Underwing?"_ |gossip 121192
Meet Igram Underwing |q 78838/1 |goto The Ringing Deeps/0 46.87,33.36
step
talk Speaker Jurlax##213875
Select _"Speaker Jurlax?"_ |gossip 121195
Meet Speaker Jurlax |q 78838/2 |goto The Ringing Deeps/0 46.95,32.41
step
talk Innkeeper Brax##213840
|tip Inside the building.
accept Brax's Brass Knuckles##78918 |goto The Ringing Deeps/0 47.99,32.17
step
talk Watcher Toki##213869
Select _"Watcher Toki, I presume?"_ |gossip 121196
Meet Watcher Toki |q 78838/3 |goto The Ringing Deeps/0 48.04,34.83
step
Return to Brinthe's House |q 78838/4 |goto The Ringing Deeps/0 47.19,34.17
|tip Inside the building.
step
talk Speaker Brinthe##212741
|tip Inside the building.
turnin Cogs in the Machine##78838 |goto The Ringing Deeps/0 47.19,34.17
accept Speaking to the Speakers##78631 |goto The Ringing Deeps/0 47.19,34.17
step
talk Machinist Kittrin##212695
|tip Inside the building.
accept Discarded and Broken##78562 |goto The Ringing Deeps/0 48.24,33.39
step
talk Watcher Toki##213869
accept On Cold, Dark Wings##78900 |goto The Ringing Deeps/0 48.04,34.83
step
click Machinist Plinth
collect Machinist's Gauge##210733 |q 78562/1 |goto The Ringing Deeps/0 46.68,29.38
step
talk Batzvara##219784
accept The Caretaker of Brunwin's Terrace##80392 |goto The Ringing Deeps/0 51.27,30.21
step
talk Emergency Militia##212839+
Select _"Speaker Brinthe and I are going to investigate the kobold incursion. Hold on until we get back."_ |gossip 120320
Reassure #3# Defenders |q 78631/1 |goto The Ringing Deeps/0 51.84,29.58
stickystart "Kill_Sweetsnufflers"
stickystart "Find_Braxs_Brass_Knuckles"
step
clicknpc Inert Earthen##219785
|tip You may be attacked.
Honor the Earthen |q 80392/1 |goto The Ringing Deeps/0 52.47,30.96 |count 1
step
clicknpc Inert Earthen##219785
|tip You may be attacked.
Honor the Earthen |q 80392/1 |goto The Ringing Deeps/0 52.34,32.81 |count 2
step
clicknpc Inert Earthen##219785
|tip You may be attacked.
Honor the Earthen |q 80392/1 |goto The Ringing Deeps/0 53.56,32.33 |count 3
step
clicknpc Inert Earthen##219785
|tip You may be attacked.
Honor the Earthen |q 80392/1 |goto The Ringing Deeps/0 54.43,31.95 |count 4
step
clicknpc Inert Earthen##219785
|tip You may be attacked.
Honor the Earthen |q 80392/1 |goto The Ringing Deeps/0 54.99,35.07 |count 5
step
clicknpc Inert Earthen##219785
|tip Up on the hill.
|tip You may be attacked.
Honor the Earthen |q 80392/1 |goto The Ringing Deeps/0 53.71,34.87 |count 6
step
click Machinist Plinth##411622
collect Machinist's Calipers##210732 |q 78562/2 |goto The Ringing Deeps/0 52.47,34.11
step
kill The Ringing Death##214162 |q 78900/1 |goto The Ringing Deeps/0 51.49,35.89
|tip It looks like a {o}large bat hanging{} up on the {o}side of the pipe{}.
step
click Machinist Plinth##411624
|tip On top of the building, near the ground.
collect Machinist's Wrench##210734 |q 78562/3 |goto The Ringing Deeps/0 50.06,36.64
step
label "Kill_Sweetsnufflers"
kill 10 Sweetsnuffler##219799 |q 80392/2 |goto The Ringing Deeps/0 53.10,34.14
step
label "Find_Braxs_Brass_Knuckles"
Kill enemies around this area
collect Brax's Brass Knuckles##211493 |n
Find Brax's Brass Knuckles |q 78918/1 |goto The Ringing Deeps/0 53.10,34.14
You can find more around [51.08,44.03]
'|kill Sweetsnuffler##219799, Underdrip Crawler##223069
step
talk Mindi Maxlof##224966
accept An Opportunity to Relax##82952 |goto The Ringing Deeps/0 53.80,43.79
step
click Rusted Lever##443532
accept Rust and Redemption##82195 |goto The Ringing Deeps/0 53.35,44.59
step
Kill enemies around this area
|tip They look like {o}green oozes{}.
collect 3 Pure Crawler Extract##221970 |q 82195/1 |goto The Ringing Deeps/0 52.11,42.56
'|kill Crawler Sproutling##223085, Underdrip Crawler##223069
step
click Rusted Lever##443532
turnin Rust and Redemption##82195 |goto The Ringing Deeps/0 53.35,44.59
step
talk Batzvara##224362
turnin The Caretaker of Brunwin's Terrace##80392 |goto The Ringing Deeps/0 50.81,40.64
accept Shimmermist Falls##80408 |goto The Ringing Deeps/0 50.81,40.64
step
talk Batzvara##219899
turnin Shimmermist Falls##80408 |goto The Ringing Deeps/0 46.25,36.79
accept A Perfect Sponge##80401 |goto The Ringing Deeps/0 46.25,36.79
accept Buckets and Blooms##80402 |goto The Ringing Deeps/0 46.25,36.79
stickystart "Collect_Perfect_Lashroom_Cap"
stickystart "Collect_Caustic_Blooms"
step
kill Bytta##222653
|tip It looks like a {o}large spider{} that walks around this small area.
collect Missing Bucket##218355 |n
Find the Missing Bucket |q 80402/2 |goto The Ringing Deeps/0 42.07,38.17
step
label "Collect_Perfect_Lashroom_Cap"
kill Creeping Lashroom##214958+
collect Perfect Lashroom Cap##218131 |q 80401/1 |goto The Ringing Deeps/0 44.23,35.40
step
label "Collect_Caustic_Blooms"
click Caustic Bloom+
|tip They look like {o}small plants with pink and white flowers{} on them.
collect 8 Caustic Bloom##218187 |q 80402/1 |goto The Ringing Deeps/0 43.89,36.93
step
talk Batzvara##219899
turnin A Perfect Sponge##80401 |goto The Ringing Deeps/0 46.25,36.79
turnin Buckets and Blooms##80402 |goto The Ringing Deeps/0 46.25,36.79
accept Mossy Earthen##80404 |goto The Ringing Deeps/0 46.25,36.79
step
clicknpc Mossy Inert Earthen##219802
Tend to the Mossy Earthen |q 80404/1 |goto The Ringing Deeps/0 46.25,36.76 |count 1
step
clicknpc Mossy Inert Earthen##219802
Tend to the Mossy Earthen |q 80404/1 |goto The Ringing Deeps/0 45.38,36.69 |count 2
step
clicknpc Mossy Inert Earthen##219802
Tend to the Mossy Earthen |q 80404/1 |goto The Ringing Deeps/0 44.80,36.94 |count 3
step
clicknpc Mossy Inert Earthen##219802
Tend to the Mossy Earthen |q 80404/1 |goto The Ringing Deeps/0 44.99,37.93 |count 4
step
talk Batzvara##219899
turnin Mossy Earthen##80404 |goto The Ringing Deeps/0 46.25,36.79
accept Tending to Ausgazur##80689 |goto The Ringing Deeps/0 46.25,36.79
step
talk Batzvara##220784
turnin Tending to Ausgazur##80689 |goto The Ringing Deeps/0 44.11,40.15
accept Too Much Drip##80405 |goto The Ringing Deeps/0 44.11,40.15
step
talk Ausgazur##219900
Examine Ausgazur |q 80405/1 |goto The Ringing Deeps/0 44.06,40.12
step
click Cooling Wax Puddle
Investigate the Cooling Wax |q 80405/2 |goto The Ringing Deeps/0 44.09,40.02
step
click Cooling Wax Puddle
Follow the Trail of Cooling Wax |q 80405/3 |goto The Ringing Deeps/0 44.55,39.18
step
kill Waterworks Gem-thief##219788+
collect Stolen Gem##219216 |n
Find the Gem Thief |q 80405/4 |goto The Ringing Deeps/0 45.49,41.31
step
talk Batzvara##220784
turnin Too Much Drip##80405 |goto The Ringing Deeps/0 44.11,40.15
accept Seeking Ausgazur's Gems##80406 |goto The Ringing Deeps/0 44.11,40.15
accept Glintwick the Gem Grabber##80407 |goto The Ringing Deeps/0 44.11,40.15
stickystart "Collect_Gems_Of_Ausgazur"
step
Enter the building |goto The Ringing Deeps/0 44.67,46.36 < 15 |walk
kill Glintwick##219797
|tip Inside the building.
collect Unfaceted Purple Gemstone##219213 |n
Collect the Final Gem |q 80407/1 |goto The Ringing Deeps/0 44.29,46.98
step
label "Collect_Gems_Of_Ausgazur"
Kill enemies around this area
|tip Only the ones with {o}Gem{} in their name will {o}drop the quest items{}.
collect 4 Gem of Ausgazur##219015 |q 80406/1 |goto The Ringing Deeps/0 45.06,44.27
'|kill Waterworks Gem-snatcher##219789, Waterworks Gem-nabber##219786, Waterworks Gem-thief##219788
step
talk Batzvara##220784
turnin Seeking Ausgazur's Gems##80406 |goto The Ringing Deeps/0 44.11,40.15
turnin Glintwick the Gem Grabber##80407 |goto The Ringing Deeps/0 44.11,40.15
step
talk Watcher Toki##213869
turnin On Cold, Dark Wings##78900 |goto The Ringing Deeps/0 48.04,34.83
step
talk Tired Worker##224967
Hand Out a Flyer |q 82952/1 |goto The Ringing Deeps/0 47.66,34.56 |count 1
step
talk Tired Worker##224967
Hand Out a Flyer |q 82952/1 |goto The Ringing Deeps/0 47.81,34.29 |count 2
step
Enter the building |goto The Ringing Deeps/0 48.36,34.20 < 15 |walk
talk Tired Worker##224967
|tip Inside the building.
Hand Out a Flyer |q 82952/1 |goto The Ringing Deeps/0 48.83,34.00 |count 3
step
talk Machinist Kittrin##212695
|tip Inside the building.
turnin Discarded and Broken##78562 |goto The Ringing Deeps/0 48.24,33.39
accept The Weight of a World##78563 |goto The Ringing Deeps/0 48.24,33.39
step
talk Tired Worker##224967
Hand Out a Flyer |q 82952/1 |goto The Ringing Deeps/0 47.50,33.19 |count 4
step
talk Tired Worker##224967
Hand Out a Flyer |q 82952/1 |goto The Ringing Deeps/0 47.49,32.50 |count 5
step
talk Tired Worker##224967
Hand Out a Flyer |q 82952/1 |goto The Ringing Deeps/0 47.10,31.34 |count 6
step
Enter the building |goto The Ringing Deeps/0 47.74,32.17 < 15 |walk
extraaction Brass Knuckle Sandwich##429799
Pacify #6# Rowdy Patrons |q 78918/2 |goto The Ringing Deeps/0 48.31,32.24
|tip Use the {o}Brass Knuckle Sandwich{} ability next to {o}Rowdy Patrons{}.
|tip It appears as a button on the screen.
|tip Inside the building.
'|clicknpc Rowdy Patron##214479
step
talk Innkeeper Brax##213840
|tip Inside the building.
turnin Brax's Brass Knuckles##78918 |goto The Ringing Deeps/0 47.99,32.17
step
kill Oath-Eater##206844
collect Machinist's Calibrated Weight##210740 |q 78563/1 |goto The Ringing Deeps/0 44.61,31.48
step
talk Machinist Kittrin##212695
|tip Inside the building.
turnin The Weight of a World##78563 |goto The Ringing Deeps/0 48.24,33.39
accept Reforged Purpose##78564 |goto The Ringing Deeps/0 48.24,33.39
step
talk Machinist Kittrin##212695
|tip Inside the building.
Select _"I'm ready to help you reforge the tools."_ |gossip 120147
Speak with Kittrin |q 78564/1 |goto The Ringing Deeps/0 48.24,33.39
step
clicknpc Spattered Charcoal##214843+
|tip They appear on the ground nearby.
|tip Inside the building.
Kick the Spattered Charcoal |q 78564/2 |goto The Ringing Deeps/0 48.24,33.39
Repair All the Tools |q 78564/3 |goto The Ringing Deeps/0 48.24,33.39
step
Watch the dialogue
|tip Inside the building.
talk Machinist Kittrin##212695
turnin Reforged Purpose##78564 |goto The Ringing Deeps/0 48.23,33.39
step
Scout the Vantage Point |q 78631/2 |goto The Ringing Deeps/0 57.65,29.14
step
Watch the dialogue
talk Speaker Brinthe##212519
turnin Speaking to the Speakers##78631 |goto The Ringing Deeps/0 57.65,29.14
accept Leave No Stone Behind##78634 |goto The Ringing Deeps/0 57.65,29.14
accept Kobold Shoulder##78839 |goto The Ringing Deeps/0 57.65,29.14
step
talk Skitter##212269
accept Death and Waxes##78635 |goto The Ringing Deeps/0 57.68,29.15
stickystart "Collect_Flickerflame_Candles"
stickystart "Slay_Flickerflame_Kobolds"
step
click Fallen Earthen
Collect the Earthen Identification Plaque |q 78634/1 |goto The Ringing Deeps/0 56.47,24.85 |count 1
collect Faded Memory Gem##212178 |n |only if not completedq(78634)
accept Broken Memories##79206 |goto The Ringing Deeps/0 56.47,24.85 |only if not completedq(78634)
step
click Fallen Earthen
Collect the Earthen Identification Plaque |q 78634/1 |goto The Ringing Deeps/0 58.82,25.07 |count 2
step
click Fallen Earthen
Collect the Earthen Identification Plaque |q 78634/1 |goto The Ringing Deeps/0 61.51,23.53 |count 3
step
click Fallen Earthen
Collect the Earthen Identification Plaque |q 78634/1 |goto The Ringing Deeps/0 58.16,20.94 |count 4
step
label "Collect_Flickerflame_Candles"
Kill Flickerflame enemies around this area
|tip Some of them fly in the air. |notinsticky
|tip The {o}Flickerflame Dirtclaw{} animals {o}won't drop{} the {o}quest item{}. |notinsticky
click Flickerflame Candles+
|tip They look like {o}bundles of white candles{}.
collect 12 Flickerflame Candle##210878 |q 78635/1 |goto The Ringing Deeps/0 59.33,25.41
'|kill Flickerflame Kobold##212536, Flickerflame Sticker##212629, Flickerflame Scrabbler##212515, Flickerflame Geomancer##212528, Flickerflame Enforcer##212548, Flickerflame Candlekeeper##212524, Flickerflame Candleflyer##219341, Flickerflame Overseer##212542
step
label "Slay_Flickerflame_Kobolds"
Kill Flickerflame enemies around this area |notinsticky
|tip Some of them fly in the air. |notinsticky
|tip The {o}Flickerflame Dirtclaw{} animals {o}won't count{}. |notinsticky
Slay #24# Flickerflame Kobolds |q 78839/1 |goto The Ringing Deeps/0 58.78,25.48
'|kill Flickerflame Kobold##212536, Flickerflame Sticker##212629, Flickerflame Scrabbler##212515, Flickerflame Geomancer##212528, Flickerflame Enforcer##212548, Flickerflame Candlekeeper##212524, Flickerflame Candleflyer##219341, Flickerflame Overseer##212542
step
talk Skitter##212269
turnin Death and Waxes##78635 |goto The Ringing Deeps/0 57.68,29.14
step
talk Speaker Brinthe##212519
turnin Leave No Stone Behind##78634 |goto The Ringing Deeps/0 57.65,29.14
turnin Kobold Shoulder##78839 |goto The Ringing Deeps/0 57.65,29.14
turnin Broken Memories##79206 |goto The Ringing Deeps/0 57.65,29.14 |only if haveq(79206) or completedq(79206)
accept Engineering Destruction##78638 |goto The Ringing Deeps/0 57.65,29.14
step
talk Skitter##212269
accept Cracking Cogchewer##78637 |goto The Ringing Deeps/0 57.69,29.15
step
Enter the Storage Depot |q 78638/1 |goto The Ringing Deeps/0 57.64,24.20
stickystart "Scuttle_Mining_Rigs"
step
kill Cogchewer##212617
collect Cogchewer's Keys##211865 |q 78637/2 |goto The Ringing Deeps/0 55.88,21.01
step
label "Scuttle_Mining_Rigs"
click Abandoned Mining Rig+
|tip They look like {o}broken down robots{}.
kill Sparklit Rust Crusher##212597+
|tip They look like {o}brown humanoids robots{}.
Scuttle #8# Mining Rigs |q 78638/2 |goto The Ringing Deeps/0 56.03,22.65
step
Leave the Storage Depot |goto The Ringing Deeps/0 57.65,24.20 < 15 |walk |only if subzone("Lost Mines") and indoors()
talk Skitter##212269
turnin Cracking Cogchewer##78637 |goto The Ringing Deeps/0 57.69,29.15
step
talk Speaker Brinthe##212519
turnin Engineering Destruction##78638 |goto The Ringing Deeps/0 57.65,29.14
accept Retaking the Mines##78636 |goto The Ringing Deeps/0 57.65,29.14
step
click Sealed Gate
Watch the dialogue
Open the Gate |q 78636/1 |goto The Ringing Deeps/0 59.65,21.52
step
kill Wickbreaker##215077 |q 78636/2 |goto The Ringing Deeps/0 59.43,22.16
step
talk Speaker Brinthe##215671
|tip She walks to this location.
turnin Retaking the Mines##78636 |goto The Ringing Deeps/0 59.51,21.74
step
talk Skitter##215672
accept Manifesto Destiny##78640 |goto The Ringing Deeps/0 59.54,21.75
step
Scout a Safe Area |q 78640/2 |goto The Ringing Deeps/0 61.50,32.00
step
Distribute #120# Pamphlets |q 78640/3 |goto The Ringing Deeps/0 64.78,32.29
|tip You will {o}automatically throw pamphlets{} while mounted.
|tip Fly through the {o}large rings in the air{} to throw {o}many pamphlets{} quickly.
step
talk Skitter##212991
turnin Manifesto Destiny##78640 |goto The Ringing Deeps/0 61.50,32.02
accept Ko-boldening##78639 |goto The Ringing Deeps/0 61.50,32.02
accept Not Waste, Not Want##79205 |goto The Ringing Deeps/0 61.50,32.02
stickystart "Free_Oppressed_Kobolds"
stickystart "Collect_Useful_Looking_Scraps"
step
click Sizzling Barrel+
|tip They look like {o}larger wooden barrels{}.
collect 3 Unstable Cinderbrew Barrel##217015 |q 79205/2 |goto The Ringing Deeps/0 64.53,33.00
step
label "Free_Oppressed_Kobolds"
kill Waxtail Browbeater##213000+
|tip They look like {o}much larger kobolds{}.
kill Waxtail Tormentor##212983+
|tip They look like {o}larger kobolds with whips{}.
Free #10# Oppressed Kobolds |q 78639/1 |goto The Ringing Deeps/0 64.53,33.00
step
label "Collect_Useful_Looking_Scraps"
Kill Waxtail enemies around this area
|tip Waxtail Browbeaters and Tormentors will not drop the quest item. |notinsticky
click Intriguing Scrap+
|tip They look like {o}various different objects{}.
collect 24 Useful Looking Scrap##212177 |q 79205/1 |goto The Ringing Deeps/0 64.53,33.00
'|kill Waxtail Scavenger##212985, Waxtail Trapper##212987, Waxtail Candleflyer##219343, Waxtail Outrider##213095, Waxtail Dirtcaller##212988
step
talk Skitter##212991
turnin Ko-boldening##78639 |goto The Ringing Deeps/0 61.50,32.02
turnin Not Waste, Not Want##79205 |goto The Ringing Deeps/0 61.50,32.02
accept Tackling Torchsnarl##78641 |goto The Ringing Deeps/0 61.50,32.02
step
talk Speaker Brinthe##212992
accept Wax On, Pot Off##79267 |goto The Ringing Deeps/0 61.49,31.98
stickystart "Ruin_Wax_Pots"
step
Enter the cave |goto The Ringing Deeps/0 66.79,29.13 < 30 |walk
kill Torchsnarl##212993
|tip Inside the cave.
Defeat Torchsnarl |q 78641/1 |goto The Ringing Deeps/0 67.25,28.25
step
label "Ruin_Wax_Pots"
click Kobold Cauldron+
|tip They look like {o}huge pots with yellow liquid{} in them.
Ruin #6# Wax Pots |q 79267/1 |goto The Ringing Deeps/0 66.22,30.26
step
talk Speaker Brinthe##212992
turnin Wax On, Pot Off##79267 |goto The Ringing Deeps/0 61.49,31.98
step
talk Skitter##212991
turnin Tackling Torchsnarl##78641 |goto The Ringing Deeps/0 61.50,32.02
accept New Candle, New Hope##78642 |goto The Ringing Deeps/0 61.50,32.02
step
talk Skitter##212991
Select _"I'm ready to infiltrate Darkflame Cleft."_ |gossip 119957
Speak with Skitter to Enter the Darkflame Cleft |q 78642/1 |goto The Ringing Deeps/0 61.50,32.02
step
click Discarded Loot
|tip You can open it {o}after killing the last boss{} in the delve.
|tip Complete the Darkflame Cleft delve to accomplish this.
|tip The delve is simple to complete.
Retrieve the Candle Crown |q 78642/2 |goto Darkflame Cleft Scenario/0 44.45,89.81
step
Watch the dialogue
talk Skitter##216103
Select _"Let's get out of here!"_ |gossip 119961
Speak with Skitter to Exit the Darkflame Cleft |complete subzone("The Warrens") |goto Darkflame Cleft Scenario/0 41.53,90.00 |q 78642
step
talk Skitter##212991
turnin New Candle, New Hope##78642 |goto The Ringing Deeps/0 61.49,32.02
step
talk Speaker Brinthe##212992
accept Back to Gundargaz##80082 |goto The Ringing Deeps/0 61.49,31.98
step
talk Speaker Brinthe##218715
turnin Back to Gundargaz##80082 |goto The Ringing Deeps/0 47.09,33.23
step
talk Moira Thaurissan##218714
accept A Wrench in the Works##80079 |goto The Ringing Deeps/0 47.13,33.24
step
talk Skitter##222803
accept Home Is Where the Candle Is##79683 |goto The Ringing Deeps/0 47.11,33.27
Also check inside the building at [The Ringing Deeps/0 47.17,34.16]
step
talk Fourman Grimes##216568
|tip Inside the building.
accept Kobold Kleanup##80058 |goto The Ringing Deeps/0 47.81,35.40
step
talk Janky##216567
|tip Inside the building.
accept New Home, New Candle!##81999 |goto The Ringing Deeps/0 47.76,35.41
step
talk Granny Scribbles##216438
|tip Inside the building.
accept Dripsy Forgot Her Candle##79504 |goto The Ringing Deeps/0 47.98,35.73
step
talk Granny Scribbles##216438
|tip Inside the building.
Select _"Tell me about Dripsy, Granny Scribbles."_ |gossip 121559
Ask Granny Scribbles about Dripsy |q 79504/1 |goto The Ringing Deeps/0 47.98,35.73
step
kill Sweetshine Grub##216957+
|tip {o}Avoid{} the {o}elite enemies{}.
collect Sweetmeat##217998+ |n
click Shinies+
|tip They look like {o}dark purple crystals{}.
collect Shiny Rock##217997+ |n
Gather #12# Shiny Rocks or Sweetmeats |q 79504/2 |goto The Ringing Deeps/0 67.40,49.51
step
Watch the dialogue
Return to Granny Scribbles |complete subzone("Gundargaz") |q 79504
step
talk Granny Scribbles##216438
|tip Inside the building.
turnin Dripsy Forgot Her Candle##79504 |goto The Ringing Deeps/0 47.98,35.73
accept Chomps and the Cave-In##79505 |goto The Ringing Deeps/0 47.98,35.73
step
talk Granny Scribbles##216438
|tip Inside the building.
Select _"Tell me about Chomps, Granny Scribbles."_ |gossip 121585
Ask Granny Scribbles About Chomps |q 79505/1 |goto The Ringing Deeps/0 47.98,35.73
step
click Rock Face
|tip Inside the cave.
Dig Up High |q 79505/2 |goto The Ringing Deeps/0 64.78,40.43
step
clicknpc Trapped Kobold##220532+
|tip Inside the cave.
Free #8# Trapped Kobolds |q 79505/3 |goto The Ringing Deeps/0 65.86,39.15
step
Watch the dialogue
Return to Granny Scribbles |complete subzone("Gundargaz") |q 79505
step
talk Granny Scribbles##216438
|tip Inside the building.
turnin Chomps and the Cave-In##79505 |goto The Ringing Deeps/0 47.97,35.73
accept The Day the Stoneheads Came##79507 |goto The Ringing Deeps/0 47.97,35.73
step
talk Granny Scribbles##216438
|tip Inside the building.
Select _"Tell me about the day the stoneheads came, Granny Scribbles."_ |gossip 121599
Ask Granny Scribbles About the Day the Stoneheads Came |q 79507/1 |goto The Ringing Deeps/0 47.97,35.73
step
Watch the dialogue
Locate Softsnout |complete subzone("Lost Mines") |q 79507
step
click Softsnout's Favorite Shovel##436933
|tip Inside the cave.
collect Softsnout's Favorite Shovel##218249 |q 79507/2 |goto The Ringing Deeps/0 56.07,23.23
step
clicknpc Panicking Kobold##220755+
|tip Click the {o}Stepclimber ladders{} to get {o}out of the pit{}.
|tip Inside the cave.
click Various Object+
|tip They look like {o}various objects{} with different names.
kill Stonehead Koboldcrusher##220792+
Save What Can Be Saved |q 79507/3 |goto The Ringing Deeps/0 55.88,22.69
step
Watch the dialogue
Return to Granny Scribbles |complete subzone("Gundargaz") |q 79507
step
talk Granny Scribbles##216438
|tip Inside the building.
turnin The Day the Stoneheads Came##79507 |goto The Ringing Deeps/0 47.98,35.73
accept Mipsy Mole-Rider##79508 |goto The Ringing Deeps/0 47.98,35.73
step
talk Granny Scribbles##216438
|tip Inside the building.
Select _"Tell me about Mipsy, Granny Scribbles."_ |gossip 121622
Ask Granny Scribbles About Mipsy |q 79508/1 |goto The Ringing Deeps/0 47.98,35.73
step
Watch the dialogue
Reach the Chittering Den |complete subzone("Chittering Den") |q 79508
step
clicknpc Hungry Mole##217013
Mount a Hungry Mole |q 79508/2 |goto The Ringing Deeps/0 72.51,39.45
step
clicknpc Juicy Grub##217011
Collect a Juicy Grub |q 79508/3 |goto The Ringing Deeps/0 72.51,39.45
step
clicknpc Hungry Mole##217013
Mount a Hungry Mole |q 79508/4 |goto The Ringing Deeps/0 72.51,39.45
step
_While Riding the Hungry Mole:_
Complete the Mole Riding Course |q 79508/5
|tip {o}Run through{} the Mipsey's Mole {o}Course markers{}.
|tip They look like {o}yellow pole structures{} with {o}arrows bouncing{} above them.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
step
Watch the dialogue
Return to Granny Scribbles |complete subzone("Gundargaz") |q 79508
step
talk Granny Scribbles##216438
|tip Inside the building.
turnin Mipsy Mole-Rider##79508 |goto The Ringing Deeps/0 47.98,35.73
accept The Wickless Candle##79510 |goto The Ringing Deeps/0 47.98,35.73
step
talk Granny Scribbles##216438
|tip Inside the building.
Select _"Tell me about the wickless candle, Granny Scribbles."_ |gossip 121650
Ask Granny Scribbles About the Wickless Candle |q 79510/1 |goto The Ringing Deeps/0 47.98,35.73
step
Watch the dialogue
Reach the Chittering Den |complete subzone("Chittering Den") |q 79510
step
click Grabby Rock+
|tip They look like {o}tan stones{} all along the {o}side of the pillar{}.
Start Climbing |q 79510/2 |goto The Ringing Deeps/0 70.05,38.43
step
click Grabby Rock+
|tip They look like {o}tan stones{} all along the {o}side of the pillar{}.
|tip {o}Click them{} until you {o}reach the top{} of the pillar.
|tip {o}Avoid the spiders{}, they'll {o}knock you down{} and make you {o}lose some progress{}.
click Squeezy Hole
|tip It looks like a {o}large mound of brown cracked dirt{}.
|tip On the side of the {o}top of the pillar{}.
Climb Upwards |q 79510/3 |goto The Ringing Deeps/0 69.66,38.64
step
Watch the dialogue
Reach the Isle of Dorn |complete zone("Isle of Dorn") |q 79510
step
Leave the Cave |q 79510/4 |goto Isle of Dorn/0 74.98,23.89
step
click Prooftelling Flower+
|tip They look like {o}plants with white flowers{} on them.
collect Prooftelling Flower##219224 |q 79510/5 |goto Isle of Dorn/0 74.53,24.64
step
Watch the dialogue
Return to Granny Scribbles |complete subzone("Gundargaz") |q 79510
step
talk Granny Scribbles##216438
|tip Inside the building.
turnin The Wickless Candle##79510 |goto The Ringing Deeps/0 47.98,35.73
Learn from Granny Scribbles |q 79683/2 |goto The Ringing Deeps/0 47.98,35.73
stickystart "Pull_Overgrowths"
stickystart "Clear_Rubble"
stickystart "Catch_Stoneskitterers"
step
talk Concerned Machine Speaker##219158
Select _"Now is the time to speak up."_ |gossip 121184
Hear the Grievance |q 80079/1 |goto The Ringing Deeps/0 47.22,32.33 |count 1
step
talk Concerned Machine Speaker##218722
Select _"Now is the time to speak up."_ |gossip 121182
Hear the Grievance |q 80079/1 |goto The Ringing Deeps/0 47.27,32.21 |count 2
step
talk Agitated Machine Speaker##218724
Select _"Now is the time to speak up."_ |gossip 121038
Hear the Grievance |q 80079/1 |goto The Ringing Deeps/0 47.22,32.01 |count 3
step
talk Agitated Machine Speaker##219155
Select _"Now is the time to speak up."_ |gossip 121181
Hear the Grievance |q 80079/1 |goto The Ringing Deeps/0 47.14,32.13 |count 4
step
talk Moira Thaurissan##218714
turnin A Wrench in the Works##80079 |goto The Ringing Deeps/0 47.13,33.23
step
talk Speaker Brinthe##218715
accept The Tunnel's End##78685 |goto The Ringing Deeps/0 47.09,33.23
step
label "Pull_Overgrowths"
click Encroaching Overgrowth+
|tip They look like {o}patches of green algae{}.
Pull #3# Overgrowths |q 80058/1 |goto The Ringing Deeps/0 47.70,32.49
step
label "Clear_Rubble"
click Rubble+
|tip They look like {o}piles of rocks{}.
Clear #6# Rubble |q 80058/2 |goto The Ringing Deeps/0 47.70,32.49
step
label "Catch_Stoneskitterers"
clicknpc Infesting Stoneskitterer##218638+
|tip They look like {o}lizards{}.
Catch #8# Stoneskitterers |q 80058/3 |goto The Ringing Deeps/0 47.70,32.49
step
talk Fourman Grimes##217131
turnin Kobold Kleanup##80058 |goto The Ringing Deeps/0 47.32,31.86
accept On the Job Training##79556 |goto The Ringing Deeps/0 47.32,31.86
step
talk Steamwarden Hurlt##216600
Speak to Steamwarden Hurlt |q 79556/1 |goto The Ringing Deeps/0 47.22,31.60
step
talk Steamwarden Hurlt##216600
Select _"I am. Just tell me what to do."_ |gossip 121058
Watch the dialogue
|tip {o}Click the objects{} nearby {o}when he tells you to{}.
Repair the Steamworks |q 79556/2 |goto The Ringing Deeps/0 47.22,31.60
step
talk Fourman Grimes##217131
turnin On the Job Training##79556 |goto The Ringing Deeps/0 47.32,31.86
accept Pipe Patching##79680 |goto The Ringing Deeps/0 47.32,31.86
accept Plumber Power##79681 |goto The Ringing Deeps/0 47.32,31.86
step
talk Tunnel Rat Crew Boss##218474
|tip Up on the wall.
Select _"Let's go over the plans together. Warning: this will skip the puzzle but take a long time."_ |gossip 120927 |noautogossip
Unblock the Steam Tunnel |q 79681/2 |goto The Ringing Deeps/0 48.50,31.03
|tip It will {o}take 2 minutes{} for the goal to {o}complete{}.
|tip You can choose to do the puzzle instead if you wish.
step
Patch #12# Leaking Pipes |q 79680/1 |goto The Ringing Deeps/0 48.86,32.16
|tip Fly next to the {o}steam shooting out of pipes{}.
step
talk Fourman Grimes##217131
turnin Pipe Patching##79680 |goto The Ringing Deeps/0 47.31,31.86
turnin Plumber Power##79681 |goto The Ringing Deeps/0 47.31,31.86
accept Critical Pressure!##79682 |goto The Ringing Deeps/0 47.31,31.86
step
click Main Release Valve
|tip You will be attacked.
Relieve the Pressure |q 79682/1 |goto The Ringing Deeps/0 48.10,32.18
step
kill Geothermus##217416 |q 79682/2 |goto The Ringing Deeps/0 48.10,32.18
step
talk Fourman Grimes##217131
turnin Critical Pressure!##79682 |goto The Ringing Deeps/0 47.32,31.86
Assist Fourman Grimes |q 79683/1 |goto The Ringing Deeps/0 47.32,31.86
step
Meet Janky in the Cinderwold |q 81999/1 |goto Isle of Dorn/0 72.07,42.03
step
talk Janky##219674
turnin New Home, New Candle!##81999 |goto Isle of Dorn/0 72.07,42.03
accept Hot Wax##79552 |goto Isle of Dorn/0 72.07,42.03
accept Mite Not Right##79998 |goto Isle of Dorn/0 72.07,42.03
stickystart "Kill_Infesting_Cindermites"
step
click Molten Wax+
|tip They look like {o}yellow puddles{}.
|tip You may be attacked.
kill Freed Honeywax##222313+
collect 12 Fire Bee Wax##216670 |q 79552/1 |goto Isle of Dorn/0 71.17,42.08
step
label "Kill_Infesting_Cindermites"
extraaction Janky's Smoke Pump##445884
kill 24 Infesting Cindermite##222276 | q 79998/2 |goto Isle of Dorn/0 71.17,42.08
|tip Use the {o}Janky's Smoke Pump{} ability on enemies around this area.
|tip They look like {o}bees with green bubbles{} above them.
|tip The {o}Cindermites appear{} after you use the ability.
'|clicknpc Drained Cinderbee##224080, Agitated Hive Worker##224096
step
talk Janky##219674
turnin Hot Wax##79552 |goto Isle of Dorn/0 72.07,42.03
turnin Mite Not Right##79998 |goto Isle of Dorn/0 72.07,42.03
accept Hot Pollenate-o##80202 |goto Isle of Dorn/0 72.07,42.03
accept Beebiter##80000 |goto Isle of Dorn/0 72.07,42.03
stickystart "Deliver_Pollen_To_Bees"
step
kill Beebiter##222284 |q 80000/1 |goto Isle of Dorn/0 69.89,41.97
|tip Inside the small cave.
step
label "Deliver_Pollen_To_Bees"
Deliver #6# Pollen to Bees |q 80202/2 |goto Isle of Dorn/0 71.00,42.77
|tip Walk next to {o}Pollen Rich Cinderblooms{} to gain a temporary {o}pollen buff{}.
|tip They look like {o}tall plants with red flowers{}, with {o}orange orbs{} flying upward out of them.
|tip With the buff active, walk {o}next to bees to deliver{} the pollen.
step
talk Janky##219674
turnin Hot Pollenate-o##80202 |goto Isle of Dorn/0 72.07,42.03
turnin Beebiter##80000 |goto Isle of Dorn/0 72.07,42.03
accept Janky Candles##79565 |goto Isle of Dorn/0 72.07,42.03
step
talk Bosh##217722
Select _"Do you have the parts required for a merchant stall?"_ |gossip 121379
Speak with Bosh |q 79565/1 |goto The Ringing Deeps/0 47.48,32.54
step
talk Innkeeper Brax##213840
|tip Inside the building.
Select _"I'd like to speak with you about Bosh's tab."_ |gossip 121380
Select _"Is there anything I could do for you instead? A quest, perhaps?"_ |gossip 121385
Speak with Innkeeper Brax About Bosh's Tab |q 79565/2 |goto The Ringing Deeps/0 48.00,32.17
step
talk Foreman Shalea##219705
Select _"Is there anything I could do to speed up the repairs?"_ |gossip 121387
Speak with Foreman Shalea About the Construction |q 79565/3 |goto The Ringing Deeps/0 47.58,31.60
step
talk Machinist Valyka##217730
Select _"I'm here to check on Foreman Shalea's order."_ |gossip 121389
Speak to Machinist Valyka About the Tools |q 79565/4 |goto The Ringing Deeps/0 47.68,32.93
step
talk Foreman Svart##213841
Select _"Do you have Machinist Valyka's order of coal?"_ |gossip 121390
Speak to Foreman Svart About the Coal Shipment |q 79565/5 |goto The Ringing Deeps/0 47.42,28.31
step
click Coal Shipment+
|tip They look like {o}piles of black rocks{}.
|tip You may be attacked.
kill Coal Rager##219726+
collect 12 Elementally Active Coal##224253 |q 79565/6 |goto The Ringing Deeps/0 47.54,27.22
step
talk Machinist Valyka##217730
Select _"I brought the coal. It's extra feisty."_ |gossip 121388
Deliver the Coal to Valyka |q 79565/7 |goto The Ringing Deeps/0 47.68,32.94
step
talk Foreman Shalea##219705
Select _"I've got a fresh order of tools. Still hot from the forge."_ |gossip 121386
Deliver the Order to Shalea |q 79565/8 |goto The Ringing Deeps/0 47.58,31.60
step
talk Innkeeper Brax##213840
|tip Inside the building.
Select _"Shalea and her crew will be wrapping up as soon as possible."_ |gossip 121384
Pass the Promise to Brax |q 79565/9 |goto The Ringing Deeps/0 47.99,32.17
step
talk Bosh##217722
Select _"Brax says he won't cut you off. For now, anyway."_ |gossip 121378
Bring the News to Bosh |q 79565/10 |goto The Ringing Deeps/0 47.48,32.54
step
talk Janky##216598
turnin Janky Candles##79565 |goto The Ringing Deeps/0 47.56,33.37
Help Janky |q 79683/3 |goto The Ringing Deeps/0 47.56,33.38
step
talk Skitter##213152
|tip Inside the building.
turnin Home Is Where the Candle Is##79683 |goto The Ringing Deeps/0 47.17,34.16
step
talk Mindi Maxlof##224966
turnin An Opportunity to Relax##82952 |goto The Ringing Deeps/0 53.80,43.79
accept To Opportunity Point##82956 |goto The Ringing Deeps/0 53.80,43.79
step
talk Haimaz##220600
accept Listener Lost##80576 |goto The Ringing Deeps/0 60.43,45.70
step
talk Milgrit Stonefeather##218388
fpath Shadowvein Point |goto The Ringing Deeps/0 61.44,47.95
step
talk Hrandaz##220415
accept Desparately Seeking Skorthuz##81693 |goto The Ringing Deeps/0 62.45,47.98
step
talk Kagfritha##220417
accept Juicy Krolusk Meat##81655 |goto The Ringing Deeps/0 62.19,46.89
accept Sticks and Bones##81669 |goto The Ringing Deeps/0 62.19,46.89
step
talk Scrit##222234
accept Dread in the Den##80508 |goto The Ringing Deeps/0 62.67,45.64
step
Find Brennok |q 80576/1 |goto The Ringing Deeps/0 63.01,43.69
|tip Up on the ledge.
step
talk Brennok##220597
turnin Listener Lost##80576 |goto The Ringing Deeps/0 63.39,43.37
accept Defragmenting Memory##80676 |goto The Ringing Deeps/0 63.39,43.37
step
Kill enemies around this area
click Suspicious Rock+
|tip They look like {o}grey stones{}.
|tip You may be attacked.
collect 100 Missing Page##220999 |q 80676/1 |goto The Ringing Deeps/0 61.62,41.99
'|kill Scavenging Swarmer##222873, Shadowsting Lurker##222645, Shadowsting Scavenger##222872, Lurking Hatchling##222874
step
talk Brennok##220597
turnin Defragmenting Memory##80676 |goto The Ringing Deeps/0 63.39,43.36
accept Let's Not Worry Her##81613 |goto The Ringing Deeps/0 63.39,43.36
step
talk Skorthuz##220446
turnin Desparately Seeking Skorthuz##81693 |goto The Ringing Deeps/0 64.93,41.55
accept Lisky Business##81712 |goto The Ringing Deeps/0 64.93,41.55
accept Oozemodious##81713 |goto The Ringing Deeps/0 64.93,41.55
stickystart "Kill_Tentacular_Slimes"
step
Enter the cave |goto The Ringing Deeps/0 64.93,40.91 < 20 |walk
kill Oozemodius##220410 |q 81713/2 |goto The Ringing Deeps/0 66.85,38.99
|tip He walks around this area.
|tip Upstairs inside the cave.
step
extraaction Call Lisky##446608
Find Lisky |q 81712/1 |goto The Ringing Deeps/0 66.24,39.08
|tip Use the {o}Call Lisky{} button ability {o}while facing Lisky{}.
|tip It looks like a {o}small blue basilisk{} running around.
|tip Inside the cave, on the ground floor.
stickystart "Bring_Lusky_To_Skorthuz"
step
label "Kill_Tentacular_Slimes"
kill 6 Tentacular Slime##220364 |q 81713/1 |goto The Ringing Deeps/0 64.93,40.91
|tip Inside the cave. |notinsticky
step
label "Bring_Lusky_To_Skorthuz"
Leave the cave |goto The Ringing Deeps/0 64.93,40.91 < 20 |walk |only if subzone("Fetid Grotto") and indoors()
extraaction Call Lisky##446608
Bring Lisky to Skorthuz |q 81712/2 |goto The Ringing Deeps/0 64.93,41.55
|tip Use the {o}Recall Lisky{} button ability {o}when Lisky gets distracted{}.
|tip {o}Face Lisky{} when using the ability.
step
talk Skorthuz##220446
turnin Lisky Business##81712 |goto The Ringing Deeps/0 64.93,41.55
turnin Oozemodious##81713 |goto The Ringing Deeps/0 64.93,41.55
step
talk Nebb##215737
accept A Nebb in Need##79367 |goto The Ringing Deeps/0 65.87,42.64
step
click Crate of Candles##429003
collect Bundle of Candles##217116 |q 79367/1 |goto The Ringing Deeps/0 65.87,42.79
step
click Kobold Candle
Place the Candle |q 79367/2 |goto The Ringing Deeps/0 65.80,42.78 |count 1
step
click Kobold Candle
Place the Candle |q 79367/2 |goto The Ringing Deeps/0 65.81,42.70 |count 2
step
click Kobold Candle
Place the Candle |q 79367/2 |goto The Ringing Deeps/0 65.93,42.56 |count 3
step
click Kobold Candle
Place the Candle |q 79367/2 |goto The Ringing Deeps/0 65.96,42.57 |count 4
step
talk Nebb##215737
turnin A Nebb in Need##79367 |goto The Ringing Deeps/0 65.87,42.64
accept Hair of the Spider##79368 |goto The Ringing Deeps/0 65.87,42.64
step
talk Snubjaw##217152
accept Protecting the Harvest##79369 |goto The Ringing Deeps/0 65.90,42.70
accept Tending to the Terrified##79481 |goto The Ringing Deeps/0 65.90,42.70
stickystart "Collect_Undercrawler_Venom"
stickystart "Collect_Grub_Eggs"
step
clicknpc Terrified Grubtender##216383+
|tip They look like {o}scared rat people{}.
Free #6# Terrified Grubtenders |q 79481/1 |goto The Ringing Deeps/0 67.64,42.64
step
label "Collect_Undercrawler_Venom"
Kill enemies around this area
collect 12 Undercrawler Venom##213178 |q 79368/1 |goto The Ringing Deeps/0 67.42,42.40
'|kill Invasive Undercrawler##215739, Encroaching Undercrawler##215771, Infested Jawgrub##217379, Invasive Hatchling##215769, Bursting Hatchling##217484
step
label "Collect_Grub_Eggs"
click Grub Eggs+
|tip They look like {o}clusters of brown eggs{}.
|tip You may be attacked.
collect 20 Grub Egg##213209 |q 79369/1 |goto The Ringing Deeps/0 67.53,42.52
step
talk Snubjaw##217152
turnin Protecting the Harvest##79369 |goto The Ringing Deeps/0 65.90,42.70
turnin Tending to the Terrified##79481 |goto The Ringing Deeps/0 65.90,42.70
step
talk Nebb##215737
turnin Hair of the Spider##79368 |goto The Ringing Deeps/0 65.87,42.64
accept A Poultice for Poison##79370 |goto The Ringing Deeps/0 65.87,42.64
step
clicknpc Snubjaw##217154
Apply the Poultice to Snubjaw |q 79370/1 |goto The Ringing Deeps/0 65.90,42.70
step
talk Nebb##215737
turnin A Poultice for Poison##79370 |goto The Ringing Deeps/0 65.87,42.64
accept A Royal Cure##79371 |goto The Ringing Deeps/0 65.87,42.64
step
Enter the cave |goto The Ringing Deeps/0 68.70,40.49 < 20 |walk
click Broodmother's Egg##423581
|tip Inside the cave.
accept A Clutch of Hope##79372 |goto The Ringing Deeps/0 68.07,39.03
step
kill Queen Rickiticka##215772
|tip She walks around this area.
|tip Inside the cave.
collect Queen Rickiticka's Venom##213218 |q 79371/1 |goto The Ringing Deeps/0 68.19,39.75
step
Leave the cave |goto The Ringing Deeps/0 68.70,40.49 < 20 |walk |only if subzone("Chittering Den") and indoors()
Find Scrit's Camp |q 80508/1 |goto The Ringing Deeps/0 69.64,41.14
step
talk Scrit##222234
turnin Dread in the Den##80508 |goto The Ringing Deeps/0 69.64,41.14
accept A Suit of Slime##80509 |goto The Ringing Deeps/0 69.64,41.14
accept Healing the Headwaters##80510 |goto The Ringing Deeps/0 69.64,41.14
stickystart "Collect_Sticky_Wax"
step
click Polluting Scrap+
|tip They looks like {o}clusters of objects{} floating {o}in the water{}.
Remove #6# Polluting Scraps |q 80510/1 |goto The Ringing Deeps/0 69.26,38.65
step
label "Collect_Sticky_Wax"
Kill enemies around this area
clicknpc Wax-addled Hopper##221927+
|tip They look like {o}fish hopping on dry land{} around the water.
collect 20 Sticky Wax##220218 |q 80509/1 |goto The Ringing Deeps/0 69.49,38.15
'|kill Congealed Wax-hulk##223206, Waxy Runoff##220210
step
talk Scrit##222234
Select _"<Give the Sticky Wax to Scrit.>"_ |gossip 121872
Speak to Scrit |q 80509/2 |goto The Ringing Deeps/0 69.65,41.14
step
talk Scrit##222234
turnin Healing the Headwaters##80510 |goto The Ringing Deeps/0 69.65,41.14
step
click Flappy Bits
Choose a Disguise |q 80509/3 |goto The Ringing Deeps/0 69.57,41.20
step
talk Scrit##222234
turnin A Suit of Slime##80509 |goto The Ringing Deeps/0 69.64,41.14
accept Casing the Camp##80511 |goto The Ringing Deeps/0 69.64,41.14
step
extraaction Flawless Bug Disguise##444933
Put On the Flawless Bug Disguise |q 80511/1 |goto The Ringing Deeps/0 69.64,41.14
|tip Use the {o}Flawless Bug Disguise{} ability.
|tip It appears as a button on the screen.
step
extraaction Show Off##449231
Impress the Guards |q 80511/2 |goto The Ringing Deeps/0 68.19,39.21
|tip Use the {o}Show Off{} ability.
|tip It appears as a button on the screen.
step
_NOTE:_
During the Next Steps
|tip {o}Avoid the enemies{} with {o}blue circles{} around them.
|tip They can {o}see through your disguise{}.
Click Here to Continue |confirm |q 80511
step
Investigate the Camp |q 80511/3 |goto The Ringing Deeps/0 67.01,38.13
step
Investigate the Fighting Ring |q 80511/4 |goto The Ringing Deeps/0 66.79,38.90
step
_Next to you:_
talk Scrit##222239
turnin Casing the Camp##80511
accept Beat the Best##80512
accept Snouty Sabotage##80513
step
click Pilfered Supplies
Place the Cinder-flash Candle |q 80513/1 |goto The Ringing Deeps/0 66.96,38.82 |count 1
step
click Hitching Post
Loosen the Bug Leash |q 80513/2 |goto The Ringing Deeps/0 67.68,38.46 |count 1
step
click Hitching Post
Loosen the Bug Leash |q 80513/2 |goto The Ringing Deeps/0 67.94,39.57 |count 2
step
clicknpc Squinch##220228
kill Siltsliver##220236
Defeat Squinch |q 80512/2 |goto The Ringing Deeps/0 67.64,39.58
step
clicknpc Flindersnik##220231
kill Cindersting##220238
Defeat Flindersnik |q 80512/3 |goto The Ringing Deeps/0 67.45,38.00
step
click Purloined Goods
Place the Cinder-flash Candle |q 80513/1 |goto The Ringing Deeps/0 66.50,38.36 |count 2
step
clicknpc Brekk##220230
kill Rockgore##220241
Defeat Brekk |q 80512/1 |goto The Ringing Deeps/0 65.68,39.73
step
_Next to you:_
talk Scrit##222239
turnin Beat the Best##80512
step
click Purloined Goods
Place the Cinder-flash Candle |q 80513/1 |goto The Ringing Deeps/0 66.27,39.69 |count 3
step
click Purloined Goods
|tip Up on the wooden structure.
Place the Cinder-flash Candle |q 80513/1 |goto The Ringing Deeps/0 66.55,39.02 |count 4
step
_Next to you:_
talk Scrit##222239
turnin Snouty Sabotage##80513
accept Break out Berrund!##80514
step
talk Berrund the Gleaming##223730
Select _"Get ready, the candles are about to explode!"_ |gossip 121909
Speak to Berrund |q 80514/1 |goto The Ringing Deeps/0 66.88,39.29
step
Watch the dialogue
|tip Follow {o}Berrund{} and {o}protect him{} as he walks.
|tip He eventually walks to this location.
Escort Berrund |q 80514/2 |goto The Ringing Deeps/0 68.67,39.45
'|clicknpc Berrund the Gleaming##222062
step
talk Berrund the Gleaming##220220
turnin Break out Berrund!##80514 |goto The Ringing Deeps/0 69.63,40.91
step
talk Scrit##222234
accept Put the Shine On##80515 |goto The Ringing Deeps/0 69.65,41.14
step
clicknpc Brilliant Candlefly##222652+
|tip They look like {o}flying insects caught in nets{}.
collect 6 Candlefly Luminescence##220485 |q 80515/1 |goto The Ringing Deeps/0 72.05,39.39
step
talk Scrit##222234
turnin Put the Shine On##80515 |goto The Ringing Deeps/0 69.64,41.14
step
talk Berrund the Gleaming##220220
accept Bump off the Boss##80516 |goto The Ringing Deeps/0 69.63,40.91
step
kill Boss Whiskerlash##220385 |q 80516/1 |goto The Ringing Deeps/0 73.89,34.62
|tip Inside the small cave.
step
talk Scrit##222234
turnin Bump off the Boss##80516 |goto The Ringing Deeps/0 69.65,41.14
step
talk Nebb##215737
Select _"<Give Nebb the Queen's venom to make a new poultice.>"_ |gossip 121187
Give Queen Rickiticka's Venom to Nebb |q 79371/2 |goto The Ringing Deeps/0 65.87,42.63
step
talk Nebb##215737
turnin A Clutch of Hope##79372 |goto The Ringing Deeps/0 65.87,42.63
step
clicknpc Snubjaw##217163
Cure Snubjaw |q 79371/3 |goto The Ringing Deeps/0 65.90,42.70
step
talk Nebb##215737
turnin A Royal Cure##79371 |goto The Ringing Deeps/0 65.87,42.64
step
Return to Haimaz |q 81613/1 |goto The Ringing Deeps/0 62.03,45.53
step
talk Haimaz##220600
turnin Let's Not Worry Her##81613 |goto The Ringing Deeps/0 62.03,45.53
accept Readying the Recitation##80577 |goto The Ringing Deeps/0 62.03,45.53
step
Watch the dialogue
talk Brennok##220597
|tip He walks to this location.
accept The Common Costume##80578 |goto The Ringing Deeps/0 61.88,45.51
step
talk Resting Miner##221011
|tip Upstairs inside the building.
Select _"<Ask if the miner knows where a spare set of clothes is.>"_ |gossip 122206
Select _"It's part of the recitation ceremony."_ |gossip 122205
Speak to Resting Miners |q 80578/1 |goto The Ringing Deeps/0 61.68,46.02
step
click Spare Miner's Clothes##442658
|tip Inside the building, on the top floor.
collect Miner's Clothes##221472 |q 80578/2 |goto The Ringing Deeps/0 61.91,45.94
step
talk Brennok##220597
|tip Outside the building.
turnin The Common Costume##80578 |goto The Ringing Deeps/0 61.88,45.51
step
click Stuck Mine Cart
|tip Up on the platform.
Move the Stuck Minecart |q 80577/1 |goto The Ringing Deeps/0 62.67,44.47
step
click Mislaid Tool+
|tip They look like {o}various hammers{}.
collect 3 Mislaid Tool##224008 |q 80577/2 |goto The Ringing Deeps/0 62.58,44.36
step
click Stubborn Moss
Clean the Plaque |q 80577/3 |goto The Ringing Deeps/0 62.83,44.23
step
talk Haimaz##220600
turnin Readying the Recitation##80577 |goto The Ringing Deeps/0 62.78,44.18
accept A Sip of Cinder##80593 |goto The Ringing Deeps/0 62.78,44.18
stickystart "Burn_Deepsflayer_Nests"
stickystart "Fill_The_Cask"
step
Kill Krolusk enemies around this area
collect 4 Juicy Krolusk Meat##219493 |q 81655/1 |goto The Ringing Deeps/0 62.37,49.57
'|kill Waste Krolusk##221358, Krolusk Whelpling##225388
step
label "Burn_Deepsflayer_Nests"
click Deepsflayer Nest+
|tip They look like {o}large bird nests{}.
Burn #6# Deepsflayer Nests |q 81669/1 |goto The Ringing Deeps/0 63.27,50.61
step
label "Fill_The_Cask"
Kill Flayer enemies around this area
collect Cinderbrew Flask##221001+ |n
click Nearly-empty Cask+
|tip They look like {o}wooden barrels{}.
collect Nearly-empty Cask##221000+ |n
Fill the Cask |q 80593/1 |goto The Ringing Deeps/0 61.97,49.26
'|kill Waste Flayer##220363, Mead-Mad Flayer##222898
step
talk Kagfritha##220417
turnin Juicy Krolusk Meat##81655 |goto The Ringing Deeps/0 62.18,46.89
turnin Sticks and Bones##81669 |goto The Ringing Deeps/0 62.18,46.89
accept In a Pinch##81672 |goto The Ringing Deeps/0 62.18,46.89
step
talk Haimaz##220600
turnin A Sip of Cinder##80593 |goto The Ringing Deeps/0 62.03,45.53
step
talk Brennok##220597
accept One Last Story##80682 |goto The Ringing Deeps/0 61.88,45.51
step
talk Brennok##220597
|tip Up on the platform.
Select _"<Listen to Brennok's last recitation.>"_ |gossip 122202 |noautogossip
|tip You can watch the dialogue, or choose {o}"<Skip recitation> I'll meet you by the bridge."{}
click Stool
|tip Nearby.
Watch the dialogue
Attend the Recitation |q 80682/1 |goto The Ringing Deeps/0 62.64,44.47
step
Meet Brennok by the Bridge |q 80682/2 |goto The Ringing Deeps/0 57.37,43.04
step
talk Haimaz##220600
turnin One Last Story##80682 |goto The Ringing Deeps/0 57.37,43.04
accept On the Road##82144 |goto The Ringing Deeps/0 57.37,43.04
step
kill Grimlurk##223091
Rescue Brennok |q 82144/1 |goto The Ringing Deeps/0 56.73,40.76
step
talk Haimaz##220600
turnin On the Road##82144 |goto The Ringing Deeps/0 57.33,43.06
step
click Meaty Bait
|tip You will be attacked.
Place the Meaty Bait |q 81672/1 |goto The Ringing Deeps/0 61.96,50.87
step
kill Smaragthr##220362 | q 81672/2 |goto The Ringing Deeps/0 61.96,50.88
step
talk Sinruna##223759
|tip She walks around this area.
accept Badly Behaved Bot##83165 |goto The Ringing Deeps/0 60.33,56.99
step
Find Magni and Dagran Near Taelloch |q 78685/1 |goto The Ringing Deeps/0 60.40,59.79
step
talk Magni Bronzebeard##213612
turnin The Tunnel's End##78685 |goto The Ringing Deeps/0 60.40,59.79
accept We Don't Go to Taelloch##78696 |goto The Ringing Deeps/0 60.40,59.79
step
Kill enemies around this area
Kill #6# Encroaching Wildlife |q 78696/1 |goto The Ringing Deeps/0 62.13,59.83
'|kill Invasive Witherling##219913, Territorial Deepflayer##219902, Emboldened Fog Wither##219909
step
Find Magni and Dagran |q 78696/2 |goto The Ringing Deeps/0 62.51,58.69
|tip In the doorway of the building.
step
talk Dagran Thaurissan II##213634
|tip Inside the building.
turnin We Don't Go to Taelloch##78696 |goto The Ringing Deeps/0 62.31,58.14
accept Ghost of a Company Town##78697 |goto The Ringing Deeps/0 62.31,58.14
step
talk Magni Bronzebeard##213633
|tip Inside the building.
Select _"I am ready to go."_ |gossip 123513
Tell Magni You Are Ready to Go |q 78697/1 |goto The Ringing Deeps/0 62.31,58.08
step
Enter the Town |q 78697/2 |goto The Ringing Deeps/0 63.85,58.36
step
extraaction Investigate##440479
click Earthen Slate
|tip Use the {o}Investigate{} ability to reveal it.
|tip It appears as a button on the screen.
Investigate and Inspect the Clue |q 78697/3 |goto The Ringing Deeps/0 64.16,58.06 |count 1
step
extraaction Investigate##440479
click Full Mug
|tip Use the {o}Investigate{} ability to reveal it.
|tip It appears as a button on the screen.
Investigate and Inspect the Clue |q 78697/3 |goto The Ringing Deeps/0 64.13,58.63 |count 2
step
extraaction Investigate##440479
click Hastily Constructed Blockade
|tip Use the {o}Investigate{} ability to reveal it.
|tip It appears as a button on the screen.
Investigate and Inspect the Clue |q 78697/3 |goto The Ringing Deeps/0 63.49,57.83 |count 3
step
extraaction Investigate##440479
click Earthen Slate
|tip Use the {o}Investigate{} ability to reveal it.
|tip It appears as a button on the screen.
Investigate and Inspect the Clue |q 78697/3 |goto The Ringing Deeps/0 65.08,57.85 |count 4
step
extraaction Investigate##440479
click Earthen Hammer
|tip Use the {o}Investigate{} ability to reveal it.
|tip It appears as a button on the screen.
Investigate and Inspect the Clue |q 78697/3 |goto The Ringing Deeps/0 65.32,58.70 |count 5
step
extraaction Investigate##440479
click Hastily Constructed Blockade
|tip Use the {o}Investigate{} ability to reveal it.
|tip It appears as a button on the screen.
Investigate and Inspect the Clue |q 78697/3 |goto The Ringing Deeps/0 65.84,57.41 |count 6
step
click Barricade
Investigate the Call for Help |q 78697/4 |goto The Ringing Deeps/0 66.05,58.34
step
talk Magni Bronzebeard##216479
|tip Inside the building.
turnin Ghost of a Company Town##78697 |goto The Ringing Deeps/0 66.14,58.36
accept Controlled Demolition##78700 |goto The Ringing Deeps/0 66.14,58.36
step
_Next to you:_
talk Dagran Thaurissan II##214892
accept The Truth in Chalk##78701
stickystart "Slay_Skardyn"
step
click Earthen Slate
Find the First Slate |q 78701/1 |goto The Ringing Deeps/0 66.02,60.43
step
click Earthen Slate
|tip Inside the small cave.
Find the Second Slate |q 78701/2 |goto The Ringing Deeps/0 61.47,62.66
step
click Earthen Slate
|tip Inside the small cave.
Find the Third Slate |q 78701/3 |goto The Ringing Deeps/0 64.44,65.06
step
click Earthen Slate
Find the Fourth Slate |q 78701/4 |goto The Ringing Deeps/0 67.26,63.99
step
_Next to you:_
talk Dagran Thaurissan II##214892
turnin The Truth in Chalk##78701
step
label "Slay_Skardyn"
Kill enemies around this area
Slay #18# Skardyn |q 78700/1 |goto The Ringing Deeps/0 64.86,62.11
'|kill Reconstructed Skardyn##219245, Corrupted Spellshaper##219302, Unstable Skardyn##223414, Cursed Miner##213565, Hijacked Ironstrider##219287, Voidtouched Speaker##223469, Skardyn Husk##213566
step
_Next to you:_
talk Magni Bronzebeard
turnin Controlled Demolition##78700
'|talk Magni Bronzebeard##214890
step
_Next to you:_
talk Dagran Thaurissan II##214892
accept Buried in Stone##78703
step
Locate the entrance of the cave |goto The Ringing Deeps/0 67.39,62.00 < 15 |walk
Enter the Cave |q 78703/1 |goto The Ringing Deeps/0 68.00,61.81
|tip Inside the cave.
step
Explore the Cave |q 78703/2 |goto The Ringing Deeps/0 68.46,62.88
|tip Inside the cave.
step
kill Cave Blockage##216508
|tip It looks like a {o}wall of boulders{} blocking the path.
|tip Inside the cave.
Destroy the Blockage |q 78703/3 |goto The Ringing Deeps/0 68.46,62.88
step
_Next to you:_
talk Dagran Thaurissan II##214892
turnin Buried in Stone##78703
step
_Next to you:_
talk Magni Bronzebeard
accept Find the Foreman##78704
'|talk Magni Bronzebeard##214890
step
kill Kol Bruncrag##213658
|tip Upstairs inside the cave.
Confront the Foreman |q 78704/1 |goto The Ringing Deeps/0 68.47,64.18
step
_Next to you:_
talk Magni Bronzebeard
turnin Find the Foreman##78704
'|talk Magni Bronzebeard##214890
step
_Next to you:_
talk Dagran Thaurissan II##214892
accept What She Saw##78705
step
click Memory Gem
|tip Inside the cave, on the ground floor.
Examine the Gem |q 78705/1 |goto The Ringing Deeps/0 68.58,64.45
step
Watch the dialogue
|tip Inside the cave, on the ground floor.
View the Memory |q 78705/2 |goto The Ringing Deeps/0 68.57,64.35
step
talk Dagran Thaurissan II##219453
|tip Inside the cave, on the ground floor.
turnin What She Saw##78705 |goto The Ringing Deeps/0 68.57,64.35
step
talk Magni Bronzebeard##219452
|tip Inside the cave, on the ground floor.
accept The High Speaker's Secret##78706 |goto The Ringing Deeps/0 68.55,64.35
step
Leave the cave |goto The Ringing Deeps/0 67.61,62.01 < 20 |walk |only if subzone("Taelloch Mine") and indoors()
talk Kargen Ironbrow##224940
fpath Camp Murroch |goto The Ringing Deeps/0 58.16,64.05
step
talk Kagfritha##220417
turnin In a Pinch##81672 |goto The Ringing Deeps/0 62.18,46.89
turnin Badly Behaved Bot##83165 |goto The Ringing Deeps/0 62.18,46.89
step
talk Speaker Brinthe##212741
|tip Inside the building.
turnin The High Speaker's Secret##78706 |goto The Ringing Deeps/0 47.19,34.17
accept Absent Speaker##78738 |goto The Ringing Deeps/0 47.19,34.17
step
talk Cogwin##225616
accept Cinderbrew Reserve##83160 |goto The Ringing Deeps/0 41.35,22.45
step
click Cinderbrew Reserve
|tip Inside the small room at the bottom of the wall.
Carry the Cinderbrew Reserve |havebuff Cinderbrew Reserve##453877 |goto The Ringing Deeps/0 42.39,24.79 |q 83160
step
_NOTE:_
During the Next Step
|tip {o}Don't mount{}, or you'll {o}lose the barrel{} and have to get it again.
|tip {o}Avoid NPCs with blue circles{} on the ground around them.
Click Here to Continue |confirm |q 83160
step
Run up the stairs |goto The Ringing Deeps/0 42.98,24.77 < 15 |only if walking
Continue up the stairs |goto The Ringing Deeps/0 41.74,25.25 < 15 |only if walking
Return the Cinderbrew Reserve |q 83160/1 |goto The Ringing Deeps/0 41.36,22.45
step
talk Cogwin##225616
turnin Cinderbrew Reserve##83160 |goto The Ringing Deeps/0 41.36,22.45
step
talk Foreman Duinth##225582
accept An Igneous End##83092 |goto The Ringing Deeps/0 41.08,21.40
accept Magmanagement##83152 |goto The Ringing Deeps/0 41.08,21.40
step
talk Machinist Kilton##225583
accept Sampling Steam##83153 |goto The Ringing Deeps/0 41.10,21.41
stickystart "Collect_Gas_Samples"
stickystart "Slay_Magma_Elementals"
step
talk Entombed Earthen##225471+
|tip They look like {o}dwarves{}.
Free #6# Earthen |q 83092/1 |goto The Ringing Deeps/0 41.47,19.58
step
label "Collect_Gas_Samples"
Collect #8# Gas Samples |q 83153/1 |goto The Ringing Deeps/0 41.50,19.84
|tip {o}Stand{} on the spots {o}where steam shoots{} out of the ground.
step
label "Slay_Magma_Elementals"
Kill enemies around this area
Slay #12# Magma Elementals |q 83152/1 |goto The Ringing Deeps/0 41.60,19.93
'|kill Slag Bubble##225389, Risen Magma##225390
step
talk Machinist Kilton##225583
turnin Sampling Steam##83153 |goto The Ringing Deeps/0 41.10,21.41
step
talk Foreman Duinth##225582
turnin An Igneous End##83092 |goto The Ringing Deeps/0 41.08,21.40
turnin Magmanagement##83152 |goto The Ringing Deeps/0 41.08,21.40
step
talk Speaker Brinthe##213569
|tip On the other side of the mountain.
turnin Absent Speaker##78738 |goto The Ringing Deeps/0 47.13,20.72
accept Sympathetic Speakers##78741 |goto The Ringing Deeps/0 47.13,20.72
step
talk Moira Thaurissan##213763
accept Battle of the Earthenworks##78742 |goto The Ringing Deeps/0 47.08,20.71
stickystart "Fight_The_High_Speakers_Followers_In_The_Earthenworks"
step
talk Foreman Gesa##213674
|tip He walks around this area.
Select _"Can you help us?"_ |gossip 121209
kill Foreman Gesa##213674
Confront Foreman Gesa |q 78741/1 |goto The Ringing Deeps/0 50.33,21.20
step
talk Foreman Otan##213673
Select _"Can you help us?"_ |gossip 121212
kill Foreman Otan##213673
Confront Foreman Otan |q 78741/2 |goto The Ringing Deeps/0 45.80,14.04
step
Confront Foreman Uzjax |q 78741/3 |goto The Ringing Deeps/0 48.99,17.44
|tip Inside the small room beneath the bridge.
step
Watch the dialogue
talk Speaker Brinthe##219428
|tip She appears at this location.
turnin Sympathetic Speakers##78741 |goto The Ringing Deeps/0 49.02,17.31
step
label "Fight_The_High_Speakers_Followers_In_The_Earthenworks"
Kill enemies around this area
clicknpc Assembly Worker##213543+
|tip They look like {o}scared dwarves{}.
click Broken Machinery+
|tip They look like {o}pillars shooting fireballs{}.
Fight the High Speaker's Followers in The Earthenworks |q 78742/1 |goto The Ringing Deeps/0 47.63,17.18
'|kill Dogmatic Machine Speaker##212878, High Speaker's Construct##219635, Dogmatic Forgecaster##212884, Swarming Cogwalker##213962, Earthenwork Ironstrider##213951, Dogmatic Soot-Seer##212876, Slag Elemental##212885
step
talk Moira Thaurissan##213763
turnin Battle of the Earthenworks##78742 |goto The Ringing Deeps/0 47.08,20.71
|tip {o}Do not accept{} the follow-up quest {o}Dark Iron from Above{}.
|tip You will be unable to accept the next quest.
step
talk Foreman Uzjax##213672
accept Return to Moira##81798 |goto The Ringing Deeps/0 48.97,17.44
|tip {o}Do not accept{} the follow-up quest {o}Dark Iron from Above{} from Moira.
|tip You will be unable to accept this quest.
step
talk Orsenth##215208
|tip Inside the building.
accept The Nibelgaz Refinery##79148 |goto The Ringing Deeps/0 51.03,14.87
step
talk Ferdagor##215234
accept Rampage in the Refinery##79149 |goto The Ringing Deeps/0 51.36,14.33
stickystart "Slay_Rampaging_Elementals"
step
talk Injured Refinery Worker##215210+
|tip They look like {o}dwarves{}.
Rescue #6# Refinery Workers |q 79148/1 |goto The Ringing Deeps/0 50.85,11.16
step
label "Slay_Rampaging_Elementals"
Kill enemies around this area
Slay #10# Rampaging Elementals |q 79149/1 |goto The Ringing Deeps/0 52.96,11.38
'|kill Rampaging Elemental##215232, Rampaging Elemental##216025
step
talk Ferdagor##215234
turnin Rampage in the Refinery##79149 |goto The Ringing Deeps/0 51.36,14.33
step
talk Orsenth##215208
|tip Inside the building.
turnin The Nibelgaz Refinery##79148 |goto The Ringing Deeps/0 51.03,14.87
accept Muddled Mind in the Mine##79679 |goto The Ringing Deeps/0 51.03,14.87
step
talk Munderut##215209
|tip He walks around this area.
turnin Muddled Mind in the Mine##79679 |goto The Ringing Deeps/0 52.75,8.80
accept Spinning Spore Spines##79193 |goto The Ringing Deeps/0 52.75,8.80
step
kill Underground Spore##215235+
collect Spore Spines##212529+ |n
Collect #150# Spines |q 79193/1 |goto The Ringing Deeps/0 54.49,11.08
step
talk Munderut##215209
|tip Inside the building.
turnin Spinning Spore Spines##79193 |goto The Ringing Deeps/0 51.13,14.72
step
talk Keldaz##217474
|tip Inside the building.
accept To the Source##79194 |goto The Ringing Deeps/0 51.08,14.85
step
Meet Keldaz Outside of the Northeastern Mine |q 79194/1 |goto The Ringing Deeps/0 51.08,14.85
step
talk Keldaz##223000
turnin To the Source##79194 |goto The Ringing Deeps/0 55.35,11.09
accept Raging Rifts##79944 |goto The Ringing Deeps/0 55.35,11.09
stickystart "Accept_The_Glittering_Shard"
stickystart "Defeat_Elemental_Rifts"
step
Enter the Cave |q 79944/2 |goto The Ringing Deeps/0 55.71,12.30
step
kill Urthgrafr Riftcaller##215233
|tip Inside the cave.
Destroy Rift Source |q 79944/3 |goto The Ringing Deeps/0 57.01,16.75
step
label "Accept_The_Glittering_Shard"
kill Urthgrafr Riftcaller##215233 |notinsticky
collect Glittering Shard##212595 |n
|tip Loot this from Urthgrafr Riftcaller.
accept The Glittering Shard##79327 |goto The Ringing Deeps/0 57.01,16.75
step
label "Defeat_Elemental_Rifts"
kill Elemental Rift##217914+
|tip Inside and outside the cave. |notinsticky
Defeat #4# Elemental Rifts |q 79944/1 |goto The Ringing Deeps/0 55.71,12.30
step
Leave the cave |goto The Ringing Deeps/0 55.71,12.30 < 15 |walk |only if subzone("Nibelgaz Mine") and indoors()
talk Keldaz##223000
turnin Raging Rifts##79944 |goto The Ringing Deeps/0 55.35,11.09
step
talk Orsenth##219042
|tip Inside the building.
turnin The Glittering Shard##79327 |goto The Ringing Deeps/0 51.14,14.74
step
talk Moira Thaurissan##213763
turnin Return to Moira##81798 |goto The Ringing Deeps/0 47.08,20.71
accept Dark Iron from Above##78760 |goto The Ringing Deeps/0 47.08,20.71
step
Watch the dialogue
talk Moira Thaurissan##213763
Select _"I'm ready, let's go!"_ |gossip 120506
Speak with Moira |q 78760/1 |goto The Ringing Deeps/0 47.08,20.71
step
Begin Flying to Supervisor Varric |invehicle |goto The Ringing Deeps/0 47.08,20.71 |q 78760
step
Fly to Supervisor Varric |outvehicle |goto The Ringing Deeps/0 49.60,15.39 |q 78760
step
kill Supervisor Varric##223263 |q 78760/2 |goto The Ringing Deeps/0 49.58,14.39
step
click Varric's Damaged Ironstrider
Mount Varric's Damaged Ironstrider |q 78760/3 |goto The Ringing Deeps/0 46.84,14.06
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Defeat the Attacking Forces |q 78760/4 |goto The Ringing Deeps/0 46.84,14.06
'|kill Swarming Cogwalker##213962, Zealous Ironguard##223904, Zealot's Guardbot##223911
step
talk Moira Thaurissan##213796
turnin Dark Iron from Above##78760 |goto The Ringing Deeps/0 46.70,10.26
accept Into the Machine##78761 |goto The Ringing Deeps/0 46.70,10.26
step
Enter the Halls of Awakening |q 78761/1 |goto The Ringing Deeps/0 46.44,8.76
|tip {o}Follow your allies{} into the {o}swirling portal{}.
|tip Inside the building.
step
Begin the Scenario |scenariostart |q 78761
step
_Inside the Halls of Awakening:_
Follow the Trail of the High Speaker into the Hall of Awakening |scenariogoal 1/65229 |goto Hall of Awakening Scenario/0 22.65,49.54 |q 78761
|tip Follow the path with your allies.
step
_Inside the Halls of Awakening:_
click Ironfuse Bomb+
|tip They look like {o}grey round balls{} on the floor.
|tip You will get a {o}time limited buff{} that gives you an ability, {o}so hurry{}.
Destroy #4# Inferno Sprayers |scenariogoal 2/66045 |goto Hall of Awakening Scenario/0 28.75,49.61 |q 78761
|tip They look like {o}turrets shooting fireballs{}.
|tip Use the {o}Ironfuse Bomb{} ability on them.
|tip It appears as a button on the screen.
step
_Inside the Halls of Awakening:_
Journey Deeper into the Hall of Awakening |scenariogoal 3/65469 |goto Hall of Awakening Scenario/0 37.08,49.59 |q 78761
|tip Follow the path with your allies.
step
_Inside the Halls of Awakening:_
click Earthen Console
|tip Follow the path with your allies.
Help Dagran Activate the Runelock Sequence |scenariogoal 4/65423 |goto Hall of Awakening Scenario/0 42.73,45.18 |q 78761
step
_Inside the Halls of Awakening:_
Kill the enemies that attack
Protect Dagran While He Solves the Runelock Combination |scenariostage 5 |goto Hall of Awakening Scenario/0 43.29,43.26 |q 78761
'|kill Deranged Skardyn##217672, Skardyn Remnants##216487, Skardyn Metamorphosis##219148, Deviant Skardyn##217610, Enraged Skardyn##213743, Void Crystal Monstrosity##217200, Deranged Skardyn##217684
step
_Inside the Halls of Awakening:_
Enter the Annihilation Interface |scenariogoal 6/65482 |goto Hall of Awakening Scenario/0 55.43,49.58 |q 78761
|tip Follow the path with your allies.
stickystart "Defeat_The_Iron_Runed_Protector"
step
_Inside the Halls of Awakening:_
kill Earthen-Ward Sentinel##216221
Defeat the Earthen-Ward Sentinel |scenariogoal 6/65444 |goto Hall of Awakening Scenario/0 59.68,49.51 |q 78761
step
label "Defeat_The_Iron_Runed_Protector"
_Inside the Halls of Awakening:_ |notinsticky
kill Iron-Runed Protector##214576
Defeat the Iron-Runed Protector |scenariogoal 6/65446 |goto Hall of Awakening Scenario/0 59.68,49.51 |q 78761
step
_Inside the Halls of Awakening:_
Enter the Final Chamber |scenariogoal 7/65497 |goto Hall of Awakening Scenario/0 77.34,49.46 |q 78761
|tip Follow the path with your allies.
step
_Inside the Halls of Awakening:_
kill Master Machinist Dunstan##217353
Defeat Master Machinist Dunstan |scenariogoal 8/65464 |goto Hall of Awakening Scenario/0 85.44,49.38 |q 78761
'|kill Master Machinist Dunstan##217435
step
_Inside the Halls of Awakening:_
Watch the dialogue
Confront High Speaker Eirich at the Awakening Machine |scenarioend |goto Hall of Awakening Scenario/0 87.40,49.44 |q 78761
Confront the High Speaker in the Halls of Awakening |q 78761/2 |goto Hall of Awakening Scenario/0 87.40,49.44
step
talk Moira Thaurissan##212742
|tip Inside the building.
turnin Into the Machine##78761 |goto The Ringing Deeps/0 47.17,34.12
accept A Hint of Fear##79256 |goto The Ringing Deeps/0 47.17,34.12
accept The Machine Speakers##79354 |goto The Ringing Deeps/0 47.17,34.12
step
Watch the dialogue
|tip Inside the building.
talk Moira Thaurissan##212742
turnin The Machine Speakers##79354 |goto The Ringing Deeps/0 47.17,34.12
accept Orientation: Gundargaz##81689 |goto The Ringing Deeps/0 47.17,34.12
|tip If you cannot accept this quest, log out and log back in.
step
talk Waxmonger Squick##221390
Speak to Waxmonger Squick |q 81689/1 |goto The Ringing Deeps/0 47.30,32.93
step
Watch the dialogue
|tip Inside the building.
talk Moira Thaurissan##212742
turnin Orientation: Gundargaz##81689 |goto The Ringing Deeps/0 47.17,34.12
step
talk Danagh##224602
|tip Inside the building.
accept A Functional Favor##82773 |goto The Ringing Deeps/0 58.95,64.18
step
talk Noli Marlen##221043
accept Foreign Fog##81556 |goto The Ringing Deeps/0 58.45,62.36
step
Reach the First Fog Site |q 81556/1 |goto The Ringing Deeps/0 58.79,60.75
step
extraaction Place Fog Collector##443370
Kill the enemies that attack in waves
|tip Use the {o}Place Fog Collector{} ability.
|tip It appears as a button on the screen.
Fill the First Fog Collector |q 81556/2 |goto The Ringing Deeps/0 58.79,60.75
'|kill Frenzied Glowmite##221304
step
Reach the Second Fog Site |q 81556/3 |goto The Ringing Deeps/0 58.35,47.47
step
extraaction Place Fog Collector##443370
Kill the enemies that attack in waves
|tip Use the {o}Place Fog Collector{} ability.
|tip It appears as a button on the screen.
Collect the Second Fog Sample |q 81556/4 |goto The Ringing Deeps/0 58.35,47.47
'|kill Frenzied Glowmite##221304
step
Fly through the small gap |goto The Ringing Deeps/0 61.57,58.16 < 30
Reach the Third Fog Site |q 81556/5 |goto The Ringing Deeps/0 64.16,58.10
step
extraaction Place Fog Collector##443370
Kill the enemies that attack in waves
|tip Use the {o}Place Fog Collector{} ability.
|tip It appears as a button on the screen.
Collect the Third Fog Sample |q 81556/6 |goto The Ringing Deeps/0 64.16,58.10
'|kill Deepflayer Hunter##221342
step
talk Noli Marlen##221043
turnin Foreign Fog##81556 |goto The Ringing Deeps/0 58.45,62.36
accept Fog Tags##81557 |goto The Ringing Deeps/0 58.45,62.36
accept Unnatural Predators##81558 |goto The Ringing Deeps/0 58.45,62.36
stickystart "Kill_Deepflayer_Hunters"
step
use the Fog Beast Tracker##219469
|tip Use it on {o}Fog Withers{}.
Attach Trackers to #6# Fog Beasts |q 81557/1 |goto The Ringing Deeps/0 60.83,60.52
'|clicknpc Fog Wither##213952
step
label "Kill_Deepflayer_Hunters"
kill 8 Deepflayer Hunter##221198 |q 81558/1 |goto The Ringing Deeps/0 59.01,57.90
step
talk Noli Marlen##221043
turnin Fog Tags##81557 |goto The Ringing Deeps/0 58.45,62.37
turnin Unnatural Predators##81558 |goto The Ringing Deeps/0 58.45,62.37
accept Fog Follower##81559 |goto The Ringing Deeps/0 58.45,62.37
step
talk Moira Thaurissan##215781
turnin A Hint of Fear##79256 |goto The Ringing Deeps/0 55.03,63.34
accept Put On a Good Face##79259 |goto The Ringing Deeps/0 55.03,63.34
step
talk Berrund the Gleaming##215788
accept Mineral Water Woes##79258 |goto The Ringing Deeps/0 55.02,63.26
step
Find and Follow the Fog Trail |q 81559/1 |goto The Ringing Deeps/0 45.49,63.09
step
Follow Noli |q 81559/2 |goto The Ringing Deeps/0 41.80,61.89
|tip At the {o}top of the waterfall{}.
|tip Follow {o}Noli{} as she flies.
'|clicknpc Noli Marlen##221610
step
clicknpc Noli's Camera##221666
Take a Photo |q 81559/3 |goto The Ringing Deeps/0 41.85,61.92
step
Watch the dialogue
Return to Camp Murroch |complete subzone("Ancient Falls") |q 81559
stickystart "Collect_Lashroom_Dust"
step
clicknpc Collection Bowl##217401
Collect Water from the First Pool |q 79258/1 |goto The Ringing Deeps/0 55.95,69.13
step
clicknpc Collection Bowl##217473
Collect Water from the Second Pool |q 79258/2 |goto The Ringing Deeps/0 54.40,72.95
step
clicknpc Collection Bowl##217475
Collect Water from the Third Pool |q 79258/3 |goto The Ringing Deeps/0 51.59,68.81
step
label "Collect_Lashroom_Dust"
Kill Lashroom enemies around this area
collect 12 Lashroom Dust##212490 |q 79259/1 |goto The Ringing Deeps/0 55.76,68.56
'|kill Gorged Lashroom##217314, Vigorous Lashroom##215793, Vigorous Lashroom##215792
step
talk Moira Thaurissan##215821
turnin Mineral Water Woes##79258 |goto The Ringing Deeps/0 53.97,66.66
step
talk Berrund the Gleaming##215822
turnin Put On a Good Face##79259 |goto The Ringing Deeps/0 54.00,66.62
accept Epicenter##79260 |goto The Ringing Deeps/0 54.00,66.62
step
Approach the Verdant Hulk |q 79260/1 |goto The Ringing Deeps/0 53.26,65.95
|tip You will be attacked.
'|kill Verdant Hulk##215813
step
kill Verdant Hulk##215813 | q 79260/2 |goto The Ringing Deeps/0 53.26,65.95
step
talk Moira Thaurissan##215821
turnin Epicenter##79260 |goto The Ringing Deeps/0 54.36,65.36
accept Boiling Mad##79261 |goto The Ringing Deeps/0 54.36,65.36
step
click Seismic Contusion
Track Berrund |q 79261/1 |goto The Ringing Deeps/0 55.00,59.80 |count 1
step
click Seismic Contusion
Track Berrund |q 79261/1 |goto The Ringing Deeps/0 53.88,58.46 |count 2
step
click Seismic Contusion
Track Berrund |q 79261/1 |goto The Ringing Deeps/0 54.42,54.95 |count 3
step
talk Moira Thaurissan##215824
turnin Boiling Mad##79261 |goto The Ringing Deeps/0 56.09,50.03
accept Fault Lines##79263 |goto The Ringing Deeps/0 56.09,50.03
accept Clean Up House##79262 |goto The Ringing Deeps/0 56.09,50.03
step
Kill enemies around this area
Slay #10# Agitated Creatures |q 79262/1 |goto The Ringing Deeps/0 57.34,47.66
'|kill Agitated Borer Spawn##215831, Agitated Scorpid##215830
step
Find Cave Entrance |q 79263/1 |goto The Ringing Deeps/0 57.16,47.02
step
talk Moira Thaurissan##215837
|tip Inside the cave.
turnin Clean Up House##79262 |goto The Ringing Deeps/0 57.17,45.63
step
talk Berrund the Gleaming##215836
|tip Inside the cave.
turnin Fault Lines##79263 |goto The Ringing Deeps/0 57.15,45.49
accept These Strong Hands##79264 |goto The Ringing Deeps/0 57.15,45.49
step
Watch the dialogue
|tip Inside the cave.
Witness Moira Thaurissan |q 79264/1 |goto The Ringing Deeps/0 57.15,45.49
step
talk Moira Thaurissan##217598
|tip Inside the cave.
turnin These Strong Hands##79264 |goto The Ringing Deeps/0 57.17,45.64
accept Fearbreaker##79265 |goto The Ringing Deeps/0 57.17,45.64
stickystart "Slay_Skardyn_And_Rescue_Earthen"
step
click Fearbreaker
Evacuate the Holdout Group |q 79265/3 |goto The Ringing Deeps/0 60.43,50.63 |count 1
step
click Fearbreaker
Evacuate the Holdout Group |q 79265/3 |goto The Ringing Deeps/0 60.95,54.80 |count 2
step
click Fearbreaker
Evacuate the Holdout Group |q 79265/3 |goto The Ringing Deeps/0 59.03,54.48 |count 3
step
click Fearbreaker
Evacuate the Holdout Group |q 79265/3 |goto The Ringing Deeps/0 57.82,53.27 |count 4
step
label "Slay_Skardyn_And_Rescue_Earthen"
extraaction Fearbreaker##435238
Kill enemies around this area
talk Injured Earthen##216084+
|tip They look like {o}friendly dwarves{}.
Slay Skardyn and Rescue Earthen |q 79265/2 |goto The Ringing Deeps/0 59.17,52.08
'|kill Skardyn Devastator##215844, Skardyn Reaver##215842, Skardyn Degenerator##215843, Voidstone Behemoth##221307
step
talk Moira Thaurissan##216085
turnin Fearbreaker##79265 |goto The Ringing Deeps/0 61.76,46.62
accept The Bronzebeard Legacy##79266 |goto The Ringing Deeps/0 61.76,46.62
step
Enter the building |goto The Ringing Deeps/0 58.85,64.23 < 15 |walk
talk Noli Marlen##221043
|tip Inside the building.
turnin Fog Follower##81559 |goto The Ringing Deeps/0 59.30,63.96
step
Kill enemies around this area
collect 6 Galvanic Gland##224271 |q 82773/1 |goto The Ringing Deeps/0 61.03,77.08
'|kill Juvenile Lurker##224753, Galvanized Lurker##224779
step
talk Prospera Cogwail##225608
accept Tired of Tripping##83155 |goto The Ringing Deeps/0 63.77,79.20
step
talk Griz Finglebur##225067
turnin To Opportunity Point##82956 |goto The Ringing Deeps/0 63.34,78.87
step
talk Clixi Fastfare##224884
fpath Opportunity Point |goto The Ringing Deeps/0 64.71,78.08
step
talk Garv Gearwhistle##223184
accept Papers? Please!##82226 |goto The Ringing Deeps/0 64.95,78.59
step
Deal with #6# Troublemakers |q 82226/1 |goto The Ringing Deeps/0 64.89,78.48
|tip Use the abilities on your action bar on {o}Arriving Prospectors{}.
|tip They look like {o}goblins{} walking on the path nearby.
|tip Use the {o}Call Over{} ability on them, then immediately use the {o}Call Airstrike{} on them.
|tip Do this quickly and you will hit them before they run away every time.
'|clicknpc Arriving Prospector##223180
step
Exit the Overseer's Desk |outvehicle |script VehicleExit()
step
talk Garv Gearwhistle##223184
turnin Papers? Please!##82226 |goto The Ringing Deeps/0 64.95,78.59
step
Kill enemies around this area
|tip After you defeat {o}Invasive Hardheads{}, you can click them to {o}mount them{} and gain an ability and increase haste.
clicknpc Panicked Shredder Pilot##226108+
|tip They look like {o}scared goblins{}.
Deal with #15# Moles |q 83155/1 |goto The Ringing Deeps/0 61.19,86.17
'|kill Invasive Hardhead##219163, Feral Hardhead##225938, Invasive Thickhead##219257
step
talk Prospera Cogwail##225608
turnin Tired of Tripping##83155 |goto The Ringing Deeps/0 63.77,79.20
accept A Little off the Top##83159 |goto The Ringing Deeps/0 63.77,79.20
step
kill Alhainr##225610
|tip It walks around this area.
collect Alhainr's Skull##224779 |q 83159/1 |goto The Ringing Deeps/0 63.15,92.47
step
talk Prospera Cogwail##226336
turnin A Little off the Top##83159 |goto The Ringing Deeps/0 63.78,79.19
accept Put it Back, Put it Back!##83162 |goto The Ringing Deeps/0 63.78,79.19
step
clicknpc Ectoplasmic Excretion##225714+
|tip They look like {o}green oozes{}.
Stomp #6# Slimes |q 83162/1 |goto The Ringing Deeps/0 64.09,78.98
step
click Alhainr's Skull
Get the Skull Out of Town |q 83162/3 |goto The Ringing Deeps/0 60.99,94.41
step
talk Prospera Cogwail##225608
turnin Put it Back, Put it Back!##83162 |goto The Ringing Deeps/0 63.77,79.20
step
talk Danagh##224602
|tip Inside the building.
turnin A Functional Favor##82773 |goto The Ringing Deeps/0 58.95,64.18
accept Antifogmatic##82774 |goto The Ringing Deeps/0 58.95,64.18
step
extraaction Antifogmatic##452657
Disperse the Thick Fog |q 82774/1 |goto The Ringing Deeps/0 58.74,64.39 |count 1
|tip Use the {o}Antifogmatic{} ability.
|tip It appears as a button on the screen.
|tip You may be attacked.
step
extraaction Antifogmatic##452657
Disperse the Thick Fog |q 82774/1 |goto The Ringing Deeps/0 58.54,64.93 |count 2
|tip Use the {o}Antifogmatic{} ability.
|tip It appears as a button on the screen.
|tip You may be attacked.
step
extraaction Antifogmatic##452657
Disperse the Thick Fog |q 82774/1 |goto The Ringing Deeps/0 58.36,65.48 |count 3
|tip Use the {o}Antifogmatic{} ability.
|tip It appears as a button on the screen.
|tip You may be attacked.
step
extraaction Antifogmatic##452657
Disperse the Thick Fog |q 82774/1 |goto The Ringing Deeps/0 58.03,64.52 |count 4
|tip Use the {o}Antifogmatic{} ability.
|tip It appears as a button on the screen.
|tip You may be attacked.
step
extraaction Antifogmatic##452657
Disperse the Thick Fog |q 82774/1 |goto The Ringing Deeps/0 58.12,63.88 |count 5
|tip Use the {o}Antifogmatic{} ability.
|tip It appears as a button on the screen.
|tip You may be attacked.
step
extraaction Antifogmatic##452657
Disperse the Thick Fog |q 82774/1 |goto The Ringing Deeps/0 58.49,63.74 |count 6
|tip Use the {o}Antifogmatic{} ability.
|tip It appears as a button on the screen.
|tip You may be attacked.
step
talk Danagh##224602
|tip Inside the building.
turnin Antifogmatic##82774 |goto The Ringing Deeps/0 58.95,64.18
step
Watch the dialogue
|tip Inside the building.
talk Danagh##224602
accept Ghosts in the Machine##82785 |goto The Ringing Deeps/0 58.95,64.18
step
Investigate the Substation |q 82785/1 |goto The Ringing Deeps/0 58.53,61.57
|tip At the entrance of the small cave.
step
clicknpc Arbauch's Ward##224010
|tip Inside the small cave.
Remove the Ward |q 82785/2 |goto The Ringing Deeps/0 58.48,61.85
step
talk Danagh##224602
|tip Inside the small cave.
turnin Ghosts in the Machine##82785 |goto The Ringing Deeps/0 58.31,62.02
accept Undoing the Damage##82990 |goto The Ringing Deeps/0 58.31,62.02
step
Watch the dialogue
|tip Inside the small cave.
talk Danagh##224602
Select _"I'm ready."_ |gossip 122684
Kill the enemies that attack in waves
Defend Danagh |q 82990/1 |goto The Ringing Deeps/0 58.36,62.65
'|kill Memory Leak##224593, Fouled Coolant##225395
step
talk Danagh##224602
|tip Inside the building.
turnin Undoing the Damage##82990 |goto The Ringing Deeps/0 59.01,64.11
accept Duty of Care##82786 |goto The Ringing Deeps/0 59.01,64.11
step
talk Clive DelGizmo##216311
|tip Inside the building.
accept Stone Tracing##82969 |goto The Ringing Deeps/0 58.92,64.11
stickystart "Exterminate_Pests"
step
extraaction Triangulation Matrix##452940
Triangulate the Golem Location |q 82969/1 |goto The Ringing Deeps/0 53.67,60.90 |count 1
|tip Use the {o}Triangulation Matrix{} ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
step
extraaction Triangulation Matrix##452940
Triangulate the Golem Location |q 82969/1 |goto The Ringing Deeps/0 52.67,53.36 |count 2
|tip Use the {o}Triangulation Matrix{} ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
step
extraaction Triangulation Matrix##452940
Triangulate the Golem Location |q 82969/1 |goto The Ringing Deeps/0 51.07,47.20 |count 3
|tip Use the {o}Triangulation Matrix{} ability.
|tip On top of the rock overhang.
|tip It appears as a button on the screen.
|tip You will be attacked.
step
_Next to you:_
talk Danagh's Cogwalker##224618
turnin Stone Tracing##82969
step
Enter the cave |goto The Ringing Deeps/0 50.12,47.04 < 15 |walk
click Leaking Pipe
|tip Inside the small cave.
Patch the Leaking Pipe |q 82786/2 |goto The Ringing Deeps/0 49.64,47.51 |count 1
step
click Backup Substation Terminal
|tip Inside the small cave.
Reroute the Power |q 82786/1 |goto The Ringing Deeps/0 49.68,47.96
step
click Leaking Pipe
|tip Inside the small cave.
Patch the Leaking Pipe |q 82786/2 |goto The Ringing Deeps/0 49.81,47.96 |count 2
step
click Leaking Pipe
|tip Inside the small cave.
Patch the Leaking Pipe |q 82786/2 |goto The Ringing Deeps/0 50.03,47.77 |count 3
step
label "Exterminate_Pests"
Kill enemies around this area
Exterminate #12# Pests |q 82786/3 |goto The Ringing Deeps/0 52.23,52.54
'|kill Budding Lashroom##224949, Lashroom Ambusher##224607, Rummaging Mudnose##225482, Roiling Steam##226621
step
_Next to you:_
talk Danagh's Cogwalker##224618
turnin Duty of Care##82786
accept Decommissioning Darkness##82814
step
Enter the cave |goto The Ringing Deeps/0 49.62,63.57 < 15 |walk
kill Corrupted Golem##224791 |q 82814/1 |goto The Ringing Deeps/0 48.69,61.95
|tip It walks around this area.
|tip Inside the cave.
collect Arbauch's Memory Gem##224555 |q 82814/2 |goto The Ringing Deeps/0 48.69,61.95
step
talk Danagh##224602
|tip Inside the building.
turnin Decommissioning Darkness##82814 |goto The Ringing Deeps/0 59.01,64.11
step
talk Moira Thaurissan##217827
|tip Inside the building.
turnin The Bronzebeard Legacy##79266 |goto The Ringing Deeps/0 47.18,34.12
step
|next "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"	|only if default
|next "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Hallowfall (Full Zone)"		|only if not completedq(79573) and level < 80
|next "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\The War Within Campaign"				|only if level >= 80 and completedallq(78546,81689,78630,84022)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Hallowfall (Full Zone)",{
author="support@zygorguides.com",
},[[
step
_NOTE:_
{o}This guide has several prerequisites{}
|tip In order to fully complete this guide, you must reach level 80, complete the primary campaign in each zone, and unlock adventure mode.
|tip Quests that you cannot accept will be hidden until you meet the above requirements and reload this guide.
{o}It is Very Important to Avoid Accepting Quests that Aren't in this Guide{}
|tip Certain quests, when completed out of order, can permanently cause breadcrumb quests to become incomplete.
|tip This could cause issues with your quest flow.
|tip Disable automatically accepting all quests and avoid accepting quests from NPCs when not directed to.
Click Here to Continue |confirm
step
talk Anduin Wrynn##213983
accept The Hallowed Path##78658 |goto The Ringing Deeps/0 47.08,32.22
step
Find the Gate to Hallowfall |q 78658/1 |goto The Ringing Deeps/0 40.68,24.11
step
talk Anduin Wrynn##213120
Select _"I'm ready."_ |gossip 120906
Speak with Anduin in Hallowfall |q 78658/2 |goto Hallowfall/0 77.17,43.00
step
talk Captain Trueflame##216061
accept Status Report##79309 |goto Hallowfall/0 70.50,44.91
step
talk Barahl Lynflayme##217609
|tip Inside the building.
accept Care Package##79304 |goto Hallowfall/0 69.25,43.83
step
Meet the Arathi in Dunelle's Kindness |q 78658/3 |goto Hallowfall/0 68.40,45.11
step
Watch the dialogue
talk Faerin##213116
turnin The Hallowed Path##78658 |goto Hallowfall/0 68.40,45.11	|only if (haveq(78658) or completedq(78658)) and not haveq(83551)
turnin Hallowfall##83551 |goto Hallowfall/0 68.40,45.11		|only if haveq(83551) or completedq(83551)
accept Where the Light Touches##78659 |goto Hallowfall/0 68.40,45.11
step
talk Derill Fayn##225879
accept Suspicious Minds##83247 |goto Hallowfall/0 68.06,44.22
step
talk Lerrenai Fayn##225857
accept For Morale##83283 |goto Hallowfall/0 68.00,44.21
step
talk Auro Flitter##217639
fpath Dunelle's Kindness |goto Hallowfall/0 67.48,44.62
stickystart "Collect_Salamanther_Hearts"
step
click Arathi Wine+
|tip They look like {o}wooden barrels{}.
collect 6 Imperial Brut##225340 |q 83283/1 |goto Hallowfall/0 65.39,42.26
step
label "Collect_Salamanther_Hearts"
kill Thieving Salamanther##225919
collect 9 Salamanther Heart##225179 |q 83247/1 |goto Hallowfall/0 65.11,41.48
step
talk Lerrenai Fayn##225857
turnin For Morale##83283 |goto Hallowfall/0 68.00,44.21
step
talk Derill Fayn##225879
turnin Suspicious Minds##83247 |goto Hallowfall/0 68.06,44.22
step
talk Scout Wayshelm##216063
turnin Status Report##79309 |goto Hallowfall/0 75.37,49.64
accept Seek the Lost##79310 |goto Hallowfall/0 75.37,49.64
step
_NOTE:_
During the Next Steps
|tip {o}Avoid{} standing in the {o}pools of water{} too long.
|tip If you stand in the {o}water too long{}, you will get a {o}debuff that damages you{}.
|tip {o}Jumping while in the water{} may help to {o}prevent{} getting the {o}debuff{}.
Click Here to Continue |confirm |q 79310
step
Look for a Member of Wayshelm's Scouting Party |q 79310/1 |goto Hallowfall/0 74.46,51.26
step
clicknpc Scout Maevest##216064
|tip You may be attacked.
Inspect the Fallen Scout |q 79310/2 |goto Hallowfall/0 74.46,51.26
step
click Maevest's Compass##422560
Recover a Memento for Wayshelm |q 79310/3 |goto Hallowfall/0 74.45,51.24
step
talk Scout Wayshelm##216063
turnin Seek the Lost##79310 |goto Hallowfall/0 75.37,49.64
accept Stem the Flow##79311 |goto Hallowfall/0 75.37,49.64
accept Mow the Masses##79312 |goto Hallowfall/0 75.37,49.64
stickystart "Slay_Shadowmire_Monsters"
step
click Foulnectar Frond+
|tip They look like {o}plants in the pools of water{}.
Destroy #8# Foulnectar Fronds |q 79312/1 |goto Hallowfall/0 74.95,52.40
step
label "Slay_Shadowmire_Monsters"
Kill enemies around this area
Slay #12# Shadowmire Monsters |q 79311/1 |goto Hallowfall/0 74.46,51.87
'|kill Bloatrot Stinger##216065, Fungal Infestor##216077
step
talk Scout Wayshelm##216063
turnin Stem the Flow##79311 |goto Hallowfall/0 75.53,51.85
turnin Mow the Masses##79312 |goto Hallowfall/0 75.53,51.85
accept What Grows in the Dark##79313 |goto Hallowfall/0 75.53,51.85
step
Enter the cave |goto Hallowfall/0 76.11,53.73 < 30 |walk
kill Fallowbarb##216078 |q 79313/1 |goto Hallowfall/0 76.28,55.20
|tip Inside the cave.
step
talk Captain Trueflame##216061
turnin What Grows in the Dark##79313 |goto Hallowfall/0 70.50,44.90
step
click Relief Cart
|tip This step is {o}optional{}.
|tip You can {o}skip this step{} if you {o}don't want to listen{} to the story.
Ride with Faerin to the Aegis Wall |q 78659/1 |goto Hallowfall/0 68.22,45.17
step
Arrive at the Aegis Wall |q 78659/2 |goto Hallowfall/0 71.43,57.50 |notravel
step
talk Great Kyron##224310
turnin Where the Light Touches##78659 |goto Hallowfall/0 71.62,57.59
accept Tunnel Trouble##78665 |goto Hallowfall/0 71.62,57.59
step
talk Faerin##213116
accept Igniting Hope##79999 |goto Hallowfall/0 71.57,57.59
step
talk Vellas Tearen##218298
fpath The Aegis Wall |goto Hallowfall/0 71.37,56.50
stickystart "Collect_Shattered_Remnants_From_Nerubians"
step
click Nerubian Burrow+
|tip They look like large {o}dusty piles of cracked dirt{}.
|tip You will be attacked.
Destroy #6# Nerubian Burrows |q 78665/1 |goto Hallowfall/0 69.96,58.78
step
label "Collect_Shattered_Remnants_From_Nerubians"
Kill enemies around this area
|tip Some of them fly in the air.
Collect #5# Shattered Remnants from Nerubians |q 79999/1 |goto Hallowfall/0 71.34,61.09
'|kill Dreadstrike Subjugator##213129, Dreadstrike Flitterer##213320, Dreadstrike Priest##213189, Dreadstrike Ambusher##217481
step
click Aegis Keyflame
|tip Up on the wall.
|tip Click it {o}repeatedly{}.
Empower the Aegis Keyflame by Shattered Remnants #5# Times |q 79999/2 |goto Hallowfall/0 70.04,61.06
step
talk Faerin##213116
|tip Up on the wall.
turnin Igniting Hope##79999 |goto Hallowfall/0 70.12,61.00
step
talk Great Kyron##224310
|tip Up on the wall.
turnin Tunnel Trouble##78665 |goto Hallowfall/0 70.06,61.31
accept The Only Good Spider##78666 |goto Hallowfall/0 70.06,61.31
step
talk Faerin##213116
|tip Up on the wall.
accept Rekindled Memories##78667 |goto Hallowfall/0 70.12,60.99
stickystart "Slay_Nerubian_Attackers"
step
click Fallen Defender+
|tip They look like {o}armored humans{} laying on the ground.
Recover #6# Tinderboxes |q 78667/1 |goto Hallowfall/0 71.61,61.20
step
label "Slay_Nerubian_Attackers"
Kill enemies around this area
|tip Some of them fly in the air.
Slay #12# Nerubian Attackers |q 78666/1 |goto Hallowfall/0 71.17,60.94
'|kill Dreadstrike Subjugator##213129, Dreadstrike Flitterer##213320, Dreadstrike Priest##213189
step
talk Great Kyron##224310
|tip Up on the wall.
turnin The Only Good Spider##78666 |goto Hallowfall/0 70.06,61.31
step
talk Faerin##213116
|tip Up on the wall.
turnin Rekindled Memories##78667 |goto Hallowfall/0 70.12,61.00
accept Rally on the Dawnbreaker##78668 |goto Hallowfall/0 70.12,61.00
step
talk Maera Ashyld##220718
accept Runway Scare-a-way##80673 |goto Hallowfall/0 60.49,60.21
accept Torching Lights##80677 |goto Hallowfall/0 60.49,60.21
|only if level >= 80
stickystart "Kill_Flickering_Glowmoths"
step
use the Lamplighter Firearm##219943
|tip Use it on {o}Moth Eggs{}.
|tip They look like {o}clusters of brown eggs{}.
|tip They are {o}up on the huge tall plants{}.
Torch #15# Moth Egg Bunches |q 80677/1 |goto Hallowfall/0 61.14,62.53
|only if level >= 80
step
label "Kill_Flickering_Glowmoths"
kill 25 Flickering Glowmoth##220691 |q 80673/1 |goto Hallowfall/0 61.14,62.53
|tip They are flying up {o}above the huge tall plants{}.
|tip {o}Fly through them (skyriding){} to kill them.
|only if level >= 80
step
talk Maera Ashyld##220718
turnin Runway Scare-a-way##80673 |goto Hallowfall/0 60.49,60.21
turnin Torching Lights##80677 |goto Hallowfall/0 60.49,60.21
accept Time Lost##80678 |goto Hallowfall/0 60.49,60.21
|only if level >= 80
step
Kill enemies around this area
click Sludge Pile+
|tip They look like {o}small mounds of junk{}.
Collect #6# Mementos |q 80678/1 |goto Hallowfall/0 60.39,61.79
'|kill Sludgeborn Shambler##220734, Mirehat Fungalmancer##221362, Mirehat Sporedancer##221363, Cultivated Mireshroom##221366
|only if level >= 80
step
talk Maera Ashyld##220718
turnin Time Lost##80678 |goto Hallowfall/0 60.49,60.21
|only if level >= 80
step
Leave the cave |goto Hallowfall/0 66.42,61.79 < 20 |walk |only if subzone("Sanguine Grasps") and indoors()
talk Faerin##224945
|tip On the deck of the airship.
turnin Rally on the Dawnbreaker##78668 |goto Hallowfall/0 57.50,64.43
accept Siege Weapon Sabotage##78670 |goto Hallowfall/0 57.50,64.43
step
talk Great Kyron##224946
|tip On the deck of the airship.
accept For Their Eyes Only##78669 |goto Hallowfall/0 57.50,64.39
stickystart "Collect_Sureki_Shadecasters"
step
click Blackpowder Barrel+
|tip They look like {o}brown wooden barrels{}.
collect 4 Keg of Black Powder##213630 |q 78670/1 |goto Hallowfall/0 57.01,65.95
step
click Blackpowder Barrel
Destroy the Siege Weapon |q 78670/2 |goto Hallowfall/0 59.40,65.43 |count 1
step
click Blackpowder Barrel
Destroy the Siege Weapon |q 78670/2 |goto Hallowfall/0 59.62,66.18 |count 2
step
click Blackpowder Barrel
Destroy the Siege Weapon |q 78670/2 |goto Hallowfall/0 59.64,66.70 |count 3
step
click Blackpowder Barrel
Destroy the Siege Weapon |q 78670/2 |goto Hallowfall/0 59.69,67.40 |count 4
step
label "Collect_Sureki_Shadecasters"
Kill enemies around this area
|tip Only enemies that look like {o}spiders{} will drop the quest item.
collect 3 Sureki Shadecaster##216658 |q 78669/1 |goto Hallowfall/0 57.01,65.95
'|kill Direweb Marauder##221302, Direweb Lasher##221303, Direweb Ritualist##221300
step
talk Anduin Wrynn##213120
|tip On the deck of the airship.
turnin For Their Eyes Only##78669 |goto Hallowfall/0 57.54,64.33
turnin Siege Weapon Sabotage##78670 |goto Hallowfall/0 57.54,64.33
accept Zero out Xerosh##82836 |goto Hallowfall/0 57.54,64.33
step
kill Siegelord Xerosh##224311 |q 82836/1 |goto Hallowfall/0 57.71,68.14
step
talk Anduin Wrynn##213120
turnin Zero out Xerosh##82836 |goto Hallowfall/0 56.90,68.27
accept The Light of the Dawntower##78671 |goto Hallowfall/0 56.90,68.27
step
talk Anduin Wrynn##217826
Select _"I'm ready."_ |gossip 120738
Witness the Lighting of the Dawntower |q 78671/1 |goto Hallowfall/0 54.10,64.65
step
talk Faerin##213116
turnin The Light of the Dawntower##78671 |goto Hallowfall/0 54.11,64.70
accept A Lamplighter's Duty##78672 |goto Hallowfall/0 54.11,64.70
step
talk Gear Flamepierce##218300
fpath Lightspark |goto Hallowfall/0 52.86,61.33
step
talk Sophietta Lynflayme##216001
turnin Care Package##79304 |goto Hallowfall/0 52.71,60.29
accept The Notebook##79300 |goto Hallowfall/0 52.71,60.29
step
talk Flight Observer Viktorina##216313
Select _"Have you seen Sophietta's notebook?"_ |gossip 122775
Ask Flight Observer Viktorina About Sophietta's Notebook |q 79300/1 |goto Hallowfall/0 52.11,59.75
step
talk Caretaker Ryston##216316
|tip Inside the building.
Select _"Seen Edwyn? Or Sophietta's notebook?"_ |gossip 122777
Ask Caretaker Ryston About Edwyn |q 79300/2 |goto Hallowfall/0 52.27,60.83
step
talk Headmaster Fynch##216011
|tip Upstairs inside the building.
Select _"Have you seen Edwyn?"_ |gossip 122778
Ask Headmaster Fynch About Edwyn |q 79300/3 |goto Hallowfall/0 52.39,60.73
step
talk Engineering Instructor Morgaen##216314
|tip Outside the building.
Select _"Did Edwyn come through here?"_ |gossip 122830
Ask Engineering Instructor Morgaen About Edwyn |q 79300/4 |goto Hallowfall/0 53.66,59.47
step
talk Sophietta Lynflayme##225925
turnin The Notebook##79300 |goto Hallowfall/0 53.40,59.45
accept Height Club##79301 |goto Hallowfall/0 53.40,59.45
step
talk Edwyn Wyndsmithe##216014
Select _"Sophietta needs her notebook."_ |gossip 122835
kill Edwyn Wyndsmithe##216014
|tip He will eventually escape.
Confront Edwyn About the Notebook |q 79301/1 |goto Hallowfall/0 53.08,59.05
step
talk Sophietta Lynflayme##225925
turnin Height Club##79301 |goto Hallowfall/0 53.40,59.45
accept Gone with the Wind##79302 |goto Hallowfall/0 53.40,59.45
step
kill Learned Mongrel##225445+
click Lost Page+
|tip They look like {o}pieces of paper{}.
collect 10 Stained and Tattered Page##225180 |q 79302/1 |goto Hallowfall/0 54.62,56.12
step
talk Sophietta Lynflayme##225926
turnin Gone with the Wind##79302 |goto Hallowfall/0 53.45,60.58
accept A Principled Principal##79303 |goto Hallowfall/0 53.45,60.58
step
Meet Fynch in the Classroom |q 79303/1 |goto Hallowfall/0 52.39,60.73
|tip Upstairs inside the building.
step
Watch the dialogue
|tip Upstairs inside the building.
talk Sophietta Lynflayme##225927
Select _"We have to keep trying. We'll get through to him!"_ |gossip 122848
Speak to Sophietta |q 79303/2 |goto Hallowfall/0 52.40,60.82
step
talk Headmaster Fynch##226082
|tip Inside the building.
Select _"It would be fair to accept Sophietta's report."_ |gossip 122873
Speak with Headmaster Fynch |q 79303/3 |goto Hallowfall/0 52.73,59.26
step
talk Headmaster Fynch##226074
|tip Inside the building.
turnin A Principled Principal##79303 |goto Hallowfall/0 52.75,59.28
step
talk Orren Masyn##223920
accept A Helping Farmhand##82477 |goto Hallowfall/0 49.12,61.95
stickystart "Collect_Slightly_Chewed_Harvest_Bounty"
step
talk Wenren Althal##219135
|tip Inside the building.
accept Arcane Trickles##80176 |goto Hallowfall/0 48.80,64.51
step
label "Collect_Slightly_Chewed_Harvest_Bounty"
kill Gluttonous Jawcrawler##223931+
collect 8 Slightly Chewed Harvest Bounty##224051 |q 82477/1 |goto Hallowfall/0 47.77,63.06
step
talk Orren Masyn##224378
turnin A Helping Farmhand##82477 |goto Hallowfall/0 47.29,64.82
accept Regularly Scheduled Maintenance##82478 |goto Hallowfall/0 47.29,64.82
stickystart "Collect_Amber_Blooms"
step
click Crimson Charmer+
|tip They look like {o}green plants with red flowers{} on them.
|tip You may be attacked.
collect 6 Crimson Charmer##224098 |q 82478/1 |goto Hallowfall/0 49.97,68.01
step
label "Collect_Amber_Blooms"
click Amber Bloom+
|tip They look like {o}groups of yellow flowers{}.
|tip You may be attacked. |notinsticky
collect 6 Amber Bloom##224099 |q 82478/2 |goto Hallowfall/0 49.97,68.01
step
talk Phillip Taversil##218486
accept Stuffed Lynx Toy##80679 |goto Hallowfall/0 43.28,55.44 |instant
|only if completedq(80678)
step
talk Endiri Dawnsurge##215306
accept Dereliction of Duty##79159 |goto Hallowfall/0 41.45,52.40
step
talk Anje Noon##218305
|tip Up on the wall.
fpath Mereldar |goto Hallowfall/0 41.57,52.59
step
click Grave Offering Location##439890
accept Tarnished Compass##80680 |goto Hallowfall/0 43.48,51.73 |instant
|only if level >= 80
step
talk Great Kyron##215341
|tip Inside the building.
accept A Moment to Rest##79165 |goto Hallowfall/0 43.16,52.41
|only if achieved(20118) and achieved(19560) and achieved(20598) and achieved(19559) and completedq(79197)
step
talk Shinda Creedpike##215301
|tip Inside the building.
Select _"Are you Shinda Creedpike?"_ |gossip 120465
Select _"Why didn't you show up to your shift?"_ |gossip 120557
Select _"I'm sorry."_ |gossip 120574
Select _"Be kind to yourself. Allow yourself time."_ |gossip 120584
Talk to Shinda Creedpike |q 79159/1 |goto Hallowfall/0 40.74,50.63
step
talk Shinda Creedpike##215301
|tip Inside the building.
turnin Dereliction of Duty##79159 |goto Hallowfall/0 40.74,50.63
accept Fishing is Good for the Soul##79160 |goto Hallowfall/0 40.74,50.63
step
talk General Steelstrike##215335
|tip Inside the building.
accept The Brothers Braunpyke##82628 |goto Hallowfall/0 40.51,50.75
step
kill Strange Shore Crawler##219365+
collect 5 Arcane Suffused Organ##217269 |q 80176/1 |goto Hallowfall/0 36.66,46.50
step
talk Baron Sybaestan Braunpyke##217424
turnin The Brothers Braunpyke##82628 |goto Hallowfall/0 30.94,55.61
accept Wipe Away Their Smiles##79641 |goto Hallowfall/0 30.94,55.61
step
talk Sir Theleon Braunpyke##217426
accept Stave Them Off##79642 |goto Hallowfall/0 30.96,55.63
stickystart "Collect_Darkwater_Teeth"
step
click Darkwater Staff+
Collect #5# Staves |q 79642/1 |goto Hallowfall/0 29.70,59.54
step
_Next to you:_
talk Sir Theleon Braunpyke
turnin Stave Them Off##79642
'|talk Sir Theleon Braunpyke##221486
step
label "Collect_Darkwater_Teeth"
Kill enemies around this area
collect 100 Darkwater Tooth##219211 |q 79641/1 |goto Hallowfall/0 30.25,59.28
'|kill Darkwater Belly-gutter##220992, Darkwater Evoker##220990, Darkwater Necromage##225576, Darkwater Ranger##220991
step
_Next to you:_
talk Baron Sybaestan Braunpyke
turnin Wipe Away Their Smiles##79641
accept Dreaded Dreadfang##79643
'|talk Baron Sybaestan Braunpyke##221492
step
kill Dreadfang the Merciless##220302 |q 79643/1 |goto Hallowfall/0 29.03,61.98
|tip Inside the hut.
step
talk Baron Sybaestan Braunpyke##217424
turnin Dreaded Dreadfang##79643 |goto Hallowfall/0 29.07,61.83
accept Go to the Priory##79644 |goto Hallowfall/0 29.07,61.83
step
Meet Shinda Creedpike by His Fishing Hole |q 79160/1 |goto Hallowfall/0 39.46,63.93
'|clicknpc Shinda Creedpike##215301
step
Kill enemies around this area
Clear #4# Creatures Around the Fishing Hole |q 79160/2 |goto Hallowfall/0 39.82,63.35
'|kill Horrific Baelgat##229059, Enraged Kodiak##229060
step
talk Shinda Creedpike##215301
turnin Fishing is Good for the Soul##79160 |goto Hallowfall/0 39.46,63.93
accept Burnout##79162 |goto Hallowfall/0 39.46,63.93
step
talk Faerin Lothar##215331
Select _"<Clear your throat but say nothing.>"_ |gossip 120710
Find Faerin |q 79165/1 |goto Hallowfall/0 40.72,70.96
|only if achieved(20118) and achieved(19560) and achieved(20598) and achieved(19559) and completedq(79197)
step
Watch the dialogue
talk Anduin Wrynn##218541
turnin A Moment to Rest##79165 |goto Hallowfall/0 40.69,70.90
accept Lost Pieces##79166 |goto Hallowfall/0 40.69,70.90
|only if achieved(20118) and achieved(19560) and achieved(20598) and achieved(19559) and completedq(79197)
step
Kill enemies around this area
Gather #8# Lost Belongings |q 79166/1 |goto Hallowfall/0 41.52,75.22
'|kill Coalescing Shadow##217649, Lone Murkwalker##217612, Deep Murkmoth##217694, Dark Hound##217698
|only if achieved(20118) and achieved(19560) and achieved(20598) and achieved(19559) and completedq(79197)
step
talk Wenren Althal##219135
|tip Inside the building.
turnin Arcane Trickles##80176 |goto Hallowfall/0 48.80,64.51
accept Arcane Experiments##80177 |goto Hallowfall/0 48.80,64.51
step
Watch the dialogue
clicknpc Telerune Node##220035
|tip Inside the building.
Begin Calibrating the Node |havebuff Calibrating##440726 |goto Hallowfall/0 48.73,64.42 |q 80177
step
clicknpc Telerune Node##220035
|tip Inside the building.
Connect the Node |q 80177/1 |goto Hallowfall/0 48.67,64.67 |count 1
step
clicknpc Telerune Node##220035
|tip Inside the building.
Begin Calibrating the Node |havebuff Calibrating##440727 |goto Hallowfall/0 48.67,64.67 |q 80177
step
clicknpc Telerune Node##220035
|tip Inside the building.
Connect the Node |q 80177/1 |goto Hallowfall/0 48.79,64.67 |count 2
step
clicknpc Telerune Node##220035
|tip Inside the building.
Begin Calibrating the Node |havebuff Calibrating##440722 |goto Hallowfall/0 48.79,64.67 |q 80177
step
clicknpc Telerune Node##220035
|tip Inside the building.
Connect the Node |q 80177/1 |goto Hallowfall/0 Hallowfall/0 48.73,64.42 |count 3
step
click Portal to Somewhere
|tip Inside the building.
Take the Portal |q 80177/2 |goto Hallowfall/0 48.73,64.53
step
click Portal to Wenren's Lab
Help Wenren Through the Portal |q 80177/3 |goto Hallowfall/0 53.87,66.89
step
Watch the dialogue
click Portal to Somewhere
Take the Portal |q 80177/4 |goto Hallowfall/0 53.92,67.01
step
Help Wenren Through the Portal |q 80177/5 |goto Hallowfall/0 63.47,43.85
step
clicknpc Wenren Althal##219173
|tip Inside the building.
turnin Arcane Experiments##80177 |goto Hallowfall/0 48.68,64.58
accept A Murder Most Foul##80178 |goto Hallowfall/0 48.68,64.58
step
clicknpc Wenren Althal##219173
|tip Inside the building.
Select _"<Examine the body.>"_ |gossip 122070
Investigate the Body |q 80178/2 |goto Hallowfall/0 48.68,64.58
step
click Burnt Research
|tip Inside the building.
Investigate the Burnt Research |q 80178/1 |goto Hallowfall/0 48.79,64.61
step
click Smashed Accoutrements
|tip Inside the building.
Investigate the Smashed Accoutrements |q 80178/3 |goto Hallowfall/0 48.64,64.45
step
clicknpc Wenren Althal##219173
|tip Inside the building.
turnin A Murder Most Foul##80178 |goto Hallowfall/0 48.68,64.58
accept Finding Justice##80179 |goto Hallowfall/0 48.68,64.58
step
talk Tefferty Ulreth##219189
|tip Inside the building.
Select _"<Ask what he did to Wenren Althal.>"_ |gossip 122071
kill Tefferty Ulreth##219189
Find Wenren's Killer |q 80179/2 |goto Hallowfall/0 46.02,64.60
step
talk Faerin Lothar##215331
|tip Inside the building.
turnin Lost Pieces##79166 |goto Hallowfall/0 43.16,52.60
|only if achieved(20118) and achieved(19560) and achieved(20598) and achieved(19559) and completedq(79197)
step
Watch the dialogue
talk Faerin Lothar##215331
|tip Inside the building.
accept Crowdsourcing##79167 |goto Hallowfall/0 43.16,52.60
|only if achieved(20118) and achieved(19560) and achieved(20598) and achieved(19559) and completedq(79197)
step
talk Kiera Horth##217813
|tip Inside the building.
Select _"Faerin wants to know if you have a Light's Gambit game piece to spare?"_ |gossip 120737
Borrow a Game Piece |q 79167/1 |goto Hallowfall/0 43.97,49.71 |count 1
|only if achieved(20118) and achieved(19560) and achieved(20598) and achieved(19559) and completedq(79197)
step
talk Endiri Dawnsurge##215306
turnin Burnout##79162 |goto Hallowfall/0 41.45,52.40
step
talk General Steelstrike##215335
|tip Inside the building.
turnin Finding Justice##80179 |goto Hallowfall/0 40.51,50.75
step
talk Marja Lenglow##217830
|tip Inside the building.
Select _"Faerin wants to know if you have a Light's Gambit game piece to spare?"_ |gossip 120739
Borrow a Game Piece |q 79167/1 |goto Hallowfall/0 40.32,51.00 |count 2
|only if achieved(20118) and achieved(19560) and achieved(20598) and achieved(19559) and completedq(79197)
step
talk Keth Wernt##217831
|tip Upstairs inside the building.
Select _"Faerin wants to know if you have a Light's Gambit game piece to spare?"_ |gossip 120740
Borrow a Game Piece |q 79167/1 |goto Hallowfall/0 41.76,55.83 |count 3
|only if achieved(20118) and achieved(19560) and achieved(20598) and achieved(19559) and completedq(79197)
step
talk Cargen Fairleifen##217808
Select _"Faerin wants to know if you have a Light's Gambit game piece to spare?"_ |gossip 120735
Borrow a Game Piece |q 79167/1 |goto Hallowfall/0 43.00,56.84 |count 4
|only if achieved(20118) and achieved(19560) and achieved(20598) and achieved(19559) and completedq(79197)
step
talk Faerin Lothar##218267
|tip Upstairs inside the building.
turnin Crowdsourcing##79167 |goto Hallowfall/0 43.17,52.35
accept Light's Gambit##79168 |goto Hallowfall/0 43.17,52.35
|only if achieved(20118) and achieved(19560) and achieved(20598) and achieved(19559) and completedq(79197)
step
clicknpc Light's Gambit##217926
|tip Upstairs inside the building.
Begin Playing the Game |invehicle |goto Hallowfall/0 43.19,52.39 |q 79168
|only if achieved(20118) and achieved(19560) and achieved(20598) and achieved(19559) and completedq(79197)
step
Watch the dialogue
|tip Use the abilities on your action bar.
|tip Move your {o}2 smaller pieces close to the enemy castle{}.
|tip Use your pieces' damaging abilities on the enemy castle.
|tip Use the abilities and {o}switch your pieces quickly{}, so you can {o}use the abilities on cooldown{}.
Play Light's Gambit |q 79168/1 |goto Hallowfall/0 43.16,52.39
|only if achieved(20118) and achieved(19560) and achieved(20598) and achieved(19559) and completedq(79197)
step
talk Anduin Wrynn##215333
|tip Upstairs inside the building.
Select _"I think it's time we get going. <Complete quest objective.>"_ |gossip 120755
Stay a While and Chat |q 79168/2 |goto Hallowfall/0 43.19,52.41
|only if achieved(20118) and achieved(19560) and achieved(20598) and achieved(19559) and completedq(79197)
step
talk Anduin Wrynn##217909
|tip Upstairs inside the building.
turnin Light's Gambit##79168 |goto Hallowfall/0 43.17,52.43
|only if achieved(20118) and achieved(19560) and achieved(20598) and achieved(19559) and completedq(79197)
step
Leave the Chair |outvehicle |script VehicleExit()
|tip Use the Exit ability.
|only if achieved(20118) and achieved(19560) and achieved(20598) and achieved(19559) and completedq(79197)
step
clicknpc Lamplighter Skiff##215779
Begin Taking the Skiff to Lorel's Crossing |complete invehicle() and subzone("Tenir's Ascent") |goto Hallowfall/0 53.89,64.09 |q 78672
step
Watch the dialogue
Kill the enemies that attack
|tip The skiff will {o}stop multiple times{}.
|tip The enemies fly up to the skiff.
|tip Use the ability on your action bar.
Take the Skiff to Lorel's Crossing |q 78672/1 |goto Hallowfall/0 48.39,40.63 |notravel
step
talk Bastian Wynfall##218295
fpath Lorel's Crossing |goto Hallowfall/0 48.38,40.71
step
talk Aegor Irynbawnd##214019
accept Lights Out##78686 |goto Hallowfall/0 49.19,41.10
step
talk Haelmut Aegisaxe##222683
|tip Inside the building.
accept Hungry in Hollow##84392 |goto Hallowfall/0 49.25,39.52
Also check at [Hallowfall/0 48.43,39.42]
|only if not completedq(82843)
step
talk Sister Etna Blayze##217398
turnin Go to the Priory##79644 |goto Hallowfall/0 40.49,34.98
accept Sweet-Sting Infestation##79645 |goto Hallowfall/0 40.49,34.98
accept Memorial Wine##79646 |goto Hallowfall/0 40.49,34.98
step
talk Tristan Lyte##218323
|tip Up on the ledge.
fpath Priory of the Sacred Flame |goto Hallowfall/0 41.14,33.67
step
talk Brother Abealard##221530
Select _"I am ready to begin!"_ |gossip 121794
Speak with Brother Abealard |q 79646/1 |goto Hallowfall/0 39.44,33.24
step
Watch the dialogue
|tip {o}Brother Abealard{} will give you {o}instructions to follow{}.
|tip {o}Click the objects{} and {o}jump in the grapes nearby{} when he tells you to.
Make the Memorial Wine |q 79646/2 |goto Hallowfall/0 39.52,33.28
step
Kill enemies around this area
collect 10 Sweet-sting venom##218113 |q 79645/1 |goto Hallowfall/0 39.55,32.84
'|kill Invasive Sweet-sting##220502, Sweet-sting Worker##220500
step
talk Sister Etna Blayze##217398
turnin Sweet-Sting Infestation##79645 |goto Hallowfall/0 40.49,34.98
turnin Memorial Wine##79646 |goto Hallowfall/0 40.49,34.98
accept Burning Reflections##79647 |goto Hallowfall/0 40.49,34.98
step
talk Baron Sybaestan Braunpyke##217424
Select _"<You quietly tell Sybaestan you are ready whenever he is.>"_ |gossip 121923
Speak with Sybaestan to Begin |q 79647/1 |goto Hallowfall/0 39.54,37.40
step
click Memory
Watch the dialogue
Burn the Memory |q 79647/2 |goto Hallowfall/0 39.52,37.50 |count 1
step
click Memory
Watch the dialogue
Burn the Memory |q 79647/2 |goto Hallowfall/0 39.50,37.47 |count 2
step
click Memory
Watch the dialogue
Burn the Memory |q 79647/2 |goto Hallowfall/0 39.49,37.44 |count 3
step
talk Sister Etna Blayze##217398
turnin Burning Reflections##79647 |goto Hallowfall/0 39.63,37.17
accept Missing Somebody##79648 |goto Hallowfall/0 39.63,37.17
step
click Funerary Platform
Inspect the Funerary Platform |q 79648/1 |goto Hallowfall/0 38.53,37.81
step
talk Sister Etna Blayze##217398
turnin Missing Somebody##79648 |goto Hallowfall/0 39.63,37.17
accept Sacred Flame Inquisition##79649 |goto Hallowfall/0 39.63,37.17
step
talk Various NPCs
|tip They look like {o}friendly NPCs with various names{}.
Select _"<Question them about the missing bodies.>"_ |gossip 121830
|tip Some of them will attack you.
|tip {o}Defeat the ones that attack{} you to complete the quest goal.
Question #5# Suspicious Clergy |q 79649/1 |goto Hallowfall/0 40.00,36.92
'|talk Vitner Monk##217452, Pious Disciple##217464, Helpful Clergy##217434
step
talk Sister Etna Blayze##217398
turnin Sacred Flame Inquisition##79649 |goto Hallowfall/0 40.33,34.91
step
talk Faerin##214378
turnin A Lamplighter's Duty##78672 |goto Hallowfall/0 53.91,31.44
accept Tricks of the Dark##78929 |goto Hallowfall/0 53.91,31.44
step
talk General Steelstrike##214376
accept Fickle Fiendish Fish##78932 |goto Hallowfall/0 53.93,31.48
stickystart "Accept_Gasping_Plea"
stickystart "Slay_Kobyss_Invaders"
step
talk Arathi Captive##215891+
|tip They look like {o}scared humans{}.
Rescue #5# Arathi |q 78929/1 |goto Hallowfall/0 54.11,28.61
step
label "Accept_Gasping_Plea"
talk Arathi Captive##215623+
|tip Talk to the ones with {o}Kobyss Shadeshapers{} behind them.
kill Kobyss Shadeshaper##215653+
collect Gasping Fish##217352 |n
accept Gasping Plea##80312 |goto Hallowfall/0 54.11,28.61
step
label "Slay_Kobyss_Invaders"
Kill enemies around this area
|tip Enemies that look like {o}crabs won't count{}.
Slay #13# Kobyss Invaders |q 78932/1 |goto Hallowfall/0 54.02,29.08
'|kill Deepwater Eel##215680, Deepwater Kobyss##215750, Drowned Arathi##215684, Deepwater Abomination##215654, Awakener Kobyss##215683
step
extraaction Put Me in the Water##440905
Drop the Fish into the Water near Sunless Strand |q 80312/1 |goto Hallowfall/0 54.52,25.33
|tip Use the {o}Put Me in the Water{} ability.
|tip It appears as a button on the screen.
step
clicknpc Peculiar Fish##219430
turnin Gasping Plea##80312 |goto Hallowfall/0 54.52,25.33
accept Tidal Charms##80313 |goto Hallowfall/0 54.52,25.33
accept Voices from the Deep##80314 |goto Hallowfall/0 54.52,25.33
stickystart "Collect_Sunless_Shards"
step
click Kobyss Shrine
Study the Raised Shrine |q 80314/1 |goto Hallowfall/0 55.29,24.18
step
click Kobyss Shrine
Study the Submerged Shrine |q 80314/2 |goto Hallowfall/0 56.31,22.59
step
click Kobyss Shrine
Study the Guarded Shrine |q 80314/3 |goto Hallowfall/0 56.96,24.75
step
label "Collect_Sunless_Shards"
Kill enemies around this area
collect 12 Sunless Shard##217709 |q 80313/1 |goto Hallowfall/0 56.11,24.31
'|kill Sunless Carver##219604, Sunless Beckoner##219601
step
clicknpc Peculiar Fish##219430
turnin Tidal Charms##80313 |goto Hallowfall/0 54.52,25.33
turnin Voices from the Deep##80314 |goto Hallowfall/0 54.52,25.33
accept Alluring Offer##80315 |goto Hallowfall/0 54.52,25.33
stickystart "Kill_Sunless_Tidemarshals"
step
extraaction Beguiling Lure##440025
extraaction Ambush the Lured##441720
kill Chieftain Gillcarver##219633 |q 80315/3 |goto Hallowfall/0 53.96,20.03
|tip Use the {o}Beguiling Lure{} ability {o}while out of combat{}.
|tip Walk {o}next to him{} and use the {o}Ambush the Lured{} ability.
|tip They will be {o}weakened{}.
|tip It appears as a button on the screen.
|tip He walks around this area.
step
label "Kill_Sunless_Tidemarshals"
extraaction Beguiling Lure##440025 |notinsticky
extraaction Ambush the Lured##441720 |notinsticky
kill 5 Sunless Tidemarshal##219602 |q 80315/2 |goto Hallowfall/0 53.87,20.51
|tip Use the {o}Beguiling Lure{} ability {o}while out of combat{}. |notinsticky
|tip Walk {o}next to enemies{} and use the {o}Ambush the Lured{} ability. |notinsticky
|tip They will be {o}weakened{}. |notinsticky
|tip It appears as a button on the screen. |notinsticky
step
clicknpc Peculiar Fish##219430
turnin Alluring Offer##80315 |goto Hallowfall/0 54.52,25.33
accept Return to the Sea##80316 |goto Hallowfall/0 54.52,25.33
step
clicknpc Peculiar Fish##220117
Collect the Fish |q 80316/1 |goto Hallowfall/0 54.52,25.33
step
extraaction Put Me in the Water##440980
Drop the Fish in Deeper Waters in Bleak Sand |q 80316/2 |goto Hallowfall/0 56.92,8.70
|tip Use the {o}Put Me in the Water{} ability.
|tip It appears as a button on the screen.
|tip You must be dismounted to see it.
step
clicknpc Peculiar Fish##219430
turnin Return to the Sea##80316 |goto Hallowfall/0 56.92,8.70
step
talk Taenar Strongoth##213614
turnin Lights Out##78686 |goto Hallowfall/0 49.94,20.91
accept If it Leads, it Bleeds##78689 |goto Hallowfall/0 49.94,20.91
step
talk Aemyra Acton##213613
turnin Regularly Scheduled Maintenance##82478 |goto Hallowfall/0 49.98,20.83
accept The Sword is Mightier##82479 |goto Hallowfall/0 49.98,20.83
step
talk Aemyra Acton##213613
turnin Regularly Scheduled Maintenance##82478 |goto Hallowfall/0 49.98,20.83
accept The Sword is Mightier##82479 |goto Hallowfall/0 49.98,20.83
step
talk Aemyra Acton##213613
Select _"I'm ready."_ |gossip 122576
Select _"I hope you're not worried, Orren! I'd planned to be back to the farm already, but there are a lot of kobyss at Velhan's Claim."_ |gossip 122577
Select _"I love the flowers you sent! It's great to have a reminder that you're thinking of me."_ |gossip 122584
Select _"I miss you, Orr, and I'm afraid I'm going to keep missing you for a while as I make Velhan's Claim safe for people."_ |gossip 122588
Select _"The work you're doing with ELIZA is brilliant. Soon you'll have her caring for the fields, and we'll have more time together."_ |gossip 122592
Select _"I'm truly grateful for all the good you bring to my life, Orren."_ |gossip 122596
Select _"Yours, Aemyra"_ |gossip 122600
Put Aemyra's Sentiments on Paper |q 82479/1 |goto Hallowfall/0 49.98,20.83
step
talk Aemyra Acton##213613
accept Cage, Match##78688 |goto Hallowfall/0 49.98,20.83
stickystart "Burn_Cages"
step
kill Sharpfang##213718 |q 78689/3 |goto Hallowfall/0 47.99,17.89
|tip He walks around this area.
Also check around [Hallowfall/0 47.77,15.20]
step
label "Burn_Cages"
use the Torch of Holy Flame##211945
|tip Use it on the {o}bone cages{} around this area.
Burn #10# Cages |q 78688/1 |goto Hallowfall/0 47.20,16.27
step
kill Droopfin##213716 |q 78689/1 |goto Hallowfall/0 46.58,16.43
|tip He walks around this area.
Also check around [Hallowfall/0 45.55,15.75]
step
kill Bristlespine##213717 |q 78689/2 |goto Hallowfall/0 44.72,14.86
|tip He walks around this area.
Also check around: |notinsticky
[Hallowfall/0 44.00,15.59]
[Hallowfall/0 44.06,13.96]
step
talk Taenar Strongoth##213614
turnin If it Leads, it Bleeds##78689 |goto Hallowfall/0 45.74,13.09
step
talk Aemyra Acton##213613
turnin Cage, Match##78688 |goto Hallowfall/0 45.79,13.09
accept Situational Awareness##78690 |goto Hallowfall/0 45.79,13.09
stickystart "Reassure_Citizens"
step
talk Maximillian Velhan##213836
|tip Inside the building, on the top floor.
Select _"Don't worry, Max. The Lamplighters will..."_ |gossip 120323
Reassure Maximillian |q 78690/2 |goto Hallowfall/0 45.77,12.96
step
label "Reassure_Citizens"
talk Velhanite Citizen##213748+
|tip Inside the building, on multiple floors. |notinsticky
Select _"<Reassure them that the Lamplighters will take care of things.>"_ |gossip 120326
Reassure #8# Citizens |q 78690/1 |goto Hallowfall/0 45.75,12.79
'|talk Velhanite Citizen##213749, Velhanite Child##213745
step
talk Aemyra Acton##213613
|tip Outside the building.
turnin Situational Awareness##78690 |goto Hallowfall/0 45.79,13.09
accept Spears for Fears##78693 |goto Hallowfall/0 45.79,13.09
step
talk Taenar Strongoth##213614
accept Reclaiming Velhan's Claim##78694 |goto Hallowfall/0 45.74,13.09
stickystart "Slay_Kobyss_Attackers"
step
Kill enemies around this area
click Kobyss Spear+
collect 8 Kobyss Spear##211948 |q 78693/1 |goto Hallowfall/0 45.55,13.03
'|kill Murkfin Sciomancer##213619, Murkfin Ravager##213621, Murkfin Depthstalker##213622
step
label "Slay_Kobyss_Attackers"
Kill enemies around this area |notinsticky
Slay #12# Kobyss Attackers |q 78694/1 |goto Hallowfall/0 46.30,14.86
'|kill Murkfin Sciomancer##213619, Murkfin Ravager##213621, Bristlespine##213717, Droopfin##213716, Sharpfang##213718, Murkfin Depthstalker##213622
step
talk Taenar Strongoth##213614
turnin Reclaiming Velhan's Claim##78694 |goto Hallowfall/0 45.74,13.09
step
talk Aemyra Acton##213613
turnin Spears for Fears##78693 |goto Hallowfall/0 45.79,13.09
accept Teach a Man to Fish##78692 |goto Hallowfall/0 45.79,13.09
step
talk Velhanite Citizen##215667+
|tip Inside the building, on multiple floors.
Select _"Here's a spear to defend Velhan's Claim."_ |gossip 120328
Distribute #8# Spears |q 78692/1 |goto Hallowfall/0 45.74,12.72
'|talk Velhanite Citizen##215666
step
talk Aemyra Acton##213613
|tip Outside the building.
turnin Teach a Man to Fish##78692 |goto Hallowfall/0 45.79,13.09
step
talk Duke Velhan##213787
accept The One That Got Away##78691 |goto Hallowfall/0 45.76,13.02
step
talk Taenar Strongoth##213614
accept Crash Recovery##78687 |goto Hallowfall/0 45.74,13.09
stickystart "Collect_Recovered_Tinderboxes"
step
kill Boneseer Hookjaw##213805
|tip He walks around this area.
Defeat Boneseer Hookjaw |q 78691/1 |goto Hallowfall/0 49.83,16.75
step
Help Maximillian |q 78691/2 |goto Hallowfall/0 49.84,16.59
|tip Under the broken ship.
'|clicknpc Maximillian Velhan##213836
step
label "Collect_Recovered_Tinderboxes"
kill Indominatable Stalwart##215577+
collect 4 Recovered Tinderbox##212317 |q 78687/1 |goto Hallowfall/0 50.30,17.07
step
talk Duke Velhan##213787
turnin The One That Got Away##78691 |goto Hallowfall/0 45.76,13.02
step
talk Taenar Strongoth##213614
turnin Crash Recovery##78687 |goto Hallowfall/0 45.74,13.09
accept Lamp Lit##78695 |goto Hallowfall/0 45.74,13.09
step
click Arathi Torch
Place the Torch |q 78695/1 |goto Hallowfall/0 46.28,12.64 |count 1
step
click Arathi Torch
Place the Torch |q 78695/1 |goto Hallowfall/0 46.34,13.22 |count 2
step
click Arathi Torch
Place the Torch |q 78695/1 |goto Hallowfall/0 46.09,13.54 |count 3
step
click Arathi Torch
Place the Torch |q 78695/1 |goto Hallowfall/0 45.84,13.57 |count 4
step
click Arathi Torch
Place the Torch |q 78695/1 |goto Hallowfall/0 45.54,13.92 |count 5
step
click Arathi Torch
Place the Torch |q 78695/1 |goto Hallowfall/0 45.22,13.94 |count 6
step
click Arathi Torch
Place the Torch |q 78695/1 |goto Hallowfall/0 45.03,13.70 |count 7
step
click Arathi Torch
Place the Torch |q 78695/1 |goto Hallowfall/0 44.94,13.25 |count 8
step
talk Taenar Strongoth##213614
|tip Inside the tower, on the ground floor.
Select _"Let's light the Sacred Flame."_ |gossip 120324
Speak with Taenar at the Dawntower |q 78695/2 |goto Hallowfall/0 45.95,10.55
step
Watch the dialogue
|tip Inside the tower, on the ground floor.
Light the Dawntower |q 78695/3 |goto Hallowfall/0 45.95,10.55
step
talk Duke Velhan##213787
|tip Inside the tower, on the ground floor.
turnin Lamp Lit##78695 |goto Hallowfall/0 45.87,10.46
step
talk Anduin Wrynn##214377
turnin Tricks of the Dark##78929 |goto Hallowfall/0 53.91,30.78
turnin Fickle Fiendish Fish##78932 |goto Hallowfall/0 53.91,30.78
step
talk Faerin##214378
accept Blades of the Arathi##78934 |goto Hallowfall/0 53.93,30.74
step
talk General Steelstrike##214376
accept Something's Fishy##78936 |goto Hallowfall/0 55.18,32.69
step
click Torch
Light the Torch |q 78934/1 |goto Hallowfall/0 55.16,32.72
stickystart "Rally_Arathi_Groups"
step
kill Tidelord Teethwretch##216527 |q 78936/3 |goto Hallowfall/0 56.10,34.08
step
kill The Abominable Wavecrasher##216526 |q 78936/2 |goto Hallowfall/0 54.47,33.84
step
kill Deepsludger##216536 |q 78936/1 |goto Hallowfall/0 53.32,32.65
|tip He walks around this area.
step
label "Rally_Arathi_Groups"
extraaction Rally##433115
Rally #6# Arathi Groups |q 78934/2 |goto Hallowfall/0 54.92,33.46
|tip They look like {o}small groups of humans{}.
|tip Use the {o}Rally{} ability next to them.
|tip It appears as a button on the screen.
step
talk General Steelstrike##214376
turnin Something's Fishy##78936 |goto Hallowfall/0 55.18,32.69
step
talk Faerin##221100
turnin Blades of the Arathi##78934 |goto Hallowfall/0 55.15,32.69
step
Watch the dialogue
talk Faerin##221100
accept Shadow upon Shadow##78937 |goto Hallowfall/0 55.15,32.69
step
talk Faerin Lothar##214407
Select _"<Look closer at the tower with Faerin and Anduin.>"_ |gossip 121725
Find Faerin at the Tower Overlook |q 78937/1 |goto Hallowfall/0 55.20,35.03
step
Watch the dialogue
talk Alleria Windrunner##214405
turnin Shadow upon Shadow##78937 |goto Hallowfall/0 55.77,41.31
accept The Darkened Flame##78939 |goto Hallowfall/0 55.77,41.31
step
click Darkfire
|tip Inside the tower, on the ground floor.
Watch the dialogue
Investigate the Darkfire |q 78939/1 |goto Hallowfall/0 56.17,41.89
step
click Order of Night Polearm
Find a Clue Outside the Tower |q 78939/2 |goto Hallowfall/0 56.30,40.64 |count 1
step
clicknpc Kelther Hearthen##221411
Select _"<Wish his spirit well.>"_ |gossip 121757
Find a Clue Outside the Tower |q 78939/2 |goto Hallowfall/0 55.93,42.02 |count 2
step
click Order of Night Poster
Find a Clue Outside the Tower |q 78939/2 |goto Hallowfall/0 55.38,42.02 |count 3
step
click Order of Night Journal
Find a Clue Outside the Tower |q 78939/2 |goto Hallowfall/0 54.72,43.03 |count 4
step
talk Faerin Lothar##214404
|tip Inside the tower, on the ground floor.
Select _"<Tell Faerin what you learned.>"_ |gossip 120685
Return to Faerin |q 78939/3 |goto Hallowfall/0 56.28,41.97
step
Watch the dialogue
talk Faerin Lothar##214404
|tip Inside the tower, on the ground floor.
turnin The Darkened Flame##78939 |goto Hallowfall/0 56.22,42.01
accept Ever Deeper Shadow##78951 |goto Hallowfall/0 56.22,42.01
step
Kill enemies around this area
|tip Inside the cave.
Slay #10# Order of Night Cultists |q 78951/1 |goto Hallowfall/0 56.22,42.81
'|kill Glooming Belligerent##216865, Glooming Skulk##216869, Glooming Disciple##216867, Glooming Darkweaver##216868
step
talk Faerin Lothar##214413
|tip Inside the cave.
turnin Ever Deeper Shadow##78951 |goto Hallowfall/0 55.83,40.50
accept The Final Resistance##78952 |goto Hallowfall/0 55.83,40.50
step
click Shadow Rift
|tip Inside the cave.
Destroy the Shadow Rift |q 78952/1 |goto Hallowfall/0 55.09,40.11
step
kill Anguishing Nightmare##214415 |q 78952/2 |goto Hallowfall/0 55.09,40.11
|tip Inside the cave.
step
talk Faerin Lothar##221733
|tip Inside the cave.
turnin The Final Resistance##78952 |goto Hallowfall/0 55.13,40.23
accept The Light at the End of the Tunnel##81690 |goto Hallowfall/0 55.13,40.23
step
Watch the dialogue
|tip Follow {o}Faerin Lothar{} and {o}protect her{} as she walks.
|tip She eventually walks to the entrance of the cave at this location.
Follow Faerin |q 81690/1 |goto Hallowfall/0 56.50,42.58
'|clicknpc Faerin Lothar##221736
step
talk Alleria Windrunner##214405
|tip She runs to this location.
turnin The Light at the End of the Tunnel##81690 |goto Hallowfall/0 55.72,43.36
step
talk Faerin Lothar##221733
accept Restore the Flame##78954 |goto Hallowfall/0 55.78,43.43
step
talk Faerin Lothar##214404
|tip Inside the tower, on the ground floor.
Select _"I'm ready."_ |gossip 120602
Restore the Dawntower to Light |q 78954/1 |goto Hallowfall/0 56.22,42.01
step
talk Faerin Lothar##214404
|tip Inside the tower, on the ground floor.
turnin Restore the Flame##78954 |goto Hallowfall/0 56.22,42.01
accept To Mereldar##78607 |goto Hallowfall/0 56.22,42.01
step
talk Rubaen Hillhelm##206537
fpath Hillhelm Family Farm |goto Hallowfall/0 61.34,30.99
step
click Egg Basket##430581
accept Eggs in One Basket##80382 |goto Hallowfall/0 60.79,27.88
|only if level >= 80
step
click Hillhelm Egg##430601+
|tip They look like {o}small eggs{}.
collect 10 Hillhelm Egg##217396 |q 80382/1 |goto Hallowfall/0 60.89,27.92
|only if level >= 80
step
talk Aliya Hillhelm##206528
turnin Eggs in One Basket##80382 |goto Hallowfall/0 61.18,30.50
|only if level >= 80
step
talk Keyrra Flamestonge##215527
accept Broken Bracelet##80681 |goto Hallowfall/0 65.45,32.23 |instant
|only if completedq(80678)
step
talk Dolena##224741
turnin Hungry in Hollow##84392 |goto Hallowfall/0 69.95,32.57
accept Something Earthy##82843 |goto Hallowfall/0 69.95,32.57
step
clicknpc Cave Taro##224757
Harvest a Taro |q 82843/1 |goto Hallowfall/0 69.09,34.08
step
talk Dolena##224741
turnin Something Earthy##82843 |goto Hallowfall/0 69.95,32.57
accept Something Not Ruined##82844 |goto Hallowfall/0 69.95,32.57
step
clicknpc Cave Taro##224757
|tip {o}Run away from it{} after clicking it.
Harvest a Taro Properly |q 82844/1 |goto Hallowfall/0 69.26,34.14
step
clicknpc Cave Taro##224757+
|tip {o}Run away from them{} after clicking them.
Harvest #6# Taros |q 82844/2 |goto Hallowfall/0 69.26,34.14
step
talk Dolena##224741
turnin Something Not Ruined##82844 |goto Hallowfall/0 69.94,32.57
accept Enough Garlic##82847 |goto Hallowfall/0 69.94,32.57
step
click Secret Garlic
Collect the Garlic |q 82847/1 |goto Hallowfall/0 70.45,28.09
step
click Secret Garlic+
Collect #6# More Garlic Than That |q 82847/2 |goto Hallowfall/0 70.45,28.09
step
talk Dolena##224741
turnin Enough Garlic##82847 |goto Hallowfall/0 69.94,32.58
accept Sous##82848 |goto Hallowfall/0 69.94,32.58
step
Help the Chef Prepare a Meal |q 82848/1 |goto Hallowfall/0 69.97,32.55
|tip Use the abilities on your action bar.
|tip It {o}doesn't matter which order{} you use them in.
step
talk Dolena##224741
turnin Sous##82848 |goto Hallowfall/0 69.92,32.57
step
talk Orren Masyn##224379
turnin The Sword is Mightier##82479 |goto Hallowfall/0 46.58,59.77
accept Job Killing Robot Or...##82480 |goto Hallowfall/0 46.58,59.77
step
kill ELIZA##224060
|tip It walks around this area.
Stop ELIZA |q 82480/1 |goto Hallowfall/0 45.80,57.35
step
talk Orren Masyn##224380
|tip Inside the building.
Select _"Aemyra sent this for you."_ |gossip 122601
Deliver Aemyra's Message |q 82480/2 |goto Hallowfall/0 49.38,62.09
step
talk Orren Masyn##224380
|tip Inside the building.
turnin Job Killing Robot Or...##82480 |goto Hallowfall/0 49.38,62.09
step
talk Faerin Lothar##214364
turnin To Mereldar##78607 |goto Hallowfall/0 43.45,48.58
step
talk General Steelstrike##213108
accept The Bastion of Hallowfall##78613 |goto Hallowfall/0 43.42,48.63
step
talk General Steelstrike##215335
|tip Inside the building.
accept The Price of Hope##82894 |goto Hallowfall/0 40.51,50.75
step
Meet the General at the Infirmary |q 82894/1 |goto Hallowfall/0 43.07,51.78
step
click Medical Supplies
|tip Inside the building.
Retrieve the Bandages |q 82894/3 |goto Hallowfall/0 43.27,51.79
step
clicknpc Injured Soldier##220225+
|tip Inside the building.
Heal an Injured Soldier |q 82894/2 |goto Hallowfall/0 43.19,51.77
'|clicknpc Injured Soldier##215678, Injured Soldier##215677, Injured Soldier##213306
step
talk General Steelstrike##218289
|tip Inside the building.
turnin The Price of Hope##82894 |goto Hallowfall/0 43.19,51.77
step
talk Auralia Steelstrike##213145
|tip Inside the tent.
accept Economical Request##82216 |goto Hallowfall/0 41.27,53.05
step
talk Auralia Steelstrike##213145
|tip Inside the tent.
Select _"I can contact the Trading Post representatives of my people."_ |gossip 122432
Suggest Additional Trading Partners |q 82216/1 |goto Hallowfall/0 41.27,53.05
step
click Letter of Recommendation
|tip Inside the tent.
Select _"To Merrix, Councilward."_ |gossip 122416
Select _"A people beset on all sides by monsters in the dark."_ |gossip 122431
Select _"They want to re-open trade with your people."_ |gossip 122427
Select _"{_G.UnitName("player")}."_ |gossip 122423
Write a Letter of Recommendation |q 82216/2 |goto Hallowfall/0 41.24,53.12
step
talk Auralia Steelstrike##213145
|tip Inside the tent.
turnin Economical Request##82216 |goto Hallowfall/0 41.27,53.05
accept A Batty Request##82213 |goto Hallowfall/0 41.27,53.05
accept Does Anyone Like Wasps?##82214 |goto Hallowfall/0 41.27,53.05
accept Regular Fiber##82215 |goto Hallowfall/0 41.27,53.05
step
talk Alyza Bowblaze##215237
|tip Inside the building.
accept An Orphan's Request##79151 |goto Hallowfall/0 41.76,55.61
step
Meet Faerin, Anduin, and Alleria at Empire's Edge Inn |q 78613/1 |goto Hallowfall/0 42.72,55.70
|tip Inside the building.
step
talk Nalina Ironsong##217642
|tip Inside the building.
Select _" Purchase a round of drinks."_ |gossip 122686 |noautogossip
buy A Round of Drinks##217708 |q 78613/2 |goto Hallowfall/0 42.81,55.83
step
click Drink+
|tip Inside the building.
Hand Out #4# Drinks |q 78613/3 |goto Hallowfall/0 42.72,55.65
step
talk Faerin Lothar##220124
|tip Inside the building.
turnin The Bastion of Hallowfall##78613 |goto Hallowfall/0 42.75,55.63
step
talk Alleria Windrunner##218182
|tip Inside the building.
accept Nightwatch##79297 |goto Hallowfall/0 42.75,55.67
step
click Order of Night Propaganda+
|tip They look like {o}rolled up scrolls{} and {o}pieces of paper{} nailed to objects.
collect 8 Order of Night Propaganda##217990 |q 79297/1 |goto Hallowfall/0 43.46,56.60
step
Meet General Steelstrike in the Barracks |q 79297/4 |goto Hallowfall/0 41.26,52.98
|tip Inside the tent.
step
talk General Steelstrike##213108
|tip Inside the tent.
turnin Nightwatch##79297 |goto Hallowfall/0 41.26,52.98
accept Spar Day##78626 |goto Hallowfall/0 41.26,52.98
step
talk Arathi Reserve##215727
Select _"Your general asked me to spar with you."_ |gossip 120333
|tip They will attack you.
Duel #8# Arathi Recruits |q 78626/1 |goto Hallowfall/0 41.83,52.24
'|talk Arathi Reserve##214429
step
talk General Steelstrike##213108
|tip Inside the tent.
turnin Spar Day##78626 |goto Hallowfall/0 41.26,52.98
accept Mereldar's Light##78614 |goto Hallowfall/0 41.26,52.98
step
clicknpc Arathi Orphan##218456+
|tip They look like {o}2 children running together{}.
Play with the Orphans |q 78614/1 |goto Hallowfall/0 41.85,55.10 |count 1
step
talk Arathi Orphan##223365
Select _"I can play."_ |gossip 122367
Begin Playing with the Orphan |havebuff Scary Monster##448382 |goto Hallowfall/0 42.02,55.43 |q 78614
step
Play with the Orphans |q 78614/1 |goto Hallowfall/0 42.00,55.40 |count 2
|tip Use the abilities on your action bar.
|tip Use the abilities {o}until they kill you{}.
step
talk Arathi Orphan##218493
Begin Playing with the Orphan |invehicle |goto Hallowfall/0 41.90,55.53 |q 78614
step
Play with the Orphans |q 78614/1 |goto Hallowfall/0 42.00,55.40 |count 3
|tip Use the ability on your action bar.
|tip Aim at one of the {o}red and white targets{} nearby.
step
talk Faerin Lothar##220124
|tip Inside the building.
turnin Mereldar's Light##78614 |goto Hallowfall/0 41.68,55.51
step
Watch the dialogue
|tip Inside the building.
talk Faerin Lothar##220124
accept The Bell Tolls##78615 |goto Hallowfall/0 41.68,55.51
step
click Arathi Chest
|tip Inside the small crumbled building.
collect "Much Loved" Teddy Bear##216604 |q 79151/1 |goto Hallowfall/0 52.31,50.20
step
talk Alyza Bowblaze##218062
Select _" I'll help you with whatever you are doing next."_ |gossip 120791
Talk to Alyza |q 79151/2 |goto Hallowfall/0 52.42,50.19
step
talk Alyza Bowblaze##218062
turnin An Orphan's Request##79151 |goto Hallowfall/0 52.42,50.19
accept Gutting the Pool##79152 |goto Hallowfall/0 52.42,50.19
accept A Bloody Inheritance##83182 |goto Hallowfall/0 52.42,50.19
stickystart "Slay_Kobyss"
step
click Kobyss Chest
Gather a Parental Effect |q 83182/1 |goto Hallowfall/0 50.95,47.72 |count 1
step
click Kobyss Chest
Gather a Parental Effect |q 83182/1 |goto Hallowfall/0 49.72,48.21 |count 2
step
click Kobyss Chest
Gather a Parental Effect |q 83182/1 |goto Hallowfall/0 48.79,50.46 |count 3
step
click Kobyss Chest
Gather a Parental Effect |q 83182/1 |goto Hallowfall/0 50.04,53.07 |count 4
step
_Next to you:_
talk Alyza Bowblaze##215254
turnin A Bloody Inheritance##83182
step
label "Slay_Kobyss"
Kill enemies around this area
|tip In the {o}water areas{} around the huge hole.
Slay #10# Kobyss |q 79152/1 |goto Hallowfall/0 50.48,50.27
'|kill Hungering Necromage##215239, Hungering Slicer##215242, Hungering Shimmerfin##215243
step
_Next to you:_
talk Alyza Bowblaze##215254
turnin Gutting the Pool##79152
accept Vae Victis##79153
step
kill Sharpscale the Devourer##215252
collect Sharpscale's Head##217175 |q 79153/1 |goto Hallowfall/0 48.74,53.89
step
_Next to you:_
talk Alyza Bowblaze##215254
turnin Vae Victis##79153
accept A Final Goodbye##79154
step
click Parents Personal Effects
|tip Up on the cliff.
Burn the Effects |q 79154/1 |goto Hallowfall/0 52.02,50.33
stickystart "Collect_Shacklefang_Leafnose_Meat"
stickystart "Kill_Shacklefang_Hornets"
step
click Tough Ivy##444010+
|tip They look like {o}plants hanging on the side of rocks{}.
collect 5 Tough Ivy Fiber##222925 |q 82215/1 |goto Hallowfall/0 60.98,47.81
step
label "Collect_Shacklefang_Leafnose_Meat"
kill Shacklefang Leafnose##223167+
collect 8 Shacklefang Leafnose Meat##222920 |q 82213/1 |goto Hallowfall/0 60.98,47.81
step
label "Kill_Shacklefang_Hornets"
kill 10 Shacklefang Hornet##223178 |q 82214/1 |goto Hallowfall/0 60.98,47.81
step
talk Auralia Steelstrike##223267
turnin A Batty Request##82213 |goto Hallowfall/0 68.41,44.57
turnin Does Anyone Like Wasps?##82214 |goto Hallowfall/0 68.41,44.57
turnin Regular Fiber##82215 |goto Hallowfall/0 68.41,44.57
step
talk General Steelstrike##225711
accept Underground Economics##82217 |goto Hallowfall/0 68.41,44.63
step
click Arathi Chest
Gather the Arathi Trade Goods |q 82217/1 |goto Hallowfall/0 68.39,44.71 |count 1
step
click Arathi Chest
Gather the Arathi Trade Goods |q 82217/1 |goto Hallowfall/0 68.39,44.62 |count 2
step
click Arathi Crate Stacked
Gather the Arathi Trade Goods |q 82217/1 |goto Hallowfall/0 68.39,44.53 |count 3
step
click Flame Touched Steel Weaponry
Display the Arathi Trade Goods |q 82217/2 |goto Hallowfall/0 68.44,44.51 |count 1
step
click Tough Ivy Fiber Rope
Display the Arathi Trade Goods |q 82217/2 |goto Hallowfall/0 68.42,44.67 |count 2
step
click Spices
Display the Arathi Trade Goods |q 82217/2 |goto Hallowfall/0 68.43,44.74 |count 3
step
talk Andee Seabraid##223193
Select _"(Alliance) I vouch for the Arathi. We should open trade with them."_ |gossip 122456 |only if Alliance
Select _"What would it take to convince you to open trade with the Arathi?"_ |gossip 122455 |only if Horde
Select _"They are struggling to survive. With extra resources they can thrive. You'll get favorable rates when that happens."_ |gossip 122454 |only if Horde
Convince Andee Seabraid to Trade with the Arathi |q 82217/3 |goto Hallowfall/0 68.48,44.68
step
talk Teha##223194
Select _"What would it take to convince you to open trade with the Arathi?"_ |gossip 122461 |only if Alliance
Select _"They are struggling to survive. With extra resources they can thrive. You'll get favorable rates when that happens."_ |gossip 122465 |only if Alliance
Select _"(Horde) I vouch for the Arathi. We should open trade with them."_ |gossip 122462 |only if Horde
Convince Teha to Trade with the Arathi |q 82217/4 |goto Hallowfall/0 68.48,44.55
step
talk General Steelstrike##225711
turnin Underground Economics##82217 |goto Hallowfall/0 68.41,44.63
step
talk Alyza Bowblaze##219368
|tip In the doorway of the building.
turnin A Final Goodbye##79154 |goto Hallowfall/0 41.82,55.40
step
Go to the Gates of Mereldar |q 78615/1 |goto Hallowfall/0 41.06,54.71
step
talk Faerin Lothar##213107
turnin The Bell Tolls##78615 |goto Hallowfall/0 41.06,54.71
step
talk General Steelstrike##213108
accept Crossroads of Twilight##78620 |goto Hallowfall/0 41.06,54.76
step
talk Alleria Windrunner##214402
accept The Shadow Rising##78621 |goto Hallowfall/0 41.05,54.67
stickystart "Slay_Kobyss_Attackers_78620"
step
kill Lighteater##216036 |q 78621/3 |goto Hallowfall/0 35.09,52.37
step
kill Old Grim##213403 |q 78621/1 |goto Hallowfall/0 34.87,54.64
step
kill Heartfang##216035 |q 78621/2 |goto Hallowfall/0 35.04,56.85
step
label "Slay_Kobyss_Attackers_78620"
Kill enemies around this area
Slay #15# Kobyss Attackers |q 78620/1 |goto Hallowfall/0 35.38,54.75
'|kill Ragefin Carver##215652, Ragefin Executioner##213408, Ragefin Necromancer##213406, Darkwater Tidecrusher##220621, Ragefin Shadowcaster##213405
step
talk Alleria Windrunner##214402
turnin The Shadow Rising##78621 |goto Hallowfall/0 34.07,54.74
step
talk General Steelstrike##213108
turnin Crossroads of Twilight##78620 |goto Hallowfall/0 34.07,54.68
accept A Candle in the Dark##78624 |goto Hallowfall/0 34.07,54.68
step
talk Alleria Windrunner##214402
Select _" Bring down the bubble."_ |gossip 121810
Watch the dialogue
Have Alleria Bring Down the Void Bubble |q 78624/1 |goto Hallowfall/0 34.07,54.74
step
kill Aelric Leid##213208 |q 78624/2 |goto Hallowfall/0 33.40,54.60
step
talk General Steelstrike##225188
turnin A Candle in the Dark##78624 |goto Hallowfall/0 33.62,54.63
accept Consecrated Cleanup##79089 |goto Hallowfall/0 33.62,54.63
step
talk Faerin Lothar##213107
accept The Flame Still Burns##80049 |goto Hallowfall/0 33.59,54.80
stickystart "Clear_The_Veneration_Grounds"
step
talk Arathi Stalwart##225226
Select _"The only good kobyss is a dead kobyss."_ |gossip 122722
Speak to the Arathi Survivors |q 80049/1 |goto Hallowfall/0 35.32,55.81 |count 1
step
talk Arathi Stalwart##225226
Select _"You had no choice."_ |gossip 122719
Speak to the Arathi Survivors |q 80049/1 |goto Hallowfall/0 36.01,56.01 |count 2
step
talk Arathi Stalwart##225226
Select _"You did well."_ |gossip 122712
Speak to the Arathi Survivors |q 80049/1 |goto Hallowfall/0 36.95,54.79 |count 3
step
talk Arathi Stalwart##225226
Select _"The Arathi are survivors. You'll pull through this."_ |gossip 122713
Speak to the Arathi Survivors |q 80049/1 |goto Hallowfall/0 35.73,54.05 |count 4
step
talk Arathi Stalwart##225226
Select _"You fought to keep those you love safe."_ |gossip 122717
Speak to the Arathi Survivors |q 80049/1 |goto Hallowfall/0 35.39,52.72 |count 5
step
label "Clear_The_Veneration_Grounds"
click Kobyss Spear+
|tip They look like {o}poles{} stuck in the ground and in objects.
click Memorial Plant+
|tip They look like {o}various plant pots and vases{} that are knocked over.
Clear the Veneration Grounds |q 79089/1 |goto Hallowfall/0 35.22,54.63
step
talk General Steelstrike##225188
turnin Consecrated Cleanup##79089 |goto Hallowfall/0 33.62,54.64
turnin The Flame Still Burns##80049 |goto Hallowfall/0 33.62,54.64
step
Watch the dialogue
talk General Steelstrike##225188
accept The Final Front##78627 |goto Hallowfall/0 33.62,54.64
step
talk 'Red' Fearon##218304
fpath Light's Redoubt |goto Hallowfall/0 40.46,71.31
step
Travel to Light's Redoubt |q 78627/1 |goto Hallowfall/0 38.97,71.61
|tip On the deck of the airship.
step
talk General Steelstrike##213108
|tip On the deck of the airship.
turnin The Final Front##78627 |goto Hallowfall/0 38.97,71.61
accept Trapdoor Sprung##78628 |goto Hallowfall/0 38.97,71.61
step
talk Faerin Lothar##213107
|tip On the deck of the airship.
accept Running on Reserves##78629 |goto Hallowfall/0 38.95,71.59
stickystart "Slay_Nerubians"
step
talk Arathi Reserve##213286
|tip Inside the building.
Select _"I'll buy you time."_ |gossip 120658
|tip You will be attacked.
Rescue the Reservist |q 78629/1 |goto Hallowfall/0 39.06,81.32 |count 1
step
talk Arathi Reserve##213286
|tip Inside the building.
Select _"I'll buy you time."_ |gossip 120658
|tip You will be attacked.
Rescue the Reservist |q 78629/1 |goto Hallowfall/0 38.86,83.12 |count 2
step
talk Arathi Reserve##213286
|tip Inside the doorway of the tower.
Select _"I'll buy you time."_ |gossip 120658
|tip You will be attacked.
Rescue the Reservist |q 78629/1 |goto Hallowfall/0 38.06,82.70 |count 3
step
talk Arathi Reserve##213286
|tip Inside the building.
Select _"I'll buy you time."_ |gossip 120658
|tip You will be attacked.
Rescue the Reservist |q 78629/1 |goto Hallowfall/0 37.47,81.90 |count 4
step
talk Arathi Reserve##213286
|tip Inside the doorway of the building.
Select _"I'll buy you time."_ |gossip 120658
|tip You will be attacked.
Rescue the Reservist |q 78629/1 |goto Hallowfall/0 36.88,81.00 |count 5
step
label "Slay_Nerubians"
Kill enemies around this area
Slay #15# Nerubians |q 78628/1 |goto Hallowfall/0 38.63,80.28
'|kill Kaheti Swarmer##213398, Kaheti Ravager##213395, Kaheti Ambusher##217448, Kaheti Fighter##217362, Kaheti Shadeweaver##213396
step
talk Faerin Lothar##213107
|tip Up on the platform.
turnin Trapdoor Sprung##78628 |goto Hallowfall/0 38.78,81.52
turnin Running on Reserves##78629 |goto Hallowfall/0 38.78,81.52
accept The Rise of the Reckoning##78630 |goto Hallowfall/0 38.78,81.52
step
click Rope Ladder
Board the Reckoning |q 78630/1 |goto Hallowfall/0 38.87,81.58
step
_As Your Fly:_
Kill enemies around this area
|tip They are on the ground as you fly.
|tip Use the ability on your action bar.
Slay #150# Nerubian Forces |q 78630/2
step
Watch the dialogue
Reach Azj-Kahet |complete zone("Azj-Kahet") |q 78630
step
talk Faerin##211699
turnin The Rise of the Reckoning##78630 |goto Azj-Kahet/0 29.39,42.20
step
Unlock World Quests |complete completedq(79197)
|tip Use {o}The War Within Campaign{} guide to accomplish this.
|tip This is needed to {o}unlock additional side quests{}.
|only if level >= 80
step
talk Aliya Hillhelm##206528
accept Keep the Home Fires Burning##76247 |goto Hallowfall/0 61.18,30.50
accept Seeds of Evil##79108 |goto Hallowfall/0 61.18,30.50
|only if level >= 80
stickystart "Collect_Corrupted_Shadowleaf_Seeds"
step
click Hillhelm Remnant Supply##409464+
|tip They look like {o}wooden crates{}.
collect 5 Hillhelm Remnant Supply##209854 |q 76247/1 |goto Hallowfall/0 61.33,28.27
|only if level >= 80
step
label "Collect_Corrupted_Shadowleaf_Seeds"
Kill enemies around this area
collect 16 Corrupted Shadowleaf Seed##212153 |q 79108/1 |goto Hallowfall/0 61.29,28.55
'|kill Giant Shadowbloom##210950, Shadowleaf Seedling##210951, Invasive Shadowblossom##214923
|only if level >= 80
step
click Hillhelm Keyflame
|tip Click it {o}multiple times{}.
Use the #5# Hillhelm Remnants to Empower the Keyflame |q 76247/2 |goto Hallowfall/0 61.01,28.80
|only if level >= 80
step
talk Aliya Hillhelm##206528
turnin Keep the Home Fires Burning##76247 |goto Hallowfall/0 61.18,30.50
turnin Seeds of Evil##79108 |goto Hallowfall/0 61.18,30.50
accept A Flickering of Hope##50690 |goto Hallowfall/0 61.18,30.50
accept Follow Miral##79109 |goto Hallowfall/0 61.18,30.50
|only if level >= 80
step
click Tomothy's Hoe
Inspect the Hoe |q 79109/1 |goto Hallowfall/0 60.75,25.14
|only if level >= 80
step
click Tomothy's Bag
Inspect the Bag |q 79109/2 |goto Hallowfall/0 60.12,24.27
|only if level >= 80
step
click Tomothy's Lamp
Inspect the Lamp |q 79109/3 |goto Hallowfall/0 60.29,22.84
|only if level >= 80
step
clicknpc Miral Murder-Mittens##215041
turnin Follow Miral##79109 |goto Hallowfall/0 60.29,21.15
accept Save Tomothy##79110 |goto Hallowfall/0 60.29,21.15
|only if level >= 80
step
kill The Grasping Darkness##215064 |q 79110/1 |goto Hallowfall/0 60.16,20.59
|tip Inside the building.
|only if level >= 80
step
talk Aliya Hillhelm##206528
turnin Save Tomothy##79110 |goto Hallowfall/0 61.18,30.50
|only if level >= 80
step
talk Keyrra Flamestonge##215527
turnin A Flickering of Hope##50690 |goto Hallowfall/0 65.45,32.23
accept Those Who Fell##79232 |goto Hallowfall/0 65.45,32.23
|only if level >= 80
step
kill Invasive Lashroom##206194+
collect Idona Seerstone's Tinderbox##219453 |q 79232/3 |goto Hallowfall/0 63.78,32.53
|only if level >= 80
step
kill Skulldunk##221310
collect Oskaer Daleclash's Tinderbox##219451 |q 79232/1 |goto Hallowfall/0 57.88,22.92
|only if level >= 80
step
click Dalian Ironlink's Tinderbox##439789
collect Dalian Ironlink's Tinderbox##219499 |q 79232/2 |goto Hallowfall/0 66.98,20.89
|only if level >= 80
step
talk Keyrra Flamestonge##215527
turnin Those Who Fell##79232 |goto Hallowfall/0 65.45,32.23
accept Honor Your Efforts##81673 |goto Hallowfall/0 65.45,32.23
|only if level >= 80
step
talk Keyrra Flamestonge##215527
Select _"I accept the honor."_ |gossip 121756
Speak with Keyrra |q 81673/1 |goto Hallowfall/0 65.45,32.23
|only if level >= 80
step
Watch the dialogue
talk Keyrra Flamestonge##215527
turnin Honor Your Efforts##81673 |goto Hallowfall/0 65.45,32.23
|only if level >= 80
step
talk Auralia Steelstrike##213145
|tip After completing the Underground Economics quest, you must wait until the next daily reset to accept these quests.
|tip They should be available to you now. |only if not completedq(82218)
accept Spice Up Your Life##82219 |goto Hallowfall/0 42.35,55.00
accept Eagle Eye, Eagle Die##82220 |goto Hallowfall/0 42.35,55.00
|only if level >= 80
stickystart "Collect_Light_Bathed_Lotus_Cuttings"
step
clicknpc Light-Bathed Eagle##223191+
|tip They look like {o}birds flying in the air{}.
|tip They will {o}fly down{} to attack you.
kill Light-Bathed Eagle##223191+
collect 5 Eagle Fillet##222951 |q 82220/1 |goto Hallowfall/0 26.23,55.95
|only if level >= 80
step
label "Collect_Light_Bathed_Lotus_Cuttings"
click Light-Bathed Lotus##444030+
|tip They look like {o}tall plants with large yellow flowers{}.
collect 7 Light-Bathed Lotus Cuttings##222953 |q 82219/1 |goto Hallowfall/0 25.89,56.21
|only if level >= 80
step
talk Auralia Steelstrike##223267
|tip Inside the building.
turnin Spice Up Your Life##82219 |goto Hallowfall/0 44.53,50.82
turnin Eagle Eye, Eagle Die##82220 |goto Hallowfall/0 44.53,50.82
accept Full Dress##82221 |goto Hallowfall/0 44.53,50.82
|only if level >= 80
step
click Incense
|tip Inside the building.
Decorate the House |q 82221/1 |goto Hallowfall/0 44.56,50.81 |count 20
|only if level >= 80
step
click Magnifying Glass
|tip Inside the building.
Decorate the House |q 82221/1 |goto Hallowfall/0 44.60,50.70 |count 40
|only if level >= 80
step
click Military Banner
|tip Inside the building.
Decorate the House |q 82221/1 |goto Hallowfall/0 44.54,50.59 |count 60
|only if level >= 80
step
click Tinderbox
|tip Inside the building.
Decorate the House |q 82221/1 |goto Hallowfall/0 44.69,50.79 |count 80
|only if level >= 80
step
click Lamplighter Banner
|tip Inside the building.
Decorate the House |q 82221/1 |goto Hallowfall/0 44.68,51.05 |count 100
|only if level >= 80
step
talk Auralia Steelstrike##223267
|tip Inside the building.
turnin Full Dress##82221 |goto Hallowfall/0 44.53,50.82
|only if level >= 80
step
talk General Steelstrike##223268
|tip Inside the building.
accept Cooking With Style##82222 |goto Hallowfall/0 44.58,50.68
|only if level >= 80
step
Join the Steelstrikes in the Cookhouse |q 82222/1 |goto Hallowfall/0 43.93,49.73
|tip Inside the building.
|only if level >= 80
step
click Cheese for Throwing
|tip Inside the building.
Throw the Cheese into the Pot |q 82222/3 |goto Hallowfall/0 43.86,49.67
|only if level >= 80
step
click Carrots for Chopping
|tip Inside the building.
Chop the Vegetables |q 82222/2 |goto Hallowfall/0 43.93,49.62
|only if level >= 80
step
click Water
|tip Aim at the {o}Cooking Pot{} nearby.
|tip Use the ability on your action bar.
|tip Inside the building.
Throw Water at the Cooking Pot |q 82222/4 |goto Hallowfall/0 44.05,49.76
|only if level >= 80
step
talk General Steelstrike##224154
|tip Inside the building.
Select _"I don't think that's how"_ |gossip 122519
Talk to General Steelstrike to Start Cooking |q 82222/5 |goto Hallowfall/0 43.95,49.66
|only if level >= 80
step
Watch the dialogue
|tip You {o}don't have to do anything{} except wait, if you don't want to.
|tip If you want to participate, {o}click the objects nearby{} when General Steelstrike tells you to.
|tip Inside the building.
Cook! |q 82222/6 |goto Hallowfall/0 43.92,49.76
|only if level >= 80
step
clicknpc Cooking Pot##224237
|tip Inside the building.
Select _"Good enough!"_ |gossip 122559
Sample the Stew |q 82222/7 |goto Hallowfall/0 43.97,49.68
|only if level >= 80
step
talk General Steelstrike##224154
|tip Inside the building.
turnin Cooking With Style##82222 |goto Hallowfall/0 43.95,49.66
accept A Home Cooked Meal##82223 |goto Hallowfall/0 43.95,49.66
|only if level >= 80
step
click Chair
|tip Inside the building.
Have a Seat at the Steelstrike Dinner Table |q 82223/1 |goto Hallowfall/0 44.61,50.72
|only if level >= 80
step
click Your Stew
|tip In front of you, {o}on the table{}.
|tip Inside the building.
Select _"Eat the stew."_ |gossip 122754
Eat Your Stew |q 82223/2 |goto Hallowfall/0 44.61,50.72
|only if level >= 80
step
talk Vaelisia Steelstrike##225745
|tip Inside the building.
Talk to Vaelisia Steelstrike |q 82223/6 |goto Hallowfall/0 44.58,50.68
|only if level >= 80
step
talk Vaelisia Steelstrike##225745
|tip Inside the building.
turnin A Home Cooked Meal##82223 |goto Hallowfall/0 44.58,50.68
|only if level >= 80
step
Leave the Chair |outvehicle |script VehicleExit()
|tip Use the Exit ability.
|only if level >= 80
step
|next "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"	|only if completedq(79573) and level < 80
|next "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Azj-Kahet (Full Zone)"		|only if not completedq(79573) and level < 80
|next "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\The War Within Campaign"				|only if level >= 80 and completedallq(78546,81689,78630,84022)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Azj-Kahet (Full Zone)",{
author="support@zygorguides.com",
},[[
step
_NOTE:_
Some Side Quests Require Level 80
|tip This guide contains {o}side quests{} that {o}require level 80{} to complete.
|tip You will {o}not be shown these quests{}, since you are not level 80.
|tip Once you {o}reach level 80{}, to complete these quests, {o}load this guide again and start from the beginning{}.
{o}It is Very Important to Avoid Accepting Quests that Aren't in this Guide{}
|tip Certain quests, when completed out of order, can permanently cause breadcrumb quests to become incomplete.
|tip This could cause issues with your quest flow.
|tip Disable automatically accepting all quests and avoid accepting quests from NPCs when not directed to.
Click Here to Continue |confirm
|only if level < 80
step
Take the Burrow to Azj-Kahet |complete zone("Azj-Kahet") |goto Dornogal/0 63.61,52.55 |q 83552
|tip Walk into the {o}swirling portal{}.
|only if haveq(83552) or completedq(83552)
step
talk Faerin##211699
|tip On the air ship.
turnin Azj-Kahet##83552 |goto Azj-Kahet/0 29.39,42.20 |only if haveq(83552) or completedq(83552)
accept Heroes Never Die##78350 |goto Azj-Kahet/0 29.39,42.20
step
talk Alleria Windrunner##211752
|tip On the air ship.
accept Chasing the Light##78384 |goto Azj-Kahet/0 29.35,42.64
step
talk Kal Smoulderbrow##217133
|tip On the web bridge.
accept The Second Front##79574 |goto Azj-Kahet/0 29.44,41.65
stickystart "Rescue_Wounded_Aeroknights"
step
click Airship Rubble##411102
|tip You may be attacked.
collect Crumpled Lion Gauntlet##211774 |q 78384/1 |goto Azj-Kahet/0 29.14,44.62
step
click Flare Box
Signal a Landing Field |q 79574/1 |goto Azj-Kahet/0 27.61,45.04
step
Watch the dialogue
talk General Steelstrike##212076
turnin The Second Front##79574 |goto Azj-Kahet/0 27.55,45.13
accept That Airspace is Mine(d)!##79579 |goto Azj-Kahet/0 27.55,45.13
accept Offensive Counter##79580 |goto Azj-Kahet/0 27.55,45.13
stickystart "Slay_Nerubian_Silk_Balloon_Mines"
stickystart "Slay_Nerubians_79580"
step
click Well-Bleached Bones##411104
|tip You may be attacked.
collect Bleached Bones##211775 |q 78384/2 |goto Azj-Kahet/0 26.55,43.02
step
click Weathered Cloth##411106
collect Scrap of Weathered Fabric##211783 |q 78384/3 |goto Azj-Kahet/0 32.55,38.85
step
label "Slay_Nerubian_Silk_Balloon_Mines"
Slay #5# Nerubian Silk Balloon Mines |q 79579/1 |goto Azj-Kahet/0 30.22,44.48
|tip {o}Fly through{} the {o}glowing rings{} above {o}floating humans{} around this area.
|tip You will gain a {o}temporary buff{}.
|tip With the buff, fly through {o}Nerubian Silk Balloon Mines{}.
|tip They look like {o}large floating spiked web balloons{} attached to strings on the ground.
'|clicknpc Arathi War Priest##219950
step
label "Rescue_Wounded_Aeroknights"
clicknpc Wounded Aeroknight##214767+
|tip They look like {o}humans{} laying on the ground.
Rescue #12# Wounded Aeroknights |q 78350/1 |goto Azj-Kahet/0 29.56,42.03
step
label "Slay_Nerubians_79580"
Kill enemies around this area
Slay #12# Nerubians |q 79580/1 |goto Azj-Kahet/0 28.37,39.61
'|kill Kaheti Silksinger##215711, Kaheti War-Weaver##215708, Kaheti Preysnatcher##215170, Slam Scavenger##217997, Skitterling##217991, Kaheti Preysnatcher##217845, Nerubian Abductor##211742
step
talk Alleria Windrunner##211752
turnin Chasing the Light##78384 |goto Azj-Kahet/0 32.47,47.19
You may also find her at [29.51,42.52]
step
talk Faerin##211699
turnin Heroes Never Die##78350 |goto Azj-Kahet/0 32.48,47.14
accept Friends in Low Places##78348 |goto Azj-Kahet/0 32.48,47.14
step
talk General Steelstrike##212076
turnin That Airspace is Mine(d)!##79579 |goto Azj-Kahet/0 27.55,45.13
turnin Offensive Counter##79580 |goto Azj-Kahet/0 27.55,45.13
step
Jump into the Breathing Pit |q 78348/1 |goto Azj-Kahet/0 33.37,55.94
|tip Fly down into the hole to enter the cave.
step
Find the Mysterious Protector |q 78348/2 |goto Azj-Kahet/0 32.99,56.33
|tip Inside the cave.
step
talk Orweyna##215944
|tip Inside the cave.
turnin Friends in Low Places##78348 |goto Azj-Kahet/0 32.99,56.33
accept For Naught, So Vial##78352 |goto Azj-Kahet/0 32.99,56.33
accept Fear the Old Blood##78353 |goto Azj-Kahet/0 32.99,56.33
stickystart "Cleanse_The_Breathing_Pit"
step
click Nerubian Extractor+
|tip They look like {o}red orbs in pedestals{} stuck to walls.
|tip {o}Follow the spiral path up{} toward this location as you work on the quest.
|tip Inside the cave.
Destroy #8# Nerubian Extractors |q 78352/1 |goto Azj-Kahet/0 35.58,58.08
step
label "Cleanse_The_Breathing_Pit"
Kill enemies around this area
|tip {o}Follow the spiral path up{} toward this location as you work on the quest. |notinsticky
|tip Inside the cave. |notinsticky
Cleanse the Breathing Pit |q 78353/1 |goto Azj-Kahet/0 35.58,58.08
'|kill Horrid Effusia##211866, Blackblood Coalescence##215205
step
Follow the path up and leave the cave |goto Azj-Kahet/0 35.58,58.08 < 20 |walk |only if subzone("Breathing Pit") and indoors()
Watch the dialogue
talk Orweyna##215113
turnin For Naught, So Vial##78352 |goto Azj-Kahet/0 35.74,58.19
turnin Fear the Old Blood##78353 |goto Azj-Kahet/0 35.74,58.19
accept Alone in the Dark##79139 |goto Azj-Kahet/0 35.74,58.19
step
talk Greenspeaker Na'layro##211652
accept Boom or Blight##78897 |goto Azj-Kahet/0 42.27,42.50
accept Intention vs Instinct##78898 |goto Azj-Kahet/0 42.27,42.50
stickystart "Slay_Worms_Of_The_Wormlands"
step
accept Heeeelllp!!!##78901 |goto Azj-Kahet/0 41.42,41.88
|tip You will accept this quest automatically.
|tip Inside the cave.
step
clicknpc Skedgit Cinderbangs##214076
|tip Inside the cave.
Rescue Skedgit Cinderbangs |q 78901/1 |goto Azj-Kahet/0 40.67,39.95
step
talk Skedgit Cinderbangs##214168
|tip Inside the cave.
turnin Heeeelllp!!!##78901 |goto Azj-Kahet/0 40.74,39.73
accept Delegated Dig##78902 |goto Azj-Kahet/0 40.74,39.73
step
Enter the hole in the ground inside the cave |goto Azj-Kahet/0 39.94,39.96 < 15 |walk
Continue further down |goto Azj-Kahet/0 39.90,40.97 < 10 |walk
kill Wormcaller Iz'tikrine##214153
|tip Downstairs inside the cave.
collect Singing Stone##211412 |q 78898/1 |goto Azj-Kahet/0 38.95,42.24
step
click Sivstone Deposit##414113+
|tip They look like {o}grey mining nodes{}.
|tip You can find them in {o}small side burrows{} throughout the cave.
collect 25 Sivstone Chunk##211415 |q 78902/1 |goto Azj-Kahet/0 39.81,38.86
You can find more burrows around:
[Azj-Kahet/0 38.55,39.62]
[Azj-Kahet/0 40.74,41.64]
step
label "Slay_Worms_Of_The_Wormlands"
Kill enemies around this area
|tip Inside the cave. |notinsticky
Slay #10# Worms of the Wormlands |q 78897/1 |goto Azj-Kahet/0 41.92,42.40
'|kill Razormouth Devourer##214081, Wild Razormouth##213922, Chasm Maker##214453, Ahg'zagall##214151
step
talk Skedgit Cinderbangs##214168
|tip Inside the cave.
turnin Delegated Dig##78902 |goto Azj-Kahet/0 40.74,39.73
accept Entrepreneur, Inc.##79349 |goto Azj-Kahet/0 40.74,39.73
step
Leave the cave |goto Azj-Kahet/0 41.98,42.44 < 20 |walk |only if subzone("The Wormlands")
talk Greenspeaker Na'layro##211652
turnin Boom or Blight##78897 |goto Azj-Kahet/0 42.27,42.51
turnin Intention vs Instinct##78898 |goto Azj-Kahet/0 42.27,42.51
step
Meet Orweyna at the Eye of Ansurek |q 79139/1 |goto Azj-Kahet/0 42.32,54.15
step
talk Orweyna##219109
Select _"Where do we go from here?"_ |gossip 121150
Investigate the Overlook |q 79139/2 |goto Azj-Kahet/0 44.29,57.22
step
Watch the dialogue
talk Spindle##216213
turnin Alone in the Dark##79139 |goto Azj-Kahet/0 44.25,56.77
accept A Guiding Thread##78354 |goto Azj-Kahet/0 44.25,56.77
step
talk Courier Nailen##208384
fpath Wildcamp Or'lay |goto Azj-Kahet/0 23.14,51.14
step
talk Ysabel Gleamgaard##227222
accept Tense Recovery##83628 |goto Azj-Kahet/0 23.62,52.18
step
talk On'hiea##217958
Select _"It seems like things are strained between you and the Arathi. What can they do?"_ |gossip 123219
Select _"Okay then."_ |gossip 123220
Speak with On'hiea |q 83628/1 |goto Azj-Kahet/0 23.20,52.40
step
talk Ney'leia##215724
Select _"It seems like things are strained between you and the Arathi. What can they do?"_ |gossip 123221
Select _"I'll find an ancient."_ |gossip 123222
Speak with Ney'leia |q 83628/2 |goto Azj-Kahet/0 23.05,53.24
step
talk Goehi##227224
|tip {o}Fly up{} to find him.
turnin Tense Recovery##83628 |goto Azj-Kahet/0 23.94,40.73
accept Ancient Respite##83629 |goto Azj-Kahet/0 23.94,40.73
step
kill 15 Feasting Mite##227280 |q 83629/1 |goto Azj-Kahet/0 24.01,41.99
step
talk Goehi##227224
turnin Ancient Respite##83629 |goto Azj-Kahet/0 23.94,40.73
accept Rings of Memory##83632 |goto Azj-Kahet/0 23.94,40.73
step
talk Ney'leia##215724
|tip Fly back down to Wildcamp Or'lay.
turnin Rings of Memory##83632 |goto Azj-Kahet/0 23.05,53.25
accept Open Communications##83639 |goto Azj-Kahet/0 23.05,53.25
step
talk Ysabel Gleamgaard##227222
Select _"Ney'leia says they are not offended."_ |gossip 123232
Select _"Of course."_ |gossip 123233
Speak to Ysabel |q 83639/1 |goto Azj-Kahet/0 23.62,52.18
step
talk Baer##227185
Select _" Excuse me, we need some herbs behind you. Do you mind moving so we can reach them?"_ |gossip 123235
Move Baer |q 83639/2 |goto Azj-Kahet/0 23.73,52.54
step
talk Ysabel Gleamgaard##227222
turnin Open Communications##83639 |goto Azj-Kahet/0 23.62,52.18
step
Follow Spindle Towards the City |q 78354/1 |goto Azj-Kahet/0 47.14,53.01
'|clicknpc Spindle##216215
step
extraaction Weaver's Wile##430831
Use 'Weaver's Wile' |q 78354/2 |goto Azj-Kahet/0 47.14,53.01
|tip Use the {o}Weaver's Wile{} ability.
|tip It appears as a button on the screen.
step
Follow Spindle Across the Bridge |q 78354/3 |goto Azj-Kahet/0 48.47,50.35
|tip You will be attacked.
'|clicknpc Spindle##216216
step
Follow Spindle into the Cliffs |q 78354/4 |goto Azj-Kahet/0 49.47,46.79
'|clicknpc Spindle##216217
step
talk Widow Arak'nai##207471
turnin A Guiding Thread##78354 |goto Azj-Kahet/0 55.73,43.84
accept The Tangled Web##78392 |goto Azj-Kahet/0 55.73,43.84
accept A Seeming Respite##78393 |goto Azj-Kahet/0 55.73,43.84
step
talk Widow Arak'nai##207471
Select _"Tell me about yourself."_ |gossip 122860
Learn About the Weaver |q 78392/1 |goto Azj-Kahet/0 55.73,43.84
step
talk Widow Arak'nai##207471
Select _"Tell me about the enemy forces."_ |gossip 122859
Learn About the Sureki Forces |q 78392/2 |goto Azj-Kahet/0 55.73,43.84
step
talk Widow Arak'nai##207471
Select _"Tell me about the Ascended."_ |gossip 122858
Learn About the Ascended |q 78392/3 |goto Azj-Kahet/0 55.73,43.84
step
talk Widow Arak'nai##207471
Select _"Tell me about the Queen's inner circle."_ |gossip 122863
Learn About the Queen's Allies |q 78392/4 |goto Azj-Kahet/0 55.73,43.84
step
talk Widow Arak'nai##207471
turnin The Tangled Web##78392 |goto Azj-Kahet/0 55.73,43.84
step
talk Linny Leadfinger##223754
accept Making the Underworld Go Round##84664 |goto Azj-Kahet/0 55.77,43.74
step
Locate the Repair Vendor |q 78393/2 |goto Azj-Kahet/0 56.88,41.78
step
Locate the Innkeeper |q 78393/3 |goto Azj-Kahet/0 56.95,38.79
|tip Inside the building.
step
talk Yamas the Provider##228184
Select _"What do you have for sale?"_ |gossip 123902
buy Dubious Vial of Vigor##228913 |q 84664/1 |goto Azj-Kahet/0 55.38,41.50
step
talk Linny Leadfinger##223754
turnin Making the Underworld Go Round##84664 |goto Azj-Kahet/0 55.77,43.74
step
Locate the Flight Master |q 78393/1 |goto Azj-Kahet/0 56.88,47.04
step
talk Wings of the Widow##207470
fpath Weaver's Lair |goto Azj-Kahet/0 56.88,47.04
step
talk Widow Arak'nai##207471
turnin A Seeming Respite##78393 |goto Azj-Kahet/0 55.73,43.84
accept The Weaver's Gift##78233 |goto Azj-Kahet/0 55.73,43.84
step
talk Great Hexer Ohodo##215349
accept Infested Infestation##79174 |goto Azj-Kahet/0 57.78,19.77
accept Prisoner Preservation##79355 |goto Azj-Kahet/0 57.78,19.77
stickystart "Slay_Spore_Afflicted_Beasts"
step
clicknpc Jeti Amberhoof##216988
Find the Expedition Member |q 79355/1 |goto Azj-Kahet/0 54.85,18.66 |count 1
step
clicknpc Drog Skullbreaker##215406
Find the Expedition Member |q 79355/1 |goto Azj-Kahet/0 54.93,21.23 |count 2
step
clicknpc Aemara##216986
Find the Expedition Member |q 79355/1 |goto Azj-Kahet/0 53.91,21.78 |count 3
step
clicknpc Mimbihi##216906
Find the Expedition Member |q 79355/1 |goto Azj-Kahet/0 55.29,24.01 |count 4
step
label "Slay_Spore_Afflicted_Beasts"
Kill enemies around this area
Slay #12# Spore-afflicted Beasts |q 79174/1 |goto Azj-Kahet/0 55.16,20.60
'|kill Spored Stinger##216300, Spored Skitterer##216844, Spored Gnasher##215386, Spored Threadling##215532
step
talk Great Hexer Ohodo##215349
turnin Infested Infestation##79174 |goto Azj-Kahet/0 57.78,19.77
turnin Prisoner Preservation##79355 |goto Azj-Kahet/0 57.78,19.77
accept Antifungal Firestarter##79356 |goto Azj-Kahet/0 57.78,19.77
accept Removing the Cap##79357 |goto Azj-Kahet/0 57.78,19.77
stickystart "Burn_Invasive_Fungal_Pods"
step
Enter the underground cave |goto Azj-Kahet/0 55.23,19.14 < 30 |walk
kill Agaricus Festerbloom##215545 |q 79357/1 |goto Azj-Kahet/0 56.62,16.96
|tip Inside the underground cave.
step
label "Burn_Invasive_Fungal_Pods"
clicknpc Invasive Fungal Pod##217553+
|tip They look like {o}large mushrooms{}.
|tip Inside the underground cave. |notinsticky
Burn #8# Invasive Fungal Pods |q 79356/1 |goto Azj-Kahet/0 55.23,19.14
step
Leave the underground cave |goto Azj-Kahet/0 55.23,19.14 < 30 |walk |only if subzone("Pillar-nest Vosh") and indoors()
talk Great Hexer Ohodo##215349
turnin Antifungal Firestarter##79356 |goto Azj-Kahet/0 57.78,19.77
turnin Removing the Cap##79357 |goto Azj-Kahet/0 57.78,19.77
step
Locate the Weaver's Gift |q 78233/1 |goto Azj-Kahet/0 59.37,19.36
step
talk Faerin Lothar##211409
turnin The Weaver's Gift##78233 |goto Azj-Kahet/0 59.37,19.36
accept Rations and Revelations##80399 |goto Azj-Kahet/0 59.37,19.36
accept Where the Wild Things Camp##83306 |goto Azj-Kahet/0 59.37,19.36
step
click Arathi Rations
Distribute Arathi Rations |q 80399/1 |goto Azj-Kahet/0 59.38,19.23 |count 1
step
talk Courier Aidal##216973
fpath Faerin's Advance |goto Azj-Kahet/0 60.00,18.70
step
click Arathi Rations
Distribute Arathi Rations |q 80399/1 |goto Azj-Kahet/0 59.02,19.04 |count 2
step
click Arathi Rations
Distribute Arathi Rations |q 80399/1 |goto Azj-Kahet/0 58.76,20.00 |count 3
step
talk Faerin Lothar##211409
turnin Rations and Revelations##80399 |goto Azj-Kahet/0 59.37,19.36
accept Scrappy Straggler##78236 |goto Azj-Kahet/0 59.37,19.36
step
Find the Straggler |q 78236/1 |goto Azj-Kahet/0 63.04,27.15
step
talk Flynn Fairwind##220051
Select _"<Look where Flynn is indicating.>"_ |gossip 121919
Talk to Flynn |q 78236/2 |goto Azj-Kahet/0 63.04,27.15
step
talk Flynn Fairwind##220051
turnin Scrappy Straggler##78236 |goto Azj-Kahet/0 63.04,27.15
accept Force Your Way##78234 |goto Azj-Kahet/0 63.04,27.15
step
_Next to you:_
talk Flynn Fairwind##211444
accept Strategic Edge##78383
stickystart "Slay_Kaheti_Forces"
step
click Crate of Emptied Vials##441587
|tip Up on the platform.
Gather the Nerubian Intelligence |q 78383/2 |goto Azj-Kahet/0 62.87,27.83 |count 1
step
click Military Correspondence##441586
|tip On the upper platform.
Gather the Nerubian Intelligence |q 78383/2 |goto Azj-Kahet/0 60.99,28.44 |count 2
step
Enter the cave |goto Azj-Kahet/0 64.75,29.64 < 15 |walk
click Confiscated Weapons##441588
collect Flynn's Blades##211870 |q 78383/1 |goto Azj-Kahet/0 66.53,31.38
step
click Burning Venom Flask##441585
Gather the Nerubian Intelligence |q 78383/2 |goto Azj-Kahet/0 67.68,28.24 |count 3
step
_Next to you:_
talk Flynn Fairwind##211444
turnin Strategic Edge##78383
step
label "Slay_Kaheti_Forces"
Kill enemies around this area
Slay #8# Kaheti Forces |q 78234/1 |goto Azj-Kahet/0 63.97,28.89
'|kill Kaheti Skirmisher##214940, Kaheti Overseer##214941, Kaheti Threadmancer##214939, Dependable Skitterling##222153, Stalwart Hauler##214935
step
_Next to you:_
talk Flynn Fairwind##211444
turnin Force Your Way##78234
accept Let Fly!##78237
step
click Inconspicuous Box
Inspect the Inconspicuous Box |q 78237/1 |goto Azj-Kahet/0 62.79,31.10
step
Watch the dialogue
Begin Flying to Siegehold |invehicle |goto Azj-Kahet/0 62.79,31.10 |q 78237
step
Fly to Siegehold |outvehicle |goto Azj-Kahet/0 45.39,20.29 |q 78237 |notravel
step
talk Anub'azal##217330
|tip Inside the building.
turnin Let Fly!##78237 |goto Azj-Kahet/0 45.50,19.69
accept Not Quite Dead##79625 |goto Azj-Kahet/0 45.50,19.69
step
talk Monte Gazlowe##219156
|tip Inside the building.
Select _"<Nudge Gazlowe.>"_ |gossip 121784
Find Something Useful |q 79625/1 |goto Azj-Kahet/0 45.18,20.21
step
talk Anub'azal##217330
|tip Inside the building.
turnin Not Quite Dead##79625 |goto Azj-Kahet/0 45.50,19.69
accept I Think I'm a Drone Now##79175 |goto Azj-Kahet/0 45.50,19.69
step
extraaction Apply Pheromones##445199
Apply Anub'azal's Mark |q 79175/1 |goto Azj-Kahet/0 45.32,19.84
|tip Use the {o}Apply Pheromones{} ability.
|tip It appears as a button on the screen.
|tip Inside the building.
step
talk Anub'azal##217330
|tip Inside the building.
turnin I Think I'm a Drone Now##79175 |goto Azj-Kahet/0 45.50,19.69
accept Specific Personages##78249 |goto Azj-Kahet/0 45.50,19.69
accept General Admission##78250 |goto Azj-Kahet/0 45.50,19.69
step
_NOTE:_
During the Next Steps
|tip {o}Avoid enemies with blue circles{} above their heads.
|tip They can {o}see through{} your disguise.
Click Here to Continue |confirm |q 78249
step
click Siegehold Records
|tip It looks like a {o}rolled up scroll in a hanging shelf{}.
|tip Inside the building.
collect Zev'kall's Attrition Log##217165 |q 78250/1 |goto Azj-Kahet/0 43.24,25.32
step
kill Hevo'myk##211591 |q 78249/3 |goto Azj-Kahet/0 44.51,27.66
step
kill Mi'thk##211582 |q 78249/1 |goto Azj-Kahet/0 46.74,28.69
step
kill Diu'mik##211564 |q 78249/2 |goto Azj-Kahet/0 48.93,23.82
|tip Inside the building.
step
Enter the building |goto Azj-Kahet/0 45.60,21.80 < 15 |walk
talk Anub'azal##217330
|tip Inside the building.
turnin Specific Personages##78249 |goto Azj-Kahet/0 45.50,19.69
turnin General Admission##78250 |goto Azj-Kahet/0 45.50,19.69
accept Stolen Influence##78254 |goto Azj-Kahet/0 45.50,19.69
step
talk Monte Gazlowe##211399
|tip Inside the building.
accept Dalaran's Most Distressed##78251 |goto Azj-Kahet/0 45.33,19.85
step
click Gazlowe's Detonator
Assist Gazlowe |q 78251/3 |goto Azj-Kahet/0 45.14,23.06
step
talk High Arcanist Savor##221806
Select _"Hello?"_ |gossip 121832
Select _"Have you seen Anduin?"_ |gossip 121834
Select _"Meet up at the transport wagons."_ |gossip 121833
Free the Caged Prisoners |q 78251/2 |goto Azj-Kahet/0 43.99,24.86
'|talk High Arcanist Savor##221757
step
talk Wriggling Web##221722
Select _"I'm here to rescue you. Pretend you're part of the next prisoner convoy!"_ |gossip 121812
Free the Webbed Prisoners |q 78251/1 |goto Azj-Kahet/0 47.22,26.94
step
kill Tij'allet##215600
|tip Inside the building.
collect Zev'kall's Pheromone Emitter##212528 |q 78254/1 |goto Azj-Kahet/0 48.54,19.95
step
talk Monte Gazlowe##215413
turnin Dalaran's Most Distressed##78251 |goto Azj-Kahet/0 47.39,23.90
turnin Stolen Influence##78254 |goto Azj-Kahet/0 47.39,23.90
accept Just Act Casual##78255 |goto Azj-Kahet/0 47.39,23.90
step
talk Monte Gazlowe##215413
Select _"I am ready."_ |gossip 121494
Tell Gazlowe You're Ready |q 78255/1 |goto Azj-Kahet/0 47.39,23.90
step
talk Siegehold Gateminder##215419
Select _"I have General Anub'azal's pheromone mark on me, let us pass."_ |gossip 120311
Speak to the Gateminder |q 78255/2 |goto Azj-Kahet/0 48.16,25.35
step
Watch the dialogue
Meet the Convoy Outside |q 78255/3 |goto Azj-Kahet/0 48.95,26.63
step
talk Monte Gazlowe##215845
turnin Just Act Casual##78255 |goto Azj-Kahet/0 51.80,25.77
accept The General's Consensus##78256 |goto Azj-Kahet/0 51.80,25.77
step
click Inconspicuous Box
collect Zev'kall's Pheromone Emitter##212528 |q 78256/1 |goto Azj-Kahet/0 51.78,25.87
step
talk Widow Arak'nai##207471
turnin The General's Consensus##78256 |goto Azj-Kahet/0 55.73,43.84
accept A Most Intriguing Invitation##78226 |goto Azj-Kahet/0 55.73,43.84
step
talk Linny Leadfinger##223754
accept Trade Partners##79651 |goto Azj-Kahet/0 55.77,43.74
accept A Silken Thread##83324 |goto Azj-Kahet/0 55.77,43.74
step
extraaction Apply Pheromones##444978
Apply the Pheromones |q 78226/1 |goto Azj-Kahet/0 55.99,43.51
|tip Use the {o}Apply Pheromones{} ability.
|tip It appears as a button on the screen.
step
talk Anub'okki##224729
accept Bountiful Beetles##83325 |goto Azj-Kahet/0 55.89,42.13
step
clicknpc Vizier's Personal Swarmite##219239
|tip You can {o}skip ahead{}, if you {o}prefer to fly yourself{}.
Take the Vizier's Flyer |q 78226/3 |goto Azj-Kahet/0 55.63,44.30
step
Begin Flying to the Burrows |invehicle |goto Azj-Kahet/0 55.63,44.30 |q 78226
step
Fly to the Burrows |outvehicle |goto Nerub'ar/0 67.19,25.01 |q 78226 |notravel
step
Arrive in the Burrows |q 78226/2 |goto Nerub'ar/0 67.19,25.01
step
Meet The Vizier |q 78226/4 |goto Nerub'ar/0 67.12,31.50
|tip Inside the building.
step
Watch the dialogue
talk Anduin Wrynn##211351
|tip Inside the building.
turnin A Most Intriguing Invitation##78226 |goto Nerub'ar/0 67.12,31.50
accept Into a Skittering City##78228 |goto Nerub'ar/0 67.12,31.50
step
talk Executor Nizrek##211499
|tip Inside the building.
Select _"The Weaver wants to take out Xal'atath and free Queen Ansurek from her influence."_ |gossip 121538
Speak with the Vizier |q 78228/1 |goto Nerub'ar/0 67.46,32.44
step
extraaction Apply Pheromones##441852
Have Tulumun Apply the Pheromones |q 78228/2 |goto Nerub'ar/0 66.99,32.60
|tip Use the {o}Apply Pheromones{} ability.
|tip It appears as a button on the screen.
|tip Inside the building.
step
talk Executor Nizrek##211499
|tip Inside the building.
turnin Into a Skittering City##78228 |goto Nerub'ar/0 67.47,32.45
accept Rewriting the Rewritten##78232 |goto Nerub'ar/0 67.47,32.45
step
Watch the dialogue
|tip Inside the building.
talk Anduin Wrynn##211351
accept Like a Spider on the Wall##78231 |goto Nerub'ar/0 66.90,31.91
step
_NOTE:_
During the Next Steps
|tip {o}Avoid enemies with blue circles{} above their heads.
|tip They can {o}see through{} your disguise.
Click Here to Continue |confirm |q 78231
step
talk Mr. Sunflower##223723
|tip Inside the building.
accept Loss of Limb##82340 |goto Nerub'ar/0 63.33,37.46
step
talk Vi'azl##224352
|tip Inside the building.
Select _"I'm just here to talk."_ |gossip 122842
Speak with Vi'azl |q 82340/1 |goto Nerub'ar/0 63.44,38.62
step
clicknpc Vi'azl##224352
|tip Inside the building.
Drink Threat Reduction Potion |q 82340/2 |goto Nerub'ar/0 63.32,36.68
step
talk Vi'azl##224352
|tip Inside the building.
Select _"I'm tiny now. Is this better?"_ |gossip 122844
Comfort Vi'azl |q 82340/3 |goto Nerub'ar/0 63.44,38.61
step
Watch the dialogue
talk Vi'azl##225438
|tip He will run to this location.
Select _"Tell us what's going on, Vi'azl."_ |gossip 122846
Speak with Vi'azl |q 82340/4 |goto Nerub'ar/0 54.87,39.20
step
talk Mr. Sunflower##223723
turnin Loss of Limb##82340 |goto Nerub'ar/0 55.03,39.14
accept Setting Boundaries##83057 |goto Nerub'ar/0 55.03,39.14
step
click Shadecaster
Overwrite the Shadecasters |q 78232/1 |goto Nerub'ar/1 58.19,28.97 |count 1
step
talk Nana Lek'kel##222139
Select _"Me? Why?"_ |gossip 120653
Select _"<Step away.>"_ |gossip 120657
Attempt to Meet Meesk |q 78231/5 |goto Nerub'ar/1 62.11,20.72
step
talk Arax'ne##217356
accept Searching the Web##79630 |goto Nerub'ar/1 64.08,15.92
step
click Shadecaster
Overwrite the Shadecasters |q 78232/1 |goto Nerub'ar/1 60.93,18.81 |count 2
step
kill Vek'kix##225425 |q 83057/1 |goto Nerub'ar/1 57.89,19.93
|tip He walks around this area.
|tip Inside the building.
step
Listen to the Sureki Crier |q 78231/1 |goto Nerub'ar/1 54.84,20.29
step
click Shadecaster
|tip Inside the building.
Overwrite the Shadecasters |q 78232/1 |goto Nerub'ar/1 53.11,16.00 |count 3
step
Observe the Tailorers |q 78231/4 |goto Nerub'ar/1 49.72,17.41
step
click Catalogue of Cagables
|tip Inside the building.
Read the Twitchery Catalogue |q 78231/3 |goto Nerub'ar/1 43.42,16.55
step
Discover the Cuisine Stalls |q 78231/2 |goto Nerub'ar/1 49.05,26.54
step
talk Klaskin##217355
Select _"Are you Arax'ne's husband?"_ |gossip 123185
Speak with Klaskin |q 79630/1 |goto Nerub'ar/1 47.92,13.22
step
talk Klaskin##217355
turnin Searching the Web##79630 |goto Nerub'ar/1 47.92,13.22
accept Klaskin's Great Escape##79631 |goto Nerub'ar/1 47.92,13.22
step
_NOTE:_
During the Next Step
|tip As you walk, use the {o}Coast is Clear!{} ability on {o}Klaskin{}.
|tip {o}Avoid guard enemies with blue circles{} above their heads.
|tip He will {o}follow you{}, so make sure to keep him away from the guards.
|tip You will {o}Lead him{} to a certain location.
Click Here to Continue |confirm |q 79631
step
Avoid the guards as Klaskin follows you |goto Nerub'ar/1 49.60,16.92 < 30 |walk
Run up the stairs as Klaskin follows you |goto Nerub'ar/1 52.64,13.70 < 15 |walk
Run up the stairs as Klaskin follows you |goto Nerub'ar/1 57.13,16.00 < 15 |walk
extraaction Coast is Clear!##442196
Return Klaskin to His Wife |q 79631/1 |goto Nerub'ar/1 63.51,16.42
|tip As you walk, use the {o}Coast is Clear!{} ability on {o}Klaskin{}.
|tip {o}Avoid guard enemies with blue circles{} above their heads.
|tip He will {o}follow you{}, so make sure to keep him away from the guards.
|tip {o}Lead him{} to this location.
|tip Outside, behind the building.
'|clicknpc Klaskin##220377
step
talk Arax'ne##217356
turnin Klaskin's Great Escape##79631 |goto Nerub'ar/1 64.09,15.92
step
clicknpc Klaskin##220690
accept Don't Cry for Me, Azj-Kahet##80502 |goto Nerub'ar/1 63.86,16.26
step
kill Arax'ne##217465 |q 80502/1 |goto Nerub'ar/1 62.59,15.46
|tip Inside the building.
step
click Klaskin's Chest##433914
|tip Inside the building.
turnin Don't Cry for Me, Azj-Kahet##80502 |goto Nerub'ar/1 63.05,15.04
step
talk Mr. Sunflower##223723
turnin Setting Boundaries##83057 |goto Nerub'ar/0 55.03,39.12
step
talk Tekazza of the Aimless Few##209330
|tip On the ground.
fpath The Burrows |goto Nerub'ar/0 53.98,44.33
step
talk Alleria Windrunner##211375
|tip Up on the platform.
turnin Rewriting the Rewritten##78232 |goto Nerub'ar/1 54.97,45.84
step
talk Anduin Wrynn##217386
|tip Up on the platform.
turnin Like a Spider on the Wall##78231 |goto Nerub'ar/1 55.29,46.06
accept Kaheti Hospitality##78244 |goto Nerub'ar/1 55.29,46.06
step
talk Anduin Wrynn##217386
|tip Up on the platform.
Select _"Yes. I'm ready to observe the Ascendance Day speech."_ |gossip 120665
Speak with Anduin |q 78244/1 |goto Nerub'ar/1 55.29,46.06
step
Watch the dialogue
Watch Queen Sureki's Speech |q 78244/2 |goto Nerub'ar/1 55.29,46.06
step
Begin the Scenario |scenariostart |q 78244
step
Kill the enemies that attack
|tip Move forward {o}straight ahead{} to begin the enemy attack.
|tip {o}Threadmaestro Fothis{} will attack you {o}after{} you defeat the enemies.
kill Threadmaestro Fothis##216541 |scenariogoal 1/65266 |q 78244
step
click Web Blockade
|tip {o}Follow{} your allies.
|tip It appears on your {o}minimap{} as a {o}yellow dot{}.
Destroy the Web Wall |scenariogoal 1/65318 |q 78244
step
kill Swarm-Maven Donmiss##216578 |scenariogoal 2/65267 |q 78244
|tip {o}Avoid the green circles{} on the ground as you run to her.
|tip She appears on your {o}minimap{} as a {o}yellow dot{}.
step
Watch the dialogue
|tip {o}Follow{} your allies.
clicknpc Vizier's Getaway Flyer##216581
|tip They appears on your {o}minimap{} as {o}yellow dots{}.
Reach the Vizier's Flyers |scenariogoal 3/65268 |q 78244
step
kill Kx##216582
Slay Kx, Fang of the Queen |scenariogoal 4/65269 |q 78244
step
Escape from the Burrows |q 78244/3
|tip {o}Follow{} your allies.
|tip {o}Jump off the platform{} to escape.
step
Watch the dialogue
talk Anduin Wrynn##217386
|tip He walks to this location.
turnin Kaheti Hospitality##78244 |goto Azj-Kahet/0 60.63,68.89
step
talk Alleria Windrunner##217385
accept What We Still Have##78248 |goto Azj-Kahet/0 60.63,68.78
step
talk Al'kubian##217565
accept A Fin of Every Kind##79710 |goto Azj-Kahet/0 59.99,66.17
stickystart "Fill_The_Innards_Sack"
step
Kill enemies around this area
collect Familiar-Looking Appendage##214504 |n
accept That's Pretty Gross##79711 |goto Azj-Kahet/0 56.98,71.39
'|kill Gutter Scarfer##217717, Drooling Salamuncher##217720, Adolchomper##217724, Gutter Gorger##217718
step
label "Fill_The_Innards_Sack"
Kill enemies around this area
|tip {o}Loot{} them for {o}various items{}.
click Dead Kobyss+
|tip They look like {o}fish people{} laying on the ground.
Fill the Innards Sack |q 79710/1 |goto Azj-Kahet/0 56.98,71.39
'|kill Gutter Scarfer##217717, Drooling Salamuncher##217720, Adolchomper##217724, Gutter Gorger##217718
step
talk Al'kubian##217565
turnin A Fin of Every Kind##79710 |goto Azj-Kahet/0 60.00,66.17
turnin That's Pretty Gross##79711 |goto Azj-Kahet/0 60.00,66.17
accept Moonlight Gutter Swim##79713 |goto Azj-Kahet/0 60.00,66.17
accept Rescuing the Food##79714 |goto Azj-Kahet/0 60.00,66.17
step
talk Al'kubian##217565
Select _"<See Al'kubian's potions.>"_ |gossip 122393
buy Atomized Salien Slime##223287+ |n
|tip Buy {o}a few{} of them.
|tip They will help you {o}complete the quests faster{}.
Purchase Atomized Salien Slime |q 79714/1 |goto Azj-Kahet/0 60.08,66.06
stickystart "Rescue_Captured_Victims"
step
use the Atomized Salien Slime##223287+
|tip Use them to {o}swim faster{}.
kill Liverseeker##217744
|tip Underwater.
collect Liverseeker's Intestines##222924 |q 79713/1 |goto Azj-Kahet/0 59.21,69.43
step
use the Atomized Salien Slime##223287+
|tip Use them to {o}swim faster{}.
kill Leg Chewer##217743
|tip He swims around this area.
|tip Underwater.
collect Leg Chewers' Stomach##222926 |q 79713/2 |goto Azj-Kahet/0 56.57,67.87
step
label "Rescue_Captured_Victims"
use the Atomized Salien Slime##223287+ |notinsticky
|tip Use them to {o}swim faster{}. |notinsticky
clicknpc Captured Kaheti##217728+
|tip They look like {o}large insects caught in bubbles{}.
|tip Underwater. |notinsticky
Rescue #5# Captured Victims |q 79714/2 |goto Azj-Kahet/0 57.91,68.08
step
talk Al'kubian##217565
turnin Moonlight Gutter Swim##79713 |goto Azj-Kahet/0 59.99,66.18
turnin Rescuing the Food##79714 |goto Azj-Kahet/0 59.99,66.18
accept Grand, Gutsy Solutions##79715 |goto Azj-Kahet/0 59.99,66.18
step
kill Grand Gluttony##217747
collect Swollen Brain of Gluttony##222944 |q 79715/1 |goto Azj-Kahet/0 56.66,65.46
step
talk Al'kubian##217565
turnin Grand, Gutsy Solutions##79715 |goto Azj-Kahet/0 59.99,66.17
step
talk Orweyna##220595
turnin Where the Wild Things Camp##83306 |goto Azj-Kahet/0 44.59,66.39
accept Tool of Attunement##80563 |goto Azj-Kahet/0 44.59,66.39
accept Field Research##80564 |goto Azj-Kahet/0 44.59,66.39
step
talk Courier Lyan##216972
fpath Wildcamp Ul'ar |goto Azj-Kahet/0 44.49,67.48
stickystart "Collect_Tuning_Crystal"
step
click Storage Rack
Inspect the Storage Rack |q 80564/1 |goto Azj-Kahet/1 49.33,64.53
step
click Functional Extractor
Inspect the Functional Extractor |q 80564/2 |goto Azj-Kahet/1 48.13,61.85
step
click Harmonizing Instrument
Inspect the Harmonizing Instrument |q 80564/3 |goto Azj-Kahet/1 49.22,60.18
step
talk Orweyna##226672
turnin Field Research##80564 |goto Azj-Kahet/1 49.27,60.21
step
label "Collect_Tuning_Crystal"
Kill enemies around this area
collect Tuning Crystal##218188 |q 80563/1 |goto Azj-Kahet/1 48.46,61.52
'|kill Black Blood Harvester##220712, Harvest Overseer##220713
step
talk Orweyna##226672
turnin Tool of Attunement##80563 |goto Azj-Kahet/1 49.27,60.21
accept The Path of Dissonance##82143 |goto Azj-Kahet/1 49.27,60.21
step
talk Sum'latha##221948
|tip Up on the platform.
turnin A Silken Thread##83324 |goto Azj-Kahet/0 51.40,63.95
accept The Voice of the People##81928 |goto Azj-Kahet/0 51.40,63.95
step
talk Worker Yareh'losh##222063
Select _"What is going on in the Silken Ward?"_ |gossip 122159
|tip Be careful to avoid hostile NPCs around this area.
Speak to the Silken Ward Citizen |q 81928/1 |goto Azj-Kahet/0 53.70,61.32 |count 1
step
talk Teacher Zas'rush##222064
Select _"What is going on in the Silken Ward?"_ |gossip 122259
|tip Be careful to avoid hostile NPCs around this area.
Speak to the Silken Ward Citizen |q 81928/1 |goto Azj-Kahet/0 54.16,52.29 |count 2
step
talk Priest Maro'zik##222065
Select _"What is going on in the Silken Ward?"_ |gossip 122264
|tip Be careful to avoid hostile NPCs around this area.
Speak to the Silken Ward Citizen |q 81928/1 |goto Azj-Kahet/0 57.48,50.23 |count 3
step
talk Alchemist Talbax##221842
turnin The Voice of the People##81928 |goto Azj-Kahet/0 59.93,54.19
accept Collecting a Concoction##81959 |goto Azj-Kahet/0 59.93,54.19
step
click Crate of Alchemical Potions##441257+
|tip They look like {o}wooden crates next to water{} down at ground level.
collect 8 Brightshade Potion##221755 |q 81959/1 |goto Azj-Kahet/0 55.72,56.12
step
talk Alchemist Talbax##221842
turnin Collecting a Concoction##81959 |goto Azj-Kahet/0 59.93,54.19
accept A Nudge in the Right Direction##81962 |goto Azj-Kahet/0 59.93,54.19
step
Kill enemies around this area
|tip Use the {o}various potion abilities{}.
|tip They appear as buttons on the screen.
|tip In the areas with buildings.
Slay #10# Pale Weavelashers |q 81962/1 |goto Azj-Kahet/0 55.89,54.91
'|kill Pale Weavelasher Apprentice##223364, Webwarden Enforcer##223361, Boltweaver Enforcer##223362, Pale Weavelasher Grunt##223363
step
talk Alchemist Talbax##221842
turnin A Nudge in the Right Direction##81962 |goto Azj-Kahet/0 59.93,54.19
accept The Fruits of Our Labor##81963 |goto Azj-Kahet/0 59.93,54.19
step
talk Priest Maro'zik##223173
Select _"<Hand over potion>"_ |gossip 122341
Deliver the Brightshade Potion |q 81963/1 |goto Azj-Kahet/0 57.56,50.10 |count 1
step
talk Teacher Zas'rush##223174
Select _"<Hand over potion>"_ |gossip 122343
Deliver the Brightshade Potion |q 81963/1 |goto Azj-Kahet/0 54.15,52.30 |count 2
step
talk Worker Yareh'losh##223175
Select _"<Hand over potion>"_ |gossip 122345
Deliver the Brightshade Potion |q 81963/1 |goto Azj-Kahet/0 53.67,61.32 |count 3
step
talk Alchemist Talbax##221842
turnin The Fruits of Our Labor##81963 |goto Azj-Kahet/0 59.93,54.19
step
Meet Orweyna in the Salien Gutters |q 82143/1 |goto Azj-Kahet/0 59.91,63.77
step
click Broken Extractor
Empty the Broken Extractor |q 82143/2 |goto Azj-Kahet/0 59.91,63.77
step
talk Orweyna##220603
turnin The Path of Dissonance##82143 |goto Azj-Kahet/0 59.88,63.81
accept Resounding Repercussions##80565 |goto Azj-Kahet/0 59.88,63.81
step
Enter the cave |goto Azj-Kahet/0 60.28,63.29 < 15 |walk
Follow Hannan into the Abandoned Harvest Site Cave |q 80565/1 |goto Azj-Kahet/0 61.87,62.64
|tip Inside the cave.
step
talk Hannan##220608
|tip Inside the cave.
Select _"<Tell Hannan to follow you out of the cave.>"_ |gossip 123210
Rescue Hannan |q 80565/2 |goto Azj-Kahet/0 61.87,62.64
step
talk Hannan##220608
|tip Inside the cave.
turnin Resounding Repercussions##80565 |goto Azj-Kahet/0 61.87,62.64
accept Enemies Abound##80566 |goto Azj-Kahet/0 61.87,62.64
step
click Extractor Bulb
|tip Inside the cave.
Destroy the Extractor Bulb |q 80566/1 |goto Azj-Kahet/0 61.81,62.36
step
kill 3 Lost Threadling##223065 |q 80566/2 |goto Azj-Kahet/0 61.64,62.77
|tip Inside the cave.
step
click Extractor Tripod
|tip You will be attacked.
|tip Inside the cave.
Destroy the Extractor Tripod |q 80566/3 |goto Azj-Kahet/0 61.76,63.49
step
kill 3 Lost Skitterling##227267 |q 80566/4 |goto Azj-Kahet/0 61.76,63.49
|tip Inside the cave.
step
click Extractor Storage
|tip You will be attacked.
|tip Inside the cave.
Destroy the Extractor Storage |q 80566/5 |goto Azj-Kahet/0 61.95,63.32
step
kill 3 Lost Harvester##228503 |q 80566/6 |goto Azj-Kahet/0 61.95,63.32
|tip Inside the cave.
step
Leave the cave |goto Azj-Kahet/0 60.28,63.29 < 15 |walk |only if subzone("Abandoned Harvest Site") and indoors()
talk Orweyna##223285
turnin Enemies Abound##80566 |goto Azj-Kahet/0 59.81,63.91
accept Song of Restoring##80567 |goto Azj-Kahet/0 59.81,63.91
step
click Harmonizing Instrument
Use the Harmonizing Instrument |q 80567/1 |goto Azj-Kahet/0 59.80,63.91
step
talk Hannan##223286
turnin Song of Restoring##80567 |goto Azj-Kahet/0 59.76,63.97
accept Leave No Trace##80568 |goto Azj-Kahet/0 59.76,63.97
step
clicknpc Magic Trace##223565+
|tip They look like {o}floating green orbs{} near the ground.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
Collect the Magic Trace |q 80568/1 |goto Azj-Kahet/0 60.77,64.43 |count 1
step
clicknpc Magic Trace##223565+
|tip They look like {o}floating green orbs{} near the ground.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
Collect the Magic Trace |q 80568/1 |goto Azj-Kahet/0 61.65,66.00 |count 2
step
clicknpc Magic Trace##223565+
|tip They look like {o}floating green orbs{} near the ground.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
Collect the Magic Trace |q 80568/1 |goto Azj-Kahet/0 61.60,66.65 |count 3
step
clicknpc Magic Trace##223565+
|tip They look like {o}floating green orbs{} near the ground.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
Collect the Magic Trace |q 80568/1 |goto Azj-Kahet/0 60.96,67.83 |count 4
step
clicknpc Magic Trace##223565+
|tip They look like {o}floating green orbs{} near the ground.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
Collect the Magic Trace |q 80568/1 |goto Azj-Kahet/0 60.42,69.82 |count 5
step
clicknpc Magic Trace##223565+
|tip They look like {o}floating green orbs{} near the ground.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
Collect the Magic Trace |q 80568/1 |goto Azj-Kahet/0 59.94,71.38 |count 6
step
clicknpc Magic Trace##223565+
|tip They look like {o}floating green orbs{} near the ground.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
Collect the Magic Trace |q 80568/1 |goto Azj-Kahet/0 60.55,73.30 |count 7
step
clicknpc Magic Trace##223565+
|tip They look like {o}floating green orbs{} near the ground.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
Collect the Magic Trace |q 80568/1 |goto Azj-Kahet/1 60.97,74.68 |count 8
step
clicknpc Magic Trace##223565+
|tip They look like {o}floating green orbs{} near the ground.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
Collect the Magic Trace |q 80568/1 |goto Azj-Kahet/1 60.95,76.01 |count 9
step
clicknpc Magic Trace##223565+
|tip They look like {o}floating green orbs{} near the ground.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
Collect the Magic Trace |q 80568/1 |goto Azj-Kahet/1 61.16,77.59 |count 10
step
talk Hannan##227158
turnin Leave No Trace##80568 |goto Azj-Kahet/1 62.52,79.07
step
talk Orweyna##220610
accept Staunch the Flow##80570 |goto Azj-Kahet/1 62.57,79.21
accept Decipher the Cacophony##80571 |goto Azj-Kahet/1 62.57,79.21
stickystart "Collect_Discordant_Essences"
step
click Black Blood Extractor+
|tip They look like {o}red glass orbs in metal casings{}.
click Extractor Storage+
|tip They look like {o}racks of red glass orbs{}.
Destroy #8# Extractors |q 80570/1 |goto Azj-Kahet/1 63.88,82.70
step
label "Collect_Discordant_Essences"
Kill enemies around this area
collect 10 Discordant Essence##221776 |q 80571/1 |goto Azj-Kahet/1 63.88,82.70
'|kill Discordant Skitterling##223116, Discordant Harvester##223115
step
talk Orweyna##220610
turnin Staunch the Flow##80570 |goto Azj-Kahet/1 62.57,79.21
turnin Decipher the Cacophony##80571 |goto Azj-Kahet/1 62.57,79.21
accept Discordant Measures##80572 |goto Azj-Kahet/1 62.57,79.21
step
talk Hannan##227158
accept Harmonious Approach##80569 |goto Azj-Kahet/1 62.52,79.07
stickystart "Acquire_50_Stacks_Of_Unseeming_Shift"
step
kill Harvest Warden Izk'tilak##220644 |q 80569/1 |goto Azj-Kahet/1 61.27,83.74
step
label "Acquire_50_Stacks_Of_Unseeming_Shift"
click Black Blood Extractor+
|tip They look like {o}red glass orbs in metal casings{}.
click Extractor Storage+
|tip They look like {o}racks of red glass orbs{}.
Acquire 50 Stacks of Unseeming Shift |q 80572/1 |goto Azj-Kahet/1 63.61,83.02
step
kill Warped Sapling##220655
collect Root Sliver##225698 |q 80572/4 |goto Azj-Kahet/1 63.17,85.11
step
kill Aberrant Deepwalker##220653
collect Corrupted Heart##225696 |q 80572/2 |goto Azj-Kahet/1 65.34,88.18
step
kill Faceless One##223119
collect Sightless Eye##225697 |q 80572/3 |goto Azj-Kahet/1 65.81,83.94
step
Meet Orweyna at the Overlook |q 80572/5 |goto Azj-Kahet/1 62.57,79.20
step
talk Orweyna##220610
turnin Discordant Measures##80572 |goto Azj-Kahet/1 62.57,79.20
step
talk Hannan##227158
turnin Harmonious Approach##80569 |goto Azj-Kahet/1 62.52,79.07
step
talk Kish'nal##214359
|tip Inside the building.
turnin Bountiful Beetles##83325 |goto Azj-Kahet/0 76.02,82.33
accept It's Rough to Be a Bug!##79119 |goto Azj-Kahet/0 76.02,82.33
step
click Various Objects
|tip They look like {o}broken objects with different names{}.
|tip Inside the building.
Clear #8# Debris |q 79119/1 |goto Azj-Kahet/0 75.94,82.51
step
talk Kish'nal##214359
|tip Inside the building.
turnin It's Rough to Be a Bug!##79119 |goto Azj-Kahet/0 76.02,82.33
accept Beautification Project##79114 |goto Azj-Kahet/0 76.02,82.33
step
clicknpc Overgrown Plant##225232+
|tip They look like {o}green tube plants{}.
clicknpc Overgrown Bush##225239+
|tip They look like {o}white bushes{}.
|tip {o}Run away from them{} after you click them.
|tip You may be attacked.
Remove #8# Plants |q 79114/1 |goto Azj-Kahet/0 73.13,81.49
step
talk Kish'nal##214359
|tip Inside the building.
turnin Beautification Project##79114 |goto Azj-Kahet/0 76.02,82.33
step
talk Vix'aron##214356
|tip Inside the building.
accept Expert Consultant##79115 |goto Azj-Kahet/0 76.13,82.50
step
talk Roughrider Tany##216979
fpath Mmarl |goto Azj-Kahet/0 76.84,64.45
step
talk Vetiverian##215037
turnin Expert Consultant##79115 |goto Azj-Kahet/0 77.21,64.49
accept Bright Young Niffen##79117 |goto Azj-Kahet/0 77.21,64.49
step
talk Monte Gazlowe##217029
turnin Trade Partners##79651 |goto Azj-Kahet/0 77.08,64.16
accept Nothing Ventured##80558 |goto Azj-Kahet/0 77.08,64.16
step
talk Ripsnoodle##216308
turnin Entrepreneur, Inc.##79349 |goto Azj-Kahet/0 78.25,61.71
step
talk Sammy Fizzvolt##220584
Select _"What can you tell me about the goblins here?"_ |gossip 121582
Speak to the Mmarl Goblin |q 80558/1 |goto Azj-Kahet/0 78.63,61.85 |count 1
step
talk Murfie##220583
|tip He walks around this area.
Select _"What can you tell me about the goblins here?"_ |gossip 121581
Speak to the Mmarl Goblin |q 80558/1 |goto Azj-Kahet/0 78.88,60.07 |count 2
step
talk Grigg##217402
Select _"What can you tell me about the goblins here?"_ |gossip 121583
Speak to the Mmarl Goblin |q 80558/1 |goto Azj-Kahet/0 77.69,59.59 |count 3
step
talk Jenni Boombuckle##216994
|tip Inside the building.
Select _"Are you in charge here?"_ |gossip 121584
Speak to the Goblin Leader |q 80558/2 |goto Azj-Kahet/0 77.83,62.85
step
talk Monte Gazlowe##217029
|tip Inside the building.
turnin Nothing Ventured##80558 |goto Azj-Kahet/0 77.81,62.90
step
talk Jenni Boombuckle##216994
|tip Inside the building.
accept Electrifying!##79539 |goto Azj-Kahet/0 77.83,62.84
step
talk Rhubarn##216996
|tip Inside the building.
accept Smelly Shrubberies##79538 |goto Azj-Kahet/0 77.90,62.88
stickystart "Collect_Smellsage_Branches"
stickystart "Perform_Debugger_Hat_Tests"
step
clicknpc Patchoulisa##217678
|tip You {o}may need to kill an enemy{}.
Recruit the Niffen Arachnologist |q 79117/1 |goto Azj-Kahet/0 73.47,61.81 |count 1
step
clicknpc Aromash##215730
|tip You {o}may need to kill an enemy{}.
Recruit the Niffen Arachnologist |q 79117/1 |goto Azj-Kahet/0 74.56,63.29 |count 2
step
clicknpc Limoni##217682
|tip You {o}may need to kill an enemy{}.
Recruit the Niffen Arachnologist |q 79117/1 |goto Azj-Kahet/0 74.49,65.05 |count 3
step
clicknpc Anisen##217681
|tip You {o}may need to kill an enemy{}.
Recruit the Niffen Arachnologist |q 79117/1 |goto Azj-Kahet/0 75.00,66.26 |count 4
step
clicknpc Papriki##217679
|tip You {o}may need to kill an enemy{}.
Recruit the Niffen Arachnologist |q 79117/1 |goto Azj-Kahet/0 75.47,68.19 |count 5
step
clicknpc Saffrin##217680
|tip You {o}may need to kill an enemy{}.
Recruit the Niffen Arachnologist |q 79117/1 |goto Azj-Kahet/0 76.54,67.17 |count 6
step
label "Collect_Smellsage_Branches"
click Smellsage Shrub+
|tip They look like {o}small bushes with white flowers{}.
collect 6 Smellsage Branch##213514 |q 79538/1 |goto Azj-Kahet/0 73.84,63.85
step
label "Perform_Debugger_Hat_Tests"
use the Debugger Hat##213629
|tip Use it on enemies around this area.
Perform #15# Debugger Hat Tests |q 79539/1 |goto Azj-Kahet/0 74.64,64.51
'|clicknpc Intrusive Nothwing##217038, Noth Drone##218308, Noth Drone##218309, Noth Drone##218310, Noth Drone##218312, Noth Drone##218314, Noth Swarmer##217796, Noth Venomsprayer##217040, Noth Drone##218311
step
talk Vetiverian##215037
turnin Bright Young Niffen##79117 |goto Azj-Kahet/0 77.21,64.50
accept Rak-Ush Under New Management##79118 |goto Azj-Kahet/0 77.21,64.50
step
talk Jenni Boombuckle##216994
|tip Inside the building.
turnin Electrifying!##79539 |goto Azj-Kahet/0 77.83,62.84
step
talk Rhubarn##216996
|tip Inside the building.
turnin Smelly Shrubberies##79538 |goto Azj-Kahet/0 77.89,62.87
step
talk Grigg##217402
|tip Inside the building.
accept The Party's Over##79540 |goto Azj-Kahet/0 77.91,62.82
step
Find the Problem |q 79540/1 |goto Azj-Kahet/0 77.67,59.51
step
talk Rhubarn##216996
turnin The Party's Over##79540 |goto Azj-Kahet/0 77.67,59.51
step
Watch the dialogue
talk Monte Gazlowe##217029
accept Burn It With Fire##79541 |goto Azj-Kahet/0 77.58,59.55
step
click Pillar-nest Heart
|tip Inside the cave.
Destroy the Pillar-nest Heart |q 79541/1 |goto Azj-Kahet/0 76.87,58.23 |count 1
step
click Pillar-nest Heart
|tip Inside the cave.
Destroy the Pillar-nest Heart |q 79541/1 |goto Azj-Kahet/0 76.01,58.74 |count 2
step
click Pillar-nest Heart
|tip Inside the cave.
Destroy the Pillar-nest Heart |q 79541/1 |goto Azj-Kahet/0 76.03,58.96 |count 3
step
click Pillar-nest Heart
|tip Upstairs inside the cave.
Destroy the Pillar-nest Heart |q 79541/1 |goto Azj-Kahet/0 76.41,59.31 |count 4
step
click Niffen Protection Incense
|tip Upstairs inside the cave.
Replace the Niffen Protection Incense |q 79541/2 |goto Azj-Kahet/0 76.79,58.65
step
talk Jenni Boombuckle##216994
turnin Burn It With Fire##79541 |goto Azj-Kahet/0 77.63,59.52
step
talk Vix'aron##214356
turnin Rak-Ush Under New Management##79118 |goto Azj-Kahet/0 75.04,80.86
accept Beetle in a Haystack##79120 |goto Azj-Kahet/0 75.04,80.86
step
clicknpc Feral Stagshell##219127+
Retrieve #6# Battleshells |q 79120/1 |goto Azj-Kahet/0 69.67,74.57
'|clicknpc Feral Stagshell##219128, Feral Stagshell##219129, Feral Stagshell##219130, Feral Stagshell##219131, Feral Stagshell##219132
step
talk Vix'aron##214356
turnin Beetle in a Haystack##79120 |goto Azj-Kahet/0 75.04,80.86
step
talk Kish'nal##214359
accept Bug Test##79121 |goto Azj-Kahet/0 75.07,80.72
stickystart "Fill_Food_Troughs"
step
clicknpc Stagshell Water Trough##214424+
|tip They look like {o}empty rectangular wooden containers{}.
|tip You may be attacked.
Fill #4# Water Troughs |q 79121/1 |goto Azj-Kahet/0 73.07,81.30
step
label "Fill_Food_Troughs"
clicknpc Stagshell Food Trough##214412+
|tip They look like {o}empty rectangular wooden containers{}. |notinsticky
|tip You may be attacked. |notinsticky
Fill #4# Food Troughs |q 79121/2 |goto Azj-Kahet/0 73.07,81.30
step
talk Kish'nal##214359
turnin Bug Test##79121 |goto Azj-Kahet/0 75.07,80.72
accept Scarab Scouting##79122 |goto Azj-Kahet/0 75.07,80.72
step
talk Aromash##214360
Select _"Kish'nal said something about truffles?"_ |gossip 120647
Speak to Aromash |q 79122/1 |goto Azj-Kahet/0 72.77,80.26
step
click Various Insect+
|tip They look like {o}bugs{} with {o}different names{}.
|tip Pick any one you want, {o}it doesn't matter{}.
Select _"<Choose this swarmbeast.>"_ |gossip 121154 |noautogossip
Select a Stagshell |q 79122/2 |goto Azj-Kahet/0 72.64,80.85
'|clicknpc Helioceros##219057, Rafflesian##219058, Bulbophyll##219059, Durania##219062, Stapellia##219061, Titannirum##219060
step
clicknpc Volatile Soil##214518+
|tip They look like {o}piles of brown dirt{}.
clicknpc Volatile Kaheti Truffle##214518+
|tip Your {o}insect will dig them up{}.
Gather #5# Kaheti Truffles |q 79122/3 |goto Azj-Kahet/0 69.71,77.73
step
talk Kish'nal##214359
turnin Scarab Scouting##79122 |goto Azj-Kahet/0 75.07,80.72
accept Permanent Hire##79123 |goto Azj-Kahet/0 75.07,80.72
step
talk Saffrin##217250
Select _"What's next for Rak-Ush?"_ |gossip 120644
Speak to Saffrin |q 79123/1 |goto Azj-Kahet/0 74.78,81.18
step
talk Saffrin##217250
turnin Permanent Hire##79123 |goto Azj-Kahet/0 74.78,81.18
step
talk Teth##222136
accept The Upstart##81667 |goto Azj-Kahet/0 69.73,47.97
accept The Entrenched##83616 |goto Azj-Kahet/0 69.73,47.97
step
talk Grand Overspinner Antourix##221557
|tip Inside the building.
|tip On the {o}top tier{}.
Select _"Ren'khat thinks he should be in charge of your operation."_ |gossip 122668
Ingratiate Yourself to Grand Overspinner Antourix |q 83616/1 |goto Azj-Kahet/0 75.81,52.56
step
talk Grand Overspinner Antourix##221557
|tip Inside the building.
turnin The Entrenched##83616 |goto Azj-Kahet/0 75.81,52.56
accept Spring Collection##81683 |goto Azj-Kahet/0 75.81,52.56
stickystart "Collect_Eyeless_Petals"
stickystart "Collect_Luminous_Strangler_Sap"
stickystart "Collect_Reclaimed_Catalysts"
step
kill Cochineal Crawler##224785+
|tip They look like {o}tiny red insects{}.
|tip On the ground.
collect 3 Cochineal Crawler##224286 |q 81683/4 |goto Azj-Kahet/0 70.70,42.58
step
label "Collect_Eyeless_Petals"
click Eyeless Violet+
|tip They look like {o}short plants with purple petals{}.
|tip On the ground. |notinsticky
collect 3 Eyeless Petal##224284 |q 81683/3 |goto Azj-Kahet/0 72.31,43.39
step
label "Collect_Luminous_Strangler_Sap"
click Luminous Shore-Strangler+
|tip They look like {o}large bushes{}.
|tip On the ground. |notinsticky
collect 3 Luminous Strangler Sap##224285 |q 81683/2 |goto Azj-Kahet/0 72.31,43.39
step
label "Collect_Reclaimed_Catalysts"
Kill enemies around this area
|tip On the ground. |notinsticky
collect 12 Reclaimed Catalyst##224283 |q 81683/1 |goto Azj-Kahet/0 72.31,43.39
'|kill Coagulated Mordant##222086, Malignant Mordant##222091, Volatile Droplet##222090
step
talk Ren'khat##221550
|tip Outside, behind the building.
Select _"I hear you're looking to stick it to the Overspinner"_ |gossip 122667
Ingratiate Yourself to Ren'htak |q 81667/1 |goto Azj-Kahet/0 66.61,41.34
step
talk Ren'khat##221550
|tip Outside, behind the building.
turnin The Upstart##81667 |goto Azj-Kahet/0 66.61,41.34
accept Measure Once, Cut Thrice##81668 |goto Azj-Kahet/0 66.61,41.34
step
kill Seam Reaper Zhir'ix##221934 |q 81668/2 |goto Azj-Kahet/0 74.19,50.07
|tip Inside the building.
|tip On the {o}bottom tier{}.
step
kill Colormancer Nirethi##222150 |q 81668/3 |goto Azj-Kahet/0 74.51,51.71
|tip Inside the building.
|tip On the {o}middle tier{}.
step
kill Webwarper Tath'rhiz##221932 |q 81668/1 |goto Azj-Kahet/0 73.46,52.51
|tip It walks around this area.
|tip Inside the building.
|tip On the {o}bottom tier{}.
step
talk Grand Overspinner Antourix##222135
|tip Up on the platform.
turnin Spring Collection##81683 |goto Azj-Kahet/0 72.89,42.61
step
talk Ren'khat##222133
turnin Measure Once, Cut Thrice##81668 |goto Azj-Kahet/0 72.81,42.46
step
talk Teth##222132
accept Azj-Kahet's Next Top Dyemaster##81685 |goto Azj-Kahet/0 72.89,42.81
accept I Expect You To Dye##81687 |goto Azj-Kahet/0 72.89,42.81
stickystart "Slay_Dyeworks_Nerubians"
step
extraaction Royal Purple##451850
Test the Purple Dyebath |q 81687/3 |goto Azj-Kahet/0 74.36,42.90
|tip Use the {o}Royal Purple{} ability.
|tip It appears as a button on the screen.
step
extraaction Blue Lightning##451877
Test the Blue Dyebath |q 81687/4 |goto Azj-Kahet/0 75.91,41.62
|tip Use the {o}Blue Lightning{} ability {o}on a nearby enemy{}.
|tip It appears as a button on the screen.
step
extraaction Arsenic Green##451804
Test the Green Dyebath |q 81687/6 |goto Azj-Kahet/0 75.94,38.96
|tip Use the {o}Arsenic Green{} ability.
|tip It appears as a button on the screen.
step
extraaction Yellow Ochre##451889
Test the Yellow Dyebath |q 81687/5 |goto Azj-Kahet/0 74.43,37.59
|tip Use the {o}Yellow Ochre{} ability.
|tip It appears as a button on the screen.
step
extraaction Carmine Red##451853
Test the Red Dyebath |q 81687/2 |goto Azj-Kahet/0 72.88,38.87
|tip Use the {o}Carmine Red{} ability.
|tip It appears as a button on the screen.
step
kill Ren'khat##222152 |q 81685/1 |goto Azj-Kahet/0 74.36,40.29
kill Grand Overspinner Antourix##225263 |q 81685/2 |goto Azj-Kahet/0 74.36,40.29
|tip Inside the building.
step
label "Slay_Dyeworks_Nerubians"
Kill enemies around this area
Slay  #8# Dyeworks Nerubians |q 81687/1 |goto Azj-Kahet/0 73.58,41.44
'|kill Carmine Alchemist##222124, Cupric Alchemist##222121, Gaudy Web-Vandal##224567, Ochre Alchemist##222123, Spinneret Scuttler##221852, Spinneret Silkbearer##221939, Violet Alchemist##222117
step
talk Teth##222136
turnin Azj-Kahet's Next Top Dyemaster##81685 |goto Azj-Kahet/0 69.73,47.97
turnin I Expect You To Dye##81687 |goto Azj-Kahet/0 69.73,47.97
accept That's All##81688 |goto Azj-Kahet/0 69.73,47.97
step
talk Widow Arak'nai##207471
Select _"I need to inform you of what happened in the city."_ |gossip 120666
Report to the Weaver |q 78248/1 |goto Azj-Kahet/0 55.73,43.84
step
talk Widow Arak'nai##207471
turnin What We Still Have##78248 |goto Azj-Kahet/0 55.73,43.84
turnin That's All##81688 |goto Azj-Kahet/0 55.73,43.84
accept Uniting Severed Threads##84022 |goto Azj-Kahet/0 55.73,43.84
step
click General's Shadecaster
Activate the General's Shadecaster |q 84022/1 |goto Azj-Kahet/0 55.50,43.79
step
click Vizier's Shadecaster
Activate the Vizier's Shadecaster |q 84022/2 |goto Azj-Kahet/0 55.53,44.02
step
talk Widow Arak'nai##207471
Select _"<Begin Severed Threads conference.>"_ |gossip 123526
Speak to the Weaver to Begin the Conference |q 84022/3 |goto Azj-Kahet/0 55.73,43.84
step
Watch the dialogue
Witness the Formation of the Severed Threads |q 84022/4 |goto Azj-Kahet/0 55.73,43.84
step
talk Widow Arak'nai##207471
turnin Uniting Severed Threads##84022 |goto Azj-Kahet/0 55.73,43.84
step
talk Ag'thax##217255
accept Spiders!##79954 |goto Nerub'ar/1 77.37,68.51
step
Enter the underground cave |goto Nerub'ar/0 71.79,57.09 < 30 |walk
click Missing Key
|tip Inside the underground cave.
collect High Hollows Key##216688 |q 79954/1 |goto Nerub'ar/0 68.20,55.83
step
talk Albert##217640
|tip Inside the underground cave.
accept ...And Now I'm Arachnophobic##79955 |goto Nerub'ar/0 66.77,54.89
step
clicknpc Lost Companion##218055
|tip Inside the underground cave.
Check the Lost Companion |q 79955/1 |goto Nerub'ar/0 65.01,55.23 |count 1
step
clicknpc Lost Companion##218055
|tip Inside the underground cave.
Check the Lost Companion |q 79955/1 |goto Nerub'ar/0 66.94,56.97 |count 2
step
clicknpc Lost Companion##218055
|tip Inside the underground cave.
Check the Lost Companion |q 79955/1 |goto Nerub'ar/0 65.95,58.60 |count 3
step
clicknpc Lost Companion##218055
|tip Inside the underground cave.
Check the Lost Companion |q 79955/1 |goto Nerub'ar/0 69.49,60.32 |count 4
step
clicknpc Lost Companion##218055
|tip Inside the underground cave.
Check the Lost Companion |q 79955/1 |goto Nerub'ar/0 71.05,64.63 |count 5
step
talk Albert##217640
|tip Inside the underground cave.
turnin ...And Now I'm Arachnophobic##79955 |goto Nerub'ar/0 69.99,63.34
accept Legs in the Ceiling##79956 |goto Nerub'ar/0 69.99,63.34
step
click Web Strand
|tip Inside the underground cave.
Kill the enemies that attack
kill Scalpel of Xishirra##218065 |q 79956/2 |goto Nerub'ar/0 70.08,62.80
'|kill Xesh Cavewalker##218014, Xesh Hatchling##218066
step
Watch the dialogue
|tip Inside the underground cave.
talk Albert##217994
turnin Legs in the Ceiling##79956 |goto Nerub'ar/0 68.67,62.26
accept Maggots in your Eyes##79957 |goto Nerub'ar/0 68.67,62.26
step
Leave the underground cave |goto Nerub'ar/0 71.79,57.09 < 30 |walk |only if subzone("Pillar-nest Xesh") and indoors()
talk Ag'thax##217255
|tip Up on the platform.
turnin Spiders!##79954 |goto Nerub'ar/1 77.37,68.51
step
talk Orator Tx'itk##219357
|tip Inside the building.
accept Social Clues##80203 |goto Nerub'ar/1 71.46,44.50
step
Watch the dialogue
talk Profiteer Z'kaxt##219375
Select _"<Ask for rumors about the Magistrate.>"_ |gossip 121667
Talk to Profiteer Z'kaxt |q 80203/1 |goto Nerub'ar/1 71.41,34.87
step
Watch the dialogue
|tip Inside the building.
talk Tox##219373
Select _"<Ask for rumors about the Magistrate.>"_ |gossip 121666
Talk to Tox |q 80203/3 |goto Nerub'ar/1 71.33,28.90
step
Watch the dialogue
|tip Inside the building.
talk Van'atka##219374
Select _"<Ask for rumors about the Puppetmaster.>"_ |gossip 121668
Talk to Van'atka |q 80203/5 |goto Nerub'ar/1 67.01,32.23
step
Watch the dialogue
talk Duelist Kahtex##219372
Select _"<Ask for rumors about the Puppetmaster.>"_ |gossip 121669
Talk to Duelist Kahtex |q 80203/7 |goto Nerub'ar/1 65.90,40.32
step
talk Orator Tx'itk##221092
turnin Social Clues##80203 |goto Nerub'ar/1 65.77,40.08
accept Espionage and Ventriloquism##80204 |goto Nerub'ar/1 65.77,40.08
step
Watch the dialogue
|tip Inside the building.
Investigate the Puppetmaster's Workshop |q 80204/1 |goto Nerub'ar/1 65.37,43.11
step
click Web Scraps+
|tip They look like {o}large white mounds{}.
|tip Inside the building.
Clear #4# Web Scraps |q 80204/2 |goto Nerub'ar/1 65.89,42.98
step
click Suspicious Syringe
|tip Inside the building.
Carry the Suspicious Syringe |havebuff Carrying Suspicious Syringe##443561 |goto Nerub'ar/1 65.93,44.11 |q 80204
step
click Suspicious Syringe
|tip Inside the building.
Organize the Supplies |q 80204/3 |goto Nerub'ar/1 65.70,41.76 |count 1
step
click Web Spool
|tip Inside the building.
Carry the Web Spool |havebuff Carrying Web Spool##443419 |goto Nerub'ar/1 66.00,41.85 |q 80204
step
click Web Spool
|tip Inside the building.
Organize the Supplies |q 80204/3 |goto Nerub'ar/1 65.49,44.29 |count 2
step
click Sewing Shear
|tip Inside the building.
Carry the Sewing Shear |havebuff Carrying Sewing Shear##443562 |goto Nerub'ar/1 65.19,43.99 |q 80204
step
click Sewing Shear
|tip Inside the building.
Organize the Supplies |q 80204/3 |goto Nerub'ar/1 66.46,43.59 |count 3
step
click Paralytic Draught##439611
|tip Inside the building.
collect Paralytic Draught##219443 |q 80204/4 |goto Nerub'ar/1 66.52,43.47
step
extraaction Throw Paralytic Draught##443600
Paralyze #12# Unsettled Vermin |q 80204/5 |goto Nerub'ar/1 65.88,42.98
|tip Use the {o}Throw Paralytic Draught{} ability on {o}Unsettled Vermin{}.
|tip It appears as a button on the screen.
|tip They look like {o}small grubs{}.
|tip Inside the building.
'|clicknpc Unsettled Vermin##219388
step
talk Orator Tx'itk##221093
|tip Inside the building.
turnin Espionage and Ventriloquism##80204 |goto Nerub'ar/1 65.61,42.31
accept Marionette Mercy##80206 |goto Nerub'ar/1 65.61,42.31
step
click Antiparalytic Serum##439466
|tip Inside the building.
collect Antiparalytic Serum##219385 |q 80206/1 |goto Nerub'ar/1 65.61,41.74
step
click Incomplete Puppet##221702
|tip Inside the building.
Cure the Incomplete Puppet |q 80206/2 |goto Nerub'ar/1 65.96,41.83 |count 1
step
clicknpc Incomplete Puppet##224772
|tip Inside the building.
Cure the Incomplete Puppet |q 80206/2 |goto Nerub'ar/1 66.62,42.57 |count 2
step
clicknpc Incomplete Puppet##224773
|tip Inside the building.
Cure the Incomplete Puppet |q 80206/2 |goto Nerub'ar/1 66.34,43.55 |count 3
step
clicknpc Incomplete Puppet##224774
|tip Inside the building.
Cure the Incomplete Puppet |q 80206/2 |goto Nerub'ar/1 65.98,44.12 |count 4
step
talk Orator Tx'itk##221093
|tip Inside the building.
turnin Marionette Mercy##80206 |goto Nerub'ar/1 65.61,42.32
accept Pulling Strings##80205 |goto Nerub'ar/1 65.61,42.32
step
Watch the dialogue
|tip Inside the building.
Meet Orator Tx'itk at the Puppetmaster's Theater |q 80205/1 |goto Nerub'ar/1 61.26,48.83
step
talk Orator Tx'itk##221094
|tip Inside the building.
Select _"<Start the show.>"_ |gossip 121776
Talk to Orator Tx'itk |q 80205/2 |goto Nerub'ar/1 61.26,48.83
step
Watch the dialogue
|tip Inside the building.
Listen to the Puppetmaster's Greeting |q 80205/3 |goto Nerub'ar/1 62.05,48.86
step
Kill enemies around this area
|tip Inside the building.
Slay #12# Puppets |q 80205/4 |goto Nerub'ar/1 62.05,48.86
'|kill Civilian Puppet##219495, Nerubian Puppet##221514
step
clicknpc High Elevator Etak'kaht##221096
|tip Inside the building.
Rescue High Elevator Etak'kaht |q 80205/5 |goto Nerub'ar/1 62.14,48.84
step
Return to the Magistrate's Office |q 80205/6 |goto Nerub'ar/1 71.48,45.63
|tip Inside the building.
step
talk Orator Tx'itk##221088
|tip Inside the building.
turnin Pulling Strings##80205 |goto Nerub'ar/1 71.48,45.63
step
talk Pathfinder Jeb##211708
turnin Maggots in your Eyes##79957 |goto Azj-Kahet/0 59.31,19.21
step
talk Widow Arak'nai##207471
accept Saving Private Spindle##83276 |goto Azj-Kahet/0 55.73,43.84
|only if level >= 80
step
Find Spindle in the High Hollows |q 83276/1 |goto Nerub'ar/1 87.79,59.31
|tip Up in the {o}hanging building{}.
|only if level >= 80
step
click Cage
|tip Up in the {o}hanging building{}.
Free Spindle |q 83276/2 |goto Nerub'ar/1 87.79,59.31
|only if level >= 80
step
talk Spindle##226019
|tip Up in the {o}hanging building{}.
turnin Saving Private Spindle##83276 |goto Nerub'ar/1 87.79,59.31
accept Personal Pilfering##83277 |goto Nerub'ar/1 87.79,59.31
|only if level >= 80
step
click Dishevelled Cabinet##422275
|tip Up in the {o}hanging building{}.
Gather Incriminating Evidence |q 83277/1 |goto Nerub'ar/1 88.26,59.32 |count 1
|only if level >= 80
step
click Dingy Shadecaster##422146
|tip Up in the {o}hanging building{}.
Gather Incriminating Evidence |q 83277/1 |goto Nerub'ar/1 88.09,58.33 |count 2
|only if level >= 80
step
click Worn Scroll-Reader##422274
|tip Up in the {o}hanging building{}.
Gather Incriminating Evidence |q 83277/1 |goto Nerub'ar/1 87.89,58.09 |count 3
|only if level >= 80
step
talk Widow Arak'nai##207471
turnin Personal Pilfering##83277 |goto Azj-Kahet/0 55.73,43.84
accept Advance to Faerin##82248 |goto Azj-Kahet/0 55.73,43.84 |only if not (haveq(81929) or completedq(81929))
|only if level >= 80
step
talk Faerin Lothar##211409
turnin Advance to Faerin##82248 |goto Azj-Kahet/0 59.37,19.36 |only if not (haveq(81929) or completedq(81929))
accept Here's the Plan##81929 |goto Azj-Kahet/0 59.37,19.36
|only if level >= 80
step
talk Faerin Lothar##211409
Select _"What's the plan?"_ |gossip 122308
Speak with Faerin Lothar |q 81929/1 |goto Azj-Kahet/0 59.37,19.36
|only if level >= 80
step
Watch the dialogue
Listen to Faerin |q 81929/2 |goto Azj-Kahet/0 59.37,19.36
|only if level >= 80
step
clicknpc Faerin's Shield##227076
Carry Faerin's Shield |q 81929/3 |goto Azj-Kahet/0 59.34,19.46
|only if level >= 80
step
talk Faerin Lothar##211409
Select _"<Give Faerin her shield.>"_ |gossip 122311
Return Faerin's Shield |q 81929/4 |goto Azj-Kahet/0 59.37,19.36
|only if level >= 80
step
click Bag of Betelsnax
Retrieve the Bag of Betelsnax |q 81929/5 |goto Azj-Kahet/0 59.07,18.86
|only if level >= 80
step
talk Faerin Lothar##211409
turnin Here's the Plan##81929 |goto Azj-Kahet/0 59.37,19.36
accept To Arathi's End##81945 |goto Azj-Kahet/0 59.37,19.36
|only if level >= 80
step
talk Monte Gazlowe##221977
turnin To Arathi's End##81945 |goto Azj-Kahet/0 63.75,17.91
accept BOOM Treats!##81950 |goto Azj-Kahet/0 63.75,17.91
|only if level >= 80
step
_Next to you:_
talk Faerin Lothar
accept Invasion Disruption##81965
accept The Blacksmith's Fate##81964
'|talk Faerin Lothar##221980
|only if level >= 80
stickystart "Destroy_Nerubian_Ballistae"
stickystart "Disrupt_Arathis_End"
step
talk Sir Ashrealm##223353
Select _"She's here with me. We are looking for the blacksmith Ryton Blackholme. Have you seen him?"_ |gossip 122364
Select _"Is this blacksmith still alive?"_ |gossip 122369
Select _"Sir? Sir?"_ |gossip 122370
Find the Survivor |q 81964/1 |goto Azj-Kahet/0 65.81,14.24
|only if level >= 80
step
kill Mother Aza'na##222180 |q 81964/2 |goto Azj-Kahet/0 65.68,3.29
|tip Inside the small cave.
|only if level >= 80
step
kill Anub'ilith##222185 |q 81964/3 |goto Azj-Kahet/0 59.30,12.99
|only if level >= 80
step
collect Blacksmith's Breastplate##223157 |q 81964/4 |goto Azj-Kahet/0 59.30,12.99
|tip {o}Loot Anub'ilith{} where you just killed it.
|only if level >= 80
step
_Next to you:_
talk Faerin Lothar
turnin The Blacksmith's Fate##81964
'|talk Faerin Lothar##221980
|only if level >= 80
step
label "Destroy_Nerubian_Ballistae"
clicknpc Nerubian Ballista##222007+
|tip They look like {o}artillery machines{}.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
Destroy #5# Nerubian Ballistae |q 81950/1 |goto Azj-Kahet/0 64.59,6.93
You can find more around [Azj-Kahet/0 61.86,4.78]
|only if level >= 80
step
_Next to you:_
talk Monte Gazlowe
turnin BOOM Treats!##81950
'|talk Monte Gazlowe##221982
|only if level >= 80
step
label "Disrupt_Arathis_End"
Kill enemies around this area
clicknpc Arathi Prisoner##222119+
|tip They look like {o}white squirming cocoons{}.
click Nerubian Burrow+
|tip They look like {o}large mounds of cracked dirt{}.
Disrupt Arathi's End |q 81965/1 |goto Azj-Kahet/0 63.34,7.00
'|kill Battlefront Hauler##222719, Crimson Deathweaver##222692, Skitterling Soldier##222724, Sureki Priestess##222688, Sureki Raider##222677, Sureki Warrior##222693, Toxic Swarmite##222721, Venomous Flyer##222722
|only if level >= 80
step
_Next to you:_
talk Faerin Lothar
turnin Invasion Disruption##81965
accept An End to the End##81969
'|talk Faerin Lothar##221980
|only if level >= 80
step
Fly up and Enter the Cave |goto Azj-Kahet/0 64.38,0.64 < 50 |q 81969
|tip The {o}waypoint arrow will not work{} after entering the cave.
|only if level >= 80
step
talk Faerin Lothar##223507
|tip {o}Follow the path east{} to find her.
|tip Inside the cave.
Select _"Let's finish this!"_ |gossip 122400
|tip You {o}may not be able to talk to her{} if she's already fighting nearby.
|tip She will {o}help you fight{} the enemy nearby.
extraaction Fire Ballista!##449105
clicknpc Surek'Tak the Sundered##222190
kill Surek'Tak the Sundered##222190 |q 81969/1
|tip Use the {o}Fire Ballista!{} ability on him.
|tip It appears as a button on the screen.
|only if level >= 80
step
talk Faerin Lothar##223467
|tip {o}Follow the path west{} to find her.
turnin An End to the End##81969
accept The Sorrowful Journey Home##82268
|only if level >= 80
step
Traverse Arathi's End to Hallowfall |complete zone("Hallowfall") |q 82268
|tip {o}Fly west{} toward the {o}yellow dot{} on your {o}minimap{}.
|only if level >= 80
step
talk Faerin Lothar##220406
turnin The Sorrowful Journey Home##82268 |goto Hallowfall/0 43.24,56.30
accept Remembrance for the Fallen##82284 |goto Hallowfall/0 43.24,56.30
|only if level >= 80
step
use the Breastplate and Tinderbox##223515
Place the Breastplate and Tinderbox in the Forge |q 82284/1 |goto Hallowfall/0 43.33,56.41
|only if level >= 80
step
talk Faerin Lothar##220406
turnin Remembrance for the Fallen##82284 |goto Hallowfall/0 43.24,56.30
|only if level >= 80
step
|next "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"	|only if completedq(79573) and level < 80
|next "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\The War Within Campaign"				|only if level >= 80 and completedallq(78546,81689,78630,84022)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The War Within (70-80)\\Story Campaigns\\The War Within Campaign",{
author="support@zygorguides.com",
},[[
step
Complete the Isle of Dorn Storyline |complete completedq(78546)
Complete the Ringing Deeps Storyline |complete completedq(81689)
Complete the Hallowfall Storyline |complete completedq(78630)
Complete the Azj-Kahet Storyline |complete completedq(84022)
|tip Use the {o}War Within leveling guides{} to accomplish this.
|tip You can use either the {o}Story Only{} or the {o}Full Zone{} guides.
|only if not (haveq(84365) or completedq(84365))
step
talk Brann Bronzebeard##206017
|tip Inside the building.
turnin Something on the Horizon##84365 |goto Dornogal/0 47.39,44.41
|only if haveq(84365) or completedq(84365)
step
talk Alleria Windrunner##219252
accept Surface Bound##79197 |goto Azj-Kahet/0 55.62,44.20
step
Meet with Moira Thaurissan in Dornogal |q 79197/1 |goto Dornogal/0 36.13,80.35
step
talk Moira Thaurissan##216149
turnin Surface Bound##79197 |goto Dornogal/0 36.13,80.35
accept Renown of Khaz Algar##84446 |goto Dornogal/0 36.13,80.35 |only if factionrenown(2590) < 4 or factionrenown(2570) < 4 or factionrenown(2594) < 4 or factionrenown(2600) < 4
step
talk Faerin Lothar##223875
turnin Renown of Khaz Algar##84446 |goto Dornogal/0 46.08,49.62
|only if haveq(84446) or completedq(84446)
step
ding 80
step
Reach Renown Level 4 with All Factions |complete factionrenown(2590) >= 4 and factionrenown(2570) >= 4 and factionrenown(2594) >= 4 and factionrenown(2600) >= 4
|tip Complete world quests and full zone guides for each zone in Khaz Algar.
|tip You need to reach renown level 4 with the Council of Dornogal, The Assembly of the Deeps, the Hallowfall Arathi, and The Severed Threads.
step
talk Moira Thaurissan##216149
accept The Fleet Arrives##79333 |goto Dornogal/0 36.13,80.35
step
click Telescope
Use the Telescope |q 79333/1 |goto Dornogal/0 35.13,80.28
step
talk Moira Thaurissan##216149
Select _"Alliance and Horde arrived."_ |gossip 121591
Report Back to Moira |q 79333/2 |goto Dornogal/0 36.13,80.34
step
Watch the dialogue
talk Lady Jaina Proudmoore##216168
turnin The Fleet Arrives##79333 |goto Dornogal/0 35.88,81.49
accept Embassies and Envoys##82153 |goto Dornogal/0 35.88,81.49
|only if Alliance
step
talk Dornogal Steward##220963
Select _"I'm here to help prepare the embassy."_ |gossip 122277
Find the Alliance Embassy Steward in Dornogal |q 82153/1 |goto Dornogal/0 30.33,56.01
|only if Alliance
step
click Alliance Banner
Place the Alliance Banner |q 82153/2 |goto Dornogal/0 30.13,56.50 |count 1
|only if Alliance
step
click Alliance Banner
Place the Alliance Banner |q 82153/2 |goto Dornogal/0 30.65,55.71 |count 2
|only if Alliance
step
click Small Alliance Banner
|tip Inside the building.
Place the Decorations Inside |q 82153/3 |goto Dornogal/0 28.85,51.06 |count 1
|only if Alliance
step
click Supplies
|tip Inside the building.
Place the Decorations Inside |q 82153/3 |goto Dornogal/0 27.84,49.91 |count 2
|only if Alliance
step
click Alliance Weapon Rack
|tip Inside the building.
Place the Decorations Inside |q 82153/3 |goto Dornogal/0 27.60,49.85 |count 3
|only if Alliance
step
click Large Alliance Banner
|tip Inside the building.
Place the Decorations Inside |q 82153/3 |goto Dornogal/0 27.38,50.00 |count 4
|only if Alliance
step
click Large Alliance Banner
|tip Inside the building.
Place the Decorations Inside |q 82153/3 |goto Dornogal/0 26.35,51.58 |count 5
|only if Alliance
step
talk Dornogal Steward##221143
|tip Inside the building.
Select _"You wanted me to sign something?"_ |gossip 121721
Select _"{_G.UnitName("player")}."_ |gossip 122278
Sign the Document |q 82153/4 |goto Dornogal/0 28.35,53.05
|only if Alliance
step
talk Moira Thaurissan##214917
turnin Embassies and Envoys##82153 |goto Dornogal/0 31.78,59.35
|only if Alliance
step
Watch the dialogue
talk Thrall##216167
turnin The Fleet Arrives##79333 |goto Dornogal/0 36.19,81.54
accept Embassies and Envoys##79328 |goto Dornogal/0 36.19,81.54
|only if Horde
step
talk Dornogal Steward##220963
Select _"I'm here to help prepare the embassy."_ |gossip 121623
Horde Embassy steward found in Dornogal |q 79328/1 |goto Dornogal/0 30.34,63.25
|only if Horde
step
click Horde Banner
Place the Horde Banner |q 79328/2 |goto Dornogal/0 30.66,63.57 |count 1
|only if Horde
step
click Horde Banner
Place the Horde Banner |q 79328/2 |goto Dornogal/0 30.14,62.78 |count 2
|only if Horde
step
click Small Horde Banner
|tip Inside the building.
Place the Decorations Inside |q 79328/3 |goto Dornogal/0 27.03,65.48 |count 1
|only if Horde
step
click Strongbox
|tip Inside the building.
Place the Decorations Inside |q 79328/3 |goto Dornogal/0 26.23,67.09 |count 2
|only if Horde
step
click Weapon Rack
|tip Inside the building.
Place the Decorations Inside |q 79328/3 |goto Dornogal/0 26.31,67.33 |count 3
|only if Horde
step
click Large Horde Banner
|tip Inside the building.
Place the Decorations Inside |q 79328/3 |goto Dornogal/0 26.33,67.69 |count 4
|only if Horde
step
click Large Horde Banner
|tip Inside the building.
Place the Decorations Inside |q 79328/3 |goto Dornogal/0 27.37,69.24 |count 5
|only if Horde
step
talk Dornogal Steward##221143
|tip Inside the building.
Select _"You wanted me to sign something?"_ |gossip 121721
Select _"{_G.UnitName("player")}."_ |gossip 121722
Sign the Document |q 79328/4 |goto Dornogal/0 28.36,66.23
|only if Horde
step
talk Moira Thaurissan##214917
turnin Embassies and Envoys##79328 |goto Dornogal/0 31.78,59.35
|only if Horde
step
talk Moira Thaurissan##214917
accept There's Always Another Secret##83271 |goto Dornogal/0 31.78,59.35
step
talk Dagran Thaurissan II##217859
|tip Inside the building.
Select _"I'm ready."_ |gossip 122851
Talk to Dagran Thaurissan II |q 83271/1 |goto Dornogal/0 29.76,59.97
step
click Deactivated Waygate
|tip Inside the building.
Select _"<Gently tap the center of the waypoint.>"_ |gossip 122852
Activate the Waygate |q 83271/2 |goto Dornogal/0 29.77,59.67
step
click Deactivated Waygate
|tip Inside the building.
Use the Waygate |q 83271/3 |goto Dornogal/0 29.77,59.67
step
talk High Speaker Brinthe##226040
|tip He runs to this location.
turnin There's Always Another Secret##83271 |goto Vault of Memory/0 49.89,60.73
accept What's Hidden Beneath Dornogal##83286 |goto Vault of Memory/0 49.89,60.73
step
click Central Archives Console
Select _"<Attempt restarting the console.>"_ |gossip 122926
Solve the Puzzles
|tip Click the {o}blue orbs{} to {o}swap them{} to make the {o}lines horizontal{}.
Restart the Central Console |q 83286/1 |goto Vault of Memory/0 49.85,63.66
step
talk High Speaker Brinthe##226040
turnin What's Hidden Beneath Dornogal##83286 |goto Vault of Memory/0 49.90,60.69
accept Preparing for the Unknown##83315 |goto Vault of Memory/0 49.90,60.69
step
talk Moira Thaurissan##214917
turnin Preparing for the Unknown##83315 |goto Dornogal/0 31.78,59.35
accept Urban Odyssey##79344 |goto Dornogal/0 31.78,59.35
step
talk Brann Bronzebeard##206017
|tip Inside the building.
Find the Delver's Headquarters |q 79344/1 |goto Dornogal/0 47.40,44.41
step
talk Vaskarn##219226
|tip Inside the building.
Find the Item Upgrades and Crest Exchange Vendors |q 79344/3 |goto Dornogal/0 52.08,42.23
step
Find the Keepers of Renown |q 79344/2 |goto Dornogal/0 39.09,24.16
|tip Inside the building.
step
talk Moira Thaurissan##214917
turnin Urban Odyssey##79344 |goto Dornogal/0 31.77,59.36
step
talk Alleria Windrunner##223944
accept After the Storm##79107 |goto Dornogal/0 31.54,59.66
step
talk Stormrider Meirand##214965
Select _"How are you holding up?"_ |gossip 121930
Select _"What happened out there?"_ |gossip 121934
Assess the Stormrider |q 79107/1 |goto Dornogal/0 38.28,70.65 |count 1
step
talk Stormrider Vokmar##214966
Select _"You all right?"_ |gossip 121936
Select _"Are the four of you all that's left?"_ |gossip 121948
Assess the Stormrider |q 79107/1 |goto Dornogal/0 38.29,70.87 |count 2
step
talk Stormrider Edeltrau##214964
Select _"Are you okay?"_ |gossip 121935
Select _"Where did the stormrooks come from?"_ |gossip 121943
Assess the Stormrider |q 79107/1 |goto Dornogal/0 38.29,71.11 |count 3
step
talk Stormrider Hunfrid##220669
Select _"Hello?"_ |gossip 121937
Select _" Would Baelgrim have told anyone how to summon stormrooks?"_ |gossip 121938
Assess the Stormrider |q 79107/1 |goto Dornogal/0 38.39,71.15 |count 4
step
talk Rooktender Lufsela##222279
Select _"Do you know how to find more stormrooks?"_ |gossip 122017
Question Lufsela |q 79107/2 |goto Dornogal/0 38.33,71.70
step
talk Rooktender Lufsela##215039
turnin After the Storm##79107 |goto Dornogal/0 37.45,82.17
accept Dhar Oztan##81914 |goto Dornogal/0 37.45,82.17
step
talk Olbarig##214995
turnin Dhar Oztan##81914 |goto Isle of Dorn/0 28.54,61.01
accept Conduit of the Southern Storm##79124 |goto Isle of Dorn/0 28.54,61.01
step
click Storage Chest
|tip Upstairs inside the middle level of the building.
Select _"<Open the chest.>"_ |gossip 122158
collect Conduit of the Southern Storm##218455 |q 79124/2 |goto Isle of Dorn/0 27.79,59.70
step
talk Rooktender Lufsela##215039
turnin Conduit of the Southern Storm##79124 |goto Isle of Dorn/0 27.64,60.49
step
talk Olbarig##214995
accept Charging Up That Hill##79475 |goto Isle of Dorn/0 27.64,60.53
accept Heeding the Call##79476 |goto Isle of Dorn/0 27.64,60.53
stickystart "Charge_The_Conduit"
step
clicknpc Stranded Pilgrim##217758+
|tip They look like {o}scared dwarves{}.
Help #8# Stranded Earthen |q 79476/1 |goto Isle of Dorn/0 26.76,57.69
step
label "Charge_The_Conduit"
Kill enemies around this area
Charge the Conduit |q 79475/1 |goto Isle of Dorn/0 27.03,57.55
'|kill Charged Spirecrystal##217736, Charged Storm Wolf##217735, Stirred Cobblestone##217738
step
talk Rooktender Lufsela##215039
turnin Charging Up That Hill##79475 |goto Isle of Dorn/0 25.62,57.21
turnin Heeding the Call##79476 |goto Isle of Dorn/0 25.62,57.21
accept Rook Rally##79129 |goto Isle of Dorn/0 25.62,57.21
step
Kill the enemies that attack
Safeguard the Ritual |q 79129/1 |goto Isle of Dorn/0 24.98,58.40
'|kill Rampant Air Elemental##215048, Rampant Thunder Elemental##222888
step
talk Rooktender Lufsela##215039
Select _"<Offer your strength.>"_ |gossip 120784
Encourage Lufsela |q 79129/2 |goto Isle of Dorn/0 24.91,58.61
step
talk Thrall##214919
turnin Rook Rally##79129 |goto Isle of Dorn/0 27.81,60.81
accept Ground Pounders##79146 |goto Isle of Dorn/0 27.81,60.81
step
talk Adelgonn##215277
turnin Ground Pounders##79146 |goto Isle of Dorn/0 33.32,63.32
step
talk Overlord Geya'rah##215187
accept Goldbricking##79140 |goto Isle of Dorn/0 33.28,63.32
step
talk High Exarch Turalyon##223205
accept Metal and Stone##79145 |goto Isle of Dorn/0 33.33,63.38
step
Watch the dialogue
|tip The {o}Earthen Trainees{} walk up to the building.
|tip {o}Vindicator Jaelaana{} will tell each of them to get a {o}certain type of weapon{}.
|tip Click the {o}racks nearby{} that {o}match the type of weapon{} she says.
Arm #10# Earthen Trainees |q 79145/1 |goto Isle of Dorn/0 34.24,63.73
'|clicknpc Vindicator Jaelaana##223197
step
talk Undisciplined Earthen##218118+
Select _"Let's spar!"_ |gossip 120807
kill Undisciplined Earthen##218118+
Spar with #8# Undisciplined Earthen |q 79140/1 |goto Isle of Dorn/0 33.92,62.34
'|talk Undisciplined Earthen##218119
step
talk Overlord Geya'rah##215187
turnin Goldbricking##79140 |goto Isle of Dorn/0 33.28,63.32
step
talk High Exarch Turalyon##223205
turnin Metal and Stone##79145 |goto Isle of Dorn/0 33.33,63.38
step
talk Adelgonn##215277
accept Home to Roost##81915 |goto Isle of Dorn/0 33.31,63.32
step
talk Rooktender Lufsela##215039
turnin Home to Roost##81915 |goto Isle of Dorn/0 28.99,61.74
accept Strays##79477 |goto Isle of Dorn/0 28.99,61.74
step
talk Stormrider Kothilde##218745
Select _"You're needed back at Dhar Oztan."_ |gossip 120979
Find the Stray Recruit |q 79477/1 |goto Isle of Dorn/0 31.47,56.35 |count 1
step
talk Stormrider Adalar##218744
Select _"You're needed back at Dhar Oztan."_ |gossip 120968
Find the Stray Recruit |q 79477/1 |goto Isle of Dorn/0 23.47,51.07 |count 2
step
talk Stormrider Gurnot##218743
Select _"You're needed back at Dhar Oztan."_ |gossip 120977
Find the Stray Recruit |q 79477/1 |goto Isle of Dorn/0 23.66,67.14 |count 3
step
talk Kurdran Wildhammer##215211
turnin Strays##79477 |goto Isle of Dorn/0 29.07,61.59
accept Flight Training 101##79147 |goto Isle of Dorn/0 29.07,61.59
step
Watch the dialogue
Witness the Rook Supercharging |q 79147/1 |goto Isle of Dorn/0 28.94,61.61
step
clicknpc Shraubendre##217835
Select _"(Skyriding) Follow my lead, Shraubendre."_
|tip You can choose the {o}other dialogue option{} to complete the {o}quest goal easier{}.
Mount Shraubendre |q 79147/2 |goto Isle of Dorn/0 28.94,61.61
step
Complete the Maneuvering Lesson |q 79147/3
|tip Follow the {o}line trails{} and {o}fly through the rings{}.
step
talk Kurdran Wildhammer##215211
turnin Flight Training 101##79147 |goto Isle of Dorn/0 35.02,72.22
accept Flight Training 102##81912 |goto Isle of Dorn/0 35.02,72.22
step
Dismount Your Algarian Stormrider |complete not hasbuff(417888) or completedq(81912) |goto Isle of Dorn/0 34.94,72.10
|tip The Algarian Stormrider shares a buff with the NPC you need to fly on.
|tip The following step to mount Shraubendre will skip if you are on this mount.
|only if hasbuff(417888)
step
clicknpc Shraubendre##223762
Select _"(Skyriding) Follow my lead, Shraubendre."_
|tip You can choose the {o}other dialogue option{} to complete the {o}quest goal easier{}.
Mount Shraubendre |havebuff Algarian Stormrider##417888 |goto Isle of Dorn/0 34.94,72.10 |or |q 81912
'|invehicle |or |q 81912
step
Hit #15# Targets |q 81912/1 |goto Isle of Dorn/0 50.62,69.97
|tip {o}Follow the instructions{} on the screen and use your {o}skyriding abilities{} to shoot {o}targets{}.	|only if not invehicle
|tip Use the abilities on your action bar to {o}shoot targets as you fly{}.					|only if invehicle
|tip They look like {o}huge blue bullseye target symbols{} in the air.
step
talk Kurdran Wildhammer##215211
turnin Flight Training 102##81912 |goto Isle of Dorn/0 61.75,65.52
accept Flight Training 103##81913 |goto Isle of Dorn/0 61.75,65.52
step
Dismount Your Algarian Stormrider |complete not hasbuff(417888) or completedq(81913) |goto Isle of Dorn/0 61.62,65.41
|tip The Algarian Stormrider shares a buff with the NPC you need to fly on.
|tip The following step to mount Shraubendre will skip if you are on this mount.
|only if hasbuff(417888)
step
clicknpc Shraubendre##223762
Select _"(Skyriding) Follow my lead, Shraubendre."_
|tip You can choose the {o}other dialogue option{} to complete the {o}quest goal easier{}.
Mount Shraubendre |havebuff Algarian Stormrider##417888 |goto Isle of Dorn/0 61.62,65.41 |or |q 81913
'|invehicle |or |q 81913
step
Blast #50# Shalemaws |q 81913/1 |goto Isle of Dorn/0 69.03,70.50
|tip {o}Follow the instructions{} on the screen and use your {o}skyriding abilities{} to shoot {o}Tiderusher Shalemaws{}.	|only if not invehicle
|tip Use the abilities on your action bar to {o}shoot Tiderusher Shalemaws as you fly{}.					|only if invehicle
'|kill Tiderusher Shalemaw##220887
step
talk Olbarig##214995
turnin Flight Training 103##81913 |goto Isle of Dorn/0 75.97,39.88
accept Paying Respects##79480 |goto Isle of Dorn/0 75.97,39.88
step
kill 8 Faithful of Zirix##216938 |q 79480/1 |goto Isle of Dorn/0 75.93,37.07
step
talk Olbarig##214995
turnin Paying Respects##79480 |goto Isle of Dorn/0 76.56,35.67
accept The Edicts##79156 |goto Isle of Dorn/0 76.56,35.67
step
talk Merrix##214916
Select _"Reporting in."_ |gossip 121537
Report to Merrix |q 79156/1 |goto Isle of Dorn/0 57.06,50.52
step
talk Merrix##214916
turnin The Edicts##79156 |goto Isle of Dorn/0 57.06,50.52
accept Titanic Failsafe##79157 |goto Isle of Dorn/0 57.06,50.52
step
Dismount Your Algarian Stormrider |complete not hasbuff(417888) or completedq(79157) |goto Isle of Dorn/0 57.25,50.70
|tip The Algarian Stormrider shares a buff with the NPC you need to fly on.
|tip The following step to mount Shraubendre will skip if you are on this mount.
|only if hasbuff(417888)
step
clicknpc Shraubendre##223764
Select _"(Skyriding) Follow my lead, Shraubendre."_
|tip You can choose the {o}other dialogue option{} to complete the {o}quest goal easier{}.
Mount Shraubendre |havebuff Algarian Stormrider##417888 |goto Isle of Dorn/0 57.25,50.70 |or |q 79157
'|invehicle |or |q 79157
step
kill Colossal Titan Construct##212213 |q 79157/2 |goto Isle of Dorn/0 59.16,74.45
|tip {o}Follow the instructions{} on the screen and use your {o}skyriding abilities{} to shoot the {o}Colossal Titan Construct{}.	|only if not invehicle
|tip Use the abilities on your action bar to {o}shoot the Colossal Titan Construct as you fly{}.					|only if invehicle
step
talk Alleria Windrunner##223944
turnin Titanic Failsafe##79157 |goto Dornogal/0 31.54,59.65
accept Gathering Intel##79224 |goto Dornogal/0 31.54,59.65
step
talk Widow Arak'nai##207471
turnin Gathering Intel##79224 |goto Azj-Kahet/0 55.73,43.84
accept A Spider's-Eye View##79227 |goto Azj-Kahet/0 55.73,43.84
step
clicknpc General's Scouting Shadecaster##220665
|tip On the roof of the tower.
Scout the Eastern Span |q 79227/2 |goto Azj-Kahet/0 64.18,74.20
step
clicknpc Weaver's Scouting Shadecaster##224205
|tip On the roof of the tower.
Scout the Twitching Gorge |q 79227/3 |goto Nerub'ar/1 78.73,41.77 |notravel
step
clicknpc Vizier's Scouting Shadecaster##220661
|tip On the roof of the building.
Scout the Umbral Bazaar |q 79227/1 |goto Nerub'ar/1 49.73,20.23
step
talk Lilian Voss##215626
turnin A Spider's-Eye View##79227 |goto Nerub'ar/1 69.55,71.70
accept Creeping Through Corridors##79230 |goto Nerub'ar/1 69.55,71.70
step
talk Y'tekhi##215637
accept Lab Access##79233 |goto Nerub'ar/1 69.47,72.20
step
_NOTE:_
During the Next Steps
|tip Use the {o}Vial of Aggression Pheromone{} on-screen button ability on {o}patrolling guards{}.
|tip They look like {o}enemies with blue circles{} above them.
|tip They will {o}become distracted{}.
Click Here to Continue |confirm |q 79230
stickystart "Collect_Loyalist_Secretions"
step
extraaction Vial of Aggression Pheromone##436176
click Cannister of Vile Ooze
|tip Inside the building.
Investigate the Eastern Stockpile |q 79230/1 |goto Nerub'ar/1 68.64,81.55
step
extraaction Vial of Aggression Pheromone##436176
click Suspicious Shipping Container
|tip Inside the building.
kill Ascension-Crazed Soldier##220090
Investigate the Central Warehouse |q 79230/2 |goto Nerub'ar/1 61.85,89.60
step
label "Collect_Loyalist_Secretions"
extraaction Vial of Aggression Pheromone##436176
Kill Loyalist enemies around this area
|tip All around the perimeter of this building.
collect 6 Loyalist Secretions##215457 |q 79233/1 |goto Nerub'ar/1 61.99,74.43
'|kill Loyalist Bio-smith##220814, Loyalist Mutagenician##215980
step
extraaction Vial of Aggression Pheromone##436176
Enter the building |goto Nerub'ar/1 56.89,89.26 < 15 |walk
Watch the dialogue
|tip Inside the building.
Investigate the First Ascended's Prison |q 79230/3 |goto Nerub'ar/1 56.97,93.95
step
talk Y'tekhi##215659
|tip Inside the building.
turnin Lab Access##79233 |goto Nerub'ar/1 57.09,90.99
step
talk Lilian Voss##215628
|tip Inside the building.
turnin Creeping Through Corridors##79230 |goto Nerub'ar/1 56.68,90.62
accept Making of a Monster##79237 |goto Nerub'ar/1 56.68,90.62
step
click Air Duct
|tip On the roof of the building.
Access the Air Duct |q 79237/1 |goto Nerub'ar/1 62.14,77.08
step
click Caustic Alchemical Supplies
|tip Inside the building.
Examine the Caustic Alchemical Supplies |q 79237/3 |goto Nerub'ar/1 60.96,79.01
step
click Experiment Notes
|tip Inside the building.
Examine the Experiment Notes |q 79237/4 |goto Nerub'ar/1 63.40,78.93
step
click Discarded Shadecaster
|tip Inside the building.
Investigate the Discarded Shadecaster |q 79237/5 |goto Nerub'ar/1 62.70,79.92
step
click Escape Line
|tip Inside the building.
Take the Escape Line |q 79237/6 |goto Nerub'ar/1 63.13,79.57
step
talk Lilian Voss##215628
|tip Inside the building.
turnin Making of a Monster##79237 |goto Nerub'ar/1 56.68,90.61
step
talk Y'tekhi##215659
|tip Inside the building.
accept The Queen's Chains##79239 |goto Nerub'ar/1 57.10,90.99
step
clicknpc Caustic Chemicals##223696
|tip Inside the building.
Gather the Caustic Chemicals |q 79239/1 |goto Nerub'ar/1 58.18,92.32 |count 1
step
clicknpc Caustic Chemicals##223696
|tip Inside the building.
Gather the Caustic Chemicals |q 79239/1 |goto Nerub'ar/1 57.98,91.93 |count 2
step
clicknpc Caustic Chemicals##223696
|tip Inside the building.
Gather the Caustic Chemicals |q 79239/1 |goto Nerub'ar/1 55.66,92.73 |count 3
step
clicknpc Caustic Chemicals##223696
|tip Inside the building.
Gather the Caustic Chemicals |q 79239/1 |goto Nerub'ar/1 55.54,93.40 |count 4
step
clicknpc Shackle Anchor##219922
|tip Inside the building.
Free Neferess's Right Leg |q 79239/2 |goto Nerub'ar/1 58.18,93.65
step
clicknpc Shackle Anchor##224312
|tip Inside the building.
Free Neferess's Left Leg |q 79239/4 |goto Nerub'ar/1 55.81,93.68
step
clicknpc Shackle Anchor##224313
|tip Inside the building.
Free Neferess's Right Arm |q 79239/6 |goto Nerub'ar/1 57.45,92.72
step
Free Neferess |q 79239/8 |goto Nerub'ar/1 56.47,92.75
|tip Inside the building.
step
talk Lilian Voss##215661
turnin The Queen's Chains##79239 |goto Nerub'ar/1 78.75,57.37
accept Rogue Agent##79240 |goto Nerub'ar/1 78.75,57.37
step
kill Y'tekhi##215660
Subdue Y'tekhi |q 79240/1 |goto Nerub'ar/1 78.13,54.86
step
Bring Y'tekhi to Safety |q 79240/2 |goto Nerub'ar/1 78.64,39.60
step
talk Lilian Voss##215662
turnin Rogue Agent##79240 |goto Nerub'ar/1 78.64,39.60
accept Go Loud##79241 |goto Nerub'ar/1 78.64,39.60
accept Manufactured Mutiny##79243 |goto Nerub'ar/1 78.64,39.60
step
clicknpc Repurposed Nerubian Charge##220213
|tip On the bridge.
Plant the Charge |q 79241/1 |goto Azj-Kahet/0 59.38,75.06 |count 1
step
extraaction Pheromone Grenade##441663
kill Siege Marshal Tekhzok##215987 |q 79243/1 |goto Azj-Kahet/0 61.14,73.47
|tip Use the {o}Pheromone Grenade{} ability on it.
|tip It appears as a button on the screen.
|tip It walks around this area.
step
clicknpc Repurposed Nerubian Charge##220213
Plant the Charge |q 79241/1 |goto Azj-Kahet/0 61.00,74.60 |count 2
step
clicknpc Repurposed Nerubian Charge##220213
Plant the Charge |q 79241/1 |goto Azj-Kahet/0 61.64,72.52 |count 3
step
clicknpc Repurposed Nerubian Charge##220213
Plant the Charge |q 79241/1 |goto Azj-Kahet/0 63.62,71.47 |count 4
step
clicknpc Repurposed Nerubian Charge##220213
Plant the Charge |q 79241/1 |goto Azj-Kahet/0 66.48,70.59 |count 5
step
extraaction Pheromone Grenade##441663
kill Royal Quartermaster Ze'erik##215988 |q 79243/2 |goto Azj-Kahet/0 66.76,69.71
|tip Use the {o}Pheromone Grenade{} ability on him.
|tip It appears as a button on the screen.
|tip He walks around this area.
step
clicknpc Repurposed Nerubian Charge##220213
Plant the Charge |q 79241/1 |goto Azj-Kahet/0 66.61,68.15 |count 6
step
clicknpc Dry Webbing##220384
Light the Fuse |q 79241/2 |goto Azj-Kahet/0 67.59,64.78
step
talk Lilian Voss##215625
turnin Go Loud##79241 |goto Azj-Kahet/0 55.72,44.11
turnin Manufactured Mutiny##79243 |goto Azj-Kahet/0 55.72,44.11
accept News From Below##79244 |goto Azj-Kahet/0 55.72,44.11
step
talk Widow Arak'nai##207471
Select _"<Inform the Weaver of your discoveries in the Transformatory.>"_ |gossip 121590
Inform the Weaver |q 79244/1 |goto Azj-Kahet/0 55.73,43.84
step
Report Back to Alleria at the Coreway in Dornogal |q 79244/2 |goto Dornogal/0 31.54,59.66
step
talk Alleria Windrunner##223944
turnin News From Below##79244 |goto Dornogal/0 31.54,59.66
accept A Mysterious Signal##79022 |goto Dornogal/0 31.54,59.66
step
talk High Speaker Brinthe##214663
turnin A Mysterious Signal##79022 |goto The Ringing Deeps/0 56.27,74.92
accept Small Friend, Big Plans##79023 |goto The Ringing Deeps/0 56.27,74.92
step
talk ZZ-01-47##214664
Select _"<Vocalize a series of sounds in an attempt to mimic her greeting.>"_ |gossip 120640
Introduce Yourself to ZZ-01-47 |q 79023/1 |goto The Ringing Deeps/0 56.29,74.90
step
talk High Speaker Brinthe##214663
turnin Small Friend, Big Plans##79023 |goto The Ringing Deeps/0 56.27,74.92
accept Factory Recon##79024 |goto The Ringing Deeps/0 56.27,74.92
step
talk ZZ-01-47##214664
Tell  _"We'll need you to go in to the Golemworks and take a look for us."_ |gossip 121305
Command ZZ-01-47 to Scout the Facility |q 79024/1 |goto The Ringing Deeps/0 56.29,74.90
step
_NOTE:_
During the Next Steps
|tip {o}Avoid enemies with blue circles{} around them.
|tip You can use the {o}Decoy{} ability on your action bar to distract them.
Click Here to Continue |confirm |q 79024
step
click Pipe Grate
Enter the Pipe Grate |q 79024/2 |goto The Ringing Deeps/0 57.95,75.87
step
Scout the Darkfuse Leader |q 79024/3 |goto The Ringing Deeps/0 58.04,76.90
step
Scout the Manufacturing Bay |q 79024/4 |goto The Ringing Deeps/0 56.54,77.62
|tip Inside the building.
step
click Sewer Grate
Sneak Through the Pipes |q 79024/5 |goto The Ringing Deeps/0 57.22,78.30
step
Scout the Cargo Bay |q 79024/6 |goto The Ringing Deeps/0 58.13,79.85
|tip Inside the building.
step
click Pipe Exit Grate
Exit Back Through the Pipe |q 79024/7 |goto The Ringing Deeps/0 58.38,76.59
step
Return to Brinthe |q 79024/8 |goto The Ringing Deeps/0 56.27,74.92
step
talk High Speaker Brinthe##214663
turnin Factory Recon##79024 |goto The Ringing Deeps/0 56.27,74.92
accept Back to Base##79217 |goto The Ringing Deeps/0 56.27,74.92
step
Meet Brinthe at Her Home in Gundargaz |q 79217/1 |goto The Ringing Deeps/0 47.10,34.22
|tip Inside the building.
step
talk High Speaker Brinthe##217245
|tip Inside the building.
turnin Back to Base##79217 |goto The Ringing Deeps/0 47.10,34.22
accept A Plan Comes Together##79025 |goto The Ringing Deeps/0 47.10,34.22
step
click Deactivated War Golem##215568
|tip Inside the building.
Point Out the Golem Factory |q 79025/1 |goto The Ringing Deeps/0 47.08,34.21
step
click Waterworks##417283
|tip Inside the building.
Point Out the Waterworks |q 79025/2 |goto The Ringing Deeps/0 47.08,34.23
step
click Hammer##417282
|tip Inside the building.
Point Out the Shadowvein Extraction Site |q 79025/3 |goto The Ringing Deeps/0 47.06,34.23
step
talk High Speaker Brinthe##217245
|tip Inside the building.
turnin A Plan Comes Together##79025 |goto The Ringing Deeps/0 47.10,34.22
accept To the Waterworks##79324 |goto The Ringing Deeps/0 47.10,34.22
step
talk Dagran Thaurissan II##217331
turnin To the Waterworks##79324 |goto The Ringing Deeps/0 47.30,42.39
accept Putting the Works in Waterworks##79026 |goto The Ringing Deeps/0 47.30,42.39
step
talk ZZ-01-47##216137
accept Elemental Trepidation##79027 |goto The Ringing Deeps/0 47.28,42.38
stickystart "Defeat_The_Elementals"
step
click Congealed Wax
click Right Waterwheel Control Console
Activate the Waterwheel |q 79026/1 |goto The Ringing Deeps/0 45.44,46.36 |count 1
step
click Congealed Wax
click Left Waterwheel Control Console
Activate the Waterwheel |q 79026/1 |goto The Ringing Deeps/0 48.39,46.06 |count 2
step
label "Defeat_The_Elementals"
Kill enemies around this area
Defeat the Elementals |q 79027/1 |goto The Ringing Deeps/0 47.17,44.95
'|kill Disrupted Slime##215703, Disturbed Kelp##215702
step
Enter the building |goto The Ringing Deeps/0 46.28,48.16 < 15 |walk
Enter the Delve |q 79026/2 |goto The Ringing Deeps/0 46.35,48.68
|tip Walk through the {o}portal{} to enter the delve.
|tip Inside the building.
step
kill Waxface##214263
|tip Complete the {o}Waterworks{} delve to accomplish this.
|tip The delve is simple to complete.
Complete the Delve |q 79026/4 |goto The Waterworks/0 46.94,81.68
step
clicknpc Obstructed Drain##220374
|tip After clicking, {o}run away{} from it.
kill Enraged Kelp##220542
Restore the Main Drain |q 79026/3 |goto The Waterworks/0 46.09,83.03
step
click Leave-O-Bot 7000
Exit the Delve with the Leave-O-Bot After Collecting the Rewards |scenarioend |goto The Waterworks/0 46.88,90.61 |q 79026
step
Leave the Waterworks Delve |complete not zone("The Waterworks") |goto The Waterworks/0 46.54,10.57 |q 79026
|tip Walk through the {o}portal{} to leave the delve.
step
click Waterworks Primary Activation
Restore the Waterworks |q 79026/5 |goto The Ringing Deeps/0 47.23,42.35
step
talk Dagran Thaurissan II##217331
turnin Putting the Works in Waterworks##79026 |goto The Ringing Deeps/0 47.30,42.38
turnin Elemental Trepidation##79027 |goto The Ringing Deeps/0 47.30,42.38
accept Shadowvein Extraction##79325 |goto The Ringing Deeps/0 47.30,42.38
step
talk ZZ-01-47##216140
turnin Shadowvein Extraction##79325 |goto The Ringing Deeps/0 55.69,41.09
accept We Require More Minerals##79028 |goto The Ringing Deeps/0 55.69,41.09
step
Watch the dialogue
Listen to Dagran's Report |q 79028/1 |goto The Ringing Deeps/0 55.69,41.09
step
Enter the building |goto The Ringing Deeps/0 56.42,38.57 < 15 |walk
click Power Substation Console
|tip Inside the building.
Watch the dialogue
Investigate the Shadowvein Power Substation |q 79028/2 |goto The Ringing Deeps/0 56.42,36.98
step
Watch the dialogue
|tip Inside the building.
Locate the Pipe Room |q 79028/3 |goto The Ringing Deeps/0 55.80,37.16
step
click Valve
|tip They look like {o}red wheel handles{}.
|tip Click the {o}middle valve{}.
|tip Inside the building.
|tip Move quickly to the next valve.
Raise the Pressure |havebuff Pressure Rising...##435416 |goto The Ringing Deeps/0 55.67,37.29 |q 79028
step
click Valve
|tip They look like {o}red wheel handles{}.
|tip Click the {o}bottom valve{}.
|tip Inside the building.
|tip Move quickly to the next valve.
Raise the Pressure More |havebuff And Rising...##435421 |goto The Ringing Deeps/0 55.66,36.96 |q 79028
step
click Valve
|tip They look like {o}red wheel handles{}.
|tip Click the {o}top valve{}.
|tip Inside the building.
Supply Water to the Shadowvein Boilers |q 79028/4 |goto The Ringing Deeps/0 55.91,36.59
step
click Power Substation Console
|tip Inside the building.
Restart the Power Substation |q 79028/5 |goto The Ringing Deeps/0 56.42,36.98
stickystart "Decontaminate_Infested_Crushers"
step
click Rubble
Clear the Mining Cart Track |q 79028/7 |goto The Ringing Deeps/0 59.27,41.11
step
label "Decontaminate_Infested_Crushers"
extraaction Arc Emitter##437962
Decontaminate #5# Infested Crushers |q 79028/6 |goto The Ringing Deeps/0 57.85,38.54
|tip Use the {o}Arc Emitter{} button ability next to {o}Infested Crushers{}.
|tip They look like {o}large metal pump machines{}.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
|tip You will be attacked.
step
_Next to you:_
talk ZZ-01-47
turnin We Require More Minerals##79028 |goto The Ringing Deeps/0 58.42,37.73
accept The Motherlode##80145 |goto The Ringing Deeps/0 58.42,37.73
step
Enter the cave |goto The Ringing Deeps/0 58.54,36.00 < 15 |walk |only if not (subzone("Shadowvein Mine") and indoors())
click Activation Lever
|tip Inside the cave.
Activate the Cave Crushers |q 80145/1 |goto The Ringing Deeps/0 58.57,33.91
step
kill Magma Serpent##215770
|tip Inside the cave.
Defeat the Magma Serpent |q 80145/2 |goto The Ringing Deeps/0 58.68,33.73
step
_Next to you:_
talk ZZ-01-47
Select _"<Report your findings to Dagran.>"_ |gossip 121561
Speak to ZZ-01-47 |q 80145/3 |goto The Ringing Deeps/0 58.68,33.73
step
_Next to you:_
talk ZZ-01-47
turnin The Motherlode##80145 |goto The Ringing Deeps/0 58.68,33.73
accept Back to Where it Began##80517 |goto The Ringing Deeps/0 58.68,33.73
step
Leave the cave |goto The Ringing Deeps/0 58.54,36.00 < 15 |walk |only if subzone("Shadowvein Mine") and indoors()
talk High Speaker Brinthe##214663
turnin Back to Where it Began##80517 |goto The Ringing Deeps/0 56.27,74.91
accept It's Sabotage##79029 |goto The Ringing Deeps/0 56.27,74.91
step
Kill enemies around this area
|tip Only {o}certain enemies will count{} for the quest goal.
|tip They're the {o}elite enemies{} that eventually attack after you click {o}golems and batteries{}
click Various Object+
|tip They look like different objects with various names.
|tip You will be attacked by {o}waves of enemies{} after clicking {o}golems and batteries{}.
Cause Mayhem |q 79029/1 |goto The Ringing Deeps/0 58.44,77.96
'|kill Foreman-in-Training##220517, Livid Enforcer##227356
step
Enter the building |goto The Ringing Deeps/0 57.09,77.62 < 15 |walk
talk High Speaker Brinthe##220896
|tip Inside the building.
Select _"Let's do this."_ |gossip 121606
Speak to Brinthe |q 79029/2 |goto The Ringing Deeps/0 56.06,77.62
step
Watch the dialogue
|tip Inside the building.
kill Supervisor Radlock##220897
Activate and Secure the Facility |q 79029/3 |goto The Ringing Deeps/0 56.06,77.62
step
talk High Speaker Brinthe##220928
|tip Inside the building.
turnin It's Sabotage##79029 |goto The Ringing Deeps/0 56.06,77.62
accept The Voice of the Speakers##79030 |goto The Ringing Deeps/0 56.06,77.62
step
talk Alleria Windrunner##223944
turnin The Voice of the Speakers##79030 |goto Dornogal/0 31.55,59.66
accept A Tide Needing Turned##78941 |goto Dornogal/0 31.55,59.66
step
talk General Steelstrike##214271
turnin A Tide Needing Turned##78941 |goto Hallowfall/0 71.64,59.21
accept The Might of Khaz Algar##78942 |goto Hallowfall/0 71.64,59.21
accept Steel and Flames##78943 |goto Hallowfall/0 71.64,59.21
stickystart "Stem_The_Nerubian_Tide"
step
use the Arathi Warhorn##217309
|tip Use it {o}near allies{}.
|tip They look like {o}various friendly NPCs{}.
Rally #20# Algari Forces |q 78943/1 |goto Hallowfall/0 71.00,61.44
'|clicknpc Machine Speaker Mech##217552, Unbound Fighter##217628, Hallowfall Lightblade##217554, Unbound Stormrider##217555, Arathi Warlynx##217634
step
talk Thrall##214275
turnin Steel and Flames##78943 |goto Hallowfall/0 68.57,64.22
step
talk Lady Jaina Proudmoore##214276
accept Cutting Off the Legs##78950 |goto Hallowfall/0 68.55,64.15
step
kill Kaz'vik##219751 |q 78950/2 |goto Hallowfall/0 67.89,67.61
|tip Use the alternating button on the screen to assist you.
step
kill Nix'k the Wicked##219749 |q 78950/1 |goto Hallowfall/0 66.69,64.91
|tip Use the alternating button on the screen to assist you.
step
kill Anub'ata##219855 |q 78950/3 |goto Hallowfall/0 64.78,68.45
|tip Use the alternating button on the screen to assist you.
step
label "Stem_The_Nerubian_Tide"
Kill enemies around this area
Stem the Nerubian Tide |q 78942/1 |goto Hallowfall/0 68.00,63.39
'|kill Agitated Chitterer##216599, Chitin Ravager##214394, Frenzied Swarmer##214397, Loyal Shadeweaver##214400, Maddened Hierophant##214398, Nerubian Crypt Lord##214395, Nerubian Fighter##214411, Nerubian Hulk##214396
step
talk Faerin Lothar##214274
turnin The Might of Khaz Algar##78942 |goto Hallowfall/0 64.58,61.79
step
talk Anduin Wrynn##214273
turnin Cutting Off the Legs##78950 |goto Hallowfall/0 64.53,61.78
accept A Light in the Dark##78948 |goto Hallowfall/0 64.53,61.78
step
talk Anduin Wrynn##214273
Select _"I'm ready to catch up with Alleria. (Start the scenario)."_ |gossip 122377
Speak with Anduin to Chase Down Xal'atath |q 78948/1 |goto Hallowfall/0 64.53,61.78
step
Begin the Scenario |scenariostart |q 78948
step
click Corrupted Flame
|tip Use the {o}Call for Aid{} button ability {o}when it appears{}.
|tip {o}Stand in the area of light{} that appears.
|tip It will {o}increase the Hope bar{}.
Kill the enemies that attack
Light the North Brazier |scenariogoal 1/67322 |goto Priory Scenario/0 64.77,33.05 |q 78948
|tip Stand next to the {o}lit brazier to fill the Hope bar{}.
step
click Corrupted Flame
|tip Use the {o}Call for Aid{} button ability {o}when it appears{}.
|tip {o}Stand in the area of light{} that appears.
|tip It will {o}increase the Hope bar{}.
Kill the enemies that attack
Light the South Brazier |scenariogoal 1/66409 |goto Priory Scenario/0 62.86,74.47 |q 78948
|tip Stand next to the {o}lit brazier to fill the Hope bar{}.
step
Enter the building |goto Priory Scenario/0 66.76,49.82 < 30 |walk
kill Shadesworn Crusher##218527 |scenariogoal 2/66412 |goto Priory Scenario/0 60.23,50.70 |q 78948
step
click Oil Brazier
Cleanse the Holy Oilwell |scenariogoal 3/66413 |goto Priory Scenario/0 56.57,51.25 |q 78948
step
kill The Broken Queen##214368 |scenariogoal 4/66415 |goto Priory Scenario/0 37.90,54.29 |q 78948
step
Enter the Priory |scenarioend |goto Priory Scenario/0 27.32,55.85 |q 78948
step
Defeat Xal'atath |q 78948/2 |goto Priory Scenario/0 27.32,55.85
step
Complete the Scenario |scenarioend |q 78948
step
talk Alleria Windrunner##220688
turnin A Light in the Dark##78948 |goto Hallowfall/0 35.93,35.46
accept Return to Dornogal##83503 |goto Hallowfall/0 35.93,35.46
step
talk Merrix##226362
|tip Inside the building.
Select _"<Report what happened in Hallowfall.>"_ |gossip 123407
Report Back to Merrix in Dornogal |q 83503/1 |goto Dornogal/0 39.86,26.01
step
talk Anduin Wrynn##225897
|tip On top of the mountain.
turnin Return to Dornogal##83503 |goto Dornogal/0 25.35,66.19
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The War Within (70-80)\\Dragon Glyphs\\The War Within Dragon Glyphs (All Zones)",{
author="support@zygorguides.com",
achieveid={16575,16576,16577,16578,17411},
},[[
step
_NOTE:_
Skyriding Glyphs & Skyriding Skills
|tip Skyriding Glyphs look like large round golden runes that float in the air, spread out across the continent.
|tip You fly through them on your skyriding mount to collect them.
|tip Collecting them will give you Skyriding skill points, which can be used to increase the power of your Skyriding ability.
|tip This guide will walk you through collecting all of the Skyriding Glyphs, so that you can max out your Skyriding skill quickly.
|tip As you collect Skyriding Glyphs, to spend the skill points, click the "Dragon Isles Summary" button on your minimap, and click the "View" button under "Dragonriding Skills & Unlocks".
Click Here to Continue |confirm
step
Collect the Skyriding Glyph: Storm's Watch |achieve 40166/3 |goto Isle of Dorn/0 37.90,40.98
|tip Underneath the canopy of the large tree.
step
Collect the Skyriding Glyph: Dhar Oztan |achieve 40166/2 |goto Isle of Dorn/0 23.14,58.55 |notravel
|tip On top of the mountain.
step
Collect the Skyriding Glyph: Dhar Durgaz |achieve 40166/4 |goto Isle of Dorn/0 44.47,79.73 |notravel
|tip Next to the tower.
step
Collect the Skyriding Glyph: Sunken Shield |achieve 40166/5 |goto Isle of Dorn/0 68.24,71.79 |notravel
|tip On top of the pillar.
step
Collect the Skyriding Glyph: Mourning Rise |achieve 40166/9 |goto Isle of Dorn/0 62.11,44.92 |notravel
step
Collect the Skyriding Glyph: Ironwold |achieve 40166/10 |goto Isle of Dorn/0 71.89,47.21 |notravel
|tip Underneath the bridge.
step
Collect the Skyriding Glyph: Cinderbrew Meadery |achieve 40166/8 |goto Isle of Dorn/0 78.22,42.75 |notravel
|tip On top of the mountain.
step
Collect the Skyriding Glyph: The Three Shields |achieve 40166/1 |goto Isle of Dorn/0 75.75,22.22 |notravel
|tip On top of the mountain.
step
Collect the Skyriding Glyph: Thunderhead Peak |achieve 40166/7 |goto Isle of Dorn/0 56.21,17.85 |notravel
|tip In the gap between to two cliffs.
step
Collect the Skyriding Glyph: Thul Medran |achieve 40166/6 |goto Isle of Dorn/0 47.75,26.72 |notravel
|tip At the top of the mountain peak.
step
Collect the Skyriding Glyph: The Stonevault Exterior |achieve 40703/2 |goto The Ringing Deeps/0 46.88,10.08
|tip At the top of the building.
step
Collect the Skyriding Glyph: Gundargaz |achieve 40703/1 |goto The Ringing Deeps/0 48.99,31.52 |notravel
|tip Between the pipes and rock pillar.
step
Collect the Skyriding Glyph: The Lost Mines |achieve 40703/3 |goto The Ringing Deeps/0 57.28,31.57 |notravel
|tip Above the rocky ridge.
step
Collect the Skyriding Glyph: Chittering Den |achieve 40703/4 |goto The Ringing Deeps/0 69.45,34.50 |notravel
|tip At the top of the waterfall.
step
Collect the Skyriding Glyph: The Rumbling Wastes |achieve 40703/5 |goto The Ringing Deeps/0 56.21,56.20 |notravel
|tip High up near the red crystals.
step
Collect the Skyriding Glyph: Taelloch Mine |achieve 40703/8 |goto The Ringing Deeps/0 62.93,66.06 |notravel
|tip On top of the large stone cavern support.
step
Collect the Skyriding Glyph: Abyssal Excavation |achieve 40703/7 |goto The Ringing Deeps/0 63.96,94.94 |notravel
|tip Up near the hanging vines.
step
Collect the Skyriding Glyph: The Living Grotto |achieve 40703/6 |goto The Ringing Deeps/0 49.30,66.06 |notravel
step
Collect the Skyriding Glyph: The Waterworks |achieve 40703/9 |goto The Ringing Deeps/0 46.47,51.74 |notravel
|tip At the top of the waterfall.
step
Collect the Skyriding Glyph: Dunelle's Kindness |achieve 40704/4 |goto Hallowfall/0 69.94,44.23
|tip On the balcony of the tower.
step
Collect the Skyriding Glyph: The Fangs |achieve 40704/1 |goto Hallowfall/0 62.86,51.77 |notravel
|tip High up above the rock.
step
Collect the Skyriding Glyph: Sina's Yearning |achieve 40704/2 |goto Hallowfall/0 57.23,32.60 |notravel
|tip Between the hanging rocks.
step
Collect the Skyriding Glyph: Bleak Sand |achieve 40704/5 |goto Hallowfall/0 62.76,7.21 |notravel
step
Collect the Skyriding Glyph: Velhan's Claim |achieve 40704/9 |goto Hallowfall/0 45.77,12.28 |notravel
|tip Underneath the arch.
step
Collect the Skyriding Glyph: Priory of the Sacred Flame |achieve 40704/7 |goto Hallowfall/0 35.40,33.88 |notravel
|tip At the top of the tower.
step
Collect the Skyriding Glyph: Fortune's Fall |achieve 40704/8 |goto Hallowfall/0 30.77,51.57 |notravel
step
Collect the Skyriding Glyph: Mereldar |achieve 40704/6 |goto Hallowfall/0 43.32,52.78 |notravel
|tip Between the tops of the arch.
step
Collect the Skyriding Glyph: Tenir's Ascent |achieve 40704/10 |goto Hallowfall/0 57.67,64.67 |notravel
|tip Between the ship and the wall.
step
Collect the Skyriding Glyph: Sanguine Grasps |achieve 40704/3 |goto Hallowfall/0 63.70,65.34 |notravel
step
Collect the Skyriding Glyph: Trickling Abyss |achieve 40705/10 |goto Azj-Kahet/1 70.10,25.20
|tip Up in the cavern behind the hanging rocks.
step
Collect the Skyriding Glyph: Arathi's End |achieve 40705/1 |goto Azj-Kahet/1 63.41,13.76 |notravel
|tip Between two hanging rocks.
step
Collect the Skyriding Glyph: Siegehold |achieve 40705/2 |goto Azj-Kahet/1 47.59,21.20 |notravel
|tip High up above the rock near the purple ceiling.
step
Collect the Skyriding Glyph: Ruptured Lake |achieve 40705/3 |goto Azj-Kahet/1 27.33,40.99 |notravel
|tip High up inside the curly root near the ceiling.
step
Collect the Skyriding Glyph: Eye of Ansurek |achieve 40705/4 |goto Azj-Kahet/1 44.08,57.89 |notravel
|tip In the top of the tower.
step
Collect the Skyriding Glyph: Old Sacrificial Pit |achieve 40705/5 |goto Nerub'ar/1 13.09,33.24 |notravel
|tip High up towards the cavern ceiling in the alcove.
step
Collect the Skyriding Glyph: Deepwalker Pass |achieve 40705/6 |goto Azj-Kahet/1 58.81,91.28 |notravel
|tip Underneath the top of the hanging platform.
step
Collect the Skyriding Glyph: The Maddening Deep |achieve 40705/7 |goto Azj-Kahet/1 66.30,84.50 |notravel
|tip Underneath the web bridge.
step
Collect the Skyriding Glyph: Rak-Ush |achieve 40705/8 |goto Azj-Kahet/1 72.56,85.56 |notravel
|tip Underneath the hive next to the rock by the falling vapor.
step
Collect the Skyriding Glyph: Silken Ward |achieve 40705/9 |goto Azj-Kahet/1 57.85,58.13 |notravel
|tip Underneath the hanging platform.
step
Collect the Skyriding Glyph: Untamed Valley |achieve 40705/11 |goto Azj-Kahet/1 65.25,52.44 |notravel
|tip High up in the cavern.
]])
