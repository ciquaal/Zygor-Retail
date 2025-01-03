local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetBattleAMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "MOP"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pet Quests\\Battle Pet Dailies",{
author="support@zygorguides.com",
description="This guide will walk you through completing the battle pet dailies in Eastern Kingdoms, Kalimdor, Outland, Northrend, Cataclysm, and Pandaria.",
condition_suggested=function() return level>=1 and level<=60 end,
},[[
step
#include "Alliance_Battlepet_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pet Quests\\Battle Pet Tamers: Cataclysm",{
author="support@zygorguides.com",
description="This guide will walk you through completing the Battle Pet Tamers: Cataclysm questline.",
condition_end=function() return completedq(31966) end,
achieveid={7525},
patch='50004',
condition_suggested=function() return level>=1 and level<=30 end,
},[[
step
talk Audrey Burnhep##63596
accept Battle Pet Tamers: Cataclysm##31966 |goto Stormwind City/0 69.48,25.15
step
talk Brok##66819
accept Brok##31972 |goto Mount Hyjal/0 61.37,32.71
step
talk Brok##66819
Defeat Brok |q 31966/1 |goto Mount Hyjal/0 61.37,32.71
|tip Brok's pet team consists of level 25 Magic, Beast, and Critter battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Brok##66819
turnin Brok##31972 |goto Mount Hyjal/0 61.37,32.71
step
talk Bordin Steadyfist##66815
accept Bordin Steadyfist##31973 |goto Deepholm/0 49.87,57.05
step
talk Bordin Steadyfist##66815
Defeat Bordin Steadyfist |q 31966/2 |goto Deepholm/0 49.87,57.05
|tip Bordin's pet team consists of level 25 Elemental and Critter battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Bordin Steadyfist##66815
turnin Bordin Steadyfist##31973 |goto Deepholm/0 49.87,57.05
step
talk Goz Banefury##66822
accept Goz Banefury##31974 |goto Twilight Highlands/0 56.59,56.80
step
talk Goz Banefury##66822
Defeat Goz Banefury |q 31966/3 |goto Twilight Highlands/0 56.59,56.80
|tip Goz's pet team consists of level 25 Elemental, Magic, and Beast battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat him in battle pet combat.
step
talk Goz Banefury##66822
turnin Goz Banefury##31974 |goto Twilight Highlands/0 56.59,56.80
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Cataclysm##31966 |goto Twilight Highlands/0 56.59,56.80
accept Grand Master Obalis##31970 |goto Twilight Highlands/0 56.59,56.80
step
talk Zidormi##162419
Select _"Can you show me what Uldum was like during the time of the Cataclysm?"_
Travel Back in Time |goto Uldum/0 56.02,35.14 < 10
'|complete ZGV.InPhase("OldUldum") |or
'|complete completedq(31970) |or
step
talk Obalis##66824
Defeat Obalis |q 31970/1 |goto Uldum/0 56.56,41.98
|tip On top of the bridge.
|tip Obalis's pet team consists of level 25 Beast, Flying, and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Obalis##66824
turnin Grand Master Obalis##31970 |goto Uldum/0 56.56,41.98
accept The Triumphant Return##31985 |goto Uldum/0 56.56,41.98
step
talk Audrey Burnhep##63596
turnin The Triumphant Return##31985 |goto Stormwind City/0 69.48,25.15
step
Congratulations!
You have completed the _Battle Pet Tamers: Cataclysm_ questline!
|tip
Click here to load the "Battle Pet Tamers: Pandaria" guide |confirm |next "Pets & Mounts Guides\\Battle Pet Quests\\Battle Pet Tamers: Pandaria"
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pet Quests\\Battle Pet Tamers: Eastern Kingdoms",{
author="support@zygorguides.com",
description="This guide will walk you through completing the Battle Pet Tamers: Eastern Kingdoms questline.",
condition_end=function() return completedq(31902) end,
achieveid={6603},
patch='50004',
condition_suggested=function() return level>=1 and level<=30 end,
},[[
step
talk Marcus Jensen##63014
Learn the Battle Pet Training ability |learnspell Revive Battle Pets##125439 |goto Elwynn Forest/0 40.32,66.02
step
talk Marcus Jensen##63014
Select _"Interested in catching some rare pets?"_
Train a New Battle Pet |goto Elwynn Forest/0 40.32,66.02
|tip The type of pet he offers is determined by your character's race.
|tip If you don't see a pet offered in his inventory, you may have to purchase one from the auction house in Stormwind City.
'|complete haspet(43) |or
'|complete haspet(68) |or
'|complete haspet(72) |or
'|complete haspet(138) |or
'|complete haspet(630) |or
'|complete haspet(792) |or
step
Assign the new Pet to Pet Battle Slot 1 in Your Pet Journal
|tip Open your Pet Journal with "Shift+P" and click + drag your new pet to the unlocked pet battle slot.
Click Here to Proceed |confirm
step
talk Marcus Jensen##63014
accept Learning the Ropes##31308 |goto Elwynn Forest/0 40.32,66.02
step
Defeat a Wild Battle Pet
|tip Begin a pet battle with any battle pet you can find in or around Stormwind.
|tip Click the tiny binoculars to the left of your mini map name and check _Track Pets_.
|tip Right-click a wild battle pet around this area to join a pet battle.
|tip Weaken the opponent battle pet using your battle pet's skill until you have defeated it.
|tip If the pet battle isn't starting, try logging out and back in, and starting again.
Win a Pet Battle |q 31308/1 |goto Elwynn Forest/0 34.21,65.07
You can find more around:
[43.46,56.05]
[41.02,73.59]
[51.14,73.97]
[35.61,65.27]
[31.90,72.39]
[37.13,57.11]
step
talk Marcus Jensen##63014
turnin Learning the Ropes##31308 |goto Elwynn Forest/0 40.32,66.02
accept On The Mend##31309 |goto Elwynn Forest/0 40.32,66.02
step
talk Erma##6749
Select _"I'd like to heal and revive my battle pets."_
Battle Pets Healed |q 31309/1 |goto Elwynn Forest/0 42.85,65.94
step
talk Marcus Jensen##63014
turnin On The Mend##31309 |goto Elwynn Forest/0 40.32,66.02
accept Level Up!##31785 |goto Elwynn Forest/0 40.32,66.02
step
Raise the Level of a Battle Pet to Level 3
|tip Continue battling wild battle pets until your pet reaches level 3.
Raise a Battle Pet to level 3 |q 31785/1 |goto Elwynn Forest/0 34.21,65.07
You can find more around:
[43.46,56.05]
[41.02,73.59]
[51.14,73.97]
[35.61,65.27]
[31.90,72.39]
[37.13,57.11]
step
Click the Quest Accept Box
accept Audrey Burnhep##32008
|tip You will accept this quest automatically when your first battle pet reaches level 3.
step
talk Marcus Jensen##63014
turnin Level Up!##31785 |goto Elwynn Forest/0 40.32,66.02
accept Got one!##31550 |goto Elwynn Forest/0 40.32,66.02
step
Capture a Wild Battle Pet
|tip Right-click a wild battle pet around this area to join a pet battle.
|tip Weaken the opponent battle pet using your battle pet's skill until your _Trap_ ability activates (procs).
|tip Use the _Trap_ ability until the wild pet is captured.
|tip You may have to use the _Trap_ more than once.
|tip If you kill the wild pet, you will have to start again.
|tip If the pet battle isn't starting, try logging out and back in, and starting again.
Wild Battle Pet Caught |q 31550/1 |goto Elwynn Forest/0 34.21,65.07
You can find more around:
[43.46,56.05]
[41.02,73.59]
[51.14,73.97]
[35.61,65.27]
[31.90,72.39]
[37.13,57.11]
step
Assign the new Pet to an open Pet Battle Slot in Your Pet Journal
|tip Open your Pet Journal with "Shift+P" and click + drag your new pet to the unlocked pet battle slot.
Click Here to Proceed |confirm
step
talk Marcus Jensen##63014
turnin Got one!##31550 |goto Elwynn Forest/0 40.32,66.02
step
Raise the Level of a Battle Pet to Level 5
|tip Continue battling wild battle pets until your pet reaches level 5.
Raise a Battle Pet to level 5 |goto Elwynn Forest/0 34.21,65.07
Click Here to Proceed |confirm
You can find more around:
[43.46,56.05]
[41.02,73.59]
[51.14,73.97]
[35.61,65.27]
[31.90,72.39]
[37.13,57.11]
step
talk Audrey Burnhep##63596
turnin Audrey Burnhep##32008 |goto Stormwind City/0 69.49,25.15
step
talk Audrey Burnhep##63596
|tip Keep leveling your battle pets until this quest becomes available.
accept Julia, The Pet Tamer##31316 |goto Stormwind City/0 69.48,25.15
step
talk Julia Stevens##64330
Defeat Julia Stevens |q 31316/1 |goto Elwynn Forest/0 41.66,83.67
|tip Julia's pet team consists of level 2 Beast battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat her in battle pet combat.
step
talk Julia Stevens##64330
turnin Julia, The Pet Tamer##31316 |goto Elwynn Forest/0 41.66,83.67
accept Old MacDonald##31724 |goto Elwynn Forest/0 41.66,83.67
step
talk Old MacDonald##65648
Defeat Old MacDonald |q 31724/1 |goto Westfall/0 60.86,18.49
|tip MacDonald's pet team consists of level 3 Mechanical, Flying, and Critter battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Old MacDonald##65648
turnin Old MacDonald##31724 |goto Westfall/0 60.86,18.49
accept Lindsay##31725 |goto Westfall/0 60.86,18.49
step
talk Lindsay##65651
Defeat Lindsay |q 31725/1 |goto Redridge Mountains/0 33.30,52.58
|tip Lindsay's pet team consists of level 5 Critter battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat her in battle pet combat.
step
talk Lindsay##65651
turnin Lindsay##31725 |goto Redridge Mountains/0 33.30,52.58
accept Eric Davidson##31726 |goto Redridge Mountains/0 33.30,52.58
step
talk Eric Davidson##65655
Defeat Eric Davidson |q 31726/1 |goto Duskwood/0 19.88,44.62
|tip Eric's pet team consists of level 7 Beast battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat him in battle pet combat.
step
talk Eric Davidson##65655
turnin Eric Davidson##31726 |goto Duskwood/0 19.88,44.62
accept Steven Lisbane##31729 |goto Duskwood/0 19.88,44.62
step
talk Steven Lisbane##63194
Defeat Steven Lisbane |q 31729/1 |goto Northern Stranglethorn/0 46.01,40.45
|tip Steven's pet team consists of level 9 Beast and Magic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat him in battle pet combat.
step
talk Steven Lisbane##63194
turnin Steven Lisbane##31729 |goto Northern Stranglethorn/0 46.01,40.45
accept Bill Buckler##31728 |goto Northern Stranglethorn/0 46.01,40.45
step
talk Bill Buckler##65656
Defeat Bill Buckler |q 31728/1 |goto The Cape of Stranglethorn/0 51.46,73.38
|tip Bill's pet team consists of level 11 Humanoid and Flying battle pets.
|tip Undead battle pets are strong against Humanoid battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat him in battle pet combat.
step
talk Steven Lisbane##63194
turnin Bill Buckler##31728 |goto The Cape of Stranglethorn/0 51.46,73.38
accept A Tamer's Homecoming##31917 |goto The Cape of Stranglethorn/0 51.46,73.38
step
talk Audrey Burnhep##63596
turnin A Tamer's Homecoming##31917 |goto Stormwind City/0 69.48,25.15
accept Battle Pet Tamers: Eastern Kingdoms##31902 |goto Stormwind City/0 69.48,25.15
step
talk David Kosse##66478
Defeat David Kosse |q 31902/1 |goto The Hinterlands/0 62.98,54.59
|tip David's pet team consists of level 13 Critter, Beast, and Magic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat him in battle pet combat.
step
talk Deiza Plaguehorn##66512
Defeat Deiza Plaguehorn |q 31902/2 |goto Eastern Plaguelands/0 66.96,52.42
|tip Deiza's pet team consists of level 14 Beast and Undead battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat her in battle pet combat.
step
talk Kortas Darkhammer##66515
Defeat Kortas Darkhammer |q 31902/3 |goto Searing Gorge/0 35.31,27.75
|tip Kortas' pet team consists of level 15 Dragonkin battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Everessa##66518
Defeat Everessa |q 31902/4 |goto Swamp of Sorrows/0 76.81,41.50
|tip Everessa's pet team consists of level 16 Flying, Aquatic, and Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat her in battle pet combat.
step
talk Durin Darkhammer##66520
Defeat Durin Darkhammer |q 31902/5 |goto Burning Steppes/0 25.54,47.50
|tip Durin's pet team consists of level 17 Flying, Critter, and Elemental battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Eastern Kingdoms##31902 |goto Burning Steppes/0 66.96,52.42
accept Grand Master Lydia Accoste##31915 |goto Burning Steppes/0 66.96,52.42
step
talk Lydia Accoste##66522
Defeat Lydia Accoste |q 31915/1 |goto Deadwind Pass/0 40.05,76.45
|tip Lydia's pet team consists of level 19 Elemental and Undead battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat her in battle pet combat.
step
talk Lydia Accoste##66522
turnin Grand Master Lydia Accoste##31915 |goto Deadwind Pass/0 40.05,76.45
accept The Returning Champion##31976 |goto Deadwind Pass/0 40.05,76.45 |only if completedq(31915) and completedq(31897) and not haveq(31977) and not completedq(31977)
|tip You may have to reload your UI to accept this quest. |only if completedq(31915) and completedq(31897) and not haveq(31977) and not completedq(31977)
step
talk Audrey Burnhep##63596
turnin The Returning Champion##31976 |goto Stormwind City/0 69.48,25.15
|only if haveq(31976)
step
Congratulations!
You have completed the _Battle Pet Tamers: Eastern Kingdoms_ questline!
|tip
Click here to load the "Battle Pet Tamers: Kalimdor" guide |confirm |next "Pets & Mounts Guides\\Battle Pet Quests\\Battle Pet Tamers: Kalimdor"
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pet Quests\\Battle Pet Tamers: Kalimdor",{
author="support@zygorguides.com",
description="This guide will walk you through completing the Battle Pet Tamers: Kalimdor questline.",
condition_end=function() return completedq(31889) end,
condition_suggested=function() return level>=1 and level<=30 end,
},[[
step
talk Audrey Burnhep##63596
accept Battle Pet Tamers: Kalimdor##31889 |goto Stormwind City/0 69.48,25.15
step
talk Traitor Gluk##66352
Defeat Traitor Gluk |q 31889/1 |goto Feralas/0 59.74,49.65
|tip Gluk's pet team consists of level 13 Dragonkin, Beast, and Critter battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Grazzle the Great ##66436
Defeat Grazzle the Great  |q 31889/2 |goto Dustwallow Marsh/0 53.85,74.88
|tip Grazzle's pet team consists of level 14 Dragonkin battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Kela Grimtotem##66452
Defeat Kela Grimtotem |q 31889/3 |goto Thousand Needles/0 31.87,32.94
|tip Kela's pet team consists of level 15 Critter and Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat her in battle pet combat.
step
talk Zoltan##66442
Defeat Zoltan |q 31889/4 |goto Felwood/0 39.95,56.57
|tip Zoltan's pet team consists of level 16 Mechanical and Magic battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat him in battle pet combat.
step
talk Elena Flutterfly##66412
Defeat Elena Flutterfly |q 31889/5 |goto Moonglade/0 46.14,60.26
|tip Elena's pet team consists of level 17 Dragonkin, Magic, and Flying battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat her in battle pet combat.
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Kalimdor##31891
accept Grand Master Trixxy##31897
step
talk Stone Cold Trixxy##66466
Defeat Stone Cold Trixxy |q 31897/1 |goto Winterspring/0 65.63,64.52
|tip Trixxy's pet team consists of level 19 Dragonkin, Beast, and Flying battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat her in battle pet combat.
step
talk Stone Cold Trixxy##66466
turnin Grand Master Trixxy##31897 |goto Winterspring/0 65.63,64.52
accept The Returning Champion##31975 |only if completedq(31915) and completedq(31897)
|tip You may have to reload or relog to receive it. |only if completedq(31915) and completedq(31897)
step
talk Audrey Burnhep##63596
turnin The Returning Champion##31975 |goto Stormwind City/0 69.48,25.15
|only if haveq(31975)
step
Congratulations!
You have completed the _Battle Pet Tamers: Kalimdor_ questline!
|tip
Click here to load the "Battle Pet Tamers: Outland" guide |confirm |next "Pets & Mounts Guides\\Battle Pet Quests\\Battle Pet Tamers: Outland"
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pet Quests\\Battle Pet Tamers: Northrend",{
author="support@zygorguides.com",
description="This guide will walk you through completing the Battle Pet Tamers: Northrend questline.",
condition_end=function() return completedq(31927) end,
achieveid={6605},
patch='50004',
condition_suggested=function() return level>=1 and level<=30 end,
},[[
step
talk Audrey Burnhep##63596
accept Battle Pet Tamers: Northrend##31927 |goto Stormwind City/0 69.48,25.15
step
talk Nearly Headless Jacob##66636
accept Nearly Headless Jacob##31932 |goto Crystalsong Forest/0 50.14,58.97 |only if completedq(31928)
Defeat Nearly Headless Jacob |q 31927/2 |goto Crystalsong Forest/0 50.14,58.97
|tip Jacob's pet team consists of level 25 Undead battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat him in battle pet combat.
step
talk Nearly Headless Jacob##66636
accept Nearly Headless Jacob##31932 |goto Crystalsong Forest/0 50.14,58.97
|only if completedq(31928)
step
talk Okrut Dragonwaste##66638
accept Okrut Dragonwaste##31933 |goto Dragonblight/0 59.02,77.05 |only if completedq(31928)
Defeat Okrut Dragonwaste |q 31927/3 |goto Dragonblight/0 59.02,77.05
|tip Okrut's pet team consists of level 25 Dragonkin and Undead battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat him in battle pet combat.
step
talk Okrut Dragonwaste##66638
turnin Okrut Dragonwaste##31933 |goto Dragonblight/0 59.02,77.05
|only if completedq(31928)
step
talk Beegle Blastfuse##66635
accept Beegle Blastfuse##31931 |goto Howling Fjord/0 28.61,33.88 |only if completedq(31928)
Defeat Beegle Blastfuse |q 31927/1 |goto Howling Fjord/0 28.61,33.88
|tip Beegle's pet team consists of level 25 Flying and Aquatic battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat him in battle pet combat.
step
talk Beegle Blastfuse##66635
turnin Beegle Blastfuse##31931 |goto Howling Fjord/0 28.61,33.88
|only if completedq(31928)
step
talk Gutretch##66639
accept Gutretch##31934 |goto Zul'Drak/0 13.22,66.79 |only if completedq(31928)
Defeat Gutretch |q 31927/4 |goto Zul'Drak/0 13.22,66.79
|tip Gutretch's pet team consists of level 25 Beast and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Gutretch##66639
turnin Gutretch##31934 |goto Zul'Drak/0 13.22,66.79
|only if completedq(31928)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Northrend##31927 |goto Zul'Drak/0 59.02,77.05
accept Grand Master Payne##31928 |goto Zul'Drak/0 59.02,77.05 |only if not completedq(31928)
step
talk Major Payne##66675
Defeat Major Payne |q 31928/1 |goto Icecrown/0 77.39,19.56
|tip Payne's pet team consists of level 25 Beast, Mechanical, and Elemental battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
talk Major Payne##66675
turnin Grand Master Payne##31928 |goto Icecrown/0 77.39,19.56
accept A Brief Reprieve##31984 |goto Icecrown/0 77.39,19.56 |only if not completedq(31929) and not completedq(31927)
step
talk Audrey Burnhep##63596
turnin A Brief Reprieve##31984 |goto Stormwind City/0 69.48,25.15
|only if not completedq(31929) and not completedq(31927)
step
Congratulations!
You have completed the _Battle Pet Tamers: Northrend_ questline!
|tip
Click here to load the "Battle Pet Tamers: Cataclysm" guide |confirm |next "Pets & Mounts Guides\\Battle Pet Quests\\Battle Pet Tamers: Cataclysm"
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pet Quests\\Battle Pet Tamers: Outland",{
author="support@zygorguides.com",
description="This guide will walk you through completing the Battle Pet Tamers: Outland questline.",
condition_end=function() return completedq(31919) end,
achieveid={6604},
patch='50004',
condition_suggested=function() return level>=1 and level<=30 end,
},[[
step
talk Audrey Burnhep##63596
accept Battle Pet Tamers: Outland##31919 |goto Stormwind City/0 69.48,25.15
step
talk Nicki Tinytech##66550
accept Nicki Tinytech##31922 |goto Hellfire Peninsula/0 64.31,49.30 |only if completedq(31920)
Defeat Nicki Tinytech |q 31919/1 |goto Hellfire Peninsula/0 64.31,49.30
|tip Nicki's pet team consists of level 20 Mechanical battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Defeat her in battle pet combat.
step
talk Nicki Tinytech##66550
turnin Nicki Tinytech##31922 |goto Hellfire Peninsula/0 64.31,49.30
|only if completedq(31920)
step
talk Ras'an##66551
accept Ras'an##31923 |goto Zangarmarsh/0 17.24,50.52 |only if completedq(31920)
Defeat Ras'an |q 31919/2 |goto Zangarmarsh/0 17.24,50.52
|tip Ras'an's pet team consists of level 21 Flying, Magic, and Humanoid battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Undead battle pets are strong against Humanoid battle pets.
|tip Defeat him in battle pet combat.
step
talk Ras'an##66551
turnin Ras'an##31923 |goto Zangarmarsh/0 17.24,50.52
|only if completedq(31920)
step
talk Narrok##66552
accept Narrok##31924 |goto Nagrand/0 60.97,49.42 |only if completedq(31920)
Defeat Narrok |q 31919/3 |goto Nagrand/0 60.97,49.42
|tip Narrok's pet team consists of level 22 Aquatic, Critter, and Beast battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat him in battle pet combat.
step
talk Narrok##66552
turnin Narrok##31924 |goto Nagrand/0 60.97,49.42
|only if completedq(31920)
step
talk Morulu The Elder##66553
accept Morulu The Elder##31925 |goto Shattrath City/0 58.76,70.05 |only if completedq(31920)
Defeat Morulu The Elder |q 31919/4 |goto Shattrath City/0 58.76,70.05
|tip Morulu's pet team consists of level 23 Aquatic battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat him in battle pet combat.
step
talk Morulu The Elder##66553
turnin Morulu The Elder##31925 |goto Shattrath City/0 58.76,70.05
|only if completedq(31920)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Outland##31919 |goto Shattrath City/0 58.76,70.05
accept Grand Master Antari##31920 |goto Shattrath City/0 58.76,70.05 |only if not completedq(31920)
step
talk Bloodknight Antari##66557
Defeat Bloodknight Antari |q 31920/1 |goto Shadowmoon Valley/0 30.51,41.77
|tip Analynn's pet team consists of level 24 Magic, Elemental, and Dragonkin battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Bloodknight Antari##66557
turnin Grand Master Antari##31920 |goto Shadowmoon Valley/0 30.51,41.77
accept Exceeding Expectations##31981 |goto Shadowmoon Valley/0 30.51,41.77 |only if not completedq(31981) and not completedq(31982)
step
talk Audrey Burnhep##63596
turnin Exceeding Expectations##31981 |goto Stormwind City/0 69.48,25.15
|only if not completedq(31981) and not completedq(31982)
step
Congratulations!
You have completed the _Battle Pet Tamers: Outland_ questline!
|tip
Click here to load the "Battle Pet Tamers: Northrend" guide |confirm |next "Pets & Mounts Guides\\Battle Pet Quests\\Battle Pet Tamers: Northrend"
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pet Quests\\Battle Pet Tamers: Pandaria",{
author="support@zygorguides.com",
description="This guide will walk you through completing the Battle Pet Tamers: Pandaria questline.",
condition_end=function() return completedq(31930) end,
achieveid={6606},
patch='50004',
condition_suggested=function() return level>=1 and level<=35 end,
},[[
step
talk Audrey Burnhep##63596
accept Battle Pet Tamers: Pandaria##31930 |goto Stormwind City/0 69.48,25.15
step
talk Hyuna of the Shrines##66730
accept Grand Master Hyuna##31953 |goto The Jade Forest/0 47.96,54.17 |only if completedq(31951)
Defeat Hyuna of the Shrines |q 31930/1 |goto The Jade Forest/0 47.96,54.17
|tip Hyuna's pet team consists of level 25 Flying, Beast and Aquatic battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat her in battle pet combat.
step
talk Hyuna of the Shrines##66730
turnin Grand Master Hyuna##31953 |goto The Jade Forest/0 47.96,54.17
|only if completedq(31951)
step
talk Farmer Nishi##66734
accept Grand Master Nishi##31955 |goto Valley of the Four Winds/0 46.07,43.68 |only if completedq(31951)
Defeat Farmer Nishi |q 31930/2 |goto Valley of the Four Winds/0 46.07,43.68
|tip Nishi's pet team consists of level 25 Elementals and a Critter battle pet.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat her in battle pet combat.
step
talk Farmer Nishi##66734
turnin Grand Master Nishi##31955 |goto Valley of the Four Winds/0 46.07,43.68
|only if completedq(31951)
step
talk Mo'ruk##66733
accept Grand Master Mo'ruk##31954 |goto Krasarang Wilds/0 62.23,45.91 |only if completedq(31951)
Defeat Mo'ruk |q 31930/3 |goto Krasarang Wilds/0 62.23,45.91
|tip Mo'ruk's pet team consists of level 25 Beast, Flying, and Aquatic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat him in battle pet combat.
step
talk Mo'ruk##66733
turnin Grand Master Mo'ruk##31954 |goto Krasarang Wilds/0 62.23,45.91
|only if completedq(31951)
step
talk Wastewalker Shu##66739
accept Grand Master Shu##31957 |goto Dread Wastes/0 55.11,37.56 |only if completedq(31951)
Defeat Wastewalker Shu |q 31930/6 |goto Dread Wastes/0 55.11,37.56
|tip Shu's pet team consists of level 25 Beast, Aquatic, and Elemental battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
talk Wastewalker Shu##66739
turnin Grand Master Shu##31957 |goto Dread Wastes/0 55.11,37.56
|only if completedq(31951)
step
talk Seeker Zusshi##66918
accept Grand Master Zusshi##31991 |goto Townlong Steppes/0 36.32,52.21 |only if completedq(31951)
Defeat Seeker Zusshi |q 31930/5 |goto Townlong Steppes/0 36.32,52.21
|tip Zusshi's pet team consists of level 25 Aquatic, Critter, and Elemental battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
talk Seeker Zusshi##66918
turnin Grand Master Zusshi##31991 |goto Townlong Steppes/0 36.32,52.21
|only if completedq(31951)
step
talk Courageous Yon##66738
accept Grand Master Yon##31956 |goto Kun-Lai Summit/0 35.84,73.63 |only if completedq(31951)
Defeat Courageous Yon |q 31930/4 |goto Kun-Lai Summit/0 35.84,73.63
|tip Yon's pet team consists of level 25 Beast, Critter, and Flying battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat him in battle pet combat.
step
talk Courageous Yon##66738
turnin Grand Master Yon##31956 |goto Kun-Lai Summit/0 35.84,73.63
|only if completedq(31951)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Pandaria##31930 |goto Kun-Lai Summit/0 35.84,73.63
accept Grand Master Aki##31951 |goto Kun-Lai Summit/0 35.84,73.63 |only if not completedq(31951)
step
talk Aki the Chosen##66741
Defeat Aki the Chosen |q 31951/1 |goto Vale of Eternal Blossoms/0 31.27,74.09
|tip Defeat him in battle pet combat.
step
talk Aki the Chosen##66741
turnin Grand Master Aki##31951 |goto Vale of Eternal Blossoms/0 31.27,74.09
|tip Aki's pet team consists of level 25 Aquatic, Critter, and Dragonkin battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
step
Congratulations!
You have completed the _Battle Pet Tamers: Pandaria_ questline!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pet Quests\\Beasts of Fable",{
author="support@zygorguides.com",
description="This guide will walk you through completing the Beasts of Fable questline.",
condition_suggested=function() return level>=1 and level<=35 end,
condition_end=function() return completedq(32603) end,
},[[
step
#include "A_Beasts_of_Fable"
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pet Quests\\Beasts of Fable Dailies",{
author="support@zygorguides.com",
description="This guide will walk you through completing the Beasts of Fable dailies.",
condition_suggested=function() return level>=1 and level<=35 end,
},[[
step
label "start"
#include "A_Beasts_of_Fable_D"
step
You have completed the Beasts of Fable Dailies for the day.
Click here to return to the beginning of the guide. |confirm |next "start"
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pet Quests\\Pandaren Spirit Tamer",{
author="support@zygorguides.com",
description="This guide will walk you through completing the Pandaren Spirit Tamer questline.",
condition_end=function() return completedq(32428) end,
achieveid={7936},
patch='50100',
condition_suggested=function() return level>=1 and level<=35 end,
},[[
step
talk Sara Finkleswitch##64572
accept Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 86.59,59.99
step
talk Whispering Pandaren Spirit##68464
Defeat the Whispering Pandaren Spirit |q 32428/3 |goto The Jade Forest/0 28.90,36.03
|tip Whispering Pandaren Spirit's pet team consists of level 25 Dragonkin, Elemental, and Flying battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat it in battle pet combat.
step
talk Thundering Pandaren Spirit##68465
Defeat the Thundering Pandaren Spirit |q 32428/2 |goto Kun-Lai Summit/0 64.95,93.79
|tip Thundering Pandaren Spirit's pet team consists of level 25 Beast, Elemental, and Magic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat it in battle pet combat.
step
talk Burning Pandaren Spirit##68463
Defeat the Burning Pandaren Spirit |q 32428/1 |goto Townlong Steppes/0 57.15,42.10
|tip Burning Pandaren Spirit's pet team consists of level 25 Dragonkin, Elemental, and Flying battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat it in battle pet combat.
step
talk Flowing Pandaren Spirit##68462
Defeat the Flowing Pandaren Spirit |q 32428/4 |goto Dread Wastes/0 61.14,87.51
|tip Flowing Pandaren Spirit's pet team consists of level 25 Aquatic, and Elemental battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat it in battle pet combat.
step
talk Sara Finkleswitch##64572
turnin Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 86.59,59.99
step
Congratulations!
You have completed the _Pandaren Spirit Tamer_ questline!
]])
