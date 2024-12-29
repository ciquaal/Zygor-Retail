local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("EventsC") then return end
ZygorGuidesViewer.GuideMenuTier = "CAT"
ZygorGuidesViewer:RegisterGuide("Events Guides\\The War Within (70-80)\\Radiant Echoes",{
author="support@zygorguides.com",
description="This guide will assist you in completing Radiant Echoes in Dragonblight, Dustwallow Marsh, and Searing Gorge.",
startlevel=10,
patch='110000',
},[[
step
confirm
|tip This event rotates from Dustwallow Marsh to Dragonblight to Searing Gorge in a sequence every 90 minutes.
|tip Week two will reduce the event cycle to every 60 minutes, and the week following will reduce the cycle to every 30 minutes.
|tip There will be 4 separate stages to each zone event.
|tip The first stage you will need to defeat Congealed Memories with other players.
|tip In the second stage, you will need to complete 6 memory events around the zone from a pool of 9 possibilites unique to that zone.
|tip In stage three, a remembered version of the Lich King, Ragnaros, or Onyxia will spawn respective to the apropriate zone.
|tip After defeating the boss, stage 4 persists until the end of the zone event.
|tip During the final stage, you can farm enemies from memories on the map for Residual Memories.
step
accept The War Within##81930 |goto Stormwind City/0 63.19,72.02
|tip You will automatically accept this quest.
|only if Alliance and completedq(76283)
step
Meet Jaina in Silithus |q 81930/2 |goto Silithus/0 41.96,45.04
|only if Alliance and completedq(76283)
step
talk Lady Jaina Proudmoore##213625
turnin The War Within##81930 |goto Silithus/0 41.96,45.04
|only if Alliance and completedq(76283)
step
accept The War Within##78713 |goto Orgrimmar/1 50.96,78.44
|tip You will automatically accept this quest.
|only if Horde and completedq(76283)
step
Meet Jaina in Silithus |q 78713/2 |goto Silithus/0 41.96,45.04
|only if Horde and completedq(76283)
step
talk Lady Jaina Proudmoore##213625
turnin The War Within##78713 |goto Silithus/0 41.96,45.04
|only if Horde and completedq(76283)
step
talk Thrall##213620
accept Oh, THAT Sword##78714 |goto Silithus/0 41.96,45.05
|only if completedq(76283)
step
click Titan Translocator
Enter the Heart Chamber |q 78714/1 |goto Silithus/0 43.20,44.49
|only if completedq(76283)
step
talk Magni Bronzebeard##213624
turnin Oh, THAT Sword##78714 |goto Chamber of Heart/2 50.06,65.19
accept Azeroth's Voice##78715 |goto Chamber of Heart/2 50.06,65.19
|only if completedq(76283)
step
click Chamber Console
Activate the Chamber of Heart Console |q 78715/1 |goto Chamber of Heart/2 56.50,64.69 |count 1
|only if completedq(76283)
step
click Chamber Console
Activate the Chamber of Heart Console |q 78715/1 |goto Chamber of Heart/2 50.14,74.00 |count 2
|only if completedq(76283)
step
click Chamber Console
Activate the Chamber of Heart Console |q 78715/1 |goto Chamber of Heart/2 43.90,64.72 |count 3
|only if completedq(76283)
step
talk Magni Bronzebeard##213624
Select _"I'm ready. Let's begin."_ |gossip 120882
Talk to Magni to Begin the Ritual |q 78715/2 |goto Chamber of Heart/2 50.06,65.21
|only if completedq(76283)
step
talk Lady Jaina Proudmoore##213625
turnin Azeroth's Voice##78715 |goto Chamber of Heart/2 49.53,58.51
accept Painful Lessons##78716 |goto Chamber of Heart/2 49.53,58.51
|only if completedq(76283)
step
click Portal to Dalaran
Take Jaina's Portal to Dalaran |q 78716/1 |goto Chamber of Heart/2 53.43,58.01
|only if completedq(76283)
step
Meet with Khadgar in Dalaran |q 78716/2 |goto Dalaran L/12 46.80,54.47
|only if completedq(76283)
step
talk Archmage Khadgar##213627
|tip Inside the building.
turnin Painful Lessons##78716 |goto Dalaran L/12 42.87,59.86
|only if completedq(76283)
step
talk Moira Thaurissan##214651
|tip Inside the building.
accept The Bronzebeard Family##80500 |goto Dalaran L/12 40.39,54.13
|only if completedq(76283)
step
talk Brann Bronzebeard##214669
|tip Inside the building.
Select _"Magni's hurt. Moira needs you both in the Portrait Room."_ |gossip 121542
Talk to Brann |q 80500/1 |goto Dalaran L/10 50.73,55.59
|only if completedq(76283)
step
talk Moira Thaurissan##214651
|tip Inside the building.
turnin The Bronzebeard Family##80500 |goto Dalaran L/12 40.35,54.03
|only if completedq(76283)
step
accept Radiant Echoes##82539 |goto Orgrimmar/1 51.36,79.02 |only if Horde
accept Radiant Echoes##82539 |goto Stormwind City/0 63.25,72.21 |only if Alliance
|tip You will accept this quest automatically.
|tip You will need to relog to trigger this quest accept. |only if completedq(76283)
step
talk Archmage Khadgar##213627
|tip Inside Dalaran through the teleportation pad.
turnin Radiant Echoes##82539 |goto Dalaran L/12 42.94,59.82 |only if default
turnin Radiant Echoes##82539 |goto Dalaran L/12 36.28,77.34 |only if not completedq(76283)
step
talk Archmage Khadgar##213627
|tip Inside Dalaran through the teleportation pad.
accept Memories of Adventures Past##82540 |goto Dalaran L/12 42.94,59.82 |only if default
accept Memories of Adventures Past##82540 |goto Dalaran L/12 36.28,77.34 |only if not completedq(76283)
step
label "Turnin_Memories_of_Adventures_Past"
talk Archmage Khadgar##213627
|tip Inside Dalaran through the teleportation pad.
turnin Memories of Adventures Past##82540 |goto Dalaran L/12 42.94,59.82 |only if default
turnin Memories of Adventures Past##82540 |goto Dalaran L/12 36.28,77.34 |only if not completedq(76283)
|only if readyq(82540)
step
label "Radiant_Echo_Menu"
The Current Echo is:
Searing Gorge |complete areapoi(13,7637) |next "Searing_Gorge_Echo" |or
Dustwallow Marsh |complete areapoi(12,7818) |next "Dustwallow_Marsh_Echo" |or
Dragonblight |complete areapoi(113,7615) |next "Dragonblight_Echo" |or
step
label "Searing_Gorge_Echo"
talk Memory of a Duke##214399
accept Champion of the Waterlords##78938 |goto Searing Gorge/0 43.63,67.38 |or
'|complete areapoi(12,7818) or areapoi(113,7615) |or
step
Travel to Searing Gorge |goto Searing Gorge/0 43.63,67.38 < 10000 |c
|only if areapoi(13,7637)
step
label "Travel_To_Memory_Searing_Gorge"
Travel to A Memory on the Map |complete inscenario() |or
|tip Each of the bubbles on the map starts a new memory scenario.
'|complete not zone("Searing Gorge") |next "Radiant_Echo_Menu" |or
|only if areapoi(13,7637)
step
kill Remembered Boar##213456+
Collect the Impossibly Rare Boar Liver of Pristine Perfection |scenariogoal 1/0 |goto Searing Gorge/0 65.84,45.23
|only if inscenario(2330)
step
clicknpc Remembered Pumpkin##213552+
|tip They look like large blue translucent pumpkins on the ground around this area.
Poison #50# Pumpkins |scenariogoal 1/63281 |goto Searing Gorge/0 45.56,41.45
|only if inscenario(2333)
step
click Keg o' Scalding Mornbrew##413213+
|tip They look like large blue barrels on the ground around this area.
|tip Avoid Caffeinated Trogg that knock you around and stun you.
|tip Colored areas on the ground are slippery.
Deliver Scalding Mornbrew |scenariogoal 1/0 |goto Searing Gorge/0 35.15,64.13
Run them to the tower here [Searing Gorge/0 35.79,59.96]
|only if inscenario(2345)
step
Kill enemies around this area |kill Alliance Paladin##214148,Alliance Rogue##214166,Alliance Priest##214152,Alliance Mage##214167,Southshore Guard##212087
Slay Combatants |scenariogoal 1/0 |goto Searing Gorge/0 35.12,45.60
|only if inscenario(2344)
step
kill Remembered Hakkar##213579 |scenariogoal 1/63303 |goto Searing Gorge/0 27.75,54.36
|only if inscenario(2339)
step
kill Remembered Hogger##213570 |scenariogoal 1/63302 |goto Searing Gorge/0 56.36,37.21
|only if inscenario(2337)
step
kill Remembered Stitches##213529 |scenariogoal 1/63280 |goto Searing Gorge/0 55.68,52.62
|only if inscenario(2332)
step
kill Auctioned Pages Past##214069
kill Remembered Lashtail##214058
kill Remembered Bloodscalp##214059
Collect the Green Hills of Stranglethorn Pages |scenariostage 1 |goto Searing Gorge/0 61.57,70.02
|only if inscenario(2353)
step
Kill Remembered enemies around this area |kill Remembered Alarm-o-Bot##213768,Remembered Mechano-Tank##213785,Remembered Leper Gnome##213766
Defeat the Leper Gnome Memories! |scenariogoal 1/0 |goto Searing Gorge/0 48.20,63.85
|only if inscenario(2348)
step
Rerouting |complete not inscenario(2558) |next "Travel_To_Memory_Searing_Gorge" |or
'|complete inscenario(2558) |or
|only if areapoi(13,7637)
step
Wait for the Remembered Firelord to Spawn |complete inscenario(2558)
|only if areapoi(13,7637)
step
kill Remembered Firelord##212088 |scenariogoal 1/0 |goto Searing Gorge/0 56.14,44.15 |future
|tip This fight is similar to Ragnaros but much easier to complete.
|tip Move out of fire on the ground.
|tip If you are targeted with an ability that puts a circle on you, stay away from other players.
|tip Kill mobs that spawn quickly, preferrably with AoE off of the Firelord.
|only if areapoi(13,7637) and inscenario(2558)
step
label "Turnin_Champion_Waterlords"
talk Memory of a Duke##214399
turnin Champion of the Waterlords##78938 |goto Searing Gorge/0 43.63,67.38
|only if readyq(78938)
step
Routing
'|complete areapoi(13,7637) |next "Travel_To_Memory_Searing_Gorge" |or
'|complete readyq(78938) and not completedq(78938) |next "Turnin_Champion_Waterlords" |or
'|complete areapoi(12,7818) or areapoi(113,7615) |or
|next "Radiant_Echo_Menu" |only if default
|next "Turnin_Memories_of_Adventures_Past" |only if readyq(82540)
step
label "Dustwallow_Marsh_Echo"
talk Forgotten Hero##224367
accept Broken Masquerade##82676 |goto Dustwallow Marsh/0 45.45,57.65 |or
'|complete areapoi(13,7637) or areapoi(113,7615) |or
step
Travel to Duswallow Marsh |goto Dustwallow Marsh/0 45.45,57.65 < 10000 |c
|only if areapoi(12,7818)
step
label "Travel_To_Memory_Dustwallow"
Travel to A Memory on the Map |complete inscenario() |or
|tip Each of the bubbles on the map starts a new memory scenario.
'|complete not zone("Dustwallow Marsh") |next "Radiant_Echo_Menu" |or
|only if areapoi(12,7818)
step
kill Remembered King Mosh##212128 |scenariogoal 1/62793 |goto Dustwallow Marsh/0 32.36,65.30
|only if inscenario(2323)
step
Kill Remembered Deviate enemies around this area |kill Remembered Deviate Fish##221478,Remembered Deviate Raptor##221516
Catch the Remembered Deviate Fish! |scenariogoal 1/0 |goto Dustwallow Marsh/0 55.30,71.22
|only if inscenario(2495)
step
Kill Remembered enemies around this area |kill Remembered Darkmist##221612,Remembered Threadling##221647,Remembered Mother Smolderweb##221655
|tip You can walk over Threadlings to kill them
Collect a Whole Mess of Spider Eyes |scenariogoal 1/0 |goto Dustwallow Marsh/0 55.86,80.97
|only if inscenario(2523)
step
Kill Remembered enemies around this area |kill Remembered Scorpid##221905,Remembered Lazy Peon##221895
Discipline Lazy Peons |scenariogoal 1/0 |goto Dustwallow Marsh/0 45.69,78.22
|only if inscenario(2530)
step
Click Power Crystals
|tip Click the various colored power crystals on the ground around this area.
Bring as Many Crystals as You Can to the Pylons |scenariogoal 1/0 |goto Dustwallow Marsh/0 36.46,68.93
|only if inscenario(2527)
step
Kill enemies around this area
Quell the Quilboar |scenariogoal 1/0 |goto Dustwallow Marsh/0 37.02,55.07
|only if inscenario(2524)
step
kill Remembered King Gordok##221574 |scenariogoal 1/66859 |goto Dustwallow Marsh/0 44.73,65.92
|only if inscenario(2521)
step
kill Remembered Gahz'rilla##221578 |scenariogoal 1/66860 |goto Dustwallow Marsh/0 59.95,65.00
|only if inscenario(2522)
step
click Remembered Fel Cone##441229+
|tip They look like small pine cones on the ground around this area.
clicknpc Remembered Zenn Foulhoof##221944
Kill enemies around this area
Help Zenn Foulhoof Deal with the Abundance of Cute and Fluffly Wildlife |scenariogoal 1/0 |goto Dustwallow Marsh/0 48.44,61.75
|only if inscenario(2532)
step
Rerouting |complete not inscenario(2557) |next "Travel_To_Memory_Dustwallow" |or
'|complete inscenario(2557) |or
|only if areapoi(12,7818)
step
Wait for the Remembered Onyxia to Spawn |complete inscenario(2557)
|only if areapoi(12,7818)
step
kill Remembered Onyxia##221585 |scenariogoal 1/0 |goto Dustwallow Marsh/0 51.50,74.35 |future
|tip Shortly after becoming active, she will AoE fear everyone.
|tip Avoid standing in front of Onyxia when she starts her breath attack.
|tip AoE whelps that spawn quickly, cleaving off Onyxia.
|tip Avoid standing directly behind her.
|only if areapoi(12,7818) and inscenario(2557)
step
label "Turnin_Broken_Masquerade"
talk Forgotten Hero##224367
turnin Broken Masquerade##82676 |goto Dustwallow Marsh/0 45.45,57.65
|only if readyq(82676)
step
Routing
'|complete areapoi(12,7818) |next "Travel_To_Memory_Dustwallow" |or
'|complete readyq(82676) and not completedq(82676) |next "Turnin_Broken_Masquerade" |or
'|complete areapoi(13,7637) or areapoi(113,7615) |or
|next "Radiant_Echo_Menu" |only if default
|next "Turnin_Memories_of_Adventures_Past" |only if readyq(82540)
step
label "Dragonblight_Echo"
talk Echo of the Silver Hand##224373
accept Only Darkness##82689 |goto Dragonblight/0 59.50,51.98 |or
'|complete areapoi(12,7818) or areapoi(13,7637) |or
step
Travel to Dragonblight |goto Dragonblight/0 59.50,51.98 < 10000 |c
|only if areapoi(113,7615)
step
label "Travel_To_Memory_Dragonblight"
Travel to A Memory on the Map |complete inscenario() |or
|tip Each of the bubbles on the map starts a new memory scenario.
'|complete not zone("Dragonblight") |next "Radiant_Echo_Menu" |or
|only if areapoi(113,7615) and not inscenario(2571)
step
kill Recalled Webbed Crusader+
Free Webbed Crusaders |scenariogoal 1/0 |goto Dragonblight/0 53.02,56.31
|only if inscenario(2550)
step
click Log Pile+
|tip They look like memories of wood stacks on the ground around this area.
click Covered Log Pile
extraaction Lumber Swing##455248
|tip Use the ability on your screen to attack enemies.
Collect Lumber |scenariogoal 1/0 |goto Dragonblight/0 52.61,25.56
|only if inscenario(2560)
step
Kill Recalled enemies around this area |kill Recalled Heretic##221343,Recalled Drakkari##221319,Recalled Scourgeheart Drakkari##221320
Kill NPCs attacking Sseratus |scenariogoal 1/0 |goto Dragonblight/0 62.07,26.25
|only if inscenario(2454)
stickystart "Find_the_Maiden"
step
clicknpc Recalled Lake Frog##222048
'|script DoEmote("KISS")
|tip If one turns into a maiden, wait for a minute until you find her.
Kiss Frogs |scenariogoal 1/0 |goto Dragonblight/0 63.55,73.22
|only if inscenario(2533)
step
label "Find_the_Maiden"
talk Maiden of Ashwood Lake##222048
|tip A random frog will turn into the maiden after being kissed.
Find the Maiden |scenariogoal 1/68029 |goto Dragonblight/0 63.55,73.22
|only if inscenario(2533)
step
extraaction Olakin's Torch##444035
|tip Use it on objects and corpses on the ground around this area.
Burn Corpses |scenariogoal 1/0 |goto Dragonblight/0 67.32,52.76
|only if inscenario(2487)
step
kill Recalled Orinoko Tuskbreaker##221719 |scenariogoal 1/66869 |goto Dragonblight/0 71.76,39.33
|only if inscenario(2526)
step
click Cage+
Rescue the Tadpoles |scenariogoal 1/0 |goto Dragonblight/0 66.22,35.76
|only if inscenario(2518)
step
click Argent Banner
Plant the Banner |scenariogoal 1/66880 |goto Dragonblight/0 44.89,24.10
|only if inscenario(2529)
step
Watch the dialogue
Defeat Wilfred Fizzlebang! |scenariogoal 2/66879 |goto Dragonblight/0 44.89,24.10
|only if inscenario(2529)
step
kill Recalled Lord Jaraxxus##221861 |scenariogoal 3/66881 |goto Dragonblight/0 44.89,24.10
|only if inscenario(2529)
step
kill Recalled Thorim##221923 |scenariogoal 1/68028 |goto Dragonblight/0 56.88,42.74
|only if inscenario(2531)
step
Rerouting |complete not inscenario(2571) |next "Travel_To_Memory_Dragonblight" |or
'|complete inscenario(2571) |or
|only if areapoi(113,7615)
step
Wait for the Remembered Lich King to Spawn |complete inscenario(2571)
|only if areapoi(113,7615)
step
kill Remembered Lich King##224157 |scenariogoal 1/0 |goto Dragonblight/0 60.65,62.75 |future
|tip Don't stand in dark areas on the ground.
|tip AoE the adds that spawn, cleaving off of the Lich King.
|tip Avoid standing in front of the adds when they charge in a straight line.
|only if areapoi(113,7615) and inscenario(2571)
step
label "Turnin_Only_Darkness"
talk Echo of the Silver Hand##224373
turnin Only Darkness##82689 |goto Dragonblight/0 59.50,51.98
|only if readyq(82689)
step
Routing
'|complete areapoi(113,7615) |next "Travel_To_Memory_Dragonblight" |or
'|complete readyq(82689) and not completedq(82689) |next "Turnin_Only_Darkness" |or
'|complete areapoi(12,7818) or areapoi(13,7637) |or
|next "Radiant_Echo_Menu" |only if default
|next "Turnin_Memories_of_Adventures_Past" |only if readyq(82540)
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Dragonflight (10-70)\\Azerothian Archives!",{
author="support@zygorguides.com",
description="This guide will help you complete Azerothian Archives activities.",
startlevel=70,
patch='100205',
},[[
step
click Azerothian Archives!
|tip Inside the building.
accept To the Archives!##77325 |goto Valdrakken/0 46.60,47.61
step
talk Eadweard Dalyngrigge##206107
|tip Inside the base of the tower on the floating island.
turnin To the Archives!##77325 |goto Thaldraszus/0 61.57,31.32
accept The Big Dig: Traitor's Rest##79226 |goto Thaldraszus/0 61.57,31.32
step
talk Zenata##208355
|tip Inside the base of the tower on the floating island.
accept Technoscrying 101##77231 |goto Thaldraszus/0 61.62,31.12
step
talk Roska Rocktooth##208614
|tip Inside the base of the tower on the floating island.
accept Excavation 101##77267 |goto Thaldraszus/0 61.60,31.08
step
Meet Zenata Outside |q 77231/1 |goto Thaldraszus/0 61.26,30.75
step
use the Technoscryers##208084
Put on the Goggles |q 77231/2 |goto Thaldraszus/0 61.26,30.75
step
use the Technoscryers##208084
Activate the Auto-Adjuster |q 77231/3 |goto Thaldraszus/0 61.26,30.75
|tip Use the "Auto Adjusting..." ability on your action bar.
|tip It is highlighted in yellow.
step
use the Technoscryers##208084
Activate Scrying Mode |q 77231/4 |goto Thaldraszus/0 61.26,30.75
|tip Use the "Scrying Mode" ability on your action bar.
|tip It is highlighted in yellow.
step
use the Technoscryers##208084
Remove the Goggles |q 77231/5 |goto Thaldraszus/0 61.26,30.75
|tip Use the "Remove Goggles" ability on your action bar.
|tip It is highlighted in yellow.
step
talk Zenata##208355
turnin Technoscrying 101##77231 |goto Thaldraszus/0 61.26,30.75
accept A Practical Test##77166 |goto Thaldraszus/0 61.26,30.75
step
use the Technoscryers##202247
|tip Use the "Scrying Mode" ability on your action bar to locate a treasure nearby.
|tip Watch the bar until it fills up and the X is completely red, then find the treasure near you.
click Nirobin's Spectacles
Recover the Attunement "Relic" |q 77166/1 |goto Thaldraszus/0 61.87,29.84
step
talk Zenata##208355
turnin A Practical Test##77166 |goto Thaldraszus/0 61.69,29.87
accept I Can See Through Time!##77176 |goto Thaldraszus/0 61.69,29.87
step
Reach the Nexus Point |q 77176/1 |goto Thaldraszus/0 61.81,29.84
step
use the Technoscryers##202247
Put On the Goggles |q 77176/2 |goto Thaldraszus/0 61.81,29.84
step
use the Technoscryers##202247
Activate Observation Mode |q 77176/3 |goto Thaldraszus/0 61.81,29.84
|tip Use the "Observation Mode" ability in the second slot on your action bar.
step
Watch the dialogue
Observe the Temporal Scene |q 77176/4 |goto Thaldraszus/0 61.81,29.84
step
talk Zenata##208355
turnin I Can See Through Time!##77176 |goto Thaldraszus/0 61.69,29.87
accept Technoscrying: Observatory##77434 |goto Thaldraszus/0 61.69,29.87
step
Meet Roska Outside |q 77267/1 |goto Thaldraszus/0 61.06,30.60
step
use the Archivist's Fire Totem##210956
Place the Fire Totem |q 77267/2 |goto Thaldraszus/0 61.06,30.60
step
talk Roska Rocktooth##208614
Select _"I'm ready to start digging!"_
Speak to Roska to Start the Dig |q 77267/3 |goto Thaldraszus/0 61.06,30.60
step
use the Archivist's Fire Totem##210956
|tip Use it next to the smoking dirt patch on the ground.
clicknpc Roska's Fire Totem##208853
|tip It appears after using the totem.
Watch the dialogue
Unearth the First Find |q 77267/4 |goto Thaldraszus/0 61.16,30.48
step
use the Archivist's Fire Totem##210956
|tip Use it next to the smoking dirt patch on the ground.
clicknpc Roska's Fire Totem##208853
|tip It appears after using the totem.
Watch the dialogue
|tip You will be attacked by an elemental shortly.
Unearth the Second Find |q 77267/5 |goto Thaldraszus/0 61.32,30.47
step
use the Archivist's Fire Totem##210956
|tip Use it next to the smoking dirt patch on the ground.
clicknpc Roska's Fire Totem##208853
|tip It appears after using the totem.
Watch the dialogue
Unearth the Third Find |q 77267/6 |goto Thaldraszus/0 61.34,30.22
step
talk Roska Rocktooth##208614
turnin Excavation 101##77267 |goto Thaldraszus/0 61.39,30.22
accept Your First Find##78762 |goto Thaldraszus/0 61.39,30.22
step
use the Archivist's Fire Totem##210956
clicknpc Roska's Fire Totem##208853
|tip It appears after using the totem.
Use the Fire Totem to Increase Heat |q 78762/1 |goto Thaldraszus/0 61.34,30.22
step
Step Through Spontaneous Puddles to Lower Heat |q 78762/2 |goto Thaldraszus/0 61.34,30.22
|tip Run through the swirling water patches to lower the heat and move the bar toward water.
step
use the Archivist's Fire Totem##210956
clicknpc Roska's Fire Totem##208853
|tip It appears after using the totem.
|tip Alternate between this and stepping in water puddles to keep the indicator in the colored section of the bar.
|tip Small arrows on the left or right of the indicator mark indicate if the progress is towards heat or water.
click Outdated Geology Textbook
|tip While the indicator is in the colored area, click the textbook to fill the progress bar.
Fully Excavate the Find |q 78762/3 |goto Thaldraszus/0 61.34,30.21
step
talk Roska Rocktooth##208614
turnin Your First Find##78762 |goto Thaldraszus/0 61.38,30.23
accept Hands-On Experience##77268 |goto Thaldraszus/0 61.38,30.23
step
use the Archivist's Fire Totem##210956
clicknpc Roska's Fire Totem##208853
|tip It appears after using the totem.
Unearth the Major Find |q 77268/1 |goto Thaldraszus/0 61.50,30.04
step
use the Archivist's Fire Totem##210956
clicknpc Roska's Fire Totem##208853
|tip It appears after using the totem.
|tip Alternate between this and stepping in water puddles to keep the indicator in the colored section of the bar.
|tip Small arrows on the left or right of the indicator mark indicate if the progress is towards heat or water.
click Scholar's Chest
|tip While the indicator is in the colored area, click the textbook to fill the progress bar.
Excavate the Scholar's Chest |q 77268/2 |goto Thaldraszus/0 61.50,30.04
step
talk Roska Rocktooth##208614
turnin Hands-On Experience##77268 |goto Thaldraszus/0 61.58,30.02
accept Excavation: Riverbed##77433 |goto Thaldraszus/0 61.58,30.02
step
talk Zenata##204835
turnin Technoscrying: Observatory##77434 |goto The Waking Shores/0 56.38,43.95
accept Attune to the Observer##75729 |goto The Waking Shores/0 56.38,43.95
step
use the Technoscryers##202247
|tip Use the "Scrying Mode" ability on your action bar to locate a treasure nearby.
|tip Watch the bar until it fills up and the X is completely red, then find the treasure near you.
|tip You will sometimes see a light trail indicating a nearby relic.
click Weathered Staff
|tip Inside the building.
|tip Make sure the light cone is pointing at the relic to make it clickable.
Recover the Attunement Relic |q 75729/1 |goto The Waking Shores/0 56.00,45.40 |count 33 |noordinal
step
use the Technoscryers##202247
|tip Use the "Scrying Mode" ability on your action bar to locate a treasure nearby.
|tip Watch the bar until it fills up and the X is completely red, then find the treasure near you.
|tip You will sometimes see a light trail indicating a nearby relic.
click Tattered Hood
|tip Inside the building.
|tip Make sure the light cone is pointing at the relic to make it clickable.
Recover the Attunement Relic |q 75729/1 |goto The Waking Shores/0 57.85,44.55 |count 66 |noordinal
step
use the Technoscryers##202247
|tip Use the "Scrying Mode" ability on your action bar to locate a treasure nearby.
|tip Watch the bar until it fills up and the X is completely red, then find the treasure near you.
|tip You will sometimes see a light trail indicating a nearby relic.
click Cracked Epaulet
|tip Inside the building.
|tip Make sure the light cone is pointing at the relic to make it clickable.
Recover the Attunement Relic |q 75729/1 |goto The Waking Shores/0 56.83,41.91
step
talk Zenata##204835
turnin Attune to the Observer##75729 |goto The Waking Shores/0 56.38,43.95
accept A Link to the Past##75867 |goto The Waking Shores/0 56.38,43.95
step
Reach the Nexus Point |q 75867/1 |goto The Waking Shores/0 56.35,43.68
step
use the Technoscryers##202247
Put On the Goggles |q 75867/2 |goto The Waking Shores/0 56.35,43.68
step
use the Technoscryers##202247
|tip Use the "Observation Mode" ability in the second slot on your action bar.
Activate Observation Mode |q 75867/3 |goto The Waking Shores/0 56.35,43.68
step
Watch the dialogue
Observe the Temporal Scene |q 75867/4 |goto The Waking Shores/0 56.36,43.69
step
talk Zenata##204835
turnin A Link to the Past##75867 |goto The Waking Shores/0 56.37,43.95
accept A Window into the Future##75868 |goto The Waking Shores/0 56.37,43.95
step
click Dreadsquall Nest##404849+
|tip They look like giant bird nests in high locations around this area.
kill Agitated Dreadsquall##208141+
|tip They will sometimes attack you after investigating a nest.
|tip Loot them and the nests until you find the lens.
Search Dreadsquall Nests for the Lens |q 75868/1 |goto The Waking Shores/0 55.32,44.35
You can find more around:
[57.86,44.39]
[56.30,46.25]
[56.37,45.47]
[55.59,45.38]
[55.54,46.31]
[56.82,48.08]
step
talk Zenata##204835
turnin A Window into the Future##75868 |goto The Waking Shores/0 56.38,43.95
step
talk Roska Rocktooth##204094
turnin Excavation: Riverbed##77433 |goto Ohn'ahran Plains/0 67.34,47.55
accept Surveying the Riverbed##75493 |goto Ohn'ahran Plains/0 67.34,47.55
step
talk Roska Rocktooth##204094
Select _"I'm ready to start digging!"_
Watch the dialogue
Tell Roska to Start the Dig |q 75493/1 |goto Ohn'ahran Plains/0 67.34,47.55
step
use the Archivist's Water Totem##210435
clicknpc Roska's Water Totem##204704
|tip It appears after using the totem.
|tip Alternate between this and clicking Sturdy Earth to keep the indicator in the colored section of the bar.
click Sturdy Earth
|tip They look like piles of dirt on the ground around this area.
|tip Small arrows on the left or right of the indicator mark indicate if the progress is towards earth or water.
|tip While the indicator is in the colored area, click the textbook to fill the progress bar.
Unearth the Find |q 75493/2 |goto Ohn'ahran Plains/0 66.20,47.98 |count 1
step
use the Archivist's Water Totem##210435
clicknpc Roska's Water Totem##204704
|tip It appears after using the totem.
|tip Alternate between this and clicking Sturdy Earth to keep the indicator in the colored section of the bar.
click Sturdy Earth
|tip They look like piles of dirt on the ground around this area.
|tip Small arrows on the left or right of the indicator mark indicate if the progress is towards earth or water.
|tip While the indicator is in the colored area, click the relic to fill the progress bar.
Unearth the Find |q 75493/2 |goto Ohn'ahran Plains/0 64.91,48.22 |count 2
step
use the Archivist's Water Totem##210435
clicknpc Roska's Water Totem##204704
|tip It appears after using the totem.
Watch the dialogue
Unearth the Major Find |q 75493/3 |goto Ohn'ahran Plains/0 66.46,46.17
step
talk Ancient Centaur Corpse##204245
accept The Body on the Banks##75518 |goto Ohn'ahran Plains/0 66.45,46.23
step
talk Roska Rocktooth##204094
Select _"Let's start excavating!"_
Tell Roska to Start the Dig |q 75518/1 |goto Ohn'ahran Plains/0 66.40,46.00
step
use the Archivist's Water Totem##210435
clicknpc Roska's Water Totem##204704
|tip It appears after using the totem.
|tip Alternate between this and clicking Sturdy Earth to keep the indicator in the colored section of the bar.
click Sturdy Earth
|tip They look like piles of dirt on the ground around this area.
|tip Small arrows on the left or right of the indicator mark indicate if the progress is towards earth or water.
clicknpc Ancient Centaur Corpse##204245
|tip While the indicator is in the colored area, click the corpse to fill the progress bar.
Excavate the Body |q 75518/2 |goto Ohn'ahran Plains/0 66.47,46.22
step
talk Roska Rocktooth##204094
turnin Surveying the Riverbed##75493 |goto Ohn'ahran Plains/0 66.40,46.00
turnin The Body on the Banks##75518 |goto Ohn'ahran Plains/0 66.40,46.00
accept Do Rites by Her##75603 |goto Ohn'ahran Plains/0 66.40,46.00
step
talk Farrier Rondare##195547
Select _"<Share your archaeological finds.>"_
Inform Farrier Rondare |q 75603/2 |goto Ohn'ahran Plains/0 62.54,42.47
step
talk Storykeeper Jaru##195888
Select _"<Share your archaeological finds.>"_
Inform Storykeeper Jaru |q 75603/1 |goto Ohn'ahran Plains/0 60.97,39.18
step
talk Tigari Khan##187092
|tip Inside the building.
Select _"<Share your archaeological finds.>"_
Inform Tigari Khan |q 75603/3 |goto Ohn'ahran Plains/0 62.96,33.61
step
talk Tigari Khan##204383
Select _"Let's finally put her to rest."_
Meet Tigari Khan at the Riverbed Site |q 75603/4 |goto Ohn'ahran Plains/0 66.57,45.96
step
talk Roska Rocktooth##204643
turnin Do Rites by Her##75603 |goto Ohn'ahran Plains/0 66.39,46.00
accept Nirobin and the Office##77327 |goto Ohn'ahran Plains/0 66.39,46.00
step
talk Nirobin##205967
|tip Inside the building.
turnin Nirobin and the Office##77327 |goto Thaldraszus/0 58.48,36.75
accept Living History##76217 |goto Thaldraszus/0 58.48,36.75
step
click Hourglass of Time
|tip Inside the building.
Analyze the Relic's Time Era |q 76217/1 |goto Thaldraszus/0 58.52,36.75
step
click Compass of Placement
|tip Inside the building.
Analyze Relic's Origin |q 76217/2 |goto Thaldraszus/0 58.55,36.76
step
click Specimens of Inspiration
|tip Inside the building.
Analyze Relic's Context |q 76217/3 |goto Thaldraszus/0 58.57,36.79
step
click Intriguing Dracthyr Goblet
|tip Inside the building.
Analyze the Relic |q 76217/4 |goto Thaldraszus/0 58.52,36.81
step
talk Nirobin##205967
|tip Inside the building.
turnin Living History##76217 |goto Thaldraszus/0 58.48,36.75
accept Lab Partners with a Squirrel##76241 |goto Thaldraszus/0 58.48,36.75
step
talk Reese##205975
turnin Lab Partners with a Squirrel##76241 |goto The Forbidden Reach/5 53.66,47.56
accept A Research Thesis Worth Publishing##76242 |goto The Forbidden Reach/5 53.66,47.56
step
Watch the dialogue
Watch Reese Activate Clues |q 76242/1 |goto The Forbidden Reach/5 53.66,47.56
step
extraaction Gain Clue##412948
|tip Search around for groups of purple and blue ghostly animals and stand in the middle of them.
|tip Use the button that appears on the screen to collect the information from them.
clicknpc Juicy Clue##206895+
|tip They look like a white and blue animals running around this area.
Collect Information |q 76242/2 |goto The Forbidden Reach/5 54.98,42.32
step
Return to Nirobin's Office |q 76242/3 |goto Thaldraszus/0 58.48,36.76
|tip Inside the building.
step
extraaction Transmute Information##417012
|tip Inside the building.
|tip Stand with Reese and use the ability that appears on the screen.
Transmute Reese's Information |q 76242/4 |goto Thaldraszus/0 58.49,36.86
step
click Tome of Archived Isels Research
|tip Inside the building.
Read the Research Tome |q 76242/5 |goto Thaldraszus/0 58.47,36.73
step
talk Nirobin##205967
|tip Inside the building.
turnin A Research Thesis Worth Publishing##76242 |goto Thaldraszus/0 58.48,36.76
accept Back to Headquarters!##77328 |goto Thaldraszus/0 58.48,36.76
step
talk Eadweard Dalyngrigge##206107
|tip Inside the base of the tower on the floating island.
turnin Back to Headquarters!##77328 |goto Thaldraszus/0 61.57,31.32
accept Finally, An Archivist!##79223 |goto Thaldraszus/0 61.57,31.32
step
talk Provisioner Aristta##209192
|tip Inside the base of the tower on the floating island.
buy 1 Archivist's Buckled Cap##208451 |q 79223/1 |goto Thaldraszus/0 61.37,31.40
step
talk Eadweard Dalyngrigge##206107
|tip Inside the base of the tower on the floating island.
turnin Finally, An Archivist!##79223 |goto Thaldraszus/0 61.57,31.32
step
talk Zenata##208355
|tip Inside the base of the tower on the floating island.
accept Technoscrying: Dragonskull Island##77483 |goto Thaldraszus/0 61.62,31.12
accept Technoscrying: Igira's Watch##77484 |goto Thaldraszus/0 61.62,31.12
step
talk Roska Rocktooth##208614
|tip Inside the base of the tower on the floating island.
accept Excavation: Gaze of Neltharion##77486 |goto Thaldraszus/0 61.60,31.08
accept Excavation: Winglord's Perch##77487 |goto Thaldraszus/0 61.60,31.08
step
talk Zenata##207311
turnin Technoscrying: Dragonskull Island##77483 |goto The Forbidden Reach/5 77.14,38.37
accept The Fate of Scalecommander Abereth##76448 |goto The Forbidden Reach/5 77.14,38.37
step
use the Technoscryers##202247
|tip Use the "Scrying Mode" ability on your action bar to locate a treasure nearby.
|tip Watch the bar until it fills up and the X is completely red, then find the treasure near you.
|tip You will sometimes see a light trail indicating a nearby relic.
click Drakonid Blade
|tip Inside the cave.
|tip Make sure the light cone is pointing at the relic to make it clickable.
Recover the Attunement Relics |q 76448/1 |goto Dragonskull Island/0 70.56,71.32 |count 33 |noordinal
step
Enter the side cave |goto Dragonskull Island/0 54.73,19.80 < 10 |walk
use the Technoscryers##202247
|tip Use the "Scrying Mode" ability on your action bar to locate a treasure nearby.
|tip Watch the bar until it fills up and the X is completely red, then find the treasure near you.
|tip You will sometimes see a light trail indicating a nearby relic.
click Pitted Blade
|tip Inside the cave.
|tip Make sure the light cone is pointing at the relic to make it clickable.
Recover the Attunement Relics |q 76448/1 |goto Dragonskull Island/0 69.42,22.47 |count 66 |noordinal
step
Enter the side cave |goto Dragonskull Island/0 33.29,36.23 < 10 |walk
use the Technoscryers##202247
|tip Use the "Scrying Mode" ability on your action bar to locate a treasure nearby.
|tip Watch the bar until it fills up and the X is completely red, then find the treasure near you.
|tip You will sometimes see a light trail indicating a nearby relic.
click Drakonid Spyglass
|tip Inside the cave.
|tip Make sure the light cone is pointing at the relic to make it clickable.
Recover the Attunement Relics |q 76448/1 |goto Dragonskull Island/0 29.39,29.81
step
talk Zenata##207311
turnin The Fate of Scalecommander Abereth##76448 |goto The Forbidden Reach/5 77.14,38.37
accept Without Honor##76557 |goto The Forbidden Reach/5 77.14,38.37
step
Reach the Nexus Point |q 76557/1 |goto The Forbidden Reach/5 76.92,38.59
step
use the Technoscryers##202247
Put On the Goggles |q 76557/2 |goto The Forbidden Reach/5 76.92,38.59
step
Activate Observation Mode |q 76557/3 |goto The Forbidden Reach/5 76.92,38.59
|tip Use the "Observation Mode" ability in the second slot on your action bar.
step
Watch the dialogue
Observe the Temporal Scene |q 76557/4 |goto The Forbidden Reach/5 76.92,38.59
step
talk Zenata##207311
turnin Without Honor##76557 |goto The Forbidden Reach/5 77.14,38.37
accept The Hidden Hand##77415 |goto The Forbidden Reach/5 77.14,38.37
step
click Drakonid Scroll Case##405944
|tip Inside and outside the cave near piles of treasure.
|tip They appear on your minimap as yellow dots.
|tip You can run the elites out of the cave to despawn them for a short period of time.
Recover the Neltharion Agent Instructions |q 77415/1 |goto The Forbidden Reach/5 67.78,45.09
step
talk Zenata##207311
turnin The Hidden Hand##77415 |goto The Forbidden Reach/5 77.14,38.37
step
talk Roska Rocktooth##208362
turnin Excavation: Winglord's Perch##77487 |goto The Forbidden Reach/5 17.19,16.29
accept Surveying the Cliffside##77100 |goto The Forbidden Reach/5 17.19,16.29
step
talk Roska Rocktooth##208362
Select _"I'm ready to start digging!"_
Tell Roska to Start the Dig |q 77100/1 |goto The Forbidden Reach/5 17.19,16.29
step
use the Archivist's Wind Totem##210778
|tip Use it near rumbling earth areas around this area.
|tip They appear on your minimap as yellow dots.
clicknpc Roska's Wind Totem##208951
|tip It appears after using the totem.
|tip Alternate between this and stepping in water spouts to keep the indicator in the colored section of the bar.
|tip Small arrows on the left or right of the indicator mark indicate if the progress is towards air or water.
click Rustic Dragonkin Pottery
|tip While the indicator is in the colored area, click the relic to fill the progress bar.
Unearth #2# Finds |q 77100/2 |goto The Forbidden Reach/5 16.39,14.98
step
use the Archivist's Wind Totem##210778
clicknpc Roska's Wind Totem##208951
|tip It appears after using the totem.
Watch the dialogue
Unearth the Major Find |q 77100/3 |goto The Forbidden Reach/5 14.06,14.69
step
click Intact Dragonkin Cache
accept The Cache in the Crag##77151 |goto The Forbidden Reach/5 14.07,14.67
step
talk Roska Rocktooth##208398
|tip She parachutes to this location.
Select _"Let's start excavating!"_
Speak to Ruska to Start the Excavation |q 77151/1 |goto The Forbidden Reach/5 14.19,14.96
step
use the Archivist's Wind Totem##210778
clicknpc Roska's Wind Totem##208951
|tip It appears after using the totem.
click Salty Waterspout
|tip Alternate between this and stepping in water spouts to keep the indicator in the colored section of the bar.
|tip Small arrows on the left or right of the indicator mark indicate if the progress is towards air or water.
click Intact Dragonkin Cache
|tip While the indicator is in the colored area, click the relic to fill the progress bar.
Excavate the Cache |q 77151/2 |goto The Forbidden Reach/5 14.07,14.66
step
talk Roska Rocktooth##208398
turnin Surveying the Cliffside##77100 |goto The Forbidden Reach/5 14.19,14.95
turnin The Cache in the Crag##77151 |goto The Forbidden Reach/5 14.19,14.95
accept A Taste of the Past##77154 |goto The Forbidden Reach/5 14.19,14.95
step
talk Atrenosh Hailstone##200010
Select _"<Share your archaeological finds.>"_
Inform Atrenosh Hailstone |q 77154/1 |goto The Forbidden Reach/5 34.65,57.56
step
click Intact Dragonkin Cache
Open the Intact Dragonkin Cache |q 77154/2 |goto The Forbidden Reach/5 17.28,16.41
step
talk Roska Rocktooth##208362
turnin A Taste of the Past##77154 |goto The Forbidden Reach/5 17.19,16.28
step
talk Roska Rocktooth##205413
turnin Excavation: Gaze of Neltharion##77486 |goto Zaralek Cavern/0 48.69,48.36
accept Surveying the Tower##76026 |goto Zaralek Cavern/0 48.69,48.36
step
talk Roska Rocktooth##205413
Select _"I'm ready to start digging!"_
Tell Roska to Start the Dig |q 76026/1 |goto Zaralek Cavern/0 48.69,48.36
step
use Archivist's Earth Totem##210834
|tip Use it near rumbling earth areas around this area.
|tip They appear on your minimap as yellow dots.
clicknpc Roska's Earth Totem##208059
|tip It appears after using the totem.
|tip Alternate between this and stepping on small lava oozes to keep the indicator in the colored section of the bar.
|tip Small arrows on the left or right of the indicator mark indicate if the progress is towards fire or earth.
click Antique Niffen Salvage
|tip While the indicator is in the colored area, click the relic to fill the progress bar.
Unearth #2# Finds |q 76026/2 |goto Zaralek Cavern/0 47.66,47.41
step
use Archivist's Earth Totem##210834
clicknpc Roska's Earth Totem##208059
|tip It appears after using the totem.
Watch the dialogue
Unearth the Major Find |q 76026/3 |goto Zaralek Cavern/0 47.56,48.57
step
click Defaced Dragon Statue
accept Hidden in the Midden##76032 |goto Zaralek Cavern/0 47.55,48.58
step
talk Roska Rocktooth##208055
|tip She eventually parachutes to this location.
Select _"Let's start excavating!"_
Speak to Roska to Start the Excavation |q 76032/1 |goto Zaralek Cavern/0 47.66,48.64
step
use Archivist's Earth Totem##210834
clicknpc Roska's Earth Totem##208059
|tip It appears after using the totem.
|tip Alternate between this and stepping on small lava oozes to keep the indicator in the colored section of the bar.
|tip Small arrows on the left or right of the indicator mark indicate if the progress is towards fire or earth.
click Defaced Dragon Statue
|tip While the indicator is in the colored area, click the statue to fill the progress bar.
Unearth the Find |q 76032/2 |goto Zaralek Cavern/0 47.55,48.58
step
talk Roska Rocktooth##208055
turnin Surveying the Tower##76026 |goto Zaralek Cavern/0 47.66,48.64
turnin Hidden in the Midden##76032 |goto Zaralek Cavern/0 47.66,48.64
accept Antiquated Antics##75604 |goto Zaralek Cavern/0 47.66,48.64
step
talk Kiln-Singer Malraka##204215
Select _"<Share your archaeological finds.>"_
Inform Kiln-Singer Malraka |q 75604/2 |goto Zaralek Cavern/0 57.80,54.35
step
talk Archivist Edress##215736
Select _"<Share your archaeological finds.>"_
Inform Archivist Edress |q 75604/1 |goto Zaralek Cavern/0 52.68,26.35
step
talk Roska Rocktooth##208055
turnin Antiquated Antics##75604 |goto Zaralek Cavern/0 47.66,48.65
step
Enter the cave |goto Zaralek Cavern/0 38.57,50.28 < 7 |walk
talk Zenata##207763
|tip Inside the cave.
turnin Technoscrying: Igira's Watch##77484 |goto Zaralek Cavern/0 38.14,49.85
accept The Tools of the Dragonkillers##76564 |goto Zaralek Cavern/0 38.14,49.85
step
use the Technoscryers##202247
|tip Use the "Scrying Mode" ability on your action bar to locate a treasure nearby.
|tip Watch the bar until it fills up and the X is completely red, then find the treasure near you.
|tip You will sometimes see a light trail indicating a nearby relic.
click Dragonkiller Harpoon
|tip Make sure the light cone is pointing at the relic to make it clickable.
Recover the Attunement Relic |q 76564/1 |goto Zaralek Cavern/0 39.38,51.44 |count 33 |noordinal
step
use the Technoscryers##202247
|tip Use the "Scrying Mode" ability on your action bar to locate a treasure nearby.
|tip Watch the bar until it fills up and the X is completely red, then find the treasure near you.
|tip You will sometimes see a light trail indicating a nearby relic.
click Gnawed Fish Kebab
|tip Make sure the light cone is pointing at the relic to make it clickable.
Recover the Attunement Relic |q 76564/1 |goto Zaralek Cavern/0 40.94,48.81 |count 66 |noordinal
step
use the Technoscryers##202247
|tip Use the "Scrying Mode" ability on your action bar to locate a treasure nearby.
|tip Watch the bar until it fills up and the X is completely red, then find the treasure near you.
|tip You will sometimes see a light trail indicating a nearby relic.
click Tuskarr Scaling Knife
|tip Make sure the light cone is pointing at the relic to make it clickable.
Recover the Attunement Relic |q 76564/1 |goto Zaralek Cavern/0 42.15,51.12
step
Enter the cave |goto Zaralek Cavern/0 38.57,50.28 < 7 |walk
talk Zenata##207763
|tip Inside the cave.
turnin The Tools of the Dragonkillers##76564 |goto Zaralek Cavern/0 38.14,49.85
accept An Unlikely Proposal##76576 |goto Zaralek Cavern/0 38.14,49.85
step
Reach the Nexus Point |q 76576/1 |goto Zaralek Cavern/0 38.25,49.75
|tip Inside the cave.
step
use the Technoscryers##202247
|tip Inside the cave.
Put on the Goggles |q 76576/2 |goto Zaralek Cavern/0 38.25,49.75
step
use the Technoscryers##202247
|tip Inside the cave.
|tip Use the "Observation Mode" ability in the second slot on your action bar.
Activate Observation Mode |q 76576/3 |goto Zaralek Cavern/0 38.25,49.75
step
Watch the dialogue
|tip Inside the cave.
Observe the Temporal Scene |q 76576/4 |goto Zaralek Cavern/0 38.25,49.75
step
talk Zenata##207763
|tip Inside the cave.
turnin An Unlikely Proposal##76576 |goto Zaralek Cavern/0 38.14,49.86
accept The Scale of it All##77425 |goto Zaralek Cavern/0 38.14,49.86
step
click Ancient Zaqali Trade-bond Tablet##405996
Recover the Trade-Bonded Tablet |q 77425/1 |goto Zaralek Cavern/0 42.08,34.88
step
Enter the cave |goto Zaralek Cavern/0 38.57,50.28 < 7 |walk
talk Zenata##207763
|tip Inside the cave.
turnin The Scale of it All##77425 |goto Zaralek Cavern/0 38.14,49.85
accept Back to Headquarters! Again!##79231 |goto Zaralek Cavern/0 38.14,49.85
step
talk Eadweard Dalyngrigge##206107
|tip Inside the base of the tower on the floating island.
turnin Back to Headquarters! Again!##79231 |goto Thaldraszus/0 61.53,31.29
accept Graduation Day##77331 |goto Thaldraszus/0 61.53,31.29
step
talk Eadweard Dalyngrigge##206107
|tip Inside the base of the tower on the floating island.
Select _"Thank you."_
Speak with Eadweard |q 77331/5 |goto Thaldraszus/0 61.53,31.29
step
talk Eadweard Dalyngrigge##206107
|tip Inside the base of the tower on the floating island.
turnin Graduation Day##77331 |goto Thaldraszus/0 61.53,31.29
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Dragonflight (10-70)\\The Big Dig: Traitor's Rest",{
author="support@zygorguides.com",
description="This guide will help you complete the Azerothian Archives big dig in Traitor's Rest.",
startlevel=70,
patch='100205',
areapoiid=7657,
areapoitype="BigDig",
},[[
step
label "Begin_Scenario"
talk Eadweard Dalyngrigge##209134
accept The Big Dig: Traitor's Rest##79226 |goto The Azure Span/0 26.96,46.46
step
Wait for the Scenario to Begin |complete areapoi(2024,7657) and inscenario() |goto The Azure Span/0 26.96,46.46
|tip The scenario starts every hour on the half hour. |only if not inscenario()
|tip Steps that have progress bars are currently bugged and may complete early. |only if not inscenario()
|tip This scenario has been heavily bugged. |only if not inscenario()
step
Stand Near Eadweard for Instructions |scenariogoal 1/60758 |goto Traitor's Rest/0 55.33,51.34
|only if scenariostage(1)
step
click Wild Restweed+
|tip They look like small plants on the ground around this area.
Clear #6# Restweed |scenariogoal 2/60772 |goto Traitor's Rest/0 58.21,46.77
|only if scenariostage(2)
step
click Wild Traitor's Bramble+
|tip They look like large red bushes around the bones.
Clear #5# Traitor's Bramble |scenariogoal 3/65236 |goto Traitor's Rest/0 53.85,49.04
|only if scenariostage(3)
step
click Wild Restweed+
|tip They look like small plants on the ground around this area.
Clear #6# Restweed |scenariogoal 4/65237 |goto Traitor's Rest/0 51.93,45.29
|only if scenariostage(4)
step
click Wild Boneclover+
|tip They look like small plants on the ground around this area.
Clear #5# Boneclover |scenariogoal 5/65239 |goto Traitor's Rest/0 56.37,49.07
|only if scenariostage(5)
step
click Wild Boneclover+
|tip They look like small plants on the ground around this area.
Clear #6# Boneclover |scenariogoal 6/65238 |goto Traitor's Rest/0 50.99,47.79
|only if scenariostage(6)
step
click Traitor's Bramble+
|tip They look like bushy plants on the ground around this area.
Clear #7# Traitor's Bramble |scenariogoal 7/65240 |goto Traitor's Rest/0 51.09,51.19
|only if scenariostage(7)
step
Scenario Stage Coming Soon! |confirm
|only if scenariostage(8)
step
Scenario Stage Coming Soon! |confirm
|only if scenariostage(9)
step
Scenario Stage Coming Soon! |confirm
|only if scenariostage(10)
step
Scenario Stage Coming Soon! |confirm
|only if scenariostage(11)
step
extraaction Analysis##398015
|tip Run to yellow dots on the minimap and use the button that appears on the screen.
Uncover and Analyze Hidden Runes Around the Site |scenariogoal 12/0 |goto Traitor's Rest/0 54.43,49.91
|only if scenariostage(12)
step
extraaction Analysis##398015
|tip Run to yellow dots on the minimap and use the button that appears on the screen.
Uncover and Analyze Hidden Runes Around the Site |scenariogoal 13/0 |goto Traitor's Rest/0 53.93,50.06
|only if scenariostage(13)
step
extraaction Analysis##398015
|tip Run to yellow dots on the minimap and use the button that appears on the screen.
Uncover and Analyze Hidden Runes Around the Site |scenariogoal 14/0 |goto Traitor's Rest/0 54.54,49.71
|only if scenariostage(14)
step
extraaction Analysis##398015
|tip Run to yellow dots on the minimap and use the button that appears on the screen.
|tip Relics look like small sparkling patches on the ground.
Uncover and Analyze Ancient Relics Around the Site |scenariogoal 15/0 |goto Traitor's Rest/0 52.36,49.04
|only if scenariostage(15)
step
extraaction Analysis##398015
|tip Run to yellow dots on the minimap and use the button that appears on the screen.
|tip Relics look like small sparkling patches on the ground.
Uncover and Analyze Ancient Relics Around the Site |scenariogoal 16/0 |goto Traitor's Rest/0 52.36,49.04
|only if scenariostage(16)
step
extraaction Analysis##398015
|tip Run to yellow dots on the minimap and use the button that appears on the screen.
|tip Relics look like small sparkling patches on the ground.
Uncover and Analyze Ancient Relics Around the Site |scenariogoal 17/0 |goto Traitor's Rest/0 52.98,50.15
|only if scenariostage(17)
step
extraaction Roska's Fire Totem##427611
|tip Use the button on the screen to summon Roska's Fire Totem.
clicknpc Roska's Fire Totem##208853
|tip Click the fire totem to excavate smoky rumbling areas of earth on the ground around this area.
|tip They appear on your minimap as yellow dots.
Survey Disturbed Earth |scenariogoal 18/0 |goto Traitor's Rest/0 53.80,46.86
|only if scenariostage(18)
step
extraaction Roska's Fire Totem##427611
|tip Use the button on the screen to summon Roska's Fire Totem.
clicknpc Roska's Fire Totem##208853
|tip Click the fire totem to start it channeling on the rubble.
click Warped Dragon Bone
|tip While the elemental is channeling, excavate the bone.
Excavate Dragon Bones |scenariogoal 19/0 |goto Traitor's Rest/0 52.29,45.83
|only if scenariostage(19)
step
Scenario Stage Coming Soon! |confirm
|only if scenariostage(20)
step
click Promising Rock+
|tip They look like half-buried rocks.
Inspect Stones Around the Site for Achaelogical Value |scenariogoal 21/0 |goto Traitor's Rest/0 50.92,47.75
|only if scenariostage(21)
step
click Promising Rock+
|tip They look like half-buried rocks.
Inspect Stones Around the Site for Achaelogical Value |scenariogoal 22/0 |goto Traitor's Rest/0 53.02,53.39
|only if scenariostage(22)
step
click Promising Rock+
|tip They look like half-buried rocks.
Inspect Stones Around the Site for Achaelogical Value |scenariogoal 23/0 |goto Traitor's Rest/0 54.83,42.01
|only if scenariostage(23)
step
click Promising Rock+
|tip They look like half-buried rocks.
Inspect Stones Around the Site for Achaelogical Value |scenariogoal 24/0 |goto Traitor's Rest/0 59.45,47.34
|only if scenariostage(24)
step
click Pile of Unsorted Rocks
|tip Run them to the nearby highlighted flag each time you click the pile.
Sort Significant Stones |scenariogoal 25/0 |goto Traitor's Rest/0 52.40,45.92
|only if scenariostage(25)
step
click Pile of Unsorted Rocks
|tip Run them to the nearby highlighted flag each time you click the pile.
Sort Significant Stones |scenariogoal 26/0 |goto Traitor's Rest/0 57.62,53.73
|only if scenariostage(26)
step
click Pile of Unsorted Rocks
|tip Run them to the nearby highlighted flag each time you click the pile.
Sort Significant Stones |scenariogoal 27/0 |goto Traitor's Rest/0 48.52,48.75
|only if scenariostage(27)
step
click Broken Shovel+
Repair #3# Shovels |scenariogoal 28/61195 |goto Traitor's Rest/0 53.09,47.25
|only if scenariostage(28)
step
Scenario Stage Coming Soon! |confirm
|only if scenariostage(29)
step
clicknpc Clue-Compiling Familiar##209451
|tip It appears on your minimap as a yellow dot.
|tip Stand still while channeling.
Release the Otters! |scenariogoal 30/0 |goto Traitor's Rest/0 51.86,50.59
|only if scenariostage(30)
step
kill Information-Stuffed Clue##210079 |scenariogoal 31/64388 |goto Traitor's Rest/0 52.38,53.25
|tip It walks all over this area.
|only if scenariostage(31)
step
kill Clue Morsel##210080
Morsel Clues |scenariogoal 31/61900 |goto Traitor's Rest/0 54.77,46.68
|only if scenariostage(31)
step
click Azerothian Tome+
|tip They look like books scattered all over the ground.
Return Scattered Tomes |scenariogoal 32/0 |goto Traitor's Rest/0 52.35,51.84
|only if scenariostage(32)
step
click Pot of Azer-Broth
Pick up Azer-Broth |scenariogoal 33/61288 |goto Traitor's Rest/0 55.82,51.83
|only if scenariostage(33)
step
extraaction Deliver That Lunch!##420139
|tip It appears on the screen when you are near hungry workers.
Feed #3# Hungry Archivists |scenariogoal 33/61287 |goto Traitor's Rest/0 58.11,50.92
|only if scenariostage(33)
step
Scenario Stage Coming Soon! |confirm
|only if scenariostage(34)
step
Scenario Stage Coming Soon! |confirm
|only if scenariostage(35)
step
Click objects around this area
|tip Click the four objects to set up the dig.
Set up a Satellite Dig |scenariogoal 36/0 |goto Traitor's Rest/0 47.65,45.10
|only if scenariostage(36)
step
extraaction Gain Clue##421550
|tip Use the ability that appears on the screen near clue spots.
|tip They look like small blue creatures running around this area.
|tip They appear on your minimap as yellow dots.
|tip You may need to dismount to get the button to appear.
Discover #3# Clue spots |scenariogoal 37/61898 |goto Traitor's Rest/0 53.09,47.70
|only if scenariostage(37)
step
clicknpc Juicy Clue##210076+
|tip They look like small blue creatures running around this area.
|tip They appear on your minimap as yellow dots.
Discover the First Juicy Clue |scenariogoal 38/61899 |goto Traitor's Rest/0 26.82,46.75 |count 1
|only if scenariostage(38)
step
clicknpc Juicy Clue##210076+
|tip They look like small blue creatures running around this area.
|tip They appear on your minimap as yellow dots.
Discover the Second Juicy Clue |scenariogoal 38/61899 |goto Traitor's Rest/0 26.50,45.79 |count 2
|only if scenariostage(38)
step
clicknpc Juicy Clue##210076+
|tip They look like small blue creatures running around this area.
|tip They appear on your minimap as yellow dots.
Discover the Third Juicy Clue |scenariogoal 38/61899 |goto Traitor's Rest/0 25.74,46.72 |count 3
|only if scenariostage(38)
step
click Crate of Crchaeologist Hats
|tip They look like large brown crates around the bones.
clicknpc Sun-baked Archeologist##210146+
|tip They look like dizzy NPCs in beams of light.
|tip Use the Hat Toss ability on screen while targeting them.
|tip Return to a crate for another hat after each NPC.
extraaction Hat Toss##421669
Throw Hats at Archivists |scenariogoal 39/0 |goto Traitor's Rest/0 53.23,49.56
|only if scenariostage(39)
step
click Crate of Archivist Hats
|tip Click the wooden crate to pick up a hat for each elemental.
|tip Return to the crate after using it to get another.
extraaction Recruit an Elemental##422145
|tip Use the ability on the screen to toss a hat on the targeted elemental.
clicknpc Eager Elemental##210408
Recruit Eager Elementals |scenariogoal 40/0 |goto Traitor's Rest/0 52.48,45.42
|only if scenariostage(40)
step
talk Eadweard Dalyngrigge##209134
Select _"Do you have that thing Zenata needed?"_
Retrieve Supplies for Zenata's Study |havebuff Artifact Delivery for Zenata!##428891 |goto Traitor's Rest/0 55.33,51.36
|only if scenariostage(41)
step
Resupply Zenata's Study |scenariogoal 41/64341 |goto Traitor's Rest/0 56.40,45.73
|only if scenariostage(41)
step
talk Eadweard Dalyngrigge##209134
Select _"Do you have that thing Roksa needed?"_
Retrieve Supplies for Roska |havebuff Artifact Delivery for Roska!##429291 |goto Traitor's Rest/0 55.33,51.36
|only if scenariostage(42)
step
Deliver Supplies to Roska! |scenariogoal 42/0 |goto Traitor's Rest/0 53.26,46.68
|only if scenariostage(42)
step
talk Eadweard Dalyngrigge##209134
Select _"Do you have that thing Nirobin needed?"_
Retrieve Supplies for Nirobin |havebuff Artifact Delivery for Nirobin!##429293 |goto Traitor's Rest/0 55.33,51.35
|only if scenariostage(43)
step
Deliver a Crate of Artifacts to Nirobin to Study |scenariogoal 43/64412 |goto Traitor's Rest/0 51.59,51.80
|only if scenariostage(43)
step
click Archivist's Bone Brush+
|tip They look like tiny brushes moving on the big bones.
Brush the Bones |scenariogoal 44/0 |goto Traitor's Rest/0 55.46,50.35
|only if scenariostage(44)
step
Stomp Book Beetles |scenariogoal 45/0 |goto Traitor's Rest/0 55.23,50.73
|tip Walk over the beetles around the camp.
|only if scenariostage(45)
step
talk Roska Rocktooth##209133
Select _"Do you have that thing Eadweard needed?"_
Speak to Roska to Get shovels |havebuff Shovels for Eadweard!##430028 |goto Traitor's Rest/0 53.27,46.72
|only if scenariostage(46)
step
Deliver Shovels to Eadweard |scenariogoal 46/64615 |goto Traitor's Rest/0 55.33,51.35
|only if scenariostage(46)
step
talk Zenata##209132
Select _"Do you have that thing Eadweard needed?"_
Talk to Zenata to Get runes |havebuff Runes for Eadweard!##430344 |goto Traitor's Rest/0 56.32,46.08
|only if scenariostage(47)
step
Deliver them to Eadweard |scenariogoal 47/64614 |goto Traitor's Rest/0 55.32,51.38
|only if scenariostage(47)
step
talk Nirobin##209135
Select _"Do you have that thing Eadweard needed?"_
Talk to Nirobin to Get Books |havebuff Books for Eadweard!##430033 |goto Traitor's Rest/0 51.60,51.77
|only if scenariostage(48)
step
Deliver the Books |scenariogoal 48/64616 |goto Traitor's Rest/0 55.33,51.34
|only if scenariostage(48)
step
Scenario Stage Coming Soon! |confirm
|only if scenariostage(49)
step
Stand by Eadweard for Instructions |scenariogoal 50/64424 |goto Traitor's Rest/0 55.33,51.34
|only if scenariostage(50)
step
kill Doomshadow##208029 |scenariogoal 51/63299 |goto Traitor's Rest/0 59.69,49.72
|tip Move out of areas targeted on the ground.
|only if scenariostage(51)
step
Wait for a New Scenario Stage |complete areapoi(2024,7657) and inscenario() |goto Traitor's Rest/0 55.33,51.36 |next "Begin_Scenario" |notravel
|only if inscenario()
step
talk Eadweard Dalyngrigge##209134
turnin The Big Dig: Traitor's Rest##79226 |goto The Azure Span/0 26.96,46.46
|only if readyq(79226)
step
talk Eadweard Dalyngrigge##206107
|tip Inside the base of the tower on the floating island.
turnin Curious Find: Hole-Punched Bakar Tooth##77766 |goto Thaldraszus/0 61.53,31.29 |only if haveq(77766)
turnin Curious Find: Dragonhorn Flute##77760 |goto Thaldraszus/0 61.53,31.29 |only if haveq(77760)
turnin Curious Find: Waterlogged Ledger##77763 |goto Thaldraszus/0 61.53,31.29 |only if haveq(77763)
|only if haveq(77766,77760,77763)
step
Wait for the Dig to Begin |complete areapoi(2024,7657) and inscenario() |goto The Azure Span/0 26.96,46.46 |next "Begin_Scenario"
|tip The scenario starts every hour on the half hour.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Dragonflight (10-70)\\Emerald Dreamsurge (Thaldraszus)",{
author="support@zygorguides.com",
description="This guide will help you complete the Emerald Dreamsurge in Thaldraszus.",
startlevel=70,
patch='100107',
areapoiid=7588,
areapoitype="Dreamsurge",
},[[
step
talk Archdruid Hamuul Runetotem##211031
accept Surging Dreams##77423 |goto Valdrakken/0 50.64,57.48
step
talk Gearweaver##208649
turnin Surging Dreams##77423 |goto Thaldraszus/0 51.21,43.34
accept Shaping the Dreamsurge##77251 |goto Thaldraszus/0 51.21,43.34
accept Dreamsurge Investigation##77414 |goto Thaldraszus/0 51.21,43.34 |only if not completedq(77414)
stickystart "Collect_Dreamsurge_Coalescence"
stickystart "Slay_a_Rare_Elite"
step
Complete #3# World Quests in the Dreamsurge |q 77414/1
|tip Click world quest icons on the map to load their guides and complete them.
|only if not completedq(77414)
step
label "Slay_a_Rare_Elite"
Slay a Rare elite Empowered by the Dreamsurge |q 77414/2
|tip Click a rare elite icon on the map to load its guide.
|tip Rare elite enemies might not always be active.
|only if not completedq(77414)
step
Wait for a Dreamsurge to Begin |complete vignette(5751)
|tip Dreamsurges start every half hour.
step
Join the Fight |scenariostart |goto Thaldraszus/0 60.78,23.55
step
Kill enemies around this area
|tip You can also fly through birds in the air on your mount.
click Burning Root+
|tip They look like flame-topped roots growing out of the ground around this area.
Fight Back Against the Druids of the Flame Incursion |scenariogoal 1/0 |goto Thaldraszus/0 60.78,23.55
|only if not completedq(77414)
step
Defeat the Dreamsurge Champion |scenariostage 2 |goto Thaldraszus/0 61.84,26.37
|tip This enemy is elite and will require a group.
|only if not completedq(77414)
step
Close a Waking Dream Portal |q 77414/3
|tip Loot the corpse of the Allied Cinderrager.
|only if not completedq(77414)
step
label "Collect_Dreamsurge_Coalescence"
click Dreaming Growth+
|tip They look like large green and purple plants growing all over the zone.
|tip You can also fly through green orbs scattered all over the zone.
|tip Enemies also drop Coalescence.
Collect #100# Dreamsurge Coalescence |q 77251/1
step
talk Naralex##207962
Vote for a Dreamsurge Effect |q 77414/4 |goto Thaldraszus/0 51.19,43.39
|only if not completedq(77414)
step
talk Gearweaver##208649
turnin Shaping the Dreamsurge##77251 |goto Thaldraszus/0 51.21,43.34
turnin Dreamsurge Investigation##77414 |goto Thaldraszus/0 51.21,43.34 |only if not completedq(77414)
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Dragonflight (10-70)\\Emerald Dreamsurge (The Waking Shores)",{
author="support@zygorguides.com",
description="This guide will help you complete the Emerald Dreamsurge in The Waking Shores.",
startlevel=70,
patch='100107',
areapoiid=7587,
areapoitype="Dreamsurge",
},[[
step
talk Archdruid Hamuul Runetotem##211031
accept Surging Dreams##77423 |goto Valdrakken/0 50.64,57.48
step
talk Archdruid Hamuul Runetotem##208649
turnin Surging Dreams##77423 |goto The Waking Shores/0 58.39,67.74
accept Shaping the Dreamsurge##77251 |goto The Waking Shores/0 58.39,67.74
accept Dreamsurge Investigation##77414 |goto The Waking Shores/0 58.39,67.74 |only if not completedq(77414)
stickystart "Collect_Dreamsurge_Coalescence"
stickystart "Slay_a_Rare_Elite"
step
Complete #3# World Quests in the Dreamsurge |q 77414/1 |goto The Waking Shores/0 51.11,42.66
|tip Click world quest icons on the map to load their guides and complete them.
|only if not completedq(77414)
step
label "Slay_a_Rare_Elite"
Slay a Rare Elite Empowered By the Dreamsurge |q 77414/2 |goto The Waking Shores/0 51.11,42.66
|tip Click a rare elite icon on the map to load its guide.
|tip Rare elite enemies might not always be active.
|only if not completedq(77414)
step
Wait for a Dreamsurge to Begin |complete vignette(5751)
|tip Dreamsurges start every half hour.
step
Join the Fight |scenariostart |goto The Waking Shores/0 41.14,76.74
step
Kill enemies around this area
|tip You can also fly through birds in the air on your mount.
click Burning Root+
|tip They look like flame-topped roots growing out of the ground around this area.
Fight Back Against the Druids of the Flame Incursion |scenariogoal 1/0 |goto The Waking Shores/0 41.14,76.74
|only if not completedq(77414)
step
Defeat the Dreamsurge Champion |scenariostage 2 |goto The Waking Shores/0 41.18,77.46
|tip This enemy is elite and will require a group.
|only if not completedq(77414)
step
Close a Waking Dream Portal |q 77414/3
|tip Loot the corpse of the Molten General.
|only if not completedq(77414)
step
label "Collect_Dreamsurge_Coalescence"
click Dreaming Growth+
|tip They look like large green and purple plants growing all over the zone.
|tip You can also fly through green orbs scattered all over the zone.
|tip Enemies also drop Coalescence.
Collect #100# Dreamsurge Coalescence |q 77251/1
step
talk Naralex##207962
Vote for a Dreamsurge Effect |q 77414/4 |goto The Waking Shores/0 58.43,67.79
|only if not completedq(77414)
step
talk Archdruid Hamuul Runetotem##208649
turnin Shaping the Dreamsurge##77251 |goto The Waking Shores/0 58.39,67.74
turnin Dreamsurge Investigation##77414 |goto The Waking Shores/0 58.39,67.74 |only if not completedq(77414)
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Dragonflight (10-70)\\Emerald Dreamsurge (Ohn'ahran Plains)",{
author="support@zygorguides.com",
description="This guide will help you complete the Emerald Dreamsurge in Ohn'ahran Plains.",
startlevel=70,
patch='100107',
areapoiid=7586,
areapoitype="Dreamsurge",
},[[
step
talk Archdruid Hamuul Runetotem##211031
accept Surging Dreams##77423 |goto Valdrakken/0 50.64,57.48
step
talk Archdruid Hamuul Runetotem##208649
turnin Surging Dreams##77423 |goto Ohn'ahran Plains/0 64.11,41.73
accept Shaping the Dreamsurge##77251 |goto Ohn'ahran Plains/0 64.11,41.73
accept Dreamsurge Investigation##77414 |goto Ohn'ahran Plains/0 64.11,41.73 |only if not completedq(77414)
stickystart "Collect_Dreamsurge_Coalescence"
stickystart "Slay_a_Rare_Elite"
step
Complete #3# World Quests in the Dreamsurge |q 77414/1
|tip Click world quest icons on the map to load their guides and complete them.
|only if not completedq(77414)
step
label "Slay_a_Rare_Elite"
Slay a Rare Elite Empowered By the Dreamsurge |q 77414/2
|tip Click a rare elite icon on the map to load its guide.
|tip Rare elite enemies might not always be active.
|only if not completedq(77414)
step
Wait for a Dreamsurge to Begin |complete vignette(5751)
|tip Dreamsurges start every half hour.
step
Kill enemies around this area
|tip You can also fly through birds in the air on your mount.
click Burning Root+
|tip They look like flame-topped roots growing out of the ground around this area.
Fight Back Against the Druids of the Flame Incursion |scenariogoal 1/0 |goto Ohn'ahran Plains/0 25.18,60.95
|only if not completedq(77414)
step
Defeat the Dreamsurge Champion |scenariostage 2 |goto Ohn'ahran Plains/0 24.29,60.98
|tip This enemy is elite and will require a group.
|only if not completedq(77414)
step
Close a Waking Dream Portal |q 77414/3
|tip Loot the corpse of the Planesborn Annihilator.
|only if not completedq(77414)
step
label "Collect_Dreamsurge_Coalescence"
click Dreaming Growth+
|tip They look like large green and purple plants growing all over the zone.
|tip You can also fly through green orbs scattered all over the zone.
|tip Enemies also drop Coalescence.
Collect #100# Dreamsurge Coalescence |q 77251/1
step
talk Naralex##207962
Vote for a Dreamsurge Effect |q 77414/4
|only if not completedq(77414)
step
talk Archdruid Hamuul Runetotem##208649
turnin Shaping the Dreamsurge##77251 |goto Ohn'ahran Plains/0 64.11,41.73
turnin Dreamsurge Investigation##77414 |goto Ohn'ahran Plains/0 64.11,41.73 |only if not completedq(77414)
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Dragonflight (10-70)\\Emerald Dreamsurge (The Azure Span)",{
author="support@zygorguides.com",
description="This guide will help you complete the Emerald Dreamsurge in The Azure Span.",
startlevel=70,
patch='100107',
areapoiid=7585,
areapoitype="Dreamsurge",
},[[
step
talk Archdruid Hamuul Runetotem##211031
accept Surging Dreams##77423 |goto Valdrakken/0 50.64,57.48
step
talk Archdruid Hamuul Runetotem##208649
turnin Surging Dreams##77423 |goto The Azure Span/0 45.55,39.81
accept Shaping the Dreamsurge##77251 |goto The Azure Span/0 45.55,39.81
accept Dreamsurge Investigation##77414 |goto The Azure Span/0 45.55,39.81 |only if not completedq(77414)
stickystart "Collect_Dreamsurge_Coalescence"
stickystart "Slay_a_Rare_Elite"
step
Complete #3# World Quests in the Dreamsurge |q 77414/1
|tip Click world quest icons on the map to load their guides and complete them.
|only if not completedq(77414)
step
label "Slay_a_Rare_Elite"
Slay a Rare Elite Empowered By the Dreamsurge |q 77414/2
|tip Click a rare elite icon on the map to load its guide.
|tip Rare elite enemies might not always be active.
|only if not completedq(77414)
step
Wait for a Dreamsurge to Begin |complete vignette(5751)
|tip Dreamsurges start every half hour.
step
Kill enemies around this area
|tip You can also fly through birds in the air on your mount.
click Burning Root+
|tip They look like flame-topped roots growing out of the ground around this area.
Fight Back Against the Druids of the Flame Incursion |scenariogoal 1/0 |goto The Azure Span/0 32.68,39.72
|only if not completedq(77414)
step
Defeat the Dreamsurge Champion |scenariostage 2 |goto The Azure Span/0 32.64,39.63
|tip This enemy is elite and will require a group.
|only if not completedq(77414)
step
Close a Waking Dream Portal |q 77414/3
|tip Loot the corpse of the Planesborn Annihilator.
|only if not completedq(77414)
step
label "Collect_Dreamsurge_Coalescence"
click Dreaming Growth+
|tip They look like large green and purple plants growing all over the zone.
|tip You can also fly through green orbs scattered all over the zone.
|tip Enemies also drop Coalescence.
Collect #100# Dreamsurge Coalescence |q 77251/1
step
talk Naralex##207962
Vote for a Dreamsurge Effect |q 77414/4 |goto The Azure Span/0 45.57,39.76
|only if not completedq(77414)
step
talk Archdruid Hamuul Runetotem##208649
turnin Shaping the Dreamsurge##77251 |goto The Azure Span/0 45.55,39.81
turnin Dreamsurge Investigation##77414 |goto The Azure Span/0 45.55,39.81 |only if not completedq(77414)
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Secrets of Azeroth\\Secrets of Azeroth",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Secrets of Azeroth") end,
description="\nThis guide section will walk you through completing the quests for the Secrets of Azeroth event.",
},[[
step
talk Preservationist Kathos##206864
|tip Inside the building.
accept Preserving Rarities##77203 |goto Valdrakken/0 47.35,48.21
step
talk Preservationist Kathos##206864
Select _"I'm ready!"_
|tip Inside the building.
collect 1 A Mystery Box##208054 |goto Valdrakken/0 47.35,48.21 |q 77203 |future
step
use A Mystery Box##208054
collect Golden Chalice##208056 |q 77203 |future
step
click Golden Chalice
|tip Inside the building.
Select _"<Sneak the chalice into the hoard.>"_
Solve the Mystery |q 77203/1 |goto Valdrakken/0 58.87,54.15
step
talk Preservationist Kathos##206864
|tip Inside the building.
turnin Preserving Rarities##77203 |goto Valdrakken/0 47.35,48.21
step
talk Preservationist Kathos##206864
|tip Inside the building.
'|accept Rise in Relic Theft##76735 |n
collect Tuskarr Ceremonial Spear##207105 |goto Valdrakken/0 47.35,48.21 |q 76987 |future
step
talk Elder Ko'nani##26194
|tip Inside the building.
Select _"Someone stole this ceremonial spear from the tuskarr. Do you know where it was taken from?"_
collect Shomko's Unyielding Spear##207580 |goto Dragonblight/0 48.01,74.87 |q 76987 |future
step
click Shomko's Unyielding Spear
Select _"<Place the spear on the weapon rack.>"_
Place Shomko's Unyielding Spear |q 76987 |goto Borean Tundra/0 33.62,58.43 |future
step
talk Bobby Carlisle##207696
|tip Inside the building.
'|accept A Secretive Contact##77165 |n
collect Bobby Carlisle's Thinking Cap Notes##207802 |goto Valdrakken/0 47.95,46.78 |q 77230 |future
step
|script DoEmote("Bow")
clicknpc Odd Statue##189827
|tip Inside the building.
|tip Target the statue before bowing.
Bow Before the Odd Statue |complete subzone("The Dragon's Hoard") |goto Valdrakken/0 46.87,45.04 |q 77237 |future
step
talk Kritha##192814
Select _"I would like to talk to you about Shakey Flatlap."_
Settle Shakey's Tab |complete completedq(77230) or completedq(77237) |goto Valdrakken/0 47.34,41.12
step
Leave The Dragon's Hoard Bar |complete not subzone("The Dragon's Hoard") |goto Valdrakken/0 47.33,49.72
step
talk Shakey Flatlap##198586
Select _"I settled your tab with Kritha. He says you have to pay up front from now on."_
collect Crystal Ocular Lenses##207816 |goto Valdrakken/0 39.06,61.85 |q 77237 |future
step
talk Gorgonzormu##196729
buy 5 Apexis Asiago##201419 |goto Valdrakken/0 29.03,65.02 |q 77237 |future
step
kill Hungering Tyranha##191451+
collect Fresh Tyranha##207812 |goto Thaldraszus/0 38.70,68.45 |q 77237 |future
step
talk Agurahl the Butcher##194152
buy 5 Thunderspine Tenders##198441 |goto Ohn'ahran Plains/0 85.17,23.48 |q 77237 |future
step
talk Sniktak##204371
buy 5 Latticed Stinkhorn##205693 |goto Zaralek Cavern/0 54.08,56.66 |q 77237 |future
step
talk Erugosa##185556
|tip Inside the building.
Select _"I have the ingredients for the thunderspine nest."_
collect Thunderspine Nest##207956 |goto Valdrakken/0 46.51,46.23 |q 77237 |future
step
talk Gryffin##197781
Select  _"<Hold up the fresh tyranha to Gryffin.>"_
collect Downy Helmet Liner##207813 |goto Valdrakken/0 42.48,49.47 |q 77237 |future
step
talk Clinkyclick Shatterboom##185548
Select _"What do you know about a Thinking Cap?"_
collect Thought Calculating Apparatus##207814 |goto Valdrakken/0 42.25,48.64 |q 77237 |future
step
use the Thought Calculating Apparatus##207814
accept Unfinished Thinking Cap##77237
step
talk Fangli Hoot##207697
turnin Unfinished Thinking Cap##77237 |goto Valdrakken/0 26.65,53.87
step
use the Tricked Out THinking Cap##206696
Collect the Tricked-Out Thinking Cap |toy Tricked-Out Thinking Cap##206696
step
use the Tricked Out THinking Cap##206696
Put on Your Thinking Cap |havebuff Tricked-Out Thinking Cap##414103 |goto Valdrakken/0 26.65,53.89
step
talk Fangli Hoot##207697
accept The Tricked-Out Thinking Cap##76504 |goto Valdrakken/0 26.67,53.89
step
click Riddle Solved!
Solve the Riddle |q 76504/1 |goto Valdrakken/0 64.65,53.72
step
talk Fangli Hoot##207697
turnin The Tricked-Out Thinking Cap##76504 |goto Valdrakken/0 26.67,53.89
step
talk Bobby Carlisle##207696
|tip Inside the building.
accept An Inside Job?##77276 |goto Valdrakken/0 47.96,46.85 |or
'|complete completedq(77397) |or
step
talk Fangli Hoot##207697
turnin An Inside Job?##77276 |goto Valdrakken/0 26.67,53.88 |or
'|complete completedq(77397) |or
step
click Preservationist's Locker
|tip Upstairs inside the building.
Select _"<Take the item.>"_
collect Maruuk Burial Banner##208130 |goto Valdrakken/0 48.83,47.81 |q 77276 |or
'|complete completedq(77397) |or
step
talk "Appraiser" Sazsel Stickyfingers##208620
|tip Inside the building.
Select _"Fangli said you could appraise this item to see if it is genuine."_
Talk to Stickyfingers About the Banner |q 77397 |goto Valdrakken/0 62.81,72.87 |future
step
talk "Appraiser" Sazsel Stickyfingers##208620
|tip Inside the building.
accept Preservationist Cleared##77277 |goto Valdrakken/0 62.81,72.87
step
click Preservationist's Locker
|tip Upstairs inside the building.
Select _"<Return the burial banner.>"_
Return the Burial Banner |q 77277/1 |goto Valdrakken/0 48.81,47.82
step
talk Fangli Hoot##207697
turnin Preservationist Cleared##77277 |goto Valdrakken/0 26.67,53.89
step
talk Tithris##185562
|tip Inside the building.
'|accept Securing an Artifact##77281 |n
collect Preservationist's Dispatch##208131 |goto Valdrakken/0 47.47,46.19 |q 77403 |future
step
use the Tricked Out Thinking Cap##206696
Put on Your Thinking Cap |havebuff Tricked-Out Thinking Cap##414103 |goto The Waking Shores/0 56.99,25.51 |q 77403 |future
step
click Ancient Lever
Throw the Lever |q 77403 |goto The Waking Shores/0 56.99,25.51 |future
step
click Ancient Lever
|tip Inside the tower.
Throw the Lever |q 77402 |goto The Waking Shores/0 57.77,23.82 |future
step
click Ancient Lever
|tip Inside the building.
Throw the Lever |q 77401 |goto The Waking Shores/0 56.61,20.31 |future
step
click Torch of Pyrreth
|tip Inside the building.
accept Artifact Secured##77282 |goto The Waking Shores/0 54.57,20.39
step
talk Preservationist Kathos##206864
|tip Inside the building.
turnin Artifact Secured##77282 |goto Valdrakken/0 47.33,48.22
accept The Torch of Pyrreth##77263 |goto Valdrakken/0 47.33,48.22
step
use the Torch of Pyrreth##208092
Collect the Torch of Pyrreth |toy Torch of Pyrreth##208092
step
use the Torch of Pyrreth##208092
|tip Inside the building.
Use the Torch |havebuff Flame Bearer##419127 |goto Valdrakken/0 58.48,23.61 |q 77263 |future
step
click Enchanted Box
|tip Inside the building.
collect 1 Kathos' Field Glasses##208107 |q 77263/1 |goto Valdrakken/0 58.48,23.61
step
talk Preservationist Kathos##206864
|tip Inside the building.
turnin The Torch of Pyrreth##77263 |goto Valdrakken/0 47.33,48.21
step
talk Bobby Carlisle##207696
|tip Inside the building.
'|accept A Chilling Ascent##77284 |n
collect The Clerk's Notes##208137 |goto Valdrakken/0 47.93,46.83
step
use the Torch of Pyrreth##208092
Use the Torch |havebuff Flame Bearer##419127 |goto The Azure Span/0 78.88,32.45 |q 77286 |future
step
click Unveiled Tablet
Select _"<Use paper and charcoal to make an etching.>"_
accept A Knowledgeable Descent##77286 |goto The Azure Span/0 78.88,32.45
step
talk Bobby Carlisle##207696
|tip Inside the building.
turnin A Knowledgeable Descent##77286 |goto Valdrakken/0 47.95,46.83
step
talk Tithris##185562
|tip Inside the building.
'|accept Idol Searching##77303 |n
collect 1 Preservationist's Dispatch Two##208144 |goto Valdrakken/0 47.46,46.22
step
Enter the building |goto Ohn'ahran Plains/0 31.67,70.45 < 7 |walk
use the Torch of Pyrreth##208092
|tip Inside the mound.
Light the Brazier |q 77405 |goto Ohn'ahran Plains/0 31.08,70.79 |future
step
Enter the building |goto Ohn'ahran Plains/0 32.58,68.29 < 7 |walk
use the Torch of Pyrreth##208092
|tip Inside the mound.
Light the Brazier |q 77406 |goto Ohn'ahran Plains/0 32.37,67.95 |future
step
Enter the building |goto Ohn'ahran Plains/0 35.28,66.05 < 7 |walk
use the Torch of Pyrreth##208092
|tip Inside the mound.
Light the Brazier |q 77407 |goto Ohn'ahran Plains/0 35.19,65.74 |future
step
Enter the building |goto Ohn'ahran Plains/0 40.30,59.43 < 7 |walk
use the Torch of Pyrreth##208092
|tip Inside the mound.
Light the Brazier |q 77404 |goto Ohn'ahran Plains/0 39.55,58.92 |future
step
click Idol of Ohn'ahra
|tip Inside the mound.
accept An Idol in Hand##77304 |goto Ohn'ahran Plains/0 39.56,58.89
step
talk Preservationist Kathos##206864
|tip Inside the building.
turnin An Idol in Hand##77304 |goto Valdrakken/0 47.34,48.21
accept Using the Idol##76456 |goto Valdrakken/0 47.34,48.21
step
use the Idol of Ohn'ahra##207730
Collect the Idol of Ohn'ahra |toy Idol of Ohn'ahra##207730
step
use the Idol of Ohn'ahra##207730
Activate the Idol of Ohn'ahra |havebuff Idol of Ohn'ahra##414338 |q 76456
step
click Hidden Gem
Loot the Hidden Gem |q 76456/1 |goto Valdrakken/0 49.00,51.23 |count 1
step
click Hidden Gem
Loot the Hidden Gem |q 76456/1 |goto Valdrakken/0 45.70,59.37 |count 2
step
click Hidden Gem
Loot the Hidden Gem |q 76456/1 |goto Valdrakken/0 55.15,64.62 |count 3
step
talk Preservationist Kathos##206864
|tip Inside the building.
turnin Using the Idol##76456 |goto Valdrakken/0 47.34,48.21
step
talk Preservationist Kathos##206864
|tip Inside the building.
'|accept Into the Sands##76509 |n
collect 1 A Clue: The Shifting Sands##206948 |goto Valdrakken/0 47.32,48.22
step
use the Idol of Ohn'ahra##207730
Activate the Idol of Ohn'ahra |havebuff Idol of Ohn'ahra##414338 |q 77305 |future
step
click Time-Lost Fragment##404319
collect 1 Time-Lost Fragment##208191 |goto Thaldraszus/0 58.51,78.43 |q 77305 |future
step
click Time-Lost Fragment##404319
collect 2 Time-Lost Fragment##208191 |goto Thaldraszus/0 58.79,78.24 |q 77305 |future
step
click Time-Lost Fragment##404319
collect 3 Time-Lost Fragment##208191 |goto Thaldraszus/0 59.30,78.82 |q 77305 |future
step
use the Time-Lost Fragment##208191
accept Out of the Sands##77305
step
talk Preservationist Kathos##206864
|tip Inside the building.
turnin Out of the Sands##77305 |goto Valdrakken/0 47.33,48.20
step
talk Bobby Carlisle##207696
|tip Inside the building.
accept A Key Story##77653 |goto Valdrakken/0 47.95,46.81 |or
'|q 77406 |future |or
step
talk Weaponsmith Koref##195769
|tip Inside the building.
turnin A Key Story##77653 |goto Valdrakken/0 36.19,51.94 |or
'|q 77406 |future |or
step
Enter the cave |goto Ohn'ahran Plains/0 53.31,56.85 < 7 |walk
use the Torch of Pyrreth##208092
|tip Inside the mound.
Light the Brazier |q 77406 |goto Ohn'ahran Plains/0 32.37,67.95 |future
step
click Titan Key Mold
accept A Titanic Mold##77822 |goto Ohn'ahran Plains/0 63.00,57.37
step
talk Weaponsmith Koref##195769
|tip Inside the building.
turnin A Titanic Mold##77822 |goto Valdrakken/0 36.19,51.94
step
talk Bobby Carlisle##207696
|tip Inside the building.
accept Reforging a Legend##77829 |goto Valdrakken/0 47.94,46.82 |or
'|q 77893 |future |or
step
talk Weaponsmith Koref##195769
|tip Inside the building.
turnin Reforging a Legend##77829 |goto Valdrakken/0 36.19,51.91
'|q 77893 |future |or
step
use the Idol of Ohn'ahra##207730
Activate the Idol of Ohn'ahra |havebuff Idol of Ohn'ahra##414338 |q 77831 |future
step
click Dusty Red Pellets+
|tip They look like tiny clusters of red rocks on the ground around the shore.
|tip It helps to zoom your camera in close to see them.
collect 50 Rose Gold Dust##208835 |goto The Waking Shores/0 48.24,46.28 |q 77831 |future
step
click Igneous Flux+
|tip They look like small piles of ash around areas of cooling magma.
collect 8 Igneous Flux##208836 |goto The Waking Shores/0 21.10,76.86 |q 77831 |future
step
talk Weaponsmith Koref##210837
accept A Key To Reforg(ing)##77831 |goto The Waking Shores/0 24.52,60.74
step
use the Torch of Pyrreth##208092
Use the Torch |havebuff Flame Bearer##419127 |goto The Waking Shores/0 24.52,60.74 |q 77831 |future
step
talk Weaponsmith Koref##210837
Select _"I am ready to begin."_
Talk to Weaponsmith Koref to Begin |q 77831/1 |goto The Waking Shores/0 24.52,60.74
step
extraaction Add Dusty Red Pellets##422252
Add the Dusty Red Pellets |q 77831/2 |goto The Waking Shores/0 24.52,60.74
step
extraaction Add Igneous Flux##422255
Add the Igneous Flux |q 77831/3 |goto The Waking Shores/0 24.52,60.74
step
use the Torch of Pyrreth##208092
Infuse the Key with the Torch of Pyrreth |q 77831/4 |goto The Waking Shores/0 24.52,60.74
step
click Reforged Titan Key
collect 1 Reforged Titan Key##208830 |q 77831/5 |goto The Waking Shores/0 24.54,60.90
step
talk Weaponsmith Koref##210837
turnin A Key To Reforg(ing)##77831 |goto The Waking Shores/0 24.51,60.75
step
talk Preservationist Kathos##206864
|tip Inside the building.
accept A Proper Burial##77865 |goto Valdrakken/0 47.35,48.21 |or
'|q 77578 |future |or
step
use the Torch of Pyrreth##208092
Use the Torch |havebuff Flame Bearer##419127 |goto Valdrakken/0 24.52,60.74 |q 77578 |future
step
Enter the cave |goto Ohn'ahran Plains/0 43.65,48.13 < 7 |walk
click Banner Stand
|tip In the upper part of the cave.
Select _"<Tie the burial banner back up to the stand.>"_
Plant the Banner |q 77578 |goto Ohn'ahran Plains/0 42.65,50.99 |future
step
talk Bobby Carlisle##207696
|tip Inside the building.
'|accept A Special Book##77897 |n
collect Kirin Tor Contact's Note##208888 |goto Valdrakken/0 47.94,46.84 |q 78050 |future
step
use the Idol of Ohn'ahra##207730
|tip Kill Moroes, then do the Opera event and move on to kill The Curator.
|tip Use it in The Menagerie inside Karazhan.
Activate the Idol of Ohn'ahra |havebuff Idol of Ohn'ahra##414338 |q 78050 |future
step
click Ancient Tome
Check the Ancient Tome |q 78050 |goto Karazhan/9 32.39,49.12 |future
step
click Ancient Tome
Check the Ancient Tome |q 78051 |goto Karazhan/9 36.52,37.22 |future
step
click Ancient Tome
Check the Ancient Tome |q 78052 |goto Karazhan/9 47.39,64.63 |future
step
click Tyr's Legacy
accept A Legacy of Secrets##77908 |goto Karazhan/9 33.29,50.93
step
talk Bobby Carlisle##207696
|tip Inside the building.
turnin A Legacy of Secrets##77908 |goto Valdrakken/0 47.99,46.82
step
talk Bobby Carlisle##207696
|tip Inside the building.
accept They Are Always Listening##77928 |goto Valdrakken/0 47.95,46.81 |or
'|complete completedq(77916) |or
step
talk Fangli Hoot##207697
turnin They Are Always Listening##77928 |goto Valdrakken/0 26.67,53.90 |or
'|complete completedq(77916) |or
step
click Auction House Bill of Sale
|tip Inside the building.
Retrieve the Auction House Bill of Sale |q 78053 |goto Valdrakken/0 44.21,60.40 |future
step
click Void Storage Receipt
|tip Inside the building.
Retrieve the Void Storage Receipt |q 78054 |goto Valdrakken/0 73.96,57.48 |future
step
click Garden Supply Receipt
|tip Inside the building.
Retrieve the Garden Supply Receipt |q 78055 |goto Valdrakken/0 53.02,28.51 |future
step
click Researcher's Note
|tip Inside the building.
Retrieve the Researcher's Note |q 78056 |goto Valdrakken/0 37.61,37.16 |future
step
click Hastily Scrawled Note
|tip Inside the building.
Retrieve the Hastily Scrawled Note |q 78057 |goto Valdrakken/0 31.65,70.27 |future
step
click Researcher's Note
|tip Inside the building.
Retrieve the Researcher's Note |q 78056 |goto Valdrakken/0 37.61,37.16 |future
step
|script DoEmote("Bow")
clicknpc Odd Statue##189827 |goto Valdrakken/0 46.87,45.04
|tip Inside the building.
|tip Target the statue before bowing.
Bow Before the Odd Statue |complete subzone("The Dragon's Hoard") |goto Valdrakken/0 46.87,45.04 |q 77934 |future
step
use the Idol of Ohn'ahra##207730
|tip Inside the building.
Activate the Idol of Ohn'ahra |havebuff Idol of Ohn'ahra##414338 |q 77934 |future
step
click Note to Kritha
|tip Inside the building.
Retrieve the Note to Kritha |q 78058 |goto Valdrakken/0 46.00,41.45 |future
step
Leave The Dragon's Hoard Bar |complete not subzone("The Dragon's Hoard") |goto Valdrakken/0 47.33,49.72
step
talk Fangli Hoot##207697
turnin A Complete Inventory##77934 |goto Valdrakken/0 26.67,53.90
step
talk Tithris##185562
'|accept A Sphere in Danger##77953 |n
collect Preservationist's Dispatch Three##208942 |goto Valdrakken/0 47.48,46.18 |q 77951 |future
step
Enter the cave |goto Thaldraszus/0 47.03,78.10 < 7 |walk
use the Torch of Pyrreth##208092
|tip Inside the cave.
|tip Wait for it to reveal the tablet.
Activate the Tablet |q 78109 |goto Thaldraszus/0 46.62,77.61 |future
step
click Buried Object
collect Piece of the Orb of Rathmus##209797 |goto Thaldraszus/0 45.90,79.71 |q 78108 |future
step
Enter the cave |goto Thaldraszus/0 49.78,80.21 < 7 |walk
use the Torch of Pyrreth##208092
|tip Inside the cave.
|tip Wait for it to reveal the tablet.
Activate the Tablet |q 78108 |goto Thaldraszus/0 50.15,81.01 |future
step
click Buried Object
collect Piece of the Orb of Rathmus##209795 |goto Thaldraszus/0 49.52,79.74 |q 78111 |future
step
Enter the cave |goto Thaldraszus/0 47.91,77.83 < 7 |walk
use the Torch of Pyrreth##208092
|tip Inside the cave.
|tip Wait for it to reveal the tablet.
Activate the Tablet |q 78111 |goto Thaldraszus/0 48.69,76.32 |future
step
click Buried Object
collect Piece of the Orb of Rathmus##209799 |goto Thaldraszus/0 50.16,78.00 |q 77954 |future
step
use the Piece of the Orb of Rathmus##209799
accept A Curious Orb##77954 |goto Thaldraszus/0 50.16,78.00
step
talk Tithris##185562
|tip Inside the building.
turnin A Curious Orb##77954 |goto Valdrakken/0 47.46,46.22
step
talk Preservationist Kathos##206864
|tip Inside the building.
'|accept A Treacherous Race##77957 |n
collect Ancient Tyrhold Artifact Notes##208958 |goto Valdrakken/0 47.43,48.22
step
use the Torch of Pyrreth##208092
|tip Wait for the channeling to complete and the orb to catch fire.
Activate the Statue |q 77960 |goto Thaldraszus/0 57.25,64.53 |future
step
use the Torch of Pyrreth##208092
|tip Wait for the channeling to complete and the orb to catch fire.
Activate the Statue |q 77961 |goto Thaldraszus/0 57.06,63.03 |future
step
use the Torch of Pyrreth##208092
|tip Wait for the channeling to complete and the orb to catch fire.
Activate the Statue |q 77962 |goto Thaldraszus/0 57.85,61.98 |future
step
use the Torch of Pyrreth##208092
|tip Wait for the channeling to complete and the orb to catch fire.
Activate the Statue |q 77963 |goto Thaldraszus/0 57.85,60.51 |future
step
use the Torch of Pyrreth##208092
|tip Wait for the channeling to complete and the orb to catch fire.
Activate the Statue |q 77964 |goto Thaldraszus/0 59.79,61.04 |future
step
use the Torch of Pyrreth##208092
|tip Wait for the channeling to complete and the orb to catch fire.
Activate the Statue |q 77965 |goto Thaldraszus/0 57.85,57.03 |future
step
use the Torch of Pyrreth##208092
|tip Wait for the channeling to complete and the orb to catch fire.
Activate the Statue |q 77966 |goto Thaldraszus/0 57.93,55.93 |future
step
use the Torch of Pyrreth##208092
|tip Wait for the channeling to complete and the orb to catch fire.
Activate the Statue |q 77967 |goto Thaldraszus/0 59.77,56.32 |future
step
use the Torch of Pyrreth##208092
|tip In the back of the building in front of the giant face.
Activate the Lock |q 77975 |goto Thaldraszus/0 61.17,58.74 |future
step
click Broken Urn
|tip On the first floor from the surface.
collect Titan Cube Housing##208971 |goto Thaldraszus/0 59.95,54.69 |q 77969 |future
step
click Broken Urn
|tip On the third floor from the surface.
collect Titan Focusing Crystal##208960 |goto Thaldraszus/0 59.72,54.87 |q 77969 |future
step
click Broken Urn
|tip On the first floor from the surface.
collect Titan Energy Core##208970 |goto Thaldraszus/0 59.83,62.26 |q 77969 |future
step
click Broken Urn
|tip On the third floor from the surface.
collect Large Titan Capacitor##208973 |goto Thaldraszus/0 59.68,62.63 |q 77969 |future
step
use the Titan Energy Core##208970
collect Titan Energy Cube##208969 |q 77969 |future
step
click Broken Urn
|tip On the bottom floor.
collect Titan Block Key Fragment##208967 |goto Thaldraszus/0 61.96,61.93 |q 77969 |future
step
click Broken Urn
|tip On the bottom floor.
collect Titan Block Key Fragment##208966 |goto Thaldraszus/0 61.66,55.08 |q 77969 |future
step
use the Titan Block Key Fragment##208966
collect Titan Block Key##208965 |q 77969 |future
step
click Titan Power Relay
|tip Inside the tower.
Select _"<Install the missing component.>"_
Install the Missing Component |q 77969 |goto Thaldraszus/0 61.04,55.05 |future
step
click Titan Power Relay
|tip Inside the tower.
Select _"<Install the missing component.>"_
Install the Missing Component |q 77968 |goto Thaldraszus/0 59.33,56.89 |future
step
click Titan Power Relay
|tip Inside the tower.
Select _"<Install the missing component.>"_
Install the Missing Component |q 77970 |goto Thaldraszus/0 59.53,60.58 |future
step
click Titan Power Relay
|tip Inside the tower.
Select _"<Install the missing component.>"_
Install the Missing Component |q 77971 |goto Thaldraszus/0 61.03,62.35 |future
step
click Orb Location
accept An Ominous Artifact##77977 |goto Thaldraszus/0 60.16,58.73
step
click Orb Location
Select _"<Investigate to see if you can bypass the orb.>"_
Investigate the Orb Slot on the Console |q 77977/1 |goto Thaldraszus/0 60.16,58.73
stickystart "Kill_Amerinth"
step
kill 1 Tithris##210674 |q 77977/3 |goto Thaldraszus/0 60.41,58.74
step
label "Kill_Amerinth"
kill 1 Amerinth##210675 |q 77977/2 |goto Thaldraszus/0 60.41,58.74
step
collect 1 Orb of Rathmus##209555 |q 77977/4 |goto Thaldraszus/0 60.41,58.68
|tip Loot it from their corpse.
step
click Orb Location
Select _"<Place the Orb of Rathmus.>"_
Place the Orb of Rathmus Atop the Console |q 77977/5 |goto Thaldraszus/0 60.16,58.74
step
click Cache of Cosmic Mysteries
Secure the Mysterious Artifact |q 77977/6 |goto Thaldraszus/0 60.14,58.74
step
click Orb of Rathmus
Select _"<Retrieve the Orb of Rathmus.>"_
Retrieve the Orb of Rathmus |q 77977/7 |goto Thaldraszus/0 60.16,58.74
step
talk Preservationist Kathos##206864
turnin An Ominous Artifact##77977 |goto Thaldraszus/0 60.45,59.11
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Secrets of Azeroth\\Community Rumors",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Secrets of Azeroth") end,
description="\nThis guide section will walk you through finding the community rumors for the Secrets of Azeroth event.",
},[[
step
use the Torch of Pyrreth##208092
|tip Work through the "Secrets of Azeroth" event guide to collect this toy.
|tip It is require to complete the following steps.
Collect the Torch of Pyrreth |toy Torch of Pyrreth##208092
step
use the Torch of Pyrreth##208092
Use the Torch Near the Crystal and Wait for the Dirt to Spawn |q 78152 |goto Blasted Lands/0 64.67,55.44 |future
step
click Loose Dirt Mound
Loot the Buried Satchel |q 77298 |goto Blasted Lands/0 64.67,55.44 |future
step
click Loose Dirt Mound
Loot the Buried Satchel |q 78207 |goto Western Plaguelands/0 68.81,73.21 |future
step
click Loose Dirt Mound
Loot the Buried Satchel |q 77289 |goto Eastern Plaguelands/0 55.25,59.44 |future
step
click Loose Dirt Mound
|tip At the mouth of the statue.
Loot the Buried Satchel |q 77297 |goto Northern Barrens/0 46.05,50.68 |future
step
Enter the underwater cave |goto Thousand Needles/0 44.10,37.23 < 10 |walk
click Loose Dirt Mound
|tip Inside the underwater cave.
Loot the Buried Satchel |q 77291 |goto Thousand Needles/0 42.74,30.65 |future
step
click Loose Dirt Mound
Loot the Buried Satchel |q 77288 |goto Felwood/0 42.23,48.04 |future
step
click Loose Dirt Mound
|tip on the floating island.
Loot the Buried Satchel |q 77299 |goto Nagrand/0 57.90,26.37 |future
step
use the Torch of Pyrreth##208092
|tip Three players must use each use their torch near a small crystal surrounding the bigger crystal.
click Loose Dirt Mound
Loot the Buried Satchel |q 77290 |goto Netherstorm/0 26.26,68.57 |future
step
click Loose Dirt Mound
|tip At the mouth of the statue.
Loot the Buried Satchel |q 77294 |goto Dragonblight/0 63.91,72.62 |future
step
click Loose Dirt Mound
|tip on the floating island.
Loot the Buried Satchel |q 77302 |goto Dragonblight/0 73.15,39.54 |future
step
talk Darrok##27425 |only if Horde
talk Gordun##27414 |only if Alliance
Select _"Yes, I am ready to travel to Venture Bay!"_
Begin the Log Ride |invehicle |goto Grizzly Hills/0 35.06,34.74 |only if Horde
Begin the Log Ride |invehicle |goto Grizzly Hills/0 36.81,35.73 |only if Alliance
step
Ride the Log Ride |outvehicle |goto Grizzly Hills/0 10.73,75.23 |only if Horde
Ride the Log Ride |outvehicle |goto Grizzly Hills/0 20.40,81.51 |only if Alliance
step
click Loose Dirt Mound
|tip Click it before the WHEE! buff wears off.
Loot the Buried Satchel |q 77300 |goto Grizzly Hills/0 10.98,74.90 |future |only if Horde
Loot the Buried Satchel |q 77300 |goto Grizzly Hills/0 20.29,81.35 |future |only if Alliance
step
click Loose Dirt Mound
|tip At the mouth of the statue.
Loot the Buried Satchel |q 77293 |goto Valley of the Four Winds/0 56.83,21.41 |future
step
click Loose Dirt Mound
|tip At the mouth of the statue.
Loot the Buried Satchel |q 77301 |goto Timeless Isle/0 38.70,54.94 |future
step
click Loose Dirt Mound
Loot the Buried Satchel |q 77292 |goto Shadowmoon Valley D/0 35.31,48.96 |future
step
click Loose Dirt Mound
|tip on the floating island.
Loot the Buried Satchel |q 78208 |goto Highmountain/0 53.35,87.50 |future
step
click Loose Dirt Mound
|tip on the floating island.
Loot the Buried Satchel |q 77295 |goto Tiragarde Sound/0 74.56,86.13 |future
step
use the Torch of Pyrreth##208092
|tip Walk up to the snowman with it lit a waint for it to melt.
click Loose Dirt Mound
|tip At the mouth of the statue.
Loot the Buried Satchel |q 77296 |goto The Azure Span/0 25.24,71.47 |future
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Secrets of Azeroth\\Secrets of Azeroth Mimiron's Jumpjets Mount",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Secrets of Azeroth") end,
description="\nThis guide section will walk you through assembling the Mimiron's Jumpjets.",
},[[
step
use the Torch of Pyrreth##208092
|tip Work through the "Secrets of Azeroth" event guide to collect this toy.
|tip It is require to complete the following steps.
Collect the Torch of Pyrreth |toy Torch of Pyrreth##208092
step
use the Torch of Pyrreth##208092
|tip 3 people are needed, each using their Torch near a brazier to summon the Enigma Ward.
kill Enigma Ward##210398 |q 78098 |goto The Cape of Stranglethorn/0 58.99,78.25 |future
step
collect 1 First Booster Part##208984
|tip Loot it from the corpse.
step
extraaction Envelope##423412
click Mimiron's Booster Part
|tip One person needs to click the part while the other three need to use the ability that appears on-screen by the elemental.
collect Second Booster Part##209781 |goto Felwood/0 49.91,26.37 |q 78099 |future
step
click Mimiron's Booster Part
collect Third Booster Part##209055 |goto Blasted Lands/0 54.86,52.28 |q 78100 |future
step
use First Booster Part##208984
|tip The Arcane Forge must be empowered to assemble this.
|tip The icon on the map indicates the start of the next event and the number of completions required to make the forge permanent.
|tip Wait for the next event completion to assemble your mount.
collect Mimiron's Jumpjets##210022 |goto Valdrakken/0 36.47,61.98
step
use Mimiron's Jumpjets##210022
Collect the Mimiron's Jumpjets Mount |learnmount Mimiron's Jumpjets##424082
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Dragonflight (10-70)\\The Emerald Dream Superbloom",{
author="support@zygorguides.com",
description="This guide will help you complete the Superbloom event in The Emerald Dream.",
startlevel=70,
patch='100200',
viginette=5813,
areapoitype="Superbloom",
},[[
step
label "Accept_The_Superbloom"
talk Clarelle##208474
accept The Superbloom##78319 |goto The Emerald Dream/0 51.42,59.61
step
Wait for the Superbloom Event to Start |scenariostart |goto The Emerald Dream/0 51.42,59.61
|tip The event starts at the top of every hour.
stickystart "Earn_Blooms"
step
click Dreamfruit
|tip Choose from the powers available for the remainder of the Superbloom event.
|tip Depending on your reputation with the Dream Wardens, you may be able to choose more than one.
Consume Dreamfruit for the Journey |scenariogoal 1/60388 |goto The Emerald Dream/0 51.27,59.83
step
map The Emerald Dream/0
path follow smart; loop off; ants curved; dist 30
path	51.51,59.79	52.08,60.78	54.28,62.10	54.87,63.82	56.08,66.67
path	57.38,68.17	55.54,71.50	53.13,73.70
click Rain-Starved Flower+
|tip They look like large flowers surrounded by light on the ground all over the area.
|tip Each flower will increase the Bloom Quality by a small amount.
Help as Many Rain-Starved Flowers as You Can |scenariogoal 2/60395
|only if scenariostage(2)
step
Kill enemies that attack in waves
Defeat the Primalists |scenariogoal 3/0 |goto The Emerald Dream/0 53.06,73.68
|only if scenariostage(3)
step
map The Emerald Dream/0
path follow smart; loop off; ants curved; dist 30
path	52.85,74.18	51.24,77.10	49.77,76.64	47.56,76.14	46.85,74.46
path	45.74,72.83	44.72,72.09 |goto The Emerald Dream/0 44.10,71.76
clicknpc Tenacious Weed##207675+
|tip They look like small plants growing out of the ground around Sprucecrown.
click Rain-Starved Flowers
|tip They look like large flowers surrounded by light on the ground all over the area.
|tip Each flower and weed will increase the Bloom Quality by a small amount.
Pull Weeds and Help as Much as You Can |scenariogoal 4/60396
|only if scenariostage(4)
step
map The Emerald Dream/0
path follow smart; loop off; ants curved; dist 30
path	51.53,59.92	49.56,58.84	48.82,58.40	47.07,58.76	46.33,61.46
path	46.15,63.57
clicknpc Vision of Innocence##208693+
|tip They look like small creatures hopping around this area.
Shoo as Many Insect Swarms as you Can Near Sprucecrown |scenariogoal 5/60398
|only if scenariostage(5)
stickystart "Defeat_the_Western_Patrol"
step
Kill enemies that attack in waves
Defeat the Northern Patrol |scenariogoal 6/60314 |goto The Emerald Dream/0 46.46,61.21
|only if scenariostage(6)
step
label "Defeat_the_Western_Patrol"
Kill enemies that attack in waves
Defeat the Western Patrol |scenariogoal 6/60315 |goto The Emerald Dream/0 46.00,63.64
|only if scenariostage(6)
step
map The Emerald Dream/0
path follow smart; loop off; ants curved; dist 30
path	46.15,63.57	45.17,64.11	44.44,67.32	42.44,67.98	42.24,68.91
path	44.01,72.01
click Mulch Pile+
|tip THey look like piles of dirt on the ground around this area.
Dig up mulch and help as much as you can |scenariogoal 7/60397
|only if scenariostage(7)
step
Kill enemies that attack in waves
Defend Sprucecrown from All Primalist Attackers |scenariogoal 8/64358 |goto The Emerald Dream/0 44.06,71.79
step
kill 1 Verlann Timbercrush##207554 |scenariogoal 9/60311 |goto The Emerald Dream/0 43.98,72.35
step
label "Earn_Blooms"
Earn #50# Blooms |q 78319/2 |goto The Emerald Dream/0 51.42,59.61
|tip Run through Insect Swarms to disperse them.
|tip Click flowers and fruits along the way.
step
Complete the Superbloom |q 78319/3 |goto The Emerald Dream/0 51.42,59.61
step
talk Clarelle##208474
turnin The Superbloom##78319 |goto The Emerald Dream/0 44.62,71.96
|next "Accept_The_Superbloom"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\The War Within (70-80)\\20th Anniversary Celebration\\20th Anniversary Event Weeklies",{
author="support@zygorguides.com",
description="This guide will help you complete the 20th anniversary event weekly quests.",
startlevel=10,
patch='110005',
},[[
step
accept Another Timely Invitation##82672
|tip You will accept this quest automatically.
|tip If this doesn't happen, check your mailbox for a quest item.
step
talk Yllana##223877
turnin Another Timely Invitation##82672 |goto Tanaris/0 62.87,50.66
accept Meet and Greet##84254 |goto Tanaris/0 62.87,50.66
step
talk Yllana##223877
accept Celebrate Good Fun!##84616 |goto Tanaris/0 62.87,50.66
|only if not completedq(84489)
step
talk Bobadormu##223884
accept An Original Path Through Time##85947 |goto Tanaris/0 62.73,50.29 |only if default
accept An Original Path Through Time##83274 |goto Tanaris/0 62.73,50.29 |only if level == 80
|only if not completedq(84489)
step
talk Historian Ju'pa##110035 |only if Horde
talk Historian Llore##110034 |only if Alliance
accept A Time to Reflect##43461 |goto Tanaris/0 62.88,50.23 |only if Horde
accept A Time to Reflect##43323 |goto Tanaris/0 62.83,50.23 |only if Alliance
|only if not completedq(84489)
step
talk Historian Ju'pa##110035 |only if Horde
talk Historian Llore##110034 |only if Alliance
Answer the Question |gossip 42032,46080,42184,42086,42210,42166,42162,42098,42020,41539,46192,46212,42099,46063,46108,111314,45705,111330,45699,111355,111320,46214,46004,42157,45695,111308,46237,41686,46073,111278,46085,111351,111311,42025,46130,46010,111302,46149,111300,111287,111284,46219,41530,41706,111346,111340,46194,46159,42185,46019,111323,46001,111327,45687,46094,46166,46202,46106,41711,111342,46026,46017,46139,46225,111290,41522,42220,41658,42026,46185,42092,46155,46088,42179,111295,111336,42210,42088,42169,46175,46031,46229,41542,41683,42176,46101,42156,46036,46146,42189,41536,41716,46206,46168,46069,41528,41546
|tip Ensure {o}Automatically select dialog options{} is enabled in {o}Automation{} settings.
|tip This should happen automatically unless you encounter a new question.
|tip If it doesn't, close and open the window a time or two.
Answer Ju'Pa's Question |q 43461/1 |goto Tanaris/0 62.88,50.23 |only if Horde
Answer Llore's Question |q 43323/1 |goto Tanaris/0 62.83,50.23 |only if Alliance
|only if not completedq(84489)
step
talk Historian Ju'pa##110035 |only if Horde
talk Historian Llore##110034 |only if Alliance
turnin A Time to Reflect##43461 |goto Tanaris/0 62.88,50.23 |only if Horde
turnin A Time to Reflect##43323 |goto Tanaris/0 62.83,50.23 |only if Alliance
|only if not completedq(84489)
step
talk Thrynviel##226164
Talk to Thrynviel |q 84254/3 |goto Tanaris/0 63.50,49.86
step
talk Moira Thaurissan##229494
accept Truth of the Dark Irons##84735 |goto Tanaris/0 62.98,49.65
step
talk Moira Thaurissan##229494
accept Disturbance Detected: Blackrock Depths##82817 |goto Tanaris/0 62.98,49.65
|only if not completedq(84489)
step
talk Vanni Thorngage##226290
Talk to Vanni Thorngage |q 84254/4 |goto Tanaris/0 62.83,49.34
step
talk Chromie##226368
accept Chromie's Codex##82783 |goto Tanaris/0 62.56,50.03
|only if not completedq(84489)
step
talk Petra##226251
Talk to Petra |q 84254/5 |goto Tanaris/0 61.99,50.10
step
talk Izaik Kadarov##223882
accept Soldier of Time##57300 |goto Tanaris/0 62.28,51.77 |or 2 |noautoaccept
|tip This quest is PVP in the Korrak's Revenge event.
|tip You can skip this if you wish.
accept Timely Gate Crashers##60215 |goto Tanaris/0 62.28,51.77 |or 2
accept The Originals##47254 |goto Tanaris/0 62.28,51.77 |or 2
|tip You will only be able to accept two of these quests.
|only if not completedq(84489)
step
talk Hansel Cyrilson##226212
Talk to Hansel Cyrilson |q 84254/2 |goto Tanaris/0 63.25,51.26
step
talk Grimkel##223887
Talk to Grimkel |q 84254/1 |goto Tanaris/0 64.14,51.18
step
talk Yllana##223877
turnin Meet and Greet##84254 |goto Tanaris/0 62.87,50.66
accept Shopping Squee!##84489 |goto Tanaris/0 62.87,50.66
step
talk Traeya##223902
Select _"Thanks. I'll have a look around."_ |gossip 123908
Talk to Traeya |q 84489/1 |goto Tanaris/0 63.07,50.95
step
talk Historian Ma'di##158061
Select _"Thanks. I'll have a look around."_ |gossip 123909
Talk to Historian Ma'di |q 84489/2 |goto Tanaris/0 62.62,50.43
step
talk Bobadormu##223884
Select _"Thanks. I'll have a look around."_ |gossip 123910
Talk to Bobadormu |q 84489/3 |goto Tanaris/0 62.73,50.29
step
talk Yllana##223877
turnin Shopping Squee!##84489 |goto Tanaris/0 62.87,50.66
step
label "Accept_Daily_Quests"
talk Yllana##223877
accept Celebrate Good Fun!##84616 |goto Tanaris/0 62.87,50.66
stickystart "Participate_in_Activities"
step
talk Bobadormu##223884
accept An Original Path Through Time##85947 |goto Tanaris/0 62.73,50.29 |only if default
accept An Original Path Through Time##83274 |goto Tanaris/0 62.73,50.29 |only if level == 80
step
talk Historian Ju'pa##110035 |only if Horde
talk Historian Llore##110034 |only if Alliance
accept A Time to Reflect##43461 |goto Tanaris/0 62.88,50.23 |only if Horde
accept A Time to Reflect##43323 |goto Tanaris/0 62.83,50.23 |only if Alliance
step
talk Historian Ju'pa##110035 |only if Horde
talk Historian Llore##110034 |only if Alliance
Answer the Question |gossip 42032,46080,42184,42086,42210,42166,42162,42098,42020,41539,46192,46212,42099,46063,46108,111314,45705,111330,45699,111355,111320,46214,46004,42157,45695,111308,46237,41686,46073,111278,46085,111351,111311,42025,46130,46010,111302,46149,111300,111287,111284,46219,41530,41706,111346,111340,46194,46159,42185,46019,111323,46001,111327,45687,46094,46166,46202,46106,41711,111342,46026,46017,46139,46225,111290,41522,42220,41658,42026,46185,42092,46155,46088,42179,111295,111336,42210,42088,42169,46175,46031,46229,41542,41683,42176,46101,42156,46036,46146,42189,41536,41716,46206,46168,46069,41528,41546
|tip Ensure {o}Automatically select dialog options{} is enabled in {o}Automation{} settings.
|tip This should happen automatically unless you encounter a new question.
|tip If it doesn't, close and open the window a time or two.
Answer Ju'Pa's Question |q 43461/1 |goto Tanaris/0 62.88,50.23 |only if Horde
Answer Llore's Question |q 43323/1 |goto Tanaris/0 62.83,50.23 |only if Alliance
step
talk Historian Ju'pa##110035 |only if Horde
talk Historian Llore##110034 |only if Alliance
turnin A Time to Reflect##43461 |goto Tanaris/0 62.88,50.23 |only if Horde
turnin A Time to Reflect##43323 |goto Tanaris/0 62.83,50.23 |only if Alliance
step
talk Moira Thaurissan##229494
accept Disturbance Detected: Blackrock Depths##82817 |goto Tanaris/0 62.98,49.65
step
talk Chromie##226368
accept Chromie's Codex##82783 |goto Tanaris/0 62.56,50.03
step
talk Chromie##226368
Select _"Count me in! <Queue for The Codex of Chromie.>"_ |gossip 122968 |noautogossip
Enter "The Codex of Chromie" Scenario |scenariostart The Codex of Chromie##2555 |goto Tanaris/0 62.56,50.03 |q 82783
|tip This will queue you for the scenario and start forming a group.
|tip It may take some time, especially if you are DPS.
|tip Join the scenario and complete it.
step
Complete the Scenario "The Codex of Chromie" |q 82783/1
|tip The scenario is fairly simple.
|tip Stick with Chromie, marked with a rex X on the map when she travels.
|tip Kill enemies around the objective areas that she stops at with your group.
|tip This scenario moves very quickly and is easy to complete.
|tip Kill the final boss and use the portal to leave.
step
click Caverns of Time Portal
Leave the Scenario |complete not subzone("The Scarab Wall") or completedq(82783) |goto Codex of Chromie/0 32.36,79.23
step
talk Chromie##226368
turnin Chromie's Codex##82783 |goto Tanaris/0 62.56,50.03
step
talk Izaik Kadarov##223882
accept Soldier of Time##57300 |goto Tanaris/0 62.28,51.77 |or 2 |noautoaccept
|tip This quest is PVP in the Korrak's Revenge event.
|tip You can skip this if you wish.
accept Timely Gate Crashers##60215 |goto Tanaris/0 62.28,51.77 |or 2
accept The Originals##47254 |goto Tanaris/0 62.28,51.77 |or 2
|tip You will only be able to accept two of these quests.
stickystart "Complete_Timewalking_Dungeons"
step
kill Doomwalker##167749 |q 60215/1 |goto Tanaris/0 61.92,59.28
|tip This is a raid boss and will require a group.
|only if haveq(60215) or completedq(60215)
step
kill Sha of Anger##226646 |q 60215/2 |goto Tanaris/0 33.70,55.70
|tip This is a raid boss and will require a group.
|only if haveq(60215) or completedq(60215)
step
kill Archavon the Stone Watcher##227257 |q 60215/3 |goto Tanaris/0 46.07,29.03
|tip This is a raid boss and will require a group.
|tip Kill the Val'kyr Hunters and have players stand in their place to release Archavon.
|only if haveq(60215) or completedq(60215)
step
kill Azuregos##121820 |q 47254/2 |goto Azshara/0 48.77,84.38
|tip This is a raid boss and will require a group.
|tip Avoid standing in things on the ground.
|tip Avoid standing in front or behind Azuregos.
|tip Run away when you are pulled in.
|only if haveq(47254) or completedq(47254)
step
kill Taerar##121911 |goto Ashenvale/0 93.79,41.18
kill Ysondre##121912 |goto Feralas/0 50.95,11.87
kill Emeriss##121913 |goto Duskwood/0 46.62,40.52
kill Lethon##121821 |goto The Hinterlands/0 62.83,25.04
|tip The four dragons of nightmare rotate each week in availability.
Defeat a Dragon of Nightmare |q 47254/3
|tip This is a raid boss and will require a group.
|tip Move out of things on the ground.
|tip Avoid standing in front or behind dragons.
|only if haveq(47254) or completedq(47254)
step
kill Lord Kazzak##121818 |q 47254/1 |goto Blasted Lands/0 32.49,49.10
|tip This is a raid boss and will require a group.
|only if haveq(47254) or completedq(47254)
stickystart "Collect_Timewarped_Blueprints"
step
Defeat Dagran Thaurissan |q 82817/1
|tip Queue for The Imperial Seat or form a group and enter the raid.
|tip Defeat the final boss.
step
Defeat Dagran Thaurissan |q 84735/1
|tip Queue for The Imperial Seat or form a group and enter the raid.
|tip Defeat the final boss.
|only if not completedq(84735)
step
label "Collect_Timewarped_Blueprints"
collect Timewarped Ironforge Blueprints##224278 |q 82817/2
|tip Loot them from the Blackrock Depths raid.
step
Earn #500# Honor in Korrak's Revenge |q 57300/1 |goto Tanaris/0 62.28,51.77
|tip Queue for the Korrak's Revenge battleground in the PVP interface.
|only if haveq(57300) or completedq(57300)
step
label "Complete_Timewalking_Dungeons"
Complete #5# Timewalking Dungeons |q 85947/1 |goto Tanaris/0 62.56,50.03 |only if default
Complete #5# Timewalking Dungeons |q 83274/1 |goto Tanaris/0 62.56,50.03 |only if level == 80
step
label "Participate_in_Activities"
Participate in Celebration Activities |q 84616/1 |goto Tanaris/0 62.72,50.59
|tip Look for random activities around the Caverns of Time event grounds and participate in them.
|tip This quest is daily so you may want to prioritize it.
|tip World bosses in Tanaris will give you participation credit.
|tip Timewalking dungeons will grant you around 30% each.
step
talk Bobadormu##223884
turnin An Original Path Through Time##85947 |goto Tanaris/0 62.73,50.29 |only if default
turnin An Original Path Through Time##83274 |goto Tanaris/0 62.73,50.29 |only if level == 80
step
talk Moira Thaurissan##229494
turnin Disturbance Detected: Blackrock Depths##82817 |goto Tanaris/0 62.98,49.65
step
talk Izaik Kadarov##223882
turnin Soldier of Time##57300 |goto Tanaris/0 62.28,51.77 |only if haveq(57300) or completedq(57300)
turnin Timely Gate Crashers##60215 |goto Tanaris/0 62.28,51.77 |only if haveq(60215) or completedq(60215)
turnin The Originals##47254 |goto Tanaris/0 62.28,51.77 |only if haveq(47254) or completedq(47254)
step
talk Yllana##223877
turnin Celebrate Good Fun!##84616 |goto Tanaris/0 62.87,50.66
step
You have completed the available daily quests
|tip More daily quests become available every daily server reset.
|tip Weekly quests become available every Tuesday server reset.
|tip This guide will reset automatically when more become available.
'|complete not completedq(84616,43461,43323) |next "Accept_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\The War Within (70-80)\\20th Anniversary Celebration\\Guest Relations",{
author="support@zygorguides.com",
description="This guide will help you complete the 20th anniversary Guest Relations secret event.",
startlevel=10,
patch='110005',
},[[
step
accept Another Timely Invitation##82672
|tip You will accept this quest automatically.
|tip If this doesn't happen, check your mailbox for a quest item.
step
talk Yllana##223877
turnin Another Timely Invitation##82672 |goto Tanaris/0 62.87,50.66
step
talk Alyx##226683
accept Lost and Busy##84143 |goto Tanaris/0 63.02,50.24
step
talk Maru##226684
turnin Lost and Busy##84143 |goto Tanaris/0 63.22,52.40
accept Tat Big Meanie##84144 |goto Tanaris/0 63.22,52.40
step
click Hear Historic Tales at the Storyteller Stage!
|tip It appears at the corner of the tent.
collect Hear Historic Tales at the Storyteller Stage!##227363 |q 84144 |goto Tanaris/0 62.01,51.53
step
click Red Hair
|tip On the ground next to the crates.
collect Red Hair##227364 |q 84144 |goto Tanaris/0 62.13,51.76
step
talk Ratts##226775
Select _"What did you do with Maru's brother's sleuthing tool?"_ |gossip 123577
Select _"Of course I have proof. But if you tell me now, I'll reduce your sentence."_ |gossip 123579
Speak to Ratts |q 84144/2 |goto Tanaris/0 63.99,51.69 |count 75 hidden
step
click Strange Torch
Find the Strange Torch |q 84144/2 |goto Tanaris/0 63.65,47.92 |count 100 hidden
step
talk Maru##226684
turnin Tat Big Meanie##84144 |goto Tanaris/0 63.22,52.40
accept To da Ruins!##84419 |goto Tanaris/0 63.22,52.40
step
talk Maru##229062
turnin To da Ruins!##84419 |goto Tanaris/0 35.13,78.17
accept Da Stick of Revealing##84393 |goto Tanaris/0 35.13,78.17
step
extraaction Flame Bearer##419127
Use the Torch of Pyrreth |q 84393/1 |goto Tanaris/0 37.26,78.99
step
extraaction Flame Bearer##419127
Approach the Brazier |q 84393/2 |goto Tanaris/0 37.26,78.99
step
extraaction Flame Bearer##419127
Light the Brazier |q 84393/3 |goto Tanaris/0 37.26,78.99
step
talk Maru##229062
|tip He will run to this location.
turnin Da Stick of Revealing##84393 |goto Tanaris/0 37.16,78.93
accept Tweasure Hunt##84363 |goto Tanaris/0 37.16,78.93
step
use the Torch of Pyrreth##208092
kill Tanaris Sandworm##228810
Retrieve the Cool Guts |q 84363/3 |goto Tanaris/0 42.20,71.96 |count 25 hidden
step
use the Torch of Pyrreth##208092
click Jeweled Eye
|tip It appears in the right eye of the statue.
Retrieve the Jeweled Eye |q 84363/3 |goto Tanaris/0 40.82,70.51 |count 50 hidden
step
use the Torch of Pyrreth##208092
click Half-Buried Chest
Retrieve the Golden Chalice |q 84363/3 |goto Tanaris/0 44.99,64.56 |count 75 hidden
step
use the Torch of Pyrreth##208092
kill Ancient Statue##228791
Retrieve the Fragment of an Ancient Statue |q 84363/3 |goto Tanaris/0 52.29,45.35 |count 100 hidden
step
talk Maru##226684
turnin Tweasure Hunt##84363 |goto Tanaris/0 63.22,52.40
step
talk Benatauk##226766
accept Thoughtful Pursuits##84521 |goto Tanaris/0 63.25,52.38
step
Retrieve Benatauk's Crystal Ocular Lenses |q 84521/2 |goto Tanaris/0 64.21,50.07 |count 33 hidden
|tip Maru will dig them up.
step
Retrieve Benatauk's Thought Calculating Apparatus |q 84521/2 |goto Tanaris/0 63.52,48.42 |count 66 hidden
|tip Maru will find them.
step
Retrieve Benatauk's Downy Helmet Liner |q 84521/2 |goto Tanaris/0 61.53,49.89 |count 100 hidden
|tip Maru will dig it up.
step
talk Benatauk##226766
turnin Thoughtful Pursuits##84521 |goto Tanaris/0 63.25,52.38
accept A Whiff of Help##84868 |goto Tanaris/0 63.25,52.38
step
talk Benatauk##226766
Select _"Let me browse your goods."_ |gossip 124412
buy Spiritual Incense##229351 |q 84868/1 |goto Tanaris/0 63.25,52.38
step
use the Spiritual Incense##229351
Use the Spiritual Incense |q 84868/2 |goto Tanaris/0 63.25,52.38
step
talk Maru##230711
Select _"So you can give me hints from here?"_ |gossip 124413
Speak with Maru's Spirit |q 84868/3 |goto Tanaris/0 63.25,52.30
step
talk Benatauk##226766
turnin A Whiff of Help##84868 |goto Tanaris/0 63.25,52.38
step
talk Alyx##226683
accept The Great Detective##84236 |goto Tanaris/0 63.02,50.24
step
talk Athelton Jones##226796
turnin The Great Detective##84236 |goto Tanaris/0 63.94,51.70
accept The "Great" Detective##84237 |goto Tanaris/0 63.94,51.70
step
talk Ellanoir##226805
Select _"Do you know Herrkrop?"_ |gossip 123607
Select _"Where did you last see Herrkrop?"_ |gossip 123608
Question Ellanoir |q 84237/2 |goto Tanaris/0 63.81,51.02 |count 12 hidden
step
talk Duryllin##226804
Select _"What were you doing on the Broken Isles?"_ |gossip 123615
Question Duryllin |q 84237/2 |goto Tanaris/0 63.82,51.08 |count 24 hidden
step
talk Juddson Rakes##226803
Select _"Surely a demon hunter of your skill has a moment to talk."_ |gossip 123611
Select _"Where did you last see Herrkrop?"_ |gossip 123610
Question Juddson |q 84237/2 |goto Tanaris/0 63.79,51.05 |count 36 hidden
step
talk Ellanoir##226805
Select _"What business was Herrkrop doing?"_ |gossip 123609
Question Ellanoir Again |q 84237/2 |goto Tanaris/0 63.81,51.02 |count 48 hidden
step
use the Torch of Pyrreth##208092
|tip You must have this active.
talk Scrapes##226812
Investigate the Corpse |q 84237/2 |goto Tanaris/0 66.23,40.64 |count 60 hidden
step
talk Scrapes##226812
Select _"Did you witness anything suspicious recently?"_ |gossip 123675
Question Scrapes |q 84237/2 |goto Tanaris/0 66.21,40.69 |count 72 hidden
step
talk Nat Pagle##228477
Select _"Did you witness anything suspicious recently?"_ |gossip 123668
Question Nat Pagle |q 84237/2 |goto Tanaris/0 65.89,40.39 |count 84 hidden
step
talk Julia Henning##226814
|tip She walks around this area.
Select _"Did you witness anything suspicious recently?"_ |gossip 123672
Question Julia |q 84237/2 |goto Tanaris/0 65.79,41.09 |count 96 hidden
step
talk Athelton Jones##226796
Select _"I think I know who did it."_ |gossip 123678
Select _"It was Scrapes."_ |gossip 123684
Accuse Someone of Murder |q 84237/2 |goto Tanaris/0 66.32,40.65
step
talk Alyx##226683
turnin The "Great" Detective##84237 |goto Tanaris/0 63.02,50.24
step
talk Alyx##226683
accept Tracking Quest##84278 |goto Tanaris/0 63.02,50.24
step
click Pre-Calibrated Goblin Transport Vessel
Travel to Northrend |complete zone("Northrend") |goto Tanaris/0 68.04,40.83 |q 84278
step
Find Rexxar in the Borean Tundra |q 84278/2 |goto Borean Tundra/0 77.30,46.16
step
talk Rexxar##226952
turnin Tracking Quest##84278 |goto Borean Tundra/0 77.30,46.16
accept The Trail's Gone Cold##84296 |goto Borean Tundra/0 77.30,46.16
step
use the Torch of Pyrreth##208092
|tip You must have this active.
click Torn Note
|tip Inside the hut.
Retrieve the Torn Diary, Page 4 |q 84296/2 |goto Borean Tundra/0 85.92,33.96 |count 20 hidden
step
click Mounted Spyglass
|tip On top of The Glimmering Pillar.
Investigate the Spyglass |q 84296/2 |goto Sholazar Basin/0 49.71,35.98 |count 40 hidden
step
use the Spirit's Whistle##227664
|tip You must have Rexxar near you to see Scrapes.
talk Scrapes##228634
|tip Inside the upper part of Balargarde Fortress.
Investigate Scraps |q 84296/2 |goto Icecrown/0 16.02,58.84 |count 80 hidden
step
use the Spirit's Whistle##227664
|tip You must have Rexxar near you to see Scrapes.
talk Rexxar##228550
|tip He will appear and walk up to you.
Select _"I think I know what happened."_ |gossip 123717
Select _"Scrapes was killed by a shapeshifter."_ |gossip 123714
Solve the Mystery |q 84296/2 |goto Icecrown/0 16.22,58.73
step
talk Alyx##226683
turnin The Trail's Gone Cold##84296 |goto Tanaris/0 63.02,50.24
step
talk Alyx##226683
accept Warn the Detective##84334 |goto Tanaris/0 63.02,50.24
step
talk Athelton Jones##228661
turnin Warn the Detective##84334 |goto Tanaris/0 60.92,50.66
accept Spot the Difference##84336 |goto Tanaris/0 60.92,50.66
step
talk Athelton Jones##228661
Select _"You're the shapeshifter!"_ |gossip 123741
Identify the Shapeshifter |q 84336/3 |goto Tanaris/0 60.92,50.66
step
kill Y'lliya Xennin##228663 |q 84336/4 |goto Tanaris/0 60.00,62.53
step
talk Alyx##226683
turnin Spot the Difference##84336 |goto Tanaris/0 63.02,50.24
step
talk Alyx##232404
accept Torn Dreams##83832 |goto Tanaris/0 63.02,50.24
step
talk Raenie Fizzlebog##231433
turnin Torn Dreams##83832 |goto Tanaris/0 63.06,52.01
accept Restoring A Grand Tale##83825 |goto Tanaris/0 63.06,52.01
step
talk Cravitz Lorent##227816
|tip Under the back of the dance floor.
buy Green Hills of Stranglethorn##226242 |q 83825/2 |goto Tanaris/0 63.61,48.77
|tip This costs 100 gold.
step
talk Raenie Fizzlebog##231433
turnin Restoring A Grand Tale##83825 |goto Tanaris/0 63.06,52.01
step
talk Alyx##232404
accept Toy Trouble##84563 |goto Tanaris/0 63.02,50.24 |only if Alliance
accept Toy Trouble##85024 |goto Tanaris/0 63.02,50.24 |only if Horde
step
talk Maru##226684
turnin Toy Trouble##84563 |goto Tanaris/0 63.22,52.40 |only if Alliance
turnin Toy Trouble##85024 |goto Tanaris/0 63.22,52.40 |only if Horde
accept Operation Toy Rescue##84588 |goto Tanaris/0 63.22,52.40 |only if Alliance
accept Operation Toy Rescue##85025 |goto Tanaris/0 63.22,52.40 |only if Horde
step
click Mound of Dirt
Find Yennu's Toy Ball |q 84588/2 |goto Ohn'ahran Plains/0 61.96,37.50 |count 25 hidden |only if Alliance
Find Yennu's Toy Ball |q 85025/2 |goto Ohn'ahran Plains/0 61.96,37.50 |count 25 hidden |only if Horde
step
talk Yennu##229847
Select _"I found your ball."_ |gossip 124117 |only if Alliance
Select _"I found your ball."_ |gossip 124577 |only if Horde
Return Yennu's Toy |q 84588/2 |goto The Azure Span/0 13.43,48.92 |count 50 hidden |only if Alliance
Return Yennu's Toy |q 85025/2 |goto The Azure Span/0 13.43,48.92 |count 50 hidden |only if Horde
step
click Ball of Yarn
Find Kenshi's Ball of Yarn |q 84588/2 |goto Boralus/0 42.09,75.09 |count 75 hidden
|only if Alliance
step
talk Kenshi##142044
Select _"<Give the ball of yarn to Kenshi.>"_ |gossip 124358
|tip It walks around inside the building.
Return Kenshi's Ball of Yarn |q 84588/2 |goto Boralus/0 53.91,72.94 |count 100 hidden
|only if Alliance
step
click Plush Toy
|tip Up in the tree branch.
Find Nuts' Plush Toy |q 85025/2 |goto Dazar'alor/0 56.42,21.22 |count 75 hidden
|only if Horde
step
talk Nuts##54227
|tip Inside the building.
Select _"<Give the plush toy to Nuts.>"_ |gossip 124582
Return Nuts' Plush Toy |q 85025/2 |goto Dazar'alor/0 56.23,31.68 |count 100 hidden
|only if Horde
step
talk Maru##226684
turnin Operation Toy Rescue##84588 |goto Tanaris/0 63.22,52.40 |only if Alliance
turnin Operation Toy Rescue##85025 |goto Tanaris/0 63.22,52.40 |only if Horde
step
talk Alyx##232405
accept The Final Toy##84755 |goto Tanaris/0 63.02,50.24 |only if Alliance
accept The Final Toy##85042 |goto Tanaris/0 63.02,50.24 |only if Horde
step
talk Maru##226684
turnin The Final Toy##84755 |goto Tanaris/0 63.22,52.41 |only if Alliance
turnin The Final Toy##85042 |goto Tanaris/0 63.22,52.41 |only if Horde
accept The Toy Thief##84756 |goto Tanaris/0 63.22,52.41 |only if Alliance
accept The Toy Thief##85043 |goto Tanaris/0 63.22,52.41 |only if Horde
step
talk Maru##226684
Select _"I think the culprit is a dog."_ |gossip 124362 |only if Alliance
Select _"I think the culprit is a dog."_ |gossip 124589 |only if Horde
Talk to Maru |q 84756/2 |goto Tanaris/0 63.22,52.41 |count 25 hidden |only if Alliance
Talk to Maru |q 85043/2 |goto Tanaris/0 63.22,52.41 |count 25 hidden |only if Horde
step
click Chew Toy
|tip High up in Ohn'ahra's Roost.
Retrieve the Chew Toy |q 84756/2 |goto Ohn'ahran Plains/0 57.85,31.66 |count 50 hidden |only if Alliance
Retrieve the Chew Toy |q 85043/2 |goto Ohn'ahran Plains/0 57.85,31.66 |count 50 hidden |only if Horde
step
click Toy Box
Retrieve the Toy Box |q 84756/2 |goto Ohn'ahran Plains/0 39.61,58.31 |count 75 hidden |only if Alliance
Retrieve the Toy Box |q 85043/2 |goto Ohn'ahran Plains/0 39.61,58.31 |count 75 hidden |only if Horde
step
Enter the cave |goto Ohn'ahran Plains/0 38.42,55.34 < 5 |walk
click Maru's Toy
|tip Inside the cave next to the huge toy pile.
Retrieve the Maru's Toy |q 84756/2 |goto Ohn'ahran Plains/0 38.78,55.98 |count 100 hidden |only if Alliance
Retrieve the Maru's Toy |q 85043/2 |goto Ohn'ahran Plains/0 38.78,55.98 |count 100 hidden |only if Horde
step
talk Maru##226684
turnin The Toy Thief##84756 |goto Tanaris/0 63.22,52.41 |only if Alliance
turnin The Toy Thief##85043 |goto Tanaris/0 63.22,52.41 |only if Horde
step
talk Alyx##232405
accept A Hozen On My Back##84583 |goto Tanaris/0 63.02,50.24
step
talk Riko##229749
turnin A Hozen On My Back##84583 |goto Tanaris/0 61.89,50.48
accept The Case of the Fur-Getting Wikket##84595 |goto Tanaris/0 61.89,50.48
step
talk Riko##229749
Select _"What kind of pet do you want?"_ |gossip 124050
Speak to Riko |q 84595/1 |goto Tanaris/0 61.89,50.47 |count 20 hidden
step
talk Shademaster Kiryn##229774
Select _"What kind of pet do you want?"_ |gossip 124051
Speak to Shademaster Kiryn |q 84595/1 |goto Tanaris/0 61.86,50.41 |count 40 hidden
step
talk Sully "The Pickle" McLeary##229775
Select _"I'm looking for a pet."_ |gossip 124068
Select _"Where are they now?"_ |gossip 124067
Speak to Sully |q 84595/1 |goto Tanaris/0 63.05,49.42 |count 60 hidden
step
use the Torch of Pyrreth##208092
|tip Wait for it to reveal Gizmo.
|tip Gizmo will begin running away, so click him fast to save yourself some trouble.
Reveal Gizmo |q 84595/1 |goto The Jade Forest/0 43.35,68.85 |count 80 hidden
step
clicknpc Gizmo##229776
|tip You need to click it when it stops with enough time to finish the cast.
Solve the Mystery |q 84595/1 |goto The Jade Forest/0 43.60,68.16
step
talk Riko##229749
turnin The Case of the Fur-Getting Wikket##84595 |goto Tanaris/0 61.89,50.48
step
talk Alyx##232406
accept Nola's Last Wish##84435 |goto Tanaris/0 63.02,50.24
step
talk Lashk##229102
Select _"Alyx said you seemed upset."_ |gossip 123849
Speak with Lashk |q 84435/1 |goto Tanaris/0 63.90,52.52
step
click Nola's Last Wish
|tip It's one of the scrolls in the box.
collect Nola's Last Wish##228223 |q 84435/2 |goto Vol'dun/0 64.02,26.07
step
use Nola's Last Wish##228223
talk Scrollsage Nola##229103
|tip Under the water.
|tip Nola will swim up.
Select _"Lashk sent me to see your final wishes met."_ |gossip 123850
Solve the Mystery |q 84435/4 |goto Zuldazar/0 24.44,44.44
step
talk Lashk##229102
turnin Nola's Last Wish##84435 |goto Tanaris/0 63.90,52.53
step
talk Alyx##232406
accept A Legacy of Destruction##84932 |goto Tanaris/0 63.02,50.24
step
talk Voidfire##231029
turnin A Legacy of Destruction##84932 |goto Tanaris/0 61.71,49.81
accept From Ashes to Wisdom##84933 |goto Tanaris/0 61.71,49.81
step
use the Whelpling Whistle##231292
talk Voidfire##232499
Select _"This is what happens with fire and volcanic destruction. It leaves the area dark and barren."_ |gossip 124935
Learn the Lesson |q 84933/2 |goto Burning Steppes/0 61.23,29.59 |count 25 hidden
step
use Whelpling Whistle##231292
talk Voidfire##232499
Select _"This scar will not heal and will always serve as a reminder of Deathwing's wrath and the devastation he caused on the land and its inhabitants."_ |gossip 124936
Learn the Lesson |q 84933/2 |goto Badlands/0 31.08,48.73 |count 50 hidden
step
use the Whelpling Whistle##231292
talk Voidfire##232499
Select _"Even if you have followers, they won't always do what you want. Other cults are also bound to form that will follow their own rules."_ |gossip 124937
Learn the Lesson |q 84933/2 |goto Twilight Highlands/0 38.43,49.18 |count 75 hidden
step
talk Naraat the Earthspeaker##45226
accept Eye of the Storm##28826 |goto Stormwind City/0 74.54,19.02
|tip You must complete a few quests to unlock easy access to Vashj'ir.
|only if Alliance
step
clicknpc Waters of Farseeing##50088
Peer Into the Waters of Farseeing |q 28826/1 |goto Stormwind City/0 74.38,19.53
|only if Alliance
step
talk Naraat the Earthspeaker##45226
turnin Eye of the Storm##28826 |goto Stormwind City/0 74.54,19.02
|only if Alliance
step
talk Recruiter Burns##36799
turnin Hero's Call Vashj'ir##27724 |goto Stormwind City/0 27.37,24.15 |only if haveq(27724) or completedq(27724)
accept Call of Duty##14482 |goto Stormwind City/0 27.37,24.15
|only if Alliance
step
Ride the Mercenary Ship to Vashj'ir |q 14482/1 |goto Stormwind City/0 18.19,25.48
|only if Alliance
step
Watch the dialogue
Wait to Be Rescued |condition subzone("The Briny Cutter") |q 14482
|only if Alliance
step
talk Erunak Stonespeaker##36915
|tip Inside the ship.
turnin Call of Duty##14482 |goto Kelp'thar Forest/0 45.24,23.36
accept Sea Legs##24432 |goto Kelp'thar Forest/0 45.24,23.36
|only if Alliance
stickystart "Collect_Saltwater_Starfish"
step
Swim through the doorway |goto Kelp'thar Forest/0 44.82,23.34 < 7 |walk
Leave the ship |goto Kelp'thar Forest/0 44.73,24.07 < 7 |walk
click Conch Shell##202560
collect Conch Shell##52504 |q 24432/2 |goto Kelp'thar Forest/0 45.14,26.80
|only if Alliance
step
label "Collect_Saltwater_Starfish"
click Saltwater Stars##205989+
|tip They look like yellow starfish on the ground around this area.
collect 3 Saltwater Starfish##54828 |q 24432/1 |goto Kelp'thar Forest/0 44.29,27.17
|only if Alliance
step
Enter the ship |goto Kelp'thar Forest/0 44.91,24.16 < 7 |walk
Swim through the doorway |goto Kelp'thar Forest/0 44.84,23.44 < 7 |walk
talk Erunak Stonespeaker##36915
|tip Inside the ship.
turnin Sea Legs##24432 |goto Kelp'thar Forest/0 45.24,23.35
|only if Alliance
step
Enter the building |goto Durotar/0 55.82,12.03 < 7 |walk
talk Commander Thorak##41621
|tip Inside the building.
turnin Warchief's Command: Vashj'ir!##27718 |goto Durotar/0 55.82,12.33 |only if haveq(27718) or completedq(27718)
accept Call of Duty##25924 |goto Durotar/0 55.82,12.33
|tip You must complete this quest to unlock easy access to Vashj'ir.
|only if Horde
step
Watch the dialogue |goto Durotar/0 58.12,10.37
Start Riding the Mercenary Ship to Vashj'ir |goto Durotar/0 58.24,12.34 < 20 |noway |q 25924
|tip It may take a minute or two for the ship to show up.
|only if Horde
step
Watch the dialogue
Ride the Mercenary Ship to Vashj'ir |q 25924/1 |goto Kelp'thar Forest/0 43.16,32.87 |notravel
|only if Horde
step
talk Erunak Stonespeaker##41618
|tip Inside the ship.
turnin Call of Duty##25924 |goto Kelp'thar Forest/0 38.74,31.71
accept Sea Legs##25929 |goto Kelp'thar Forest/0 38.74,31.71
|only if Horde
stickystart "Collect_Conch_Shell"
step
click Saltwater Star##205989+
|tip They look like yellow starfish on the sea floor around this area.
collect 3 Saltwater Starfish##54828 |q 25929/1 |goto Kelp'thar Forest/0 41.63,30.88
|only if Horde
step
label "Collect_Conch_Shell"
click Conch Shell##202560
|tip It looks like a large shell on the sea floor around this area.
collect Conch Shell##52504 |q 25929/2 |goto Kelp'thar Forest/0 42.18,31.40
|only if Horde
step
talk Erunak Stonespeaker##41618
|tip Inside the ship.
turnin Sea Legs##25929 |goto Kelp'thar Forest/0 38.74,31.71
|only if Horde
step
use the Whelpling Whistle##231292
talk Voidfire##232499
|tip At the bottom of the water.
Select _"This was once a thriving elven city. Many historical ancient structures have now been lost to the depths."_ |gossip 124938
Learn the Lesson |q 84933/2 |goto Shimmering Expanse/0 39.06,67.50 |count 100 hidden
step
_Next to you:_
talk Voidfire##232499
turnin From Ashes to Wisdom##84933 |goto Shimmering Expanse/0 39.06,67.50
step
talk Alyx##232406
accept A Pirate Predicament##85047 |goto Tanaris/0 63.02,50.24
step
talk Bonenose##231413
turnin A Pirate Predicament##85047 |goto Tanaris/0 60.91,44.74
accept Pirate Foods and Superstitions##85060 |goto Tanaris/0 60.91,44.74
step
talk Kelsey Yance##2664
|tip Inside the building.
|tip You may have to wait if someone killed the NPC.
Select _"I'm trying to find where Cooktholomew used to bunk. Can you help?"_ |gossip 124862
Search Booty Bay for Clues About Cooktholomew |q 85060/2 |goto The Cape of Stranglethorn/0 42.80,68.96
step
click Property of Cooktholomew
|tip The barrel down in the lowest building.
Search the Bunk Area |q 85060/3 |goto The Cape of Stranglethorn/0 42.87,72.79
step
talk Scowling Rosa##105637
|tip She walks around the Booty Bay boardwalk.
Select _"I think I found Cooktholomew's notes. Can you make sense of them?"_ |gossip 124886
Find Someone to Make Sense of the Notes |q 85060/4 |goto The Cape of Stranglethorn/0 42.12,72.61
step
talk Scowling Rosa##105637
turnin Pirate Foods and Superstitions##85060 |goto The Cape of Stranglethorn/0 42.12,72.61
step
talk Alyx##232407
accept A Pirate Missive##85208 |goto Tanaris/0 63.02,50.24
step
talk Scowling Rosa##105637
|tip She walks around the Booty Bay boardwalk.
turnin A Pirate Missive##85208 |goto The Cape of Stranglethorn/0 42.12,72.61
accept Pirate Gastronomy##85195 |goto The Cape of Stranglethorn/0 42.12,72.61
step
|macro /cast Fishing
collect 5 Bloodfin Catfish##33823 |q 85195/6 |goto Deadwind Pass/0 51.03,73.09
|tip You can fish these in Deadwind Pass with a Classic Fishing skill of 125+.
|tip You can also purchase them from the auction house.
step
collect 2 Swiftthistle##2452 |q 85195/2
|tip This can be gathered from Briarthorn and Mageroyal with Herbalism or purchased from the auction house.
|loadguide "Professions\\Herbalism\\Farming Guides\\Briarthorn"
step
Kill Paleblade enemies around this area |kill Paleblade Slithertongue##63044, Paleblade Flesheater##59378
|tip Sprite or Saurok mobs drop Witchberries.
collect 2 Witchberries##74846 |q 85195/3 |goto Vale of Eternal Blossoms/0 38.26,49.48
|tip These can be planted at your farm if you have The Tillers unlocked.
|tip You can also purchase these from the auction house.
step
kill Eldreth Darter##14398+
|tip These can be found inside the Dire Maul: Capital Gardens dungeon on the upper floor above Magister Kalendris.
|tip You can sometimes find them on the lower floor above Tendris Warpood.
collect Small Flame Sac##4402 |q 85195/4 |goto Dire Maul/2 19.54,52.98
|tip They have a low drop rate.
|tip You can reset the dungeon 5 times per hour.
step
collect 2 Aromatic Fish Oil##160711 |q 85195/5
|tip Fish in BFA zones with the Kul Tiras Fishing skill and use the fish you catch to convert them to oil. |only if Alliance
|tip Fish in BFA zones with the Zandalari Fishing skill and use the fish you catch to convert them to oil. |only if Horde
|tip You can also purchase them from the auction house.
step
|macro /cast Fishing
collect 4 Deviate Fish##6522 |q 85195/7 |goto Northern Barrens/0 39.61,70.85
|tip You can fish these in Northern Barrens with a Classic Fishing skill of 30+.
|tip You will see them a lot more frequently at the 80+ skill range.
|tip You can also purchase them from the auction house.
step
|macro /cast Fishing
collect 2 Nettlefish##41813 |q 85195/8 |goto Sholazar Basin/0 49.59,62.16
|tip You can fish these in waters all over Sholazar Basin.
|tip The best place to fish these is from Nettlefish Schools in Wintergrasp, but that is a PvP zone.
|tip You can also purchase them from the auction house.
step
|macro /cast Fishing
collect 3 Furious Crawdad##27439 |q 85195/9 |goto Terokkar Forest/0 45.95,39.60
|tip You can fish these in waters all over Terokkar Forest.
|tip You need to fish in Mixed Schools to catch them.
|tip You can also purchase them from the auction house.
You can find more schools around:
[Terokkar Forest/0 60.55,60.13]
[Terokkar Forest/0 65.39,77.74]
step
talk Bonenose##231413
Select _"I have all the ingredients for your boonful banquet."_ |gossip 124889
Select _"What? There's another ingredient I need to find?"_ |gossip 124888
Select _"Okay, well, I'm off to find whatever that is."_ |gossip 124887
Return to Bonenose |q 85195/10 |goto Tanaris/0 60.91,44.74
step
Locate the "Cold Storage" |q 85195/12 |goto Hrothgar's Landing/0 55.53,11.28
step
click Ice Block+
Find the Secret Ingredient |complete readyq(85195) or completedq(85195) |goto Hrothgar's Landing/0 55.53,11.28
step
talk Bonenose##231413
turnin Pirate Gastronomy##85195 |goto Tanaris/0 60.91,44.74
step
talk Alyx##232407
accept A Bird's Tale##84923 |goto Tanaris/0 63.02,50.24
step
talk Reshad##228273
turnin A Bird's Tale##84923 |goto Tanaris/0 64.22,51.30
accept A Bird's Tail##84924 |goto Tanaris/0 64.22,51.30
step
click Burnt Feather
|tip High up on the platform
Find the Clue |q 84924/2 |goto Spires of Arak/0 45.75,53.64 |count 25 hidden
step
click Plucked Feather
Find the Clue |q 84924/2 |goto Talador/0 29.54,29.54 |count 50 hidden
step
click Frozen Feather
|tip High up on the pillar.
Find the Clue |q 84924/2 |goto Nagrand D/0 83.83,19.39 |count 75 hidden
step
click Normal Feather
Find the Clue |q 84924/2 |goto Frostfire Ridge/0 42.06,67.50
step
talk Reshad##228273
turnin A Bird's Tail##84924 |goto Tanaris/0 64.22,51.30
step
talk Alyx##232408
accept Pet Pursuit##84506 |goto Tanaris/0 63.02,50.24
accept Lost and... Found?##85477 |goto Tanaris/0 63.02,50.24
step
click Lost & Found
Collect Items from the Lost & Found Chest |q 85477/1 |goto Tanaris/0 63.00,50.23
step
talk Oglethorpe Obnoticus##228247
|tip He patrols a small area around the stage.
Select _"You wouldn't have lost something while you've been here, would you?"_ |gossip 125033
Select _"Your tiny mechanical mouse was found."_ |gossip 125037
Return the Tiny Mechanical Mouse |q 85477/4 |goto Tanaris/0 62.87,49.35
step
talk Marin Noggenfogger##228248
|tip He patrols around the stairs and stage.
Select _"You wouldn't have lost something while you've been here, would you?"_ |gossip 125026
Select _"Your potion bottle was found."_ |gossip 125029
Potion Bottle returned |q 85477/6 |goto Tanaris/0 62.54,49.64
step
talk Jepetto Joybuzz##228276
turnin Pet Pursuit##84506 |goto Tanaris/0 62.18,49.68
accept Battle Pet Bingo##84469 |goto Tanaris/0 62.18,49.68
step
talk John J. Keeshan##228251
Select _"You wouldn't have lost something while you've been here, would you?"_ |gossip 125025
Select _"Your jade amulet was found."_ |gossip 125021
Return the Jade Amulet |q 85477/7 |goto Tanaris/0 63.38,51.80
step
talk Mankrik##228249
Select _"You wouldn't have lost something while you've been here, would you?"_ |gossip 125041
Select _"I found your crude ivory locket."_ |gossip 125046
Return the Crude Ivory Locket |q 85477/5 |goto Tanaris/0 63.48,52.17
step
talk Farmer Yoon##228262
Select _"You wouldn't have lost something while you've been here, would you?"_ |gossip 125008
Select _"Your well-worn journal was found."_ |gossip 125009
Return the Well-Worn Journal |q 85477/3 |goto Tanaris/0 63.10,52.02
step
click Jumping Spider
Find the Jumping Spider |q 84469/2 |goto The Jade Forest/0 64.05,80.77 |count 50 hidden
step
click Summit Kid
|tip At the top of the mountain.
Find the Summit Kid |q 84469/2 |goto Kun-Lai Summit/0 44.42,52.51
step
talk Alyx##232408
turnin Lost and... Found?##85477 |goto Tanaris/0 63.02,50.24
step
talk Jepetto Joybuzz##228276
turnin Battle Pet Bingo##84469 |goto Tanaris/0 62.17,49.67
step
talk Alyx##232408
accept Not Ready on Set##84985 |goto Tanaris/0 63.02,50.24
step
talk Dapperdew##171743
turnin Not Ready on Set##84985 |goto Ardenweald/0 41.50,44.83
accept The Show Must Go On##84912 |goto Ardenweald/0 41.50,44.83
step
click Mask of the Trickster
Find the Mask of the Trickster |q 84912/2 |goto Ardenweald/0 41.21,43.76 |count 25 hidden
step
click Play Script
Find the Play Script |q 84912/2 |goto Ardenweald/0 41.27,42.79 |count 50 hidden
step
click Prop Sword
|tip In the grass under the overhang.
Find the Prop Sword |q 84912/2 |goto Ardenweald/0 42.25,46.75 |count 75 hidden
step
click Conductors Baton
Find the Conductors Baton |q 84912/2 |goto Ardenweald/0 43.29,46.40
step
talk Dapperdew##171743
turnin The Show Must Go On##84912 |goto Ardenweald/0 41.50,44.83
step
talk Alyx##232410
accept Secret in the Sands##85475 |goto Tanaris/0 63.02,50.24
step
talk Maru##226684
turnin Secret in the Sands##85475 |goto Tanaris/0 63.22,52.40
accept Buried Tweasure##85476 |goto Tanaris/0 63.22,52.40
step
Enter the building |goto Tanaris/0 37.73,80.52 < 15 |walk
click Ancient Treasure Note
|tip Inside the ruins.
Find the Ancient Treasure Note |q 85476/2 |goto Tanaris/0 37.60,84.12 |count 25 hidden
step
click Ancient Treasure Note
|tip Inside the ruins.
Find the Ancient Treasure Note |q 85476/2 |goto Tanaris/0 47.51,56.49 |count 50 hidden
step
use the Torch of Pyrreth##208092
|tip You need the torch active to see this note.
click Ancient Treasure Note
|tip Inside the ruins.
Find the Ancient Treasure Note |q 85476/2 |goto Tanaris/0 38.84,22.11 |count 75 hidden
step
talk Yennu##232863
|tip Inside the building.
Select _"Do you know about this ancient treasure?"_ |gossip 125014
Find the Ancient Treasure Note |q 85476/2 |goto Tanaris/0 52.69,26.86
step
talk Maru##226684
turnin Buried Tweasure##85476 |goto Tanaris/0 63.22,52.40
step
talk Alyx##232410
accept Festive Reflections##85502 |goto Tanaris/0 63.02,50.24
step
talk Athelton Jones##226796
turnin Festive Reflections##85502 |goto Tanaris/0 61.00,50.72
accept A Surprising Investigation##85503 |goto Tanaris/0 61.00,50.72
step
talk Maru##233006
Select _"You're in the wrong timeline. Go find Chromie."_ |gossip 125109
Identify the Imposter |q 85503/2 |goto Tanaris/0 61.90,49.90 |count 1
step
talk Big Kinook##233000
Select _"You're in the wrong timeline. Go find Chromie."_ |gossip 125107
Identify the Imposter |q 85503/2 |goto Tanaris/0 63.01,49.85 |count 2
step
talk Reshad##233007
|tip On top of the stage.
Select _"You're in the wrong timeline. Go find Chromie."_ |gossip 125110
Identify the Imposter |q 85503/2 |goto Tanaris/0 63.04,49.23 |count 3
step
talk Jepetto Joybuzz##233008
Select _"You're in the wrong timeline. Go find Chromie."_ |gossip 125111
Identify the Imposter |q 85503/2 |goto Tanaris/0 63.80,51.76 |count 4
step
talk Lorewalker Cho##233002
Select _"You're in the wrong timeline. Go find Chromie."_ |gossip 125108
Identify the Imposter |q 85503/2 |goto Tanaris/0 61.65,51.05 |count 5
step
talk Athelton Jones##226796
Select _"I found all of the imposters."_ |gossip 125114
Return to Detective Jones |q 85503/3 |goto Tanaris/0 60.99,50.72
step
clicknpc Shademaster Kiryn##229774
use the Letters##231905
|tip Use them on Shademaster Kiryn.
Distrubute the Letters |q 85503/4 |goto Tanaris/0 61.86,50.41 |count 1
step
clicknpc Petra##226251
use the Letters##231905
|tip Use them on Petra.
Distrubute the Letters |q 85503/4 |goto Tanaris/0 61.99,50.09 |count 2
step
clicknpc Jepetto Joybuzz##228276
use the Letters##231905
|tip Use them on Jepetto Joybuzz.
Distrubute the Letters |q 85503/4 |goto Tanaris/0 62.18,49.68 |count 3
step
clicknpc Vanni Thorngage##226290
use the Letters##231905
|tip Use them on Vanni Thorngage.
Distrubute the Letters |q 85503/4 |goto Tanaris/0 62.83,49.34 |count 4
step
clicknpc Koltira Deathweaver##228283
use the Letters##231905
|tip Use them on Koltira Deathweaver.
Distrubute the Letters |q 85503/4 |goto Tanaris/0 62.98,49.16 |count 5
step
clicknpc Lord Thassarian##228284
use the Letters##231905
|tip Use them on Lord Thassarian.
Distrubute the Letters |q 85503/4 |goto Tanaris/0 63.01,49.20 |count 6
step
clicknpc Moira Thaurissan##229494
use the Letters##231905
|tip Use them on Moira Thaurissan.
Distrubute the Letters |q 85503/4 |goto Tanaris/0 62.98,49.65 |count 7
step
clicknpc Lilian Voss##228245
use the Letters##231905
|tip Use them on Lilian Voss.
Distrubute the Letters |q 85503/4 |goto Tanaris/0 63.11,49.44 |count 8
step
clicknpc Arcanist Valtrois##232496
use the Letters##231905
|tip Use them on Arcanist Valtrois.
Distrubute the Letters |q 85503/4 |goto Tanaris/0 63.33,49.66 |count 9
step
clicknpc Stellagosa##228260
use the Letters##231905
|tip Use them on Stellagosa.
Distrubute the Letters |q 85503/4 |goto Tanaris/0 63.36,49.67
step
talk Athelton Jones##226796
Select _"I've distributed the letters."_ |gossip 125115
Return to Detective Jones |q 85503/5 |goto Tanaris/0 61.00,50.72
step
talk Bonenose##231413
Select _"Detective Jones asked me to check on his food order."_ |gossip 125119
Obtain the "Lucky Feast" |q 85503/6 |goto Tanaris/0 60.91,44.74
step
talk Athelton Jones##233011
Select _"What's going on?"_ |gossip 125120
Find the Northern Beach |q 85503/7 |goto Tanaris/0 65.82,41.76
step
talk Alyx##233012
turnin A Surprising Investigation##85503 |goto Tanaris/0 66.21,40.93
step
click Darkmoon Fortune Card
collect Six of Frost##229219 |goto Tanaris/0 63.00,50.21 |q 84882 |future
step
talk Alphonse Constant##230838
Select _"No problem. What business will you eventually be doing here?"_ |gossip 124449
Select _"Fortune telling, you say? You wouldn't happen to be using a Darkmoon Fortune Deck for that, would you?"_ |gossip 124452
Select _"You know what? I actually found a card earlier! Is this one of the ones you're missing?"_ |gossip 124455
Select _"Not a bother at all! I'm happy to help."_ |gossip 124454
accept Deck Dismay##84882 |goto Tanaris/0 63.87,52.38
step
click Darkmoon Fortune Card
|tip Underneath the tent flap at the corner.
Retrieve the Six of Fire |q 84882/1 |goto Tanaris/0 63.27,52.26 |count 20 hidden
step
click Darkmoon Fortune Card
|tip Behind the ice cream machine.
Retrieve the Eight of Fire |q 84882/1 |goto Tanaris/0 61.90,51.61 |count 30 hidden
step
click Darkmoon Fortune Card
Retrieve the Four of Earth |q 84882/1 |goto Tanaris/0 61.20,50.88 |count 40 hidden
step
click Darkmoon Fortune Card
|tip At the corner of the small building.
Retrieve the Three of Fire |q 84882/1 |goto Tanaris/0 62.15,49.33 |count 50 hidden
step
click Darkmoon Fortune Card
|tip On the dance stage.
Retrieve the Two of Air |q 84882/1 |goto Tanaris/0 63.18,49.35 |count 60 hidden
step
click Darkmoon Fortune Card
|tip Under the dance stage.
Retrieve the Seven of Fire |q 84882/1 |goto Tanaris/0 63.41,48.98 |count 70 hidden
step
click Darkmoon Fortune Card
|tip On the steps.
Retrieve the Three of Frost |q 84882/1 |goto Tanaris/0 63.58,50.99 |count 80 hidden
step
click Darkmoon Fortune Card
|tip Underneath the bench.
Retrieve the Two of Fire |q 84882/1 |goto Tanaris/0 63.97,51.52 |count 90 hidden
step
click Darkmoon Fortune Card
|tip Between the barrels.
Retrieve the Five of Fire |q 84882/1 |goto Tanaris/0 63.77,51.91 |count 100 hidden
step
talk Alphonse Constant##230838
turnin Deck Dismay##84882 |goto Tanaris/0 63.87,52.38
step
talk Nikto##143029
|tip Underwater
buy 1 Clam Digger##225996 |goto Zuldazar/0 54.28,54.50 |q 83790 |future
step
click Gerald
|tip On the rock cliff under the water.
Select _"<Hold out the clam digger carefully so the contents don't float away.>"_ |gossip 123382
Unlock the Zuldazar Dive Bar Secret |q 83790 |goto Zuldazar/0 54.24,54.23 |future
step
click Soggy Celebration Crate
|tip On the rock cliff under the water.
accept Soggy Celebration Crate##83794 |goto Zuldazar/0 54.24,54.21
step
Kill Yourself |complete isdead() or completedq(85574) |goto Desolace/0 54.12,58.05
|tip You need to be dead to see this treasure.
|tip You can fly up in the air and dismount at this location to die, then run back.
step
click Hazy Celebration Crate
accept Hazy Celebration Crate##85574 |goto Desolace/0 54.12,58.05 |zombiewalk
step
Resurrect |complete not isdead
|tip Regain your corpse.
step
Enter the underwater cave |goto Thousand Needles/0 66.08,86.21 < 15 |walk
click Water-Resistant Receipt of Sale
|tip Inside the underwater cave.
collect Water-Resistant Receipt##228768 |goto Thousand Needles/0 64.92,84.40
step
talk Vashti the Wandering Merchant##91079
|tip He patrols up and down the road between the border of Suramar and The Ruined Sanctum.
buy Sandy Celebration Crate##228767 |goto Azsuna/0 65.66,36.36 |q 84624 |future
|tip This will cost 500 gold.
step
Enter the Crypt |goto Deadwind Pass/0 39.84,73.38 < 10 |walk
Go down the tunnel |goto Deadwind Pass/0 33.52,70.72 < 10 |c |walk |q 84470 |future
step
Run down the ramp |goto Deadwind Pass/0 36.30,73.79 < 15 |walk
Swim through |goto Deadwind Pass/0 29.55,81.32
click Dirt-Caked Celebration Crate
|tip Down inside the crypt.
accept Dirt-Caked Celebration Crate##84470 |goto Deadwind Pass/0 22.44,83.74
step
click Battered Celebration Crate
accept Battered Celebration Crate##83931 |goto Howling Fjord/0 29.40,6.36
step
click Waterlogged Celebration Crate
|tip At the bottom of the water inside the upper floor of the building.
|tip Swim inside and up the elevator.
accept Waterlogged Celebration Crate##84426 |goto Tanaris/0 69.18,68.60
step
click Charred Celebration Crate
accept Charred Celebration Crate##84767 |goto Mount Hyjal/0 13.59,33.46
step
click Potion of Truth
|tip At the very top of the mountain.
Drink the Potion of Truth |havebuff Potion of Truth##463368 |goto Ashenvale/0 47.92,38.37 |q 85523 |future
step
click Mildewed Celebration
|tip You have 30 minutes before the potion wears off.
|tip Fly directly to Felwood without using any teleports, items, or portals.
|tip Using these methods will remove your buff and require you to return to Ashenvale.
accept Mildewed Celebration Crate##85523 |goto Feralas/0 60.42,35.40 |notravel
step
Enter the cave |goto Nagrand/0 35.84,67.58 < 15 |walk
click Crystallized Celebration Crate
|tip Inside Oshu'gun.
accept Crystalized Celebration Crate##84773 |goto Nagrand/0 35.28,74.70
step
Appoach the Hidden Cove |complete subzone("Ahn'Qiraj: The Fallen Kingdom") or completedq(84625) |goto Uldum/0 12.45,61.33 |only if hasbuff(317785)
Appoach the Hidden Cove |complete subzone("Ahn'Qiraj: The Fallen Kingdom") or completedq(84625) |goto Uldum New/0 5.64,60.70 |only if not hasbuff(317785)
|tip You will need some sort of dog battle pet to dig up the bones in the next step.
step
Enter the cave |goto Ahn'Qiraj: The Fallen Kingdom/0 42.09,92.95 < 15 |walk
click Mysterious Bones
|tip Summon any kind of dog battle pet and wait for it to dig up the bones here.
|tip Search for "pup" in your pet journal or use a Perky Pug from the Looking for Multitudes achievement.
collect Mysterious Bones##228772 |goto Ahn'Qiraj: The Fallen Kingdom/0 44.57,90.08 |q 84625 |future
step
use the Mysterious Bones##228772
accept Surprisingly Pristine Celebration Crate##84625 |goto Stormheim/0 37.34,47.69
step
click Ghostly Celebration Crate
|tip High up on the balcony area with the red banner on top of Bleak Redoubt.
accept Ghostly Celebration Crate##84909 |goto Maldraxxus/0 50.00,73.80
step
talk Alyx##226683
turnin Soggy Celebration Crate##83794 |goto Tanaris/0 63.02,50.24
turnin Hazy Celebration Crate##85574 |goto Tanaris/0 63.02,50.24
turnin Dirt-Caked Celebration Crate##84470 |goto Tanaris/0 63.02,50.24
turnin Sandy Celebration Crate##84624 |goto Tanaris/0 63.02,50.24
turnin Battered Celebration Crate##83931 |goto Tanaris/0 63.02,50.24
turnin Waterlogged Celebration Crate##84426 |goto Tanaris/0 63.02,50.24
turnin Charred Celebration Crate##84767 |goto Tanaris/0 63.02,50.24
turnin Mildewed Celebration Crate##85523 |goto Tanaris/0 63.02,50.24
turnin Crystalized Celebration Crate##84773 |goto Tanaris/0 63.02,50.24
turnin Surprisingly Pristine Celebration Crate##84625 |goto Tanaris/0 63.02,50.24
turnin Ghostly Celebration Crate##84909 |goto Tanaris/0 63.02,50.24
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\The War Within (70-80)\\20th Anniversary Celebration\\Achievements\\A Cool Twenty Years",{
author="support@zygorguides.com",
startlevel=10,
patch='110005',
achieveid={40976},
},[[
leechsteps "Events Guides\\The War Within (70-80)\\20th Anniversary Celebration\\Achievements\\Codex Editor: Ahn'Qiraj"
leechsteps "Events Guides\\The War Within (70-80)\\20th Anniversary Celebration\\Achievements\\A Gatecrasher"
leechsteps "Events Guides\\The War Within (70-80)\\20th Anniversary Celebration\\Achievements\\An Original"
leechsteps "Events Guides\\The War Within (70-80)\\20th Anniversary Celebration\\Achievements\\Peanut Gallery"
leechsteps "Events Guides\\The War Within (70-80)\\20th Anniversary Celebration\\Achievements\\Balloonist"
leechsteps "Events Guides\\The War Within (70-80)\\20th Anniversary Celebration\\Achievements\\Pet Mischief"
leechsteps "Events Guides\\The War Within (70-80)\\20th Anniversary Celebration\\Achievements\\Fashion Critic"
leechsteps "Events Guides\\The War Within (70-80)\\20th Anniversary Celebration\\Achievements\\I Have That One!"
step
Earn the {o}A Cool Twenty Years{} Achievement |achieve 40976
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\The War Within (70-80)\\20th Anniversary Celebration\\Achievements\\I Have That One!",{
author="support@zygorguides.com",
startlevel=10,
patch='110005',
achieveid={40985},
},[[
step
clicknpc Abigail Cyrildotr##224220
|script local i,j,m,s j=C_MountJournal for i=1,40 do s=select(10,AuraUtil.UnpackAuraData(C_UnitAuras.GetBuffDataByIndex("target",i)))if s then m=j.GetMountFromSpell(s)if m then j.SummonByID(m)break end end end
Match 1 Mount During the Mount Mania Event |achieve 40985 |goto Tanaris/0 63.02,51.59
|tip The event starts 15 minutes before the top of every hour.
|tip Keep the NPC on the stage targeted and use the button on this step each time they summon a new mount.
|tip If you have that mount, you will automatically match it.
|tip Otherwise, keep targeting mounts on the stage and using the button until you have a mount that matches.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\The War Within (70-80)\\20th Anniversary Celebration\\Achievements\\Fashion Critic",{
author="support@zygorguides.com",
startlevel=10,
patch='110005',
achieveid={40987},
},[[
step
Cast 1 Vote at the Fashion Frenzy |achieve 40987 |goto Tanaris/0 63.72,48.99
|tip Wait for the Fasion Frenzy event to begin at 10 minutes after each hour.
|tip At 15 minutes past the hour, choose your transmog according to the theme you're given.
|tip After 2 minutes, run to this table to pick up a ribbon. Vote for anyone nearby.
|tip At 20 minutes past the hour, the event ends.
|tip At least one other player needs to be at the event to complete this.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\The War Within (70-80)\\20th Anniversary Celebration\\Achievements\\Pet Mischief",{
author="support@zygorguides.com",
startlevel=10,
patch='110005',
achieveid={40989},
},[[
step
click Pet Box
collect Pet Mirror##224157 |goto Tanaris/0 62.03,50.09 |or
'|achieve 40989 |or
step
use the Pet Mirror##224157
|tip Summon any battle pet and use the Pet Mirror on it.
Use a Pet Disguiser and Explore the Area |achieve 40989
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\The War Within (70-80)\\20th Anniversary Celebration\\Achievements\\Balloonist",{
author="support@zygorguides.com",
startlevel=10,
patch='110005',
achieveid={40990},
},[[
step
Click a balloon
|tip The Balloonist sends out ballons randomly in random directions.
|tip Click one to ride it.
Ride One of the Celebration Balloons |complete invehicle() or achieved(40990) |goto Tanaris/0 64.21,50.08
step
Ride One of the Celebration Balloons |achieve 40990
|tip Ride the balloon until you gain the achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\The War Within (70-80)\\20th Anniversary Celebration\\Achievements\\Peanut Gallery",{
author="support@zygorguides.com",
startlevel=10,
patch='110005',
achieveid={40992},
},[[
step
React to Lorewalker Cho's Stories #50# Times |achieve 40992 |goto Tanaris/0 63.98,51.71
|tip Wait for Story Time to begin and stand or sit at the story area.
|tip Each time an ability appears on the screen, use it quickly and as often as possible.
|tip You will need to attend multiple Story Time events to earn this achivement.
|tip Story Time events occur between the other events.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\The War Within (70-80)\\20th Anniversary Celebration\\Achievements\\An Original",{
author="support@zygorguides.com",
startlevel=10,
patch='110005',
achieveid={40994},
},[[
step
kill Taerar##121911 |goto Ashenvale/0 93.79,41.18
kill Ysondre##121912 |goto Feralas/0 50.95,11.87
kill Emeriss##121913 |goto Duskwood/0 46.62,40.52
kill Lethon##121821 |goto The Hinterlands/0 62.83,25.04
|tip The four dragons of nightmare rotate each week in availability.
kill Azuregos##121820 |goto Azshara/0 48.77,84.38
kill Lord Kazzak##121818 |goto Blasted Lands/0 32.49,49.10
Defeat an Eastern Kingdoms or Kalimdor World Boss |achieve 40994
|tip Open your world map and pick a world boss to kill.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\The War Within (70-80)\\20th Anniversary Celebration\\Achievements\\A Gatecrasher",{
author="support@zygorguides.com",
startlevel=10,
patch='110005',
achieveid={40996},
},[[
step
kill Doomwalker##167749 |goto Tanaris/0 61.92,59.28
kill Sha of Anger##226646 |goto Tanaris/0 33.70,55.70
kill Archavon the Stone Watcher##227257 |goto Tanaris/0 46.07,29.03
Defeat a World Boss in Tanaris |achieve 40996
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\The War Within (70-80)\\20th Anniversary Celebration\\Achievements\\Codex Editor: Ahn'Qiraj",{
author="support@zygorguides.com",
startlevel=10,
patch='110005',
achieveid={40977},
},[[
step
talk Chromie##226368
Select _"Count me in! <Queue for The Codex of Chromie.>"_ |gossip 122968 |noautogossip
|tip This will queue you for the scenario and start forming a group.
|tip It may take some time, especially if you are DPS.
Complete the {o}Codex of Chromie{} Scenario |achieve 40977 |goto Tanaris/0 62.56,50.03
|tip The scenario is fairly simple.
|tip Stick with Chromie, marked with a rex X on the map when she travels.
|tip Kill enemies around the objective areas that she stops at with your group.
|tip This scenario moves very quickly and is easy to complete.
|tip Kill the final boss and use the portal to leave.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\The War Within (70-80)\\20th Anniversary Celebration\\Achievements\\No Crate Left Behind",{
author="support@zygorguides.com",
startlevel=10,
patch='110005',
achieveid={40979,40873},
},[[
step
talk Nikto##143029
|tip Underwater
buy 1 Clam Digger##225996 |goto Zuldazar/0 54.28,54.50 |q 83790 |future
step
click Gerald
|tip On the rock cliff under the water.
Select _"<Hold out the clam digger carefully so the contents don't float away.>"_ |gossip 123382
Unlock the Zuldazar Dive Bar Secret |q 83790 |goto Zuldazar/0 54.24,54.23 |future
step
click Soggy Celebration Crate
|tip On the rock cliff under the water.
accept Soggy Celebration Crate##83794 |goto Zuldazar/0 54.24,54.21
step
Kill Yourself |complete isdead() or completedq(85574) |goto Desolace/0 54.12,58.05
|tip You need to be dead to see this treasure.
|tip You can fly up in the air and dismount at this location to die, then run back.
step
click Hazy Celebration Crate
accept Hazy Celebration Crate##85574 |goto Desolace/0 54.12,58.05 |zombiewalk
step
Resurrect |complete not isdead
|tip Regain your corpse.
step
Enter the underwater cave |goto Thousand Needles/0 66.08,86.21 < 15 |walk
click Water-Resistant Receipt of Sale
|tip Inside the underwater cave.
collect Water-Resistant Receipt##228768 |goto Thousand Needles/0 64.92,84.40
step
talk Vashti the Wandering Merchant##91079
|tip He patrols up and down the road between the border of Suramar and The Ruined Sanctum.
buy Sandy Celebration Crate##228767 |goto Azsuna/0 65.66,36.36 |q 84624 |future
|tip This will cost 500 gold.
step
Enter the Crypt |goto Deadwind Pass/0 39.84,73.38 < 10 |walk
Go down the tunnel |goto Deadwind Pass/0 33.52,70.72 < 10 |c |walk |q 84470 |future
step
Run down the ramp |goto Deadwind Pass/0 36.30,73.79 < 15 |walk
Swim through |goto Deadwind Pass/0 29.55,81.32
click Dirt-Caked Celebration Crate
|tip Down inside the crypt.
accept Dirt-Caked Celebration Crate##84470 |goto Deadwind Pass/0 22.44,83.74
step
click Battered Celebration Crate
accept Battered Celebration Crate##83931 |goto Howling Fjord/0 29.40,6.36
step
click Waterlogged Celebration Crate
|tip At the bottom of the water inside the upper floor of the building.
|tip Swim inside and up the elevator.
accept Waterlogged Celebration Crate##84426 |goto Tanaris/0 69.18,68.60
step
click Charred Celebration Crate
accept Charred Celebration Crate##84767 |goto Mount Hyjal/0 13.59,33.46
step
click Potion of Truth
|tip At the very top of the mountain.
Drink the Potion of Truth |havebuff Potion of Truth##463368 |goto Ashenvale/0 47.92,38.37 |q 85523 |future
step
click Mildewed Celebration
|tip You have 30 minutes before the potion wears off.
|tip Fly directly to Felwood without using any teleports, items, or portals.
|tip Using these methods will remove your buff and require you to return to Ashenvale.
accept Mildewed Celebration Crate##85523 |goto Feralas/0 60.42,35.40 |notravel
step
Enter the cave |goto Nagrand/0 35.84,67.58 < 15 |walk
click Crystallized Celebration Crate
|tip Inside Oshu'gun.
accept Crystalized Celebration Crate##84773 |goto Nagrand/0 35.28,74.70
step
Appoach the Hidden Cove |complete subzone("Ahn'Qiraj: The Fallen Kingdom") or completedq(84625) |goto Uldum/0 12.45,61.33 |only if hasbuff(317785)
Appoach the Hidden Cove |complete subzone("Ahn'Qiraj: The Fallen Kingdom") or completedq(84625) |goto Uldum New/0 5.64,60.70 |only if not hasbuff(317785)
|tip You will need some sort of dog battle pet to dig up the bones in the next step.
step
Enter the cave |goto Ahn'Qiraj: The Fallen Kingdom/0 42.09,92.95 < 15 |walk
click Mysterious Bones
|tip Summon any kind of dog battle pet and wait for it to dig up the bones here.
|tip Search for "pup" in your pet journal or use a Perky Pug from the Looking for Multitudes achievement.
collect Mysterious Bones##228772 |goto Ahn'Qiraj: The Fallen Kingdom/0 44.57,90.08 |q 84625 |future
step
use the Mysterious Bones##228772
accept Surprisingly Pristine Celebration Crate##84625 |goto Stormheim/0 37.34,47.69
step
click Ghostly Celebration Crate
|tip High up on the balcony area with the red banner on top of Bleak Redoubt.
accept Ghostly Celebration Crate##84909 |goto Maldraxxus/0 50.00,73.80
step
talk Alyx##226683
turnin Soggy Celebration Crate##83794 |goto Tanaris/0 63.02,50.24
turnin Hazy Celebration Crate##85574 |goto Tanaris/0 63.02,50.24
turnin Dirt-Caked Celebration Crate##84470 |goto Tanaris/0 63.02,50.24
turnin Sandy Celebration Crate##84624 |goto Tanaris/0 63.02,50.24
turnin Battered Celebration Crate##83931 |goto Tanaris/0 63.02,50.24
turnin Waterlogged Celebration Crate##84426 |goto Tanaris/0 63.02,50.24
turnin Charred Celebration Crate##84767 |goto Tanaris/0 63.02,50.24
turnin Mildewed Celebration Crate##85523 |goto Tanaris/0 63.02,50.24
turnin Crystalized Celebration Crate##84773 |goto Tanaris/0 63.02,50.24
turnin Surprisingly Pristine Celebration Crate##84625 |goto Tanaris/0 63.02,50.24
turnin Ghostly Celebration Crate##84909 |goto Tanaris/0 63.02,50.24
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\The War Within (70-80)\\20th Anniversary Celebration\\Achievements\\Assistant to the Assistant Guest Relations Manager",{
author="support@zygorguides.com",
startlevel=10,
patch='110005',
achieveid={40871},
},[[
step
accept Another Timely Invitation##82672
|tip You will accept this quest automatically.
|tip If this doesn't happen, check your mailbox for a quest item.
step
talk Yllana##223877
turnin Another Timely Invitation##82672 |goto Tanaris/0 62.87,50.66
step
click Darkmoon Fortune Card
collect Six of Frost##229219 |goto Tanaris/0 63.00,50.21 |q 84882 |future
step
talk Alphonse Constant##230838
Select _"No problem. What business will you eventually be doing here?"_ |gossip 124449
Select _"Fortune telling, you say? You wouldn't happen to be using a Darkmoon Fortune Deck for that, would you?"_ |gossip 124452
Select _"You know what? I actually found a card earlier! Is this one of the ones you're missing?"_ |gossip 124455
Select _"Not a bother at all! I'm happy to help."_ |gossip 124454
accept Deck Dismay##84882 |goto Tanaris/0 63.87,52.38
step
click Darkmoon Fortune Card
|tip Underneath the tent flap at the corner.
Retrieve the Six of Fire |q 84882/1 |goto Tanaris/0 63.27,52.26 |count 20 hidden
step
click Darkmoon Fortune Card
|tip Behind the ice cream machine.
Retrieve the Eight of Fire |q 84882/1 |goto Tanaris/0 61.90,51.61 |count 30 hidden
step
click Darkmoon Fortune Card
Retrieve the Four of Earth |q 84882/1 |goto Tanaris/0 61.20,50.88 |count 40 hidden
step
click Darkmoon Fortune Card
|tip At the corner of the small building.
Retrieve the Three of Fire |q 84882/1 |goto Tanaris/0 62.15,49.33 |count 50 hidden
step
click Darkmoon Fortune Card
|tip On the dance stage.
Retrieve the Two of Air |q 84882/1 |goto Tanaris/0 63.18,49.35 |count 60 hidden
step
click Darkmoon Fortune Card
|tip Under the dance stage.
Retrieve the Seven of Fire |q 84882/1 |goto Tanaris/0 63.41,48.98 |count 70 hidden
step
click Darkmoon Fortune Card
|tip On the steps.
Retrieve the Three of Frost |q 84882/1 |goto Tanaris/0 63.58,50.99 |count 80 hidden
step
click Darkmoon Fortune Card
|tip Underneath the bench.
Retrieve the Two of Fire |q 84882/1 |goto Tanaris/0 63.97,51.52 |count 90 hidden
step
click Darkmoon Fortune Card
|tip Between the barrels.
Retrieve the Five of Fire |q 84882/1 |goto Tanaris/0 63.77,51.91 |count 100 hidden
step
talk Alphonse Constant##230838
turnin Deck Dismay##84882 |goto Tanaris/0 63.87,52.38
step
talk Alyx##232404
accept Torn Dreams##83832 |goto Tanaris/0 63.02,50.24
step
talk Raenie Fizzlebog##231433
turnin Torn Dreams##83832 |goto Tanaris/0 63.06,52.01
accept Restoring A Grand Tale##83825 |goto Tanaris/0 63.06,52.01
step
talk Cravitz Lorent##227816
|tip Under the back of the dance floor.
buy Green Hills of Stranglethorn##226242 |q 83825/2 |goto Tanaris/0 63.61,48.77
|tip This costs 100 gold.
step
talk Raenie Fizzlebog##231433
turnin Restoring A Grand Tale##83825 |goto Tanaris/0 63.06,52.01
step
talk Alyx##232405
accept A Hozen On My Back##84583 |goto Tanaris/0 63.02,50.24
step
talk Riko##229749
turnin A Hozen On My Back##84583 |goto Tanaris/0 61.89,50.48
accept The Case of the Fur-Getting Wikket##84595 |goto Tanaris/0 61.89,50.48
step
talk Riko##229749
Select _"What kind of pet do you want?"_ |gossip 124050
Speak to Riko |q 84595/1 |goto Tanaris/0 61.89,50.47 |count 20 hidden
step
talk Shademaster Kiryn##229774
Select _"What kind of pet do you want?"_ |gossip 124051
Speak to Shademaster Kiryn |q 84595/1 |goto Tanaris/0 61.86,50.41 |count 40 hidden
step
talk Sully "The Pickle" McLeary##229775
Select _"I'm looking for a pet."_ |gossip 124068
Select _"Where are they now?"_ |gossip 124067
Speak to Sully |q 84595/1 |goto Tanaris/0 63.05,49.42 |count 60 hidden
step
use the Torch of Pyrreth##208092
|tip Wait for it to reveal Gizmo.
|tip Gizmo will begin running away, so click him fast to save yourself some trouble.
Reveal Gizmo |q 84595/1 |goto The Jade Forest/0 43.35,68.85 |count 80 hidden
step
clicknpc Gizmo##229776
|tip You need to click it when it stops with enough time to finish the cast.
Solve the Mystery |q 84595/1 |goto The Jade Forest/0 43.60,68.16
step
talk Riko##229749
turnin The Case of the Fur-Getting Wikket##84595 |goto Tanaris/0 61.89,50.48
step
talk Alyx##232406
accept Nola's Last Wish##84435 |goto Tanaris/0 63.02,50.24
step
talk Lashk##229102
Select _"Alyx said you seemed upset."_ |gossip 123849
Speak with Lashk |q 84435/1 |goto Tanaris/0 63.90,52.52
step
click Nola's Last Wish
|tip It's one of the scrolls in the box.
collect Nola's Last Wish##228223 |q 84435/2 |goto Vol'dun/0 64.02,26.07
step
use Nola's Last Wish##228223
talk Scrollsage Nola##229103
|tip Under the water.
|tip Nola will swim up.
Select _"Lashk sent me to see your final wishes met."_ |gossip 123850
Solve the Mystery |q 84435/4 |goto Zuldazar/0 24.44,44.44
step
talk Lashk##229102
turnin Nola's Last Wish##84435 |goto Tanaris/0 63.90,52.53
step
talk Alyx##232406
accept A Legacy of Destruction##84932 |goto Tanaris/0 63.02,50.24
step
talk Voidfire##231029
turnin A Legacy of Destruction##84932 |goto Tanaris/0 61.71,49.81
accept From Ashes to Wisdom##84933 |goto Tanaris/0 61.71,49.81
step
use the Whelpling Whistle##231292
talk Voidfire##232499
Select _"This is what happens with fire and volcanic destruction. It leaves the area dark and barren."_ |gossip 124935
Learn the Lesson |q 84933/2 |goto Burning Steppes/0 61.23,29.59 |count 25 hidden
step
use Whelpling Whistle##231292
talk Voidfire##232499
Select _"This scar will not heal and will always serve as a reminder of Deathwing's wrath and the devastation he caused on the land and its inhabitants."_ |gossip 124936
Learn the Lesson |q 84933/2 |goto Badlands/0 31.08,48.73 |count 50 hidden
step
use the Whelpling Whistle##231292
talk Voidfire##232499
Select _"Even if you have followers, they won't always do what you want. Other cults are also bound to form that will follow their own rules."_ |gossip 124937
Learn the Lesson |q 84933/2 |goto Twilight Highlands/0 38.43,49.18 |count 75 hidden
step
talk Naraat the Earthspeaker##45226
accept Eye of the Storm##28826 |goto Stormwind City/0 74.54,19.02
|tip You must complete a few quests to unlock easy access to Vashj'ir.
|only if Alliance
step
clicknpc Waters of Farseeing##50088
Peer Into the Waters of Farseeing |q 28826/1 |goto Stormwind City/0 74.38,19.53
|only if Alliance
step
talk Naraat the Earthspeaker##45226
turnin Eye of the Storm##28826 |goto Stormwind City/0 74.54,19.02
|only if Alliance
step
talk Recruiter Burns##36799
turnin Hero's Call Vashj'ir##27724 |goto Stormwind City/0 27.37,24.15 |only if haveq(27724) or completedq(27724)
accept Call of Duty##14482 |goto Stormwind City/0 27.37,24.15
|only if Alliance
step
Ride the Mercenary Ship to Vashj'ir |q 14482/1 |goto Stormwind City/0 18.19,25.48
|only if Alliance
step
Watch the dialogue
Wait to Be Rescued |condition subzone("The Briny Cutter") |q 14482
|only if Alliance
step
talk Erunak Stonespeaker##36915
|tip Inside the ship.
turnin Call of Duty##14482 |goto Kelp'thar Forest/0 45.24,23.36
accept Sea Legs##24432 |goto Kelp'thar Forest/0 45.24,23.36
|only if Alliance
stickystart "Collect_Saltwater_Starfish"
step
Swim through the doorway |goto Kelp'thar Forest/0 44.82,23.34 < 7 |walk
Leave the ship |goto Kelp'thar Forest/0 44.73,24.07 < 7 |walk
click Conch Shell##202560
collect Conch Shell##52504 |q 24432/2 |goto Kelp'thar Forest/0 45.14,26.80
|only if Alliance
step
label "Collect_Saltwater_Starfish"
click Saltwater Stars##205989+
|tip They look like yellow starfish on the ground around this area.
collect 3 Saltwater Starfish##54828 |q 24432/1 |goto Kelp'thar Forest/0 44.29,27.17
|only if Alliance
step
Enter the ship |goto Kelp'thar Forest/0 44.91,24.16 < 7 |walk
Swim through the doorway |goto Kelp'thar Forest/0 44.84,23.44 < 7 |walk
talk Erunak Stonespeaker##36915
|tip Inside the ship.
turnin Sea Legs##24432 |goto Kelp'thar Forest/0 45.24,23.35
|only if Alliance
step
Enter the building |goto Durotar/0 55.82,12.03 < 7 |walk
talk Commander Thorak##41621
|tip Inside the building.
turnin Warchief's Command: Vashj'ir!##27718 |goto Durotar/0 55.82,12.33 |only if haveq(27718) or completedq(27718)
accept Call of Duty##25924 |goto Durotar/0 55.82,12.33
|tip You must complete this quest to unlock easy access to Vashj'ir.
|only if Horde
step
Watch the dialogue |goto Durotar/0 58.12,10.37
Start Riding the Mercenary Ship to Vashj'ir |goto Durotar/0 58.24,12.34 < 20 |noway |q 25924
|tip It may take a minute or two for the ship to show up.
|only if Horde
step
Watch the dialogue
Ride the Mercenary Ship to Vashj'ir |q 25924/1 |goto Kelp'thar Forest/0 43.16,32.87 |notravel
|only if Horde
step
talk Erunak Stonespeaker##41618
|tip Inside the ship.
turnin Call of Duty##25924 |goto Kelp'thar Forest/0 38.74,31.71
accept Sea Legs##25929 |goto Kelp'thar Forest/0 38.74,31.71
|only if Horde
stickystart "Collect_Conch_Shell"
step
click Saltwater Star##205989+
|tip They look like yellow starfish on the sea floor around this area.
collect 3 Saltwater Starfish##54828 |q 25929/1 |goto Kelp'thar Forest/0 41.63,30.88
|only if Horde
step
label "Collect_Conch_Shell"
click Conch Shell##202560
|tip It looks like a large shell on the sea floor around this area.
collect Conch Shell##52504 |q 25929/2 |goto Kelp'thar Forest/0 42.18,31.40
|only if Horde
step
talk Erunak Stonespeaker##41618
|tip Inside the ship.
turnin Sea Legs##25929 |goto Kelp'thar Forest/0 38.74,31.71
|only if Horde
step
use the Whelpling Whistle##231292
talk Voidfire##232499
|tip At the bottom of the water.
Select _"This was once a thriving elven city. Many historical ancient structures have now been lost to the depths."_ |gossip 124938
Learn the Lesson |q 84933/2 |goto Shimmering Expanse/0 39.06,67.50 |count 100 hidden
step
_Next to you:_
talk Voidfire##232499
turnin From Ashes to Wisdom##84933 |goto Shimmering Expanse/0 39.06,67.50
step
talk Alyx##232407
accept A Bird's Tale##84923 |goto Tanaris/0 63.02,50.24
step
talk Reshad##228273
turnin A Bird's Tale##84923 |goto Tanaris/0 64.22,51.30
accept A Bird's Tail##84924 |goto Tanaris/0 64.22,51.30
step
click Burnt Feather
|tip High up on the platform
Find the Clue |q 84924/2 |goto Spires of Arak/0 45.75,53.64 |count 25 hidden
step
click Plucked Feather
Find the Clue |q 84924/2 |goto Talador/0 29.54,29.54 |count 50 hidden
step
click Frozen Feather
|tip High up on the pillar.
Find the Clue |q 84924/2 |goto Nagrand D/0 83.83,19.39 |count 75 hidden
step
click Normal Feather
Find the Clue |q 84924/2 |goto Frostfire Ridge/0 42.06,67.50
step
talk Reshad##228273
turnin A Bird's Tail##84924 |goto Tanaris/0 64.22,51.30
step
talk Alyx##232408
accept Pet Pursuit##84506 |goto Tanaris/0 63.02,50.24
accept Lost and... Found?##85477 |goto Tanaris/0 63.02,50.24
step
click Lost & Found
Collect Items from the Lost & Found Chest |q 85477/1 |goto Tanaris/0 63.00,50.23
step
talk Oglethorpe Obnoticus##228247
|tip He patrols a small area around the stage.
Select _"You wouldn't have lost something while you've been here, would you?"_ |gossip 125033
Select _"Your tiny mechanical mouse was found."_ |gossip 125037
Return the Tiny Mechanical Mouse |q 85477/4 |goto Tanaris/0 62.87,49.35
step
talk Marin Noggenfogger##228248
|tip He patrols around the stairs and stage.
Select _"You wouldn't have lost something while you've been here, would you?"_ |gossip 125026
Select _"Your potion bottle was found."_ |gossip 125029
Potion Bottle returned |q 85477/6 |goto Tanaris/0 62.54,49.64
step
talk Jepetto Joybuzz##228276
turnin Pet Pursuit##84506 |goto Tanaris/0 62.18,49.68
accept Battle Pet Bingo##84469 |goto Tanaris/0 62.18,49.68
step
talk John J. Keeshan##228251
Select _"You wouldn't have lost something while you've been here, would you?"_ |gossip 125025
Select _"Your jade amulet was found."_ |gossip 125021
Return the Jade Amulet |q 85477/7 |goto Tanaris/0 63.38,51.80
step
talk Mankrik##228249
Select _"You wouldn't have lost something while you've been here, would you?"_ |gossip 125041
Select _"I found your crude ivory locket."_ |gossip 125046
Return the Crude Ivory Locket |q 85477/5 |goto Tanaris/0 63.48,52.17
step
talk Farmer Yoon##228262
Select _"You wouldn't have lost something while you've been here, would you?"_ |gossip 125008
Select _"Your well-worn journal was found."_ |gossip 125009
Return the Well-Worn Journal |q 85477/3 |goto Tanaris/0 63.10,52.02
step
click Jumping Spider
Find the Jumping Spider |q 84469/2 |goto The Jade Forest/0 64.05,80.77 |count 50 hidden
step
click Summit Kid
|tip At the top of the mountain.
Find the Summit Kid |q 84469/2 |goto Kun-Lai Summit/0 44.42,52.51
step
talk Alyx##232408
turnin Lost and... Found?##85477 |goto Tanaris/0 63.02,50.24
step
talk Jepetto Joybuzz##228276
turnin Battle Pet Bingo##84469 |goto Tanaris/0 62.17,49.67
step
talk Alyx##232408
accept Not Ready on Set##84985 |goto Tanaris/0 63.02,50.24
step
talk Dapperdew##171743
turnin Not Ready on Set##84985 |goto Ardenweald/0 41.50,44.83
accept The Show Must Go On##84912 |goto Ardenweald/0 41.50,44.83
step
click Mask of the Trickster
Find the Mask of the Trickster |q 84912/2 |goto Ardenweald/0 41.21,43.76 |count 25 hidden
step
click Play Script
Find the Play Script |q 84912/2 |goto Ardenweald/0 41.27,42.79 |count 50 hidden
step
click Prop Sword
|tip In the grass under the overhang.
Find the Prop Sword |q 84912/2 |goto Ardenweald/0 42.25,46.75 |count 75 hidden
step
click Conductors Baton
Find the Conductors Baton |q 84912/2 |goto Ardenweald/0 43.29,46.40
step
talk Dapperdew##171743
turnin The Show Must Go On##84912 |goto Ardenweald/0 41.50,44.83
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\The War Within (70-80)\\20th Anniversary Celebration\\Achievements\\I Saved the Party and All I got Were These Lousy Hats",{
author="support@zygorguides.com",
startlevel=10,
patch='110005',
achieveid={40872},
},[[
step
accept Another Timely Invitation##82672
|tip You will accept this quest automatically.
|tip If this doesn't happen, check your mailbox for a quest item.
step
talk Yllana##223877
turnin Another Timely Invitation##82672 |goto Tanaris/0 62.87,50.66
step
talk Alyx##226683
accept Lost and Busy##84143 |goto Tanaris/0 63.02,50.24
step
talk Maru##226684
turnin Lost and Busy##84143 |goto Tanaris/0 63.22,52.40
accept Tat Big Meanie##84144 |goto Tanaris/0 63.22,52.40
step
click Hear Historic Tales at the Storyteller Stage!
|tip It appears at the corner of the tent.
collect Hear Historic Tales at the Storyteller Stage!##227363 |q 84144 |goto Tanaris/0 62.01,51.53
step
click Red Hair
|tip On the ground next to the crates.
collect Red Hair##227364 |q 84144 |goto Tanaris/0 62.13,51.76
step
talk Ratts##226775
Select _"What did you do with Maru's brother's sleuthing tool?"_ |gossip 123577
Select _"Of course I have proof. But if you tell me now, I'll reduce your sentence."_ |gossip 123579
Speak to Ratts |q 84144/2 |goto Tanaris/0 63.99,51.69 |count 75 hidden
step
click Strange Torch
Find the Strange Torch |q 84144/2 |goto Tanaris/0 63.65,47.92 |count 100 hidden
step
talk Maru##226684
turnin Tat Big Meanie##84144 |goto Tanaris/0 63.22,52.40
accept To da Ruins!##84419 |goto Tanaris/0 63.22,52.40
step
talk Maru##229062
turnin To da Ruins!##84419 |goto Tanaris/0 35.13,78.17
accept Da Stick of Revealing##84393 |goto Tanaris/0 35.13,78.17
step
extraaction Flame Bearer##419127
Use the Torch of Pyrreth |q 84393/1 |goto Tanaris/0 37.26,78.99
step
extraaction Flame Bearer##419127
Approach the Brazier |q 84393/2 |goto Tanaris/0 37.26,78.99
step
extraaction Flame Bearer##419127
Light the Brazier |q 84393/3 |goto Tanaris/0 37.26,78.99
step
talk Maru##229062
|tip He will run to this location.
turnin Da Stick of Revealing##84393 |goto Tanaris/0 37.16,78.93
accept Tweasure Hunt##84363 |goto Tanaris/0 37.16,78.93
step
use the Torch of Pyrreth##208092
kill Tanaris Sandworm##228810
Retrieve the Cool Guts |q 84363/3 |goto Tanaris/0 42.20,71.96 |count 25 hidden
step
use the Torch of Pyrreth##208092
click Jeweled Eye
|tip It appears in the right eye of the statue.
Retrieve the Jeweled Eye |q 84363/3 |goto Tanaris/0 40.82,70.51 |count 50 hidden
step
use the Torch of Pyrreth##208092
click Half-Buried Chest
Retrieve the Golden Chalice |q 84363/3 |goto Tanaris/0 44.99,64.56 |count 75 hidden
step
use the Torch of Pyrreth##208092
kill Ancient Statue##228791
Retrieve the Fragment of an Ancient Statue |q 84363/3 |goto Tanaris/0 52.29,45.35 |count 100 hidden
step
talk Maru##226684
turnin Tweasure Hunt##84363 |goto Tanaris/0 63.22,52.40
step
talk Benatauk##226766
accept Thoughtful Pursuits##84521 |goto Tanaris/0 63.25,52.38
step
Retrieve Benatauk's Crystal Ocular Lenses |q 84521/2 |goto Tanaris/0 64.21,50.07 |count 33 hidden
|tip Maru will dig them up.
step
Retrieve Benatauk's Thought Calculating Apparatus |q 84521/2 |goto Tanaris/0 63.52,48.42 |count 66 hidden
|tip Maru will find them.
step
Retrieve Benatauk's Downy Helmet Liner |q 84521/2 |goto Tanaris/0 61.53,49.89 |count 100 hidden
|tip Maru will dig it up.
step
talk Benatauk##226766
turnin Thoughtful Pursuits##84521 |goto Tanaris/0 63.25,52.38
accept A Whiff of Help##84868 |goto Tanaris/0 63.25,52.38
step
talk Benatauk##226766
Select _"Let me browse your goods."_ |gossip 124412
buy Spiritual Incense##229351 |q 84868/1 |goto Tanaris/0 63.25,52.38
step
use the Spiritual Incense##229351
Use the Spiritual Incense |q 84868/2 |goto Tanaris/0 63.25,52.38
step
talk Maru##230711
Select _"So you can give me hints from here?"_ |gossip 124413
Speak with Maru's Spirit |q 84868/3 |goto Tanaris/0 63.25,52.30
step
talk Benatauk##226766
turnin A Whiff of Help##84868 |goto Tanaris/0 63.25,52.38
step
talk Alyx##226683
accept The Great Detective##84236 |goto Tanaris/0 63.02,50.24
step
talk Athelton Jones##226796
turnin The Great Detective##84236 |goto Tanaris/0 63.94,51.70
accept The "Great" Detective##84237 |goto Tanaris/0 63.94,51.70
step
talk Ellanoir##226805
Select _"Do you know Herrkrop?"_ |gossip 123607
Select _"Where did you last see Herrkrop?"_ |gossip 123608
Question Ellanoir |q 84237/2 |goto Tanaris/0 63.81,51.02 |count 12 hidden
step
talk Duryllin##226804
Select _"What were you doing on the Broken Isles?"_ |gossip 123615
Question Duryllin |q 84237/2 |goto Tanaris/0 63.82,51.08 |count 24 hidden
step
talk Juddson Rakes##226803
Select _"Surely a demon hunter of your skill has a moment to talk."_ |gossip 123611
Select _"Where did you last see Herrkrop?"_ |gossip 123610
Question Juddson |q 84237/2 |goto Tanaris/0 63.79,51.05 |count 36 hidden
step
talk Ellanoir##226805
Select _"What business was Herrkrop doing?"_ |gossip 123609
Question Ellanoir Again |q 84237/2 |goto Tanaris/0 63.81,51.02 |count 48 hidden
step
use the Torch of Pyrreth##208092
|tip You must have this active.
talk Scrapes##226812
Investigate the Corpse |q 84237/2 |goto Tanaris/0 66.23,40.64 |count 60 hidden
step
talk Scrapes##226812
Select _"Did you witness anything suspicious recently?"_ |gossip 123675
Question Scrapes |q 84237/2 |goto Tanaris/0 66.21,40.69 |count 72 hidden
step
talk Nat Pagle##228477
Select _"Did you witness anything suspicious recently?"_ |gossip 123668
Question Nat Pagle |q 84237/2 |goto Tanaris/0 65.89,40.39 |count 84 hidden
step
talk Julia Henning##226814
|tip She walks around this area.
Select _"Did you witness anything suspicious recently?"_ |gossip 123672
Question Julia |q 84237/2 |goto Tanaris/0 65.79,41.09 |count 96 hidden
step
talk Athelton Jones##226796
Select _"I think I know who did it."_ |gossip 123678
Select _"It was Scrapes."_ |gossip 123684
Accuse Someone of Murder |q 84237/2 |goto Tanaris/0 66.32,40.65
step
talk Alyx##226683
turnin The "Great" Detective##84237 |goto Tanaris/0 63.02,50.24
step
talk Alyx##226683
accept Tracking Quest##84278 |goto Tanaris/0 63.02,50.24
step
click Pre-Calibrated Goblin Transport Vessel
Travel to Northrend |complete zone("Northrend") |goto Tanaris/0 68.04,40.83 |q 84278
step
Find Rexxar in the Borean Tundra |q 84278/2 |goto Borean Tundra/0 77.30,46.16
step
talk Rexxar##226952
turnin Tracking Quest##84278 |goto Borean Tundra/0 77.30,46.16
accept The Trail's Gone Cold##84296 |goto Borean Tundra/0 77.30,46.16
step
use the Torch of Pyrreth##208092
|tip You must have this active.
click Torn Note
|tip Inside the hut.
Retrieve the Torn Diary, Page 4 |q 84296/2 |goto Borean Tundra/0 85.92,33.96 |count 20 hidden
step
click Mounted Spyglass
|tip On top of The Glimmering Pillar.
Investigate the Spyglass |q 84296/2 |goto Sholazar Basin/0 49.71,35.98 |count 40 hidden
step
use the Spirit's Whistle##227664
|tip You must have Rexxar near you to see Scrapes.
talk Scrapes##228634
|tip Inside the upper part of Balargarde Fortress.
Investigate Scraps |q 84296/2 |goto Icecrown/0 16.02,58.84 |count 80 hidden
step
use the Spirit's Whistle##227664
|tip You must have Rexxar near you to see Scrapes.
talk Rexxar##228550
|tip He will appear and walk up to you.
Select _"I think I know what happened."_ |gossip 123717
Select _"Scrapes was killed by a shapeshifter."_ |gossip 123714
Solve the Mystery |q 84296/2 |goto Icecrown/0 16.22,58.73
step
talk Alyx##226683
turnin The Trail's Gone Cold##84296 |goto Tanaris/0 63.02,50.24
step
talk Alyx##226683
accept Warn the Detective##84334 |goto Tanaris/0 63.02,50.24
step
talk Athelton Jones##228661
turnin Warn the Detective##84334 |goto Tanaris/0 60.92,50.66
accept Spot the Difference##84336 |goto Tanaris/0 60.92,50.66
step
talk Athelton Jones##228661
Select _"You're the shapeshifter!"_ |gossip 123741
Identify the Shapeshifter |q 84336/3 |goto Tanaris/0 60.92,50.66
step
kill Y'lliya Xennin##228663 |q 84336/4 |goto Tanaris/0 60.00,62.53
step
talk Alyx##226683
turnin Spot the Difference##84336 |goto Tanaris/0 63.02,50.24
step
talk Alyx##232404
accept Toy Trouble##84563 |goto Tanaris/0 63.02,50.24 |only if Alliance
accept Toy Trouble##85024 |goto Tanaris/0 63.02,50.24 |only if Horde
step
talk Maru##226684
turnin Toy Trouble##84563 |goto Tanaris/0 63.22,52.40 |only if Alliance
turnin Toy Trouble##85024 |goto Tanaris/0 63.22,52.40 |only if Horde
accept Operation Toy Rescue##84588 |goto Tanaris/0 63.22,52.40 |only if Alliance
accept Operation Toy Rescue##85025 |goto Tanaris/0 63.22,52.40 |only if Horde
step
click Mound of Dirt
Find Yennu's Toy Ball |q 84588/2 |goto Ohn'ahran Plains/0 61.96,37.50 |count 25 hidden |only if Alliance
Find Yennu's Toy Ball |q 85025/2 |goto Ohn'ahran Plains/0 61.96,37.50 |count 25 hidden |only if Horde
step
talk Yennu##229847
Select _"I found your ball."_ |gossip 124117 |only if Alliance
Select _"I found your ball."_ |gossip 124577 |only if Horde
Return Yennu's Toy |q 84588/2 |goto The Azure Span/0 13.43,48.92 |count 50 hidden |only if Alliance
Return Yennu's Toy |q 85025/2 |goto The Azure Span/0 13.43,48.92 |count 50 hidden |only if Horde
step
click Ball of Yarn
Find Kenshi's Ball of Yarn |q 84588/2 |goto Boralus/0 42.09,75.09 |count 75 hidden
|only if Alliance
step
talk Kenshi##142044
Select _"<Give the ball of yarn to Kenshi.>"_ |gossip 124358
|tip It walks around inside the building.
Return Kenshi's Ball of Yarn |q 84588/2 |goto Boralus/0 53.91,72.94 |count 100 hidden
|only if Alliance
step
click Plush Toy
|tip Up in the tree branch.
Find Nuts' Plush Toy |q 85025/2 |goto Dazar'alor/0 56.42,21.22 |count 75 hidden
|only if Horde
step
talk Nuts##54227
|tip Inside the building.
Select _"<Give the plush toy to Nuts.>"_ |gossip 124582
Return Nuts' Plush Toy |q 85025/2 |goto Dazar'alor/0 56.23,31.68 |count 100 hidden
|only if Horde
step
talk Maru##226684
turnin Operation Toy Rescue##84588 |goto Tanaris/0 63.22,52.40 |only if Alliance
turnin Operation Toy Rescue##85025 |goto Tanaris/0 63.22,52.40 |only if Horde
step
talk Alyx##232405
accept The Final Toy##84755 |goto Tanaris/0 63.02,50.24 |only if Alliance
accept The Final Toy##85042 |goto Tanaris/0 63.02,50.24 |only if Horde
step
talk Maru##226684
turnin The Final Toy##84755 |goto Tanaris/0 63.22,52.41 |only if Alliance
turnin The Final Toy##85042 |goto Tanaris/0 63.22,52.41 |only if Horde
accept The Toy Thief##84756 |goto Tanaris/0 63.22,52.41 |only if Alliance
accept The Toy Thief##85043 |goto Tanaris/0 63.22,52.41 |only if Horde
step
talk Maru##226684
Select _"I think the culprit is a dog."_ |gossip 124362 |only if Alliance
Select _"I think the culprit is a dog."_ |gossip 124589 |only if Horde
Talk to Maru |q 84756/2 |goto Tanaris/0 63.22,52.41 |count 25 hidden |only if Alliance
Talk to Maru |q 85043/2 |goto Tanaris/0 63.22,52.41 |count 25 hidden |only if Horde
step
click Chew Toy
|tip High up in Ohn'ahra's Roost.
Retrieve the Chew Toy |q 84756/2 |goto Ohn'ahran Plains/0 57.85,31.66 |count 50 hidden |only if Alliance
Retrieve the Chew Toy |q 85043/2 |goto Ohn'ahran Plains/0 57.85,31.66 |count 50 hidden |only if Horde
step
click Toy Box
Retrieve the Toy Box |q 84756/2 |goto Ohn'ahran Plains/0 39.61,58.31 |count 75 hidden |only if Alliance
Retrieve the Toy Box |q 85043/2 |goto Ohn'ahran Plains/0 39.61,58.31 |count 75 hidden |only if Horde
step
Enter the cave |goto Ohn'ahran Plains/0 38.42,55.34 < 5 |walk
click Maru's Toy
|tip Inside the cave next to the huge toy pile.
Retrieve the Maru's Toy |q 84756/2 |goto Ohn'ahran Plains/0 38.78,55.98 |count 100 hidden |only if Alliance
Retrieve the Maru's Toy |q 85043/2 |goto Ohn'ahran Plains/0 38.78,55.98 |count 100 hidden |only if Horde
step
talk Maru##226684
turnin The Toy Thief##84756 |goto Tanaris/0 63.22,52.41 |only if Alliance
turnin The Toy Thief##85043 |goto Tanaris/0 63.22,52.41 |only if Horde
step
talk Alyx##232406
accept A Pirate Predicament##85047 |goto Tanaris/0 63.02,50.24
step
talk Bonenose##231413
turnin A Pirate Predicament##85047 |goto Tanaris/0 60.91,44.74
accept Pirate Foods and Superstitions##85060 |goto Tanaris/0 60.91,44.74
step
talk Kelsey Yance##2664
|tip Inside the building.
|tip You may have to wait if someone killed the NPC.
Select _"I'm trying to find where Cooktholomew used to bunk. Can you help?"_ |gossip 124862
Search Booty Bay for Clues About Cooktholomew |q 85060/2 |goto The Cape of Stranglethorn/0 42.80,68.96
step
click Property of Cooktholomew
|tip The barrel down in the lowest building.
Search the Bunk Area |q 85060/3 |goto The Cape of Stranglethorn/0 42.87,72.79
step
talk Scowling Rosa##105637
|tip She walks around the Booty Bay boardwalk.
Select _"I think I found Cooktholomew's notes. Can you make sense of them?"_ |gossip 124886
Find Someone to Make Sense of the Notes |q 85060/4 |goto The Cape of Stranglethorn/0 42.12,72.61
step
talk Scowling Rosa##105637
turnin Pirate Foods and Superstitions##85060 |goto The Cape of Stranglethorn/0 42.12,72.61
step
talk Alyx##232407
accept A Pirate Missive##85208 |goto Tanaris/0 63.02,50.24
step
talk Scowling Rosa##105637
|tip She walks around the Booty Bay boardwalk.
turnin A Pirate Missive##85208 |goto The Cape of Stranglethorn/0 42.12,72.61
accept Pirate Gastronomy##85195 |goto The Cape of Stranglethorn/0 42.12,72.61
step
|macro /cast Fishing
collect 5 Bloodfin Catfish##33823 |q 85195/6 |goto Deadwind Pass/0 51.03,73.09
|tip You can fish these in Deadwind Pass with a Classic Fishing skill of 125+.
|tip You can also purchase them from the auction house.
step
collect 2 Swiftthistle##2452 |q 85195/2
|tip This can be gathered from Briarthorn and Mageroyal with Herbalism or purchased from the auction house.
|loadguide "Professions\\Herbalism\\Farming Guides\\Briarthorn"
step
Kill Paleblade enemies around this area |kill Paleblade Slithertongue##63044, Paleblade Flesheater##59378
|tip Sprite or Saurok mobs drop Witchberries.
collect 2 Witchberries##74846 |q 85195/3 |goto Vale of Eternal Blossoms/0 38.26,49.48
|tip These can be planted at your farm if you have The Tillers unlocked.
|tip You can also purchase these from the auction house.
step
kill Eldreth Darter##14398+
|tip These can be found inside the Dire Maul: Capital Gardens dungeon on the upper floor above Magister Kalendris.
|tip You can sometimes find them on the lower floor above Tendris Warpood.
collect Small Flame Sac##4402 |q 85195/4 |goto Dire Maul/2 19.54,52.98
|tip They have a low drop rate.
|tip You can reset the dungeon 5 times per hour.
step
collect 2 Aromatic Fish Oil##160711 |q 85195/5
|tip Fish in BFA zones with the Kul Tiras Fishing skill and use the fish you catch to convert them to oil. |only if Alliance
|tip Fish in BFA zones with the Zandalari Fishing skill and use the fish you catch to convert them to oil. |only if Horde
|tip You can also purchase them from the auction house.
step
|macro /cast Fishing
collect 4 Deviate Fish##6522 |q 85195/7 |goto Northern Barrens/0 39.61,70.85
|tip You can fish these in Northern Barrens with a Classic Fishing skill of 30+.
|tip You will see them a lot more frequently at the 80+ skill range.
|tip You can also purchase them from the auction house.
step
|macro /cast Fishing
collect 2 Nettlefish##41813 |q 85195/8 |goto Sholazar Basin/0 49.59,62.16
|tip You can fish these in waters all over Sholazar Basin.
|tip The best place to fish these is from Nettlefish Schools in Wintergrasp, but that is a PvP zone.
|tip You can also purchase them from the auction house.
step
|macro /cast Fishing
collect 3 Furious Crawdad##27439 |q 85195/9 |goto Terokkar Forest/0 45.95,39.60
|tip You can fish these in waters all over Terokkar Forest.
|tip You need to fish in Mixed Schools to catch them.
|tip You can also purchase them from the auction house.
You can find more schools around:
[Terokkar Forest/0 60.55,60.13]
[Terokkar Forest/0 65.39,77.74]
step
talk Bonenose##231413
Select _"I have all the ingredients for your boonful banquet."_ |gossip 124889
Select _"What? There's another ingredient I need to find?"_ |gossip 124888
Select _"Okay, well, I'm off to find whatever that is."_ |gossip 124887
Return to Bonenose |q 85195/10 |goto Tanaris/0 60.91,44.74
step
Locate the "Cold Storage" |q 85195/12 |goto Hrothgar's Landing/0 55.53,11.28
step
click Ice Block+
Find the Secret Ingredient |complete readyq(85195) or completedq(85195) |goto Hrothgar's Landing/0 55.53,11.28
step
talk Bonenose##231413
turnin Pirate Gastronomy##85195 |goto Tanaris/0 60.91,44.74
step
talk Alyx##232410
accept Secret in the Sands##85475 |goto Tanaris/0 63.02,50.24
step
talk Maru##226684
turnin Secret in the Sands##85475 |goto Tanaris/0 63.22,52.40
accept Buried Tweasure##85476 |goto Tanaris/0 63.22,52.40
step
Enter the building |goto Tanaris/0 37.73,80.52 < 15 |walk
click Ancient Treasure Note
|tip Inside the ruins.
Find the Ancient Treasure Note |q 85476/2 |goto Tanaris/0 37.60,84.12 |count 25 hidden
step
click Ancient Treasure Note
|tip Inside the ruins.
Find the Ancient Treasure Note |q 85476/2 |goto Tanaris/0 47.51,56.49 |count 50 hidden
step
use the Torch of Pyrreth##208092
|tip You need the torch active to see this note.
click Ancient Treasure Note
|tip Inside the ruins.
Find the Ancient Treasure Note |q 85476/2 |goto Tanaris/0 38.84,22.11 |count 75 hidden
step
talk Yennu##232863
|tip Inside the building.
Select _"Do you know about this ancient treasure?"_ |gossip 125014
Find the Ancient Treasure Note |q 85476/2 |goto Tanaris/0 52.69,26.86
step
talk Maru##226684
turnin Buried Tweasure##85476 |goto Tanaris/0 63.22,52.40
step
talk Alyx##232410
accept Festive Reflections##85502 |goto Tanaris/0 63.02,50.24
step
talk Athelton Jones##226796
turnin Festive Reflections##85502 |goto Tanaris/0 61.00,50.72
accept A Surprising Investigation##85503 |goto Tanaris/0 61.00,50.72
step
talk Maru##233006
Select _"You're in the wrong timeline. Go find Chromie."_ |gossip 125109
Identify the Imposter |q 85503/2 |goto Tanaris/0 61.90,49.90 |count 1
step
talk Big Kinook##233000
Select _"You're in the wrong timeline. Go find Chromie."_ |gossip 125107
Identify the Imposter |q 85503/2 |goto Tanaris/0 63.01,49.85 |count 2
step
talk Reshad##233007
|tip On top of the stage.
Select _"You're in the wrong timeline. Go find Chromie."_ |gossip 125110
Identify the Imposter |q 85503/2 |goto Tanaris/0 63.04,49.23 |count 3
step
talk Jepetto Joybuzz##233008
Select _"You're in the wrong timeline. Go find Chromie."_ |gossip 125111
Identify the Imposter |q 85503/2 |goto Tanaris/0 63.80,51.76 |count 4
step
talk Lorewalker Cho##233002
Select _"You're in the wrong timeline. Go find Chromie."_ |gossip 125108
Identify the Imposter |q 85503/2 |goto Tanaris/0 61.65,51.05 |count 5
step
talk Athelton Jones##226796
Select _"I found all of the imposters."_ |gossip 125114
Return to Detective Jones |q 85503/3 |goto Tanaris/0 60.99,50.72
step
clicknpc Shademaster Kiryn##229774
use the Letters##231905
|tip Use them on Shademaster Kiryn.
Distrubute the Letters |q 85503/4 |goto Tanaris/0 61.86,50.41 |count 1
step
clicknpc Petra##226251
use the Letters##231905
|tip Use them on Petra.
Distrubute the Letters |q 85503/4 |goto Tanaris/0 61.99,50.09 |count 2
step
clicknpc Jepetto Joybuzz##228276
use the Letters##231905
|tip Use them on Jepetto Joybuzz.
Distrubute the Letters |q 85503/4 |goto Tanaris/0 62.18,49.68 |count 3
step
clicknpc Vanni Thorngage##226290
use the Letters##231905
|tip Use them on Vanni Thorngage.
Distrubute the Letters |q 85503/4 |goto Tanaris/0 62.83,49.34 |count 4
step
clicknpc Koltira Deathweaver##228283
use the Letters##231905
|tip Use them on Koltira Deathweaver.
Distrubute the Letters |q 85503/4 |goto Tanaris/0 62.98,49.16 |count 5
step
clicknpc Lord Thassarian##228284
use the Letters##231905
|tip Use them on Lord Thassarian.
Distrubute the Letters |q 85503/4 |goto Tanaris/0 63.01,49.20 |count 6
step
clicknpc Moira Thaurissan##229494
use the Letters##231905
|tip Use them on Moira Thaurissan.
Distrubute the Letters |q 85503/4 |goto Tanaris/0 62.98,49.65 |count 7
step
clicknpc Lilian Voss##228245
use the Letters##231905
|tip Use them on Lilian Voss.
Distrubute the Letters |q 85503/4 |goto Tanaris/0 63.11,49.44 |count 8
step
clicknpc Arcanist Valtrois##232496
use the Letters##231905
|tip Use them on Arcanist Valtrois.
Distrubute the Letters |q 85503/4 |goto Tanaris/0 63.33,49.66 |count 9
step
clicknpc Stellagosa##228260
use the Letters##231905
|tip Use them on Stellagosa.
Distrubute the Letters |q 85503/4 |goto Tanaris/0 63.36,49.67
step
talk Athelton Jones##226796
Select _"I've distributed the letters."_ |gossip 125115
Return to Detective Jones |q 85503/5 |goto Tanaris/0 61.00,50.72
step
talk Bonenose##231413
Select _"Detective Jones asked me to check on his food order."_ |gossip 125119
Obtain the "Lucky Feast" |q 85503/6 |goto Tanaris/0 60.91,44.74
step
talk Athelton Jones##233011
Select _"What's going on?"_ |gossip 125120
Find the Northern Beach |q 85503/7 |goto Tanaris/0 65.82,41.76
step
talk Alyx##233012
turnin A Surprising Investigation##85503 |goto Tanaris/0 66.21,40.93
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Incognitro, the Indecipherable Felcycle",{
author="support@zygorguides.com",
startlevel=10,
patch='110005',
},[[
step
Save the items from this guide
|tip Items such as Pieces of Hate that you earn through secrets should be kept in your inventory until you complete this guide.
|tip Many will be used for various secrets later.
|tip Secrets are still being found and various secrets have bugs or are delayed in granting credit.
confirm
step
use the Torch of Pyrreth##208092
|tip Your torch must be active to interact.
|tip Run through the Guest Relations guide if you haven't already to collect it.
click Inert Peculiar Key
|tip Inside the hollow stump.
collect Inert Peculiar Key##228941 |goto Un'Goro Crater/0 44.53,7.98 |q 84684 |future
step
Earn the {o}Azeroth's Greatest Detective{} Achievement |achieve 40870
|tip You must earn the {o}Detective{} title to continue this guide.
|loadguide "Events Guides\\The War Within (70-80)\\20th Anniversary Celebration\\Achievements\\I Saved the Party and All I got Were These Lousy Hats"
step
Equip the {o}Detective{} Title |complete _G.GetCurrentTitle() == 571 |goto Dornogal/0 55.03,28.96 |q 84685 |future
|tip You must have this title active to accept the next quest.
step
talk Dalaran Survivor##230042
Select _"You can tell me, I'm a detective."_ |gossip 124145
Select _"Go on..."_ |gossip 124144
accept Ratts' Race##84684 |goto Dornogal/0 55.03,28.96
step
Enter the cave |goto Azj-Kahet/0 68.64,93.12 < 10 |walk
click Unfinished Note
|tip Inside the cave.
Find the First Clue |q 84684/1 |goto Azj-Kahet/0 69.33,93.32
step
click Hastily Scrawled Note
|tip High up on the cliff.
Find the Second Clue |q 84684/2 |goto Nerub'ar/1 31.51,20.77
step
Enter the cave |goto Hallowfall/0 49.79,85.81 < 15 |walk
click Water-Resistant Note
|tip At the bottom of the water.
Find the Third Clue |q 84684/3 |goto Hallowfall/0 50.72,86.64
step
Enter the cave |goto Azj-Kahet/0 55.11,19.21 < 10 |walk
Jump into the hole |goto Azj-Kahet/0 56.34,17.46 < 2 |walk
|tip Jump up onto the wall and into the hidden hole.
|tip It's in the folds of the landscape and very difficult to see.
Watch the dialogue
Confront Ratts |q 84684/4 |goto Azj-Kahet/0 56.18,18.05
|tip Wait for Ratts to run away.
step
click Peculiar Gem
turnin Ratts' Race##84684 |goto Azj-Kahet/0 56.13,17.99
step
use the Inert Peculiar Key##228941
collect Peculiar Key##44124
step
use the Torch of Pyrreth##208092
|tip Your torch must be active to interact.
click Humble Monument
Gain 1 Stack of The Light of Their Love Buff |havebuff 1 The Light of Their Love##153715 |goto Northern Barrens/0 55.00,40.15 |q 84677 |future
step
use the Torch of Pyrreth##208092
|tip Your torch must be active to interact.
Reach 2 Stacks of The Light of Their Love Buff |havebuff 2 The Light of Their Love##153715 |goto Maldraxxus/0 27.01,61.23 |q 84677 |future
step
use the Torch of Pyrreth##208092
|tip Your torch must be active to interact.
Reach 3 Stacks of The Light of Their Love Buff |havebuff 3 The Light of Their Love##153715 |goto Nagrand D/0 74.16,37.51 |q 84677 |future
Depending on your WoD progress, it might be at [Nagrand D/0 49.29,47.96]
step
Collect a {o}Perky Pug{} Pet |learnpet Perky Pug##250 |q 84677 |future
|tip The {o}Looking for Multitudes{} achievement grants this.
|tip You can also skip this step, stand around the objective area, and hope someone else completes this.
|tip Anyone within 10 yard can get the required key.
step
talk Vashti the Wandering Merchant##91079
buy "Dogg-Saron" Costume##229413 |goto Azsuna/0 63.85,34.47 |q 84677 |future
|tip This cost 25,000 gold.
|tip If you have a "Yipp-Saron" Costume, you can skip this.
|tip You can also stand around the objective area and hope someone else completes this.
|tip Anyone within 10 yard can get the required key.
You can also find him walking along the road round:
[Azsuna/0 65.63,23.03]
[Azsuna/0 63.66,28.16]
[Azsuna/0 66.28,39.18]
[Azsuna/0 66.87,44.34]
step
talk Zidormi##163463
Select _"Can you show me what the Vale was like before the Black Empire assault?"_ |gossip 51473
Travel to the Old Version of the Vale |complete ZGV.InPhase("OldVale") |goto Vale of Eternal Blossoms New/0 80.97,29.48
step
|script DoEmote("Pray")
Retrieve the Key of Shadows |q 84677 |goto Vale of Eternal Blossoms/0 83.10,30.15 |future
|tip You will need one of the following to complete this:
|tip A {o}Twitching Eyeball{} or {o}All-Seeing Eyes{} toy buff active.
|tip A {o}Perky Pug{} pet with a {o}"Dogg-Saron" Costume{} or a {o}"Yipp-Saron" Costume{} equipped.
|tip When you emote {}Pray{} in front of the idol on top of the building, everyone within 10 yard will receive the key.
|tip If you have time you could also wait for someone to come along and complete this.
|tip This quest seems to be fairly buggy and may take some time or repeated tries to collect the key.
step
use the Torch of Pyrreth##208092
|tip Your torch must be active to see the portal.
Enter the Karazhan Catacombs |scenariostart Ratts' Revenge##2635 |goto Deadwind Pass/0 46.24,69.07 |q 84757 |future
step
click Chamber Door
confirm |goto Deadwind Pass/27 49.37,71.30 |q 84757 |future
step
click Door 430
confirm |goto Deadwind Pass/27 47.27,67.94 |q 84757 |future
step
cast Fishing##131474
|tip Fish in the small Astral Soup bowl on the shelf.
collect Astral Key##228965 |goto Deadwind Pass/27 50.49,77.89 |q 84757 |future
step
click Astral Chest
collect Starry-Eyed Goggles##228966 |goto Deadwind Pass/27 48.26,79.79 |q 84757 |future
step
use the Starry-Eyed Goggles##228966
Equip the Starry-Eyed Goggles |havebuff Starry-Eyed Goggles##463749 |q 84757 |future
step
use the Starry-Eyed Goggles##228966
|tip You need these active to see the machine.
click Decryption Console
|tip Use the numbers on your action bar
|tip Enter the numbers {o}88224646{} and then the {o}Submit{} button.
click "Property of Elder Ko'nani"
|tip To the left of the console.
Collect the Piece of Hate |q 84757 |future |goto Deadwind Pass/27 49.49,80.27
step
use the Starry-Eyed Goggles##228966
|tip You need these active to see the machine.
click Decryption Console
|tip Use the numbers on your action bar
|tip Enter the numbers {o}10638{} and then the {o}Submit{} button.
click Encrypted Chest
|tip To the left of the console.
Collect the Piece of Hate |q 84768 |future |goto Deadwind Pass/27 49.86,64.70
step
use the Starry-Eyed Goggles##228966
|tip You need these active to see the machine.
click Decryption Console
|tip Use the numbers on your action bar
|tip Enter the numbers {o}17112317{} and then the {o}Submit{} button.
click Encrypted Puzzle Box
|tip To the left of the console on the table.
Collect the Piece of Hate |q 84758 |future |goto Deadwind Pass/27 42.79,71.10
step
use the Starry-Eyed Goggles##228966
|tip You need these active to see the machine.
click Decryption Console
|tip Use the numbers on your action bar
|tip Enter the numbers {o}5661{} and then the {o}Submit{} button.
click Encrypted Chest
|tip To the right of the console.
Collect the Piece of Hate |q 84769 |future |goto Deadwind Pass/27 56.15,63.10
step
use the Starry-Eyed Goggles##228966
|tip You need these active to see the machine.
click Decryption Console
|tip Use the numbers on your action bar
|tip Enter the numbers {o}19019{} and then the {o}Submit{} button.
click Encrypted Chest
|tip To the left of the console.
Collect the Piece of Hate |q 84771 |future |goto Deadwind Pass/27 68.02,83.15
step
use the Starry-Eyed Goggles##228966
|tip You need these active to see the machine.
click Rubenstein's Console
|tip Use the numbers on your action bar
|tip Enter the numbers {o}52233{} and then the {o}Submit{} button.
click Rubenstein's Safe
|tip Underneath the console.
Collect the Piece of Hate |q 84766 |future |goto Deadwind Pass/27 64.97,48.62
step
use the Starry-Eyed Goggles##228966
|tip You need these active to see the machine.
click Decryption Console
|tip Use the numbers on your action bar
|tip Enter the numbers {o}51567{} and then the {o}Submit{} button.
click Encrypted Chest
|tip To the right of the console.
Collect the Piece of Hate |q 84772 |future |goto Deadwind Pass/27 70.43,54.57
step
use the Starry-Eyed Goggles##228966
|tip You need these active to see the machine.
click Decryption Console
|tip Use the numbers on your action bar
|tip Enter the numbers {o}115{} and then the {o}Submit{} button.
click Encrypted Chest
|tip To the right of the console.
Collect the Piece of Hate |q 84770 |future |goto Deadwind Pass/27 66.21,15.88
step
talk Lenny "Fingers" McCoy##108533 |goto Stormwind City/0 28.69,27.81 |only if not completedq(42740)
talk Lenny "Fingers" McCoy##2795 |goto Stormwind City/0 72.80,58.91 |only if completedq(42740)
|tip This is an Alliance NPC. |only if Horde
|tip You can purchase these items on an Alliance character and mail/warbank them. |only if Horde
buy Lucky Shirt##138385 |q 84786 |future
|tip This costs 95 gold.
buy Lucky Rat's Tooth##138382 |q 84786 |future
|tip This costs 7 gold.
buy Lucky Charm##138384 |q 84786 |future
|tip This costs 15 gold.
step
talk Farrier Roscha##186650
Select _"I'd like to browse your goods."_ |gossip 55990
buy Lucky Horseshoe##198400 |goto Ohn'ahran Plains/0 84.40,25.01 |q 84786 |future
|tip This costs 100 gold.
step
talk Griftah##219197
buy Lucky Tortollan Charm##202046 |goto Dornogal/0 62.57,50.94 |q 84786 |future
|tip This costs 50 gold.
buy Lucky Dragon's Claw##200265 |goto Dornogal/0 62.57,50.94 |q 84786 |future
|tip This costs 5 gold.
step
use the Torch of Pyrreth##208092
|tip Your torch must be active to see the portal.
Enter the Karazhan Catacombs |scenariostart Ratts' Revenge##2635 |goto Deadwind Pass/0 46.24,69.07 |q 84786 |future
step
use the Starry-Eyed Goggles##228966
|tip You need these active to see the machine.
click "Feeling Lucky?" Slot Machine
|tip Use the numbers on your action bar
|tip Enter the numbers {o}777{} and then the {o}Submit{} button.
|tip With all of these items in your inventory, you should get it on the first try.
Collect the Piece of Hate |q 84786 |future |goto Deadwind Pass/27 63.53,25.59
step
talk Vashti the Wandering Merchant##91079
buy Scroll of Fel Binding##228987 |goto Azsuna/0 63.85,34.47 |q 84780 |future
|tip This cost 500 gold.
|tip You must summon a doomguard in the next step to cause some text to appear.
|tip You can also stand around the objective area and hope someone else summons a doomguard.
|tip Anyone within 10 yard can read the text required while the doomguard is active.
You can also find him walking along the road round:
[Azsuna/0 65.63,23.03]
[Azsuna/0 63.66,28.16]
[Azsuna/0 66.28,39.18]
[Azsuna/0 66.87,44.34]
step
use the Scroll of Fel Binding##228987
|tip Use this if you bought it or wait for someone to summon a doomguard if not.
click Hidden Grafitti
|tip Inside the tomb in front of the altar.
|tip A doomguard must be active nearby to see this.
Read the Hidden Grafitti |q 84780 |future |goto Western Plaguelands/0 52.21,83.93
step
Assemble a Secret Battle Pet Team
|tip You need a team of 3 secret battle pets for the 5th secret.
|tip You will need to win a pet battle against an NPC with your secret pet team.
|tip Some pets that count are Spyragos, Nelthara, Wicker Pup, Taptaf, Terky, Gurgl, Glimr, Snowclaw Cub, Jenafur, Bumbles, Sun Darter Hatchling, and Baa'l.
|tip Your pet team needs to be level 25 because the opposing team are level 25 epic pets.
confirm |q 84809 |future
step
talk Zarhym##71876
|tip Inside the cave.
Select _"I'm ready to enter the spirit world."_ |gossip 41831
|tip {b}Do not click anything during the next step!{}
|tip {b}Clicking objects will prevent you from completing the next step until the next daily reset.{}
Traverse the Spirit World |havebuff Spirit World##144145 |goto Timeless Isle/22 53.36,56.89 |q 84781 |future
step
Walk up the ramp here |goto Timeless Isle/22 62.36,50.89 < 2 |walk
|tip Stay under the white ring and away from the one on your right.
Jump down to the lower ramp |goto Timeless Isle/22 62.29,45.31 < 2 |walk
|tip Don't jump down to the base floor, just the next lowest part.
Jump down to the floor |goto Timeless Isle/22 63.49,32.68 < 4 |walk
Jump very carefully along the wall |goto Timeless Isle/22 68.61,25.78 < 2 |walk
|tip Jump along the wall avoiding the white ring.
|tip Avoid the rest of the white rings along the way.
|tip {b}Do not click anything!{}
|tip {b}Clicking objects will prevent you from completing the this step until the next daily reset.{}
talk Jeremy Feasel##232048
|tip Inside the cave.
Select _"I'm ready."_ |gossip 124744
|tip His team is Magic, Mechanical, and Beast.
accept Master of Secrets##84781 |goto Timeless Isle/22 39.46,39.12
|tip After defeating Jeremy's team, this quest becomes available.
step
click Pointless Treasure Salesman
|tip Inside the upper part of the statue.
|tip Jump over the chest and behind the small spiral staircase into the hidden alove.
buy Relic of Crystal Connections##228996 |goto The Cape of Stranglethorn/0 35.60,63.44
|tip This costs 9 Pieces of Hate from torch 3, and the Golden Muffin from torch 4.
step
For the next steps, you will need to appease 5 NPCs with various pets, mounts, or toys
Blood Altar:
|tip Any pet or mount with {o}Blood{} in the name or the Throbbing Blood Orb toy.
Corrupt Altar:
|tip Any pet or mount with {o}Corrupt{} in the name, the Ring of Broken Promises toy, or any cloak transmog sharing appearances with Cloak of Overwhelming Corruption.
Lust Altar:
|tip The sister of Temptation pet, Steamy Romance novel Kit toy, being fully naked, or have the buff from Moroes' Famous Polish.
Sin Altar:
|tip The Sinheart pet, the Bondable Sinstone toy, or any Venthyr Sinstone cloak transmog.
Void Altar:
|tip A void pet such as Lesser Voicaller, Voidwiggler, Sir Shady Mrrgglthon Junior, etc., a Shadowy Disguise or Void Totem toy, or any Cloak of the Black Void transmog appearance.
confirm |q 84809 |future
|tip Other players can also appease NPCs to assist.
step
Appease the Blood Altar |q 84809 |goto Northern Stranglethorn/0 77.09,46.27 |future
|tip Any pet or mount with {o}Blood{} in the name or the Throbbing Blood Orb toy.
|tip This may take some time to complete depending on how buggy it is.
|tip You can also just AFK here and wait for someone else to eventually trigger it.
step
Appease the Lust Altar |q 84808 |goto Northern Stranglethorn/0 77.07,44.87 |future
|tip The sister of Temptation pet, Steamy Romance novel Kit toy, being fully naked, or have the buff from Moroes' Famous Polish.
|tip This may take some time to complete depending on how buggy it is.
|tip You can also just AFK here and wait for someone else to eventually trigger it.
step
Appease the Corrupt Altar |q 84807 |goto Northern Stranglethorn/0 77.47,43.90 |future
|tip Any pet or mount with {o}Corrupt{} in the name, the Ring of Broken Promises toy, or any cloak transmog sharing appearances with Cloak of Overwhelming Corruption.
|tip This may take some time to complete depending on how buggy it is.
|tip You can also just AFK here and wait for someone else to eventually trigger it.
step
Appease the Sin Altar |q 84806 |goto Northern Stranglethorn/0 78.25,44.00 |future
|tip The Sinheart pet, the Bondable Sinstone toy, or any Venthyr Sinstone cloak transmog.
|tip This may take some time to complete depending on how buggy it is.
|tip You can also just AFK here and wait for someone else to eventually trigger it.
step
Appease the Void Altar |q 84810 |goto Northern Stranglethorn/0 78.11,46.31 |future
|tip A void pet such as Lesser Voicaller, Voidwiggler, Sir Shady Mrrgglthon Junior, etc., a Shadowy Disguise or Void Totem toy, or any Cloak of the Black Void transmog appearance.
|tip This may take some time to complete depending on how buggy it is.
|tip You can also just AFK here and wait for someone else to eventually trigger it.
step
click Chest of Aquisition
Loot the Ancient Shaman Blood |q 84811 |goto Northern Stranglethorn/0 78.15,47.72 |future
step
Learn the {o}Fledgling Warden Owl{} Pet |learnpet Fledgling Warden Owl##1716
|tip Purchase it from Marin Bladewing at Revered with The Wardens or purchase it from the auction house.
step
Summon a Fledgling Warden Owl Pet |complete activepet(1716) or completedq(84916)
step
'|mapmarker Azsuna/0 44.18,72.41
'|mapmarker Azsuna/0 40.54,73.15
'|mapmarker Azsuna/0 40.52,75.19
'|mapmarker Azsuna/0 37.10,82.16
'|mapmarker Azsuna/0 43.24,85.30
'|mapmarker Azsuna/0 43.66,87.51
'|mapmarker Azsuna/0 50.45,91.67
'|mapmarker Azsuna/0 47.48,84.74
'|mapmarker Azsuna/0 45.97,84.06
Buff your Fledgling Warden Owl pet
|tip Open your map and fly to the 9 locations marked.
|tip Each location has an Owl of the Watchers statue.
|tip At any given time, 3 statues are active.
|tip Clicking an active statue creates an aura around the immediate area.
|tip With your Fledgling Warden Owl pet summoned, wait around the buff statues until it flies 3 circles, then a magnifying glass appears above your head.
|tip May need to move around a bit and repeat this several times to trigger it properly.
|tip You MUST see the magnifying glass above your character to get credit for that buff.
|tip You need to do this 4 times, one for each buff possible.
|tip When you complete all 4 buffs, your warden pet will have a permanent white smokey area above its head.
|tip The buffs are Focused Senses (red), Suppression (purple), Stasis Field (green), and Augmented Armor (blue).
|tip When your pet has the white animation over its head, you may continue to the next step.
confirm |goto Azsuna/0 45.97,84.06 |q 84916 |future
step
Summon your Buffed Fledgling Warden Owl Pet |complete activepet(1716) or completedq(84916) |goto Vault of the Wardens 2/1 19.48,77.57
|tip Clear the entire dungeon.
|tip Pick up Elune's Light from Cordana Felsong's area and carry it back to the room just before Tirathon.
|tip A room to the right will be open now.
|tip Summon your pet.
|tip You must do this while carrying Elune's Light.
|tip A Sentry Statue will appear in the middle of the room.
step
click Sentry Statue
collect Sentry Statue##229046 |goto Vault of the Wardens 2/1 19.48,77.57 |q 84916 |future
step
use the Sentry Statue##229046
|tip Drop it on the platform before the stairs in Glazer's room.
Summon the Sentry Statue |q 84916 |goto Vault of the Wardens 2/2 60.67,48.25 |future
step
click Sentry Statue
Select _"Prepare the start up sequence."_ |gossip 45785
Click Here to Show A 5x5 Puzzle Solver |popuptext ham.io/watcher-solver/
|tip You must pick an orientation to face in the room, and then map all 25 tiles in the puzzle solver based on the orientation.
|tip For example, determine which tile will be your number 1 and always keep in mind where this spot is in relation to where you are facing.
|tip Once you have the tiles mapped, the solver will tell you which statues to click.
|tip If you need to reset, talk to the statue again.
|tip Resetting will cause the statue mapping to reset as well and you will need to remap them all again.
|tip When no statues remain, a chest will spawn in front of the Sentry Statue.
click Treasure of the Wardens
Loot the Warden's Mirror |q 84823 |goto Vault of the Wardens 2/2 60.67,48.25 |future
step
use the Torch of Pyrreth##208092
|tip Your torch must be active to see the portal.
Enter the Karazhan Catacombs |scenariostart Ratts' Revenge##2635 |goto Deadwind Pass/0 46.24,69.07 |q 84829 |future
step
click Enigma Machine
Select _"<Fill the arcane catalyzer with ancient shaman blood.>"_ |gossip 124348
Add the Ancient Shaman Blood |q 84829 |goto Deadwind Pass/27 59.93,42.59 |future
step
click Enigma Machine
Select _"<Insert the Warden's Mirror into the lightbox.>"_ |gossip 124347
Add the Warden's Mirror |q 84830 |goto Deadwind Pass/27 59.93,42.59 |future
step
More Puzzle Solutions Coming Soon |complete false
|tip More puzzle solutions are being added as they are discovered.
|tip Check back when this guide receives updates.
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\The War Within Pathfinder",{
author="support@zygorguides.com",
description="This guide will help you complete The War Within Pathfinder achievement.",
startlevel=70,
patch='100005',
achieveid={40831,40826,40825,40822,40790,40231},
},[[
step
Dornogal |achieve 40831/5 |goto Dornogal/0 49.96,57.32 |notravel
step
Tranquil Strand |achieve 40831/4 |goto Isle of Dorn/0 30.59,55.45 |notravel
step
The Orecrag |achieve 40831/6 |goto Isle of Dorn/0 35.7,75.5 |notravel
step
Wanderer's Landing |achieve 40831/7 |goto Isle of Dorn/0 54.57,78.56 |notravel
step
Boskroot Basin |achieve 40831/8 |goto Isle of Dorn/0 54,64 |notravel
step
Boulder Springs |achieve 40831/2 |goto Isle of Dorn/0 58.33,61.46 |notravel
step
Ironwold |achieve 40831/3 |goto Isle of Dorn/0 68.59,48.74 |notravel
step
Mourning Rise |achieve 40831/9 |goto Isle of Dorn/0 64.34,44.07 |notravel
step
Thunderhead Peak |achieve 40831/1 |goto Isle of Dorn/0 47.9,27.45 |notravel
step
The Three Shields |achieve 40831/10 |goto Isle of Dorn/0 71,21.34 |notravel
step
The Waterworks |achieve 40825/5 |goto The Ringing Deeps/0 45.93,43.89
step
The Living Grotto |achieve 40825/7 |goto The Ringing Deeps/0 55.68,67.17 |notravel
step
Opportunity Point |achieve 40825/8 |goto The Ringing Deeps/0 64.72,78.21 |notravel
step
Taelloch |achieve 40825/6 |goto The Ringing Deeps/0 62.31,60.25 |notravel
step
The Rumbling Wastes |achieve 40825/4 |goto The Ringing Deeps/0 64,51.8 |notravel
step
Shadowvein Extraction Site |achieve 40825/3 |goto The Ringing Deeps/0 61.68,41.82 |notravel
step
Lost Mines |achieve 40825/2 |goto The Ringing Deeps/0 59.37,24.56 |notravel
step
Gundargaz |achieve 40825/10 |goto The Ringing Deeps/0 47.1,33.46 |notravel
step
The Earthenworks |achieve 40825/1 |goto The Ringing Deeps/0 47.15,18.3 |notravel
step
The Hallowfall Gate |achieve 40825/9 |goto The Ringing Deeps/0 40.88,23.8 |notravel
step
The Aegis Wall |achieve 40826/2 |goto Hallowfall/0 70.72,58.71
step
Dunelle's Kindness |achieve 40826/1 |goto Hallowfall/0 68.52,44.71 |notravel
step
The Fangs |achieve 40826/3 |goto Hallowfall/0 57,48.54 |notravel
step
Light's Blooming |achieve 40826/7 |goto Hallowfall/0 63,28 |notravel
step
Lorel's Crossing |achieve 40826/4 |goto Hallowfall/0 48.51,40.45 |notravel
step
Priory of the Sacred Flame |achieve 40826/8 |goto Hallowfall/0 36.36,35.41 |notravel
step
The Undersea |achieve 40826/9 |goto Hallowfall/0 30,42 |notravel
step
Mereldar |achieve 40826/5 |goto Hallowfall/0 41.5,52.49 |notravel
step
Light's Redoubt |achieve 40826/6 |goto Hallowfall/0 40.46,71.2 |notravel
step
Ruptured Lake |achieve 40822/1 |goto Azj-Kahet/0 29.46,45.12
step
Lightless Channels |achieve 40822/2 |goto Azj-Kahet/0 46.59,36.14 |notravel
step
The Weaver's Lair |achieve 40822/4 |goto Azj-Kahet/0 56,44 |notravel
step
Crawling Chasm |achieve 40822/3 |goto Azj-Kahet/0 61.83,23.51 |notravel
step
Untamed Valley |achieve 40822/5 |goto Azj-Kahet/0 65,52 |notravel
step
Rak-Ush |achieve 40822/7 |goto Azj-Kahet/0 74.81,80.27 |notravel
step
High Hollows |achieve 40822/10 |goto Nerub'ar/1 72,48 |notravel
step
Umbral Bazaar |achieve 40822/9 |goto Nerub'ar/1 60.92,19.34 |notravel
step
The Skeins |achieve 40822/8 |goto Nerub'ar/1 31,24 |notravel
step
Twitching Gorge |achieve 40822/6 |goto Azj-Kahet/0 49.74,61.4 |notravel
step
Complete The Isle of Dorn Story Campaign |achieve 20118
|loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
step
Complete The Ringing Deeps Story Campaign |achieve 19560
|loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\The Ringing Deeps (Story Only)"
step
Complete the Hallowfall Story Campaign |achieve 20598
|loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Hallowfall (Story Only)"
step
Complete Azj-Kahet Story Campaign |achieve 19559
|loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Azj-Kahet (Story Only)"
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Events Guides\\The War Within (70-80)\\Siren Isle\\The Drain",{
author="support@zygorguides.com",
description="This guide will assist you in completing \"The Drain\" excavation on Siren Isle.",
condition_valid=function() return completedq(84725) end,
condition_valid_msg="You must complete \"The Circlet Calls\" quest in the Siren Isle guide to unlock excavations.",
startlevel=80,
areapoiid={8149},
patch='110007',
},[[
step
click Siren Isle Command Map
|tip Contribute to {o}The Drain{} excavation.
|tip When enough people contribue Flame-Blessed Iron to an event and the bar reaches 100%, it becomes possible to do that event on Siren Isle.
Activate {y}The Drain{} Excavation |complete haveq(85753,85755) |goto Siren Isle/0 69.31,43.16
step
Wait for the Blasting to Finish |complete widgetactive(6327,1386) |goto Siren Isle/0 61.98,74.36
|tip It takes a few minutes for the cave opening to clear.
step
kill Gravesludge##228201 |q 85753/1 |goto Siren Isle/0 57.51,66.44 |only if haveq(85753) or completedq(85753)
kill Gravesludge##228201 |q 85755/1 |goto Siren Isle/0 57.51,66.44 |only if haveq(85755) or completedq(85755)
|tip Inside the cave.
|tip This enemy is elite and will require a group.
|tip Move out of areas targeted on the ground.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\The War Within (70-80)\\Siren Isle\\The Drowned Lair",{
author="support@zygorguides.com",
description="This guide will assist you in completing \"The Drowned Lair\" excavation on Siren Isle.",
condition_valid=function() return completedq(84725) end,
condition_valid_msg="You must complete \"The Circlet Calls\" quest in the Siren Isle guide to unlock excavations.",
startlevel=80,
areapoiid={8152},
patch='110007',
},[[
step
click Siren Isle Command Map
|tip Contribute to {o}The Drowned Lair{} excavation.
|tip When enough people contribue Flame-Blessed Iron to an event and the bar reaches 100%, it becomes possible to do that event on Siren Isle.
Activate {y}The Drowned Lair{} Excavation |complete areapoi(2369,8152) |goto Siren Isle/0 69.31,43.16
step
Wait for the Bombardment to Finish |complete widgetactive(6329,1388) |goto Siren Isle/0 33.03,64.87
|tip It takes a few minutes for the cave opening to clear.
step
kill Nerathor##229982 |q 85762/1 |goto Siren Isle/0 26.16,65.52 |only if haveq(85762) or completedq(85762)
kill Nerathor##229982 |q 85760/1 |goto Siren Isle/0 26.16,65.52 |only if haveq(85760) or completedq(85760)
|tip Inside the cave.
|tip This enemy is elite and will require a group.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\The War Within (70-80)\\Siren Isle\\Shuddering Hollow",{
author="support@zygorguides.com",
description="This guide will assist you in completing \"Shuddering Hollow\" excavation on Siren Isle.",
condition_valid=function() return completedq(84725) end,
condition_valid_msg="You must complete \"The Circlet Calls\" quest in the Siren Isle guide to unlock excavations.",
startlevel=80,
areapoiid={8150},
patch='110007',
},[[
step
click Siren Isle Command Map
|tip Contribute to the {o}Shuddering Hollow{} excavation.
|tip When enough people contribue Flame-Blessed Iron to an event and the bar reaches 100%, it becomes possible to do that event on Siren Isle.
Activate the {y}Shuddering Hollow{} Excavation |complete haveq(85764,85765) |goto Siren Isle/0 69.31,43.16
step
Wait for the Excavation to Finish |complete widgetactive(6328,1387) |goto Siren Isle/0 44.37,56.70
|tip It takes a few minutes for the cave opening to clear.
step
kill Stalagnarok##229992 |q 85764/1 |goto Siren Isle/0 36.74,55.14 |only if haveq(85764) or completedq(85764)
kill Stalagnarok##229992 |q 85765/1 |goto Siren Isle/0 36.74,55.14 |only if haveq(85765) or completedq(85765)
|tip Inside the cave.
|tip This enemy is elite and will require a group.
]])
