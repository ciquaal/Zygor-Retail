local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsHBFA") then return end
ZGV.CommonPets=true
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Abyssal Eel",{
patch='80100',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Madeline Netley in Stormsong Valley for 75 Polished Pet Charms.",
condition_valid=function() return Alliance end,
condition_valid_msg="This pet must be purchased on an Alliance character or from the Auction House.",
pet=2403,
},[[
step
This pet can only be purchased from an Alliance NPC
If you are Horde you can purchase it from the Auction House
talk Auctioneer Drezmit##44866
|tip Inside the building.
collect 1 Abyssal Eel##163489 |goto Orgrimmar/1 54.08,73.36
only if not haspet(2403)
step
use the Abyssal Eel##163489
Collect the "Abyssal Eel" Battle Pet |learnpet Abyssal Eel##2403
step
_Congratulations!_
You Collected an "Abyssal Eel" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Barnacled Hermit Crab",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be purchased from Jenoh in Vol'dun for 50 Polished Pet Charms.",
pet=2425,
},[[
step
collect 50 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2425)
step
talk Jenoh##135400
buy 1 Barnacled Hermit Crab##163511 |goto Vol'dun/0 29.52,59.35
only if not haspet(2425)
step
use the Barnacled Hermit Crab##163511
Collect the "Barnacled Hermit Crab" Battle Pet |learnpet Barnacled Hermit Crab##2425
step
_Congratulations!_
You Collected a "Barnacled Hermit Crab" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Barrier Hermit",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured in the wild from the Isle of Fangs or Tusk Isle in Southern Zuldazar",
pet=2385,
},[[
step
clicknpc Barrier Hermit##143044
Weaken and capture the Barrier Hermit in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Barrier Hermit" Battle Pet |learnpet Barrier Hermit##2385 |goto Zuldazar/0 66.83,71.92
step
_Congratulations!_
You Collected a "Barrier Hermit" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Beakbert",{
patch='81500',
source='Quest',
author="support@zygorguides.com",
description="This pet can be collected after completing the Zandalar Children's Week event quests.",
keywords={"Aquatic","Children's","Week"},
pet=2576,
},[[
step
Wait for Children's Week to Begin |complete isevent("Children's Week") |or
|tip This event starts on May 2 and ends on May 9.
'|learnpet Beakbert##2576 |or
step
talk Caretaker Padae##131346
|tip Inside the building
accept Children's Week##53965 |goto Dazar'alor/0 54.63,84.60 |or
'|learnpet Beakbert##2576 |or
step
use the Casteless Zandalari Whistle##164965
_Next to you:_
talk Azala##145463
turnin Children's Week##53965 |or 4
accept Loa of Winds##53966 |or 4
accept The Shifting Pack##53968 |or 4
accept The Frogmarsh##53967 |or 4
'|learnpet Beakbert##2576 |or
step
Cross the bridge |goto Zuldazar/0 66.92,43.17 < 15 |only if walking
Follow the path up |goto Zuldazar/0 66.09,46.41 < 20 |only if walking
use the Casteless Zandalari Whistle##164965
|tip Ensure that you have your orphan, Azala, summoned.
Visit Pterror Rise |q 53966/1 |goto Zuldazar/0 70.58,49.14 |or
'|learnpet Beakbert##2576 |or
step
Cross the bridge |goto Zuldazar/0 49.78,29.05 < 20 |only if walking
use the Casteless Zandalari Whistle##164965
|tip Ensure that you have your orphan, Azala, summoned.
Visit Lair of Gonk |q 53968/1 |goto Zuldazar/0 48.71,31.74 |or
'|learnpet Beakbert##2576 |or
step
use the Casteless Zandalari Whistle##164965
|tip Ensure that you have your orphan, Azala, summoned.
Visit Krag'wa's Burrow |q 53967/1 |goto Nazmir/0 73.27,53.36 |or
'|learnpet Beakbert##2576 |or
step
use the Casteless Zandalari Whistle##164965
_Next to you:_
talk Azala##145463
turnin Loa of Winds##53966 |or 5
turnin The Shifting Pack##53968 |or 5
turnin The Frogmarsh##53967 |or 5
accept The Sethrak Queen##53970 |or 5
accept Hunting for Gold##53969 |or 5
'|learnpet Beakbert##2576 |or
step
use the Casteless Zandalari Whistle##164965
|tip Ensure that you have your orphan, Azala, summoned.
|tip Upstairs inside the building.
Visit Terrace of the Devoted |q 53970/1 |goto Vol'dun/0 27.11,52.57 |or
'|learnpet Beakbert##2576 |or
step
Jump down here |goto Vol'dun/0 41.96,77.72 < 20 |only if walking
Cross the water |goto Vol'dun/0 33.88,85.82 < 20 |only if walking
use the Casteless Zandalari Whistle##164965
|tip Ensure that you have your orphan, Azala, summoned.
Visit the Golden Isle |q 53969/1 |goto Vol'dun/0 28.77,88.96 |or
'|learnpet Beakbert##2576 |or
step
use the Casteless Zandalari Whistle##164965
_Next to you:_
talk Azala##145463
turnin The Sethrak Queen##53970 |or 3
turnin Hunting for Gold##53969 |or 3
accept Return to the Hall of Castes##53971 |or 3
'|learnpet Beakbert##2576 |or
step
use the Casteless Zandalari Whistle##164965
|tip Inside the building
Return to the Hall of Castes |q 53971/1 |goto Dazar'alor/0 53.86,84.82 |or
'|learnpet Beakbert##2576 |or
step
use the Casteless Zandalari Whistle##164965
_Next to you:_
talk Azala##145463
turnin Return to the Hall of Castes##53971 |or
|tip Be sure to choose Beakbert as a reward.
'|learnpet Beakbert##2576 |or
step
collect 1 Beakbert##167010 |or
'|learnpet Beakbert##2576 |or
step
use Beakbert##167010
Collect the "Beakbert" Battle Pet |learnpet Beakbert##2576
step
_Congratulations!_
You Collected a "Beakbert" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Boghopper",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured in the wild from bog-type areas found in eastern and western Nazmir.",
pet=2398,
},[[
step
clicknpc Boghopper##143055
Weaken and capture the Boghopper in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Boghopper" Battle Pet |learnpet Boghopper##2398 |goto Nazmir/0 77.36,45.67
step
_Congratulations!_
You Collected a "Boghopper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Brilliant Glimmershell",{
patch='82000',
source='Quest',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Aquatic","Bladesman","Inowari"},
pet=2688,
description="This battle pet is awarded after reaching rank 20 with Bladesman Inowari on the Alliance Faction.",
},[[
step
Learn the "Brilliant Glimmershell" Battle Pet |learnpet Brilliant Glimmershell##2688
|tip You can only collect this battle pet on an Alliance character.
step
_Congratulations!_
You Collected the "Brilliant Glimmershell" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Bucketshell",{
patch='80100',
source='Achievement',
author="support@zygorguides.com",
description="This pet can be collected by reaching Honor Level 400 in PvP activities.",
pet=2479,
},[[
step
talk Violet Shadowmend##145837
buy Bucketshell##163974 |goto Zuldazar/0 51.65,57.80 |complete haspet(2479)
|tip You will need Honor Level 400 in order to purchase this.
step
use the Bucketshell##163974
Collect the "Bucketshell" Battle Pet |learnpet Bucketshell##2479
step
_Congratulations!_
You Collected a "Bucketshell" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Chitterspine Devourer",{
patch='82000',
source='Vendor',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Aquatic","Battle","Commendation","PvP","Nazjatar"},
pet=2691,
description="This battle pet can be purchased from Dazzerian in Newhome for 30 Nazjatar Battle Commendations.",
},[[
step
collect 30 Nazjatar Battle Commendation##168802 |or
|tip You can earn these by enabling War Mode and participating in the Battle for Nazjatar PvP event.
'|learnpet Chitterspine Devourer##2691 |or
step
talk Dazzerian##154652
buy 1 Chitterspine Devourer##169357 |goto Nazjatar/0 48.81,60.70 |or
|tip It can be caged, meaning you can purchase it from the Auction House as well.
'|learnpet Chitterspine Devourer##2691 |or
step
use the Chitterspine Devourer##169357
Collect the "Chitterspine Devourer" Battle Pet |learnpet Chitterspine Devourer##2691
step
_Congratulations!_
You Collected the "Chitterspine Devourer" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Coastal Bounder",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured in the wild from northwestern Nazmir or around Boralus Harbor.",
pet=2400,
},[[
step
clicknpc Coastal Bounder##143057
Weaken and capture the Coastal Bounder in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Coastal Bounder" Battle Pet |learnpet Coastal Bounder##2400 |goto Nazmir/0 32.93,35.70
step
_Congratulations!_
You Collected a "Coastal Bounder" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Coastal Scuttler",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured in the wild along the coast of Falconhurst in Drustvar.",
pet=2386,
},[[
step
clicknpc Coastal Scuttler##143045
Weaken and capture the Coastal Scuttler in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Coastal Scuttler" Battle Pet |learnpet Coastal Scuttler##2386 |goto Drustvar/0 27.02,73.26
step
_Congratulations!_
You Collected a "Coastal Scuttler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Cou'pa",{
patch='80100',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Collector Kojo in Zuldazar for 200 Polished Pet Charms.\n\n"..
"_Requires Tortollan Seekers - Revered_",
pet=2427,
},[[
step
collect 200 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2427)
step
talk Collector Kojo##135793
buy 1 Cou'pa##163513 |goto Zuldazar/0 71.50,30.35
only if not haspet(2427)
step
use Cou'pa##163513
Collect the "Cou'pa" Battle Pet |learnpet Cou'pa##2427
step
_Congratulations!_
You Collected a "Cou'pa" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Crimson Frog",{
patch='80100',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Shoak in Nazmir for 100 Polished Pet Charms.",
pet=2424,
},[[
step
collect 100 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2424)
step
talk Shoak##132011
buy 1 Crimson Frog##163510 |goto Nazmir/0 66.91,42.06
only if not haspet(2424)
step
use the Crimson Frog##163510
Collect the "Crimson Frog" Battle Pet |learnpet Crimson Frog##2424
step
_Congratulations!_
You Collected a "Crimson Frog" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Crimson Octopode",{
patch='81000',
source='Vendor',
author="support@zygorguides.com",
description="This pet is purchased from Captain Zen'taga in Dazar'alor for 100 Seafarer's Dubloon.",
pet=2562,
},[[
step
earn 100 Seafarer's Dubloon##1710
|tip These are collected from Island Expeditions.
step
talk Captain Zen'taga##148923
buy Crimson Octopode##166500 |goto Dazar'alor/0 44.48,94.45 |complete haspet(2562)
step
use the Crimson Octopode##166500
Collect the "Crimson Octopode" Battle Pet |learnpet Crimson Octopode##2562
step
_Congratulations!_
You Collected the "Crimson Octopode" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Elusive Skimmer",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured in the wild around water along the southern bank of Nazmir.",
pet=2389,
},[[
step
clicknpc Elusive Skimmer##143048
Weaken and capture the Elusive Skimmer in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Elusive Skimmer" Battle Pet |learnpet Elusive Skimmer##2389 |goto Nazmir/0 37.85,82.25
step
_Congratulations!_
You Collected an "Elusive Skimmer" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Freshwater Crawler",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured in the wild along the river east of Brennadam in Stormsong Valley.",
pet=2374,
},[[
step
clicknpc Freshwater Crawler##143033
Weaken and capture the Freshwater Crawler in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Freshwater Crawler" Battle Pet |learnpet Freshwater Crawler##2374 |goto Stormsong Valley/0 64.56,67.13
step
_Congratulations!_
You Collected a "Freshwater Crawler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Freshwater Pincher",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be purchased from Jenoh in Vol'dun for 250 Polished Pet Charms.",
pet=2423,
},[[
step
collect 250 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2423)
step
talk Jenoh##135400
buy 1 Freshwater Pincher##163509 |goto Vol'dun/0 29.52,59.35
only if not haspet(2423)
step
use the Freshwater Pincher##163509
Collect the "Freshwater Pincher" Battle Pet |learnpet Freshwater Pincher##2423
step
_Congratulations!_
You Collected a "Freshwater Pincher" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Froglet",{
patch='81500',
source='Quest',
author="support@zygorguides.com",
description="This pet can be collected after completing the Zandalar Children's Week event quests.",
keywords={"Aquatic","Children's","Week"},
pet=2577,
},[[
step
Wait for Children's Week to Begin |complete isevent("Children's Week") |or
|tip This event starts on May 2 and ends on May 9.
'|learnpet Froglet##2577 |or
step
talk Caretaker Padae##131346
|tip Inside the building
accept Children's Week##53965 |goto Dazar'alor/0 54.63,84.60 |or
'|learnpet Froglet##2577 |or
step
use the Casteless Zandalari Whistle##164965
_Next to you:_
talk Azala##145463
turnin Children's Week##53965 |or 4
accept Loa of Winds##53966 |or 4
accept The Shifting Pack##53968 |or 4
accept The Frogmarsh##53967 |or 4
'|learnpet Froglet##2577 |or
step
Cross the bridge |goto Zuldazar/0 66.92,43.17 < 15 |only if walking
Follow the path up |goto Zuldazar/0 66.09,46.41 < 20 |only if walking
use the Casteless Zandalari Whistle##164965
|tip Ensure that you have your orphan, Azala, summoned.
Visit Pterror Rise |q 53966/1 |goto Zuldazar/0 70.58,49.14 |or
'|learnpet Froglet##2577 |or
step
Cross the bridge |goto Zuldazar/0 49.78,29.05 < 20 |only if walking
use the Casteless Zandalari Whistle##164965
|tip Ensure that you have your orphan, Azala, summoned.
Visit Lair of Gonk |q 53968/1 |goto Zuldazar/0 48.71,31.74 |or
'|learnpet Froglet##2577 |or
step
use the Casteless Zandalari Whistle##164965
|tip Ensure that you have your orphan, Azala, summoned.
Visit Krag'wa's Burrow |q 53967/1 |goto Nazmir/0 73.27,53.36 |or
'|learnpet Froglet##2577 |or
step
use the Casteless Zandalari Whistle##164965
_Next to you:_
talk Azala##145463
turnin Loa of Winds##53966 |or 5
turnin The Shifting Pack##53968 |or 5
turnin The Frogmarsh##53967 |or 5
accept The Sethrak Queen##53970 |or 5
accept Hunting for Gold##53969 |or 5
'|learnpet Froglet##2577 |or
step
use the Casteless Zandalari Whistle##164965
|tip Ensure that you have your orphan, Azala, summoned.
|tip Upstairs inside the building.
Visit Terrace of the Devoted |q 53970/1 |goto Vol'dun/0 27.11,52.57 |or
'|learnpet Froglet##2577 |or
step
Jump down here |goto Vol'dun/0 41.96,77.72 < 20 |only if walking
Cross the water |goto Vol'dun/0 33.88,85.82 < 20 |only if walking
use the Casteless Zandalari Whistle##164965
|tip Ensure that you have your orphan, Azala, summoned.
Visit the Golden Isle |q 53969/1 |goto Vol'dun/0 28.77,88.96 |or
'|learnpet Froglet##2577 |or
step
use the Casteless Zandalari Whistle##164965
_Next to you:_
talk Azala##145463
turnin The Sethrak Queen##53970 |or 3
turnin Hunting for Gold##53969 |or 3
accept Return to the Hall of Castes##53971 |or 3
'|learnpet Froglet##2577 |or
step
use the Casteless Zandalari Whistle##164965
|tip Inside the building
Return to the Hall of Castes |q 53971/1 |goto Dazar'alor/0 53.86,84.82 |or
'|learnpet Froglet##2577 |or
step
use the Casteless Zandalari Whistle##164965
_Next to you:_
talk Azala##145463
turnin Return to the Hall of Castes##53971 |or
|tip Be sure to choose the Slimy Pouch as a reward.
'|learnpet Froglet##2577 |or
step
collect 1 Slimy Pouch##167011 |or
'|learnpet Froglet##2577 |or
step
use the Slimy Pouch##167011
Collect the "Froglet" Battle Pet |learnpet Froglet##2577
step
_Congratulations!_
You Collected a "Froglet" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Hermit Crab",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured in the wild along the coast of Vol'dun, Tiragarde Sound, and certain areas of Stormsong Valley.",
pet=2399,
},[[
step
clicknpc Hermit Crab##143056
Weaken and capture the Hermit Crab in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Hermit Crab" Battle Pet |learnpet Hermit Crab##2399 |goto Vol'dun/0 39.37,27.03
step
_Congratulations!_
You Collected a "Hermit Crab" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Inky",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2461,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Inky as a reward.
collect 1 Inky##163802 |goto Dazar'alor/0 44.53,95.34
only if not haspet(2461)
step
use Inky##163802
Collect the "Inky" Battle Pet |learnpet Inky##2461
step
_Congratulations!_
You Collected an "Inky" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Inland Croaker",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured in the wild around inland waterways in Tiragarde Sound.",
pet=2382,
},[[
step
clicknpc Inland Croaker##143041
Weaken and capture the Inland Croaker in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Inland Croaker" Battle Pet |learnpet Inland Croaker##2382 |goto Tiragarde Sound/0 61.88,17.48
step
_Congratulations!_
You Collected an "Inland Croaker" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Juvenile Brineshell",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2453,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get a Juvenile Brineshell as a reward.
collect 1 Juvenile Brineshell##163821 |goto Dazar'alor/0 44.53,95.34
only if not haspet(2453)
step
use the Juvenile Brineshell##163821
Collect the "Juvenile Brineshell" Battle Pet |learnpet Juvenile Brineshell##2453
step
_Congratulations!_
You Collected a "Juvenile Brineshell" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Lost Platysaur",{
patch='80100',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Talutu in Zuldazar for 100,000 gold.",
pet=2430,
},[[
step
talk Talutu##125879
buy 1 Lost Platysaur##163568 |goto Dazar'alor/0 48.58,87.09
|tip It costs 100,000 Gold.
only if not haspet(2430)
step
use the Lost Platysaur##163568
Collect the "Lost Platysaur" Battle Pet |learnpet Lost Platysaur##2430
step
_Congratulations!_
You Collected a "Lost Platysaur" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Lustrous Glimmershell",{
patch='82000',
source='Quest',
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Aquatic","Poen","Gillbrack"},
pet=2687,
description="This battle pet is awarded after reaching rank 20 with Poen Gillbrack.",
},[[
step
_Next to you:_
talk Poen Gillbrack##151310
accept Glittering Shell##56215
|tip You must first reach rank 20 before being able to accept this quest.
|tip Complete bodyguard quests using the Nazjatar World Quest guide with Poen Gillbrack chosen.
step
collect 1 Lustrous Glimmershell##169353 |or
'|learnpet Lustrous Glimmershell##2687 |or
step
use Lustrous Glimmershell##169353
Learn the "Lustrous Glimmershell" Battle Pet |learnpet Lustrous Glimmershell##2687
step
_Congratulations!_
You Collected the "Lustrous Glimmershell" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Mr. Crabs",{
patch='81500',
source='Quest',
author="support@zygorguides.com",
description="This pet can be collected after completing the Zandalar Children's Week event quests.",
keywords={"Aquatic","Children's","Week"},
pet=2575,
},[[
step
Wait for Children's Week to Begin |complete isevent("Children's Week") |or
|tip This event starts on May 2 and ends on May 9.
'|learnpet Mr. Crabs##2575 |or
step
talk Caretaker Padae##131346
|tip Inside the building
accept Children's Week##53965 |goto Dazar'alor/0 54.63,84.60 |or
'|learnpet Mr. Crabs##2575 |or
step
use the Casteless Zandalari Whistle##164965
_Next to you:_
talk Azala##145463
turnin Children's Week##53965 |or 4
accept Loa of Winds##53966 |or 4
accept The Shifting Pack##53968 |or 4
accept The Frogmarsh##53967 |or 4
'|learnpet Mr. Crabs##2575 |or
step
Cross the bridge |goto Zuldazar/0 66.92,43.17 < 15 |only if walking
Follow the path up |goto Zuldazar/0 66.09,46.41 < 20 |only if walking
use the Casteless Zandalari Whistle##164965
|tip Ensure that you have your orphan, Azala, summoned.
Visit Pterror Rise |q 53966/1 |goto Zuldazar/0 70.58,49.14 |or
'|learnpet Mr. Crabs##2575 |or
step
Cross the bridge |goto Zuldazar/0 49.78,29.05 < 20 |only if walking
use the Casteless Zandalari Whistle##164965
|tip Ensure that you have your orphan, Azala, summoned.
Visit Lair of Gonk |q 53968/1 |goto Zuldazar/0 48.71,31.74 |or
'|learnpet Mr. Crabs##2575 |or
step
use the Casteless Zandalari Whistle##164965
|tip Ensure that you have your orphan, Azala, summoned.
Visit Krag'wa's Burrow |q 53967/1 |goto Nazmir/0 73.27,53.36 |or
'|learnpet Mr. Crabs##2575 |or
step
use the Casteless Zandalari Whistle##164965
_Next to you:_
talk Azala##145463
turnin Loa of Winds##53966 |or 5
turnin The Shifting Pack##53968 |or 5
turnin The Frogmarsh##53967 |or 5
accept The Sethrak Queen##53970 |or 5
accept Hunting for Gold##53969 |or 5
'|learnpet Mr. Crabs##2575 |or
step
use the Casteless Zandalari Whistle##164965
|tip Ensure that you have your orphan, Azala, summoned.
|tip Upstairs inside the building.
Visit Terrace of the Devoted |q 53970/1 |goto Vol'dun/0 27.11,52.57 |or
'|learnpet Mr. Crabs##2575 |or
step
Jump down here |goto Vol'dun/0 41.96,77.72 < 20 |only if walking
Cross the water |goto Vol'dun/0 33.88,85.82 < 20 |only if walking
use the Casteless Zandalari Whistle##164965
|tip Ensure that you have your orphan, Azala, summoned.
Visit the Golden Isle |q 53969/1 |goto Vol'dun/0 28.77,88.96 |or
'|learnpet Mr. Crabs##2575 |or
step
use the Casteless Zandalari Whistle##164965
_Next to you:_
talk Azala##145463
turnin The Sethrak Queen##53970 |or 3
turnin Hunting for Gold##53969 |or 3
accept Return to the Hall of Castes##53971 |or 3
'|learnpet Mr. Crabs##2575 |or
step
use the Casteless Zandalari Whistle##164965
|tip Inside the building
Return to the Hall of Castes |q 53971/1 |goto Dazar'alor/0 53.86,84.82 |or
'|learnpet Mr. Crabs##2575 |or
step
use the Casteless Zandalari Whistle##164965
_Next to you:_
talk Azala##145463
turnin Return to the Hall of Castes##53971 |or
|tip Be sure to choose the Sandy Hermit Crab Shell as a reward.
'|learnpet Mr. Crabs##2575 |or
step
collect 1 Sandy Hermit Crab Shell##167008 |or
'|learnpet Mr. Crabs##2575 |or
step
use the Sandy Hermit Crab Shell##167008
Collect the "Mr. Crabs" Battle Pet |learnpet Mr. Crabs##2575
step
_Congratulations!_
You Collected a "Mr. Crabs" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Octopode Fry",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2462,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Octopode Fry as a reward.
collect 1 Octopode Fry##163801 |goto Dazar'alor/0 44.53,95.34
only if not haspet(2462)
step
use the Octopode Fry##163801
Collect the "Octopode Fry" Battle Pet |learnpet Octopode Fry##2462
step
_Congratulations!_
You Collected an "Octopode Fry" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Pearlescent Glimmershell",{
patch='82000',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Finder Pruc in Newhome for 150 Prismatic Manapearls.",
pet=2686,
},[[
step
Collect 150 Prismatic Manapearls |complete curcount(1721) >= 150 |or
|tip They can be acquired from rares and various quests around Nazjatar.
'|complete haspet(2686) |or
step
talk Finder Pruc##153512
buy 1 Pearlescent Glimmershell##169352 |goto Nazjatar/0 49.20,62.25 |or
'|complete haspet(2686) |or
step
use the Pearlescent Glimmershell##169352
Collect the "Pearlescent Glimmershell" Battle Pet |learnpet Pearlescent Glimmershell##2686
step
_Congratulations!_
You Collected a "Pearlescent Glimmershell" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\River Frog",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured in the wild around areas of water in northern Stormsong Valley.",
pet=2373,
},[[
step
clicknpc River Frog##143032
Weaken and capture the River Frog in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "River Frog" Battle Pet |learnpet River Frog##2373 |goto Stormsong Valley/0 64.80,43.86
step
_Congratulations!_
You Collected a "River Frog" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\River Otter",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured in the wild around areas of water in northern Stormsong Valley "..
"and just northwest of Arom's Stand in Drustvar.",
pet=2378,
},[[
step
clicknpc River Otter##143037
Weaken and capture the River Otter in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "River Otter" Battle Pet |learnpet River Otter##2378 |goto Stormsong Valley/0 60.87,36.26
step
_Congratulations!_
You Collected a "River Otter" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Sandyback Crawler",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured in the wild around the channel of water in eastern Stormsong Valley "..
"or along the coast east of Bridgeport in Tiragarde Sound.",
pet=2377,
},[[
step
clicknpc Sandyback Crawler##143036
Weaken and capture the Sandyback Crawler in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Sandyback Crawler" Battle Pet |learnpet Sandyback Crawler##2377 |goto Stormsong Valley/0 64.83,51.97
step
_Congratulations!_
You Collected a "Sandyback Crawler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Scuttle",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2445,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Scuttle as a reward.
collect 1 Scuttle##163797 |goto Dazar'alor/0 44.53,95.34
only if not haspet(2445)
step
use Scuttle##163797
Collect the "Scuttle" Battle Pet |learnpet Scuttle##2445
step
_Congratulations!_
You Collected a "Scuttle" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Shack Crab",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured in the wild along certain coastal areas of Tiragarde Sound.",
pet=2381,
},[[
step
clicknpc Shack Crab##143040
Weaken and capture the Shack Crab in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Shack Crab" Battle Pet |learnpet Shack Crab##2381 |goto Tiragarde Sound/0 67.73,48.93
step
_Congratulations!_
You Collected a "Shack Crab" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Shadowback Crawler",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured in the wild along the coast southwest of Shrine of the Storm in Stormsong Valley.",
pet=2372,
},[[
step
clicknpc Shadowback Crawler##143031
Weaken and capture the Shadowback Crawler in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Shadowback Crawler" Battle Pet |learnpet Shadowback Crawler##2372 |goto Stormsong Valley/0 70.13,31.00
step
_Congratulations!_
You Collected a "Shadowback Crawler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Sir Snips",{
patch='80100',
source='Achievement',
author="support@zygorguides.com",
description="This pet can be collected by reaching Honor Level 400 in PvP activities.",
condition_valid=function() return Alliance end,
condition_valid_msg="This pet must be collected on an Alliance character.",
pet=2478,
},[[
step
talk Auctioneer Drezmit##44866
|tip Inside the building.
collect Sir Snips##163975 |complete haspet(2478)
|tip This pet can only be purchased from an Alliance NPC.
|tip If you are Horde you can purchase it from the Auction House.
step
use Sir Snips##163975
Collect the "Sir Snips" Battle Pet |learnpet Sir Snips##2478 |goto Orgrimmar/1 54.08,73.36
step
_Congratulations!_
You Collected a "Sir Snips" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Slippy",{
patch='80100',
source='Profession',
author="support@zygorguides.com",
description="This pet can be crafted with the Alchemy profession.",
pet=2475,
},[[
step
This pet is created with the Alchemy Profession, with the _"Transmute: Meat to Pet"_ ability
|tip You will need level 50 Battle for Azeroth Alchemy to create this.
|tip You'll need 10 Meaty Haunch, 10 Stringy Loins and 5 Blood-Stained Bone to create this.
|tip After crafting a Grumbling Sac, it will turn into a Quivering Sac after 7 days.
collect Quivering Sac##160325 |complete haspet(2475)
step
use the Quivering Sac##160325
collect Ball of Tentacles##163858 |complete haspet(2475)
step
use the Ball of Tentacles##163858
Collect the "Slippy" Battle Pet |learnpet Slippy##2475
step
_Congratulations!_
You Collected a "Slippy" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Snapper",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2472,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Snapper as a reward.
collect 1 Snapper##163816 |goto Dazar'alor/0 44.53,95.34
only if not haspet(2472)
step
use Snapper##163816
Collect the "Snapper" Battle Pet |learnpet Snapper##2472
step
_Congratulations!_
You Collected a "Snapper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Sparkleshell Sandcrawler",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2446,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get a Sparkleshell Sandcrawler as a reward.
collect 1 Sparkleshell Sandcrawler##163803 |goto Dazar'alor/0 44.53,95.34
only if not haspet(2446)
step
use the Sparkleshell Sandcrawler##163803
Collect the "Sparkleshell Sandcrawler" Battle Pet |learnpet Sparkleshell Sandcrawler##2446
step
_Congratulations!_
You Collected a "Sparkleshell Sandcrawler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Spawn of Krag'wa",{
patch='81000',
source='Drop',
author="support@zygorguides.com",
description="This pet is collected from the Conclave of the Chosen encounter in the Battle for Dazar'alor raid."..
"It is available to Mythic difficulty only.",
pet=2528,
},[[
step
Kill the Conclave of the Chosen
collect Spawn of Krag'wa##165848 |complete haspet(2528)
|tip If it didn't drop, you will need to wait until the raid resets or with another character.
step
use the Spawn of Krag'wa##165848
Collect the "Spawn of Krag'wa" Battle Pet |learnpet Spawn of Krag'wa##2528
step
_Congratulations!_
You Collected the "Child of Pa'ku" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Swamp Toad",{
patch='80100',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Shoak in Nazmir for 200 Polished Pet Charms.",
pet=2419,
},[[
step
collect 200 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2419)
step
talk Shoak##132011
buy 1 Toad in a Box##163505 |goto Nazmir/0 66.91,42.06
only if not haspet(2419)
step
use the Toad in a Box##163505
Collect the "Swamp Toad" Battle Pet |learnpet Swamp Toad##2419
step
_Congratulations!_
You Collected a "Swamp Toad" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Tonguelasher",{
patch='81000',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2559,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get a Tonguelasher as a reward.
collect Tonguelasher##166495 |complete haspet(2559)
step
use the Tonguelasher##166495
Collect the "Tonguelasher" Battle pet |learnpet Tonguelasher##2559
step
_Congratulations!_
You Collected the "Tonguelasher" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Tottle",{
patch='80100',
source='Promotion',
author="support@zygorguides.com",
description="This pet is awarded upon purchase of the Battle for Azeroth Collector's Edition.",
pet=2143,
},[[
step
This is an award from buying the Collector's Edition of Battle for Azeroth
collect 1 Tottle##153541
|tip It will arrive in your mail.
only if not haspet(2143)
step
use Tottle##153541
Collect the "Tottle" Battle Pet |learnpet Tottle##2143
step
_Congratulations!_
You Collected a "Tottle" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Tragg the Curious",{
patch='80100',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Provisioner Lija in Nazmir for 75 Polished Pet Charms."..
"_Requires Talanji's Expedition - Revered_",
pet=2415,
},[[
step
collect 75 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2415)
step
talk Provisioner Lija##135459
buy 1 Tragg the Curious##163501 |goto Nazmir/0 39.10,79.47
only if not haspet(2415)
step
use Tragg the Curious##163501
Collect the "Tragg the Curious" Battle Pet |learnpet Tragg the Curious##2415
step
_Congratulations!_
You Collected a "Tragg the Curious" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Violet Abyssal Eel",{
patch='81000',
source='Drop',
author="support@zygorguides.com",
description="This pet can be collected through Storm's Wake Paragon reputation boxes."..
"You cannot obtain this by normal means as a horde character.",
pet=2569,
},[[
step
This Pet is Available for Purchase to the Alliance Faction Only
|tip You will need to purchase this from the Auction House or use an Alliance character to attain this pet.
talk Auctioneer Drezmit##44866
|tip Inside the building.
buy Violet Abyssal Eel##149376 |goto Orgrimmar/1 54.08,73.36 |complete haspet(2569)
step
use the Violet Abyssal Eel##149376
Collect the "Violet Abyssal Eel" Battle Pet |learnpet Violet Abyssal Eel##2569
step
_Congratulations!_
You Collected the "Violet Abyssal Eel" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Young Sand Sifter",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured in the wild along coastal areas of Nazmir.",
pet=2392,
},[[
step
clicknpc Young Sand Sifter##143050
Weaken and capture the Young Sand Sifter in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Young Sand Sifter" Battle Pet |learnpet Young Sand Sifter##2392 |goto Nazmir/0 31.03,28.15
step
_Congratulations!_
You Collected a "Young Sand Sifter" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Slimy Eel",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
description="This pet can be collected by feeding four Ravenous Slimes in Nazjatar for "..
"five days in a row.",
pet=2758,
},[[
step
click Strange Crystal
accept A Curious Discovery##56560 |goto Nazjatar/0 32.81,39.59
step
talk Narv##154393
turnin A Curious Discovery##56560 |goto Nazjatar/0 49.15,61.46
step
label "Collect_Prismatic_Crystals"
collect 4 Prismatic Crystal##167893 |or
|tip These can be found near waterfalls across Nazjatar.
'|complete haspet(2758) |or
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55430,55473) or haspet(2758) |goto Nazjatar/0 32.76,39.53
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55429,55472) or haspet(2758) |goto Nazjatar/0 45.70,24.11
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55427,55470) or haspet(2758) |goto Nazjatar/0 54.90,48.70
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55428,55471) or haspet(2758) |goto Nazjatar/0 71.71,25.70
step
label "Wait_For_Reset"
You have fed all of the Ravenous slimes |only if not completedq(55478,55477,55475,55476)
You did not get the Slimy Eel this week |only if completedq(55478,55477,55475,55476)
|tip This guide will reset when you can feed the slimes again.
'|complete haspet(2758) |or
'|complete not completedq(55430,55429,55427,55428) and not completedq(55473,55472,55470,55471) and not haspet(2758) |next "Collect_Prismatic_Crystals" |or
'|complete completedq(55473) and completedq(55472) and completedq(55470) and completedq(55471) and not completedq(55478,55477,55475,55476) and not haspet(2758) |next "Collect_Battle_Pet" |or
step
label "Collect_Battle_Pet"
click Slimy Cocoon
Loot the Cocoon |complete completedq(55478,55477,55475,55476) and itemcount(167808) >= 1 or haspet(2758) |goto Nazjatar/0 71.71,25.70 |or
'|complete completedq(55478,55477,55475,55476) and itemcount(167808) == 0 and not haspet(2758) |next "Wait_For_Reset" |or
step
use the Slimy Eel##167808
Collect the "Slimy Eel" Battle Pet |learnpet Slimy Eel##2758
step
_Congratulations!_
You Collected a "Slimy Eel" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Slimy Sea Slug",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
description="This pet can be collected by feeding four Ravenous Slimes in Nazjatar for "..
"five days in a row.",
pet=2765,
},[[
step
click Strange Crystal
accept A Curious Discovery##56560 |goto Nazjatar/0 32.81,39.59
step
talk Narv##154393
turnin A Curious Discovery##56560 |goto Nazjatar/0 49.15,61.46
step
label "Collect_Prismatic_Crystals"
collect 4 Prismatic Crystal##167893 |or
|tip These can be found near waterfalls across Nazjatar.
'|complete haspet(2765) |or
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55430,55473) or haspet(2765) |goto Nazjatar/0 32.76,39.53
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55429,55472) or haspet(2765) |goto Nazjatar/0 45.70,24.11
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55427,55470) or haspet(2765) |goto Nazjatar/0 54.90,48.70
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55428,55471) or haspet(2765) |goto Nazjatar/0 71.71,25.70
step
label "Wait_For_Reset"
You have fed all of the Ravenous slimes |only if not completedq(55478,55477,55475,55476)
You did not get the Slimy Sea Slug this week |only if completedq(55478,55477,55475,55476)
|tip This guide will reset when you can feed the slimes again.
'|complete haspet(2765) |or
'|complete not completedq(55430,55429,55427,55428) and not completedq(55473,55472,55470,55471) and not haspet(2765) |next "Collect_Prismatic_Crystals" |or
'|complete completedq(55473) and completedq(55472) and completedq(55470) and completedq(55471) and not completedq(55478,55477,55475,55476) and not haspet(2765) |next "Collect_Battle_Pet" |or
step
label "Collect_Battle_Pet"
click Slimy Cocoon
Loot the Cocoon |complete completedq(55478,55477,55475,55476) and itemcount(167804) >= 1 or haspet(2765) |goto Nazjatar/0 71.71,25.70 |or
'|complete completedq(55478,55477,55475,55476) and itemcount(167804) == 0 and not haspet(2765) |next "Wait_For_Reset" |or
step
use the Slimy Sea Slug##167804
Collect the "Slimy Sea Slug" Battle Pet |learnpet Slimy Sea Slug##2765
step
_Congratulations!_
You Collected a "Slimy Sea Slug" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Slimy Otter",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
description="This pet can be collected by feeding four Ravenous Slimes in Nazjatar for "..
"five days in a row.",
pet=2757,
},[[
step
click Strange Crystal
accept A Curious Discovery##56560 |goto Nazjatar/0 32.81,39.59
step
talk Narv##154393
turnin A Curious Discovery##56560 |goto Nazjatar/0 49.15,61.46
step
label "Collect_Prismatic_Crystals"
collect 4 Prismatic Crystal##167893 |or
|tip These can be found near waterfalls across Nazjatar.
'|complete haspet(2757) |or
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55430,55473) or haspet(2757) |goto Nazjatar/0 32.76,39.53
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55429,55472) or haspet(2757) |goto Nazjatar/0 45.70,24.11
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55427,55470) or haspet(2757) |goto Nazjatar/0 54.90,48.70
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55428,55471) or haspet(2757) |goto Nazjatar/0 71.71,25.70
step
label "Wait_For_Reset"
You have fed all of the Ravenous slimes |only if not completedq(55478,55477,55475,55476)
You did not get the Slimy Otter this week |only if completedq(55478,55477,55475,55476)
|tip This guide will reset when you can feed the slimes again.
'|complete haspet(2757) |or
'|complete not completedq(55430,55429,55427,55428) and not completedq(55473,55472,55470,55471) and not haspet(2757) |next "Collect_Prismatic_Crystals" |or
'|complete completedq(55473) and completedq(55472) and completedq(55470) and completedq(55471) and not completedq(55478,55477,55475,55476) and not haspet(2757) |next "Collect_Battle_Pet" |or
step
label "Collect_Battle_Pet"
click Slimy Cocoon
Loot the Cocoon |complete completedq(55478,55477,55475,55476) and itemcount(167805) >= 1 or haspet(2757) |goto Nazjatar/0 71.71,25.70 |or
'|complete completedq(55478,55477,55475,55476) and itemcount(167805) == 0 and not haspet(2757) |next "Wait_For_Reset" |or
step
use the Slimy Otter##167805
Collect the "Slimy Otter" Battle Pet |learnpet Slimy Otter##2757
step
_Congratulations!_
You Collected a "Slimy Otter" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Slimy Octopode",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
description="This pet can be collected by feeding four Ravenous Slimes in Nazjatar for "..
"five days in a row.",
pet=2760,
},[[
step
click Strange Crystal
accept A Curious Discovery##56560 |goto Nazjatar/0 32.81,39.59
step
talk Narv##154393
turnin A Curious Discovery##56560 |goto Nazjatar/0 49.15,61.46
step
label "Collect_Prismatic_Crystals"
collect 4 Prismatic Crystal##167893 |or
|tip These can be found near waterfalls across Nazjatar.
'|complete haspet(2760) |or
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55430,55473) or haspet(2760) |goto Nazjatar/0 32.76,39.53
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55429,55472) or haspet(2760) |goto Nazjatar/0 45.70,24.11
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55427,55470) or haspet(2760) |goto Nazjatar/0 54.90,48.70
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55428,55471) or haspet(2760) |goto Nazjatar/0 71.71,25.70
step
label "Wait_For_Reset"
You have fed all of the Ravenous slimes |only if not completedq(55478,55477,55475,55476)
You did not get the Slimy Octopode this week |only if completedq(55478,55477,55475,55476)
|tip This guide will reset when you can feed the slimes again.
'|complete haspet(2760) |or
'|complete not completedq(55430,55429,55427,55428) and not completedq(55473,55472,55470,55471) and not haspet(2760) |next "Collect_Prismatic_Crystals" |or
'|complete completedq(55473) and completedq(55472) and completedq(55470) and completedq(55471) and not completedq(55478,55477,55475,55476) and not haspet(2760) |next "Collect_Battle_Pet" |or
step
label "Collect_Battle_Pet"
click Slimy Cocoon
Loot the Cocoon |complete completedq(55478,55477,55475,55476) and itemcount(167806) >= 1 or haspet(2760) |goto Nazjatar/0 71.71,25.70 |or
'|complete completedq(55478,55477,55475,55476) and itemcount(167806) == 0 and not haspet(2760) |next "Wait_For_Reset" |or
step
use the Slimy Octopode##167806
Collect the "Slimy Octopode" Battle Pet |learnpet Slimy Octopode##2760
step
_Congratulations!_
You Collected a "Slimy Octopode" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Slimy Hermit Crab",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
description="This pet can be collected by feeding four Ravenous Slimes in Nazjatar for "..
"five days in a row.",
pet=2763,
},[[
step
click Strange Crystal
accept A Curious Discovery##56560 |goto Nazjatar/0 32.81,39.59
step
talk Narv##154393
turnin A Curious Discovery##56560 |goto Nazjatar/0 49.15,61.46
step
label "Collect_Prismatic_Crystals"
collect 4 Prismatic Crystal##167893 |or
|tip These can be found near waterfalls across Nazjatar.
'|complete haspet(2763) |or
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55430,55473) or haspet(2763) |goto Nazjatar/0 32.76,39.53
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55429,55472) or haspet(2763) |goto Nazjatar/0 45.70,24.11
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55427,55470) or haspet(2763) |goto Nazjatar/0 54.90,48.70
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55428,55471) or haspet(2763) |goto Nazjatar/0 71.71,25.70
step
label "Wait_For_Reset"
You have fed all of the Ravenous slimes |only if not completedq(55478,55477,55475,55476)
You did not get the Slimy Hermit Crab this week |only if completedq(55478,55477,55475,55476)
|tip This guide will reset when you can feed the slimes again.
'|complete haspet(2763) |or
'|complete not completedq(55430,55429,55427,55428) and not completedq(55473,55472,55470,55471) and not haspet(2763) |next "Collect_Prismatic_Crystals" |or
'|complete completedq(55473) and completedq(55472) and completedq(55470) and completedq(55471) and not completedq(55478,55477,55475,55476) and not haspet(2763) |next "Collect_Battle_Pet" |or
step
label "Collect_Battle_Pet"
click Slimy Cocoon
Loot the Cocoon |complete completedq(55478,55477,55475,55476) and itemcount(167810) >= 1 or haspet(2763) |goto Nazjatar/0 71.71,25.70 |or
'|complete completedq(55478,55477,55475,55476) and itemcount(167810) == 0 and not haspet(2763) |next "Wait_For_Reset" |or
step
use the Slimy Hermit Crab##167810
Collect the "Slimy Hermit Crab" Battle Pet |learnpet Slimy Hermit Crab##2763
step
_Congratulations!_
You Collected a "Slimy Hermit Crab" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Slimy Fangtooth",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
description="This pet can be collected by feeding four Ravenous Slimes in Nazjatar for "..
"five days in a row.",
pet=2761,
},[[
step
click Strange Crystal
accept A Curious Discovery##56560 |goto Nazjatar/0 32.81,39.59
step
talk Narv##154393
turnin A Curious Discovery##56560 |goto Nazjatar/0 49.15,61.46
step
label "Collect_Prismatic_Crystals"
collect 4 Prismatic Crystal##167893 |or
|tip These can be found near waterfalls across Nazjatar.
'|complete haspet(2761) |or
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55430,55473) or haspet(2761) |goto Nazjatar/0 32.76,39.53
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55429,55472) or haspet(2761) |goto Nazjatar/0 45.70,24.11
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55427,55470) or haspet(2761) |goto Nazjatar/0 54.90,48.70
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55428,55471) or haspet(2761) |goto Nazjatar/0 71.71,25.70
step
label "Wait_For_Reset"
You have fed all of the Ravenous slimes |only if not completedq(55478,55477,55475,55476)
You did not get the Slimy Fangtooth this week |only if completedq(55478,55477,55475,55476)
|tip This guide will reset when you can feed the slimes again.
'|complete haspet(2761) |or
'|complete not completedq(55430,55429,55427,55428) and not completedq(55473,55472,55470,55471) and not haspet(2761) |next "Collect_Prismatic_Crystals" |or
'|complete completedq(55473) and completedq(55472) and completedq(55470) and completedq(55471) and not completedq(55478,55477,55475,55476) and not haspet(2761) |next "Collect_Battle_Pet" |or
step
label "Collect_Battle_Pet"
click Slimy Cocoon
Loot the Cocoon |complete completedq(55478,55477,55475,55476) and itemcount(167807) >= 1 or haspet(2761) |goto Nazjatar/0 71.71,25.70 |or
'|complete completedq(55478,55477,55475,55476) and itemcount(167807) == 0 and not haspet(2761) |next "Wait_For_Reset" |or
step
use the Slimy Fangtooth##167807
Collect the "Slimy Fangtooth" Battle Pet |learnpet Slimy Fangtooth##2761
step
_Congratulations!_
You Collected a "Slimy Fangtooth" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Slimy Darkhunter",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
description="This pet can be collected by feeding four Ravenous Slimes in Nazjatar for "..
"five days in a row.",
pet=2762,
},[[
step
click Strange Crystal
accept A Curious Discovery##56560 |goto Nazjatar/0 32.81,39.59
step
talk Narv##154393
turnin A Curious Discovery##56560 |goto Nazjatar/0 49.15,61.46
step
label "Collect_Prismatic_Crystals"
collect 4 Prismatic Crystal##167893 |or
|tip These can be found near waterfalls across Nazjatar.
'|complete haspet(2762) |or
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55430,55473) or haspet(2762) |goto Nazjatar/0 32.76,39.53
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55429,55472) or haspet(2762) |goto Nazjatar/0 45.70,24.11
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55427,55470) or haspet(2762) |goto Nazjatar/0 54.90,48.70
step
use the Prismatic Crystal##167893
|tip Use it on any non-aquatic critter in Nazjatar.
|tip You can find slugs, snails, crabs, and birds all over Nazjatar.
Feed the Ravenous Slime |complete completedq(55428,55471) or haspet(2762) |goto Nazjatar/0 71.71,25.70
step
label "Wait_For_Reset"
You have fed all of the Ravenous slimes |only if not completedq(55478,55477,55475,55476)
You did not get the Slimy Darkhunter this week |only if completedq(55478,55477,55475,55476)
|tip This guide will reset when you can feed the slimes again.
'|complete haspet(2762) |or
'|complete not completedq(55430,55429,55427,55428) and not completedq(55473,55472,55470,55471) and not haspet(2762) |next "Collect_Prismatic_Crystals" |or
'|complete completedq(55473) and completedq(55472) and completedq(55470) and completedq(55471) and not completedq(55478,55477,55475,55476) and not haspet(2762) |next "Collect_Battle_Pet" |or
step
label "Collect_Battle_Pet"
click Slimy Cocoon
Loot the Cocoon |complete completedq(55478,55477,55475,55476) and itemcount(167809) >= 1 or haspet(2762) |goto Nazjatar/0 71.71,25.70 |or
'|complete completedq(55478,55477,55475,55476) and itemcount(167809) == 0 and not haspet(2762) |next "Wait_For_Reset" |or
step
use the Slimy Darkhunter##167809
Collect the "Slimy Darkhunter" Battle Pet |learnpet Slimy Darkhunter##2762
step
_Congratulations!_
You Collected a "Slimy Darkhunter" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Baby Crawg",{
patch='80100',
source='Profession',
author="support@zygorguides.com",
description="This pet can be crafted with the Alchemy profession.",
pet=2477,
},[[
step
This pet is created with the Alchemy Profession, with the _"Transmute: Meat to Pet"_ ability
|tip You will need level 50 Battle for Azeroth Alchemy to create this.
|tip You'll need 10 Meaty Haunch, 10 Stringy Loins and 5 Blood-Stained Bone to create this.
collect Quivering Sac##160325 |n
use the Quivering Sac##160325
|tip Right click the Quivering Sac in your bag.
collect Baby Crawg##163859 |complete haspet(2477)
step
use the Baby Crawg##163859
Collect the "Baby Crawg" Battle Pet |learnpet Baby Crawg##2477
step
_Congratulations!_
You Collected a "Baby Crawg" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Baby Stonehide",{
patch='81000',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2551,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Baby Stonehide as a reward.
collect Baby Stonehide##166486 |complete haspet(2551)
step
use Baby Stonehide##166486
Collect the "Baby Stonehide" Battle Pet |learnpet Baby Stonehide##2551
step
_Congratulations!_
You Collected a "Baby Stonehide" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Baby Zandalari Raptor",{
patch='81000',
source='PetBattle',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2537,
},[[
step
clicknpc Baby Zandalari Raptor##148517
Weaken and capture the Baby Zandalari Raptor in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Baby Zandalari Raptor" Battle Pet |learnpet Spectral Raven##148517 |goto Zuldazar/0 70.93,40.79
step
_Congratulations!_
You Collected a "Baby Zandalari Raptor" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Bloodfever Tarantula",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured in the wild in the western portion of Nazmir.",
pet=2388,
},[[
step
clicknpc Bloodfever Tarantula##143047
Weaken and capture the Bloodfever Tarantula in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Bloodfever Tarantula" Battle Pet |learnpet Bloodfever Tarantula##2388 |goto Nazmir/0 36.47,53.81
step
_Congratulations!_
You Collected a "Bloodfever Tarantula" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Bloodstone Tunneler",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2451,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get a Bloodstone Tunneler as a reward.
collect 1 Bloodstone Tunneler##163818 |goto Dazar'alor/0 44.53,95.34
only if not haspet(2451)
step
use the Bloodstone Tunneler##163818
Collect the "Bloodstone Tunneler" Battle Pet |learnpet Bloodstone Tunneler##2451
step
_Congratulations!_
You Collected a "Bloodstone Tunneler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Child of Jani",{
patch='80100',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Happy Holaua in Zuldazar for 100 Polished Pet Charms.",
pet=2418,
},[[
step
Earned the "Get Hek'd" Achievement |achieve 12482
|tip Use the "Zuldazar" leveling guide to accomplish this.
step
collect 100 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2418)
step
Enter the building |goto Dazar'alor/0 56.95,32.06 < 5 |walk
talk Happy Holaua##132097
|tip Inside the building.
buy 1 Child of Jani##163504 |goto Dazar'alor/0 55.93,32.35
only if not haspet(2418)
step
use the Child of Jani##163504
Collect the "Child of Jani" Battle Pet |learnpet Child of Jani##2418
step
_Congratulations!_
You Collected a "Child of Jani" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Craghoof Kid",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2448,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get a Craghoof Kid as a reward.
collect 1 Craghoof Kid##163805 |goto Dazar'alor/0 44.53,95.34
only if not haspet(2448)
step
use the Craghoof Kid##163805
Collect the "Craghoof Kid" Battle Pet |learnpet Craghoof Kid##2448
step
_Congratulations!_
You Collected a "Craghoof Kid" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Dart",{
patch='80100',
source='Quest',
author="support@zygorguides.com",
description="This pet is awarded from the quest \"It seems You've Made a Friend\" in Nazmir.",
pet=2157,
},[[
step
collect Dart##156566 |complete haspet(2157)
|tip This is accomplished by completing the "It Seems You've Made a Friend" quest in Nazmir.
|tip Refer to the Nazmir Leveling guide to accomplish this.
step
use Dart##156566
Collect the "Dart" Battle Pet |learnpet Dart##2157
step
_Congratulations!_
You Collected a "Dart" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Dasher",{
patch='81000',
source='Drop',
author="support@zygorguides.com",
description="This pet is awarded from.",
pet=2538,
},[[
step
kill N'chala the Egg Thief##149147
|tip N'chala is a rare that walks around this area.
|tip You may have to wait for it to respawn.
collect 1 Zandalari Raptor Egg##166345 |goto Zuldazar/0 69.64,36.91
only if not haspet(2538)
step
use the Zandalari Raptor Egg##166345
Collect the "Dasher" Battle Pet |learnpet Dasher##2538
step
_Congratulations!_
You Collected a "Dasher" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Deathsting Scorpid",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2464,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get a Deathsting Scorpid as a reward.
collect 1 Deathsting Scorpid##163809 |goto Dazar'alor/0 44.53,95.34
only if not haspet(2464)
step
use the Deathsting Scorpid##163809
Collect the "Deathsting Scorpid" Battle Pet |learnpet Deathsting Scorpid##2464
step
_Congratulations!_
You Collected a "Deathsting Scorpid" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Direhorn Hatchling",{
patch='80100',
source='Profession',
author="support@zygorguides.com",
description="This pet is a reward from a rare Zandalari Archaeology solve.",
pet=2197,
},[[
step
collect Intact Direhorn Egg##161080 |complete haspet(2197)
|tip This is gathered with Zandalari Archaeology.
|tip It will be a rare solve, requiring 185 Zandalari Fragments.
|tip You can also buy this from the Auction House.
step
use the Intact Direhorn Egg##161080
Collect the "Direhorn Hatchling" Battle Pet |learnpet Direhorn Hatchling##2197
step
_Congratulations!_
You Collected a "Direhorn Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Drustvar Piglet",{
patch='80100',
source='Vendor',
author="support@zygorguides.com",
description="You must be on an Alliance character to acquire this pet.",
pet=2406,
},[[
step
You must be on an Alliance character to acquire this pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Fuzzy Creepling",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is dropped by Venomarus in the Arathi Highlands Warfront.",
pet=2432,
},[[
step
click Portal to Arathi Highlands |goto Dazar'alor/0 51.87,94.54
|tip This portal will only be active while the Battle for Stromgarde Warfront is active.
Teleport to Arathi Highlands |goto Arathi Highlands/0 21.58,65.14 < 10 |c |noway
only if not haspet(2432)
step
kill Venomarus##142438
|tip It walks around this area.
collect 1 Fuzzy Creepling##163648 |goto Arathi Highlands/0 57.15,53.67
only if not haspet(2432)
step
use the Fuzzy Creepling##163648
Collect the "Fuzzy Creepling" Battle Pet |learnpet Fuzzy Creepling##2432
step
_Congratulations!_
You Collected a "Fuzzy Creepling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Guardian Cobra Hatchling",{
patch='80100',
source='Quest',
author="support@zygorguides.com",
description="This pet is awarded from the quest \"My Hungry Neighbor\" in Vol'dun.",
pet=2190,
},[[
step
collect Snake Charmer's Flute##160847 |complete haspet(2190)
|tip This is accomplished by completing the "My Hungry Neighbor" quest in Vol'dun.
|tip Refer to the Vol'dun Leveling guide to accomplish this.
step
use the Snake Charmer's Flute##160847
Collect the "Guardian Cobra Hatchling" Battle Pet |learnpet Guardian Cobra Hatchling##2190
step
_Congratulations!_
You Collected a "Guardian Cobra Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Kunchong Hatchling",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2454,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get a Kunchong Hatchling as a reward.
collect 1 Kunchong Hatchling##163822 |goto Dazar'alor/0 44.53,95.34
only if not haspet(2454)
step
use the Kunchong Hatchling##163822
Collect the "Kunchong Hatchling" Battle Pet |learnpet Kunchong Hatchling##2454
step
_Congratulations!_
You Collected a "Kunchong Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Lil' Ben'fon",{
patch='80100',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Happy Holaua in Zuldazar for 300 Polished Pet Charms.",
pet=2416,
},[[
step
Earned the "Get Hek'd" Achievement |achieve 12482
|tip Use the "Zuldazar" leveling guide to accomplish this.
step
collect 300 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2416)
step
Enter the building |goto Dazar'alor/0 56.95,32.06 < 5 |walk
talk Happy Holaua##132097
|tip Inside the building.
buy 1 Lil' Ben'fon##163502 |goto Dazar'alor/0 55.93,32.35
only if not haspet(2416)
step
use Lil' Ben'fon##163502
Collect the "Lil' Ben'fon" Battle Pet |learnpet Lil' Ben'fon##2416
step
_Congratulations!_
You Collected a "Lil' Ben'fon" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Lil' Tika",{
patch='80100',
source='Quest',
author="support@zygorguides.com",
description="This pet can be purchased from Happy Holaua in Zuldazar for 200 Polished Pet Charms.",
pet=2196,
},[[
step
Earned the "Get Hek'd" Achievement |achieve 12482
|tip Use the "Zuldazar" leveling guide to accomplish this.
step
collect 200 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2196)
step
Enter the building |goto Dazar'alor/0 56.95,32.06 < 5 |walk
talk Happy Holaua##132097
|tip Inside the building.
buy 1 Lil' Tika##161016 |goto Dazar'alor/0 55.93,32.35
only if not haspet(2196)
step
use Lil' Tika##161016
Collect the "Lil' Tika" Battle Pet |learnpet Lil' Tika##2196
step
_Congratulations!_
You Collected a "Lil' Tika" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Lord Woofington",{
patch='81000',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2558,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Lord Woofington as a reward.
collect Lord Woofington##166494 |complete haspet(2558)
step
use Lord Woofington##166494
Collect the "Lord Woofington" Battle Pet |learnpet Leatherwing Screecher##148989
step
_Congratulations!_
You Collected the "Lord Woofington" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Muskflank Calfling",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2458,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get a Muskflank Calfling as a reward.
collect 1 Muskflank Calfling##163820 |goto Dazar'alor/0 44.53,95.34
only if not haspet(2458)
step
use the Muskflank Calfling##163820
Collect the "Muskflank Calfling" Battle Pet |learnpet Muskflank Calfling##2458
step
_Congratulations!_
You Collected a "Muskflank Calfling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Poda",{
patch='80100',
source='Quest',
author="support@zygorguides.com",
description="This pet is awarded from the quest \"Missing Business\" in Vol'dun.",
pet=2188,
},[[
step
Complete the "Dangers in the Desert" quest chain in Vol'dun |q 50739 |future
|tip Use the "Vol'dun" leveling guide to accomplish this.
collect 1 Poda##158464 |only if not haspet(2188)
step
use Poda##158464
Collect the "Poda" Battle Pet |learnpet Poda##2188
step
_Congratulations!_
You Collected a "Poda" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Ragepeep",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is dropped by Ragebeak in the Arathi Highlands Warfront.",
pet=2437,
},[[
step
click Portal to Arathi Highlands |goto Dazar'alor/0 51.87,94.54
|tip This portal will only be active while the Battle for Stromgarde Warfront is active.
Teleport to Arathi Highlands |goto Arathi Highlands/0 21.58,65.14 < 10 |c |noway
only if not haspet(2437)
step
kill Ragebeak##142436
|tip It walks around this area.
collect 1 Angry Egg##163689 |goto Arathi Highlands/0 12.08,52.12
only if not haspet(2437)
step
use the Angry Egg##163689
Collect the "Ragepeep" Battle Pet |learnpet Ragepeep##2437
step
_Congratulations!_
You Collected a "Ragepeep" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Redridge Tarantula",{
patch='81000',
source='Drop',
author="support@zygorguides.com",
description="This pet comes from a the rarespawn Gnollfeaster in Redridge Mountains.",
pet=2525,
},[[
step
kill Gnollfeaster##147222
collect Redridge Tarantula Egg##165722 |goto Redridge Mountains/0 24.57,70.56 |complete haspet(2525)
step
use the Redridge Tarantula Egg##165722
Collect the "Redridge Tarantula" Battle Pet |learnpet Redridge Tarantula##2525
step
_Congratulations!_
You Collected a "Nightwreathed Watcher" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Scabby",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is dropped by Yogursa in the Arathi Highlands Warfront.",
pet=2436,
},[[
step
click Portal to Arathi Highlands |goto Dazar'alor/0 51.87,94.54
|tip This portal will only be active while the Battle for Stromgarde Warfront is active.
Teleport to Arathi Highlands |goto Arathi Highlands/0 21.58,65.14 < 10 |c |noway
only if not haspet(2436)
step
kill Yogursa##142440
|tip It walks around this area.
collect 1 Scabby##163684 |goto Arathi Highlands/0 14.55,37.60
only if not haspet(2436)
step
use Scabby##163684
Collect the "Scabby" Battle Pet |learnpet Scabby##2436
step
_Congratulations!_
You Collected a "Scabby" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Scritches",{
patch='81000',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2560,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get a Scritches as a reward.
collect Scritches##166498 |complete haspet(2560)
step
use Scritches##166498
Collect the "Scritches" Battle Pet |learnpet Scritches##2560
step
_Congratulations!_
You Collected the "Scritches" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Snort",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2459,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Snort as a reward.
collect 1 Snort##163819 |goto Dazar'alor/0 44.53,95.34
only if not haspet(2459)
step
use Snort##163819
Collect the "Snort" Battle Pet |learnpet Snort##2459
step
_Congratulations!_
You Collected a "Snort" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Spawn of Merektha",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is dropped by Merektha in the Temple of Sethraliss on Mythic difficulty.",
pet=2186,
},[[
step
Enter the Temple of Sethraliss on Mythic difficulty |goto Temple of Sethraliss/0 67.98,94.97 < 1000 |c
only if not haspet(2186)
step
kill Merektha##133384
|tip Use the "Temple of Sethraliss" dungeon guide to accomplish this.
collect 1 Viable Cobra Egg##160832
only if not haspet(2186)
step
You must wait 3 days for the egg to hatch:
use Viable Cobra Egg##160832
collect 1 Spawn of Merektha##160702
only if not haspet(2186)
step
use the Spawn of Merektha##160702
Collect the "Spawn of Merektha" Battle Pet |learnpet Spawn of Merektha##2186
step
_Congratulations!_
You Collected a "Spawn of Merektha" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Tanzil",{
patch='81000',
source='Vendor',
author="support@zygorguides.com",
description="This pet is purchased from Provisioner Mukra in Zuldazar for 100 Honorbound Service Medals.",
pet=2540,
},[[
step
earn 100 Honorbound Service Medal##1716
|tip These are earned from Warfronts and Faction Assaults.
only if not haspet(2540)
step
talk Provisioner Mukra##148924
buy 1 Tanzil##166347 |goto Dazar'alor/0 51.23,95.05
only if not haspet(2540)
step
use Tanzil##166347
Collect the "Tanzil" Battle Pet |learnpet Tanzil##2540
step
_Congratulations!_
You Collected a "Tanzil" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Taptaf",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet is awarded from the quest \"Taptaf the Pig!\" in Drustvar.",
pet=2198,
},[[
step
Follow the road up |goto Drustvar/0 67.39,79.36 < 15 |only if walking
|tip The path starts on the outskirts of Drustvar.
Continue following the road |goto Drustvar/0 66.88,79.86 < 15 |only if walking
Continue following the road |goto Drustvar/0 65.72,82.26 < 15 |only if walking
kill Idej the Wise##131735
talk Taptaf##139380
|tip This NPC will spawn after Idej the Wise is killed.
accept Taptaf the Pig!##52061 |goto Drustvar/0 64.97,83.23
step
use Taptaf##161081
Collect the "Taptaf" Battle Pet |learnpet Taptaf##2198
step
_Congratulations!_
You Collected a "Taptaf" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Thunder Lizard Runt",{
patch='81000',
source='Drop',
author="support@zygorguides.com",
description="This pet is collected from the Conclave of the Chosen encounter in the Battle for Dazar'alor raid."..
"It is available to Mythic difficulty only.",
pet=2529,
},[[
step
Kill the Conclave of the Chosen
collect Thundering Scale of Akunda##165847 |complete haspet(2528)
|tip If it didn't drop, you will need to wait until the raid resets or with another character.
step
use the Thundering Scale of Akunda##165847
Collect the "Thunder Lizard Runt" Battle Pet |learnpet Thunder Lizard Runt##2529
step
_Congratulations!_
You Collected the "Thunder Lizard Runt" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Tiny Direhorn",{
patch='80100',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Happy Holaua in Zuldazar for 100 Polished Pet Charms.",
pet=2412,
},[[
step
collect 100 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2412)
step
Enter the building |goto Dazar'alor/0 56.95,32.06 < 5 |walk
talk Happy Holaua##132097
|tip Inside the building.
buy 1 Tiny Direhorn##163498 |goto Dazar'alor/0 55.93,32.35
only if not haspet(2412)
step
use the Tiny Direhorn##163498
Collect the "Tiny Direhorn" Battle Pet |learnpet Tiny Direhorn##2412
step
_Congratulations!_
You Collected a "Tiny Direhorn" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Trecker",{
patch='81000',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Provisioner Stoutforge in Boralus for 100 7th Legion Service Medals.",
pet=2539,
},[[
step
This Pet is Available for Purchase to the Alliance Faction Only
|tip You will need to purchase this from the Auction House or use an Alliance character to attain this pet.
talk Auctioneer Drezmit##44866
|tip Inside the building.
buy Trecker's Cage##166346 |goto Orgrimmar/1 54.08,73.36 |complete haspet(2539)
step
use Trecker's Cage##166346
Collect the "Trecker" Battle Pet |learnpet Trecker##2539
step
_Congratulations!_
You Collected a "Trecker" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Vale Marmot",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured in the wild from various areas in Stormsong Valley.",
pet=2375,
},[[
step
clicknpc Vale Marmot##143034
Weaken and capture the Vale Marmot in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Vale Marmot" Battle Pet |learnpet Vale Marmot##2375 |goto Stormsong Valley/0 65.54,65.00
step
_Congratulations!_
You Collected a "Vale Marmot" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Zandalari Shinchomper",{
patch='80100',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Happy Holaua in Zuldazar for 50 Polished Pet Charms.",
pet=2413,
},[[
step
collect 50 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2413)
step
Enter the building |goto Dazar'alor/0 56.95,32.06 < 5 |walk
talk Happy Holaua##132097
|tip Inside the building.
buy 1 Raptor Containment Crate##163499 |goto Dazar'alor/0 55.93,32.35
only if not haspet(2413)
step
use the Raptor Containment Crate##163499
Collect the "Zandalari Shinchomper" Battle Pet |learnpet Zandalari Shinchomper##2413
step
_Congratulations!_
You Collected a "Zandalari Shinchomper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Bloated Bloodfeaster",{
patch='80100',
source='Profession',
author="support@zygorguides.com",
description="This pet is obtained through the Alchemy profession.",
pet=2476,
},[[
step
This pet is created with the Alchemy Profession, with the _"Transmute: Meat to Pet"_ ability
|tip You will need level 50 Battle for Azeroth Alchemy to create this.
|tip You'll need 10 Meaty Haunch, 10 Stringy Loins and 5 Blood-Stained Bone to create this.
|tip After crafting a Grumbling Sac, it will turn into a Quivering Sac after 7 days.
collect Quivering Sac##160325 |complete haspet(2476)
step
use the Quivering Sac##160325
collect Undulating Blue Sac##163861 |complete haspet(2476)
step
use the Undulating Blue Sac##163861
Collect the "Bloated Bloodfeaster" Battle Pet |learnpet Bloated Bloodfeaster##2476
step
_Congratulations!_
You Collected a "Bloated Bloodfeaster" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Bloodfeaster Larva",{
patch='80100',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Shoak in Nazmir for 200 Polished Pet Charms.",
pet=2414,
},[[
step
You will need to complete a series of quests in order to gain access the the vendor Shoak
Click Here to Continue |confirm |complete haspet(2414)
step
talk Kajosh##124666
accept Profanity Filter##47924 |goto Nazmir/0 55.15,36.71
step
use the Scroll of Inferno##151849
Destroy the Profane Totem |q 47924/1 |goto Nazmir/0 54.18,36.02 |count 1
step
accept Mawfiend Extermination##47996 |goto Nazmir/0 54.19,35.31
|tip You will automatically accept this quest.
|only if level < 50
stickystart "Eliminate_the_Mawfiend_Threat"
step
use the Scroll of Inferno##151849
Destroy the Profane Totem |q 47924/1 |goto Nazmir/0 54.32,33.42 |count 2
step
use the Scroll of Inferno##151849
Destroy the Profane Totem |q 47924/1 |goto Nazmir/0 54.16,32.34 |count 3
step
use the Scroll of Inferno##151849
Destroy the Profane Totem |q 47924/1 |goto Nazmir/0 53.23,31.70 |count 4
step
use the Scroll of Inferno##151849
Destroy the Profane Totem |q 47924/1 |goto Nazmir/0 52.68,33.61 |count 5
step
label "Eliminate_the_Mawfiend_Threat"
Kill Mawfiend enemies around this area
clicknpc Mawfiend Food##126017+
|tip They look like dead crocodiles on the ground around this area.
Eliminate the Mawfiend Threat |q 47996/1 |goto Nazmir/0 52.95,32.69
|only if haveq(47996) or completedq(47996)
step
talk Kajosh##124933
Select _"Some of the totems are destroyed, will your spell work now?"_
Watch the dialogue
Complete Kajosh's Spell |q 47924/2 |goto Nazmir/0 51.76,33.25
step
talk Kajosh##124933
turnin Profanity Filter##47924 |goto Nazmir/0 51.76,33.24
accept Killing Cannibals##47998 |goto Nazmir/0 51.76,33.24
accept Just Say No to Cannibalism##47919 |goto Nazmir/0 51.76,33.24
accept Shoak's on the Menu##47925 |goto Nazmir/0 51.76,33.24
stickystart "Kill_Nathavor_Cannibals"
step
kill Corpse Monger Nog'shra##124978 |q 47919/1 |goto Nazmir/0 49.21,33.08
|tip Inside the building.
step
kill Corpse Monger Yon'gi##124977 |q 47919/2 |goto Nazmir/0 50.70,35.67
|tip Inside the building.
step
kill Corpse Monger Jal'aka##124976 |q 47919/3 |goto Nazmir/0 49.49,38.39
|tip Inside the building.
step
talk Shoak##124774
Select _"Kajosh sent me. I'll handle the mawfiends."_
Watch the dialogue
Kill the enemies that attack in waves
kill Poz'ga the Butcher Queen##124801
Rescue Shoak |q 47925/1 |goto Nazmir/0 49.43,39.23
step
label "Kill_Nathavor_Cannibals"
kill 10 Natha'vor Cannibal##124688 |q 47998/1 |goto Nazmir/0 50.15,39.04
step
Follow the path |goto Nazmir/0 51.31,41.76 < 30 |only if walking
Follow the path |goto Nazmir/0 55.44,37.82 < 30 |only if walking
talk Kajosh##125024
turnin Killing Cannibals##47998 |goto Nazmir/0 55.84,32.35
turnin Just Say No to Cannibalism##47919 |goto Nazmir/0 55.84,32.35
step
talk Shoak##124737
turnin Shoak's on the Menu##47925 |goto Nazmir/0 55.81,32.24
step
collect 200 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2414)
step
talk Shoak##132011
buy 1 Bloodfeaster Larva##163500 |goto Nazmir/0 66.92,42.06
only if not haspet(2414)
step
use the Bloodfeaster Larva##163500
Collect the "Bloodfeaster Larva" Battle Pet |learnpet Bloodfeaster Larva##2414
step
_Congratulations!_
You Collected a "Bloodfeaster Larva" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Damplight Slug",{
patch='82000',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Atolia Seapearl in Newhome for 425 gold.",
pet=2699,
},[[
step
Reach Friendly Reputation with The Unshackled |complete rep('The Unshackled') >= Friendly
|tip Use "The Unshackled" reputation guide to accomplish this.
step
talk Atolia Seapearl##154002
|tip Inside the cave.
buy 1 Damplight Slug##169365 |goto Nazjatar/0 50.98,65.26 |or
'|complete haspet(2699) |or
step
use the Damplight Slug##169365
Collect the "Damplight Slug" Battle Pet |learnpet Damplight Slug##2699
step
_Congratulations!_
You Collected a "Damplight Slug" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Frenzied Cottontail",{
patch='80100',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Nigel Rifthold in Drustvar for 300 Polished Pet Charms.",
pet=2407,
},[[
step
collect 300 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2407)
step
label "Purchse_Frenzied_Cottontail"
talk Nigel Rifthold##142197
|tip On the top of the hill in front of the treehouse.
|tip To unlock Nigel, you need to kill the Cottontail Matron rare spawn.
|tip Use the POI guide for this rare to accomplish this.
If Nigel isn't here, click here |confirm |or |next "Unlock_Nigel_NPC"
buy 1 Bloody Rabbit Fang##163493 |or |goto Drustvar/0 52.32,31.68
only if not haspet(2407)
step
use the Bloody Rabbit Fang##163493
Collect the "Frenzied Cottontail" Battle Pet |learnpet Frenzied Cottontail##2407 |next "Unlocked_Frenzied_Cottontail"
step
label "Unlock_Nigel_NPC"
talk Xun Xun Sweetflower##136269
buy 10 Tirasreli Gourmet Chocolate##155810 |goto Drustvar/0 20.67,45.59
only if not haspet(2407)
step
Follow the path |goto Drustvar/0 51.98,32.79 < 10 |only if walking
Enter the building |goto Drustvar/0 52.40,31.57 < 5 |walk
click Adventurer's Society Loot Stash##278516 |goto Drustvar/0 52.45,31.42
|tip Inside the building.
|tip Click it twice.
This will unlock Nigel Rifthold as a pet vendor
Click here to buy the Frenzied Cottontail |confirm |next "Purchse_Frenzied_Cottontail"
only if not haspet(2407)
step
label "Unlocked_Frenzied_Cottontail"
_Congratulations!_
You Collected a "Frenzied Cottontail" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Giant Woodworm",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured in the wild from northern and southern Tiragarde Sound.",
pet=2383,
},[[
step
clicknpc Giant Woodworm##143042
Weaken and capture the Giant Woodworm in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Giant Woodworm" Battle Pet |learnpet Giant Woodworm##2383 |goto Tiragarde Sound/0 57.91,15.77
step
_Congratulations!_
You Collected a "Giant Woodworm" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Glutted Bleeder",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured in the wild around the Heart of Darkness and Terrace of Shadows "..
"in Nazmir.",
pet=2395,
},[[
step
Follow the road |goto Nazmir/0 38.48,46.59 < 15 |only if walking
Continue following the road |goto Nazmir/0 36.85,47.62 < 15 |only if walking
Continue following the road |goto Nazmir/0 33.53,47.71 < 15 |only if walking
Continue following the road |goto Nazmir/0 31.33,48.73 < 15 |only if walking
Continue following the road |goto Nazmir/0 30.62,47.36 < 15 |only if walking
clicknpc Glutted Bleeder##130297
|tip They are found around this area.
|tip If you don't see any, you may need to defeat other battle pets to get it to spawn.
Weaken and capture the Glutted Bleeder in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Glutted Bleeder" Battle Pet |learnpet Glutted Bleeder##2395 |goto Nazmir/0 30.61,46.17
step
_Congratulations!_
You Collected a "Glutted Bleeder" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Golden Beetle",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured in the wild around Atal'dazar in western Zuldazar.",
pet=2387,
},[[
step
Follow the road up |goto Zuldazar/0 45.67,38.44 < 15 |only if walking
Continue following the road |goto Zuldazar/0 45.10,37.78 < 15 |only if walking
Continue following the road |goto Zuldazar/0 43.97,38.53 < 15 |only if walking
Continue following the road |goto Zuldazar/0 43.99,37.72 < 15 |only if walking
Continue following the road |goto Zuldazar/0 43.98,37.16 < 15 |only if walking
Continue following the road |goto Zuldazar/0 44.06,35.86 < 15 |only if walking
Continue following the road |goto Zuldazar/0 43.47,36.77 < 15 |only if walking
Continue following the road |goto Zuldazar/0 42.59,35.92 < 15 |only if walking
Run down the stairs |goto Zuldazar/0 42.38,36.47 < 15 |only if walking
Continue down the stairs |goto Zuldazar/0 42.69,37.05 < 15 |only if walking
Continue down the stairs |goto Zuldazar/0 42.56,37.59 < 15 |only if walking
Follow the path |goto Zuldazar/0 42.07,37.79 < 15 |only if walking
Run down the stairs |goto Zuldazar/0 42.10,38.37 < 15 |only if walking
Continue down the stairs |goto Zuldazar/0 41.91,39.44 < 15 |only if walking
clicknpc Golden Beetle##135434
|tip They are found around this area.
|tip If you don't see any, you may need to defeat other battle pets to get it to spawn.
Weaken and capture the Golden Beetle in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Golden Beetle" Battle Pet |learnpet Golden Beetle##2387 |goto Zuldazar/0 41.33,39.44
step
_Congratulations!_
You Collected a "Golden Beetle" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Littlehoof",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2471,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Littlehoof as a reward.
collect Littlehoof##163815 |complete haspet(2471)
step
use Littlehoof##163815
Collect the "Littlehoof" Battle Pet |learnpet Littlehoof##2471
step
_Congratulations!_
You Collected a "Littlehoof" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Needleback Pup",{
patch='81000',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2554,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get a Needleback Pup as a reward.
collect Needleback Pup##166489 |complete haspet(2554)
step
use the Needleback Pup##166489
Collect the "Needleback Pup" Battle Pet |learnpet Needleback Pup##2554
step
_Congratulations!_
You Collected a "Needleback Pup" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Prismatic Softshell",{
patch='82000',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased by Alliance characters from Speaker Utia in Mezzamere for 425 gold.",
pet=2698,
},[[
step
use the Prismatic Softshell##169364
|tip This pet can only be purchased by Horde characters or from the Auction House.
Collect the "Prismatic Softshell" Battle Pet |learnpet Prismatic Softshell##2698
step
_Congratulations!_
You Collected a "Prismatic Softshell" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Sandshell Chitterer",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2463,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Sandshell Chitterer as a reward.
collect Sandshell Chitterer##163808 |complete haspet(2463)
step
use the Sandshell Chitterer##163808
Collect the "Sandshell Chitterer" Battle Pet |learnpet Sandshell Chitterer##2463
step
_Congratulations!_
You Collected a "Sandshell Chitterer" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Saurolisk Hatchling",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be purchased from Happy Holaua in Zuldazar for 200 Polished Pet Charms.",
pet=2421,
},[[
step
collect 200 Polished Pet Charm##163036 |complete haspet(2421)
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
step
Enter the building |goto Dazar'alor/0 56.76,32.06 < 10 |walk
talk Happy Holaua##132097
buy Saurolisk Hatchling##163560 |complete haspet(2421)
step
use the Saurolisk Hatchling##163560
Collect the "Saurolisk Hatchling" Battle Pet |learnpet Saurolisk Hatchling##2421 |goto Dazar'alor/0 55.91,32.33
step
_Congratulations!_
You Collected a "Saurolisk Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Scaley",{
patch='81500',
source='Quest',
author="support@zygorguides.com",
description="This pet can be collected after completing the Zandalar Children's Week event quests.",
keywords={"Dragonkin","Children's","Week"},
pet=2578,
},[[
step
Wait for Children's Week to Begin |complete isevent("Children's Week") |or
|tip This event starts on May 2 and ends on May 9.
'|learnpet Scaley##2578 |or
step
talk Caretaker Padae##131346
|tip Inside the building
accept Children's Week##53965 |goto Dazar'alor/0 54.63,84.60 |or
'|learnpet Scaley##2578 |or
step
use the Casteless Zandalari Whistle##164965
_Next to you:_
talk Azala##145463
turnin Children's Week##53965 |or 4
accept Loa of Winds##53966 |or 4
accept The Shifting Pack##53968 |or 4
accept The Frogmarsh##53967 |or 4
'|learnpet Scaley##2578 |or
step
Cross the bridge |goto Zuldazar/0 66.92,43.17 < 15 |only if walking
Follow the path up |goto Zuldazar/0 66.09,46.41 < 20 |only if walking
use the Casteless Zandalari Whistle##164965
|tip Ensure that you have your orphan, Azala, summoned.
Visit Pterror Rise |q 53966/1 |goto Zuldazar/0 70.58,49.14 |or
'|learnpet Scaley##2578 |or
step
Cross the bridge |goto Zuldazar/0 49.78,29.05 < 20 |only if walking
use the Casteless Zandalari Whistle##164965
|tip Ensure that you have your orphan, Azala, summoned.
Visit Lair of Gonk |q 53968/1 |goto Zuldazar/0 48.71,31.74 |or
'|learnpet Scaley##2578 |or
step
use the Casteless Zandalari Whistle##164965
|tip Ensure that you have your orphan, Azala, summoned.
Visit Krag'wa's Burrow |q 53967/1 |goto Nazmir/0 73.27,53.36 |or
'|learnpet Scaley##2578 |or
step
use the Casteless Zandalari Whistle##164965
_Next to you:_
talk Azala##145463
turnin Loa of Winds##53966 |or 5
turnin The Shifting Pack##53968 |or 5
turnin The Frogmarsh##53967 |or 5
accept The Sethrak Queen##53970 |or 5
accept Hunting for Gold##53969 |or 5
'|learnpet Scaley##2578 |or
step
use the Casteless Zandalari Whistle##164965
|tip Ensure that you have your orphan, Azala, summoned.
|tip Upstairs inside the building.
Visit Terrace of the Devoted |q 53970/1 |goto Vol'dun/0 27.11,52.57 |or
'|learnpet Scaley##2578 |or
step
Jump down here |goto Vol'dun/0 41.96,77.72 < 20 |only if walking
Cross the water |goto Vol'dun/0 33.88,85.82 < 20 |only if walking
use the Casteless Zandalari Whistle##164965
|tip Ensure that you have your orphan, Azala, summoned.
Visit the Golden Isle |q 53969/1 |goto Vol'dun/0 28.77,88.96 |or
'|learnpet Scaley##2578 |or
step
use the Casteless Zandalari Whistle##164965
_Next to you:_
talk Azala##145463
turnin The Sethrak Queen##53970 |or 3
turnin Hunting for Gold##53969 |or 3
accept Return to the Hall of Castes##53971 |or 3
'|learnpet Scaley##2578 |or
step
use the Casteless Zandalari Whistle##164965
|tip Inside the building
Return to the Hall of Castes |q 53971/1 |goto Dazar'alor/0 53.86,84.82 |or
'|learnpet Scaley##2578 |or
step
use the Casteless Zandalari Whistle##164965
_Next to you:_
talk Azala##145463
turnin Return to the Hall of Castes##53971 |or
|tip Be sure to choose the Enchanted Saurolisk Scale as a reward.
'|learnpet Scaley##2578 |or
step
collect 1 Enchanted Saurolisk Scale##167009 |or
'|learnpet Scaley##2578 |or
step
use the Enchanted Saurolisk Scale##167009
Collect the "Scaley" Battle Pet |learnpet Scaley##2578
step
_Congratulations!_
You Collected a "Scaley" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Thunderscale Whelpling",{
patch='81000',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2561,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get a Thunderscale Whelpling as a reward.
collect Thunderscale Whelpling##166499 |complete haspet(2561)
step
use the Thunderscale Whelpling##166499
Collect the "Thunderscale Whelpling" Battle Pet |learnpet Thunderscale Whelpling##2561
step
_Congratulations!_
You Collected the "Thunderscale Whelpling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Aldrusian Sproutling",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is dropped by Venomarus in the Arathi Highlands Warfront.",
pet=2433,
},[[
step
kill Branchlord Aldrus##142508
|tip He walks around the area.
|tip Note that if your faction doesn't control Arathi, you will be flagged for pvp.
|tip You may need help with this.
collect Aldrusian Sproutling##163650 |goto Arathi Highlands/0 21.67,21.77 |complete haspet(2433)
step
use the Aldrusian Sproutling##163650
Collect the "Aldrusian Sproutling" Battle Pet |learnpet Aldrusian Sproutling##2433
step
_Congratulations!_
You Collected a "Aldrusian Sproutling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Azeriti",{
patch='80100',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Magni Bronzebeard in Silithus for 100 Polished Pet Charms.\n\n"..
"_Requires Champions of Azeroth - Revered_",
pet=2429,
},[[
step
Reach Revered Reputation with the Champions of Azeroth |complete rep('Champions of Azeroth')>=Revered
|tip Use the Battle for Azeroth "World Quests" guides to complete "Champions of Azeroth" world quests.
|tip Complete Missions at your mission table that reward reputation with the Champions of Azeroth.
step
collect 100 Polished Pet Charm##163036 |complete haspet(2429)
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
step
talk Magni Bronzebeard##130216
buy Shard of Azerite##163515 |goto Silithus/0 42.22,44.27 |complete haspet(2429)
step
use the Shard of Azerite##163515
Collect the "Azeriti" Battle Pet |learnpet Azeriti##2429
step
_Congratulations!_
You Collected a "Azeriti" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Carnivorous Lasher",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="This pet can be purchased from Jenoh in Vol'dun for 100 Polished Pet Charms.",
pet=2428,
},[[
step
collect 100 Polished Pet Charm##163036 |complete haspet(2428)
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
step
Follow the path down |goto Vol'dun/0 27.62,54.81 < 15 |only if walking
Continue down the path |goto Vol'dun/0 27.33,55.22 < 15 |only if walking
Continue following the path |goto Vol'dun/0 27.33,55.96 < 15 |only if walking
Continue following the path |goto Vol'dun/0 29.15,58.08 < 15 |only if walking
Continue up the path |goto Vol'dun/0 29.70,58.62 < 15 |only if walking
talk Jenoh##135400
buy Violent Looking Flower Pot##163514 |goto Vol'dun/0 29.52,59.35 |complete haspet(2428)
step
use the Violent Looking Flower Pot##163514
Collect the "Carnivorous Lasher" Battle Pet |learn Carnivorous Lasher##143211
step
_Congratulations!_
You Collected a "Carnivorous Lasher" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Everburning Treant",{
patch='81000',
source='Drop',
author="support@zygorguides.com",
description="This pet is dropped by Onu in the Battle for Darkshore Warfront.",
pet=2548,
},[[
step
kill Onu##147758
|tip You may need help with this.
collect Everburning Treant##166453 |goto Darkshore/0 45.2,74.9 |complete haspet(2548)
step
use the Everburning Treant##166453
Collect the "Everburning Treant" Battle Pet |learnpet Everburning Treant##2548
step
_Congratulations!_
You Collected a "Everburning Treant" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Fozling",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is dropped by Fozruk in the Arathi Highlands Warfront.",
pet=2440,
},[[
step
kill Fozruk##142433
collect Shard of Fozruk##163711 |goto Arathi Highlands/0 59.48,27.53 |complete haspet(2440)
step
use the Shard of Fozruk##163711
Collect the "Fozling" Battle Pet |learnpet Fozling##2440
step
_Congratulations!_
You Collected a "Fozling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Giggling Flame",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2466,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Giggling Flame as a reward.
collect Giggling Flame##163811 |complete haspet(2466)
step
use the Giggling Flame##163811
Collect the "Giggling Flame" Battle Pet |learnpet Giggling Flame##2466
step
_Congratulations!_
You Collected a "Giggling Flame" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Gust of Cyclarus",{
patch='81000',
source='Drop',
author="support@zygorguides.com",
description="This pet is dropped by MobName in the Battle for Darkshore Warfront.",
pet=2545,
},[[
step
kill Cyclarus##147241
|tip You may need a group to accomplish this.
collect Binding of Cyclarus##166448 |goto Darkshore/0 43.8,53.6 |complete haspet(2545)
step
use the Binding of Cyclarus##166448
Collect the "Gust of Cyclarus" Battle Pet |learnpet Gust of Cyclarus##2545
step
_Congratulations!_
You Collected a "Gust of Cyclarus" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Hearthy",{
patch='72000',
source='Achievement',
author="support@zygorguides.com",
description="This pet can be collected by completing the \"Master of Minions\" achievement, "..
"which requires you to collect 1,000 unique battle pets.",
pet=2003,
},[[
step
Earn the "Master of Minions" Achievement |achieve 12958
|tip Refer to our various pet guides to accomplish this.
step
collect Hearthy##163218 |complete haspet(2003)
|tip It will appear in any Mailbox once you complete the achievement.
step
use Hearthy##163218
Collect the "Hearthy" Battle Pet |learnpet Hearthy##2003
step
_Congratulations!_
You Collected a "Hearthy" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Hydrath Droplet",{
patch='81000',
source='Drop',
author="support@zygorguides.com",
description="This pet is dropped by MobName in the Battle for Darkshore Warfront.",
pet=2547,
},[[
step
kill Hydrath##147240
|tip You may need a group to accomplish this.
collect Bottled Essence of Hydrath##166452 |goto Darkshore/0 52.8,31.8 |complete haspet(2547)
step
use the Bottled Essence of Hydrath##166452
Collect the "Hydrath Droplet" Battle Pet |learnpet Hydrath Droplet##2547
step
_Congratulations!_
You Collected a "Hydrath Droplet" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Kindleweb Spiderling",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2447,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Kindleweb Spiderling as a reward.
collect the Kindleweb Spiderling##163804 |complete haspet(2447)
step
use the Kindleweb Spiderling##163804
Collect the "Kindleweb Spiderling" Battle Pet |learnpet Kindleweb Spiderling##2447
step
_Congratulations!_
You Collected a "Kindleweb Spiderling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Laughing Stonekin",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2468,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Laughing Stonekin as a reward.
collect Laughing Stonekin##163812 |complete haspet(2468)
step
use the Laughing Stonekin##163812
Collect the "Laughing Stonekin" Battle Pet |learnpet Laughing Stonekin##2468
step
_Congratulations!_
You Collected a "Laughing Stonekin" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Mischievous Zephyr",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2467,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Mischievous Zephyr as a reward.
collect Mischievous Zephyr##163814 |complete haspet(2467)
step
use the Mischievous Zephyr##163814
Collect the "Mischievous Zephyr" Battle Pet |learnpet Mischievous Zephyr##2467
step
_Congratulations!_
You Collected a "Mischievous Zephyr" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Playful Frostkin",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2465,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Playful Frostkin as a reward.
collect Playful Frostkin##163813 |complete haspet(2465)
step
use the Playful Frostkin##163813
Collect the "Playful Frostkin" Battle Pet |learnpet Playful Frostkin##2465
step
_Congratulations!_
You Collected a "Playful Frostkin" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Tinder Pup",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2450,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Tinder Pup as a reward.
collect Tinder Pup##163807 |complete haspet(2450)
step
use the Tinder Pup##163807
Collect the "Tinder Pup" Battle Pet |learnpet Tinder Pup##2450
step
_Congratulations!_
You Collected a "Tinder Pup" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Albino Duskwatcher",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="This pet is purchased from Micro Zoox in Dazar'alor for 200 Seafarer's Dubloon.",
pet=2555,
},[[
step
earn 200 Seafarer's Dubloon##1710
|tip These are earned by completing Island Expeditions.
step
talk Captain Zen'taga##148923
buy Albino Duskwatcher##166491 |goto Dazar'alor/0 44.48,94.45 |complete haspet(2555)
step
use the Albino Duskwatcher##166491
Collect the "Albino Duskwatcher" Battle Pet |learnpet Albino Duskwatcher##148985
step
_Congratulations!_
You Collected a "Albino Duskwatcher" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Albatross Hatchling",{
patch='81000',
source='Drop',
author="support@zygorguides.com",
description="This pet can be collected through Proudmoore Admiralty Paragon reputation boxes."..
"You cannot obtain this by normal means as a horde character.",
pet=2566,
},[[
step
This Pet is Available for Purchase to the Alliance Faction Only
|tip You will need to purchase this from the Auction House or use an Alliance character to attain this pet.
talk Auctioneer Drezmit##44866
|tip Inside the building.
buy Albatross Feather##166714 |goto Orgrimmar/1 54.08,73.36 |complete haspet(2566)
step
use the Albatross Feather##166714
Collect the "Albatross Hatchling" Battle Pet |learnpet Albatross Hatchling##2566
step
_Congratulations!_
You Collected a "Albatross Hatcling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Blue Flitter",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be purchased from Happy Holaua in Zuldazar for 100 Polished Pet Charms.",
pet=2422,
},[[
step
collect 100 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2422)
step
Enter the building |goto Dazar'alor/0 56.76,32.06 < 10 |walk
talk Happy Holaua##132097
buy Butterfly in a Jar##163508 |goto Dazar'alor/0 55.91,32.33 |complete haspet(2422)
step
use the Butterfly in a Jar##163508
Collect the "Blue Flitter" Battle Pet |learnpet Blue Flitter##2422 |goto Dazar'alor/0 55.91,32.33
step
_Congratulations!_
You Collected a "Blue Flitter" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Bumbles",{
patch='80100',
source='Achievement',
author="support@zygorguides.com",
description="This pet can be collected by completing the \"Let's Bee Friends\" achievement.",
pet=2442,
},[[
This Pet is Available for Purchase to the Alliance Faction Only
|tip You will need to purchase this from the Auction House or use an Alliance character to attain this pet.
talk Auctioneer Drezmit##44866
|tip Inside the building.
buy Large Honeycomb Cluster##163776 |goto Orgrimmar/1 54.08,73.36 |complete haspet(2442)
step
use the Large Honeycomb Cluster##163776
Collect the "Bumbles" Battle Pet |learnpet Bumbles##2442
step
_Congratulations!_
You Collected a "Bumbles" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Cap'n Crackers",{
patch='80100',
source='In-GameShop',
author="support@zygorguides.com",
description="This pet can be purchased from the Blizzard store for $10 USD.",
pet=2185,
},[[
step
This Pet is Bought from the Blizzard Store
collect Cap'n Crackers##160588 |complete haspet(2185)
|tip Once you've bought it from the Blizzard store, it should appear in your mailbox.
step
use Cap'n Crackers##160588
Collect the "Cap'n Crackers" Battle Pet |learnpet Cap'n Crackers##2185
step
_Congratulations!_
You Collected a "Cap'n Crackers" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Child of Pa'ku",{
patch='81000',
source='Drop',
author="support@zygorguides.com",
description="This pet is collected from the Conclave of the Chosen encounter in the Battle for Dazar'alor raid."..
"It is available to all difficulties except LFR.",
pet=2527,
},[[
step
Kill the Conclave of the Chosen
collect Enchanted Talon of Pa'ku##165846 |complete haspet(2527)
|tip This pet has a chance to drop from Pa'ku's Aspect.
|tip If it didn't drop, you will need to wait until the raid resets or with another character.
step
use the Enchanted Talon of Pa'ku##165846
Collect the "Child of Pa'ku" Battle Pet |learnpet Child of Pa'ku##2527
step
_Congratulations!_
You Collected the "Child of Pa'ku" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Cobalt Raven",{
patch='81000',
source='Drop',
author="support@zygorguides.com",
description="This pet can be collected through Order of Embers Paragon reputation boxes."..
"You cannot obtain this by normal means as a horde character.",
pet=2568,
},[[
step
This Pet is Available for Purchase to the Alliance Faction Only
|tip You will need to purchase this from the Auction House or use an Alliance character to attain this pet.
talk Auctioneer Drezmit##44866
|tip Inside the building.
buy Cobalt Raven Hatchling##166718 |goto Orgrimmar/1 54.08,73.36 |complete haspet(2568)
step
use the Cobalt Raven Hatchling##166718
Collect the "Cobalt Raven" Battle Pet |learnpet Cobalt Raven##2568
step
_Congratulations!_
You Collected the "Cobalt Raven" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Corlain Falcon",{
patch='80100',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Quartermaster Alcorn in Drustvar for 200 Polished Pet Charms."..
"_Requires Order of Embers - Revered_",
condition_valid=function() return Alliance end,
condition_valid_msg="This pet must be purchased on an Alliance character or from the Auction House.",
pet=2405,
},[[
step
This Pet is Available for Purchase to the Alliance Faction Only
|tip You will need to purchase this from the Auction House or use an Alliance character to attain this pet.
talk Auctioneer Drezmit##44866
|tip Inside the building.
collect Pristine Falcon Feather##163491 |goto Orgrimmar/1 54.08,73.36 |complete haspet(2405)
step
use the Pristine Falcon Feather##163491
Collect the "Corlain Falcon" Battle Pet |learnpet Corlain Falcon##2405
step
_Congratulations!_
You Collected a "Corlain Falcon" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Crimson Bat Pup",{
patch='81000',
source='Drop',
author="support@zygorguides.com",
description="This pet can be collected through Talanji's Expedition Paragon reputation boxes.",
pet=2567,
},[[
step
Reach Exalted Reputation with the Talanji's Expedition |complete rep('Talanji\'s Expedition')==Exalted
|tip Use the Battle for Azeroth "World Quests" guides to complete "Talanji's Expedition" world quests.
|tip Complete Missions at your mission table that reward reputation with the Talanji's Expedition.
step
talk Provisioner Lija##135459
|tip This will appear once you reach 10000 reputation past exalted with the "Talanji's Expedition".
collect Talanji's Expedition Supplies##166282 |goto Nazmir/0 39.10,79.46 |complete haspet(2567)
step
use the Talanji's Expedition Supplies##166282
collect Pair of Tiny Bat Wings##166716 |complete haspet(2567)
step
use the Pair of Tiny Bat Wings##166716
Collect the "Crimson Bat Pup" Battle Pet |learnpet Crimson Bat Pup##2567
step
_Congratulations!_
You Collected the "Crimson Bat Pup" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Darkshore Sentinel",{
patch='81000',
source='Drop',
author="support@zygorguides.com",
description="This pet is dropped by MobName in the Battle for Darkshore Warfront.",
pet=2544,
},[[
step
kill Athil Dewfire##148037
|tip He patrols around this area.
|tip He will only appear when Horde controls Darkshore.
collect Darkshore Sentinel##166449 |goto Darkshore/0 41.6,75.0 |complete haspet(2405)
step
use the Darkshore Sentinel##166449
Collect the "Darkshore Sentinel" Battle Pet |learnpet Darkshore Sentinel##2544
step
_Congratulations!_
You Collected a "Darkshore Sentinel" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Dreadtick Leecher",{
patch='80100',
source='Achievement',
author="support@zygorguides.com",
description="This pet can be collected by completing the \"Battle Safari\" achievement, "..
"which requires you to catch every battle pet on Kul Tiras and Zandalar.",
pet=2431,
},[[
step
Earn the "Battle Safari" Achievement |achieve 12930
|tip Refer to the Battle Safari and battle pet guides to accomplish this.
step
collect Dreadtick Leecher##163634 |complete haspet(2431)
|tip It will appear in any Mailbox once you complete the achievement.
step
use the Dreadtick Leecher##163634
Collect the "Dreadtick Leecher" Battle Pet |learnpet Dreadtick Leecher##2431
step
_Congratulations!_
You Collected a "Dreadtick Leecher" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Firesting Buzzer",{
patch='81000',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2557,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Firesting Buzzer as a reward.
collect Firesting Buzzer##166493 |complete haspet(2557)
step
use the Firesting Buzzer##166493
Collect the "Firesting Buzzer" Battle Pet |learnpet Firesting Buzzer##2557
step
_Congratulations!_
You Collected the "Firesting Buzzer" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Foulfeather",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is dropped by Plaguefeather in the Arathi Highlands Warfront.",
pet=2438,
},[[
step
kill Plaguefeather##142435
|tip You may need a group to accomplish this.
collect Plagued Egg##163690 |goto Arathi Highlands/0 37.6,64.6 |complete haspet(2438)
step
use the Plagued Egg##163690
Collect the "Foulfeather" Battle Pet |learnpet Foulfeather##2438
step
_Congratulations!_
You Collected a "Foulfeather" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Francois",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet can be collected by locating Francois in Tiragarde Sound."..
"_You must have 1,000,000 gold on your character to collect this pet, even though it's free._",
condition_valid=function() return Alliance end,
condition_valid_msg="This pet is difficult to collect on a Horde character. Use an Alliance character if available.",
pet=2165,
},[[
step
talk Francois
|tip In order to speak with Francois, you will need to have 1,000,000 gold in your inventory.
Choose _<Jingle your purse a little bit.>_
talk Francois
|tip Speak with Francois once more after choosing that option.
collect Faberge Egg##158077 |goto Tiragarde Sound/0 52.8,31.1 |complete haspet(2165)
step
use the Faberge Egg##158077
Collect the "Francois" Battle Pet |learnpet Francois##2165
step
_Congratulations!_
You Collected a "Francois" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Greatwing Macaw",{
patch='80100',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Dana Pull in Tiragarde Sound for 50 Polished Pet Charms.",
pet=2409,
},[[
step
This Pet is Available for Purchase to the Alliance Faction Only
|tip You will need to purchase this from the Auction House or use an Alliance character to attain this pet.
talk Auctioneer Drezmit##44866
|tip Inside the building.
collect Greatwing Macaw Feather##163495 |goto Orgrimmar/1 54.08,73.36 |complete haspet(2165)
step
use the Greatwing Macaw Feather##163495
Collect the "Greatwing Macaw" Battle Pet |learnpet Greatwing Macaw##2409
step
_Congratulations!_
You Collected a "Greatwing Macaw" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Honey Bee",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured in the wild from central and eastern Stormsong Valley.",
pet=2379,
},[[
step
clicknpc Honey Bee##143038
|tip They are found around this area.
Weaken and capture the Honey Bee in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Honey Bee" Battle Pet |learnpet Honey Bee##2379 |goto Stormsong Valley/0 71.96,66.22
step
_Congratulations!_
You Collected a "Honey Bee" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Horse Balloon",{
patch='81500',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Carl Goodup on Darkmoon Island during the Darkmoon Faire.",
},[[
step
collect 90 Darkmoon Prize Tickets##81055 |goto Darkmoon Island/0 54.33,53.15
|tip Collect them by completing quests using our guides.
step
talk Carl Goodup##55305
|tip He walks up and down the road.
buy 1 Horse Balloon##164969 |goto Darkmoon Island/0 49.68,79.68
step
use the Horse Balloon##164969
|learnpet Horse Balloon##2484
step
_Congratulations!_
You Collected a "Horse Balloon" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Leafy Flutterwing",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured in the wild from eastern and southwestern Zuldazar.",
pet=2390,
},[[
step
clicknpc Leafy Futterwing##143049
|tip They are found around this area.
Weaken and capture the Leafy Flutterwing in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Leafy Flutterwing" Battle Pet |learnpet Leafy Flutterwing##2390 |goto Zuldazar/0 72.08,30.14
You can find more around [72.08,28.08]
step
_Congratulations!_
You Collected a "Leafy Flutterwing" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Leatherwing Screecher",{
patch='81000',
source='Vendor',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2552,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Leatherwing Screecher as a reward.
collect Leatherwing Screecher##166487 |complete haspet(2552)
step
use the Leatherwing Screecher##166487
Collect the "Leatherwing Screecher" Battle Pet |learnpet Leatherwing Screecher##2552
step
_Congratulations!_
You Collected the "Leatherwing Screecher" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Murloc Balloon",{
patch='81500',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Carl Goodup on Darkmoon Island during the Darkmoon Faire.",
},[[
step
collect 90 Darkmoon Prize Tickets##81055 |goto Darkmoon Island/0 54.33,53.15
|tip Collect them by completing quests using our guides.
step
talk Carl Goodup##55305
|tip He walks up and down the road.
buy 1 Murloc Balloon##164971 |goto Darkmoon Island/0 49.68,79.68
step
use the Murloc Balloon##164971
|learnpet Murloc Balloon##2483
step
_Congratulations!_
You Collected a "Murloc Balloon" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Nightwreathed Watcher",{
patch='81000',
source='Quest',
author="support@zygorguides.com",
description="This pet is a drop from the rarespawn Orwell Stevenson in the Darkshore Warfront.",
pet=2563,
},[[
step
kill Orwell Stevenson##149659
collect Nightwreathed Egg##166525 |goto Darkshore/0 50.65,32.41 |complete haspet(2563)
step
use the Nightwreathed Egg##166525
|tip It will be ready to loot 5 days (real time) after you loot it.
collect Nightwreathed Watcher##166528 |complete haspet(2563)
step
use the Nightwreathed Watcher##166528
Collect the "Nightwreathed Watcher" Battle Pet |learnpet Nightwreathed Watcher##2563
step
_Congratulations!_
You Collected a "Nightwreathed Watcher" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Papi",{
patch='82500',
source='Drop',
author="support@zygorguides.com",
description="This pet has a small chance to drop from the Honeyback Harvester event cache in Stormsong Valley.",
pet=2792,
},[[
step
Collect the "Papi" Battle Pet |learnpet Papi##2792
|tip This pet must be collected on an Alliance character!
|tip You cannot loot the cache that this drops from while on a Horde character.
|tip It can be caged, meaning you can purchase it from the Auction House as well.
step
_Congratulations!_
You Collected a "Papi" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Parasitic Boarfly",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured in the wild from northern Tiragarde Sound.",
pet=2380,
},[[
step
clicknpc Parasitic Boarfly##143039
|tip They are found around this area.
|tip They share a spawn with Giant Woodworm, so if there aren't any around you may need to kill them.
Weaken and capture the Parasitic Boarfly in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Parasitic Boarfly" Battle Pet |learnpet Parasitic Boarfly##2380 |goto Tiragarde Sound/0 56.24,15.26
step
_Congratulations!_
You Collected a "Parasitic Boarfly" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Poro",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2452,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Poro as a reward.
collect Poro##163800 |complete haspet(2452)
step
use Poro##163800
Collect the "Poro" Battle Pet |learnpet Poro##2452
step
_Congratulations!_
You Collected a "Poro" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Sandstinger Wasp",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be purchased from Jenoh in Vol'dun for 50 Polished Pet Charms.",
pet=2426,
},[[
step
collect 50 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2426)
step
Follow the path down |goto Vol'dun/0 27.62,54.81 < 15 |only if walking
Continue down the path |goto Vol'dun/0 27.33,55.22 < 15 |only if walking
Continue following the path |goto Vol'dun/0 27.33,55.96 < 15 |only if walking
Continue following the path |goto Vol'dun/0 29.15,58.08 < 15 |only if walking
Continue up the path |goto Vol'dun/0 29.70,58.62 < 15 |only if walking
talk Jenoh##135400
buy Sandstinger Wasp##163512 |goto Vol'dun/0 29.52,59.35 |complete haspet(2426)
step
use the Sandstinger Wasp##163512
Collect the "Sandstinger Wasp" Battle Pet |learnpet Sandstinger Wasp##2426
step
_Congratulations!_
You Collected a "Sandstinger Wasp" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Seabreeze Bumblebee",{
patch='80100',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Sister Lilyana in Stormsong Valley for 250 Polished Pet Charms.\n\n"..
"_Requires Storm's Wake - Revered_",
pet=2404,
},[[
step
This Pet is Available for Purchase to the Alliance Faction Only
|tip You will need to purchase this from the Auction House or use an Alliance character to attain this pet.
talk Auctioneer Drezmit##44866
|tip Inside the building.
buy Pair of Bee Wings##163490 |goto Orgrimmar/1 54.08,73.36 |complete haspet(2404)
step
use the Pair of Bee Wings##163490
Collect the "Seabreeze Bumblebee" Battle Pet |learnpet Seabreeze Bumblebee##2404
step
_Congratulations!_
You Collected a "Seabreeze Bumblebee" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Shadefeather Hatchling",{
patch='81000',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2556,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get a Shadefeather Hatchling as a reward.
collect Shadefeather Hatchling##166492 |complete haspet(2556)
step
use the Shadefeather Hatchling##166492
Collect the "Shadefeather Hatchling" Battle Pet |learnpet Shadefeather Hatchling##2556
step
_Congratulations!_
You Collected the "Shadefeather Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Shore Butterfly",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured in the wild from the Isle of Fangs or Tusk Isle in Southern Zuldazar",
pet=2384,
},[[
step
clicknpc Shore Butterfly##143043
|tip They are found around this area.
|tip They share a spawn with Shore Butterfly, so if there aren't any around you may need to kill them.
Weaken and capture the Shore Butterfly in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Shore Butterfly" Battle Pet |learnpet Shore Butterfly##2384 |goto Zuldazar/0 60.28,75.99
You can find more around [59.97,79.19]
step
_Congratulations!_
You Collected a "Shore Butterfly" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Squawkling",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is dropped by Man-Hunter Rog in the Arathi Highlands Warfront.",
pet=2441,
},[[
step
kill Man-Hunter Rog##142716
collect Mana-Warped Egg##163712 |goto Arathi Highlands/0 52.11,73.22 |complete haspet(2441)
step
use the Mana-Warped Egg##163712
Collect the "Squawkling" Battle Pet |learnpet Squawkling##2441
step
_Congratulations!_
You Collected a "Squawkling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Sunscale Hatchling",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2473,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get the Sunscale Hatchling as a reward.
collect Sunscale Hatchling##163817 |complete haspet(2473)
step
use the Sunscale Hatchling##163817
Collect the "Sunscale Hatchling" Battle Pet |learnpet Sunscale Hatchling##2473
step
_Congratulations!_
You Collected a "Sunscale Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Valley Chicken",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured in the wild south of Deadwash in Stormsong Valley.",
pet=2376,
},[[
step
clicknpc Valley Chicken##141586
|tip They are found around this area.
|tip They share a spawn with Valley Chicken, so if there aren't any around you may need to kill them.
Weaken and capture the Valley Chicken in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Valley Chicken" Battle Pet |learnpet Valley Chicken##2376
step
_Congratulations!_
You Collected a "Valley Chicken" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Voru'kar Leecher",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2460,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get the Voru'kar Leecher as a reward.
collect Voru'kar Leecher##163824 |complete haspet(2460)
step
use the Voru'kar Leecher##163824
Collect the "Voru'kar Leecher" Battle Pet |learnpet Voru'kar Leecher##2460
step
_Congratulations!_
You Collected a "Voru'kar Leecher" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Wolf Balloon",{
patch='81500',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Carl Goodup on Darkmoon Island during the Darkmoon Faire.",
},[[
step
collect 90 Darkmoon Prize Tickets##81055 |goto Darkmoon Island/0 54.33,53.15
|tip Collect them by completing quests using our guides.
step
talk Carl Goodup##55305
|tip He walks up and down the road.
buy 1 Wolf Balloon##164970 |goto Darkmoon Island/0 49.68,79.68
step
use the Wolf Balloon##164970
|learnpet Wolf Balloon##2482
step
_Congratulations!_
You Collected a "Wolf Balloon" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Sunsoaked Flitter",{
patch='82500',
source='Drop',
author="support@zygorguides.com",
description="This pet has a small chance to drop from the Honeyback Harvester event cache in Stormsong Valley.",
pet=2793,
},[[
step
Collect the "Sunsoaked Flitter" Battle Pet |learnpet Sunsoaked Flitter##2793
|tip This pet must be collected on an Alliance character!
|tip You cannot loot the cache that this drops from while on a Horde character.
|tip It can be caged, meaning you can purchase it from the Auction House as well.
step
_Congratulations!_
You Collected a "Sunsoaked Flitter" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Coldlight Surfrunner",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2457,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get the Coldlight Surfrunner as a reward.
collect Coldlight Surfrunner##163823 |complete haspet(2457)
step
use the Coldlight Surfrunner##163823
Collect the "Coldlight Surfrunner" Battle Pet |learnpet Coldlight Surfrunner##2457
step
_Congratulations!_
You Collected a "Coldlight Surfrunner" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Gillvanas",{
patch='82500',
source='Promotion',
author="support@zygorguides.com",
description="This battle pet was awarded to players who purchased a 2019 Blizzcon virtual or classic ticket.",
keywords={"Humanoid","Blizzcon","2019","8.3"},
startlevel=50.0,
pet=2777,
},[[
step
Learn the "Gillvanas" Battle Pet |learnpet Gillvanas##2777
|tip Gillvanas can no longer be obtained now that Blizzcon 2019 has ended.
step
_Congratulations!_
You Collected the "Gillvanas" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Finduin",{
patch='82500',
source='Promotion',
author="support@zygorguides.com",
description="This battle pet was awarded to players who purchased a 2019 Blizzcon virtual or classic ticket.",
keywords={"Humanoid","Blizzcon","2019","8.3"},
startlevel=50.0,
pet=2778,
},[[
step
Learn the "Finduin" Battle Pet |learnpet Finduin##2778
|tip Finduin can no longer be obtained now that Blizzcon 2019 has ended.
step
_Congratulations!_
You Collected the "Finduin" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Ranishu Runt",{
patch='80100',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Jenoh in Vol'dun for 250 Polished Pet Charms.",
pet=2417,
},[[
step
collect 250 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2417)
step
Follow the path down |goto Vol'dun/0 27.62,54.81 < 15 |only if walking
Continue down the path |goto Vol'dun/0 27.33,55.22 < 15 |only if walking
Continue following the path |goto Vol'dun/0 27.33,55.96 < 15 |only if walking
Continue following the path |goto Vol'dun/0 29.15,58.08 < 15 |only if walking
Continue up the path |goto Vol'dun/0 29.70,58.62 < 15 |only if walking
talk Jenoh##135400
buy Ranishu Runt##163503 |goto Vol'dun/0 29.52,59.35 |complete haspet(2417)
step
use the Ranishu Runt##163503
Collect the "Ranishu Runt" Battle Pet |learnpet Ranishu Runt##2417
step
_Congratulations!_
You Collected a "Ranishu Runt" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Thistlebrush Bud",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2469,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get the Thistlebrush Bud as a reward.
collect Thistlebrush Bud##163810 |complete haspet(2469)
step
use the Thistlebrush Bud##163810
Collect the "Thistlebrush Bud" Battle Pet |learnpet Thistlebrush Bud##2469
step
_Congratulations!_
You Collected a "Thistlebrush Bud" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Whomper",{
patch='80100',
source='In-GameShop',
author="support@zygorguides.com",
description="This pet can be purchased from the Blizzard Store for $10 USD.",
pet=2184,
},[[
step
This Pet is Bought from the Blizzard Store
collect Whomper##160587 |complete haspet(2184)
|tip Once you've bought it from the Blizzard store, it should appear in your mailbox.
step
use Whomper##160587
Collect the "Whomper" Battle Pet |learnpet Whomper##2184
step
_Congratulations!_
You Collected a "Whomper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Accursed Hexxer",{
patch='80100',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Shoak in Nazmir for 500 Polished Pet Charms.",
pet=2420,
},[[
step
collect 500 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2420)
step
talk Kajosh##124666
accept Profanity Filter##47924 |goto Nazmir/0 55.15,36.71
step
use the Scroll of Inferno##151849
Destroy the Profane Totem |q 47924/1 |goto Nazmir/0 54.18,36.02 |count 1
step
accept Mawfiend Extermination##47996 |goto Nazmir/0 54.19,35.31
|tip You will automatically accept this quest.
|only if level < 50
stickystart "Eliminate_the_Mawfiend_Threat"
step
use the Scroll of Inferno##151849
Destroy the Profane Totem |q 47924/1 |goto Nazmir/0 54.32,33.42 |count 2
step
use the Scroll of Inferno##151849
Destroy the Profane Totem |q 47924/1 |goto Nazmir/0 54.16,32.34 |count 3
step
use the Scroll of Inferno##151849
Destroy the Profane Totem |q 47924/1 |goto Nazmir/0 53.23,31.70 |count 4
step
use the Scroll of Inferno##151849
Destroy the Profane Totem |q 47924/1 |goto Nazmir/0 52.68,33.61 |count 5
step
label "Eliminate_the_Mawfiend_Threat"
Kill Mawfiend enemies around this area
clicknpc Mawfiend Food##126017+
|tip They look like dead crocodiles on the ground around this area.
Eliminate the Mawfiend Threat |q 47996/1 |goto Nazmir/0 52.95,32.69
|only if haveq(47996) or completedq(47996)
step
talk Kajosh##124933
Select _"Some of the totems are destroyed, will your spell work now?"_
Watch the dialogue
Complete Kajosh's Spell |q 47924/2 |goto Nazmir/0 51.76,33.25
step
talk Kajosh##124933
turnin Profanity Filter##47924 |goto Nazmir/0 51.76,33.24
accept Killing Cannibals##47998 |goto Nazmir/0 51.76,33.24
accept Just Say No to Cannibalism##47919 |goto Nazmir/0 51.76,33.24
accept Shoak's on the Menu##47925 |goto Nazmir/0 51.76,33.24
stickystart "Kill_Nathavor_Cannibals"
step
kill Corpse Monger Nog'shra##124978 |q 47919/1 |goto Nazmir/0 49.21,33.08
|tip Inside the building.
step
kill Corpse Monger Yon'gi##124977 |q 47919/2 |goto Nazmir/0 50.70,35.67
|tip Inside the building.
step
kill Corpse Monger Jal'aka##124976 |q 47919/3 |goto Nazmir/0 49.49,38.39
|tip Inside the building.
step
talk Shoak##124774
Select _"Kajosh sent me. I'll handle the mawfiends."_
Watch the dialogue
Kill the enemies that attack in waves
kill Poz'ga the Butcher Queen##124801
Rescue Shoak |q 47925/1 |goto Nazmir/0 49.43,39.23
step
label "Kill_Nathavor_Cannibals"
kill 10 Natha'vor Cannibal##124688 |q 47998/1 |goto Nazmir/0 50.15,39.04
step
Follow the path |goto Nazmir/0 51.31,41.76 < 30 |only if walking
Follow the path |goto Nazmir/0 55.44,37.82 < 30 |only if walking
talk Kajosh##125024
turnin Killing Cannibals##47998 |goto Nazmir/0 55.84,32.35
turnin Just Say No to Cannibalism##47919 |goto Nazmir/0 55.84,32.35
step
talk Shoak##124737
turnin Shoak's on the Menu##47925 |goto Nazmir/0 55.81,32.24
step
talk Shoak##132011
buy Accursed Hexxer##163506 |goto Nazmir/0 66.91,42.06 |complete haspet(2420)
step
use the Accursed Hexxer##163506
Collect the "Accursed Hexxer" Battle Pet |learnpet Accursed Hexxer##2420
step
_Congratulations!_
You Collected a "Accursed Hexxer" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Azerite Puddle",{
patch='80100',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Magni Bronzebeard in Silithus for 200 Polished Pet Charms.\n\n"..
"_Requires Champions of Azeroth - Revered_",
pet=2439,
},[[
step
Reach Revered Reputation with the Champions of Azeroth |complete rep('Champions of Azeroth')>=Revered
|tip Use the Battle for Azeroth "World Quests" guides to complete "Champions of Azeroth" world quests.
|tip Complete Missions at your mission table that reward reputation with the Champions of Azeroth.
step
collect 200 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2439)
step
talk Magni Bronzebeard##130216
buy Drop of Azerite##163555 |goto Silithus/0 42.22,44.27 |complete haspet(2439)
step
use the Drop of Azerite##163555
Collect the "Azerite Puddle" Battle Pet |learnpet Azerite Puddle##2439
step
_Congratulations!_
You Collected a "Azerite Puddle" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Baa'l",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured after a BFA treasure hunt."..
"_You will need a fully-completed Uuna pet for this._",
pet=2352,
},[[
step
Obtain the "Uuna" Battle Pet
|tip You need this pet to be able to defeat and collect the Baa'l Battle Pet.
|tip Use the "Uuna" Battle Pet Guide to accomplish this.
Click Here to Open the "Uuna" Battle Pet Guide |confirm |loadguide "Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Uuna"
'|complete haspet(2352)
step
Complete the "Uuna" Questline and Worldtour
|tip You must complete this to be able to defeat and collect the Baa'l Battle Pet.
|tip Use the "Uuna Scenario" Guide to accomplish this.
Click Here to Open the "Uuna Scenario" Guide |confirm |loadguide "Pets & Mounts Guides\\Battle Pet Quests\\Uuna Storyline"
'|complete completedq(50109)
step
You will need:
- About 4 potions that grant invisibility, such as the Draenic Invisibility Potion, or stealth capability.
- At least 2 swim speed potions or another way to increase swim speed.
- At least 3 Goblin Gliders, probably more, or BFA flight skill.
Click Here to Proceed |confirm
step
click Conspicious Note
|tip You will need a "Goblin Glider" in order to reach the note. |only if not knowspell(34090) or not knowspell(90265)
|tip It is just over the eastern side off the top of the Heart of Darkness temple.
|tip It looks like a piece of paper lying on a little ledge.
Read the Conspicious Note |goto Nazmir/0 51.77,59.05
|tip Purple smoke will rise from the scroll once you have read it.
Click Here to Continue |confirm |or
'|complete haspet(2352) |or
step
click Ordinary Pebble
|tip It's a tiny rock sitting on a table to the left of a purple orb.
|tip You might have to talk to Drak'thul to get him to turn away from the table in order to click the pebble.
Read the description of an Ordinary Pebble |goto Broken Shore/0 37.47,71.61
|tip You won't be able to interact with it again once you've read it.
Click Here to Continue |confirm |or
'|complete haspet(2352) |or
step
Walk through the Net here |goto Boralus/0 49.58,40.00
click Ordinary Pebble
|tip Walk through the net.
|tip Once you do, a path will be hidden under the rubbish on the ground.
|tip Inside the cave.
Find an Ordinary Pebble |goto Boralus/0 44.71,38.50
|tip You won't be able to interact with it again once you've clicked it.
Click Here to Continue |confirm |or
'|complete haspet(2352) |or
step
Follow the path up |goto Zuldazar/0 44.03,38.01 < 7 |only if walking
Follow the path up |goto Zuldazar/0 44.07,35.99 < 10 |only if walking
Follow the path |goto Zuldazar/0 43.38,36.64 < 7 |only if walking
Follow the path |goto Zuldazar/0 41.66,34.85 < 10 |only if walking
Follow the path |goto Zuldazar/0 40.46,32.67 < 7 |only if walking
Follow the path |goto Zuldazar/0 38.98,34.08 < 10 |only if walking
Follow the path up |goto Zuldazar/0 38.71,33.94 < 7 |only if walking
Cross the water |goto Zuldazar/0 37.99,35.15 < 10 |only if walking
Jump down here |goto Zuldazar/0 37.93,36.35 < 10 |only if walking
Keep jumping up here |goto Zuldazar/0 37.28,36.17 < 7 |only if walking
Run up the hill |goto Zuldazar/0 36.18,34.60 < 10 |only if walking
Run down the between the hills |goto Zuldazar/0 34.02,34.44 < 7 |only if walking
Jump and use your Goblin Glider Kit once you reach this spot |goto Zuldazar/0 34.00,34.42 < 7 |only if walking
use the Goblin Glider Kit##109076 |only if walking
Enter the cave |goto Zuldazar/0 31.55,35.98 < 5 |walk
click Ordinary Pebble
|tip It's a tiny rock next to a vine inside the cave.
Find an Ordinary Pebble |goto Zuldazar/0 31.93,35.30
|tip You won't be able to interact with it again once you've clicked it.
Click Here to Continue |confirm |or
'|complete haspet(2352) |or
step
Enter the cave |goto Drustvar/0 35.03,54.86 < 10 |walk
|tip The entrance is behind the waterfall.
click Ordinary Pebble
|tip It's in the eye of the effigy inside of the cave.
Find an Ordinary Pebble |goto Drustvar/0 36.31,53.83
|tip You won't be able to interact with it again once you've clicked it.
Click Here to Continue |confirm |or
'|complete haspet(2352) |or
step
click Ordinary Pebble
|tip The entrance to the cave is a hole in the ground next to a tree.
|tip The pebble is on the left wall, on the floor between two larger rocks inside the cave.
|tip Use your Invisibility potion here to avoid aggroing the elite Clatterback.
Find an Ordinary Pebble |goto Vol'dun/0 63.04,21.59
|tip You won't be able to interact with it again once you've clicked it.
Click Here to Continue |confirm |or
'|complete haspet(2352) |or
step
Enter the cave under a clump of trees |goto Stormsong Valley/0 66.91,14.59
click Ordinary Pebble
|tip It's in the cart next to the water.
Find an Ordinary Pebble |goto Stormsong Valley/0 67.93,12.97
|tip You won't be able to interact with it again once you've clicked it.
Click Here to Continue |confirm |or
'|complete haspet(2352) |or
step
click Ordinary Pebble
|tip It will be on the back of a ship deep underwater.
|tip You will take fatigue damage and die.
|tip You will need increase your swimspeed in order to reach and find this before you die.
|tip As soon as you see the fatigue bar, use whatever swim speed item you have to reach the boat.
Find an Ordinary Pebble |goto Zandalar/0 54.53,7.30
|tip There will be a skull stained-glass type decoration with five round buttons underneath it in the shape of a smile.
|tip The Ordinary Pebble will be the second from the left.
Click Here to Continue |confirm |or
'|complete haspet(2352) |or
step
Enter the hidden basement under the tree in the maze |goto Boralus/0 37.56,80.42
click Ordinary Pebble
|tip It's between a barrel and a crate in the basement.
Find an Ordinary Pebble |goto Boralus/0 37.20,79.80
|tip You won't be able to interact with it again once you've clicked it.
Click Here to Continue |confirm |or
'|complete haspet(2352) |or
step
Jump off the ledge here, using a _Goblin Glider Kit_ |goto Drustvar/0 16.43,6.56 |only if walking
click Ordinary Pebble
|tip It is on the top of the entrance to the cave.
Find an Ordinary Pebble |goto Drustvar/0 17.23,6.45
|tip You won't be able to interact with it again once you've clicked it.
Click Here to Continue |confirm |or
'|complete haspet(2352) |or
step
Enter the cave |goto Tiragarde Sound/0 75.45,70.64 < 10 |walk
click Ordinary Pebble
|tip It is inside the cave on the ground with an icy boulder to the left and a slab of meat to the right.
|tip Use invisibility to avoid the 3 Clatterbacks that may attack you inside the cave.
Find an Ordinary Pebble |goto Tiragarde Sound/0 74.29,70.87
|tip You won't be able to interact with it again once you've clicked it.
Click Here to Continue |confirm |or
'|complete haspet(2352) |or
step
Enter the cave |goto Tiragarde Sound/0 80.18,19.32 < 10 |walk
click Ordinary Pebble
|tip The entrance to the cave is behind some long hanging moss, a pine tree, and a waterfall.
|tip The Ordinary Pebble is underneath a long scroll that is hanging on the wall and covering some of the ground.
|tip Use your camera angle to see under the scroll.
Find an Ordinary Pebble |goto Tiragarde Sound/0 79.66,17.99
|tip You won't be able to interact with it again once you've clicked it.
Click Here to Continue |confirm |or
'|complete haspet(2352) |or
step
Enter the seaweed-covered cave underwater |goto Boralus/0 10.09,82.78
click Ordinary Pebble
Find an Ordinary Pebble |goto Tiragarde Sound/0 59.70,41.84
|tip It's underneath some seaweed that is between two rocks, close to the water.
|tip Use your camera angle to see under the seaweed.
Click Here to Continue |confirm |or
'|complete haspet(2352) |or
step
Start from this spot and head North |goto Zandalar/0 56.73,11.96
Enter the Underwater Cave |goto Zandalar/0 55.72,10.21
|tip You will experience fatigue, but it should go away before you die.
|tip Use your Swim Speed increase when you see the fatigue bar.
click Ordinary Pebble
|tip It will be inside the cave, just underneath the entrance.
Find an Ordinary Pebble
Click Here to Continue |confirm |or
'|complete haspet(2352) |or
step
Summon Uuna
|tip This fight will be impossible without her assistance.
Watch the dialogue
kill Baa'l##141909
|tip Defeat Baa'l in a pet battle.
|tip If Uuna isn't weakening Baa'l, you may need to realm hop until you find a server where she can.
|tip You can also try toggling War Mode.
collect Baa'ls Darksign##162578 |goto Frostfire Ridge/0 62.27,22.86 |or
'|complete haspet(2352) |or
step
use Baa'ls Darksign##162578
Collect the "Baa'l" Battle Pet |learnpet Baa'l##2352
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Enchanted Tiki Mask",{
patch='80100',
source='Profession',
author="support@zygorguides.com",
description="This pet can be crafted with the Enchanting profession.",
pet=2201,
},[[
step
This pet requires the Enchanting profession to create
|tip You will also need to kill King Rastakhan in Battle for Azeroth Raid.
Click here to continue |confirm
only if not haspet(2201)
step
kill King Rastakhan##145616
|tip He's a boss in the Battle for Azeroth raid.
collect Formula: Enchanted Tiki Mask##165696 |n
learn Enchanted Tiki Mask##285644
Click here to continue |confirm
only if not haspet(2201)
step
collect 20 Gloom Dust##152875
|tip You can get these by disenchanting Battle for Azeroth level Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
only if not haspet(2201)
step
collect 10 Umbra Shard##152876
|tip You can get these by disenchanting Battle for Azeroth level Rare (blue) armor and weapons.
|tip You can also purchase them from the Auction House.
only if not haspet(2201)
step
Open Your Enchanting Crafting Panel:
_<Create 1 Enchanted Tiki Mask>_
collect Enchanted Tiki Mask##152878 |complete haspet(2201)
|tip You can also buy this from the Auction House.
step
use the Enchanted Tiki Mask##152878
Collect the "Enchanted Tiki Mask" Battle Pet |learnpet Enchanted Tiki Mask##2201
step
_Congratulations!_
You Collected a "Enchanted Tiki Mask" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Filthy Slime",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is dropped by Gol'than the Malodorous in the Tol Dagor on Mythic difficulty.",
pet=2187,
},[[
step
This pet is earned by killing the secret boss "Gol'than the Malodorous"
|tip The dungeon NEEDS to be on Mythic difficulty or higher.
Click here to Continue |confirm |complete haspet(2187)
step
Kill enemies around this area
click Discarded Cell Key
|tip It can spawn in 6 different locations in "The Drain".
Check here for the first location |goto Tol Dagor/1 54,25
Check here for the second location |goto Tol Dagor/1 67,36
Check here for the third location |goto Tol Dagor/1 64,45
Check here for the fourth location |goto Tol Dagor/1 39,46
Check here for the fifth location |goto Tol Dagor/1 49,44
Check here for the sixth location |goto Tol Dagor/1 52,29
collect Discarded Cell Key##158698 |complete haspet(2187)
Click Here to Continue |confirm
|tip You can skip this part if you have a Rogue in the group.
step
In the Brig:
click Prison Bars |goto Tol Dagor/2 37,54
|tip A Rogue can also open this.
Travel Down the Hidden Tunnel on the Left Wall of the Cell
click Filthy Bucket
|tip It's near the wall at the back of the room.
kill Gol'than the Malodorous##135448
collect Filthy Bucket##160704 |complete haspet(2187)
step
use the Filthy Bucket##160704
Collect the "Filthy Slime" Battle Pet |learnpet Filthy Slime##2187
step
_Congratulations!_
You Collected a "Filthy Slime" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Sticky Oozeling",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured in the wild on the western side of Nazmir.",
pet=2393,
},[[
step
Run up the ramp |goto Nazmir/0 27.75,44.90 < 20 |only if walking
Follow the path |goto Nazmir/0 25.96,46.01 < 15 |only if walking
Continue following the path |goto Nazmir/0 25.09,47.76 < 15 |only if walking
Continue following the path |goto Nazmir/0 23.69,46.78 < 15 |only if walking
Enter the cave |goto Nazmir/0 23.32,44.42 < 10 |only if walking
clicknpc Sticky Oozeling##130469
|tip They are found around this area.
|tip They share a spawn with Sticky Oozeling, so if there aren't any around you may need to kill them.
Weaken and capture the Sticky Oozeling in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Sticky Oozeling" Battle Pet |learnpet Sticky Oozeling##2393 |goto Nazmir/0 22.70,44.28
step
_Congratulations!_
You Collected a "Sticky Oozeling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Teeny Titan Orb",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is dropped by Echo of Myzrael in the Arathi Highlands Warfront.",
pet=2435,
},[[
step
kill Echo of Myzrael##141668
|tip If your faction doesn't control the Arathi Highlands Warfront, you will be flagged for PVP.
collect Teeny Titan Orb##163677 |goto Arathi Highlands/0 57.08,34.73 |complete haspet(2435)
step
use the Teeny Titan Orb##163677
Collect the "Teeny Titan Orb" Battle Pet |learnpet Teeny Titan Orb##2435
step
_Congratulations!_
You Collected a "Teeny Titan Orb" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Void Jelly",{
patch='81000',
source='Drop',
author="support@zygorguides.com",
description="This pet is dropped by MobName in the Battle for Darkshore Warfront.",
pet=2549,
},[[
step
kill Soggoth the Slitherer##147897
|tip You might need a group to accomplish this.
|tip If your faction doesn't control the Darkshore Warfront, you will be flagged for PVP.
collect Squishy Purple Goo##166454 |goto Darkshore/0 40.57,85.11 |complete haspet(2549)
step
use the Squishy Purple Goo##166454
Collect the "Void Jelly" Battle Pet |learnpet Void Jelly##2549
step
_Congratulations!_
You Collected a "Void Jelly" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Voidwiggler",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is dropped by Darbel Montrose in the Arathi Highlands Warfront.",
pet=2434,
},[[
step
kill Darbel Montrose##142688
|tip Inside the building.
|tip If your faction doesn't control the Arathi Highlands Warfront, you will be flagged for PVP.
collect Tiny Grimoire##163652 |goto Arathi Highlands/0 50.46,61.10 |complete haspet(2434)
She Can Also Spawn Inside the House Here [50.6,36.8]
step
use the Tiny Grimoire##163652
Collect the "Voidwiggler" Battle Pet |learnpet Voidwiggler##2434
step
_Congratulations!_
You Collected a "Voidwiggler" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Zur'aj the Depleted",{
patch='81000',
source='Drop',
author="support@zygorguides.com",
description="This pet is dropped by MobName in the Battle for Darkshore Warfront.",
pet=2550,
},[[
step
kill Twilight Prophet Graeme##147942
|tip If your faction doesn't control the Darkshore Warfront, you will be flagged for PVP.
collect Zur'aj the Depleted##166455 |goto Darkshore/0 40.60,82.68 |complete haspet(2550)
step
use Zur'aj the Depleted##166455
Collect the "Zur'aj the Depleted" Battle Pet |learnpet Zur'aj the Depleted##2550
step
_Congratulations!_
You Collected a "Zur'aj the Depleted" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Alarm-O-Dog",{
patch='81000',
source='Vendor',
author="support@zygorguides.com",
description="This pet is purchased from Micro Zoox in Dun Morogh for 3 Pristine Gizmos.",
pet=2533,
},[[
step
collect 3 Pristine Gizmos##165835
|tip These are collected through weekly Pet Battle Challenges.
|tip Refer to our Pet Challenge guides to accomplish this.
step
talk Micro Zoox##147070
buy Rechargeable Alarm-O-Dog Battery##165857 |goto Dun Morogh/10 31.13,71.53 |complete haspet(2533)
step
use the Rechargeable Alarm-O-Dog Battery##165857
Collect the "Alarm-O-Dog" Battle Pet |learnpet Alarm-O-Dog##2533
step
_Congratulations!_
You Collected a "Alarm-O-Dog" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\False Knucklebump",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2449,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get False Knucklebump as a reward.
collect False Knucklebump##163806 |complete haspet(2449)
step
use False Knucklebump##163806
Collect the "False Knucklebump" Battle Pet |learnpet False Knucklebump##2449
step
_Congratulations!_
You Collected a "False Knucklebump" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Gearspring Hopper",{
patch='80100',
source='Profession',
author="support@zygorguides.com",
description="This pet can be crafted with the Alchemy profession.",
pet=2474,
},[[
step
This pet is created with the Alchemy Profession, with the _"Transmute: Meat to Pet"_ ability
|tip You will need level 50 Battle for Azeroth Alchemy to create this.
|tip You'll need 10 Meaty Haunch, 10 Stringy Loins and 5 Blood-Stained Bone to create this.
|tip After crafting a Grumbling Sac, it will turn into a Quivering Sac after 7 days.
collect Quivering Sac##160325 |complete haspet(2474)
step
use the Quivering Sac##160325
|tip This drops random pets, so you may need to craft more.
collect Wind-Up Frog##163860 |complete haspet(2474)
step
use the Wind-Up Frog##163860
Collect the "Gearspring Hopper" Battle Pet |learnpet Gearspring Hopper##2474
step
_Congratulations!_
You Collected a "Gearspring Hopper" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Feathers",{
patch='81000',
source='Quest',
author="support@zygorguides.com",
description="This pet can be collected after completing the Heroes of the Storm questline.",
keywords={"Mechanical","Heroes","of","the","Storm"},
pet=2526,
},[[
step
talk Trade Prince Gallywix##136683
|tip Inside the ship on the middle deck.
accept Whatever Happened to Grizzek Fizzwrench?##53817 |goto Zuldazar/0 58.45,62.64
step
talk Gazlowe##151138
Select _"Yeah? What kind of deal?"_
Speak with Gazlowe |q 53817/1 |goto Dazar'alor/0 50.33,99.02
step
talk Feathers##151132
turnin Whatever Happened to Grizzek Fizzwrench?##53817 |goto Tanaris/0 62.18,45.34
accept Some Reassembly Required##53816 |goto Tanaris/0 62.18,45.34
step
Kill Venture enemies around this area
collect 100 Mechanical Parts##167232 |q 53816/1 |goto Tanaris/0 62.63,44.79
step
talk Feathers##151132
turnin Some Reassembly Required##53816 |goto Tanaris/0 62.18,45.34
accept Re-parrot##53818 |goto Tanaris/0 62.18,45.34
step
talk Feathers##151132
Choose _"<Begin debugging.>"_
Begin Debugging |invehicle |q 53818 |goto Tanaris/0 62.18,45.34
step
Debug Feathers' Programming |q 53818/1 |goto Tanaris/0 62.18,45.34
|tip Follow the on-screen text instructions, using the three abilities on your action bar.
step
Watch the dialogue
talk Feathers##151132
turnin Re-parrot##53818 |goto Tanaris/0 62.18,45.34
accept Return to the Nest##53819 |goto Tanaris/0 62.18,45.34
step
talk Feathers##151132
Choose _"<Activate the recall subroutine.>"_
Activate the Recall Subroutine |q 53819/1 |goto Tanaris/0 62.18,45.34
step
Watch the dialogue
Ride with Feathers |q 53819/2 |goto Tanaris/0 27.16,59.91
step
talk Sapphronetta Flivvers##151129
turnin Return to the Nest##53819 |goto Tanaris/0 27.13,60.07
step
talk Grizzek Fizzwrench##151130
accept He's Dead, Jastor##53821 |goto Tanaris/0 27.16,60.08
step
talk Trade Prince Gallywix##136683
|tip Inside the ship on the middle deck.
Select _"He's dead. Where's my payment?"_
Speak with Gallywix |q 53821/1 |goto Zuldazar/0 58.45,62.64
step
talk Gazlowe##137313
turnin He's Dead, Jastor##53821 |goto Dazar'alor/0 44.77,89.70
step
collect 1 Feathers##165845 |or
'|learnpet Feathers##2526 |or
step
use Feathers##165845
Collect the "Feathers" Battle Pet |learnpet Feathers##2526
step
_Congratulations!_
You Collected a "Feathers" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Lil' Siege Tower",{
patch='80100',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Vindicator Jaelaana in Boralus for 200 Polished Pet Charms."..
"_Requires 7th Legion - Revered_",
condition_valid=function() return Alliance end,
condition_valid_msg="This pet must be purchased on an Alliance character or from the Auction House.",
pet=2443,
},[[
step
This Pet is Available for Purchase to the Alliance Faction Only
|tip You will need to purchase this from the Auction House or use an Alliance character to attain this pet.
talk Auctioneer Drezmit##44866
|tip Inside the building.
buy Lil' Siege Tower##163778 |goto Orgrimmar/1 54.08,73.36 |complete haspet(2443)
step
use the Lil' Siege Tower##163778
Collect the "Lil' Siege Tower" Battle Pet |learnpet Lil' Siege Tower##2443
step
_Congratulations!_
You Collected a "Lil' Siege Tower" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Lil' War Machine",{
patch='80100',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Vindicator Jaelaana in Boralus for 200 Polished Pet Charms."..
"_Requires The Honorbound - Revered_",
pet=2444,
},[[
step
This Pet is Available for Purchase to the Alliance Faction Only
|tip You will need to purchase this from the Auction House or use an Alliance character to attain this pet.
talk Auctioneer Drezmit##44866
|tip Inside the building.
buy Lil' War Machine##163779 |goto Orgrimmar/1 54.08,73.36 |complete haspet(2444)
step
use the Lil' War Machine##163779
Collect the "Lil' War Machine" Battle Pet |learnpet Lil' War Machine##2444
step
_Congratulations!_
You Collected a "Lil' War Machine" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Mechanical Cockroach",{
patch='81000',
source='Vendor',
author="support@zygorguides.com",
description="This pet is purchased from Micro Zoox in Dun Morogh for 1 Pristine Gizmos.",
pet=2531,
},[[
step
collect 1 Pristine Gizmos##165835
|tip These are collected through weekly Pet Battle Challenges.
|tip Refer to our Pet Challenge guides to accomplish this.
step
talk Micro Zoox##147070
buy Mechanical Cockroach##165854 |goto Dun Morogh/10 31.13,71.53 |complete haspet(2485)
step
use the Mechanical Cockroach##165854
Collect the "Mechanical Cockroach" Battle Pet |learnpet Mechanical Cockroach##2531
step
_Congratulations!_
You Collected a "Mechanical Cockroach" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Mechanical Prairie Dog",{
patch='80100',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Dana Pull in Tiragarde Sound for 75 Polished Pet Charms.",
condition_valid=function() return Alliance end,
condition_valid_msg="This pet must be purchased on an Alliance character or from the Auction House.",
pet=2410,
},[[
step
This Pet is Available for Purchase to the Alliance Faction Only
|tip You will need to purchase this from the Auction House or use an Alliance character to attain this pet.
talk Auctioneer Drezmit##44866
|tip Inside the building.
buy Strange Looking Mechanical Squirrel##163496 |goto Orgrimmar/1 54.08,73.36 |complete haspet(2410)
step
use the Strange Looking Mechanical Squirrel##163496
Collect the "Mechanical Prairie Dog" Battle Pet |learnpet Mechanical Prairie Dog##2410
step
_Congratulations!_
You Collected a "Mechanical Prairie Dog" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Rebuilt Gorilla Bot",{
patch='81000',
source='Drop',
author="support@zygorguides.com",
description="This pet can be collected from the Faction Assault on Vol'dun.",
pet=2564,
},[[
step
talk Auctioneer Drezmit##44866
|tip Inside the building.
buy Rebuilt Gorilla Bot##166715 |goto Orgrimmar/1 54.08,73.36 |complete haspet(2564)
|tip The materials for this pet can only be gathered by a Horde character.
|tip You will need to buy it from the Auction House or use a Horde character to attain it.
step
use the Rebuilt Gorilla Bot##166715
Collect the "Rebuilt Gorilla Bot" Battle Pet |learnpet Rebuilt Gorilla Bot##2564
step
_Congratulations!_
You Collected the "Rebuilt Gorilla Bot" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Rebuilt Mechanical Spider",{
patch='81000',
source='Drop',
author="support@zygorguides.com",
description="This pet can be collected from the Faction Assault on Vol'dun.",
pet=2565,
},[[
step
You must gather 3 material that only appear during a Faction Assault on Vol'dun
|tip You will only be able to collect one of the 3 items needed per Assault.
|tip This means that you will not be able to gather these in a single day.
kill Arachni##147522
|tip Make sure that before you engage, it is at least fighting with Dookthar the Destroyer.
click Loose Parts##311902
|tip This will spawn when Arachni is killed and Dookthar the Destroyer is still alive.
collect Handful of Glass Spider Eyes##166737 |goto Vol'dun/0 41.84,42.32 |or |complete haspet(2565)
collect Steel-Plated Arachnid Exoskeleton##166738 |goto Vol'dun/0 41.84,42.32 |or |complete haspet(2565)
collect Mecha-Spinneret##166735 |goto Vol'dun/0 41.84,42.32 |or |complete haspet(2565)
step
You must gather 3 material that only appear during a Faction Assault on Vol'dun
|tip You will only be able to collect one of the 3 items needed per Assault.
|tip This means that you will not be able to gather these in a single day.
kill Arachni##147522
|tip Make sure that before you engage, it is at least fighting with Dookthar the Destroyer.
click Loose Parts##311902
|tip This will spawn when Arachni is killed and Dookthar the Destroyer is still alive.
collect Handful of Glass Spider Eyes##166737 |goto Vol'dun/0 41.84,42.32 |or 2 |complete haspet(2565)
collect Steel-Plated Arachnid Exoskeleton##166738 |goto Vol'dun/0 41.84,42.32 |or 2 |complete haspet(2565)
collect Mecha-Spinneret##166735 |goto Vol'dun/0 41.84,42.32 |or 2 |complete haspet(2565)
step
You must gather 3 material that only appear during a Faction Assault on Vol'dun
|tip You will only be able to collect one of the 3 items needed per Assault.
|tip This means that you will not be able to gather these in a single day.
kill Arachni##147522
|tip Make sure that before you engage, it is at least fighting with Dookthar the Destroyer.
click Loose Parts##311902
|tip This will spawn when Arachni is killed and Dookthar the Destroyer is still alive.
collect Handful of Glass Spider Eyes##166737 |goto Vol'dun/0 41.84,42.32 |complete haspet(2565)
collect Steel-Plated Arachnid Exoskeleton##166738 |goto Vol'dun/0 41.84,42.32 |complete haspet(2565)
collect Mecha-Spinneret##166735 |goto Vol'dun/0 41.84,42.32 |complete haspet(2565)
step
use Handful of Glass Spider Eyes##166737
collect Rebuilt Mechanical Spider##166723 |complete haspet(2565)
step
use the Rebuilt Mechanical Spider##166723
Collect the "Rebuilt Mechanical Spider" Battle Pet |learnpet Rebuilt Mechanical Spider##2565
step
_Congratulations!_
You Collected the "Rebuilt Mechanical Spider" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Rooter",{
patch='80100',
source='Achievement',
author="support@zygorguides.com",
description="This pet can be collected by completing the \"Pet Emporium\" achievement, "..
"which requires you to collect 800 unique battle pets.",
pet=2401,
},[[
step
Earn the "Pet Emporium" Achievement |achieve 12992
|tip Refer to our various pet guides to accomplish this.
step
collect Rooter##163220 |complete haspet(2401)
|tip It will appear in any Mailbox once you complete the achievement.
step
use Rooter##163220
Collect the "Rooter" Battle Pet |learnpet Rooter##2401
step
_Congratulations!_
You Collected a "Rooter" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Vengeful Chicken",{
patch='80100',
source='Quest',
author="support@zygorguides.com",
description="This pet is awarded from the quest \"Cutting Edge Poultry Science\" which can be "..
"picked up in the Waycrest Manor dungeon.",
pet=2192,
},[[
step
Enter Waycrest Manor While the World Quest "Warcrest Manor: Witchy Kitchen" is Available
|tip This pet is only available when the world quest "Waycrest Manor: Witchy Kitchen" is up.
|tip Do not kill Roast Chef Rhonda or Sauciere Samuel.
|tip Do low dps to avoid killing these two npcs.
|tip Eventually, Roast Chef Rhonda will "Raw Chicken".
|tip It can be seen on the ground in a green puddle.
|tip Once the Raw Chicken is present, you will then need to wait for Roast Chef Rhonda to cast "Roast Chicken".
|tip Note: Whoever is tanking the boss should stand on top of the Raw Chicken to ensure that it gets cooked.
|tip Finally, you will Sauciere Samuel to cast "Spray Gravy" on top of the Roasted Chicken.
|tip Once the following steps are followed, it will produce "Delicious Chicken".
|tip The Chicken will give the quest "Cutting Edge Poultry Science".
|tip You have 1 minute to accept the quest.
|tip You cannot accept the quest if you kill the chefs.
accept Cutting Edge Poultry Science##50990 |goto Waycrest Manor/0 67,28
step
talk Oglethorpe Obnoticus##7406
|tip Inside the building.
turnin Cutting Edge Poultry Science##50990 |goto The Cape of Stranglethorn/0 43.01,72.22
step
collect Intact Chicken Brain##160940 |complete haspet(2192)
step
use the Intact Chicken Brain##160940
Collect the "Vengeful Chicken" Battle Pet |learnpet Vengeful Chicken##2192
step
_Congratulations!_
You Collected a "Vengeful Chicken" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Mini Spider Tank",{
patch='81000',
source='Achievement',
author="support@zygorguides.com",
description="This pet can be collected from completing the Pet Battle Challenge: Gnomeregan Achievement.",
pet=2534,
},[[
step
Earn the "Pet Battle Challenge: Gnomeregan" Achievement |achieve 13269
|tip Refer to our Pet Battle Challenge: Gnomeregan achievement guide to accomplish this.
step
use the Mini Spider Tank##165894
Collect the "Mini Spider Tank" Battle Pet |learnpet Mini Spider Tank##2534
step
_Congratulations!_
You Collected the "Rebuilt Gorilla Bot" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Spraybot 0D",{
patch='82000',
source='Drop',
author="support@zygorguides.com",
description="This pet is dropped by The Kleptoboss rare on Mechagon Island.",
pet=2753,
},[[
step
Complete the Drill Rig DR-CC88 project
|tip The rig will only spawn on days when these construction projects are available.
|tip To start the rig, you will need 500 Spare Parts and 2 Energy Cells.
|tip The broadcast text "Drill Rig DR-CC88 has been activated!" will appear one minute before The Kleptoboss is revealed.
kill The Kleptoboss##152113 |goto Mechagon Island/0 68.40,48.20
|tip Inside the cave.
collect Spraybot 0D##169886 |or
|tip This is not a guaranteed drop.
'|complete haspet(2753) |or
step
use Spraybot 0D##169886
Collect the "Spraybot 0D" Battle Pet |learnpet Spraybot 0D##2753
step
_Congratulations!_
You Collected the "Spraybot 0D" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Utility Mechanoclaw",{
patch='80100',
source='Achievement',
author="support@zygorguides.com",
description="This pet can be collected by crafting it with junkyard tinkering on Mechagon Island.",
pet=2716,
},[[
step
Complete the Drill Rig DR-CC73 project
|tip The rig will only spawn on days when these construction projects are available.
|tip To start the rig, you will need 500 Spare Parts and 2 Energy Cells.
|tip The broadcast text "Drill Rig DR-CC73 has been activated!" will appear one minute before Caustic Mechaslime is revealed.
kill Caustic Mechaslime##154739
|tip Inside the cave.
collect 1 Blueprint: Utility Mechanoclaw##169170 |goto Mechagon Island/0 65.80,58.40 |q 55078 |future
|tip This blueprint is common, but not a guaranteed drop.
step
use the Blueprint: Utility Mechanoclaw##169170
accept Blueprint: Utility Mechanoclaw##55078
step
talk Pascal-K1N6##150359
turnin Blueprint: Utility Mechanoclaw##55078 |goto Mechagon Island/0 71.35,32.28
step
collect 5 Chain Ignitercoil##168327 |or
|tip You can acquire these from chests, rare spawns, and daily quests on Mechagon Island.
'|complete haspet(2716) |or
step
collect 3 S.P.A.R.E. Crate##169610 |or
|tip Convert 750 Spare Parts into 3 crates at Pascal-K1N6 in Rustbolt on Mechagon Island.
'|complete haspet(2716) |or
step
collect 3 Energy Cell##166970 |or
|tip You can acquire Empty Energy Cells from chests, rare spawns, and daily quests on Mechagon Island.
|tip They can be filled at the Charging Station in Bondo's Yard on Mechagon Island.
'|complete haspet(2716) |or
step
talk Pascal-K1N6##150359
|tip Craft a "Utility Mechanoclaw" under the Robots category.
collect Utility Mechanoclaw##169383 |or
'|complete haspet(2716) |or
step
use Utility Mechanoclaw##163220
Collect the "Utility Mechanoclaw" Battle Pet |learnpet Utility Mechanoclaw##143142
step
_Congratulations!_
You Collected a "Utility Mechanoclaw" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Microbot XD",{
patch='82000',
source='Profession',
author="support@zygorguides.com",
description="This pet can be collected by crafting it with junkyard tinkering on Mechagon Island.",
pet=2717,
},[[
step
use the Rustbolt Supplies##170061
|tip These are rewarded for completing the "Supplies from the Rustbolt Resistance" paragon quest.
|tip Each one requires 10,000 reputation after reaching Exalted with the Rustbolt Reistance faction.
collect 1 Blueprint: Microbot XD##169171 |goto Mechagon Island/0 71.70,36.47 |q 55079 |future
|tip This blueprint has a small chance to drop.
step
use the Blueprint: Microbot XD##169171
accept Blueprint: Microbot XD##55079
step
talk Pascal-K1N6##150359
turnin Blueprint: Microbot XD##55079 |goto Mechagon Island/0 71.35,32.28
step
collect 2 Chain Ignitercoil##168327 |or
|tip You can acquire these from chests, rare spawns, and daily quests on Mechagon Island.
'|complete haspet(2717) |or
step
collect 5 S.P.A.R.E. Crate##169610 |or
|tip Convert 1,250 Spare Parts into 5 crates at Pascal-K1N6 in Rustbolt on Mechagon Island.
'|complete haspet(2717) |or
step
collect 4 Energy Cell##166970 |or
|tip You can acquire Empty Energy Cells from chests, rare spawns, and daily quests on Mechagon Island.
|tip They can be filled at the Charging Station in Bondo's Yard on Mechagon Island.
'|complete haspet(2717) |or
step
talk Pascal-K1N6##150359
|tip Craft a "Microbot XD" under the Robots category.
collect Microbot XD##169384 |or
'|complete haspet(2717) |or
step
use Microbot XD##169384
Collect the "Microbot XD" Battle Pet |learnpet Microbot XD##2717
step
_Congratulations!_
You Collected a "Microbot XD" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Barnaby",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2456,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Barnaby as a reward.
collect Barnaby##163799 |complete haspet(2456)
step
use Barnaby##163799
Collect the "Barnaby" Battle Pet |learnpet Barnaby##2456 |complete haspet(2456)
step
_Congratulations!_
You Collected a "Barnaby" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Bilefang Skitterer",{
patch='80100',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Nigel Rifthold in Drustvar for 100 Polished Pet Charms.",
pet=2408,
},[[
step
collect 100 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2408)
step
talk Xun Xun Sweetflower##136269
buy 10 Tirasreli Gourmet Chocolate##155810 |goto Drustvar/0 20.68,45.58 |complete haspet(2408)
step
click Adventurer's Society Loot Stash |goto Drustvar/0 52.32,31.73
|tip Inside the building.
|tip Loot the chest twice.
Click Here to Continue |confirm |complete haspet(2408)
step
talk Nigel Rifthold##142197
|tip He will show up after you've looted the chest twice.
buy Wad of Spider Web##163494 |goto Drustvar/0 52.32,31.68 |complete haspet(2408)
step
use the Wad of Spider Web##163494
Collect the "Bilefang Skitterer" Battle Pet |learnpet Bilefang Skitterer##2408
step
_Congratulations!_
You Collected a "Bilefang Skitterer" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Captain Nibs",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2455,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get Captain Nibs as a reward.
collect Captain Nibs##163798 |complete haspet(2455)
step
use Captain Nibs##163798
Collect the "Captain Nibs" Battle Pet |learnpet Captain Nibs##2455
step
_Congratulations!_
You Collected a "Captain Nibs" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Detective Ray",{
patch='81000',
source='Drop',
author="support@zygorguides.com",
description="This pet is dropped from Conflagros in the Battle for Darkshore Warfront.",
pet=2546,
},[[
step
kill Conflagros##166451
|tip You may need help with this.
|tip Note that if your faction doesn't control Darkshore, you will be flagged for pvp.
collect Rattling Bones##166451 |goto Darkshore/0 39.29,61.92 |complete haspet(2546)
step
use the Rattling Bones##166451
Collect the "Detective Ray" Battle Pet |learnpet Detective Ray##2546
step
_Congratulations!_
You Collected a "Detective Ray" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Miimii",{
patch='80100',
source='Achievement',
author="support@zygorguides.com",
description="This pet can be collected by completing the \"How to Keep a Mummy\" achievement, "..
"which requires you to free Miimii the Mummy in King's Rest on Mythic difficulty.",
pet=2202,
},[[
step
This Pet is Earned by Completing the "How to Keep a Mummy" Achievement
|tip Refer to the "How to Keep a Mummy" Achievement guide to accomplish this.
collect Thousand Year Old Mummy Wraps##161214 |complete haspet(2202)
step
use the Thousand Year Old Mummy Wraps##161214
Collect the "Miimii" Battle Pet |learnpet Miimii##2202
step
_Congratulations!_
You Collected a "Miimii" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Restored Revenant",{
patch='80100',
source='Profession',
author="support@zygorguides.com",
description="This pet is a reward from a Drust Archaeology solve.",
pet=2199,
},[[
step
collect Pile of Bones##161089 |complete haspet(2199)
|tip This is gathered with Zandalari Archaeology.
|tip It will be a rare solve for a "Restored Revenant", requiring 185 Drust Fragments.
|tip You can also buy this from the Auction House.
step
use the Pile of Bones##161089
Collect the "Restored Revenant" Battle Pet |learnpet Restored Revenant##2199
step
_Congratulations!_
You Collected a "Restored Revenant" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Returned Hatchling",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured in the wild around the Terrace of Sorrows in western Nazmir.",
pet=2394,
},[[
step
clicknpc Returned Hatchling##130347
Weaken and capture the Returned Hatchling in battle
|tip Use the "Trap" ability once it is below 35% health.
Collect the "Returned Hatchling" Battle Pet |learnpet Returned Hatchling##2394 |goto Nazmir/0 33.10,57.75
step
_Congratulations!_
You Collected a "Returned Hatchling" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Rotting Ghoul",{
patch='81000',
source='Drop',
author="support@zygorguides.com",
description="This pet is a random drop from Island Expeditions.",
pet=2553,
},[[
step
This pet is a random drop from Island Expeditions
clicknpc Expedition Map##143967
|tip Queue for Island Expeditions and complete them until you get a Rotting Ghoul as a reward.
collect Rotting Ghoul##166488 |complete haspet(2553)
step
use the Rotting Ghoul##166488
Collect the "Rotting Ghoul" Battle Pet |learnpet Rotting Ghoul##2553
step
_Congratulations!_
You Collected a "Rotting Ghoul" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Smoochums",{
patch='80100',
source='Vendor',
author="support@zygorguides.com",
description="This pet can be purchased from Nigel Rifthold in Drustvar for 200 Polished Pet Charms.",
pet=2189,
},[[
step
Cross the bridge |goto Drustvar/0 54.56,36.62 < 15 |only if walking
talk Abby Lewis##121603
|tip She walks around this area.
accept Teddies and Tea##47289 |goto Drustvar/0 54.35,39.21
step
Enter the building |goto Drustvar/0 55.43,39.58 < 10 |walk
click Trunksy
|tip Inside the building.
Find Trunksy |q 47289/2 |goto Drustvar/0 55.39,39.75
step
click Mr. Munchykins
Find Mr. Munchykins |q 47289/1 |goto Drustvar/0 55.61,38.55
step
click Mayor Striggs
Find Mayor Striggs |q 47289/3 |goto Drustvar/0 56.28,38.19
step
_Next to you:_
talk Abby Lewis
turnin Teddies and Tea##47289
accept Kitty?##47428
step
clicknpc Smoochums##121684
turnin Kitty?##47428 |goto Drustvar/0 55.60,41.18
step
click Glenbrook Register
accept The Village of Glenbrook##53464|goto Drustvar/0 55.62,41.19
step
Enter the cave |goto Drustvar/0 53.54,44.06 < 10 |walk
click Mary's Book
|tip Inside the cave.
Find Mary Hayes |q 53464/1 |goto Drustvar/0 53.14,44.44
step
Leave the cave |goto Drustvar/0 53.53,44.07 < 10 |walk
click Hawthorne's Hoe
Find Samuel Hawthorne |q 53464/3 |goto Drustvar/0 55.49,45.29
step
Enter the cave |goto Drustvar/0 56.74,46.64 < 10 |walk
clicknpc Jonathan Hayes##122491
|tip Inside the cave.
Choose _<Investigate the body for identification.>_
Find Jonathan Hayes |q 53464/2 |goto Drustvar/0 57.17,46.41
step
Enter the cave |goto Drustvar/0 54.86,48.69 < 10 |walk
talk Annie Warren##122493
|tip Inside the cave.
turnin The Village of Glenbrook##53464 |goto Drustvar/0 54.74,49.14
accept Tea Party##53465 |goto Drustvar/0 54.74,49.14
step
Leave the cave |goto Drustvar/0 54.89,48.63 < 10 |walk
Follow Abby Lewis |q 53465/1 |goto Drustvar/0 56.40,49.06
step
click Teapot
Pour the Tea |q 53465/2 |goto Drustvar/0 58.18,47.91
step
kill Conjured Horror##122673 |q 53465/3 |goto Drustvar/0 58.18,47.91
step
Click the Quest Complete Box:
turnin Tea Party##53465 |goto Drustvar/0 57.71,47.75
step
collect 200 Polished Pet Charm##163036
|tip These are earned from questing in Zandalar and Kul Tiras as well as War Campaign Missions, World Quests, treasures and rares.
only if not haspet(2189)
step
talk Xun Xun Sweetflower##136269
buy 10 Tirasreli Gourmet Chocolate##155810 |goto Drustvar/0 20.68,45.58 |complete haspet(2189)
Click Here to Continue |confirm |next "buy"
|tip If you have already taken the candy from the Advenurer's Society, click the line above.
step
click Adventurer's Society Loot Stash |goto Drustvar/0 52.32,31.73
|tip Inside the building.
|tip Loot the chest twice.
Click Here to Continue |confirm |complete haspet(2189)
step
label "buy"
talk Nigel Rifthold##142197
|tip He will show up after you've looted the chest twice.
buy Smoochums' Bloody Heart##160708 |goto Drustvar/0 52.32,31.68 |complete haspet(2189)
step
use Smoochums' Bloody Heart##160708
Collect the "Smoochums" Battle Pet |learnpet Smoochums##2189
step
_Congratulations!_
You Collected a "Smoochums" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Spectral Raven",{
patch='80100',
source='PetBattle',
author="support@zygorguides.com",
description="This pet can be captured in the wild around The Necropolis in northern Nazmir.",
pet=2397,
},[[
step
clicknpc Spectral Raven##143054
Weaken and capture the Spectral Raven in battle
|tip Use the "Trap" ability once it is below 35% health.
|tip They are found all around The Necropolis.
Collect the "Spectral Raven" Battle Pet |learnpet Spectral Raven##2397 |goto Nazmir/0 42.73,25.32
step
_Congratulations!_
You Collected a "Spectral Raven" Battle Pet.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Wicker Pup",{
patch='80100',
source='Drop',
author="support@zygorguides.com",
description="This pet can be captured after a BFA treasure hunt in Drustvar.",
pet=2411,
},[[
step
click Hexed Chest##297878
collect Bundle of Wicker Sticks##163789	|goto Drustvar/0 18.5,51.4 |complete haspet(2411)
step
Enter the cave |goto Drustvar/0 25.40,23.53 < 10 |walk
click Enchanted Chest##297881 |goto Drustvar/0 25.45,24.15
|tip Inside the cave.
collect Wolf Pup Spine##163796 |goto Drustvar/0 25.4,24.1 |complete haspet(2411)
step
click Bespelled Chest##297879
collect Spooky Incantation##163790 |goto Drustvar/0 55.58,51.83 |complete haspet(2411)
step
Follow the path up |goto Drustvar/0 68.48,69.10 < 15 |only if walking
Follow the path |goto Drustvar/0 67.59,70.37 < 15 |only if walking
Continue up the path |goto Drustvar/0 67.38,71.23 < 15 |only if walking
Continue up the path |goto Drustvar/0 67.45,72.41 < 15 |only if walking
click Ensorcelled Chest##297880
collect Miniature Stag Skull##163791 |goto Drustvar/0 67.8,73.7 |complete haspet(2411)
step
use the Spooky Incantation##163790
collect Spooky Bundle of Sticks##163497 |complete haspet(2411)
step
use the Spooky Bundle of Sticks##163497
Collect the "Wicker Pup" Battle Pet |learnpet Wicker Pup##2411
step
_Congratulations!_
You Collected a "Wicker Pup" Battle Pet.
]])
