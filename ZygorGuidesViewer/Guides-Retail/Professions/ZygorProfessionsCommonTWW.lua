local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("ProfessionsCTWW") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Leveling Guides\\Khaz Algar Alchemy 1-100",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Khaz Algar Alchemy profession from 1-100.",
startlevel=68.0,
condition_end=function() return skill('Khaz Algar Alchemy') >= 100 end,
condition_suggested=function() return skill('Khaz Algar Alchemy') > 0 and skill('Khaz Algar Alchemy') < 100 and level >= 70 end,
},[[
step
Approximate bill of materials:
|tip Mycobloom: 84
|tip Arathor's Spear: 72
|tip Additional Herbs of your choice: 50
|tip These totals are approximate. Due to the nature of Wild Experimentation we cannot know which recipes you will get.
|tip You are encouraged to make each recipe at least once and utilize the Crafting Order system, which will vary the materials needed.
|tip These materials will get you to approximately 50 skill level.
Click Here to Continue |confirm
step
talk Tarig <Alchemy Trainer>##219092
Train Alchenmy |skillmax Alchemy,300 |goto Dornogal/0 47.10,70.48
step
talk Tarig <Alchemy Trainer>##219092
Train Khaz Algar Alchemy |skillmax Khaz Algar Alchemy,100 |goto Dornogal/0 47.10,70.48
step
talk Grink##219091
buy 50 Gilded Vial##211806 |goto Dornogal/0 47.33,70.76 |or
'|complete skill("Khaz Algar Alchemy") >= 21 |or |only if default
'|complete skill("Khaz Algar Alchemy") >= 26 |or |only if KulTiran
'|complete skill("Khaz Algar Alchemy") >= 36 |or |only if Goblin
step
collect 50 Mycobloom##210796 |or |usebank
_Or_
collect 50 Mycobloom##210797 |or |usebank
_Or_
collect 50 Mycobloom##210798 |or |usebank
|tip Farm them with Herbalism or purchase them from the auction house.
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Mycobloom (Azj-Kahet)"
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Mycobloom (Hallowfall)"
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Mycobloom (Isle of Dorn)"
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Mycobloom (The Ringing Deeps)"
'|complete skill("Khaz Algar Alchemy") >= 21 |or |only if default
'|complete skill("Khaz Algar Alchemy") >= 26 |or |only if KulTiran
'|complete skill("Khaz Algar Alchemy") >= 36 |or |only if Goblin
step
create 10 Algari Healing Potion##430590,Khaz Algar Alchemy,21 |goto Dornogal/0 47.10,70.48 |only if default
create 10 Algari Healing Potion##430590,Khaz Algar Alchemy,26 |goto Dornogal/0 47.10,70.48 |only if KulTiran
create 10 Algari Healing Potion##430590,Khaz Algar Alchemy,36 |goto Dornogal/0 47.10,70.48 |only if Goblin
step
create Neutralize Concoctions##427214,Khaz Algar Alchemy,27 |goto Dornogal/0 47.10,70.48 |n |only if default
create Neutralize Concoctions##427214,Khaz Algar Alchemy,32 |goto Dornogal/0 47.10,70.48 |n |only if KulTiran
create Neutralize Concoctions##427214,Khaz Algar Alchemy,42 |goto Dornogal/0 47.10,70.48 |n |only if Goblin
|tip Use Neutralize Concoctions on your Healing Potions to gain Coreway Catalysts.
collect 4 Coreway Catalyst##210815 |or |usebank
'|complete skill("Khaz Algar Alchemy") >= 27 |or |only if default
'|complete skill("Khaz Algar Alchemy") >= 32 |or |only if KulTiran
'|complete skill("Khaz Algar Alchemy") >= 42 |or |only if Goblin
step
create 4 Wild Experimentation##427174,Khaz Algar Alchemy,27 |goto Dornogal/0 47.10,70.48 |only if default
create 4 Wild Experimentation##427174,Khaz Algar Alchemy,32 |goto Dornogal/0 47.10,70.48 |only if KulTiran
create 4 Wild Experimentation##427174,Khaz Algar Alchemy,42 |goto Dornogal/0 47.10,70.48 |only if Goblin
|tip This will teach you random recipes.
step
talk Tarig <Alchemy Trainer>##219092
Train Petal Powder |learn Petal Powder##462122 |goto Dornogal/0 47.10,70.48
stickystart "Collect_Arathor's_Spear_35"
step
collect 24 Mycobloom##210796 |or |usebank
_Or_
collect 24 Mycobloom##210797 |or |usebank
_Or_
collect 24 Mycobloom##210798 |or |usebank
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Mycobloom (Azj-Kahet)"
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Mycobloom (Hallowfall)"
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Mycobloom (Isle of Dorn)"
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Mycobloom (The Ringing Deeps)"
'|complete skill("Khaz Algar Alchemy") >= 35 |or |only if default
'|complete skill("Khaz Algar Alchemy") >= 40 |or |only if KulTiran
'|complete skill("Khaz Algar Alchemy") >= 50 |or |only if Goblin
step
label "Collect_Arathor's_Spear_35"
collect 72 Arathor's Spear##210808 |or |usebank
_Or_
collect 72 Arathor's Spear##210809 |or |usebank
_Or_
collect 72 Arathor's Spear##210810 |or |usebank
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Arathor's Spear (Hallowfall)" |notinsticky
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Arathor's Spear (The Ringing Deeps)" |notinsticky
'|complete skill("Khaz Algar Alchemy") >= 35 |or |only if default
'|complete skill("Khaz Algar Alchemy") >= 40 |or |only if KulTiran
'|complete skill("Khaz Algar Alchemy") >= 50 |or |only if Goblin
step
create 12 Petal Powder##462122,Khaz Algar Alchemy,35 |goto Dornogal/0 47.10,70.48 |only if default
create 12 Petal Powder##462122,Khaz Algar Alchemy,40 |goto Dornogal/0 47.10,70.48 |only if KulTiran
create 12 Petal Powder##462122,Khaz Algar Alchemy,50 |goto Dornogal/0 47.10,70.48 |only if Goblin
step
Reach Skill Level 100 in Khaz Algar Alchemy |skill Khaz Algar Alchemy,100 |or |only if default
Reach Skill Level 105 in Khaz Algar Alchemy |skill Khaz Algar Alchemy,105 |or |only if KulTiran
Reach Skill Level 105 in Khaz Algar Alchemy |skill Khaz Algar Alchemy,115 |or |only if Goblin
|tip From this point, it becomes impossible to know what recipes player learn due to Wild Experimentation.
|tip Craft whichever Yellow or Orange recipe you have that is cheap.
|tip Once you are out of yellow or orange recipes, use Meticulous Experimentation to find a Flask recipe.
|tip Flasks get you to max skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Khaz Algar Alchemy Knowledge Treasures",{
author="support@zygorguides.com",
description="This guide will walk you through collecting all Alchemy Knowledge Treasures.",
startlevel=68.0,
condition_end=function() return completedallq(83840,83841,83843,83842,83844,83845,83847,83846) end,
condition_suggested=function() return skill('Khaz Algar Alchemy') > 0 and not completedallq(83840,83841,83843,83842,83844,83845,83847,83846) end,
},[[
step
click Earthen Iron Powder##456025
|tip It looks like a barrel by the gate.
collect Earthen Iron Powder##226265 |goto Dornogal/0 32.45,60.32 |q 83840 |future
step
use the Earthen Iron Powder##226265
Study the Earthen Iron Powder |q 83840 |future
step
click Metal Dornogal Frame##456024
|tip It's ontop of a chest in the stall.
collect Metal Dornogal Frame##226266 |goto Isle of Dorn/0 57.70,61.80 |q 83841 |future
step
use the Metal Dornogal Frame##226266
Study the Metal Dornogal Frame |q 83841 |future
step
click Engraved Stirring Rod##456022
|tip Inside the building by the forge.
collect Engraved Stirring Rod##226268 |goto The Ringing Deeps/0 64.94,61.74 |q 83843 |future
step
use the Engraved Stirring Rod##226268
Study the Engraved Stirring Rod |q 83843 |future
step
click Reinforced Beaker##456023 |goto The Ringing Deeps/0 42.44,23.94 < 10
|tip Inside the building on the ground level, on the table.
collect Reinforced Beaker##226267 |goto The Ringing Deeps/0 42.21,24.16 |q 83842 |future
step
use the Reinforced Beaker##226267
Study the Reinforced Beaker |q 83842 |future
step
click Chemist's Purified Water##456021
collect Chemist's Purified Water##226269 |goto Hallowfall/0 42.65,55.10 |q 83844 |future
step
use the Chemist's Purified Water##226269
Study the Chemist's Purified Water |q 83844 |future
step
click Sanctified Mortar and Pestle##456020
|tip Inside the Orphanage building.
collect Sanctified Mortar and Pestle##226270 |goto Hallowfall/0 41.68,55.82 |q 83845 |future
step
use the Sanctified Mortar and Pestle##226270
Study the Sanctified Mortar and Pestle |q 83845 |future
step
click Dark Apothecary's Vial##456018
|tip On the bottom floor of the tower.
collect Dark Apothecary's Vial##226272 |goto Azj-Kahet/0 42.84,57.33 |q 83847 |future
step
use the Dark Apothecary's Vial##226272
Study the Dark Apothecary's Vial |q 83847 |future
step
click Nerubian Mixing Salts##456019
|tip On the counter.
collect Nerubian Mixing Salts##226271 |goto Nerub'ar/1 45.36,13.22 |q 83846 |future
step
use the Nerubian Mixing Salts##226271
Study the Nerubian Mixing Salts |q 83846 |future
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Leveling Guides\\Khaz Algar Blacksmithing 1-100",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Khaz Algar Blacksmithing profession from 1-100.",
startlevel=68.0,
condition_end=function() return skill('Khaz Algar Blacksmithing') >= 100 end,
condition_suggested=function() return skill('Khaz Algar Blacksmithing') > 0 and skill('Khaz Algar Blacksmithing') < 100 and level >= 70 end,
},[[
step
Approximate bill of materials:
|tip Bismuth: 533
|tip Ironclaw Ore: 33
|tip Crystalline Powder: 18
|tip These totals are approximate.
|tip You are encouraged to make each recipe at least once and utilize the Crafting Order system, which will vary the materials needed.
|tip These materials will get you to approximately 50 skill level.
Click Here to Continue |confirm
step
talk Darean##223644
|tip Inside the building.
Train Blacksmithing |skillmax Blacksmithing,300 |goto Dornogal/0 49.19,63.49
step
talk Darean##223644
|tip Inside the building.
Train Khaz Algar Blacksmithing |skillmax Khaz Algar Blacksmithing,100 |goto Dornogal/0 49.19,63.49
step
talk Darean##223644
|tip Inside the building.
Train Core Alloy |learn Core Alloy##450216 |goto Dornogal/0 49.19,63.49
step
talk Borgos##223643
buy 320 Echoing Flux##226202 |goto Dornogal/0 48.71,62.52 |or
'|complete skill("Khaz Algar Blacksmithing") >= 15 |or |only if default
'|complete skill("Khaz Algar Blacksmithing") >= 20 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Khaz Algar Blacksmithing") >= 25 |or |only if LightforgedDraenei
step
collect 400 Bismuth##210930 |or |usebank
|tip Farm them with Mining or purchase them from the auction house.
|loadguide "Profession Guides\\Mining\\Farming Guides\\Bismuth (Azj-Kahet)"
|loadguide "Profession Guides\\Mining\\Farming Guides\\Bismuth (Hallowfall)"
|loadguide "Profession Guides\\Mining\\Farming Guides\\Bismuth (Isle of Dorn)"
|loadguide "Profession Guides\\Mining\\Farming Guides\\Bismuth (The Ringing Deeps)"
'|complete skill("Khaz Algar Blacksmithing") >= 15 |or |only if default
'|complete skill("Khaz Algar Blacksmithing") >= 20 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Khaz Algar Blacksmithing") >= 25 |or |only if LightforgedDraenei
step
create 40 Core Alloy##450216,Khaz Algar Blacksmithing,40 total |goto Dornogal/0 49.19,63.49
|tip You need to stand next to an anvil to craft this.
|tip You may need additional crafts to reach 15.
|tip Save these we will use them later.
step
create Core Alloy##450216,Khaz Algar Blacksmithing,15 |goto Dornogal/0 49.19,63.49 |only if default
create Core Alloy##450216,Khaz Algar Blacksmithing,15 |goto Dornogal/0 49.19,63.49 |only if DarkIronDwarf or KulTiran
create Core Alloy##450216,Khaz Algar Blacksmithing,15 |goto Dornogal/0 49.19,63.49 |only if LightforgedDraenei
|tip You need to stand next to an anvil to craft this.
|tip You may need additional crafts to reach 15.
|tip Save these we will use them later.
step
talk Darean##223644
|tip Inside the building.
Train Dredger's Plate Breastplate |learn Dredger's Plate Breastplate##450259 |goto Dornogal/0 49.19,63.49
stickystart "Collect_Core_Alloy_21"
step
collect 9 Bismuth##210930 |or |usebank
|tip Farm them with Mining or purchase them from the auction house.
|loadguide "Profession Guides\\Mining\\Farming Guides\\Bismuth (Azj-Kahet)"
|loadguide "Profession Guides\\Mining\\Farming Guides\\Bismuth (Hallowfall)"
|loadguide "Profession Guides\\Mining\\Farming Guides\\Bismuth (Isle of Dorn)"
|loadguide "Profession Guides\\Mining\\Farming Guides\\Bismuth (The Ringing Deeps)"
'|complete skill("Khaz Algar Blacksmithing") >= 21 |or |only if default
'|complete skill("Khaz Algar Blacksmithing") >= 26 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Khaz Algar Blacksmithing") >= 31 |or |only if LightforgedDraenei
step
label "Collect_Core_Alloy_21"
collect 6 Core Alloy##222417 |or |usebank
|tip You created these in a previous step.
'|complete skill("Khaz Algar Blacksmithing") >= 21 |or |only if default
'|complete skill("Khaz Algar Blacksmithing") >= 26 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Khaz Algar Blacksmithing") >= 31 |or |only if LightforgedDraenei
step
create 3 Dredger's Plate Breastplate##450259,Khaz Algar Blacksmithing,21 |goto Dornogal/0 49.19,63.49 |only if default
create 3 Dredger's Plate Breastplate##450259,Khaz Algar Blacksmithing,26 |goto Dornogal/0 49.19,63.49 |only if DarkIronDwarf or KulTiran
create 3 Dredger's Plate Breastplate##450259,Khaz Algar Blacksmithing,31 |goto Dornogal/0 49.19,63.49 |only if LightforgedDraenei
|tip You need to stand next to an anvil to craft this.
step
talk Darean##223644
|tip Inside the building.
Train Proficient Blacksmith's Hammer |learn Proficient Blacksmith's Hammer##450273 |goto Dornogal/0 49.19,63.49
step
collect 1 Core Alloy##222417 |or |usebank
|tip You created these in a previous step.
'|complete skill("Khaz Algar Blacksmithing") >= 22 |or |only if default
'|complete skill("Khaz Algar Blacksmithing") >= 27 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Khaz Algar Blacksmithing") >= 32 |or |only if LightforgedDraenei
step
create 1 Proficient Blacksmith's Hammer##450273,Khaz Algar Blacksmithing,22 |goto Dornogal/0 49.19,63.49 |only if default
create 1 Proficient Blacksmith's Hammer##450273,Khaz Algar Blacksmithing,27 |goto Dornogal/0 49.19,63.49 |only if DarkIronDwarf or KulTiran
create 1 Proficient Blacksmith's Hammer##450273,Khaz Algar Blacksmithing,32 |goto Dornogal/0 49.19,63.49 |only if LightforgedDraenei
|tip You need to stand next to an anvil to craft this.
step
talk Darean##223644
|tip Inside the building.
Train Dredger's Developed Greatbelt |learn Dredger's Developed Greatbelt##450260 |goto Dornogal/0 49.19,63.49
stickystart "Collect_Core_Alloy_26"
step
collect 2 Bismuth##210930 |or |usebank
|tip Farm them with Mining or purchase them from the auction house.
|loadguide "Profession Guides\\Mining\\Farming Guides\\Bismuth (Azj-Kahet)"
|loadguide "Profession Guides\\Mining\\Farming Guides\\Bismuth (Hallowfall)"
|loadguide "Profession Guides\\Mining\\Farming Guides\\Bismuth (Isle of Dorn)"
|loadguide "Profession Guides\\Mining\\Farming Guides\\Bismuth (The Ringing Deeps)"
'|complete skill("Khaz Algar Blacksmithing") >= 26 |or |only if default
'|complete skill("Khaz Algar Blacksmithing") >= 31 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Khaz Algar Blacksmithing") >= 36 |or |only if LightforgedDraenei
step
label "Collect_Core_Alloy_26"
collect 4 Core Alloy##222417 |or |usebank
|tip You created these in a previous step.
'|complete skill("Khaz Algar Blacksmithing") >= 26 |or |only if default
'|complete skill("Khaz Algar Blacksmithing") >= 31 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Khaz Algar Blacksmithing") >= 36 |or |only if LightforgedDraenei
step
create 2 Dredger's Developed Greatbelt##450260,Khaz Algar Blacksmithing,26 |goto Dornogal/0 49.19,63.49 |only if default
create 2 Dredger's Developed Greatbelt##450260,Khaz Algar Blacksmithing,31 |goto Dornogal/0 49.19,63.49 |only if DarkIronDwarf or KulTiran
create 2 Dredger's Developed Greatbelt##450260,Khaz Algar Blacksmithing,36 |goto Dornogal/0 49.19,63.49 |only if LightforgedDraenei
|tip You need to stand next to an anvil to craft this.
step
talk Darean##223644
|tip Inside the building.
Train Proficient Blacksmith's Toolbox |learn Proficient Blacksmith's Toolbox##450274 |goto Dornogal/0 49.19,63.49
step
collect 1 Core Alloy##222417 |or |usebank
|tip You created these in a previous step.
'|complete skill("Khaz Algar Blacksmithing") >= 27 |or |only if default
'|complete skill("Khaz Algar Blacksmithing") >= 32 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Khaz Algar Blacksmithing") >= 37 |or |only if LightforgedDraenei
step
create 1 Proficient Blacksmith's Toolbox##450274,Khaz Algar Blacksmithing,27 |goto Dornogal/0 49.19,63.49 |only if default
create 1 Proficient Blacksmith's Toolbox##450274,Khaz Algar Blacksmithing,32 |goto Dornogal/0 49.19,63.49 |only if DarkIronDwarf or KulTiran
create 1 Proficient Blacksmith's Toolbox##450274,Khaz Algar Blacksmithing,37 |goto Dornogal/0 49.19,63.49 |only if LightforgedDraenei
|tip You need to stand next to an anvil to craft this.
stickystart "Collect_Core_Alloy_31"
step
collect 2 Bismuth##210930 |or |usebank
|tip Farm them with Mining or purchase them from the auction house.
|loadguide "Profession Guides\\Mining\\Farming Guides\\Bismuth (Azj-Kahet)"
|loadguide "Profession Guides\\Mining\\Farming Guides\\Bismuth (Hallowfall)"
|loadguide "Profession Guides\\Mining\\Farming Guides\\Bismuth (Isle of Dorn)"
|loadguide "Profession Guides\\Mining\\Farming Guides\\Bismuth (The Ringing Deeps)"
'|complete skill("Khaz Algar Blacksmithing") >= 31 |or |only if default
'|complete skill("Khaz Algar Blacksmithing") >= 36 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Khaz Algar Blacksmithing") >= 41 |or |only if LightforgedDraenei
step
label "Collect_Core_Alloy_31"
collect 4 Core Alloy##222417 |or |usebank
|tip You created these in a previous step.
'|complete skill("Khaz Algar Blacksmithing") >= 31 |or |only if default
'|complete skill("Khaz Algar Blacksmithing") >= 36 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Khaz Algar Blacksmithing") >= 41 |or |only if LightforgedDraenei
step
create 2 Dredger's Developed Greatbelt##450260,Khaz Algar Blacksmithing,31 |goto Dornogal/0 49.19,63.49 |only if default
create 2 Dredger's Developed Greatbelt##450260,Khaz Algar Blacksmithing,36 |goto Dornogal/0 49.19,63.49 |only if DarkIronDwarf or KulTiran
create 2 Dredger's Developed Greatbelt##450260,Khaz Algar Blacksmithing,41 |goto Dornogal/0 49.19,63.49 |only if LightforgedDraenei
|tip You need to stand next to an anvil to craft this.
step
talk Darean##223644
|tip Inside the building.
Train Dredger's Developed Helm |learn Dredger's Developed Helm##450262 |goto Dornogal/0 49.19,63.49
stickystart "Collect_Core_Alloy_41"
step
collect 20 Bismuth##210930 |or |usebank
|tip Farm them with Mining or purchase them from the auction house.
|loadguide "Profession Guides\\Mining\\Farming Guides\\Bismuth (Azj-Kahet)"
|loadguide "Profession Guides\\Mining\\Farming Guides\\Bismuth (Hallowfall)"
|loadguide "Profession Guides\\Mining\\Farming Guides\\Bismuth (Isle of Dorn)"
|loadguide "Profession Guides\\Mining\\Farming Guides\\Bismuth (The Ringing Deeps)"
'|complete skill("Khaz Algar Blacksmithing") >= 41 |or |only if default
'|complete skill("Khaz Algar Blacksmithing") >= 46 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Khaz Algar Blacksmithing") >= 51 |or |only if LightforgedDraenei
step
label "Collect_Core_Alloy_41"
collect 15 Core Alloy##222417 |or |usebank
|tip You created these in a previous step.
'|complete skill("Khaz Algar Blacksmithing") >= 41 |or |only if default
'|complete skill("Khaz Algar Blacksmithing") >= 46 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Khaz Algar Blacksmithing") >= 51 |or |only if LightforgedDraenei
step
create 5 Dredger's Developed Helm##450262,Khaz Algar Blacksmithing,41 |goto Dornogal/0 49.19,63.49 |only if default
create 5 Dredger's Developed Helm##450262,Khaz Algar Blacksmithing,46 |goto Dornogal/0 49.19,63.49 |only if DarkIronDwarf or KulTiran
create 5 Dredger's Developed Helm##450262,Khaz Algar Blacksmithing,51 |goto Dornogal/0 49.19,63.49 |only if LightforgedDraenei
|tip You need to stand next to an anvil to craft this.
step
talk Darean##223644
|tip Inside the building.
Train Tempered Framework |learn Tempered Framework##450289 |goto Dornogal/0 49.19,63.49
stickystart "Collect_Core_Alloy_50"
step
collect 9 Crystalline Powder##213610 |or |usebank
|tip Collect them from Khaz Algar profession nodes or purchase them from the auction house.
'|complete skill("Khaz Algar Blacksmithing") >= 50 |or |only if default
'|complete skill("Khaz Algar Blacksmithing") >= 55 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Khaz Algar Blacksmithing") >= 60 |or |only if LightforgedDraenei
step
label "Collect_Core_Alloy_50"
collect 9 Core Alloy##222417 |or |usebank
|tip You created these in a previous step.
'|complete skill("Khaz Algar Blacksmithing") >= 50 |or |only if default
'|complete skill("Khaz Algar Blacksmithing") >= 55 |or |only if DarkIronDwarf or KulTiran
'|complete skill("Khaz Algar Blacksmithing") >= 60 |or |only if LightforgedDraenei
step
create 9 Tempered Framework##450289,Khaz Algar Blacksmithing,50 |goto Dornogal/0 49.19,63.49 |only if default
create 9 Tempered Framework##450289,Khaz Algar Blacksmithing,55 |goto Dornogal/0 49.19,63.49 |only if DarkIronDwarf or KulTiran
create 9 Tempered Framework##450289,Khaz Algar Blacksmithing,60 |goto Dornogal/0 49.19,63.49 |only if LightforgedDraenei
|tip You need to stand next to an anvil to craft this.
step
Reach Skill Level 100 in Khaz Algar Blacksmithing |skill Khaz Algar Blacksmithing,100 |or |only if default
Reach Skill Level 105 in Khaz Algar Blacksmithing |skill Khaz Algar Blacksmithing,105 |or |only if DarkIronDwarf or KulTiran
Reach Skill Level 105 in Khaz Algar Blacksmithing |skill Khaz Algar Blacksmithing,110 |or |only if LightforgedDraenei
|tip From this point, it becomes very difficult to continue gaining points as soulbound materials are required.
|tip Your best path is the Crafting Order system to craft items for other players with provided materials.
|tip This makes it much cheaper to craft one of each recipe for the first craft bonus.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Khaz Algar Blacksmithing Knowledge Treasures",{
author="support@zygorguides.com",
description="This guide will walk you through collecting all Blacksmithing Knowledge Treasures.",
startlevel=68.0,
condition_end=function() return completedallq(83849,83848,83851,83850,83853,83852,83855,83854) end,
condition_suggested=function() return skill('Khaz Algar Blacksmithing') > 0 and not completedallq(83849,83848,83851,83850,83853,83852,83855,83854) end,
},[[
step
click Dornogal Hammer##456016
|tip Ontop of the blue cube.
collect Dornogal Hammer##226277 |goto Dornogal/0 47.64,26.28 |q 83849 |future
step
use the Dornogal Hammer##226277
Study the Dornogal Hammer |q 83849 |future
step
click Ancient Earthen Anvil##456017
|tip Inside the building.
collect Ancient Earthen Anvil##226276 |goto Isle of Dorn/0 59.82,61.88 |q 83848 |future
step
use the Ancient Earthen Anvil##226276
Study the Ancient Earthen Anvil |q 83848 |future
step
click Earthen Chisels##456014
collect Earthen Chisels##226279 |goto The Ringing Deeps/0 60.53,53.68 |q 83851 |future
step
use the Earthen Chisels##226279
Study the Earthen Chisels |q 83851 |future
step
click Ringing Hammer Vise##456015
|tip Near the pile of coal.
collect Ringing Hammer Vise##226278 |goto The Ringing Deeps/0 47.69,33.16 |q 83850 |future
step
use the Ringing Hammer Vise##226278
Study the Ringing Hammer Vise |q 83850 |future
step
click Radiant Tongs##456012
|tip Inside the tent on a table.
collect Radiant Tongs##226281 |goto Hallowfall/0 44.05,55.60 |q 83853 |future
step
use the Radiant Tongs##226281
Study the Radiant Tongs |q 83853 |future
step
click Holy Flame Forge##456013
|tip It's the big anvil on the table.
collect Holy Flame Forge##226280 |goto Hallowfall/0 47.59,61.07 |q 83852 |future
step
use the Holy Flame Forge##226280
Study the Holy Flame Forge |q 83852 |future
step
click Spiderling's Wire Brush##456010
|tip Inside the tower on a counter.
collect Spiderling's Wire Brush##226283 |goto Azj-Kahet/0 52.98,51.26 |q 83855 |future
step
use the Spiderling's Wire Brush##226283
Study the Spiderling's Wire Brush |q 83855 |future
step
click Nerubian Smith's Kit##456011
collect Nerubian Smith's Kit##226282 |goto Nerub'ar/1 46.52,22.86 |q 83854 |future
step
use the Nerubian Smith's Kit##226282
Study the Nerubian Smith's Kit |q 83854 |future
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Khaz Algar Cooking 1-100",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Khaz Algar Cooking profession from 1-100.",
startlevel=68.0,
condition_end=function() return skill('Khaz Algar Cooking') >= 100 end,
condition_suggested=function() return skill('Khaz Algar Cooking') > 0 and skill('Khaz Algar Cooking') < 100 and level >= 70 end,
},[[
step
Approximate bill of materials:
|tip Basically Beef: 170
|tip Portioned Steak: 580
|tip Fresh Fillet: 400
|tip Khaz Algar Tomato: 190
|tip Granulated Spices: 180
|tip Coreway Dust: 360
|tip Twined Herbs: 184
|tip Crunch Peppers: 40
|tip These totals are approximate.
|tip You are encouraged to make each recipe at least once and utilize the Crafting Order system, which will vary the materials needed.
|tip These materials will get you to approximately 70 skill level.
Click Here to Continue |confirm
step
talk Athodas##219104
|tip Inside the inn
Train Cooking |skillmax Cooking,300 |goto Dornogal/0 44.17,45.85
step
talk Athodas##219104
|tip Inside the inn
Train Khaz Algar Cooking |skillmax Khaz Algar Cooking,100 |goto Dornogal/0 44.17,45.85
step
collect 170 Basically Beef##223512 |or |usebank
|tip Farm them from creatures all over Khaz Algar or purchase them from the auction house.
'|complete skill("Khaz Algar Cooking") >= 25 |or |only if default
'|complete skill("Khaz Algar Cooking") >= 40 |or |only if Pandaren
step
create 17 Portioned Steak##445118,Khaz Algar Cooking,100 total |goto Dornogal/0 44.17,45.85
step
create 17 Spiced Meat Stock##445119,Khaz Algar Cooking,50 total |goto Dornogal/0 44.17,45.85
step
talk Athodas##219104
|tip Inside the inn
Train Marinated Tenderloins |learn Marinated Tenderloin##445103 |goto Dornogal/0 44.17,45.85
stickystart "Collect_Spiced_Meat_Stock_40"
step
collect 100 Portioned Steak##222738 |or |usebank
|tip You created these in a previous step.
'|complete skill("Khaz Algar Cooking") >= 40 |or |only if default
'|complete skill("Khaz Algar Cooking") >= 55 |or |only if Pandaren
step
label "Collect_Spiced_Meat_Stock_40"
collect 50 Spiced Meat Stock##222739 |or |usebank
|tip You created these in a previous step.
'|complete skill("Khaz Algar Cooking") >= 40 |or |only if default
'|complete skill("Khaz Algar Cooking") >= 55 |or |only if Pandaren
step
talk Kronzon##219103
buy 150 Khaz Algar Tomato##222699 |goto Dornogal/0 43.60,45.67 |or 2
buy 100 Granulated Spices##222700 |goto Dornogal/0 43.60,45.67 |or 2
'|complete skill("Khaz Algar Cooking") >= 40 |override |only if default
'|complete skill("Khaz Algar Cooking") >= 55 |override |only if Pandaren
step
create 10 Marinated Tenderloin##445103,Khaz Algar Cooking,40 |goto Dornogal/0 44.17,45.85 |only if default
create 10 Marinated Tenderloin##445103,Khaz Algar Cooking,55 |goto Dornogal/0 44.17,45.85 |only if Pandaren
step
talk Athodas##219104
|tip Inside the inn
Train Tender Twilight Jerky |learn Tender Twilight Jerky##445093 |goto Dornogal/0 44.17,45.85
step
collect 120 Portioned Steak##222738 |or |usebank
|tip Create them with cooking or purchase them from the auction house.
'|complete skill("Khaz Algar Cooking") >= 50 |or |only if default
'|complete skill("Khaz Algar Cooking") >= 65 |or |only if Pandaren
step
talk Kronzon##219103
buy 64 Twined Herbs##222695 |goto Dornogal/0 43.60,45.67 |or 2
buy 40 Coreway Dust##222697 |goto Dornogal/0 43.60,45.67 |or 2
'|complete skill("Khaz Algar Cooking") >= 50 |override |only if default
'|complete skill("Khaz Algar Cooking") >= 65 |override |only if Pandaren
step
create 8 Tender Twilight Jerky##445093,Khaz Algar Cooking,50 |goto Dornogal/0 44.17,45.85 |only if default
create 8 Tender Twilight Jerky##445093,Khaz Algar Cooking,65 |goto Dornogal/0 44.17,45.85 |only if Pandaren
step
talk Athodas##219104
|tip Inside the inn
Train Stuffed Cave Peppers |learn Stuffed Cave Peppers##445106 |goto Dornogal/0 44.17,45.85
step
collect 200 Portioned Steak##222738 |or |usebank
|tip Create them with cooking or purchase them from the auction house.
'|complete skill("Khaz Algar Cooking") >= 60 |or |only if default
'|complete skill("Khaz Algar Cooking") >= 75 |or |only if Pandaren
step
talk Kronzon##219103
buy 40 Crunchy Peppers##222696  |goto Dornogal/0 43.60,45.67 |or 3
buy 40 Khaz Algar Tomato##222699 |goto Dornogal/0 43.60,45.67 |or 3
buy 80 Granulated Spices##222700 |goto Dornogal/0 43.60,45.67 |or 3
'|complete skill("Khaz Algar Cooking") >= 60 |override |only if default
'|complete skill("Khaz Algar Cooking") >= 75 |override |only if Pandaren
step
create 8 Stuffed Cave Peppers##445106,Khaz Algar Cooking,60 |goto Dornogal/0 44.17,45.85 |only if default
create 8 Stuffed Cave Peppers##445106,Khaz Algar Cooking,75 |goto Dornogal/0 44.17,45.85 |only if Pandaren
step
talk Athodas##219104
|tip Inside the inn
Train Jester's Board |learn Jester's Board##445110 |goto Dornogal/0 44.17,45.85
step
collect 400 Fresh Fillet##222741 |or |usebank
|tip Fillet caught fish or purchase them from the auction house.
'|complete skill("Khaz Algar Cooking") >= 70 |or |only if default
'|complete skill("Khaz Algar Cooking") >= 85 |or |only if Pandaren
step
collect 160 Portioned Steak##222738 |or |usebank
|tip Create them with cooking or purchase them from the auction house.
'|complete skill("Khaz Algar Cooking") >= 70 |or |only if default
'|complete skill("Khaz Algar Cooking") >= 85 |or |only if Pandaren
step
talk Kronzon##219103
buy 120 Twined Herbs##222695 |goto Dornogal/0 43.60,45.67 |or 2
buy 320 Coreway Dust##222697 |goto Dornogal/0 43.60,45.67 |or 2
'|complete skill("Khaz Algar Cooking") >= 70 |override |only if default
'|complete skill("Khaz Algar Cooking") >= 85 |override |only if Pandaren
step
create 8 Jester's Board##445110,Khaz Algar Cooking,70 |goto Dornogal/0 44.17,45.85 |only if default
create 8 Jester's Board##445110,Khaz Algar Cooking,85 |goto Dornogal/0 44.17,45.85 |only if Pandaren
step
Reach Skill 100 in Khaz Algar Cooking |skill Khaz Algar Cooking,100 |goto Dornogal/0 46.53,46.25 |or |only if default
Reach Skill 115 in Khaz Algar Cooking |skill Khaz Algar Cooking,115 |goto Dornogal/0 46.53,46.25 |or |only if Pandaren
|tip From this point there is a wide number of recipes you can craft depending on what recipes you find from drops or Weekly events.
|tip It is recommended to try to craft Best of the Best meals or Feasts if possible.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Leveling Guides\\Khaz Algar Enchanting 1-100",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Khaz Algar Enchanting profession from 1-100.",
startlevel=68.0,
condition_end=function() return skill('Khaz Algar Enchanting') >= 100 end,
condition_suggested=function() return skill('Khaz Algar Enchanting') > 0 and skill('Khaz Algar Enchanting') < 100 and level >= 70 end,
},[[
step
Approximate bill of materials:
|tip Stormdust: 405
|tip Codified Greenwood: 4
|tip These totals are approximate.
|tip You are encouraged to make each recipe at least once and utilize the Crafting Order system, which will vary the materials needed.
|tip These materials will get you to approximately 65 skill level.
Click Here to Continue |confirm
step
talk Nagad##219085
Train Enchanting |skillmax Enchanting,300 |goto Dornogal/0 52.90,71.32
step
talk Nagad##219085
Train Khaz Algar Enchanting |skillmax Khaz Algar Enchanting,100 |goto Dornogal/0 52.90,71.32
step
talk Llande##219086
collect 87 Enchanting Vellum##38682 |goto Dornogal/0 52.34,71.67 |or |usebank
|tip Use these to sell your enchants.
'|complete skill("Khaz Algar Enchanting") >= 10 |or |only if default
'|complete skill("Khaz Algar Enchanting") >= 15 |or |only if KulTiran
'|complete skill("Khaz Algar Enchanting") >= 25 |or |only if BloodElf
step
collect 45 Storm Dust##219946 |or |usebank
|tip Disenchant Khaz Algar items or purchase them from the auction house.
'|complete skill("Khaz Algar Enchanting") >= 10 |or |only if default
'|complete skill("Khaz Algar Enchanting") >= 15 |or |only if KulTiran
'|complete skill("Khaz Algar Enchanting") >= 25 |or |only if BloodElf
step
create 9 Enchant Ring - Glimmering Haste##445384,Khaz Algar Enchanting,10 |goto Dornogal/0 52.90,71.32 |only if default
create 9 Enchant Ring - Glimmering Haste##445384,Khaz Algar Enchanting,15 |goto Dornogal/0 52.90,71.32 |only if KulTiran
create 9 Enchant Ring - Glimmering Haste##445384,Khaz Algar Enchanting,25 |goto Dornogal/0 52.90,71.32 |only if BloodElf
|tip You can also level 1-25 by Disenchanting Khaz Algar items if you want to save materials.
step
talk Nagad##219085
Train Glimmering Critical Strike |learn Glimmering Critical Strike##445358 |goto Dornogal/0 52.90,71.32
step
collect 25 Storm Dust##219946 |or |usebank
|tip Disenchant Khaz Algar items or purchase them from the auction house.
'|complete skill("Khaz Algar Enchanting") >= 15 |or |only if default
'|complete skill("Khaz Algar Enchanting") >= 20 |or |only if KulTiran
'|complete skill("Khaz Algar Enchanting") >= 30 |or |only if BloodElf
step
create 5 Enchant Ring - Glimmering Critical Strike##445358,Khaz Algar Enchanting,15 |goto Dornogal/0 52.90,71.32 |only if default
create 5 Enchant Ring - Glimmering Critical Strike##445358,Khaz Algar Enchanting,20 |goto Dornogal/0 52.90,71.32 |only if KulTiran
create 5 Enchant Ring - Glimmering Critical Strike##445358 ,Khaz Algar Enchanting,30 |goto Dornogal/0 52.90,71.32 |only if BloodElf
|tip You can also level 1-25 by Disenchanting Khaz Algar items if you want to save materials.
step
talk Nagad##219085
Train Whisper of Silken Avoidance |learn Whisper of Silken Avoidance##445344 |goto Dornogal/0 52.90,71.32
step
collect 100 Storm Dust##219946 |or |usebank
|tip Disenchant Khaz Algar items or purchase them from the auction house.
'|complete skill("Khaz Algar Enchanting") >= 25 |or |only if default
'|complete skill("Khaz Algar Enchanting") >= 30 |or |only if KulTiran
'|complete skill("Khaz Algar Enchanting") >= 40 |or |only if BloodElf
step
create 10 Enchant Cloak - Whisper of Silken Avoidance##445344,Khaz Algar Enchanting,25 |goto Dornogal/0 52.90,71.32 |only if default
create 10 Enchant Cloak - Whisper of Silken Avoidance##445344,Khaz Algar Enchanting,30 |goto Dornogal/0 52.90,71.32 |only if KulTiran
create 10 Enchant Cloak - Whisper of Silken Avoidance##445344,Khaz Algar Enchanting,40 |goto Dornogal/0 52.90,71.32 |only if BloodElf
|tip You can level 1-25 via Disenchanting items if you want to save materials.
step
talk Nagad##219085
Train Glimmering Mastery |learn Glimmering Mastery##445381 |goto Dornogal/0 52.90,71.32
step
collect 50 Storm Dust##219946 |or |usebank
|tip Disenchant Khaz Algar items or purchase them from the auction house.
'|complete skill("Khaz Algar Enchanting") >= 35 |or |only if default
'|complete skill("Khaz Algar Enchanting") >= 40 |or |only if KulTiran
'|complete skill("Khaz Algar Enchanting") >= 50 |or |only if BloodElf
step
create 10 Enchant Ring - Glimmering Mastery##445381,Khaz Algar Enchanting,35 |goto Dornogal/0 52.90,71.32 |only if default
create 10 Enchant Ring - Glimmering Mastery##445381,Khaz Algar Enchanting,40 |goto Dornogal/0 52.90,71.32 |only if KulTiran
create 10 Enchant Ring - Glimmering Mastery##445381,Khaz Algar Enchanting,50 |goto Dornogal/0 52.90,71.32 |only if BloodElf
step
talk Nagad##219085
Train Whisper of Armored Speed |learn Whisper of Armored Speed##445376 |goto Dornogal/0 52.90,71.32
step
collect 50 Storm Dust##219946 |or |usebank
|tip Disenchant Khaz Algar items or purchase them from the auction house.
'|complete skill("Khaz Algar Enchanting") >= 40 |or |only if default
'|complete skill("Khaz Algar Enchanting") >= 45 |or |only if KulTiran
'|complete skill("Khaz Algar Enchanting") >= 55 |or |only if BloodElf
step
create 5 Enchant Bracer - Whisper of Armored Speed##445376,Khaz Algar Enchanting,40 |goto Dornogal/0 52.90,71.32 |only if default
create 5 Enchant Bracer - Whisper of Armored Speed##445376,Khaz Algar Enchanting,45 |goto Dornogal/0 52.90,71.32 |only if KulTiran
create 5 Enchant Bracer - Whisper of Armored Speed##445376,Khaz Algar Enchanting,55 |goto Dornogal/0 52.90,71.32 |only if BloodElf
step
talk Nagad##219085
Train Enchanted Spearwood Wand |learn Enchanted Spearwood Wand##445324 |goto Dornogal/0 52.90,71.32
stickystart "Collect_Codified_Greenwood_52"
step
collect 20 Storm Dust##219946 |or |usebank
|tip Disenchant Khaz Algar items or purchase them from the auction house.
'|complete skill("Khaz Algar Enchanting") >= 52 |or |only if default
'|complete skill("Khaz Algar Enchanting") >= 57 |or |only if KulTiran
'|complete skill("Khaz Algar Enchanting") >= 67 |or |only if BloodElf
step
label "Collect_Codified_Greenwood_52"
collect 4 Codified Greenwood##222555 |or |usebank
|tip Create them with Inscription or purchase them from the auction house.
'|complete skill("Khaz Algar Enchanting") >= 52 |or |only if default
'|complete skill("Khaz Algar Enchanting") >= 57 |or |only if KulTiran
'|complete skill("Khaz Algar Enchanting") >= 67 |or |only if BloodElf
step
create 3 Enchanted Spearwood Wand##445324,Khaz Algar Enchanting,52 |goto Dornogal/0 52.90,71.32 |only if default
create 3 Enchanted Spearwood Wand##445324,Khaz Algar Enchanting,57 |goto Dornogal/0 52.90,71.32 |only if KulTiran
create 3 Enchanted Spearwood Wand##445324,Khaz Algar Enchanting,67 |goto Dornogal/0 52.90,71.32 |only if BloodElf
step
talk Nagad##219085
Train Glimmering Versatility |learn Glimmering Versatility##445340 |goto Dornogal/0 52.90,71.32
step
collect 15 Storm Dust##219946 |or |usebank
|tip Disenchant Khaz Algar items or purchase them from the auction house.
'|complete skill("Khaz Algar Enchanting") >= 55 |or |only if default
'|complete skill("Khaz Algar Enchanting") >= 60 |or |only if KulTiran
'|complete skill("Khaz Algar Enchanting") >= 70 |or |only if BloodElf
step
create 3 Enchant Ring - Glimmering Versatility##445340,Khaz Algar Enchanting,55 |goto Dornogal/0 52.90,71.32 |only if default
create 3 Enchant Ring - Glimmering Versatility##445340,Khaz Algar Enchanting,60 |goto Dornogal/0 52.90,71.32 |only if KulTiran
create 3 Enchant Ring - Glimmering Versatility##445340,Khaz Algar Enchanting,70 |goto Dornogal/0 52.90,71.32 |only if BloodElf
step
talk Nagad##219085
Train Whisper of Silken Speed |learn Whisper of Silken Speed##445373 |goto Dornogal/0 52.90,71.32
step
collect 50 Storm Dust##219946 |or |usebank
|tip Disenchant Khaz Algar items or purchase them from the auction house.
'|complete skill("Khaz Algar Enchanting") >= 60 |or |only if default
'|complete skill("Khaz Algar Enchanting") >= 65 |or |only if KulTiran
'|complete skill("Khaz Algar Enchanting") >= 75 |or |only if BloodElf
step
create 5 Enchant Cloak - Whisper of Silken Speed##445373,Khaz Algar Enchanting,60 |goto Dornogal/0 52.90,71.32 |only if default
create 5 Enchant Cloak - Whisper of Silken Speed##445373,Khaz Algar Enchanting,65 |goto Dornogal/0 52.90,71.32 |only if KulTiran
create 5 Enchant Cloak - Whisper of Silken Speed##445373,Khaz Algar Enchanting,75 |goto Dornogal/0 52.90,71.32 |only if BloodElf
step
talk Nagad##219085
Train Whisper of Armored Leech |learn Whisper of Armored Leech##445374 |goto Dornogal/0 52.90,71.32
step
collect 50 Storm Dust##219946 |or |usebank
|tip Disenchant Khaz Algar items or purchase them from the auction house.
'|complete skill("Khaz Algar Enchanting") >= 65 |or |only if default
'|complete skill("Khaz Algar Enchanting") >= 70 |or |only if KulTiran
'|complete skill("Khaz Algar Enchanting") >= 80 |or |only if BloodElf
step
create 5 Enchant Bracer - Whisper of Armored Leech##445374,Khaz Algar Enchanting,65 |goto Dornogal/0 52.90,71.32 |only if default
create 5 Enchant Bracer - Whisper of Armored Leech##445374,Khaz Algar Enchanting,70 |goto Dornogal/0 52.90,71.32 |only if KulTiran
create 5 Enchant Bracer - Whisper of Armored Leech##445374,Khaz Algar Enchanting,80 |goto Dornogal/0 52.90,71.32 |only if BloodElf
step
Reach Skill Level 100 in Khaz Algar Enchanting |skill Khaz Algar Enchanting,100 |or |only if default
Reach Skill Level 105 in Khaz Algar Enchanting |skill Khaz Algar Enchanting,105 |or |only if KulTiran
Reach Skill Level 110 in Khaz Algar Enchanting |skill Khaz Algar Enchanting,115 |or |only if BloodElf
|tip From this point, it becomes very difficult to continue gaining points as soulbound materials are required.
|tip Your best path is the Crafting Order system to craft items for other players with provided materials.
|tip This makes it much cheaper to craft one of each recipe for the first craft bonus.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Khaz Algar Enchanting Knowledge Treasures",{
author="support@zygorguides.com",
description="This guide will walk you through collecting all Enchanting Knowledge Treasures.",
startlevel=68.0,
condition_end=function() return completedallq(83859,83856,83861,83860,83863,83862,83865,83864) end,
condition_suggested=function() return skill('Khaz Algar Enchanting') > 0 and not completedallq(83859,83856,83861,83860,83863,83862,83865,83864) end,
},[[
step
click Silver Dornogal Rod##456008
collect Silver Dornogal Rod##226285 |goto Dornogal/0 58.02,56.92 |q 83859 |future
step
use the Silver Dornogal Rod##226285
Study the Silver Dornogal Rod |q 83859 |future
step
click Grinded Earthen Gem##456009
|tip It's a blue vial on the desk.
collect Grinded Earthen Gem##226284 |goto Isle of Dorn/0 57.59,61.63 |q 83856 |future
step
use the Grinded Earthen Gem##226284
Study the Grinded Earthen Gem |q 83856 |future
step
click Animated Enchanting Dust##456006
|tip On a desk in the bunker.
collect Animated Enchanting Dust##226287 |goto The Ringing Deeps/0 67.18,65.90 |q 83861 |future
step
use the Animated Enchanting Dust##226287
Study the Animated Enchanting Dust |q 83861 |future
step
click Soot-Coated Orb##456007
|tip On the ground under the stall.
collect Soot-Coated Orb##226286 |goto The Ringing Deeps/0 44.58,22.13 |q 83860 |future
step
use the Soot-Coated Orb##226286
Study the Soot-Coated Orb |q 83860 |future
step
click Enchanted Arathi Scroll##456004
|tip Inside the building on the desk.
collect Enchanted Arathi Scroll##226289 |goto Hallowfall/0 48.60,64.51 |q 83863 |future
step
use the Enchanted Arathi Scroll##226289
Study the Enchanted Arathi Scroll |q 83863 |future
step
click Essence of Holy Fire##456005
|tip Inside ontop of the two crates.
collect Essence of Holy Fire##226288 |goto Hallowfall/0 40.06,70.54 |q 83862 |future
step
use the Essence of Holy Fire##226288
Study the Essence of Holy Fire |q 83862 |future
step
click Void Shard##456002
|tip On a table in the corner.
collect Void Shard##226291 |goto Azj-Kahet/0 57.36,44.05 |q 83865 |future
step
use the Void Shard##226291
Study the Void Shard |q 83865 |future
step
click Book of Dark Magic##456003
|tip On a bench outside.
collect Book of Dark Magic##226290 |goto Nerub'ar/1 61.67,22.00 |q 83864 |future
step
use the Book of Dark Magic##226290
Study the Book of Dark Magic |q 83864 |future
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Leveling Guides\\Khaz Algar Engineering 1-100",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Khaz Algar Engineering profession from 1-100.",
startlevel=68.0,
condition_end=function() return skill('Khaz Algar Engineering') >= 100 end,
condition_suggested=function() return skill('Khaz Algar Engineering') > 0 and skill('Khaz Algar Engineering') < 100 and level >= 70 end,
},[[
step
Approximate bill of materials:
|tip Pile of Scraps: 85
|tip Bismuth: 200
|tip Gyrating Gear: 20
|tip Whimsical Wiring: 20
|tip These totals are approximate.
|tip Due to the random nature of learning recipes through Scouring we cannot accurately predict which recipes you can make.
|tip You are encouraged to make each recipe at least once and utilize the Crafting Order system, which will vary the materials needed.
|tip These materials will get you to approximately 40 skill level.
Click Here to Continue |confirm
step
talk Thermalseer Arhdas##219099
Train Engineering |skillmax Engineering,300 |goto Dornogal/0 49.21,55.94
step
talk Thermalseer Arhdas##219099
Train Khaz Algar Engineering |skillmax Khaz Algar Engineering,100 |goto Dornogal/0 49.21,55.94
step
talk Supply Foreman Drezmol##219098
buy Arclight Spanner##6219 |goto Dornogal/0 49.30,55.62 |or 2
buy Gyromatic Micro-Adjustor##10498 |goto Dornogal/0 49.30,55.62 |or 2
|tip You can also make or purchase a "Gnomish Army Knife" or "Utimate Gnomish Army Knife" from the auction house and skip this step.
'|complete skill("Khaz Algar Engineering") >= 15 |override |only if default
'|complete skill("Khaz Algar Engineering") >= 20 |override |only if KulTiran
'|complete skill("Khaz Algar Engineering") >= 30 |override |only if Goblin
step
Kill enemies around this area
collect 85 Pile of Rusted Scrap##219150 |goto Isle of Dorn/0 63.70,43.15 |or |usebank
|tip These drop from mobs all over Khaz Algar.
'|complete skill("Khaz Algar Engineering") >= 15 |or |only if default
'|complete skill("Khaz Algar Engineering") >= 20 |or |only if KulTiran
'|complete skill("Khaz Algar Engineering") >= 30 |or |only if Goblin
step
create 17 Scour Through Scrap##447310,Khaz Algar Engineering,15 |goto Dornogal/0 49.21,55.94 |only if default
create 17 Scour Through Scrap##447310,Khaz Algar Engineering,20 |goto Dornogal/0 49.21,55.94 |only if KulTiran
create 17 Scour Through Scrap##447310,Khaz Algar Engineering,30 |goto Dornogal/0 49.21,55.94 |only if Goblin
|tip You may need to make more or less of these.
step
collect 200 Bismuth##210930 |or |usebank
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Khaz Algar Engineering") >= 20 |or |only if default
'|complete skill("Khaz Algar Engineering") >= 25 |or |only if KulTiran
'|complete skill("Khaz Algar Engineering") >= 35 |or |only if Goblin
step
create 50 Handful of Bismuth Bolts##447336,Khaz Algar Engineering,80 total |goto Dornogal/0 49.21,55.94
|tip You should have discovered this scouring scrap.
step
collect 80 Handful of Bismuth Bolts##221853 |or |usebank
|tip You created these in a previous step.
'|complete skill("Khaz Algar Engineering") >= 40 |or |only if default
'|complete skill("Khaz Algar Engineering") >= 45 |or |only if KulTiran
'|complete skill("Khaz Algar Engineering") >= 55 |or |only if Goblin
stickystart "Collect_Whimsical_Wiring_40"
step
collect 20 Gyrating Gear##221859 |or |usebank
|tip Create them with Engineering or purchase them from the auction house.
|tip Each Gyrating Gear requires 1 Junk Bucket, 3 Bismuth, and 1 Aqirite.
'|complete skill("Khaz Algar Engineering") >= 40 |or |only if default
'|complete skill("Khaz Algar Engineering") >= 45 |or |only if KulTiran
'|complete skill("Khaz Algar Engineering") >= 55 |or |only if Goblin
step
label "Collect_Whimsical_Wiring_40"
collect 20 Whimsical Wiring##221856 |or |usebank
|tip Create them with Engineering or purchase them from the auction house.
|tip Each Whimsical Wiring requires 1 Frayed Wiring and 3 Bismuth.
'|complete skill("Khaz Algar Engineering") >= 40 |or |only if default
'|complete skill("Khaz Algar Engineering") >= 45 |or |only if KulTiran
'|complete skill("Khaz Algar Engineering") >= 55 |or |only if Goblin
step
create 10 Bismuth Fueled Samophlange##447332,Khaz Algar Engineering,40 |goto Dornogal/0 49.21,55.94 |only if default
create 10 Bismuth Fueled Samophlange##447332,Khaz Algar Engineering,45 |goto Dornogal/0 49.21,55.94 |only if KulTiran
create 10 Bismuth Fueled Samophlange##447332,Khaz Algar Engineering,55 |goto Dornogal/0 49.21,55.94 |only if Goblin
step
Reach Skill Level 100 in Khaz Algar Engineerin |skill Khaz Algar Engineerin,100 |or |only if default
Reach Skill Level 105 in Khaz Algar Engineerin |skill Khaz Algar Engineerin,105 |or |only if KulTiran
Reach Skill Level 110 in Khaz Algar Engineerin |skill Khaz Algar Engineering,115 |or |only if Goblin
|tip From this point, it becomes very difficult to continue gaining points as you have to rely on Invent to get recipes.
|tip Your best path is the Crafting Order system to craft items for other players with provided materials.
|tip This makes it much cheaper to craft one of each recipe for the first craft bonus.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Khaz Algar Engineering Knowledge Treasures",{
author="support@zygorguides.com",
description="This guide will walk you through collecting all Engineering Knowledge Treasures.",
startlevel=68.0,
condition_end=function() return completedallq(83867,83866,83869,83868,83871,83870,83872,83873) end,
condition_suggested=function() return skill('Khaz Algar Engineering') > 0 and not completedallq(83867,83866,83869,83868,83871,83870,83872,83873) end,
},[[
step
click Dornogal Spectacles##456000
|tip Inside the building on the desk.
collect Dornogal Spectacles##226293 |goto Dornogal/0 64.82,52.82 |q 83867 |future
step
use the Dornogal Spectacles##226293
Study the Dornogal Spectacles |q 83867 |future
step
click Rock Engineer's Wrench##456001
|tip Inside the building on the desk.
collect Rock Engineer's Wrench##226292 |goto Isle of Dorn/0 61.34,69.57 |q 83866 |future
step
use the Rock Engineer's Wrench##226292
Study the Rock Engineer's Wrench |q 83866 |future
step
click Earthen Construct Blueprints##455998
|tip Inside the building, behind the desk.
collect Earthen Construct Blueprints##226295 |goto The Ringing Deeps/0 64.49,58.76 |q 83869 |future
step
use the Earthen Construct Blueprints##226295
Study the Earthen Construct Blueprints |q 83869 |future
step
click Inert Mining Bomb##455999
|tip Ontop of the crate on the minecart tracks.
collect Inert Mining Bomb##226294 |goto The Ringing Deeps/0 42.62,27.26 |q 83868 |future
step
use the Inert Mining Bomb##226294
Study the Inert Mining Bomb |q 83868 |future
step
click Arathi Safety Gloves##455996
|tip Inside the small zeppelin.
collect Arathi Safety Gloves##226297 |goto Hallowfall/0 41.63,48.93 |q 83871 |future
step
use the Arathi Safety Gloves##226297
Study the Arathi Safety Gloves |q 83871 |future
step
click Holy Firework Dud##455997
collect Holy Firework Dud##226296 |goto Hallowfall/0 46.32,61.35 |q 83870 |future
step
use the Holy Firework Dud##226296
Study the Holy Firework Dud |q 83870 |future
step
click Puppeted Mechanical Spider##455995
|tip Inside the inn on the table.
collect Puppeted Mechanical Spider##226298 |goto Azj-Kahet/0 56.85,38.58 |q 83872 |future
step
use the Puppeted Mechanical Spider##226298
Study the Puppeted Mechanical Spider |q 83872 |future
step
click Emptied Venom Canister##455994
collect Emptied Venom Canister##226299 |goto Nerub'ar/1 63.12,11.13 |q 83873 |future
step
use the Emptied Venom Canister##226299
Study the Emptied Venom Canister |q 83873 |future
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Leveling Guides\\Khaz Algar Fishing 1-100",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Khaz Algar Fishing profession from 1-100.",
startlevel=68.0,
condition_end=function() return skill('Khaz Algar Fishing') >= 100 end,
condition_suggested=function() return skill('Khaz Algar Fishing') > 0 and skill('Khaz Algar Fishing') < 100 and level >= 70 end,
},[[
step
talk Drokar##219106
Train Fishing |skillmax Fishing,300 |goto Dornogal/0 50.49,26.87
step
talk Drokar##219106
Train Khaz Algar Fishing |skillmax Khaz Algar Fishing,100 |goto Dornogal/0 50.49,26.87
step
Fish in the open water
|tip You can fish anywhere and gain skill.
|tip If you want to fish up specific fish, refer to one of our farming guides.
Reach Skill 100 in Khaz Algar Fishing |skill Khaz Algar Fishing,100 |goto Dornogal/0 50.49,26.87
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Cursed Ghoulfish",{
author="support@zygorguides.com",
description="This guide will walk you through gathering Cursed Ghoulfish.",
startlevel=68.0,
},[[
step
map Isle of Dorn/0
path follow smart; loop on; ants curved; dist 50
path	70.75,23.89	69.56,22.30	68.79,20.68	68.66,18.79	71.40,17.07
path	72.96,18.32	72.49,21.20	72.00,23.72	72.40,26.05	73.67,27.79
path	75.90,27.81	77.31,25.57	78.30,23.23	77.91,19.30	80.55,27.22
path	81.50,29.39	80.75,31.01	79.51,31.32	77.42,29.03	74.26,28.48
cast Fishing##131474
|tip This fish can be caught anywhere, but only when your fishing skill is low!
|tip If you've maxed your fishing you may never see it.
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
collect Cursed Ghoulfish##220152 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Bismuth Bitterling",{
author="support@zygorguides.com",
description="This guide will walk you through gathering Bismuth Bitterling.",
startlevel=68.0,
},[[
step
map Isle of Dorn/0
path follow smart; loop on; ants curved; dist 50
path	70.75,23.89	69.56,22.30	68.79,20.68	68.66,18.79	71.40,17.07
path	72.96,18.32	72.49,21.20	72.00,23.72	72.40,26.05	73.67,27.79
path	75.90,27.81	77.31,25.57	78.30,23.23	77.91,19.30	80.55,27.22
path	81.50,29.39	80.75,31.01	79.51,31.32	77.42,29.03	74.26,28.48
cast Fishing##131474
|tip Fish in Glimmerpools. These share spawns with Stargazer Swarms.
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
collect Bismuth Bitterling##220137 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Crystalline Sturgeon",{
author="support@zygorguides.com",
description="This guide will walk you through gathering Crystalline Sturgeon.",
startlevel=68.0,
},[[
step
map Isle of Dorn/0
path follow smart; loop on; ants curved; dist 50
path	70.75,23.89	69.56,22.30	68.79,20.68	68.66,18.79	71.40,17.07
path	72.96,18.32	72.49,21.20	72.00,23.72	72.40,26.05	73.67,27.79
path	75.90,27.81	77.31,25.57	78.30,23.23	77.91,19.30	80.55,27.22
path	81.50,29.39	80.75,31.01	79.51,31.32	77.42,29.03	74.26,28.48
cast Fishing##131474
|tip Fish in Glimmerpools. These share spawns with Stargazer Swarms.
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
collect Crystalline Sturgeon##220136 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Dornish Pike",{
author="support@zygorguides.com",
description="This guide will walk you through gathering Dornish Pike.",
startlevel=68.0,
},[[
step
map Isle of Dorn/0
path follow smart; loop on; ants curved; dist 50
path	58.74,46.20	59.92,48.97	59.64,54.13	59.61,57.47	60.12,59.50
path	60.50,61.59	59.30,64.50	57.78,68.13	56.43,71.59	57.89,68.76
path	59.37,64.60	60.60,61.09	62.40,61.73	64.68,64.05	66.68,62.48
path	68.76,60.05	69.45,55.55	68.78,52.48	67.55,51.54	66.83,50.80
path	64.87,49.32	63.30,47.32	60.66,46.85
cast Fishing##131474
|tip Fish in Calm Surfacing Ripple. These share spawns with other fishing pools.
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
collect Dornish Pike##220143 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Specular Rainbowfish",{
author="support@zygorguides.com",
description="This guide will walk you through gathering Specular Rainbowfish.",
startlevel=68.0,
},[[
step
map Isle of Dorn/0
path follow smart; loop on; ants curved; dist 50
path	70.75,23.89	69.56,22.30	68.79,20.68	68.66,18.79	71.40,17.07
path	72.96,18.32	72.49,21.20	72.00,23.72	72.40,26.05	73.67,27.79
path	75.90,27.81	77.31,25.57	78.30,23.23	77.91,19.30	80.55,27.22
path	81.50,29.39	80.75,31.01	79.51,31.32	77.42,29.03	74.26,28.48
cast Fishing##131474
|tip Fish in Glimmerpools. These share spawns with Stargazer Swarms.
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
collect Specular Rainbowfish##220141 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Whispering Stargazer",{
author="support@zygorguides.com",
description="This guide will walk you through gathering Whispering Stargazer.",
startlevel=68.0,
},[[
step
map Isle of Dorn/0
path follow smart; loop on; ants curved; dist 50
path	70.75,23.89	69.56,22.30	68.79,20.68	68.66,18.79	71.40,17.07
path	72.96,18.32	72.49,21.20	72.00,23.72	72.40,26.05	73.67,27.79
path	75.90,27.81	77.31,25.57	78.30,23.23	77.91,19.30	80.55,27.22
path	81.50,29.39	80.75,31.01	79.51,31.32	77.42,29.03	74.26,28.48
cast Fishing##131474
|tip Fish in Stargazer Swarms. These share spawns with Glimmerpools.
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
collect Whispering Stargazer##220139 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Spiked Sea Raven",{
author="support@zygorguides.com",
description="This guide will walk you through gathering Spiked Sea Raven.",
startlevel=68.0,
},[[
step
map Isle of Dorn/0
path follow smart; loop on; ants curved; dist 50
path	70.75,23.89	69.56,22.30	68.79,20.68	68.66,18.79	71.40,17.07
path	72.96,18.32	72.49,21.20	72.00,23.72	72.40,26.05	73.67,27.79
path	75.90,27.81	77.31,25.57	78.30,23.23	77.91,19.30	80.55,27.22
path	81.50,29.39	80.75,31.01	79.51,31.32	77.42,29.03	74.26,28.48
cast Fishing##131474
|tip Fish in Glimmerpools, Stargazer Swarms, and Calm Surfacing Ripples. This is a rare fish.
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
collect Spiked Sea Raven##220150 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Goldengill Trout",{
author="support@zygorguides.com",
description="This guide will walk you through gathering Goldengill Trout.",
startlevel=68.0,
},[[
step
map Isle of Dorn/0
path follow smart; loop on; ants curved; dist 50
path	70.75,23.89	69.56,22.30	68.79,20.68	68.66,18.79	71.40,17.07
path	72.96,18.32	72.49,21.20	72.00,23.72	72.40,26.05	73.67,27.79
path	75.90,27.81	77.31,25.57	78.30,23.23	77.91,19.30	80.55,27.22
path	81.50,29.39	80.75,31.01	79.51,31.32	77.42,29.03	74.26,28.48
cast Fishing##131474
|tip Fish in Glimmerpools. These share spawns with Stargazer Swarms.
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
collect Goldengill Trout##222533 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Nibbling Minnow",{
author="support@zygorguides.com",
description="This guide will walk you through gathering Nibbling Minnow.",
startlevel=68.0,
},[[
step
map Isle of Dorn/0
path follow smart; loop on; ants curved; dist 50
path	58.74,46.20	59.92,48.97	59.64,54.13	59.61,57.47	60.12,59.50
path	60.50,61.59	59.30,64.50	57.78,68.13	56.43,71.59	57.89,68.76
path	59.37,64.60	60.60,61.09	62.40,61.73	64.68,64.05	66.68,62.48
path	68.76,60.05	69.45,55.55	68.78,52.48	67.55,51.54	66.83,50.80
path	64.87,49.32	63.30,47.32	60.66,46.85
cast Fishing##131474
|tip Fish in Calm Surfacing Ripple. These share spawns with other fishing pools.
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
collect Nibbling Minnow##220138 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Quiet River Bass",{
author="support@zygorguides.com",
description="This guide will walk you through gathering Quiet River Bass.",
startlevel=68.0,
},[[
step
map Isle of Dorn
path follow smart; loop on; ants curved; dist 50
path	58.74,46.20	59.92,48.97	59.64,54.13	59.61,57.47	60.12,59.50
path	60.50,61.59	59.30,64.50	57.78,68.13	56.43,71.59	57.89,68.76
path	59.37,64.60	60.60,61.09	62.40,61.73	64.68,64.05	66.68,62.48
path	68.76,60.05	69.45,55.55	68.78,52.48	67.55,51.54	66.83,50.80
path	64.87,49.32	63.30,47.32	60.66,46.85
cast Fishing##131474
|tip Fish in Calm Surfacing Ripple and River Bass Pools. These share spawns with other fishing pools.
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
collect Quiet River Bass##220142 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Roaring Anglerseeker",{
author="support@zygorguides.com",
description="This guide will walk you through gathering Roaring Anglerseeker.",
startlevel=68.0,
},[[
step
map The Ringing Deeps/0
path follow smart; loop on; ants curved; dist 50
path	46.97,45.55	47.76,43.99	50.24,45.40	51.74,49.09	52.05,51.71
path	52.92,54.66	53.05,57.41	52.69,59.30	53.67,62.17	53.60,64.62
path	49.83,65.78
cast Fishing##131474
|tip Fish in Angleseeker Torrents. These share spawns with other fishing pools.
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
collect Roaring Anglerseeker##220144 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Queen's Lurefish",{
author="support@zygorguides.com",
description="This guide will walk you through gathering Queen's Lurefish.",
startlevel=68.0,
},[[
step
map Azj-Kahet
path follow smart; loop on; ants curved; dist 50
path	68.77,21.77	64.08,21.95	59.65,25.02	57.70,28.22	55.29,29.36
path	49.73,35.95	46.43,39.83	44.80,44.21	44.94,47.06	44.34,49.93
path	45.19,52.88	46.22,56.26
map Azj-Kahet
path	46.11,62.00	47.81,64.39	50.31,65.01	50.89,61.28	50.60,57.76
path	52.97,56.11
map Azj-Kahet
path	55.57,55.62	57.85,58.82	58.04,61.43	58.04,67.97	56.56,68.50
path	54.32,67.48
map Azj-Kahet
path	49.41,65.47	46.55,63.81
map Azj-Kahet
path	43.55,62.98	41.60,60.57	39.24,57.81	37.13,54.93	35.38,51.86
path	31.78,47.43
cast Fishing##131474
|tip Fish in Royal Ripples. These share spawns with other fishing pools and can be very rare.
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
collect Queen's Lurefish##220151 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Regal Dottyback",{
author="support@zygorguides.com",
description="This guide will walk you through gathering Regal Dottyback.",
startlevel=68.0,
},[[
step
map Azj-Kahet
path follow smart; loop on; ants curved; dist 50
path	68.77,21.77	64.08,21.95	59.65,25.02	57.70,28.22	55.29,29.36
path	49.73,35.95	46.43,39.83	44.80,44.21	44.94,47.06	44.34,49.93
path	45.19,52.88	46.22,56.26
map Azj-Kahet
path	46.11,62.00	47.81,64.39	50.31,65.01	50.89,61.28	50.60,57.76
path	52.97,56.11
map Azj-Kahet
path	55.57,55.62	57.85,58.82	58.04,61.43	58.04,67.97	56.56,68.50
path	54.32,67.48
map Azj-Kahet
path	49.41,65.47	46.55,63.81
map Azj-Kahet
path	43.55,62.98	41.60,60.57	39.24,57.81	37.13,54.93	35.38,51.86
path	31.78,47.43
cast Fishing##131474
|tip Fish in Royal Ripples. These share spawns with other fishing pools and can be very rare.
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
collect Regal Dottyback##220146 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Awoken Coelacanth",{
author="support@zygorguides.com",
description="This guide will walk you through gathering Awoken Coelacanth.",
startlevel=68.0,
},[[
step
map Azj-Kahet
path follow smart; loop on; ants curved; dist 50
path	68.77,21.77	64.08,21.95	59.65,25.02	57.70,28.22	55.29,29.36
path	49.73,35.95	46.43,39.83	44.80,44.21	44.94,47.06	44.34,49.93
path	45.19,52.88	46.22,56.26
map Azj-Kahet
path	46.11,62.00	47.81,64.39	50.31,65.01	50.89,61.28	50.60,57.76
path	52.97,56.11
map Azj-Kahet
path	55.57,55.62	57.85,58.82	58.04,61.43	58.04,67.97	56.56,68.50
path	54.32,67.48
map Azj-Kahet
path	49.41,65.47	46.55,63.81
map Azj-Kahet
path	43.55,62.98	41.60,60.57	39.24,57.81	37.13,54.93	35.38,51.86
path	31.78,47.43
use the Whispering Stargazer##220139
|tip Use a Whispering Stargazer to lure the Coelacanth out of the water.
|tip You can use the Whispering Stargazer guide to farm these.
collect Awoken Coelacanth##220153 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Arathor Hammerfish",{
author="support@zygorguides.com",
description="This guide will walk you through gathering Arathor Hammerfish.",
startlevel=68.0,
},[[
step
map Hallowfall/0
path follow smart; loop on; ants curved; dist 50
path	33.10,46.79	34.91,45.09	38.16,44.25	40.26,44.65	44.29,44.47
path	49.36,44.89	52.18,45.72	54.53,46.74	56.81,46.18	58.48,45.29
path	60.16,42.28	59.65,40.00	60.87,40.72	62.26,37.45	62.79,34.59
path	62.37,29.01	63.34,25.39	61.66,22.29	60.74,19.25	59.50,15.66
path	57.91,14.56	55.11,13.40	52.15,13.94	49.30,12.41	47.33,16.08
path	46.75,19.87	45.99,23.04	44.21,24.51	42.40,21.00	38.67,22.41
path	36.74,24.57	33.68,27.94	31.33,31.48	27.77,34.14	28.65,38.00
path	29.42,44.33
cast Fishing##131474
|tip Fish in Bloody Perch Swarms, Blood in the Water, or Swarm of Slum Sharks. These share spawns with other fishing pools and can be rare.
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
collect Arathor Hammerfish##220145 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Bloody Perch",{
author="support@zygorguides.com",
description="This guide will walk you through gathering Bloody Perch.",
startlevel=68.0,
},[[
step
map Hallowfall/0
path follow smart; loop on; ants curved; dist 50
path	33.10,46.79	34.91,45.09	38.16,44.25	40.26,44.65	44.29,44.47
path	49.36,44.89	52.18,45.72	54.53,46.74	56.81,46.18	58.48,45.29
path	60.16,42.28	59.65,40.00	60.87,40.72	62.26,37.45	62.79,34.59
path	62.37,29.01	63.34,25.39	61.66,22.29	60.74,19.25	59.50,15.66
path	57.91,14.56	55.11,13.40	52.15,13.94	49.30,12.41	47.33,16.08
path	46.75,19.87	45.99,23.04	44.21,24.51	42.40,21.00	38.67,22.41
path	36.74,24.57	33.68,27.94	31.33,31.48	27.77,34.14	28.65,38.00
path	29.42,44.33
cast Fishing##131474
|tip Fish in Bloody Perch Swarms, Blood in the Water, or Swarm of Slum Sharks. These share spawns with other fishing pools and can be rare.
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
collect Bloody Perch##220135 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Dilly-Dally Dace",{
author="support@zygorguides.com",
description="This guide will walk you through gathering Dilly-Dally Dace.",
startlevel=68.0,
},[[
step
map Hallowfall/0
path follow smart; loop on; ants curved; dist 50
path	33.10,46.79	34.91,45.09	38.16,44.25	40.26,44.65	44.29,44.47
path	49.36,44.89	52.18,45.72	54.53,46.74	56.81,46.18	58.48,45.29
path	60.16,42.28	59.65,40.00	60.87,40.72	62.26,37.45	62.79,34.59
path	62.37,29.01	63.34,25.39	61.66,22.29	60.74,19.25	59.50,15.66
path	57.91,14.56	55.11,13.40	52.15,13.94	49.30,12.41	47.33,16.08
path	46.75,19.87	45.99,23.04	44.21,24.51	42.40,21.00	38.67,22.41
path	36.74,24.57	33.68,27.94	31.33,31.48	27.77,34.14	28.65,38.00
path	29.42,44.33
cast Fishing##131474
|tip Fish in Blood in the Water or Calm Surfacing Ripples. These share spawns with other fishing pools and can be rare.
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
collect Dilly-Dally Dace##220134 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Kaheti Slum Shark",{
author="support@zygorguides.com",
description="This guide will walk you through gathering Kaheti Slum Shark.",
startlevel=68.0,
},[[
step
map Hallowfall/0
path follow smart; loop on; ants curved; dist 50
path	33.10,46.79	34.91,45.09	38.16,44.25	40.26,44.65	44.29,44.47
path	49.36,44.89	52.18,45.72	54.53,46.74	56.81,46.18	58.48,45.29
path	60.16,42.28	59.65,40.00	60.87,40.72	62.26,37.45	62.79,34.59
path	62.37,29.01	63.34,25.39	61.66,22.29	60.74,19.25	59.50,15.66
path	57.91,14.56	55.11,13.40	52.15,13.94	49.30,12.41	47.33,16.08
path	46.75,19.87	45.99,23.04	44.21,24.51	42.40,21.00	38.67,22.41
path	36.74,24.57	33.68,27.94	31.33,31.48	27.77,34.14	28.65,38.00
path	29.42,44.33
cast Fishing##131474
|tip Fish in Blood in the Water or Swarm of Slum Sharks. These share spawns with other fishing pools and can be rare.
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
collect Kaheti Slum Shark##220147 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Pale Huskfish",{
author="support@zygorguides.com",
description="This guide will walk you through gathering Pale Huskfish.",
startlevel=68.0,
},[[
step
map Azj-Kahet
path follow smart; loop on; ants curved; dist 50
path	68.77,21.77	64.08,21.95	59.65,25.02	57.70,28.22	55.29,29.36
path	49.73,35.95	46.43,39.83	44.80,44.21	44.94,47.06	44.34,49.93
path	45.19,52.88	46.22,56.26
map Azj-Kahet
path	46.11,62.00	47.81,64.39	50.31,65.01	50.89,61.28	50.60,57.76
path	52.97,56.11
map Azj-Kahet
path	55.57,55.62	57.85,58.82	58.04,61.43	58.04,67.97	56.56,68.50
path	54.32,67.48
map Azj-Kahet
path	49.41,65.47	46.55,63.81
map Azj-Kahet
path	43.55,62.98	41.60,60.57	39.24,57.81	37.13,54.93	35.38,51.86
path	31.78,47.43
cast Fishing##131474
|tip Fish in Festering Rotpools or Infused Ichor Spills. These share spawns with other fishing pools and can be rare.
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
collect Pale Huskfish##220148 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Sanguine Dogfish",{
author="support@zygorguides.com",
description="This guide will walk you through gathering Sanguine Dogfish.",
startlevel=68.0,
},[[
step
map Hallowfall/0
path follow smart; loop on; ants curved; dist 50
path	33.10,46.79	34.91,45.09	38.16,44.25	40.26,44.65	44.29,44.47
path	49.36,44.89	52.18,45.72	54.53,46.74	56.81,46.18	58.48,45.29
path	60.16,42.28	59.65,40.00	60.87,40.72	62.26,37.45	62.79,34.59
path	62.37,29.01	63.34,25.39	61.66,22.29	60.74,19.25	59.50,15.66
path	57.91,14.56	55.11,13.40	52.15,13.94	49.30,12.41	47.33,16.08
path	46.75,19.87	45.99,23.04	44.21,24.51	42.40,21.00	38.67,22.41
path	36.74,24.57	33.68,27.94	31.33,31.48	27.77,34.14	28.65,38.00
path	29.42,44.33
cast Fishing##131474
use the Bloody Perch##220135
|tip Use Bloody Perch to increase your chance of catching Sanguine Dogfish. The buff stacks up to 10 times.
|tip Fish in Blood in the Water or Bloody Perch Swarms. These share spawns with other fishing pools and can be rare.
|tip Click the Fishing Bobber when it bounces in the water.
|tip Keep repeating this process.
collect Sanguine Dogfish##220149 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Leveling Guides\\Khaz Algar Herbalism 1-100",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Khaz Algar Herbalism profession from 1-100.",
startlevel=68.0,
condition_end=function() return skill('Khaz Algar Herbalism') >= 100 end,
condition_suggested=function() return skill('Khaz Algar Herbalism') > 0 and skill('Khaz Algar Herbalism') < 100 and level >= 70 end,
},[[
step
talk Akdan##219101
|tip Inside the building.
Train Herbalism |skillmax Herbalism,300 |goto Dornogal/0 44.79,69.27
step
talk Akdan##219101
|tip Inside the building.
Train Khaz Algar Herbalism |skillmax Khaz Algar Herbalism,100 |goto Dornogal/0 44.79,69.27
step
Reach Skill Level 100 in Khaz Algar Herbalism |skill Khaz Algar Herbalism,100 |only if default
Reach Skill Level 105 in Khaz Algar Herbalism |skill Khaz Algar Herbalism,105 |only if KulTiran
Reach Skill Level 115 in Khaz Algar Herbalism |skill Khaz Algar Herbalism,115 |only if Tauren
|tip Load any Herbalism farming guide you choose up to skill level 60 and farm for points.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Khaz Algar Herbalism Knowledge Treasures",{
author="support@zygorguides.com",
description="This guide will walk you through collecting all Herbalism Knowledge Treasures.",
startlevel=68.0,
condition_end=function() return completedallq(83875,83874,83877,83876,83878,83879,83881,83880) end,
condition_suggested=function() return skill('Khaz Algar Herbalism') > 0 and not completedallq(83875,83874,83877,83876,83878,83879,83881,83880) end,
},[[
step
click Dornogal Gardening Scythe##455992
|tip Leaning on a tree.
collect Dornogal Gardening Scythe##226301 |goto Dornogal/0 59.26,23.56 |q 83875 |future
step
use the Dornogal Gardening Scythe##226301
Study the Dornogal Gardening Scythe |q 83875 |future
step
click Ancient Flower##455993
|tip In the flower pot.
collect Ancient Flower##226300 |goto Isle of Dorn/0 57.55,61.46 |q 83874 |future
step
use the Ancient Flower##226300
Study the Ancient Flower |q 83874 |future
step
click Fungarian Slicer's Knife##455990
|tip On the middle of the island.
collect Fungarian Slicer's Knife##226303 |goto The Ringing Deeps/0 52.85,65.76 |q 83877 |future
step
use the Fungarian Slicer's Knife##226303
Study the Fungarian Slicer's Knife |q 83877 |future
step
click Earthen Digging Fork##455991
|tip Inside on the table.
collect Earthen Digging Fork##226302 |goto The Ringing Deeps/0 48.24,35.02 |q 83876 |future
step
use the Earthen Digging Fork##226302
Study the Earthen Digging Fork |q 83876 |future
step
click Arathi Herb Pruner##455988
collect Arathi Herb Pruner##226305 |goto Hallowfall/0 35.98,55.01 |q 83878 |future
step
use the Arathi Herb Pruner##226305
Study the Arathi Herb Pruner |q 83878 |future
step
click Arathi Garden Trowel##455989
collect Arathi Garden Trowel##226304 |goto Hallowfall/0 47.78,63.29 |q 83879 |future
step
use the Arathi Garden Trowel##226304
Study the Arathi Garden Trowel |q 83879 |future
step
click Tunneler's Shovel##455986
|tip On the counter.
collect Tunneler's Shovel##226307 |goto Nerub'ar/1 46.80,16.16 |q 83881 |future
step
use the Tunneler's Shovel##226307
Study the Tunneler's Shovel |q 83881 |future
step
click Web-Entangled Lotus##455987
|tip It's a small flower by the bush.
collect Web-Entangled Lotus##226306 |goto Nerub'ar/0 54.63,20.82 |q 83880 |future
step
use the Web-Entangled Lotus##226306
Study the Web-Entangled Lotus |q 83880 |future
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Mycobloom (Azj-Kahet)",{
author="support@zygorguides.com",
},[[
step
map Azj-Kahet
path follow smart; loop on; ants curved; dist 50
path	65.46,20.88	58.67,29.88	62.04,35.89	68.28,38.38	75.77,35.00
path	78.00,40.00	77.25,44.78	67.78,56.80	76.55,66.73	76.92,72.04
path	76.89,77.53	72.42,82.38	69.29,81.24	67.06,86.59	62.24,82.03
path	60.25,71.14	56.94,67.00	54.02,68.45	48.16,60.20	43.13,64.43
path	39.23,58.81	33.73,51.16	29.63,52.04	25.12,50.17	23.81,46.94
path	25.20,40.32	26.75,34.16	28.88,33.56	33.18,37.99	38.62,36.24
path	42.32,31.42	48.89,29.14	53.03,24.47	57.87,21.70	62.44,18.66
click Mycobloom##440204+
|tip They look like large clumps of pink and green flowers.
|tip They share a spawn with other herb nodes.
collect Mycobloom##210796 |n
collect Mycobloom##210797 |n
collect Mycobloom##210798 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Mycobloom (Hallowfall)",{
author="support@zygorguides.com",
},[[
step
map Hallowfall/0
path follow smart; loop on; ants curved; dist 50
path	40.20,67.02	39.87,62.21	37.36,58.56	32.71,58.29	28.32,59.16
path	22.74,59.13	22.91,55.20	28.09,50.10	30.78,43.37	32.74,35.04
path	34.12,28.78	38.75,25.03	42.11,22.08	45.33,15.94	46.06,12.40
path	49.54,15.92	53.18,16.82	55.26,22.04	54.84,27.84	52.38,31.60
path	47.76,31.31	44.92,36.31	42.15,41.78	40.06,44.96	41.48,47.07
path	47.17,49.95	54.18,52.80	57.26,54.33	59.09,51.42	62.48,50.96
path	64.90,47.49	62.70,44.01	59.71,41.50	59.49,37.02	60.26,31.55
path	64.90,27.56	67.96,29.79	69.43,37.79	71.97,42.88	70.31,48.47
path	69.73,51.94	70.32,57.43	68.25,63.06	64.23,66.51	63.01,66.62
path	60.90,66.00	57.91,66.76	53.68,67.43	44.87,67.23
click Mycobloom##440204+
|tip They look like large clumps of pink and green flowers.
|tip They share a spawn with other herb nodes.
collect Mycobloom##210796 |n
collect Mycobloom##210797 |n
collect Mycobloom##210798 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Mycobloom (Isle of Dorn)",{
author="support@zygorguides.com",
},[[
step
map Isle of Dorn/0
path follow smart; loop on; ants curved; dist 50
path	45.94,58.40	44.66,62.76	42.04,66.98	38.10,66.70	33.09,62.58
path	32.25,57.76	30.50,52.12	27.02,52.43	22.98,53.07	21.13,56.88
path	21.79,62.61	24.56,66.34	29.04,69.50	32.36,75.29	34.55,79.25
path	39.00,83.25	44.02,82.45	47.26,77.31	49.93,76.74	53.36,78.01
path	56.45,74.35	61.70,72.16	64.25,66.18	66.55,60.41	68.97,53.75
path	71.52,50.04	71.65,44.15	68.63,40.51	65.97,33.68	65.30,24.70
path	63.87,19.09	61.26,15.76	56.40,16.52	53.13,18.53	49.27,17.64
path	44.88,16.86	41.15,21.04	40.72,26.42	42.32,31.51
map Dornogal/0
path	28.91,20.98	25.42,42.09
map Isle of Dorn/0
path	43.16,47.12
map Dornogal/0
path	31.13,78.95
map Isle of Dorn/0
path	50.30,53.80	53.69,50.76	56.02,43.98	56.28,37.75	56.69,32.34
path	59.91,26.26	62.72,28.79	63.05,34.56	63.21,42.55	63.80,47.70
path	61.72,52.91	57.38,58.46	54.43,60.73	50.96,59.29
click Mycobloom##440204+
|tip They look like large clumps of pink and green flowers.
|tip They share a spawn with other herb nodes.
collect Mycobloom##210796 |n
collect Mycobloom##210797 |n
collect Mycobloom##210798 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Mycobloom (The Ringing Deeps)",{
author="support@zygorguides.com",
},[[
step
map The Ringing Deeps/0
path follow smart; loop on; ants curved; dist 50
path	51.52,64.64	52.33,58.68	51.88,53.19	50.50,46.89	47.88,40.79
path	45.57,36.81	44.89,28.16	43.11,20.83	42.81,13.90	45.11,10.69
path	49.98,10.14	53.54,11.32	52.00,17.48	52.14,24.44	54.58,30.49
path	57.83,33.25	64.05,31.55	66.12,35.78	71.11,38.74	71.13,42.93
path	68.27,42.54	62.41,41.64	60.04,52.05	58.56,62.72	61.15,72.11
path	64.30,81.52	65.05,89.01	62.06,90.56	59.50,84.25	57.94,77.97
path	54.35,70.71	51.15,68.03
click Mycobloom##440204+
|tip They look like large clumps of pink and green flowers.
|tip They share a spawn with other herb nodes.
collect Mycobloom##210796 |n
collect Mycobloom##210797 |n
collect Mycobloom##210798 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Arathor's Spear (Hallowfall)",{
author="support@zygorguides.com",
},[[
step
map Hallowfall/0
path follow smart; loop on; ants curved; dist 50
path	40.20,67.02	39.87,62.21	37.36,58.56	32.71,58.29	28.32,59.16
path	22.74,59.13	22.91,55.20	28.09,50.10	30.78,43.37	32.74,35.04
path	34.12,28.78	38.75,25.03	42.11,22.08	45.33,15.94	46.06,12.40
path	49.54,15.92	53.18,16.82	55.26,22.04	54.84,27.84	52.38,31.60
path	47.76,31.31	44.92,36.31	42.15,41.78	40.06,44.96	41.48,47.07
path	47.17,49.95	54.18,52.80	57.26,54.33	59.09,51.42	62.48,50.96
path	64.90,47.49	62.70,44.01	59.71,41.50	59.49,37.02	60.26,31.55
path	64.90,27.56	67.96,29.79	69.43,37.79	71.97,42.88	70.31,48.47
path	69.73,51.94	70.32,57.43	68.25,63.06	64.23,66.51	63.01,66.62
path	60.90,66.00	57.91,66.76	53.68,67.43	44.87,67.23
click Arathor's Spear##414319+
|tip They look like large pink and white flowers.
|tip These share a spawn with other herb nodes.
collect Arathor's Spear##210808 |n
collect Arathor's Spear##210809 |n
collect Arathor's Spear##210810 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Arathor's Spear (The Ringing Deeps)",{
author="support@zygorguides.com",
},[[
step
map The Ringing Deeps/0
path follow smart; loop on; ants curved; dist 50
path	51.52,64.64	52.33,58.68	51.88,53.19	50.50,46.89	47.88,40.79
path	45.57,36.81	44.89,28.16	43.11,20.83	42.81,13.90	45.11,10.69
path	49.98,10.14	53.54,11.32	52.00,17.48	52.14,24.44	54.58,30.49
path	57.83,33.25	64.05,31.55	66.12,35.78	71.11,38.74	71.13,42.93
path	68.27,42.54	62.41,41.64	60.04,52.05	58.56,62.72	61.15,72.11
path	64.30,81.52	65.05,89.01	62.06,90.56	59.50,84.25	57.94,77.97
path	54.35,70.71	51.15,68.03
click Arathor's Spear##414319+
|tip They look like large pink and white flowers.
|tip These share a spawn with other herb nodes.
collect Arathor's Spear##210808 |n
collect Arathor's Spear##210809 |n
collect Arathor's Spear##210810 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Blessing Blossom (Hallowfall)",{
author="support@zygorguides.com",
},[[
step
map Hallowfall/0
path follow smart; loop on; ants curved; dist 50
path	40.20,67.02	39.87,62.21	37.36,58.56	32.71,58.29	28.32,59.16
path	22.74,59.13	22.91,55.20	28.09,50.10	30.78,43.37	32.74,35.04
path	34.12,28.78	38.75,25.03	42.11,22.08	45.33,15.94	46.06,12.40
path	49.54,15.92	53.18,16.82	55.26,22.04	54.84,27.84	52.38,31.60
path	47.76,31.31	44.92,36.31	42.15,41.78	40.06,44.96	41.48,47.07
path	47.17,49.95	54.18,52.80	57.26,54.33	59.09,51.42	62.48,50.96
path	64.90,47.49	62.70,44.01	59.71,41.50	59.49,37.02	60.26,31.55
path	64.90,27.56	67.96,29.79	69.43,37.79	71.97,42.88	70.31,48.47
path	69.73,51.94	70.32,57.43	68.25,63.06	64.23,66.51	63.01,66.62
path	60.90,66.00	57.91,66.76	53.68,67.43	44.87,67.23
click Blessing Blossom##414318+
|tip They look like purple and white flowers with green leaves.
|tip These share a spawn with other herb nodes.
collect Blessing Blossom##210805 |n
collect Blessing Blossom##210806 |n
collect Blessing Blossom##210807 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Blessing Blossom (The Ringing Deeps)",{
author="support@zygorguides.com",
},[[
step
map The Ringing Deeps/0
path follow smart; loop on; ants curved; dist 50
path	51.52,64.64	52.33,58.68	51.88,53.19	50.50,46.89	47.88,40.79
path	45.57,36.81	44.89,28.16	43.11,20.83	42.81,13.90	45.11,10.69
path	49.98,10.14	53.54,11.32	52.00,17.48	52.14,24.44	54.58,30.49
path	57.83,33.25	64.05,31.55	66.12,35.78	71.11,38.74	71.13,42.93
path	68.27,42.54	62.41,41.64	60.04,52.05	58.56,62.72	61.15,72.11
path	64.30,81.52	65.05,89.01	62.06,90.56	59.50,84.25	57.94,77.97
path	54.35,70.71	51.15,68.03
click Blessing Blossom##414318+
|tip They look like purple and white flowers with green leaves.
|tip These share a spawn with other herb nodes.
collect Blessing Blossom##210805 |n
collect Blessing Blossom##210806 |n
collect Blessing Blossom##210807 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Blessing Blossom (Isle of Dorn)",{
author="support@zygorguides.com",
},[[
step
map Isle of Dorn/0
path follow smart; loop on; ants curved; dist 50
path	45.94,58.40	44.66,62.76	42.04,66.98	38.10,66.70	33.09,62.58
path	32.25,57.76	30.50,52.12	27.02,52.43	22.98,53.07	21.13,56.88
path	21.79,62.61	24.56,66.34	29.04,69.50	32.36,75.29	34.55,79.25
path	39.00,83.25	44.02,82.45	47.26,77.31	49.93,76.74	53.36,78.01
path	56.45,74.35	61.70,72.16	64.25,66.18	66.55,60.41	68.97,53.75
path	71.52,50.04	71.65,44.15	68.63,40.51	65.97,33.68	65.30,24.70
path	63.87,19.09	61.26,15.76	56.40,16.52	53.13,18.53	49.27,17.64
path	44.88,16.86	41.15,21.04	40.72,26.42	42.32,31.51
map Dornogal
path	28.91,20.98	25.42,42.09
map Isle of Dorn
path	43.16,47.12
map Dornogal
path	31.13,78.95
map Isle of Dorn
path	50.30,53.80	53.69,50.76	56.02,43.98	56.28,37.75	56.69,32.34
path	59.91,26.26	62.72,28.79	63.05,34.56	63.21,42.55	63.80,47.70
path	61.72,52.91	57.38,58.46	54.43,60.73	50.96,59.29
click Blessing Blossom##414318+
|tip They look like purple and white flowers with green leaves.
|tip These share a spawn with other herb nodes.
collect Blessing Blossom##210805 |n
collect Blessing Blossom##210806 |n
collect Blessing Blossom##210807 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Orbinid (Azj-Kahet)",{
author="support@zygorguides.com",
},[[
step
map Azj-Kahet/0
path follow smart; loop on; ants curved; dist 50
path	65.46,20.88	58.67,29.88	62.04,35.89	68.28,38.38	75.77,35.00
path	78.00,40.00	77.25,44.78	67.78,56.80	76.55,66.73	76.92,72.04
path	76.89,77.53	72.42,82.38	69.29,81.24	67.06,86.59	62.24,82.03
path	60.25,71.14	56.94,67.00	54.02,68.45	48.16,60.20	43.13,64.43
path	39.23,58.81	33.73,51.16	29.63,52.04	25.12,50.17	23.81,46.94
path	25.20,40.32	26.75,34.16	28.88,33.56	33.18,37.99	38.62,36.24
path	42.32,31.42	48.89,29.14	53.03,24.47	57.87,21.70	62.44,18.66
click Orbinid##414317+
|tip They look like purple flowers with a sphere inside.
|tip These share a spawn with other herb nodes.
collect Orbinid##210802 |n
collect Orbinid##210803 |n
collect Orbinid##210804 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Orbinid (The Ringing Deeps)",{
author="support@zygorguides.com",
},[[
step
map The Ringing Deeps/0
path follow smart; loop on; ants curved; dist 50
path	51.52,64.64	52.33,58.68	51.88,53.19	50.50,46.89	47.88,40.79
path	45.57,36.81	44.89,28.16	43.11,20.83	42.81,13.90	45.11,10.69
path	49.98,10.14	53.54,11.32	52.00,17.48	52.14,24.44	54.58,30.49
path	57.83,33.25	64.05,31.55	66.12,35.78	71.11,38.74	71.13,42.93
path	68.27,42.54	62.41,41.64	60.04,52.05	58.56,62.72	61.15,72.11
path	64.30,81.52	65.05,89.01	62.06,90.56	59.50,84.25	57.94,77.97
path	54.35,70.71	51.15,68.03
click Orbinid##414317+
|tip They look like purple flowers with a sphere inside.
|tip These share a spawn with other herb nodes.
collect Orbinid##210802 |n
collect Orbinid##210803 |n
collect Orbinid##210804 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Luredrop (Azj-Kahet)",{
author="support@zygorguides.com",
},[[
step
map Azj-Kahet/0
path follow smart; loop on; ants curved; dist 50
path	65.46,20.88	58.67,29.88	62.04,35.89	68.28,38.38	75.77,35.00
path	78.00,40.00	77.25,44.78	67.78,56.80	76.55,66.73	76.92,72.04
path	76.89,77.53	72.42,82.38	69.29,81.24	67.06,86.59	62.24,82.03
path	60.25,71.14	56.94,67.00	54.02,68.45	48.16,60.20	43.13,64.43
path	39.23,58.81	33.73,51.16	29.63,52.04	25.12,50.17	23.81,46.94
path	25.20,40.32	26.75,34.16	28.88,33.56	33.18,37.99	38.62,36.24
path	42.32,31.42	48.89,29.14	53.03,24.47	57.87,21.70	62.44,18.66
click Luredrop##454010+
|tip They look like large blue and pink flowers.
|tip They share a spawn with other herb nodes.
collect Luredrop##210799 |n
collect Luredrop##210800 |n
collect Luredrop##210801 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Luredrop (The Ringing Deeps)",{
author="support@zygorguides.com",
},[[
step
map The Ringing Deeps/0
path follow smart; loop on; ants curved; dist 50
path	51.52,64.64	52.33,58.68	51.88,53.19	50.50,46.89	47.88,40.79
path	45.57,36.81	44.89,28.16	43.11,20.83	42.81,13.90	45.11,10.69
path	49.98,10.14	53.54,11.32	52.00,17.48	52.14,24.44	54.58,30.49
path	57.83,33.25	64.05,31.55	66.12,35.78	71.11,38.74	71.13,42.93
path	68.27,42.54	62.41,41.64	60.04,52.05	58.56,62.72	61.15,72.11
path	64.30,81.52	65.05,89.01	62.06,90.56	59.50,84.25	57.94,77.97
path	54.35,70.71	51.15,68.03
click Luredrop##454010+
|tip They look like large blue and pink flowers.
|tip They share a spawn with other herb nodes.
collect Luredrop##210799 |n
collect Luredrop##210800 |n
collect Luredrop##210801 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Leveling Guides\\Khaz Algar Inscription 1-100",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Khaz Algar Inscription profession from 1-100.",
startlevel=68.0,
condition_end=function() return skill('Khaz Algar Inscription') >= 100 end,
condition_suggested=function() return skill('Khaz Algar Inscription') > 0 and skill('Khaz Algar Inscription') < 100 and level >= 70 end,
},[[
step
Approximate bill of materials:
|tip Luredrop: 250
|tip Mycobloom: 500
|tip Viridescent Spores: 75
|tip These totals are approximate. Due to the nature of Milling you may need more or less.
|tip You are encouraged to make each recipe at least once and utilize the Crafting Order system, which will vary the materials needed.
|tip These materials will get you to approximately 50 skill level.
Click Here to Continue |confirm
step
talk Brrigan##219090
Train Inscription |skillmax Inscription,300 |goto Dornogal/0 48.76,70.90
step
talk Brrigan##219090
Train Khaz Algar Inscription |skillmax Khaz Algar Inscription,100 |goto Dornogal/0 48.76,70.90
step
collect 200 Luredrop##210799 |or |usebank
|tip We will use these to make Ink later.
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Luredrop (Azj-Kahet)"
'|complete skill("Khaz Algar Inscription") >= 20 |or |only if default
'|complete skill("Khaz Algar Inscription") >= 25 |or |only if KulTiran
'|complete skill("Khaz Algar Inscription") >= 35 |or |only if Nightborne
step
collect 350 Mycobloom##210796 |or |usebank
|tip We will use these to make Ink later.
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Mycobloom (Azj-Kahet)"
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Mycobloom (Hallowfall)"
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Mycobloom (Isle of Dorn)"
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Mycobloom (The Ringing Deeps)"
'|complete skill("Khaz Algar Inscription") >= 20 |or |only if default
'|complete skill("Khaz Algar Inscription") >= 25 |or |only if KulTiran
'|complete skill("Khaz Algar Inscription") >= 35 |or |only if Nightborne
step
create 20 Khaz Algar Milling##444181,Khaz Algar Inscription,20 |goto Dornogal/0 49.51,70.86 |only if default
create 20 Khaz Algar Milling##444181,Khaz Algar Inscription,25 |goto Dornogal/0 49.51,70.86 |only if KulTiran
create 20 Khaz Algar Milling##444181,Khaz Algar Inscription,35 |goto Dornogal/0 49.51,70.86 |only if Nightborne
|tip Save your pigments we will use these to make Ink.
step
talk Brrigan##219090
Train Apricate Ink |learn Apricate Ink##444222 |goto Dornogal/0 48.76,70.90
step
talk Kardu##219089
buy 900 Distilled Algari Freshwater##226205 |goto Dornogal/0 48.79,70.69 |or
'|complete skill("Khaz Algar Inscription") >= 25 |or |only if default
'|complete skill("Khaz Algar Inscription") >= 30 |or |only if KulTiran
'|complete skill("Khaz Algar Inscription") >= 40 |or |only if Nightborne
stickystart "Collect_Nacreous_Pigment_25"
step
collect 225 Luredrop Pigment##222612 |or |usebank
|tip Mill herbs with inscription or purchase them from the auction house.
'|complete skill("Khaz Algar Inscription") >= 25 |or |only if default
'|complete skill("Khaz Algar Inscription") >= 30 |or |only if KulTiran
'|complete skill("Khaz Algar Inscription") >= 40 |or |only if Nightborne
step
label "Collect_Nacreous_Pigment_25"
collect 400 Nacreous Pigment##222618 |or |usebank
|tip Mill herbs with inscription or purchase them from the auction house.
'|complete skill("Khaz Algar Inscription") >= 25 |or |only if default
'|complete skill("Khaz Algar Inscription") >= 30 |or |only if KulTiran
'|complete skill("Khaz Algar Inscription") >= 40 |or |only if Nightborne
step
create 45 Apricate Ink##444222,Khaz Algar Inscription,25 |goto Dornogal/0 49.51,70.86 |only if default
create 45 Apricate Ink##444222,Khaz Algar Inscription,30 |goto Dornogal/0 49.51,70.86 |only if KulTiran
create 45 Apricate Ink##444222,Khaz Algar Inscription,40 |goto Dornogal/0 49.51,70.86 |only if Nightborne
|tip We will use these later.
|tip You can reach 30 Inscription with this recipe, it will be more expensive but you will always need more Ink.
step
talk Brrigan##219090
Train Boundless Cipher |learn Boundless Cipher##444191 |goto Dornogal/0 48.76,70.90
stickystart "Collect_Arathor's_Spear_35"
step
collect 30 Apricate Ink##222615 |or |usebank
|tip Create them with inscription or purchase them from the auction house.
'|complete skill("Khaz Algar Inscription") >= 35 |or |only if default
'|complete skill("Khaz Algar Inscription") >= 40 |or |only if KulTiran
'|complete skill("Khaz Algar Inscription") >= 50 |or |only if Nightborne
step
label "Collect_Arathor's_Spear_35"
collect 75 Arathor's Spear##210808 |or |usebank
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Arathor's Spear (Hallowfall)"
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Arathor's Spear (The Ringing Deeps)"
'|complete skill("Khaz Algar Inscription") >= 35 |or |only if default
'|complete skill("Khaz Algar Inscription") >= 40 |or |only if KulTiran
'|complete skill("Khaz Algar Inscription") >= 50 |or |only if Nightborne
step
talk Kardu##219089
buy 300 Distilled Algari Freshwater##226205 |goto Dornogal/0 48.79,70.69 |or
'|complete skill("Khaz Algar Inscription") >= 35 |or |only if default
'|complete skill("Khaz Algar Inscription") >= 40 |or |only if KulTiran
'|complete skill("Khaz Algar Inscription") >= 50 |or |only if Nightborne
step
create 15 Boundless Cipher##444191,Khaz Algar Inscription,35 |goto Dornogal/0 49.51,70.86 |only if default
create 15 Boundless Cipher##444191,Khaz Algar Inscription,40 |goto Dornogal/0 49.51,70.86 |only if KulTiran
create 15 Boundless Cipher##444191,Khaz Algar Inscription,50 |goto Dornogal/0 49.51,70.86 |only if Nightborne
|tip You may need to create extra Ciphers or Ink depending on your luck.
|tip Save these, you will need them later.
step
talk Brrigan##219090
Train Algari Missive of the Fireflash |learn Algari Missive of the Fireflash##444212 |goto Dornogal/0 48.76,70.90
step
talk Kardu##219089
buy 50 Distilled Algari Freshwater##226205 |goto Dornogal/0 48.79,70.69 |or 2
buy 20 Fresh Parchment |goto Dornogal/0 48.79,70.69 |or 2
'|complete skill("Khaz Algar Inscription") >= 45 |override |only if default
'|complete skill("Khaz Algar Inscription") >= 50 |override |only if KulTiran
'|complete skill("Khaz Algar Inscription") >= 60 |override |only if Nightborne
step
collect 10 Boundless Cipher##222558 |or |usebank
|tip You created these in a previous step.
'|complete skill("Khaz Algar Inscription") >= 45 |or |only if default
'|complete skill("Khaz Algar Inscription") >= 50 |or |only if KulTiran
'|complete skill("Khaz Algar Inscription") >= 60 |or |only if Nightborne
stickystart "Collect_Viridescent_Spores_45"
step
collect 10 Apricate Ink##222615 |or |usebank
|tip Create them with Inscription or purchase them from the auction house.
'|complete skill("Khaz Algar Inscription") >= 45 |or |only if default
'|complete skill("Khaz Algar Inscription") >= 50 |or |only if KulTiran
'|complete skill("Khaz Algar Inscription") >= 60 |or |only if Nightborne
step
label "Collect_Viridescent_Spores_45"
collect 50 Viridescent Spores##210808 |or |usebank
|tip Farm them from herbs with Herbalism or purchase them from the auction house.
'|complete skill("Khaz Algar Inscription") >= 45 |or |only if default
'|complete skill("Khaz Algar Inscription") >= 50 |or |only if KulTiran
'|complete skill("Khaz Algar Inscription") >= 60 |or |only if Nightborne
step
create 10 Algari Missive of the Fireflash##444212,Khaz Algar Inscription,45 |goto Dornogal/0 49.51,70.86 |only if default
create 10 Algari Missive of the Fireflash##444212,Khaz Algar Inscription,50 |goto Dornogal/0 49.51,70.86 |only if KulTiran
create 10 Algari Missive of the Fireflash##444212,Khaz Algar Inscription,60 |goto Dornogal/0 49.51,70.86
step
talk Brrigan##219090
Train Algari Missive of the Peerless |learn Algari Missive of the Peerless##444214 |goto Dornogal/0 48.76,70.90
step
talk Kardu##219089
buy 25 Distilled Algari Freshwater##226205 |goto Dornogal/0 48.79,70.69 |or 2
buy 10 Fresh Parchment |goto Dornogal/0 48.79,70.69 |or 2
'|complete skill("Khaz Algar Inscription") >= 50 |override |only if default
'|complete skill("Khaz Algar Inscription") >= 55 |override |only if KulTiran
'|complete skill("Khaz Algar Inscription") >= 65 |override |only if Nightborne
step
collect 5 Boundless Cipher##222558 |or |usebank
|tip You created these in a previous step.
'|complete skill("Khaz Algar Inscription") >= 50 |or |only if default
'|complete skill("Khaz Algar Inscription") >= 55 |or |only if KulTiran
'|complete skill("Khaz Algar Inscription") >= 65 |or |only if Nightborne
stickystart "Collect_Viridescent_Spores_50"
step
collect 5 Apricate Ink##222615 |or |usebank
|tip Create them with Inscription or purchase them from the auction house.
'|complete skill("Khaz Algar Inscription") >= 50 |or |only if default
'|complete skill("Khaz Algar Inscription") >= 55 |or |only if KulTiran
'|complete skill("Khaz Algar Inscription") >= 65 |or |only if Nightborne
step
label "Collect_Viridescent_Spores_50"
collect 25 Viridescent Spores##210808 |or |usebank
|tip Farm them from herbs with Herbalism or purchase them from the auction house.
'|complete skill("Khaz Algar Inscription") >= 50 |or |only if default
'|complete skill("Khaz Algar Inscription") >= 55 |or |only if KulTiran
'|complete skill("Khaz Algar Inscription") >= 65 |or |only if Nightborne
step
create 5 Algari Missive of the Peerless##444214,Khaz Algar Inscription,50 |goto Dornogal/0 49.51,70.86 |only if default
create 5 Algari Missive of the Peerless##444214,Khaz Algar Inscription,55 |goto Dornogal/0 49.51,70.86 |only if KulTiran
create 5 Algari Missive of the Peerless##444214,Khaz Algar Inscription,65 |goto Dornogal/0 49.51,70.86 |only if Nightborne
step
Reach Skill Level 100 in Khaz Algar Inscription |skill Khaz Algar Inscription,100 |goto Valdrakken/0 39.61,73.67 |or |only if default
Reach Skill Level 105 in Khaz Algar Inscription |skill Khaz Algar Inscription,105 |goto Valdrakken/0 39.61,73.67 |or |only if KulTiran
Reach Skill Level 115 in Khaz Algar Inscription |skill Khaz Algar Inscription,115 |goto Valdrakken/0 39.61,73.67 |or |only if Nightborne
|tip From this point, it becomes very difficult to continue gaining points.
|tip Your best path is the Crafting Order system to craft items for other players with provided materials.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Khaz Algar Inscription Knowledge Treasures",{
author="support@zygorguides.com",
description="This guide will walk you through collecting all Inscription Knowledge Treasures.",
startlevel=68.0,
condition_end=function() return completedallq(83882,83883,83885,83884,83887,83886,83888,83889) end,
condition_suggested=function() return skill('Khaz Algar Inscription') > 0 and not completedallq(83882,83883,83885,83884,83887,83886,83888,83889) end,
},[[
step
click Dornogal Scribe's Quill##455985
|tip Inside at the very back of the room, it is a small feather on a shelf.
collect Dornogal Scribe's Quill##226308 |goto Dornogal/0 57.21,46.94 |q 83882 |future
step
use the Dornogal Scribe's Quill##226308
Study the Dornogal Scribe's Quill |q 83882 |future
step
click Historian's Dip Pen##455984
|tip Inside in the corner of the room.
collect Historian's Dip Pen##226309 |goto Isle of Dorn/0 55.97,60.02 |q 83883 |future
step
use the Historian's Dip Pen##226309
Study the Historian's Dip Pen |q 83883 |future
step
click Blue Earthen Pigment##455982
|tip On the ground floor, inside the tower. At the very back on a table.
collect Blue Earthen Pigment##226311 |goto The Ringing Deeps/0 62.45,58.02 |q 83885 |future
step
use the Blue Earthen Pigment##226311
Study the Blue Earthen Pigment |q 83885 |future
step
click Runic Scroll##455983
|tip Inside on the table.
collect Runic Scroll##226310 |goto The Ringing Deeps/0 48.54,34.31 |q 83884 |future
step
use the Runic Scroll##226310
Study the Runic Scroll |q 83884 |future
step
click Calligrapher's Chiselled Marker##455980
|tip Inside the tower on a table.
collect Calligrapher's Chiseled Marker##226313 |goto Hallowfall/0 42.83,49.07 |q 83887 |future
step
use the Calligrapher's Chiseled Marker##226313
Study the Calligrapher's Chiseled Marker |q 83887 |future
step
click Informant's Fountain Pen##455981
|tip On a table under the tent.
collect Informant's Fountain Pen##226312 |goto Hallowfall/0 43.25,58.94 |q 83886 |future
step
use the Informant's Fountain Pen##226312
Study the Informant's Fountain Pen |q 83886 |future
step
click Nerubian Texts##455979
|tip It's a big scroll on the ground.
collect Nerubian Texts##226314 |goto Azj-Kahet/0 55.84,43.90 |q 83888 |future
step
use the Nerubian Texts##226314
Study the Nerubian Texts |q 83888 |future
step
click Venomancer's Ink Well##455978
|tip Inside on the counter.
collect Venomancer's Ink Well##226315 |goto Nerub'ar/1 50.27,30.88 |q 83889 |future
step
use the Venomancer's Ink Well##226315
Study the Venomancer's Ink Well |q 83889 |future
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Leveling Guides\\Khaz Algar Jewelcrafting 1-100",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Khaz Algar Jewelcrafting profession from 1-100.",
startlevel=68.0,
condition_end=function() return skill('Khaz Algar Jewelcrafting') >= 100 end,
condition_suggested=function() return skill('Khaz Algar Jewelcrafting') > 0 and skill('Khaz Algar Jewelcrafting') < 100 and level >= 70 end,
},[[
step
Approximate bill of materials:
|tip Bismuth: 125
|tip Any Uncut Gem: 45
|tip Ambivalent Amber: 35
|tip Stunning Sapphire: 15
|tip These totals are approximate.
|tip You are encouraged to make each recipe at least once and utilize the Crafting Order system, which will vary the materials needed.
|tip These materials will get you to approximately 50 skill level.
Click Here to Continue |confirm
step
talk Makir##219087
Train Jewelcrafting |skillmax Jewelcrafting,300 |goto Dornogal/0 49.51,70.86
step
talk Makir##219087
Train Khaz Algar Jewelcrafting |skillmax Khaz Algar Jewelcrafting,100 |goto Dornogal/0 49.51,70.86
step
create 25 Algari Prospecting##434018,Khaz Algar Jewelcrafting,15 |goto Dornogal/0 49.51,70.86 |only if default
create 25 Algari Prospecting##434018,Khaz Algar Jewelcrafting,20 |goto Dornogal/0 49.51,70.86 |only if KulTiran
create 25 Algari Prospecting##434018,Khaz Algar Jewelcrafting,30 |goto Dornogal/0 49.51,70.86 |only if Draenei
|tip Farm 125 of any Khaz Algar ore with Mining or purchase them from the auction house.
|tip Prospect the ore and collect the gems.
step
create 15 Algari Crushing##434020,Khaz Algar Jewelcrafting,25 |goto Dornogal/0 49.51,70.86 |only if default
create 15 Algari Crushing##434020,Khaz Algar Jewelcrafting,30 |goto Dornogal/0 49.51,70.86 |only if KulTiran
create 15 Algari Crushing##434020,Khaz Algar Jewelcrafting,40 |goto Dornogal/0 49.51,70.86 |only if Draenei
|tip Crush the gems you received from prospecting.
'|complete skill("Khaz Algar Jewelcrafting") >= 25
step
step
talk Uthaga##219088
buy 30 Glittering Glass##213399 |goto Dornogal/0 49.54,71.53 |or
'|complete skill("Khaz Algar Jewelcrafting") >= 30 |or |only if default
'|complete skill("Khaz Algar Jewelcrafting") >= 35 |or |only if KulTiran
'|complete skill("Khaz Algar Jewelcrafting") >= 45 |or |only if Draenei
stickystart "Collect_Crushed_Gemstones_30"
step
collect 5 Ambivalent Amber##212498 |or |usebank
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
'|complete skill("Khaz Algar Jewelcrafting") >= 30 |or |only if default
'|complete skill("Khaz Algar Jewelcrafting") >= 35 |or |only if KulTiran
'|complete skill("Khaz Algar Jewelcrafting") >= 45 |or |only if Draenei
step
label "Collect_Crushed_Gemstones_30"
collect 15 Crushed Gemstones##213219 |or |usebank
|tip Crush prospected gems with Jewelcrafting or purchase them from the auction house.
'|complete skill("Khaz Algar Jewelcrafting") >= 30 |or |only if default
'|complete skill("Khaz Algar Jewelcrafting") >= 35 |or |only if KulTiran
'|complete skill("Khaz Algar Jewelcrafting") >= 45 |or |only if Draenei
step
talk Makir##219087
Train Gilded Vial |learn Gilded Vial##435323 |goto Dornogal/0 49.51,70.86
step
create 5 Gilded Vial##435323,Khaz Algar Jewelcrafting,30 |goto Dornogal/0 49.51,70.86 |only if default
create 5 Gilded Vial##435323,Khaz Algar Jewelcrafting,35 |goto Dornogal/0 49.51,70.86 |only if KulTiran
create 5 Gilded Vial##435323,Khaz Algar Jewelcrafting,45 |goto Dornogal/0 49.51,70.86 |only if Draenei
step
talk Makir##219087
Train Malleable Pendant |learn Malleable Pendant##435380 |goto Dornogal/0 49.51,70.86
stickystart "Collect_Stunning_Sapphire_50"
stickystart "Collect_Crushed_Gemstones_50"
step
collect 30 Ambivalent Amber##212498 |or |usebank
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
'|complete skill("Khaz Algar Jewelcrafting") >= 50 |or |only if default
'|complete skill("Khaz Algar Jewelcrafting") >= 55 |or |only if KulTiran
'|complete skill("Khaz Algar Jewelcrafting") >= 65 |or |only if Draenei
step
label "Collect_Stunning_Sapphire_50"
collect 15 Stunning Sapphire##212508 |or |usebank
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
'|complete skill("Khaz Algar Jewelcrafting") >= 50 |or |only if default
'|complete skill("Khaz Algar Jewelcrafting") >= 55 |or |only if KulTiran
'|complete skill("Khaz Algar Jewelcrafting") >= 65 |or |only if Draenei
step
label "Collect_Crushed_Gemstones_50"
collect 30 Crushed Gemstones##213219 |or |usebank
|tip Crush prospected gems with Jewelcrafting or purchase them from the auction house.
'|complete skill("Khaz Algar Jewelcrafting") >= 50 |or |only if default
'|complete skill("Khaz Algar Jewelcrafting") >= 55 |or |only if KulTiran
'|complete skill("Khaz Algar Jewelcrafting") >= 65 |or |only if Draenei
step
create 5 Malleable Pendant##435380,Khaz Algar Jewelcrafting,50 |goto Dornogal/0 49.51,70.86 |only if default
create 5 Malleable Pendant##435380,Khaz Algar Jewelcrafting,55 |goto Dornogal/0 49.51,70.86 |only if KulTiran
create 5 Malleable Pendant##435380,Khaz Algar Jewelcrafting,65 |goto Dornogal/0 49.51,70.86 |only if Draenei
step
Reach Skill Level 100 in Khaz Algar Jewelcrafting |skill Khaz Algar Jewelcrafting,100 |only if default
Reach Skill Level 105 in Khaz Algar Jewelcrafting |skill Khaz Algar Jewelcrafting,105 |only if KulTiran
Reach Skill Level 110 in Khaz Algar Jewelcrafting |skill Khaz Algar Jewelcrafting,115 |only if Draenei
|tip From this point, it becomes very difficult to continue gaining points as soulbound materials are required.
|tip Your best path is the Crafting Order system to craft items for other players with provided materials.
|tip This makes it much cheaper to craft one of each recipe for the first craft bonus.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Khaz Algar Jewelcrafting Knowledge Treasures",{
author="support@zygorguides.com",
description="This guide will walk you through collecting all Jewelcrafting Knowledge Treasures.",
startlevel=68.0,
condition_end=function() return completedallq(83891,83890,83893,83892,83895,83894,83897,83896) end,
condition_suggested=function() return skill('Khaz Algar Jewelcrafting') > 0 and not completedallq(83891,83890,83893,83892,83895,83894,83897,83896) end,
},[[
step
click Earthen Gem Pliers##455976
|tip Ontop of the cart.
collect Earthen Gem Pliers##226317 |goto Dornogal/0 34.86,52.25 |q 83891 |future
step
use the Earthen Gem Pliers##226317
Study the Earthen Gem Pliers |q 83891 |future
step
click Gentle Jewel Hammer##455977
|tip Inside the bunker.
collect Gentle Jewel Hammer##226316 |goto Isle of Dorn/0 63.53,66.87 |q 83890 |future
step
use the Gentle Jewel Hammer##226316
Study the Gentle Jewel Hammer |q 83890 |future
step
click Jeweler's Delicate Drill##455974
|tip On the ground floor, inside the building.
collect Jeweler's Delicate Drill##226319 |goto The Ringing Deeps/0 56.99,54.54 |q 83893 |future
step
use the Jeweler's Delicate Drill##226319
Study the Jeweler's Delicate Drill |q 83893 |future
step
click Carved Stone File##455975
|tip Inside the building on a bookshelf.
collect Carved Stone File##226318 |goto The Ringing Deeps/0 48.48,35.13 |q 83892 |future
step
use the Carved Stone File##226318
Study the Carved Stone File |q 83892 |future
step
click Librarian's Magnifiers##455972
|tip Upstairs in the Steelstrike Residence, on a table.
collect Librarian's Magnifiers##226321 |goto Hallowfall/0 44.69,50.96 |q 83895 |future
step
use the Librarian's Magnifiers##226321
Study the Librarian's Magnifiers |q 83895 |future
step
click Arathi Sizing Gauges##455973
|tip Inside ontop of a shelf.
collect Arathi Sizing Gauges##226320 |goto Hallowfall/0 47.40,60.68 |q 83894 |future
step
use the Arathi Sizing Gauges##226320
Study the Arathi Sizing Gauges |q 83894 |future
step
click Nerubian Bench Blocks##455970
|tip Inside the building.
collect Nerubian Bench Blocks##226323 |goto Azj-Kahet/0 56.15,58.69 |q 83897 |future
step
use the Nerubian Bench Blocks##226323
Study the Nerubian Bench Blocks |q 83897 |future
step
click Ritual Caster's Crystal##455971
|tip On the Jeweler's Bench.
collect Ritual Caster's Crystal##226322 |goto Nerub'ar/1 47.76,19.42 |q 83896 |future
step
use the Ritual Caster's Crystal##226322
Study the Ritual Caster's Crystal |q 83896 |future
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Leveling Guides\\Khaz Algar Leatherworking 1-100",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Khaz Algar Leatherworking profession from 1-100.",
startlevel=68.0,
condition_end=function() return skill('Khaz Algar Leatherworking') >= 100 end,
condition_suggested=function() return skill('Khaz Algar Leatherworking') > 0 and skill('Khaz Algar Leatherworking') < 100 and level >= 70 end,
},[[
step
Approximate bill of materials:
|tip Stormcharged Leather: 505
|tip Gloom Chitin: 185
|tip Thundering Hide: 5
|tip These totals are approximate. You can inverse the Stormcharged Leather and Gloom Chitin amounts depending on prices on your server.
|tip You are encouraged to make each recipe at least once and utilize the Crafting Order system, which will vary the materials needed.
|tip These materials will get you to approximately 50 skill level.
Click Here to Continue |confirm
step
talk Marbb##219080
Train Leatherworking |skillmax Leatherworking,300 |goto Dornogal/0 54.29,58.46
step
talk Marbb##219080
Train Khaz Algar Leatherworking |skillmax Khaz Algar Leatherworking,100 |goto Dornogal/0 54.29,58.46
step
create 3 Spelunker's Leather Bands##443702,Khaz Algar Leatherworking,10 |goto Dornogal/0 54.29,58.46 |only if default
create 3 Spelunker's Leather Bands##443702,Khaz Algar Leatherworking,15 |goto Dornogal/0 54.29,58.46 |only if KulTiran
|tip Each Spelunker's Leather Bands requires 15 Stormcharged Leather and 5 Gloom Chitin.
|tip You can make Tracker's Chitin Cuffs if you have more Gloom Chitin.
|tip Each Tracker's Chitin Hauberk requires 5 Stormcharged Leather and 15 Gloom Chitin.
step
talk Marbb##219080
Train Spelunker's Leather Jerkin |learn Spelunker's Leather Jerkin##443695 |goto Dornogal/0 54.29,58.46 |or
_Or_
Train Tracker's Chitin Hauberk |learn Tracker's Chitin Hauberk##443703 |goto Dornogal/0 54.29,58.46 |or
step
create 3 Spelunker's Leather Jerkin##443695,Khaz Algar Leatherworking,22 |goto Dornogal/0 54.29,58.46 |only if default
create 3 Spelunker's Leather Jerkin##443695,Khaz Algar Leatherworking,27 |goto Dornogal/0 54.29,58.46 |only if KulTiran
|tip Each Spelunker's Leather Jerkin requires 30 Stormcharged Leather and 15 Gloom Chitin.
|tip You can make Tracker's Chitin Hauberk if you have more Gloom Chitin.
|tip Each Tracker's Chitin Hauberk requires 15 Stormcharged Leather and 30 Gloom Chitin.
step
talk Marbb##219080
Train Spelunker's Practiced Sash |learn Spelunker's Leather Sash##443701 |goto Dornogal/0 54.29,58.46 |or
_Or_
Train Tracker's Toughened Girdle |learn Tracker's Toughened Girdle##443709 |goto Dornogal/0 54.29,58.46 |or
step
create 1 Spelunker's Practiced Sash##443701,Khaz Algar Leatherworking,25 |goto Dornogal/0 54.29,58.46 |only if default
create 1 Spelunker's Practiced Sash##443701,Khaz Algar Leatherworking,30 |goto Dornogal/0 54.29,58.46 |only if KulTiran
|tip Each Spelunker's Practiced Sash requires 30 Stormcharged Leather and 10 Gloom Chitin.
|tip You can make Tracker's Toughened Girdle if you have more Gloom Chitin.
|tip Each Tracker's Toughened Girdle requires 10 Stormcharged Leather and 30 Gloom Chitin.
step
talk Marbb##219080
Train Spelunker's Practiced Mitts |learn Spelunker's Practiced Mitts##443697 |goto Dornogal/0 54.29,58.46 |or
_Or_
Train Tracker's Toughened Handguards |learn Tracker's Toughened Handguards##443705 |goto Dornogal/0 54.29,58.46 |or
step
create 4 Spelunker's Practiced Mitts##443697,Khaz Algar Leatherworking,37 |goto Dornogal/0 54.29,58.46 |only if default
create 4 Spelunker's Practiced Mitts##443697,Khaz Algar Leatherworking,42 |goto Dornogal/0 54.29,58.46 |only if KulTiran
|tip Each Spelunker's Practiced Mitts requires 25 Stormcharged Leather and 20 Gloom Chitin.
|tip You can make Tracker's Toughened Handguards if you have more Gloom Chitin.
|tip Each Tracker's Toughened Handguards requires 20 Stormcharged Leather and 25 Gloom Chitin.
step
talk Marbb##219080
Train Steelsmith's Apron |learn Steelsmith's Apron##444107 |goto Dornogal/0 54.29,58.46
stickystart "Collect_Thunderous_Hide_40"
step
collect 20 Gloom Chitin##212667 |or |usebank
|tip Farm them with Skinning or purchase them from the auction house.
|loadguide "Profession Guides\\Skinning\\Farming Guides\\Gloom Chitin (Azj-Kahet)"
'|complete skill("Khaz Algar Skinning") >= 40 |or |only if default
'|complete skill("Khaz Algar Skinning") >= 45 |or |only if KulTiran
step
label "Collect_Thunderous_Hide_40"
collect 1 Thunderous Hide##212670 |or |usebank
|tip Farm it with Skinning or purchase them from the auction house.
|loadguide "Profession Guides\\Skinning\\Farming Guides\\Thunderous Hide (Isle of Dorn)"
'|complete skill("Khaz Algar Skinning") >= 40 |or |only if default
'|complete skill("Khaz Algar Skinning") >= 45 |or |only if KulTiran
step
create 1 Steelsmith's Apron##444107,Khaz Algar Leatherworking,40 |goto Dornogal/0 54.29,58.46 |only if default
create 1 Steelsmith's Apron##444107,Khaz Algar Leatherworking,45 |goto Dornogal/0 54.29,58.46 |only if KulTiran
step
talk Marbb##219080
Train Spelunker's Practiced Shoulders |learn Spelunker's Practiced Shoulders##443700 |goto Dornogal/0 54.29,58.46 |or
_Or_
Train Tracker's Toughened Shoulderguards |learn Tracker's Toughened Shoulderguards##219482 |goto Dornogal/0 54.29,58.46 |or
step
create 4 Spelunker's Practiced Shoulders##443700,Khaz Algar Leatherworking,52 |goto Dornogal/0 54.29,58.46 |only if default
create 4 Spelunker's Practiced Shoulders##443700,Khaz Algar Leatherworking,57 |goto Dornogal/0 54.29,58.46 |only if KulTiran
|tip Each Spelunker's Practiced Shoulders requires 30 Stormcharged Leather and 1 Thunderous Hide.
|tip You can make Tracker's Toughened Shoulderguards if you have more Gloom Chitin.
|tip Each Tracker's Toughened Shoulderguards requires 30 Gloom Chitin and 1 Sunless Carapace.
step
talk Marbb##219080
Train Spelunker's Practiced Hat |learn Spelunker's Practiced Hat##443698 |goto Dornogal/0 54.29,58.46 |or
_Or_
Train Tracker's Toughened Headgear |learn Tracker's Toughened Headgear##443706 |goto Dornogal/0 54.29,58.46 |or
step
create 4 Spelunker's Practiced Hat##443698,Khaz Algar Leatherworking,61 |goto Dornogal/0 54.29,58.46 |only if default
create 4 Spelunker's Practiced Hat##443698,Khaz Algar Leatherworking,66 |goto Dornogal/0 54.29,58.46 |only if KulTiran
|tip Each Spelunker's Practiced Hat requires 30 Stormcharged Leather and 1 Thunderous Hide.
|tip You can make Tracker's Toughened Headgear if you have more Gloom Chitin.
|tip Each Tracker's Toughened Shoulderguards requires 30 Gloom Chitin and 1 Sunless Carapace.
step
Reach Skill Level 100 in Khaz Algar Leatherworking |skill Khaz Algar Leatherworking,100 |or |only if default
Reach Skill Level 105 in Khaz Algar Leatherworking |skill Khaz Algar Leatherworking,105 |or |only if KulTiran
|tip From this point, it becomes very difficult to continue gaining points as soulbound materials are required.
|tip Your best path is the Crafting Order system to craft items for other players with provided materials.
|tip This makes it much cheaper to craft one of each recipe for the first craft bonus.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Khaz Algar Leatherworking Knowledge Treasures",{
author="support@zygorguides.com",
description="This guide will walk you through collecting all Leatherworking Knowledge Treasures.",
startlevel=68.0,
condition_end=function() return completedallq(83898,83899,83901,83900,83903,83902,83905,83904) end,
condition_suggested=function() return skill('Khaz Algar Leatherworking') > 0 and not completedallq(83898,83899,83901,83900,83903,83902,83905,83904) end,
},[[
step
click Earthen Lacing Tools##455969
|tip Inside on the rack.
collect Earthen Lacing Tools##226324 |goto Dornogal/0 68.18,23.36 |q 83898 |future
step
use the Earthen Lacing Tools##226324
Study the Earthen Lacing Tools |q 83898 |future
step
click Dornogal Craftsman's Flat Knife##455968
|tip Inside on a bale of hay.
collect Dornogal Craftsman's Flat Knife##226325 |goto Isle of Dorn/0 58.65,30.76 |q 83899 |future
step
use the Dornogal Craftsman's Flat Knife##226325
Study the Dornogal Craftsman's Flat Knife |q 83899 |future
step
click Earthen Awl##455966
|tip Inside on a table.
collect Earthen Awl##226327 |goto The Ringing Deeps/0 64.28,65.28 |q 83901 |future
step
use the Earthen Awl##226327
Study the Earthen Awl |q 83901 |future
step
click Underground Stropping Compound##455967
|tip Inside on a shelf in the back of the building.
collect Underground Stropping Compound##226326 |goto The Ringing Deeps/0 47.06,34.88 |q 83900 |future
step
use the Underground Stropping Compound##226326
Study the Underground Stropping Compound |q 83900 |future
step
click Arathi Leather Burnisher##455964
|tip On a log next to the standing torch.
collect Arathi Leather Burnisher##226329 |goto Hallowfall/0 41.49,57.83 |q 83903 |future
step
use the Arathi Leather Burnisher##226329
Study the Arathi Leather Burnisher |q 83903 |future
step
click Arathi Beveler Set##455965
|tip Inside the building.
collect Arathi Beveler Set##226328 |goto Hallowfall/0 47.50,65.12 |q 83902 |future
step
use the Arathi Beveler Set##226328
Study the Arathi Beveler Set |q 83902 |future
step
click Curved Nerubian Skinning Knife##455962
|tip On the counter.
collect Curved Nerubian Skinning Knife##226331 |goto Azj-Kahet/0 59.98,53.97 |q 83905 |future
step
use the Curved Nerubian Skinning Knife##226331
Study the Curved Nerubian Skinning Knife |q 83905 |future
step
click Nerubian Tanning Mallet##455963
|tip Inside on the left.
collect Nerubian Tanning Mallet##226330 |goto Nerub'ar/1 55.08,26.93 |q 83904 |future
step
use the Nerubian Tanning Mallet##226330
Study the Nerubian Tanning Mallet |q 83904 |future
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Leveling Guides\\Khaz Algar Mining 1-100",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Khaz Algar Mining profession from 1-100.",
startlevel=60.0,
condition_end=function() return skill('Khaz Algar Mining') >= 100 end,
condition_suggested=function() return skill('Khaz Algar Mining') > 0 and skill('Khaz Algar Mining') < 100 and level >= 60 end,
},[[
step
talk Tarib##219097
Train Mining |skillmax Mining,300 |goto Dornogal/0 52.64,52.53
step
talk Tarib##219097
Train Khaz Algar Mining |skillmax Khaz Algar Mining,100 |goto Dornogal/0 52.64,52.53
step
Reach Skill Level 100 in Khaz Algar Mining |skill Khaz Algar Mining,100 |only if default
Reach Skill Level 105 in Khaz Algar Mining |skill Khaz Algar Mining,105 |only if KulTiran
Reach Skill Level 115 in Khaz Algar Mining |skill Khaz Algar Mining,115 |only if HighmountainTauren
|tip Load any Mining farming guide you choose up to skill level 60 and farm for points.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Bismuth (Azj-Kahet)",{
author="support@zygorguides.com",
},[[
step
map Azj-Kahet/0
path follow smart; loop on; ants curved; dist 50
path	65.46,20.88	58.67,29.88	62.04,35.89	68.28,38.38	75.77,35.00
path	78.00,40.00	77.25,44.78	67.78,56.80	76.55,66.73	76.92,72.04
path	76.89,77.53	72.42,82.38	69.29,81.24	67.06,86.59	62.24,82.03
path	60.25,71.14	56.94,67.00	54.02,68.45	48.16,60.20	43.13,64.43
path	39.23,58.81	33.73,51.16	29.63,52.04	25.12,50.17	23.81,46.94
path	25.20,40.32	26.75,34.16	28.88,33.56	33.18,37.99	38.62,36.24
path	42.32,31.42	48.89,29.14	53.03,24.47	57.87,21.70	62.44,18.66
click Bismuth##413046+
|tip They share a spawn with other ore nodes.
collect Bismuth##210930 |n
collect Bismuth##210931 |n
collect Bismuth##210932 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Khaz Algar Mining Knowledge Treasures",{
author="support@zygorguides.com",
description="This guide will walk you through collecting all Mining Knowledge Treasures.",
startlevel=68.0,
condition_end=function() return completedallq(83907,83906,83909,83908,83911,83910,83912,83913) end,
condition_suggested=function() return skill('Khaz Algar Mining') > 0 and not completedallq(83907,83906,83909,83908,83911,83910,83912,83913) end,
},[[
step
click Dornogal Chisel##455960
|tip On the ledge of the crystal.
collect Dornogal Chisel##226333 |goto Dornogal/0 36.64,79.28 |q 83907 |future
step
use the Dornogal Chisel##226333
Study the Dornogal Chisel |q 83907 |future
step
click Earthen Miner's Gavel##455961
collect Earthen Miner's Gavel##226332 |goto Isle of Dorn/0 58.18,62.01 |q 83906 |future
step
use the Earthen Miner's Gavel##226332
Study the Earthen Miner's Gavel |q 83906 |future
step
click Earthen Excavator's Shovel##455959
|tip Inside on the floor.
collect Earthen Excavator's Shovel##226334 |goto The Ringing Deeps/0 49.41,27.53 |q 83909 |future
step
use the Earthen Excavator's Shovel##226334
Study the Earthen Excavator's Shovel |q 83909 |future
step
click Regenerating Ore##455958
collect Regenerating Ore##226335 |goto The Ringing Deeps/0 66.27,66.23 |q 83908 |future
step
use the Regenerating Ore##226335
Study the Regenerating Ore |q 83908 |future
step
click Arathi Precision Drill##455957
|tip Under the deck on a workbench.
collect Arathi Precision Drill##226336 |goto Hallowfall/0 46.08,64.41 |q 83911 |future
step
use the Arathi Precision Drill##226336
Study the Arathi Precision Drill |q 83911 |future
step
click Devout Archaeologist's Excavator##455956
collect Devout Archaeologist's Excavator##226337 |goto Hallowfall/0 43.08,56.84 |q 83910 |future
step
use the Devout Archaeologist's Excavator##226337
Study the Devout Archaeologist's Excavator |q 83910 |future
step
click Heavy Spider Crusher##455955
|tip On the counter.
collect Heavy Spider Crusher##226338 |goto Nerub'ar/1 46.82,21.76 |q 83912 |future
step
use the Heavy Spider Crusher##226338
Study the Heavy Spider Crusher |q 83912 |future
step
click Nerubian Mining Cart##455954
|tip It's a minecart under some webs.
collect Nerubian Mining Supplies##226339 |goto Nerub'ar/0 48.03,40.66 |q 83913 |future
step
use the Nerubian Mining Supplies##226339
Study the Nerubian Mining Supplies |q 83913 |future
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Bismuth (Hallowfall)",{
author="support@zygorguides.com",
},[[
step
map Hallowfall/0
path follow smart; loop on; ants curved; dist 50
path	40.20,67.02	39.87,62.21	37.36,58.56	32.71,58.29	28.32,59.16
path	22.74,59.13	22.91,55.20	28.09,50.10	30.78,43.37	32.74,35.04
path	34.12,28.78	38.75,25.03	42.11,22.08	45.33,15.94	46.06,12.40
path	49.54,15.92	53.18,16.82	55.26,22.04	54.84,27.84	52.38,31.60
path	47.76,31.31	44.92,36.31	42.15,41.78	40.06,44.96	41.48,47.07
path	47.17,49.95	54.18,52.80	57.26,54.33	59.09,51.42	62.48,50.96
path	64.90,47.49	62.70,44.01	59.71,41.50	59.49,37.02	60.26,31.55
path	64.90,27.56	67.96,29.79	69.43,37.79	71.97,42.88	70.31,48.47
path	69.73,51.94	70.32,57.43	68.25,63.06	64.23,66.51	63.01,66.62
path	60.90,66.00	57.91,66.76	53.68,67.43	44.87,67.23
click Bismuth##413046+
|tip They share a spawn with other ore nodes.
collect Bismuth##210930 |n
collect Bismuth##210931 |n
collect Bismuth##210932 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Bismuth (Isle of Dorn)",{
author="support@zygorguides.com",
},[[
step
map Isle of Dorn/0
path follow smart; loop on; ants curved; dist 50
path	45.94,58.40	44.66,62.76	42.04,66.98	38.10,66.70	33.09,62.58
path	32.25,57.76	30.50,52.12	27.02,52.43	22.98,53.07	21.13,56.88
path	21.79,62.61	24.56,66.34	29.04,69.50	32.36,75.29	34.55,79.25
path	39.00,83.25	44.02,82.45	47.26,77.31	49.93,76.74	53.36,78.01
path	56.45,74.35	61.70,72.16	64.25,66.18	66.55,60.41	68.97,53.75
path	71.52,50.04	71.65,44.15	68.63,40.51	65.97,33.68	65.30,24.70
path	63.87,19.09	61.26,15.76	56.40,16.52	53.13,18.53	49.27,17.64
path	44.88,16.86	41.15,21.04	40.72,26.42	42.32,31.51
map Dornogal/0
path	28.91,20.98	25.42,42.09
map Isle of Dorn/0
path	43.16,47.12
map Dornogal/0
path	31.13,78.95
map Isle of Dorn/0
path	50.30,53.80	53.69,50.76	56.02,43.98	56.28,37.75	56.69,32.34
path	59.91,26.26	62.72,28.79	63.05,34.56	63.21,42.55	63.80,47.70
path	61.72,52.91	57.38,58.46	54.43,60.73	50.96,59.29
click Bismuth##413046+
|tip They share a spawn with other ore nodes.
collect Bismuth##210930 |n
collect Bismuth##210931 |n
collect Bismuth##210932 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Bismuth (The Ringing Deeps)",{
author="support@zygorguides.com",
},[[
step
map The Ringing Deeps/0
path follow smart; loop on; ants curved; dist 50
path	51.52,64.64	52.33,58.68	51.88,53.19	50.50,46.89	47.88,40.79
path	45.57,36.81	44.89,28.16	43.11,20.83	42.81,13.90	45.11,10.69
path	49.98,10.14	53.54,11.32	52.00,17.48	52.14,24.44	54.58,30.49
path	57.83,33.25	64.05,31.55	66.12,35.78	71.11,38.74	71.13,42.93
path	68.27,42.54	62.41,41.64	60.04,52.05	58.56,62.72	61.15,72.11
path	64.30,81.52	65.05,89.01	62.06,90.56	59.50,84.25	57.94,77.97
path	54.35,70.71	51.15,68.03
click Bismuth##413046+
|tip They share a spawn with other ore nodes.
collect Bismuth##210930 |n
collect Bismuth##210931 |n
collect Bismuth##210932 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Ironclaw (Isle of Dorn)",{
author="support@zygorguides.com",
},[[
step
map Isle of Dorn/0
path follow smart; loop on; ants curved; dist 50
path	45.94,58.40	44.66,62.76	42.04,66.98	38.10,66.70	33.09,62.58
path	32.25,57.76	30.50,52.12	27.02,52.43	22.98,53.07	21.13,56.88
path	21.79,62.61	24.56,66.34	29.04,69.50	32.36,75.29	34.55,79.25
path	39.00,83.25	44.02,82.45	47.26,77.31	49.93,76.74	53.36,78.01
path	56.45,74.35	61.70,72.16	64.25,66.18	66.55,60.41	68.97,53.75
path	71.52,50.04	71.65,44.15	68.63,40.51	65.97,33.68	65.30,24.70
path	63.87,19.09	61.26,15.76	56.40,16.52	53.13,18.53	49.27,17.64
path	44.88,16.86	41.15,21.04	40.72,26.42	42.32,31.51
map Dornogal/0
path	28.91,20.98	25.42,42.09
map Isle of Dorn/0
path	43.16,47.12
map Dornogal/0
path	31.13,78.95
map Isle of Dorn/0
path	50.30,53.80	53.69,50.76	56.02,43.98	56.28,37.75	56.69,32.34
path	59.91,26.26	62.72,28.79	63.05,34.56	63.21,42.55	63.80,47.70
path	61.72,52.91	57.38,58.46	54.43,60.73	50.96,59.29
click Ironclaw##413049+
|tip They share a spawn with other ore nodes.
collect Ironclaw Ore##210936 |n
collect Ironclaw Ore##210937 |n
collect Ironclaw Ore##210938 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Ironclaw (The Ringing Deeps)",{
author="support@zygorguides.com",
},[[
step
map The Ringing Deeps/0
path follow smart; loop on; ants curved; dist 50
path	51.52,64.64	52.33,58.68	51.88,53.19	50.50,46.89	47.88,40.79
path	45.57,36.81	44.89,28.16	43.11,20.83	42.81,13.90	45.11,10.69
path	49.98,10.14	53.54,11.32	52.00,17.48	52.14,24.44	54.58,30.49
path	57.83,33.25	64.05,31.55	66.12,35.78	71.11,38.74	71.13,42.93
path	68.27,42.54	62.41,41.64	60.04,52.05	58.56,62.72	61.15,72.11
path	64.30,81.52	65.05,89.01	62.06,90.56	59.50,84.25	57.94,77.97
path	54.35,70.71	51.15,68.03
click Ironclaw##413049+
|tip They share a spawn with other ore nodes.
collect Ironclaw Ore##210936 |n
collect Ironclaw Ore##210937 |n
collect Ironclaw Ore##210938 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Aqirite (Azj-Kahet)",{
author="support@zygorguides.com",
},[[
step
map Azj-Kahet/0
path follow smart; loop on; ants curved; dist 50
path	65.46,20.88	58.67,29.88	62.04,35.89	68.28,38.38	75.77,35.00	78.00,40.00
path	77.25,44.78	67.78,56.80	76.55,66.73	76.92,72.04	76.89,77.53
path	72.42,82.38	69.29,81.24	67.06,86.59	62.24,82.03
path	60.25,71.14	56.94,67.00	54.02,68.45	48.16,60.20	43.13,64.43
path	39.23,58.81	33.73,51.16
path	29.63,52.04	25.12,50.17	23.81,46.94	25.20,40.32	26.75,34.16
path	28.88,33.56	33.18,37.99	38.62,36.24	42.32,31.42	48.89,29.14
path	53.03,24.47	57.87,21.70	62.44,18.66
click Aqirite##413047+
|tip They share a spawn with other ore nodes.
collect Aqirite##210933 |n
collect Aqirite##210934 |n
collect Aqirite##210935 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Aqirite (Hallowfall)",{
author="support@zygorguides.com",
},[[
step
map Hallowfall/0
path follow smart; loop on; ants curved; dist 50
path	40.20,67.02	39.87,62.21	37.36,58.56	32.71,58.29	28.32,59.16
path	22.74,59.13	22.91,55.20	28.09,50.10	30.78,43.37	32.74,35.04
path	34.12,28.78	38.75,25.03	42.11,22.08	45.33,15.94	46.06,12.40
path	49.54,15.92	53.18,16.82	55.26,22.04	54.84,27.84	52.38,31.60
path	47.76,31.31	44.92,36.31	42.15,41.78	40.06,44.96	41.48,47.07
path	47.17,49.95	54.18,52.80	57.26,54.33	59.09,51.42	62.48,50.96
path	64.90,47.49	62.70,44.01	59.71,41.50	59.49,37.02	60.26,31.55
path	64.90,27.56	67.96,29.79	69.43,37.79	71.97,42.88	70.31,48.47
path	69.73,51.94	70.32,57.43	68.25,63.06	64.23,66.51	63.01,66.62
path	60.90,66.00	57.91,66.76	53.68,67.43	44.87,67.23
click Aqirite##413047+
|tip They share a spawn with other ore nodes.
collect Aqirite##210933 |n
collect Aqirite##210934 |n
collect Aqirite##210935 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Leveling Guides\\Khaz Algar Skinning 1-100",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Khaz Algar Skinning profession from 1-100.",
startlevel=60.0,
condition_end=function() return skill('Khaz Algar Skinning') >= 100 end,
condition_suggested=function() return skill('Khaz Algar Skinning') > 0 and skill('Khaz Algar Skinning') < 100 and level >= 60 end,
},[[
step
talk Ginnad##219083
Train Skinning |skillmax Skinning,300 |goto Dornogal/0 54.27,57.40
step
talk Ginnad##219083
Train Khaz Algar Skinning |skillmax Khaz Algar Skinning,100 |goto Dornogal/0 54.27,57.40
step
Reach Skill Level 100 in Khaz Algar Skinning |skill Khaz Algar Skinning,100 |only if default
Reach Skill Level 105 in Khaz Algar Skinning |skill Khaz Algar Skinning,105 |only if KulTiran
Reach Skill Level 115 in Khaz Algar Skinning |skill Khaz Algar Skinning,115 |only if Worgen
|tip Load any Skinning farming guide you choose and farm for points.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Stormcharged Leather (Isle of Dorn)",{
author="support@zygorguides.com",
},[[
step
map Isle of Dorn/0
path follow smart; loop on; ants curved; dist 50
path	69.67,45.88	70.22,50.45	68.31,53.84	67.25,57.46	65.82,59.91
path	64.24,60.24	62.15,60.04	59.92,57.92	59.85,54.80	62.26,53.97
path	63.56,51.86	64.73,49.76	66.83,47.40
Kill enemies along the path
|tip Make sure you loot them so you can skin them after.
collect Stormcharged Leather##212664 |n
collect Stormcharged Leather##212665 |n
collect Stormcharged Leather##212666 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Khaz Algar Skinning Knowledge Treasures",{
author="support@zygorguides.com",
description="This guide will walk you through collecting all Skinning Knowledge Treasures.",
startlevel=68.0,
condition_end=function() return completedallq(83914,83915,83916,83917,83919,83918,83921,83920) end,
condition_suggested=function() return skill('Khaz Algar Skinning') > 0 and not completedallq(83914,83915,83916,83917,83919,83918,83921,83920) end,
},[[
step
Enter the building |goto Dornogal/0 30.20,55.80 < 20
click Dornogal Carving Knife##455953
collect Dornogal Carving Knife##226340 |goto Dornogal/0 28.75,51.70 |q 83914 |future
step
use the Dornogal Carving Knife##226340
Study the Dornogal Carving Knife |q 83914 |future
step
click Earthen Worker's Beams##455952
|tip It's a pile of wood outside of the building.
collect Earthen Worker's Beams##226341 |goto Isle of Dorn/0 60.04,28.00 |q 83915 |future
step
use the Earthen Worker's Beams##226341
Study the Earthen Worker's Beams |q 83915 |future
step
click Artisan's Drawing Knife##455951
|tip Inside ontop of a keg.
collect Artisan's Drawing Knife##226342 |goto The Ringing Deeps/0 47.30,28.33 |q 83916 |future
step
use the Artisan's Drawing Knife##226342
Study the Artisan's Drawing Knife |q 83916 |future
step
click Fungarian's Rich Tannin##455950
|tip Outside, under the stall.
collect Fungarian's Rich Tannin##226343 |goto The Ringing Deeps/0 65.72,61.90 |q 83917 |future
step
use the Fungarian's Rich Tannin##226343
Study the Fungarian's Rich Tannin |q 83917 |future
step
click Arathi Craftsman's Spokeshave##455948
|tip Inside the Home of the Wildes, on the table.
collect Arathi Craftsman's Spokeshave##226345 |goto Hallowfall/0 42.29,53.92 |q 83919 |future
step
use the Arathi Craftsman's Spokeshave##226345
Study the Arathi Craftsman's Spokeshave |q 83919 |future
step
click Arathi Tanning Agent##455949
|tip Inside the tower.
collect Arathi Tanning Agent##226344 |goto Hallowfall/0 49.36,62.13 |q 83918 |future
step
use the Arathi Tanning Agent##226344
Study the Arathi Tanning Agent |q 83918 |future
step
click Carapace Shiner##455946
|tip On the counter inside the market stall.
collect Carapace Shiner##226347 |goto Azj-Kahet/0 56.52,55.22 |q 83921 |future
step
use the Carapace Shiner##226347
Study the Carapace Shiner |q 83921 |future
step
click Nerubian's Slicking Iron##455947
|tip Inside the building on a table.
collect Nerubian's Slicking Iron##226346 |goto Nerub'ar/0 44.53,49.39 |q 83920 |future
step
use the Nerubian's Slicking Iron##226346
Study the Nerubian's Slicking Iron |q 83920 |future
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Thunderous Hide (Isle of Dorn)",{
author="support@zygorguides.com",
},[[
step
map Isle of Dorn/0
path follow smart; loop on; ants curved; dist 50
path	69.67,45.88	70.22,50.45	68.31,53.84	67.25,57.46	65.82,59.91
path	64.24,60.24	62.15,60.04	59.92,57.92	59.85,54.80	62.26,53.97
path	63.56,51.86	64.73,49.76	66.83,47.40
Kill enemies along the path
|tip Make sure you loot them so you can skin them after.
|tip Thunderous Hide is less common than Stormcharged Leather.
collect Thunderous Hide##212670 |n
collect Thunderous Hide##212672 |n
collect Thunderous Hide##212673 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Gloom Chitin (Azj-Kahet)",{
author="support@zygorguides.com",
},[[
step
map Azj-Kahet/0
path follow smart; loop on; ants curved; dist 50
path	57.38,33.42	57.02,36.25	59.35,38.69	60.22,44.64	62.74,48.07
path	62.93,52.95	65.93,54.84	68.17,57.06	70.01,57.08	69.30,54.64
path	69.11,53.60	67.50,53.27	66.24,50.62	63.95,47.64	62.75,41.99
path	63.21,37.57	61.43,31.91
Kill enemies along the path
|tip Make sure you loot them so you can skin them after.
collect Gloom Chitin##212667 |n
collect Gloom Chitin##212668 |n
collect Gloom Chitin##212669 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Sunless Carapace (Azj-Kahet)",{
author="support@zygorguides.com",
},[[
step
map Azj-Kahet/0
path follow smart; loop on; ants curved; dist 50
path	57.38,33.42	57.02,36.25	59.35,38.69	60.22,44.64	62.74,48.07
path	62.93,52.95	65.93,54.84	68.17,57.06	70.01,57.08	69.30,54.64
path	69.11,53.60	67.50,53.27	66.24,50.62	63.95,47.64	62.75,41.99
path	63.21,37.57	61.43,31.91
Kill enemies along the path
|tip Make sure you loot them so you can skin them after.
|tip Sunless Carapace is less common than Gloom Chitin.
collect Sunless Carapace##212674 |n
collect Sunless Carapace##212675 |n
collect Sunless Carapace##212676 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Leveling Guides\\Khaz Algar Tailoring 1-100",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Khaz Algar Tailoring profession from 1-100.",
startlevel=68.0,
condition_end=function() return skill('Khaz Algar Tailoring') >= 100 end,
condition_suggested=function() return skill('Khaz Algar Tailoring') > 0 and skill('Khaz Algar Tailoring') < 100 and level >= 70 end,
},[[
step
Approximate bill of materials:
|tip Weavercloth: 175
|tip These totals are approximate.
|tip You are encouraged to make each recipe at least once and utilize the Crafting Order system, which will vary the materials needed.
|tip These materials will get you to approximately 45 skill level.
Click Here to Continue |confirm
step
talk Kotag##219094
Train Tailoring |skillmax Tailoring,300 |goto Dornogal/0 54.69,63.67
step
talk Kotag##219094
Train Khaz Algar Tailoring |skillmax Khaz Algar Tailoring,100 |goto Dornogal/0 54.69,63.67
step
talk Berred##219100
buy 230 Mosswool Thread##224764 |goto Dornogal/0 54.43,59.25 |or
'|complete skill("Khaz Algar Tailoring") >= 15 |or |only if default
'|complete skill("Khaz Algar Tailoring") >= 20 |or |only if KulTiran
step
create 35 Unraveling##446926,Khaz Algar Tailoring,10 |goto Dornogal/0 54.69,63.67 |only if default
create 35 Unraveling##446926,Khaz Algar Tailoring,15 |goto Dornogal/0 54.69,63.67 |only if KulTiran
|tip We will use these items later
step
talk Kotag##219094
Train Weavercloth Bolt |learn Weavercloth Bolt##446929 |goto Dornogal/0 54.69,63.67
step
create 40 Weavercloth Bolt##446929,Khaz Algar Tailoring,25 |goto Dornogal/0 54.69,63.67 |only if default
create 40 Weavercloth Bolt##446929,Khaz Algar Tailoring,30 |goto Dornogal/0 54.69,63.67 |only if KulTiran
|tip We will use these items later
|tip You may need more to reach 25 if you are unlucky.
step
talk Kotag##219094
Train Pioneer's Perfected Cloak |learn Pioneer's Perfected Cloak##446958 |goto Dornogal/0 54.69,63.67
step
talk Berred##219100
buy 10 Adorning Ribbon##228930 |goto Dornogal/0 54.78,63.91 |or 2
buy 20 Mosswool Thread##224764 |goto Dornogal/0 54.78,63.91 |or 2
'|complete skill("Khaz Algar Tailoring") >= 35 |override |only if default
'|complete skill("Khaz Algar Tailoring") >= 40 |override |only if KulTiran
step
collect 20 Weavercloth Bolt##222806 |or |usebank
|tip You created these in a previous step.
'|complete skill("Khaz Algar Tailoring") >= 35 |or |only if default
'|complete skill("Khaz Algar Tailoring") >= 40 |or |only if KulTiran
step
create 10 Pioneer's Perfected Cloak##446958,Khaz Algar Tailoring,35 |goto Dornogal/0 54.69,63.67 |only if default
create 10 Pioneer's Perfected Cloak##446958,Khaz Algar Tailoring,40 |goto Dornogal/0 54.69,63.67 |only if KulTiran
step
talk Kotag##219094
Train Pioneer's Perfected Mantle |learn Pioneer's Perfected Mantle##446962 |goto Dornogal/0 54.69,63.67
step
talk Berred##219100
buy 10 Adorning Ribbon##228930 |goto Dornogal/0 54.78,63.91 |or 2
buy 30 Mosswool Thread##224764 |goto Dornogal/0 54.78,63.91 |or 2
'|complete skill("Khaz Algar Tailoring") >= 45 |override |only if default
'|complete skill("Khaz Algar Tailoring") >= 50 |override |only if KulTiran
step
collect 20 Weavercloth Bolt##222806 |or |usebank
|tip You created these in a previous step.
'|complete skill("Khaz Algar Tailoring") >= 45 |or |only if default
'|complete skill("Khaz Algar Tailoring") >= 50 |or |only if KulTiran
step
create 10 Pioneer's Perfected Mantle##446962,Khaz Algar Tailoring,45 |goto Dornogal/0 54.69,63.67 |only if default
create 10 Pioneer's Perfected Mantle##446962,Khaz Algar Tailoring,50 |goto Dornogal/0 54.69,63.67 |only if KulTiran
step
Reach Skill Level 100 in Khaz Algar Tailoring |skill Khaz Algar Tailoring,100 |only if default
Reach Skill Level 105 in Khaz Algar Tailoring |skill Khaz Algar Tailoring,105 |only if KulTiran
|tip From this point, it becomes very difficult to continue gaining points as soulbound materials are required.
|tip Your best path is the Crafting Order system to craft items for other players with provided materials.
|tip This makes it much cheaper to craft one of each recipe for the first craft bonus.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Khaz Algar Tailoring Knowledge Treasures",{
author="support@zygorguides.com",
description="This guide will walk you through collecting all Tailoring Knowledge Treasures.",
startlevel=68.0,
condition_end=function() return completedallq(83922,83923,83925,83924,83926,83927,83928,83929) end,
condition_suggested=function() return skill('Khaz Algar Tailoring') > 0 and not completedallq(83922,83923,83925,83924,83926,83927,83928,83929) end,
},[[
step
click Dornogal Seam Ripper##455945
|tip Inside the building on a table in the back.
collect Dornogal Seam Ripper##226348 |goto Dornogal/0 61.52,18.54 |q 83922 |future
step
use the Dornogal Seam Ripper##226348
Study the Dornogal Seam Ripper |q 83922 |future
step
click Earthen Tape Measure##455944
|tip On the stall.
collect Earthen Tape Measure##226349 |goto Isle of Dorn/0 56.20,61.02 |q 83923 |future
step
use the Earthen Tape Measure##226349
Study the Earthen Tape Measure |q 83923 |future
step
click Earthen Stitcher's Snips##455942
|tip On a table.
collect Earthen Stitcher's Snips##226351 |goto The Ringing Deeps/0 64.16,60.31 |q 83925 |future
step
use the Earthen Stitcher's Snips##226351
Study the Earthen Stitcher's Snips |q 83925 |future
step
click Runed Earthen Pins##455943
|tip Inside the inn, in the very back.
collect Runed Earthen Pins##226350 |goto The Ringing Deeps/0 48.84,32.83 |q 83924 |future
step
use the Runed Earthen Pins##226350
Study the Runed Earthen Pins |q 83924 |future
step
click Arathi Rotary Cutter##455941
|tip On a workbench outside.
collect Arathi Rotary Cutter##226352 |goto Hallowfall/0 49.31,62.30 |q 83926 |future
step
use the Arathi Rotary Cutter##226352
Study the Arathi Rotary Cutter |q 83926 |future
step
click Royal Outfitter's Protractor##455940
|tip Inside the tent on a crate.
collect Royal Outfitter's Protractor##226353 |goto Hallowfall/0 40.10,68.13 |q 83927 |future
step
use the Royal Outfitter's Protractor##226353
Study the Royal Outfitter's Protractor |q 83927 |future
step
click Nerubian Quilt##455939
|tip Its a chest inside the building.
collect Nerubian Quilt##226354 |goto Azj-Kahet/0 53.28,53.08 |q 83928 |future
step
use the Nerubian Quilt##226354
Study the Nerubian Quilt |q 83928 |future
step
click Nerubian's Pincushion##455938
|tip On the counter beside the Tailoring Supplies.
collect Nerubian's Pincushion##226355 |goto Nerub'ar/1 50.25,16.77 |q 83929 |future
step
use the Nerubian's Pincushion##226355
Study the Nerubian's Pincushion |q 83929 |future
]])
