local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("LevelingCDRAGON") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Startup Guide Wizard",{
author="support@zygorguides.com",
condition_visible=function() return false end,
noscoring = true,
orientation = true,
},[[
step
Welcome to the Zygor Startup Wizard!
In order for Zygor Guides to perform at its best we need to collect some character data.
This wizard will walk you through a few simple steps to do this.
confirm begin
step
Use the Zygor Guides Client (desktop) to install Trend Data. |complete (ZGV.Gold.servertrends ~= nil)
|tip This is needed for the Gold Guide. You can configure your servers in the Settings under Trend Data.
reload
confirm skip
step
findcity Main City
|tip You need to be in a capital city for the upcoming steps.
step
talknpcs Auctioneer |autoscript ZGV.ATWereEnabled=ZGV.db.profile.auction_enable ZGV.db.profile.auction_enable=true
Click the Scan button in the bottom right corner.
Record auction pricing data for the Gold Guide |complete ZGV.Gold:LastScan(15)
step
talknpcs Banker
Record the items you have placed in your bank inventory. |complete ZGV.Inventory:CharacterBankKnown()
step
talknpcs Flightmaster
Record what flight points you have for the Travel System. | complete LibTaxi:IsContinentKnown()
step
openskill Alchemy
|only if hasprofunscanned("Alchemy")
Record your profession data for the Gold Guide. |complete hasprof("Alchemy",1)
step
openskill Blacksmithing
|only if hasprofunscanned("Blacksmithing")
Record your profession data for the Gold Guide. |complete hasprof("Blacksmithing",1)
step
openskill Cooking
|only if hasprofunscanned("Cooking")
Record your profession data for the Gold Guide. |complete hasprof("Cooking",1)
step
openskill Enchanting
|only if hasprofunscanned("Enchanting")
Record your profession data for the Gold Guide. |complete hasprof("Enchanting",1)
step
openskill Engineering
|only if hasprofunscanned("Engineering")
Record your profession data for the Gold Guide. |complete hasprof("Engineering",1)
step
openskill First Aid
|only if hasprofunscanned("First Aid")
Record your profession data for the Gold Guide. |complete hasprof("First Aid",1)
step
openskill Fishing
|only if hasprofunscanned("Fishing")
Record your profession data for the Gold Guide. |complete hasprof("Fishing",1)
step
openskill Herbalism
|only if hasprofunscanned("Herbalism")
Record your profession data for the Gold Guide. |complete hasprof("Herbalism",1)
step
openskill Inscription
|only if hasprofunscanned("Inscription")
Record your profession data for the Gold Guide. |complete hasprof("Inscription",1)
step
openskill Jewelcrafting
|only if hasprofunscanned("Jewelcrafting")
Record your profession data for the Gold Guide. |complete hasprof("Jewelcrafting",1)
step
openskill Leatherworking
|only if hasprofunscanned("Leatherworking")
Record your profession data for the Gold Guide. |complete hasprof("Leatherworking",1)
step
openskill Mining
|only if hasprofunscanned("Mining")
Record your profession data for the Gold Guide. |complete hasprof("Mining",1)
step
openskill Skinning
|only if hasprofunscanned("Skinning")
Record your profession data for the Gold Guide. |complete hasprof("Skinning",1)
step
openskill Tailoring
|only if hasprofunscanned("Tailoring")
Record your profession data for the Gold Guide. |complete hasprof("Tailoring",1)
step
You''re all set!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Dracthyr Starter (10-15)",{
author="support@zygorguides.com",
description="This guide will walk you through completing the introductory Dracthyr quests.",
condition_suggested=function() return raceclass('Evoker') and level <= 16 and not completedq(65100) end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Evoker') end,
condition_valid_msg="You must be a Dracthyr to complete this guide!",
startlevel=10,
next="Leveling Guides\\Starter Guides\\Chromie Time",
},[[
step
_Nearby:_
|tip When you create a Dracthyr, you start in one of the side rooms of the large circular room.
|tip It's random, so the location of the first NPC you need to talk to changes, depending on which room you start in.
talk Dervishian##181494			|only if Alliance
talk Kodethi##187223			|only if Horde
accept Awaken Dracthyr##64864
step
_Nearby:_
clicknpc Dervishian##181494			|only if Alliance
clicknpc Kodethi##187223			|only if Horde
Awaken a Dracthyr Ally |q 64864/1
step
clicknpc Tethalash##181680
Awaken Tethalash |q 64864/3 |goto The Forbidden Reach/4 44.38,85.57
step
click Talon Kethahn
Find Kethahn |q 64864/2 |goto The Forbidden Reach/4 47.95,79.90
step
clicknpc Scalecommander Azurathel##183380
Awaken Azurathel |q 64864/4 |goto The Forbidden Reach/4 32.15,82.73
step
Watch the dialogue
talk Scalecommander Azurathel##181056
|tip He walks to this location.
turnin Awaken, Dracthyr##64864 |goto The Forbidden Reach/4 32.92,81.57
accept Gear Up##64865 |goto The Forbidden Reach/4 32.92,81.57
step
talk Dervishian##181596
accept Arcane Guardians##64863 |goto The Forbidden Reach/4 33.06,80.69
stickystart "Slay_Guardians_Or_Constructs"
step
click Weapon Rack
|tip In a side room.
collect Stack of Weapons##187852 |q 64865/1 |goto The Forbidden Reach/4 45.03,66.23
step
click Rations
|tip In a side room.
collect Decayed Rations##187855 |q 64865/3 |goto The Forbidden Reach/4 34.17,61.06
step
click Crate of Warscale Armor
|tip In a side room.
collect Crate of Warscales##187853 |q 64865/2 |goto The Forbidden Reach/4 38.70,51.25
step
label "Slay_Guardians_Or_Constructs"
Kill enemies around this area
Slay #4# Guardians or Constructs |q 64863/1 |goto The Forbidden Reach/4 39.68,61.80
'|kill Ancient Construct##185272, Conjured Guardian##186853
step
talk Dervishian##182069
turnin Arcane Guardians##64863 |goto The Forbidden Reach/4 45.88,58.56
step
talk Scalecommander Azurathel##181594
turnin Gear Up##64865 |goto The Forbidden Reach/4 46.44,57.11
accept Into the Cauldron##64866 |goto The Forbidden Reach/4 46.44,57.11
step
Glide into the Earth-Warder's Cauldron |q 64866/1 |goto The Forbidden Reach/4 45.56,48.01
|tip Jump off the platform and glide down to the ground.
step
Rescue or Heal #5# Dracthyr with Living Flame |q 64866/2 |goto The Forbidden Reach/4 54.66,47.19
|tip Use your {o}Living Flame{} ability on Dracthyr Talons.
|tip They look like dragon people laying on the ground, or standing.
'|clicknpc Dracthyr Talon##187335, Dracthyr Talon##187133
step
talk Scalecommander Azurathel##182168
turnin Into the Cauldron##64866 |goto The Forbidden Reach/4 61.97,36.27
step
talk Scalecommander Cindrethresh##186883
accept The Dragon at the Door##64871 |goto The Forbidden Reach/4 62.29,36.45
step
Reach the Exit |q 64871/1 |goto The Forbidden Reach/4 66.18,12.09
|tip Run up the stairs with your allies.
step
kill Lapisagos##186854 |q 64871/2 |goto The Forbidden Reach/4 66.40,10.54
|tip Your allies will help you fight.
step
Watch the dialogue
Reach the Surface |goto The Forbidden Reach/0 44.41,61.49 < 50 |c |noway |q 64871
step
Watch the dialogue
talk Scalecommander Cindrethresh##184269
|tip She runs to this location.
turnin The Dragon at the Door##64871 |goto The Forbidden Reach/0 44.41,61.49
accept The Fire Within##64872 |goto The Forbidden Reach/0 44.41,61.49
step
talk Scalecommander Azurathel##182251
accept Arcane Intrusion##65615 |goto The Forbidden Reach/0 44.08,61.39
step
Cast an Empowered I Fire Breath |q 64872/1 |goto The Forbidden Reach/0 43.74,61.21
|tip Use your {o}Fire Breath{} ability.
|tip You don't have to attack any enemies, just cast the spell while targeting nothing.
|tip Hold the spell button down to charge it up to fill the first spell bar that appears on the screen.
|tip Click the Fire Breath Infuser at this location to remove the cooldown of Fire Breath, so you can try again, if needed.
step
Cast an Empowered II Fire Breath |q 64872/2 |goto The Forbidden Reach/0 43.74,61.21
|tip Use your {o}Fire Breath{} ability.
|tip You don't have to attack any enemies, just cast the spell while targeting nothing.
|tip Hold the spell button down to charge it up to fill the second spell bar that appears on the screen.
|tip Click the Fire Breath Infuser at this location to remove the cooldown of Fire Breath, so you can try again, if needed.
step
Cast an Empowered III Fire Breath |q 64872/3 |goto The Forbidden Reach/0 43.74,61.21
|tip Use your {o}Fire Breath{} ability.
|tip You don't have to attack any enemies, just cast the spell while targeting nothing.
|tip Hold the spell button down to charge it up to fill the third spell bar that appears on the screen.
|tip Click the Fire Breath Infuser at this location to remove the cooldown of Fire Breath, so you can try again, if needed.
step
talk Scalecommander Cindrethresh##184269
turnin The Fire Within##64872 |goto The Forbidden Reach/0 44.40,61.50
step
click Beacon
|tip It looks like a large stone monument shooting a beam of blue light into the air
|tip You can click it from far away.
Investigate the Beacon |q 65615/1 |goto The Forbidden Reach/0 45.43,53.72
step
talk Scalecommander Azurathel##182251
turnin Arcane Intrusion##65615 |goto The Forbidden Reach/0 44.09,61.41
step
Watch the dialogue
talk Scalecommander Emberthal##181054
|tip He flies to this location.
accept Stretch Your Wings##64873 |goto The Forbidden Reach/0 44.54,61.06
step
talk Dervishian##192889
Learn About Coasting |q 64873/1 |goto The Forbidden Reach/0 44.72,57.62
step
_NOTE:_
During the Next Step
|tip Look for a string of large {b}glowing glyph rings{} in the air nearby to the north.
|tip You will use your {o}Soar{} ability to shoot into the air and start gliding with your wings.
|tip Glide through each of the rings.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the {o}Try Again{} ability to retry.
|tip It appears as a button on the screen.
Click Here to Continue |confirm |q 64873
step
Soar Through #5# Rings |q 64873/3 |goto The Forbidden Reach/0 44.82,57.43
|tip Use your {o}Soar{} ability.
|tip Look for a string of large {b}glowing glyph rings{} in the air nearby to the north.
|tip Glide through each of the rings.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the {o}Try Again{} ability to retry.
|tip It appears as a button on the screen.
step
Reach the Old Weyrn Grounds |complete subzone("The Old Weyrn Grounds") |q 64873
|tip You will travel automatically.
step
talk Kodethi##192893
Learn About Diving |q 64873/4 |goto The Forbidden Reach/0 41.42,48.22
step
_NOTE:_
During the Next Step
|tip Look for a string of large {b}glowing glyph rings{} in the air nearby to the west.
|tip The first ring is high in the air and the others are lower in the canyon.
|tip You will use your {o}Soar{} ability to shoot into the air and start gliding with your wings.
|tip Glide through each of the rings, starting with the highest ring, and diving down through the others.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the {o}Try Again{} ability to retry.
|tip It appears as a button on the screen.
Click Here to Continue |confirm |q 64873
step
Dive Through #5# Rings |q 64873/5 |goto The Forbidden Reach/0 41.42,48.22
|tip Use your {o}Soar{} ability.
|tip Look for a string of large {b}glowing glyph rings{} in the air nearby to the west.
|tip The first ring is high in the air and the others are lower in the canyon.
|tip Glide through each of the rings, starting with the highest ring, and diving down through the others.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the {o}Try Again{} ability to retry.
|tip It appears as a button on the screen.
step
Reach the Old Weyrn Grounds |complete subzone("The Old Weyrn Grounds") |q 64873
|tip You will travel automatically.
step
talk Dervishian##192889
Learn About Advanced Flying |q 64873/6 |goto The Forbidden Reach/0 44.73,57.64
step
_NOTE:_
During the Next Step
|tip Look for a string of large {b}glowing glyph rings{} in the air further away to the north.
|tip You will use your {o}Soar{} ability to shoot into the air and start gliding with your wings.
|tip Glide through each of the rings.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the {o}Try Again{} ability to retry.
|tip It appears as a button on the screen.
Click Here to Continue |confirm |q 64873
step
Soar Through #3# Rings |q 64873/7 |goto The Forbidden Reach/0 44.73,57.64
|tip Use your {o}Soar{} ability.
|tip Look for a string of large {b}glowing glyph rings{} in the air further away to the north.
|tip Glide through each of the rings.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the {o}Try Again{} ability to retry.
|tip It appears as a button on the screen.
step
Reach the Old Weyrn Grounds |complete subzone("The Old Weyrn Grounds") |q 64873
|tip You will travel automatically.
step
talk Dervishian##192889
turnin Stretch Your Wings##64873 |goto The Forbidden Reach/0 44.72,57.63
accept Train Like We Fight##65036 |goto The Forbidden Reach/0 44.72,57.63
step
Practice Soar |q 65036/1 |goto The Forbidden Reach/0 44.54,59.37
|tip Use your {o}Soar{} ability.
|tip Don't fly away far.
|tip You'll need to turn in the quest nearby.
step
talk Scalecommander Emberthal##181054
turnin Train Like We Fight##65036 |goto The Forbidden Reach/0 44.24,61.18
accept Caldera of the Menders##65060 |goto The Forbidden Reach/0 44.24,61.18
step
talk Scalecommander Cindrethresh##182317
|tip On a stone platform, overlooking the valley.
Select _"No time to waste."_ |gossip 54978
Meet Cindrethresh at the Caldera of the Menders |q 65060/1 |goto The Forbidden Reach/0 36.45,32.54
step
talk Scalecommander Cindrethresh##184214
|tip Next to the entrance of a building.
turnin Caldera of the Menders##65060 |goto The Forbidden Reach/0 18.80,15.82
accept Into the Hive##65063 |goto The Forbidden Reach/0 18.80,15.82
step
Follow Cindrethresh |q 65063/1 |goto The Forbidden Reach/3 39.29,45.17
|tip Scalecommander Cindrethresh runs into the building.
|tip Inside the building, a {o}toxic gas bar{} will appear on screen and begin filling.
|tip {o}Don't stop{} to fight enemies, just run to this location.
|tip You will pass out and be saved.
step
Return to Scalecommander Viridia |complete subzone("Caldera of the Menders") |q 65063
|tip You will travel automatically.
step
talk Scalecommander Viridia##184163
turnin Into the Hive##65063 |goto The Forbidden Reach/0 20.08,19.07
accept A Toxic Problem##65073 |goto The Forbidden Reach/0 20.08,19.07
step
talk Scalecommander Cindrethresh##184214
accept Easy Prey##65074 |goto The Forbidden Reach/0 20.24,19.01
stickystart "Collect_Toxin_Glands"
stickystart "Slay_Scythids"
step
talk To'no##184166
|tip Next to the entrance of a cave.
accept Halp!##65071 |goto The Forbidden Reach/0 33.48,33.32
step
Enter the cave |goto The Forbidden Reach/0 33.60,34.60 < 15 |walk |only if not (subzone("Lair of the Scythid") and indoors())
talk Little Ko##184165
|tip Next to the back wall, in a pile of dragon bones.
|tip Inside the cave, on the top floor.
Select _"Come with me. I will get you to safety."_ |gossip 51921
Rescue Little Ko |q 65071/1 |goto The Forbidden Reach/0 27.33,36.56
step
label "Collect_Toxin_Glands"
Follow the path and leave the cave |goto The Forbidden Reach/0 33.60,34.59 < 20 |walk |only if subzone("Lair of the Scythid")
Kill Scalerender enemies around this area
|tip They look like flying insects.
|tip You can find them all around this area. |notinsticky
|tip Deatheater Scythids, inside the cave, will also drop the quest items. |only if subzone("Lair of the Scythid")
collect 6 Toxin Gland##187948 |q 65073/1 |goto The Forbidden Reach/0 32.30,28.88
'|kill Scalerender Beetle##182007, Mature Scalerender##194957, Deatheater Scythid##182394
step
label "Slay_Scythids"
Follow the path and leave the cave |goto The Forbidden Reach/0 33.60,34.59 < 20 |walk |only if subzone("Lair of the Scythid")
Kill Scythid enemies around this area
|tip They look like large insects with pincher tails.
Slay #4# Scythids |q 65074/1 |goto The Forbidden Reach/0 32.30,28.88
'|kill Deatheater Scythid##182394, Scythid Steamstalker##182008
step
Follow the path and leave the cave |goto The Forbidden Reach/0 33.60,34.59 < 20 |walk |only if subzone("Lair of the Scythid")
talk Explorer Ko'nali##184212
turnin Halp!##65071 |goto The Forbidden Reach/0 21.69,29.54
step
talk Scalecommander Cindrethresh##184214
turnin Easy Prey##65074 |goto The Forbidden Reach/0 20.23,19.03
step
talk Scalecommander Viridia##184163
turnin A Toxic Problem##65073 |goto The Forbidden Reach/0 20.08,19.09
accept Mercy First##65307 |goto The Forbidden Reach/0 20.08,19.09
step
Heal #10# Injured Dracthyr |q 65307/1 |goto The Forbidden Reach/0 21.61,23.11
|tip Use your {o}Living Flame{} or {o} Emerald Blossom{} abilities on Injured Talons.
|tip Use {o}Living Flame{} on them individually to heal one at a time.
|tip Use {o}Emerald Blossom{} when you are next to multiple of them to heal multiple at once.
click Emerald Blossom Infuser+
|tip They look like small pedestals with a huge blue crystal on top of them.
|tip They will remove the cooldown of your {o}Emerald Blossom{} spell.
You can find more around: |notinsticky
[24.06,22.24]
[25.68,18.39]
'|clicknpc Injured Talon##182349
step
Heal Atrenosh Hailstone |q 65307/3 |goto The Forbidden Reach/0 24.90,13.61
|tip Use your {o}Living Flame{} ability.
|tip Use it on Atrenosh Hailstone.
'|clicknpc Atrenosh Hailstone##188652
step
Heal #4# Injured Drakonids |q 65307/2 |goto The Forbidden Reach/0 24.92,13.09
|tip Use your healing abilities on your allies.
|tip Use {o}Living Flame{} on them individually to heal one at a time.
|tip Use {o}Emerald Blossom{} when you are next to multiple of them to heal multiple at once.
click Emerald Blossom Infuser+
|tip They look like small pedestals with a huge blue crystal on top of them.
|tip They will remove the cooldown of your {o}Emerald Blossom{} spell.
'|clicknpc Injured Drakonid##187904
step
talk Scalecommander Viridia##184163
turnin Mercy First##65307 |goto The Forbidden Reach/0 20.08,19.10
accept Never Forgotten##66324 |goto The Forbidden Reach/0 20.08,19.10
step
_NOTE:_
During the Next Steps
|tip A bar appears on the screen and fills up.
|tip Use the {o}Toxin Antidote{} ability to reduce the bar progress.
|tip It appears as a button on the screen.
Click Here to Continue |confirm |q 66324
step
Enter the building |goto The Forbidden Reach/0 18.57,15.83 < 15 |walk |only if not subzone("The Support Creche")
click Report: Infestation##376530
|tip Inside the building.
Discover Clues |q 66324/2 |goto The Forbidden Reach/3 66.58,67.59
step
clicknpc Katrinasa##191445
|tip Inside the building.
collect Horn Signet of Katrinasa##191732 |q 66324/1 |goto The Forbidden Reach/3 39.31,28.66 |count 1
step
clicknpc Rethenash##191444
|tip Inside the building.
collect Horn Signet of Rethenash##191731 |q 66324/1 |goto The Forbidden Reach/3 34.43,38.90 |count 2
step
click Crystal Key
|tip Inside the building.
Carry the Crystal |havebuff Carrying Crystal##371552 |goto The Forbidden Reach/3 27.52,45.57 |q 66324
step
click Crystal Lock
|tip Inside the building.
Rescue #10# Survivors |q 66324/3 |goto The Forbidden Reach/3 25.58,33.73
step
clicknpc Tenezeth##188146
|tip Inside the building.
collect Horn Signet of Tenezeth##191730 |q 66324/1 |goto The Forbidden Reach/3 18.89,50.84 |count 3
step
Succumb to the Toxicity |complete subzone("Caldera of the Menders") |goto The Forbidden Reach/3 18.89,50.84 |q 66324
|tip Let the bar on the screen fill up.
|tip You will be transported outside to the quest giver.
step
talk Scalecommander Viridia##184163
turnin Never Forgotten##66324 |goto The Forbidden Reach/0 20.08,19.08
accept The Healing Wings##65075 |goto The Forbidden Reach/0 20.08,19.08
step
Ride the Soar Enhancer |invehicle |goto The Forbidden Reach/0 20.42,19.72 |q 65075
|tip You will automatically fly to follow your allies.
step
Watch the dialogue
|tip You will fly automatically.
Reach The Old Weyrn Grounds |outvehicle |goto The Forbidden Reach/0 44.20,58.03 |notravel
step
talk Scalecommander Emberthal##181054
|tip Near the entrance of a building.
turnin The Healing Wings##65075 |goto The Forbidden Reach/0 44.25,61.16
accept Stormsunder Crater##65045 |goto The Forbidden Reach/0 44.25,61.16
step
talk Treysh##198429
accept Cavalry Has Its Place##72263 |goto The Forbidden Reach/0 45.29,61.35 |instant
step
talk Scalecommander Azurathel##182274
turnin Stormsunder Crater##65045 |goto The Forbidden Reach/0 70.44,64.34
accept Tangle with the Tarasek##65049 |goto The Forbidden Reach/0 70.44,64.34
accept Conjured Army##65050 |goto The Forbidden Reach/0 70.44,64.34
step
talk Dervishian##186210
accept The Primalists##65046 |goto The Forbidden Reach/0 70.36,64.59
stickystart "Slay_Taraseks"
stickystart "Slay_Conjured_Elementals"
step
click Primal Path
|tip It looks like a floating runestone.
Discover the Primalist Intentions |q 65046/1 |goto The Forbidden Reach/0 71.89,60.16
step
click Gift of the Incarnates
|tip It looks like a floating runestone.
Discover the Primalist Leaders |q 65046/3 |goto The Forbidden Reach/0 71.94,54.52
step
click Lie of the Aspects
|tip It looks like a floating runestone.
Discover the Primalist Motivations |q 65046/2 |goto The Forbidden Reach/0 78.26,66.47
step
label "Slay_Taraseks"
Kill Tarasek enemies around this area
|tip They look like muscular lizard people.
Slay #7# Tarasek |q 65049/1 |goto The Forbidden Reach/0 76.06,63.33
'|kill Infused Tarasek##181310, Tarasek Shockshaman##191224
step
label "Slay_Conjured_Elementals"
kill Conjured Stormling##181840+
|tip They look like small white elementals.
Slay #12# Conjured Elementals |q 65050/1 |goto The Forbidden Reach/0 76.06,63.33
step
talk Dervishian##186218
|tip Up on the ledge, overlooking the valley.
turnin The Primalists##65046 |goto The Forbidden Reach/0 79.41,62.04
step
talk Scalecommander Azurathel##182275
|tip Up on the ledge, overlooking the valley.
turnin Tangle with the Tarasek##65049 |goto The Forbidden Reach/0 79.55,62.29
turnin Conjured Army##65050 |goto The Forbidden Reach/0 79.55,62.29
accept The Ebon Scales##65052 |goto The Forbidden Reach/0 79.55,62.29
step
Signal the Attack on Ekrazathal |q 65052/1 |goto The Forbidden Reach/0 81.52,55.70
|tip Run to Ekrazathal, the huge dragon breathing fire on the building.
|tip Don't stop to fight enemies.
|tip Use the {o}Mass Disintegration{} ability.
|tip It appears as a button on the screen.
|tip You don't have to fight the dragon.
'|kill Ekrazathal##190974
step
talk Scalecommander Sarkareth##182297
turnin The Ebon Scales##65052 |goto The Forbidden Reach/0 81.23,53.96
accept Rally to Emberthal##65057 |goto The Forbidden Reach/0 81.23,53.96
step
Ride the Soar Enhancer |invehicle |goto The Forbidden Reach/0 80.62,53.53 |q 65057
|tip You will automatically fly to follow your allies.
step
Watch the dialogue
|tip You will fly automatically.
Reach The Old Weyrn Grounds |outvehicle |goto The Forbidden Reach/0 47.09,58.81 |notravel
step
talk Scalecommander Emberthal##181054
turnin Rally to Emberthal##65057 |goto The Forbidden Reach/0 44.23,61.16
step
talk Scalecommander Emberthal##182258
accept Preservation, Augmentation, or Devastation##65701 |goto The Forbidden Reach/0 44.83,57.71
step
Activate a Talent Spec |q 65701/1
step
talk Scalecommander Emberthal##182258
turnin Preservation, Augmentation, or Devastation##65701 |goto The Forbidden Reach/0 44.83,57.71
accept The Froststone Vault##65084 |goto The Forbidden Reach/0 44.83,57.71
step
talk Scalecommander Sarkareth##184308
|tip At the top of the stairs.
turnin The Froststone Vault##65084 |goto The Forbidden Reach/0 56.73,28.16
accept The Prize Inside##65087 |goto The Forbidden Reach/0 56.73,28.16
step
Kill enemies around this area
|tip Use your healing abilities on your allies with red tear drops above them.
|tip Use {o}Living Flame{} on them individually to heal one at a time.
|tip Use {o}Emerald Blossom{} when you are next to multiple of them to heal multiple at once.
|tip You can heal them repeatedly, until the red tear drop disappears.
Defend Froststone Vault |q 65087/1 |goto The Forbidden Reach/0 54.73,31.27
'|kill Trueborn Rainmaker##184404, Tarasek Shockbringer##181377
'|clicknpc Azuresworn Drakonid##184420, Atrenosh Hailstone##190480, Tactical Mender##190529, Mage Talon##183794
step
talk Scalecommander Sarkareth##184308
|tip He runs to this location on the stairs.
turnin The Prize Inside##65087 |goto The Forbidden Reach/0 56.33,28.75
step
_NOTE:_
During the Next Step
|tip Run down the stairs immediately after accepting the quest.
|tip A giant wind elemental will start chasing you down the stairs.
|tip Glide down the stairs quickly, to retreat to safety.
Click Here to Continue |confirm |q 65097 |future
step
talk Scalecommander Emberthal##182441
accept Run!##65097 |goto The Forbidden Reach/0 54.10,32.34
step
Outrun the Avatar of the Storm |q 65097/1 |goto The Forbidden Reach/0 47.05,35.48
step
Find Wrathion |q 65097/2 |goto The Forbidden Reach/0 47.05,35.48
step
Heal Wrathion |q 65097/3 |goto The Forbidden Reach/0 47.05,35.48
|tip Use your {o}Living Flame{} ability.
|tip Use it on Wrathion.
'|clicknpc Wrathion##182601
step
talk Wrathion##182601
turnin Run!##65097 |goto The Forbidden Reach/0 47.05,35.48
accept The Consequence of Courage##65098 |goto The Forbidden Reach/0 47.05,35.48
step
Find Ebyssian |q 65098/1 |goto The Forbidden Reach/0 47.85,40.10
|tip He will get snatched up and carried off.
step
Heal Ebyssian |q 65098/2 |goto The Forbidden Reach/0 43.22,38.17
|tip Use your {o}Living Flame{} ability.
|tip Use it repeatedly on Ebyssian.
|tip He looks like a large dragon buried under rubble in a crumbled building.
|tip Avoid the white swirls along the path as you travel here.
|tip They spawn enemies if you get close to them.
'|clicknpc Ebyssian##192697
step
talk Scalecommander Emberthal##191780
turnin The Consequence of Courage##65098 |goto The Forbidden Reach/0 41.68,44.55
accept Final Orders##65100 |goto The Forbidden Reach/0 41.68,44.55
step
Reach the Old Weyrn Grounds |q 65100/1 |goto The Forbidden Reach/0 41.90,54.35
|tip At the top of the stairs.
step
Speak with Nozdormu |q 65100/2 |goto The Forbidden Reach/0 43.70,59.81
|tip He looks like a huge yellow dragon.
|tip Run up the stairs and run near him.
step
talk Scalecommander Viridia##182610
Select  _"<Salute Scalecommander Viridia.>"_ |gossip 51849
Speak to Viridia |q 65100/4 |goto The Forbidden Reach/0 43.46,54.12
|only if Alliance
step
talk Scalecommander Sarkareth##182611
Select  _"<Relay what Nozdormu told you.>"_ |gossip 51850
Speak to Sarkareth |q 65100/3 |goto The Forbidden Reach/0 47.06,55.89
|only if Alliance
step
talk Scalecommander Azurathel##182609
turnin Final Orders##65100 |goto The Forbidden Reach/0 46.95,55.80
|only if Alliance
step
Reach the Gates of Stormwind City |complete subzone("Stormwind Gate") |q 65286 |future
|tip You will travel automatically.
|only if Alliance
step
talk Wrathion##189322
accept Draconic Connections##65286 |goto Elwynn Forest/0 32.26,49.67
|only if Alliance
step
talk Scalecommander Azurathel##189324
turnin Draconic Connections##65286 |goto Elwynn Forest/0 32.26,49.85
accept Ground Leave##66513 |goto Elwynn Forest/0 32.26,49.85
|only if Alliance
step
Visit the Bank |q 66513/2 |goto Stormwind City/0 62.58,77.50
|tip Inside the building.
|only if Alliance
step
Visit the Auction House |q 66513/1 |goto Stormwind City/0 61.55,72.04
|tip Inside the building.
|only if Alliance
step
Run up the spiral ramp and enter the building |goto Stormwind City/0 50.11,87.49 < 15 |only if walking
Visit the Portal Room |q 66513/4 |goto Stormwind City/0 48.75,88.07
|tip Walk into the portal.
|tip Inside the building, on the top floor.
|only if Alliance
step
Visit the Embassy |q 66513/3 |goto Stormwind City/0 52.61,14.28
|tip Inside the building.
|only if Alliance
step
talk Scalecommander Azurathel##189603
|tip Standing in an open window on the outer wall of Stormwind Keep.
|tip You can fly directly to him.
turnin Ground Leave##66513 |goto Stormwind City/0 79.95,26.97
|only if Alliance
step
talk Wrathion##189569
|tip Inside the building.
accept Aspectral Invitation##66577 |goto Stormwind City/0 79.80,27.02
|only if Alliance
step
talk Wrathion##189569
|tip Inside the building.
Select  _"<Listen to Wrathion and Turalyon.>"_ |gossip 55659
Speak with Wrathion |q 66577/1 |goto Stormwind City/0 79.80,27.02
|only if Alliance
step
talk Wrathion##189569
|tip Inside the building.
turnin Aspectral Invitation##66577 |goto Stormwind City/0 79.80,27.02
accept An Iconic, Draconic, Look##65101 |goto Stormwind City/0 79.80,27.02
|only if Alliance
step
talk Wrathion##189569
|tip Inside the building.
Select  _"<Ask about choosing a visage.>"_ |gossip 55882
Speak to Wrathion |q 65101/1 |goto Stormwind City/0 79.80,27.02
|only if Alliance
step
Watch the dialogue
|tip Follow Wrathion as he walks.
|tip He eventually walks to this location inside the building.
Learn About Visage Form	|q 65101/2 |goto Stormwind City/0 82.53,23.94
|only if Alliance
step
Assume Your Mortal Visage |q 65101/3 |goto Stormwind City/0 82.53,23.94
|tip Use the {o}Visage Form{} ability.
|tip It appears as a button on the screen.
|tip Inside the building.
|only if Alliance
step
talk Wrathion##194022
|tip Inside the building.
turnin An Iconic, Draconic, Look##65101 |goto Stormwind City/0 82.53,23.94
|only if Alliance
step
talk Dungar Longdrink##352
|tip Inside the building.
fpath Stormwind |goto Stormwind City/0 70.94,72.47
|only if Alliance
step
Watch the dialogue
talk Scalecommander Sarkareth##182611
|tip He runs to this location.
Select  _"<Relay what Nozdormu told you.>"_ |gossip 51850
Speak to Sarkareth |q 65100/3 |goto The Forbidden Reach/0 47.06,55.89
|only if Horde
step
talk Scalecommander Viridia##182610
Select  _"<Salute Scalecommander Viridia.>"_ |gossip 51849
Speak to Viridia |q 65100/4 |goto The Forbidden Reach/0 43.46,54.12
|only if Horde
step
talk Scalecommander Cindrethresh##182612
turnin Final Orders##65100 |goto The Forbidden Reach/0 43.57,54.30
|only if Horde
step
Reach the Gates of Orgrimmar |complete subzone("The Dranosh'ar Blockade") |q 65286 |future
|tip You will travel automatically.
|only if Horde
step
talk Spiritwalker Ebonhorn##189386
accept Spiritual Allies##66237 |goto Durotar/0 45.61,12.89
|only if Horde
step
talk Scalecommander Cindrethresh##189389
turnin Spiritual Allies##66237 |goto Durotar/0 45.56,12.94
accept Ground Leave##66534 |goto Durotar/0 45.56,12.94
|only if Horde
step
Visit the Portal Room |q 66534/4 |goto Orgrimmar/1 56.00,90.01
|tip Inside the building.
|only if Horde
step
Visit the Auction House |q 66534/1 |goto Orgrimmar/1 53.54,73.85
|tip Inside the building.
|only if Horde
step
Visit the Bank |q 66534/2 |goto Orgrimmar/1 49.03,82.68
|tip Inside the building.
|only if Horde
step
Visit the Embassy |q 66534/3 |goto Orgrimmar/1 38.35,80.42
|tip Inside the building.
|only if Horde
step
talk Scalecommander Cindrethresh##184786
|tip On the platform above the city.
turnin Ground Leave##66534 |goto Orgrimmar/1 44.01,38.25
|only if Horde
step
talk Ebyssian##190239
|tip On the platform above the city.
accept Aspectral Invitation##65437 |goto Orgrimmar/1 44.07,37.98
|only if Horde
step
talk Ebyssian##190239
|tip On the platform above the city.
Select  _"<Listen to Ebonhorn.>"_ |gossip 55582
Speak with Ebyssian |q 65437/1 |goto Orgrimmar/1 44.07,37.98
|only if Horde
step
talk Ebyssian##190239
|tip On the platform above the city.
turnin Aspectral Invitation##65437 |goto Orgrimmar/1 44.07,37.98
accept An Iconic, Draconic, Look##65613 |goto Orgrimmar/1 44.07,37.98
|only if Horde
step
talk Ebyssian##190239
|tip On the platform above the city.
Select  _"<Ask about choosing a visage.>"_ |gossip 55863
Ask Ebyssian About Visage Form |q 65613/1 |goto Orgrimmar/1 44.07,37.98
|only if Horde
step
Watch the dialogue
|tip On the platform above the city.
Learn About Visage Form	|q 65613/2 |goto Orgrimmar/1 44.07,37.98
|only if Horde
step
Adopt a Visage Form |q 65613/3 |goto Orgrimmar/1 44.07,37.98
|tip Use the {o}Visage Form{} ability.
|tip It appears as a button on the screen.
|tip On the platform above the city.
|only if Horde
step
talk Ebyssian##190239
|tip On the platform above the city.
turnin An Iconic, Draconic, Look##65613 |goto Orgrimmar/1 44.07,37.98
|only if Horde
step
talk Naleidea Rivergleam##184793
|tip On the platform above the city.
accept Expeditionary Coordination##65443 |goto Orgrimmar/1 44.20,37.80
|only if Horde
step
talk Scalecommander Cindrethresh##184786
|tip On the platform above the city.
accept The Dark Talons##72256 |goto Orgrimmar/1 44.02,38.25
|only if Horde
step
talk Doras##3310
|tip On the platform above the city.
fpath Orgrimmar |goto Orgrimmar/1 49.65,59.21
|only if Horde
step
talk Kodethi##198442
Select _"Scalecommander Cindrethresh would like you to meet her at the zeppelin tower."_ |gossip 107450
Deliver the Orders to Kodethi |q 72256/1 |goto Durotar/0 54.13,9.86
|only if Horde
step
talk Pathfinder Tacha##184796
Select _"We need explorers for an expedition to the Dragon Isles. Will you join us?"_ |gossip 53882
Recruit the Explorers |q 65443/2 |goto Durotar/0 54.01,13.04
|only if Horde
step
talk Boss Magor##184787
Select _"We need artisans for an expedition to the Dragon Isles. Will you join us?"_ |gossip 53883
Recruit the Artisans |q 65443/1 |goto Durotar/0 55.17,11.63
|only if Horde
step
talk Cataloger Coralie##184795
Select _"We need scholars for an expedition to the Dragon Isles. Will you join us?"_ |gossip 54035
Recruit the Scholars |q 65443/3 |goto Durotar/0 55.97,13.22
|only if Horde
step
talk Naleidea Rivergleam##197279
|tip On top of the tower.
turnin Expeditionary Coordination##65443 |goto Durotar/0 55.81,12.66
turnin The Dark Talons##72256 |goto Durotar/0 55.81,12.66
|only if Horde
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)",{
author="support@zygorguides.com",
},[[
step
All Scouting Map Quests Complete Detected	|next "All_Scouting_Map_Quests_Complete"
|only if achieved(16363) and completedq(65691) and completedallq(72266,72267,72268,72269)
step
accept The Dragon Isles Await##65436
|tip You will accept this quest automatically.
|only if Alliance and not (haveq(66589) or completedq(66589))
step
use the Lost Dragonscale##205456
Use the Lost Dragonscale to Teleport to Near Wrathion's Location |q 65436/1
|only if Alliance and not (haveq(66589) or completedq(66589))
step
talk Wrathion##189569
|tip Inside the building.
Meet Wrathion in Stormwind |q 65436/2 |goto Stormwind City/0 79.80,27.01
|only if Alliance and not (haveq(66589) or completedq(66589))
step
talk Wrathion##189569
|tip Inside the building.
turnin The Dragon Isles Await##65436 |goto Stormwind City/0 79.80,27.01
accept Aspectral Invitation##66577 |goto Stormwind City/0 79.80,27.01
|only if Alliance and not (haveq(66589) or completedq(66589))
step
talk Wrathion##189569
|tip Inside the building.
Select  _"<Listen to Wrathion and Turalyon.>"_ |gossip 55659
Speak with Wrathion |q 66577/1 |goto Stormwind City/0 79.80,27.01
|only if Alliance and not (haveq(66589) or completedq(66589))
step
talk Wrathion##189569
|tip Inside the building.
turnin Aspectral Invitation##66577 |goto Stormwind City/0 79.80,27.01
|only if Alliance and not (haveq(66589) or completedq(66589))
step
talk Scalecommander Azurathel##189603
|tip Inside the building.
accept The Obsidian Warders##72240 |goto Stormwind City/0 79.94,26.95
|only if Alliance
step
talk Toddy Whiskers##189602
|tip Inside the building.
accept Expeditionary Coordination##66589 |goto Stormwind City/0 79.72,27.33
|only if Alliance
step
talk Dungar Longdrink##352
|tip Inside the building.
fpath Stormwind |goto Stormwind City/0 70.94,72.47
|only if Alliance
step
talk Pathfinder Jeb##189763
Select _"We need explorers for an expedition to the Dragon Isles. Will you join us?"_ |gossip 55649
Recruit the Explorers |q 66589/2 |goto Stormwind City/0 38.24,45.31
|only if Alliance
step
talk Dervishian##198401
Select _"Scalecommander Azurathel would like you to meet him at the docks."_ |gossip 107417
Deliver the Orders to Dervishian |q 72240/1 |goto Stormwind City/0 39.25,41.40
|only if Alliance
step
talk Thaelin Darkanvil##189767
Select _"We need artisans for an expedition to the Dragon Isles. Will you join us?"_ |gossip 55651
Recruit the Artisans |q 66589/1 |goto Stormwind City/0 38.10,35.09
|only if Alliance
step
talk Cataloger Wulferd##189765
Select _"We need scholars for an expedition to the Dragon Isles. Will you join us?"_ |gossip 55650
Recruit the Scholars |q 66589/3 |goto Stormwind City/0 32.89,34.61
|only if Alliance
step
talk Toddy Whiskers##189077
turnin Expeditionary Coordination##66589 |goto Stormwind City/0 22.71,55.66
turnin The Obsidian Warders##72240 |goto Stormwind City/0 22.71,55.66
|only if Alliance
step
Watch the dialogue
talk Archmage Khadgar##193450
|tip He appears out of a portal.
accept Whispers on the Winds##66596 |goto Stormwind City/0 23.01,56.14
|only if Alliance
step
talk Archmage Khadgar##193450
Select  _"<Ask Khadgar what happened.>"_ |gossip 55739
Speak with Archmage Khadgar |q 66596/1 |goto Stormwind City/0 23.01,56.14
|only if Alliance
step
talk Wrathion##189569
turnin Whispers on the Winds##66596 |goto Stormwind City/0 22.94,55.99
|only if Alliance
step
talk Toddy Whiskers##189077
accept To the Dragon Isles!##67700 |goto Stormwind City/0 22.72,55.67
|only if Alliance
step
Wait for the Rugged Dragonscale at Stormwind Docks |q 67700/1 |goto Stormwind City/0 21.83,56.53
|tip Wait for the boat to arrive, then board the boat.
|only if Alliance
step
Travel to the Dragon Isles |complete zone("The Waking Shores") |q 67700
|tip Wait for the boat to sail to the Dragon Isles.
|only if Alliance
step
Ride the Rugged Dragonscale to Dragon Isles |q 67700/2 |goto The Waking Shores/0 82.13,31.88
|tip Walk into the camp.
|only if Alliance
step
Watch the dialogue
talk Toddy Whiskers##189022
|tip She runs to this location.
turnin To the Dragon Isles!##67700 |goto The Waking Shores/0 82.13,31.88
accept Explorers in Peril##70122 |goto The Waking Shores/0 82.13,31.88
|only if Alliance
step
talk Scalecommander Azurathel##189035
accept Primal Pests##70123 |goto The Waking Shores/0 82.16,31.85
|only if Alliance
step
talk Thaelin Darkanvil##189021
accept Practice Materials##70124 |goto The Waking Shores/0 82.09,31.88
|only if Alliance
stickystart "Kill_Primal_Proto_Drakes"
stickystart "Collect_Primal_Proto_Whelp_Scales"
step
click Protodragon Rib Cage
Rescue Professor Cogcatcher |q 70122/1 |goto The Waking Shores/0 83.55,33.60
|only if Alliance
step
clicknpc Archivist Rellid##189055
|tip He looks like a {o}Draenei{} being {o}flown around{} by 2 smaller dragons.
Rescue Archivist Rellid |q 70122/2 |goto The Waking Shores/0 82.93,36.04
|only if Alliance
step
clicknpc Spelunker Lockeye##189052
Rescue Spelunker Lockeye |q 70122/3 |goto The Waking Shores/0 79.50,35.35
|only if Alliance
step
label "Kill_Primal_Proto_Drakes"
kill 10 Primal Proto-Drake##193806 |q 70123/1 |goto The Waking Shores/0 81.66,34.60
|tip They look like {o}large dragons{} on the ground and flying in the air.
|only if Alliance
step
label "Collect_Primal_Proto_Whelp_Scales"
kill Primal Proto-Whelp##193876+
|tip They look like {o}tiny dragons{} on the ground and flying in the air.
collect 15 Primal Proto-Whelp Scale##198398 |q 70124/1 |goto The Waking Shores/0 81.66,34.60
|only if Alliance
step
talk Toddy Whiskers##187251
turnin Explorers in Peril##70122 |goto The Waking Shores/0 76.63,33.63
accept Where is Wrathion?##70125 |goto The Waking Shores/0 76.63,33.63
|only if Alliance
step
talk Sendrax##193362
Select _"Why aren't the dragons here to meet us?"_ |gossip 55636
Watch the dialogue
Inquire After the Missing Dragons |q 70125/1 |goto The Waking Shores/0 76.58,33.67
|only if Alliance
step
talk Sendrax##193362
turnin Where is Wrathion?##70125 |goto The Waking Shores/0 76.58,33.67
|tip You will {o}only{} be able to accept {o}one of these quests{}.
accept Adventuring in the Dragon Isles##72293 |goto The Waking Shores/0 76.58,33.67 |or
accept Excuse the Mess##69911 |goto The Waking Shores/0 76.58,33.67 |or
|only if Alliance
step
talk Cataloger Jakes##198846
turnin Dragon Isles Supplies##72708 |goto The Waking Shores/0 76.54,34.24
accept Funding a Treasure Hunt##72709 |goto The Waking Shores/0 76.54,34.24
|only if Alliance and (haveq(72708) or completedq(72708))
step
talk Cataloger Jakes##198846
buy Archeologist Artifact Notes##198854 |n
Buy Archeologist Artifact Notes from Cataloger Jakes |q 72709/1 |goto The Waking Shores/0 76.54,34.24
|only if Alliance and (haveq(72709) or completedq(72709))
step
use the Archeologist Artifact Notes##198854
Read the Archeology Artifact Notes |q 72709/2 |goto The Waking Shores/0 76.54,34.24
|only if Alliance and (haveq(72709) or completedq(72709))
step
talk Cataloger Jakes##198846
turnin Funding a Treasure Hunt##72709 |goto The Waking Shores/0 76.54,34.24
|only if Alliance and (haveq(72709) or completedq(72709))
step
talk Thaelin Darkanvil##189058
turnin Practice Materials##70124 |goto The Waking Shores/0 76.48,34.37
|only if Alliance
step
talk Scalecommander Azurathel##187252
turnin Primal Pests##70123 |goto The Waking Shores/0 76.75,34.41
|only if Alliance
step
talk Captain Garrick##184449
accept Give Peace a Chance##67053 |goto The Waking Shores/0 76.73,34.56
|only if Alliance
step
talk Tixxa Mixxa##192490
fpath Wingrest Embassy |goto The Waking Shores/0 76.03,35.05
|only if Alliance
step
talk Aster Cloudgaze##187257
accept From Such Great Heights##66101 |goto The Waking Shores/0 75.84,33.49
|only if Alliance
step
click Surveyor's Disc
Hop on the Surveyor's Disc |q 66101/1 |goto The Waking Shores/0 75.90,33.57
|only if Alliance
step
Watch the dialogue
|tip Use the {o}Search for Power{} ability on your action bar.
Search for Power |q 66101/2
|only if Alliance
step
Watch the dialogue
|tip Use the {o}Search for Allies{} ability on your action bar.
Search for Allies |q 66101/3
|only if Alliance
step
Watch the dialogue
|tip Use the {o}Search for Danger{} ability on your action bar.
Search for Danger |q 66101/4
|only if Alliance
step
talk Aster Cloudgaze##187257
turnin From Such Great Heights##66101 |goto The Waking Shores/0 75.84,33.49
|only if Alliance
step
talk Warlord Breka Grimaxe##184452
turnin Give Peace a Chance##67053 |goto The Waking Shores/0 76.36,33.08
|only if Alliance
step
click Scouting Map
|tip It looks like a large brown paper map on the table.
|tip You are {o}choosing the zone{} you wish to {o}do quests in{}.
|tip Pick whichever you like, {o}it doesn't matter{}.
accept The Waking Shores##72266 |goto The Waking Shores/0 76.52,34.23	|or |only if not completedq(72266)
accept Ohn'ahran Plains##72267 |goto The Waking Shores/0 76.52,34.23	|or |only if not completedq(72267)
accept Azure Span##72268 |goto The Waking Shores/0 76.52,34.23		|or |only if not completedq(72268)
accept Thaldraszus##72269 |goto The Waking Shores/0 76.52,34.23		|or |only if not completedq(72269)
Choose a Zone from the Scouting Map |q 72293/1 |goto The Waking Shores/0 76.52,34.23 |only if haveq(72293)
|only if Alliance and (haveq(72293) or completedq(72293))
step
_Click the Quest Complete Box:_
|tip In the quest tracker area.
turnin Adventuring in the Dragon Isles##72293
|only if Alliance and (haveq(72293) or completedq(72293))
step
_Which Zone Did You Choose?_
|tip Click the line below for the zone you want to complete quests in.
The Waking Shores	|confirm	|next "Waking_Shores_Alliance"
Ohn'ahran Plains	|confirm	|next "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Ohn'ahran Plains (Full Zone)"
The Azure Span		|confirm	|next "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\The Azure Span (Full Zone)"
Thaldraszus		|confirm	|next "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Thaldraszus (Full Zone)"
|only if Alliance and (haveq(72293) or completedq(72293))
step
label "Waking_Shores_Alliance"
talk Sendrax##193362
turnin The Waking Shores##72266 |goto The Waking Shores/0 76.58,33.67 |only if haveq(72266) or completedq(72266)
accept Excuse the Mess##69911 |goto The Waking Shores/0 76.58,33.67
|only if Alliance
step
talk Warlord Breka Grimaxe##184452
accept Encroaching Elementals##70135 |goto The Waking Shores/0 76.36,33.08
|only if Alliance
step
talk Haephesta##192438
accept Quality Assurance##69965 |goto The Waking Shores/0 76.41,34.45
|only if Alliance
step
talk Grun Ashbeard##187261
accept Always Be Crafting##66112 |goto The Waking Shores/0 76.35,34.64
|only if Alliance
step
talk Ambassador Fastrasz##193393
|tip Inside the building.
Select _"I'm a new arrival with the Dragonscale Expedition."_ |gossip 55674
Speak with Ambassador Fastrasz |q 69911/1 |goto The Waking Shores/0 76.33,35.62
|only if Alliance
step
talk Ambassador Fastrasz##193393
|tip Inside the building.
home Wingrest Embassy |goto The Waking Shores/0 76.33,35.62 |q 69911 |future
|only if Alliance
step
click Embassy Visitor Log
|tip Inside the building.
Select _"<Begin filling out the form.>"_ |gossip 55746
Select _"Stonehead"_ |gossip 64055
Select _"<Write today's date.>"_ |gossip 55767
Select _"To aid the Dragonflights"_ |gossip 55768
Sign the Embassy Visitor Log |q 69911/2 |goto The Waking Shores/0 76.28,35.61
|only if Alliance
step
click Alexstrasza's Welcome
Read the Welcome Message |q 69911/3 |goto The Waking Shores/0 75.61,34.14
|only if Alliance
step
accept The Dragon Isles Await##65435
|tip You will accept this quest automatically.
|only if Horde and not (haveq(65443) or completedq(65443))
step
use the Lost Dragonscale##205458
Use the Lost Dragonscale to Teleport to Near Ebyssian's Location |q 65435/1
|only if Horde and not (haveq(65443) or completedq(65443))
step
talk Ebyssian##190239
Meet Ebyssian in Orgrimmar. |q 65435/2 |goto Orgrimmar/1 44.07,37.96
|only if Horde and not (haveq(65443) or completedq(65443))
step
talk Ebyssian##190239
|tip On the platform above the city.
turnin The Dragon Isles Await##65435 |goto Orgrimmar/1 44.07,37.96
accept Aspectral Invitation##65437 |goto Orgrimmar/1 44.07,37.96
|only if Horde and not (haveq(65443) or completedq(65443))
step
talk Ebyssian##190239
|tip On the platform above the city.
Select  _"<Listen to Ebonhorn.>"_ |gossip 55582
Speak with Ebyssian |q 65437/1 |goto Orgrimmar/1 44.07,37.96
|only if Horde and not (haveq(65443) or completedq(65443))
step
talk Ebyssian##190239
|tip On the platform above the city.
turnin Aspectral Invitation##65437 |goto Orgrimmar/1 44.07,37.96
|only if Horde and not (haveq(65443) or completedq(65443))
step
talk Scalecommander Cindrethresh##184786
|tip On the platform above the city.
accept The Dark Talons##72256 |goto Orgrimmar/1 44.02,38.25
|only if Horde
step
talk Naleidea Rivergleam##184793
|tip On the platform above the city.
accept Expeditionary Coordination##65443 |goto Orgrimmar/1 44.18,37.78
|only if Horde
step
talk Kodethi##198442
Select _"Scalecommander Cindrethresh would like you to meet her at the zeppelin tower."_ |gossip 107450
Deliver the Orders to Kodethi |q 72256/1 |goto Durotar/0 54.13,9.86
|only if Horde
step
talk Pathfinder Tacha##184796
Select _"We need explorers for an expedition to the Dragon Isles. Will you join us?"_ |gossip 53882
Recruit the Explorers |q 65443/2 |goto Durotar/0 54.01,13.04
|only if Horde
step
talk Boss Magor##184787
Select _"We need artisans for an expedition to the Dragon Isles. Will you join us?"_ |gossip 53883
Recruit the Artisans |q 65443/1 |goto Durotar/0 55.17,11.63
|only if Horde
step
talk Cataloger Coralie##184795
Select _"We need scholars for an expedition to the Dragon Isles. Will you join us?"_ |gossip 54035
Recruit the Scholars |q 65443/3 |goto Durotar/0 55.97,13.22
|only if Horde
step
talk Naleidea Rivergleam##197279
|tip On top of the tower.
turnin Expeditionary Coordination##65443 |goto Durotar/0 55.81,12.66
turnin The Dark Talons##72256 |goto Durotar/0 55.81,12.66
|only if Horde
step
Watch the dialogue
talk Archmage Khadgar##193450
|tip On top of the tower.
|tip He appears out of a portal.
accept Whispers on the Winds##65439 |goto Durotar/0 55.92,12.60
|only if Horde
step
talk Archmage Khadgar##193450
|tip On top of the tower.
Select  _"<Ask Khadgar what happened.>"_ |gossip 55626
Speak with Archmage Khadgar |q 65439/1 |goto Durotar/0 55.92,12.60
|only if Horde
step
talk Ebyssian##190239
|tip On top of the tower.
turnin Whispers on the Winds##65439 |goto Durotar/0 55.84,12.75
|only if Horde
step
talk Naleidea Rivergleam##197279
|tip On top of the tower.
accept To the Dragon Isles!##65444 |goto Durotar/0 55.81,12.66
|only if Horde
step
Wait for the Defiant Dragonscale at the Zeppelin Tower |q 65444/1 |goto Durotar/0 56.02,13.50
|tip Wait for the zeppelin to arrive, then board the zeppelin.
|only if Horde
step
Travel to the Dragon Isles |complete zone("The Waking Shores") |q 65444
|tip Wait for the zeppelin to fly to the Dragon Isles.
|only if Horde
step
Ride the Defiant Dragonscale to Dragon Isles |q 65444/2 |goto The Waking Shores/0 80.62,27.61
|tip Walk into the camp.
|only if Horde
step
Watch the dialogue
talk Naleidea Rivergleam##184841
|tip She runs to this location.
turnin To the Dragon Isles!##65444 |goto The Waking Shores/0 80.62,27.61
accept Explorers in Peril##65452 |goto The Waking Shores/0 80.62,27.61
|only if Horde
step
talk Scalecommander Cindrethresh##184859
accept Primal Pests##65453 |goto The Waking Shores/0 80.65,27.59
|only if Horde
step
talk Boss Magor##184844
accept Practice Materials##65451 |goto The Waking Shores/0 80.60,27.65
|only if Horde
stickystart "Kill_Primal_Proto_Drakes_Horde"
stickystart "Collect_Primal_Proto_Whelp_Scales_Horde"
step
click Protodragon Rib Cage
Rescue Pathfinder Poppy |q 65452/1 |goto The Waking Shores/0 80.37,26.34
|only if Horde
step
clicknpc Archivist Spearblossom##187157
|tip He looks like a Tauren being flown around this area by 2 smaller dragons.
Rescue Archivist Spearblossom |q 65452/2 |goto The Waking Shores/0 78.79,24.47
|only if Horde
step
clicknpc Spelunker Lazee##187151
|tip He looks like a Goblin hanging from a chain over the lava.
Rescue Spelunker Lazee |q 65452/3 |goto The Waking Shores/0 77.33,29.81
|only if Horde
step
label "Kill_Primal_Proto_Drakes_Horde"
kill 10 Primal Proto-Drake##193806 |q 65453/1 |goto The Waking Shores/0 79.41,26.55
|tip They look like large dragons on the ground and flying in the air.
|tip You can find them all around the Wild Coast area. |notinsticky
|only if Horde
step
label "Collect_Primal_Proto_Whelp_Scales_Horde"
kill Primal Proto-Whelp##193876+
|tip They look like tiny dragons flying in the air.
|tip You can find them all around the Wild Coast area. |notinsticky
collect 20 Primal Proto-Whelp Scale##198398 |q 65451/1 |goto The Waking Shores/0 79.41,26.55
|only if Horde
step
talk Naleidea Rivergleam##184870
turnin Explorers in Peril##65452 |goto The Waking Shores/0 76.61,33.60
accept Where is Wrathion?##69910 |goto The Waking Shores/0 76.61,33.60
|only if Horde
step
talk Sendrax##193362
Select _"Why aren't the dragons here to meet us?"_ |gossip 55636
Watch the dialogue
Inquire After the Missing Dragons |q 69910/1 |goto The Waking Shores/0 76.58,33.67
|only if Horde
step
talk Sendrax##193362
turnin Where is Wrathion?##70125 |goto The Waking Shores/0 76.58,33.67
|tip You will only be able to accept one of these quests.
accept Adventuring in the Dragon Isles##72293 |goto The Waking Shores/0 76.58,33.67 |or
accept Excuse the Mess##69911 |goto The Waking Shores/0 76.58,33.67 |or
|only if Horde
step
talk Warlord Breka Grimaxe##184452
accept Give Peace a Chance##66110 |goto The Waking Shores/0 76.36,33.08
|only if Horde
step
talk Scalecommander Cindrethresh##187235
turnin Primal Pests##65453 |goto The Waking Shores/0 76.28,33.02
|only if Horde
step
talk Boss Magor##187236
turnin Practice Materials##65451 |goto The Waking Shores/0 75.94,33.24
|only if Horde
step
talk Aster Cloudgaze##187257
accept From Such Great Heights##66101 |goto The Waking Shores/0 75.84,33.49
|only if Horde
step
click Surveyor's Disc
Hop on the Surveyor's Disc |q 66101/1 |goto The Waking Shores/0 75.90,33.57
|only if Horde
step
Watch the dialogue
|tip Use the {o}Search for Power{} ability on your action bar.
Search for Power |q 66101/2
|only if Horde
step
Watch the dialogue
|tip Use the {o}Search for Allies{} ability on your action bar.
Search for Allies |q 66101/3
|only if Horde
step
Watch the dialogue
|tip Use the {o}Search for Danger{} ability on your action bar.
Search for Danger |q 66101/4
|only if Horde
step
talk Aster Cloudgaze##187257
turnin From Such Great Heights##66101 |goto The Waking Shores/0 75.84,33.49
|only if Horde
step
talk Cataloger Jakes##198846
turnin Dragon Isles Supplies##72708 |goto The Waking Shores/0 76.54,34.24
accept Funding a Treasure Hunt##72709 |goto The Waking Shores/0 76.54,34.24
|only if Horde and (haveq(72708) or completedq(72708))
step
talk Cataloger Jakes##198846
buy Archeologist Artifact Notes##198854 |n
Buy Archeologist Artifact Notes from Cataloger Jakes |q 72709/1 |goto The Waking Shores/0 76.54,34.24
|only if Horde and (haveq(72709) or completedq(72709))
step
use the Archeologist Artifact Notes##198854
Read the Archeology Artifact Notes |q 72709/2 |goto The Waking Shores/0 76.54,34.24
|only if Horde and (haveq(72709) or completedq(72709))
step
talk Cataloger Jakes##198846
turnin Funding a Treasure Hunt##72709 |goto The Waking Shores/0 76.54,34.24
|only if Horde and (haveq(72709) or completedq(72709))
step
talk Captain Garrick##184449
turnin Give Peace a Chance##66110 |goto The Waking Shores/0 76.73,34.56
|only if Horde
step
talk Tixxa Mixxa##192490
fpath Wingrest Embassy |goto The Waking Shores/0 76.03,35.05
|only if Horde
step
click Scouting Map
|tip It looks like a large brown paper map on the table.
|tip You are {o}choosing the zone{} you wish to {o}do quests in{}.
|tip Pick whichever you like, {o}it doesn't matter{}.
accept The Waking Shores##72266		|or |goto The Waking Shores/0 76.52,34.23 |only if not completedq(72266)
accept Ohn'ahran Plains##72267		|or |goto The Waking Shores/0 76.52,34.23 |only if not completedq(72267)
accept Azure Span##72268		|or |goto The Waking Shores/0 76.52,34.23 |only if not completedq(72268)
accept Thaldraszus##72269		|or |goto The Waking Shores/0 76.52,34.23 |only if not completedq(72269)
Choose a Zone from the Scouting Map |q 72293/1 |goto The Waking Shores/0 76.52,34.23 |only if haveq(72293)
|only if Horde and (haveq(72293) or completedq(72293))
step
_Click the Quest Complete Box:_
|tip In the quest tracker.
turnin Adventuring in the Dragon Isles##72293
|only if Horde and (haveq(72293) or completedq(72293))
step
_Which Zone Did You Choose?_
|tip Click the line below for the zone you want to complete quests in.
The Waking Shores	|confirm	|next "Waking_Shores_Horde"
Ohn'ahran Plains	|confirm	|next "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Ohn'ahran Plains (Full Zone)"
The Azure Span		|confirm	|next "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\The Azure Span (Full Zone)"
Thaldraszus		|confirm	|next "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Thaldraszus (Full Zone)"
|only if Horde and (haveq(72293) or completedq(72293))
step
label "Waking_Shores_Horde"
talk Sendrax##193362
turnin The Waking Shores##72266 |goto The Waking Shores/0 76.58,33.67 |only if haveq(72266) or completedq(72266)
accept Excuse the Mess##69911 |goto The Waking Shores/0 76.58,33.67
|only if Horde
step
talk Captain Garrick##184449
accept Encroaching Elementals##66111 |goto The Waking Shores/0  76.73,34.56
|only if Horde
step
talk Haephesta##192438
accept Quality Assurance##69965 |goto The Waking Shores/0 76.41,34.45
|only if Horde
step
talk Grun Ashbeard##187261
accept Always Be Crafting##66112 |goto The Waking Shores/0 76.35,34.64
|only if Horde
step
talk Ambassador Fastrasz##193393
|tip Inside the building.
Select _"I'm a new arrival with the Dragonscale Expedition."_ |gossip 55674
Speak with Ambassador Fastrasz |q 69911/1 |goto The Waking Shores/0 76.33,35.62
|only if Horde
step
talk Ambassador Fastrasz##193393
|tip Inside the building.
home Wingrest Embassy |goto The Waking Shores/0 76.33,35.62 |q 69911 |future
|only if Horde
step
click Embassy Visitor Log
|tip Inside the building.
Select _"<Begin filling out the form.>"_ |gossip 55746
Select _"Stonehead"_ |gossip 64055
Select _"<Write today's date.>"_ |gossip 55767
Select _"To aid the Dragonflights"_ |gossip 55768
Sign the Embassy Visitor Log |q 69911/2 |goto The Waking Shores/0 76.28,35.61
|only if Horde
step
talk Tixxa Mixxa##192490
fpath Wingrest Embassy |goto The Waking Shores/0 76.03,35.05
|only if Horde
step
click Alexstrasza's Welcome
Read the Welcome Message |q 69911/3 |goto The Waking Shores/0 75.61,34.14
|only if Horde
step
click Brazier of Kinship
Relight the Brazier of Kinship |q 69911/4 |goto The Waking Shores/0 78.42,31.78
step
talk Sendrax##193362
turnin Excuse the Mess##69911 |goto The Waking Shores/0 76.58,33.67
accept My First Real Emergency!##69912 |goto The Waking Shores/0 76.58,33.67
step
talk Sendrax##193362
Select _"Send the signal flare to alert the dragons of our arrival."_ |gossip 55637
Watch the dialogue
Send the Signal Flare |q 69912/1 |goto The Waking Shores/0 76.58,33.67
step
Watch the dialogue
Wait for the Dragons' Arrival |q 69912/2 |goto The Waking Shores/0 76.26,34.40
step
talk Wrathion##193371
turnin My First Real Emergency!##69912 |goto The Waking Shores/0 76.19,34.50
step
talk Majordomo Selistra##193372
accept The Djaradin Have Awoken##69914 |goto The Waking Shores/0 76.22,34.53
step
talk Majordomo Selistra##193372
Select _"How can I help defend against the djaradin?"_ |gossip 55872
Watch the dialogue
Receive the Orders from Majordomo Selistra |q 69914/1 |goto The Waking Shores/0 76.22,34.53
step
talk Sendrax##193363
turnin The Djaradin Have Awoken##69914 |goto The Waking Shores/0 76.26,34.40
accept Reporting for Duty##65760 |goto The Waking Shores/0 76.26,34.40
stickystart "Excavate_Volcanic_Geodes"
stickystart "Slay_Primal_Elementals"
step
Enter the cave |goto The Waking Shores/0 75.78,37.03 < 15 |walk |only if not subzone("Quaking Cavern")
kill Baron Crustcore##192266
|tip Downstairs inside the cave.
collect Primal Earthen Core##190386 |q 66112/2 |goto The Waking Shores/0 74.91,39.29
step
Follow the path up and leave the cave |goto The Waking Shores/0 75.78,37.03 < 15 |walk |only if subzone("Quaking Cavern")
kill Baron Ashflow##192274
collect Primal Molten Core##194548 |q 66112/1 |goto The Waking Shores/0 72.91,32.98
step
label "Excavate_Volcanic_Geodes"
click Volcanic Geode+
|tip They look like {o}large grey boulders{}.
Excavate #6# Volcanic Geodes |q 69965/1 |goto The Waking Shores/0 74.68,36.13
step
label "Slay_Primal_Elementals"
Kill Elemental enemies around this area
Slay #15# Primal Elementals |q 70135/1 |goto The Waking Shores/0 74.68,36.13 |only if haveq(70135) or completedq(70135)
Slay #15# Primal Elementals |q 66111/1 |goto The Waking Shores/0 74.68,36.13 |only if haveq(66111) or completedq(66111)
'|kill Encroaching Lava##187326, Primal Lava Elemental##187321, Primal Earth Elemental##187322
step
talk Warlord Breka Grimaxe##184452
turnin Encroaching Elementals##70135 |goto The Waking Shores/0 76.36,33.08
|only if haveq(70135) or completedq(70135)
step
talk Captain Garrick##184449
turnin Encroaching Elementals##66111 |goto The Waking Shores/0 76.73,34.55
|only if haveq(66111) or completedq(66111)
step
talk Haephesta##192438
turnin Quality Assurance##69965 |goto The Waking Shores/0 76.41,34.45
step
talk Grun Ashbeard##187261
turnin Always Be Crafting##66112 |goto The Waking Shores/0 76.35,34.64
step
talk Sendrax##193363
Select _"Lead me to Dragonheart Outpost."_ |gossip 55900
Ask Sendrax to Lead You to the Outpost |q 65760/1 |goto The Waking Shores/0 76.26,34.40
step
Watch the dialogue
|tip Follow {o}Sendrax{} as she walks.
|tip She eventually walks to this location.
Follow Sendrax to the Outpost |q 65760/2 |goto The Waking Shores/0 71.25,40.67
'|clicknpc Sendrax##191807
step
talk Commander Lethanak##186584
turnin Reporting for Duty##65760 |goto The Waking Shores/0 71.20,40.77
accept Invader Djaradin##65989 |goto The Waking Shores/0 71.20,40.77
accept Deliver Whelps From Evil##65990 |goto The Waking Shores/0 71.20,40.77
stickystart "Slay_Djaradin"
step
clicknpc Whimpering Whelpling##194231
|tip It looks like a {o}tiny red dragon{}.
|tip Behind the building.
Save the Whimpering Whelpling |q 65990/1 |goto The Waking Shores/0 71.36,44.64 |count 1
step
clicknpc Whimpering Whelpling##194231
|tip It looks like a {o}tiny red dragon{}.
|tip Upstairs inside the building.
Save the Whimpering Whelpling |q 65990/1 |goto The Waking Shores/0 70.97,46.63 |count 2
step
clicknpc Whimpering Whelpling##194231
|tip It looks like a {o}tiny red dragon{}.
Save the Whimpering Whelpling |q 65990/1 |goto The Waking Shores/0 69.86,45.30 |count 3
step
clicknpc Whimpering Whelpling##194231
|tip It looks like a {o}tiny red dragon{}.
|tip It flies in the air around this area.
Save the Whimpering Whelpling |q 65990/1 |goto The Waking Shores/0 69.35,43.36 |count 4
step
label "Slay_Djaradin"
Kill Qalashi enemies around this area
Slay #6# Djaradin |q 65989/1 |goto The Waking Shores/0 70.37,44.87
'|kill Qalashi Scavenger##191833, Qalashi Djaradin##188296
step
talk Commander Lethanak##186584
turnin Invader Djaradin##65989 |goto The Waking Shores/0 71.20,40.78
turnin Deliver Whelps From Evil##65990 |goto The Waking Shores/0 71.20,40.78
accept Time for a Reckoning##65991 |goto The Waking Shores/0 71.20,40.78
step
talk Mender Eskros##195303
|tip She walks around this area.
accept Erstwhile Ecologists##72122 |goto The Waking Shores/0 71.22,40.36
step
talk Ecologist Iskha##186410
turnin Erstwhile Ecologists##72122 |goto The Waking Shores/0 74.43,42.14
accept A Scalpel of a Solution##66105 |goto The Waking Shores/0 74.43,42.14
step
talk Ecologist Tharu##186428
accept Wildlife Rescue##66107 |goto The Waking Shores/0 74.51,42.18
stickystart "Kill_Rampaging_Wind"
stickystart "Kill_Rampaging_Water"
step
click Various Animal+
|tip They look like {o}various animals{}.
Rescue #20# Wildlife |q 66107/1 |goto The Waking Shores/0 76.32,46.68
You can find more around [80.46,48.71]
'|clicknpc Disgruntled Riverbeast Matriarch##187620, Distressed Riverbeast Calf##187462, Helpless Waterfowl##187468, Frazzled Basilisk##190249, Cowering Crab##188266, Trapped Turtle Hatchling##187471, Trapped Sea Turtle##187469
step
label "Kill_Rampaging_Water"
kill 5 Rampaging Water##187493 |q 66105/1 |goto The Waking Shores/0 77.52,47.25
|tip They look like {o}water elementals{}.
step
label "Kill_Rampaging_Wind"
kill 5 Rampaging Wind##187494 |q 66105/2 |goto The Waking Shores/0 77.52,47.25
|tip They look like {o}air elementals{}.
step
talk Ecologist Tharu##186428
turnin Wildlife Rescue##66107 |goto The Waking Shores/0 74.51,42.18
step
talk Ecologist Iskha##186410
turnin A Scalpel of a Solution##66105 |goto The Waking Shores/0 74.43,42.14
accept Forensic Ecology##66104 |goto The Waking Shores/0 74.43,42.14
step
click Windyfin Gorloc Corpse
Watch the dialogue
Dissect the Windyfin Gorloc Corpse |q 66104/2 |goto The Waking Shores/0 74.47,42.20
step
click Soggymaw Gorloc Corpse
Watch the dialogue
Dissect the Soggymaw Gorloc Corpse |q 66104/1 |goto The Waking Shores/0 74.46,42.21
step
click Viscera-Covered Shells
Examine the Glistening Shells |q 66104/3 |goto The Waking Shores/0 74.47,42.19
step
talk Ecologist Iskha##186410
turnin Forensic Ecology##66104 |goto The Waking Shores/0 74.42,42.14
accept A Sledgehammer of a Solution##66108 |goto The Waking Shores/0 74.42,42.14
step
talk Ecologist Tharu##186428
accept Don't Be So Shellfish##66106 |goto The Waking Shores/0 74.51,42.17
stickystart "Collect_Wind_Infused_Shells"
stickystart "Collect_Water_Infused_Shells"
step
talk Bubbled Duckling##187439
accept A Quack For Help##66196 |goto The Waking Shores/0 80.12,42.87
step
kill Sogglmoggl##188859 |q 66108/1 |goto The Waking Shores/0 80.07,44.02
|tip He looks like a {o}gremlin riding inside a water elemental{}.
step
kill Whirglgurgl##188860 |q 66108/2 |goto The Waking Shores/0 79.79,39.85
|tip He looks like a {o}gremlin riding on an air elemental{}.
|tip Up on the cliff.
step
label "Collect_Wind_Infused_Shells"
Kill Windyfin enemies around this area
|tip They look like {o}gremlins{}.
|tip They can mostly be found on top of the cliffs around this area.
click Pile of Wind-Infused Shells+
|tip They look like {o}piles of large dark colored snail shells{}.
collect 15 Wind-Infused Shell##191546 |q 66106/1 |goto The Waking Shores/0 81.05,42.63
'|kill Windyfin Squallstalker##187433, Windyfin Windbringer##187432, Windyfin Skybasher##187431
step
label "Collect_Water_Infused_Shells"
Kill Soggymaw enemies around this area
|tip They look like {o}gremlins{}.
click Pile of Water-Infused Shells+
|tip They look like {o}piles of large dark colored snail shells{}.
collect 15 Water-Infused Shell##191549 |q 66106/2 |goto The Waking Shores/0 79.99,43.03
'|kill Soggymaw Seabasher##187320, Soggymaw Crabtrapper##187971, Soggymaw Wavebringer##187263
step
Bring the Bubbled Duckling to the Ecologist's Camp |q 66196/1 |goto The Waking Shores/0 74.51,42.17
step
talk Ecologist Tharu##186428
turnin Don't Be So Shellfish##66106 |goto The Waking Shores/0 74.51,42.17
turnin A Quack For Help##66196 |goto The Waking Shores/0 74.51,42.17
step
talk Ecologist Iskha##186410
turnin A Sledgehammer of a Solution##66108 |goto The Waking Shores/0 74.43,42.14
step
Meet Wrathion at Scalecracker Keep |q 65991/1 |goto The Waking Shores/0 66.49,34.42
|tip On top of the building.
step
talk Wrathion##186640
|tip He flies down and lands on top of the building.
turnin Time for a Reckoning##65991 |goto The Waking Shores/0 66.36,35.00
accept Killjoy##65993 |goto The Waking Shores/0 66.36,35.00
accept Blacktalon Intel##65992 |goto The Waking Shores/0 66.36,35.00
step
talk Right##190564
Select _"What have you observed about the djaradin?"_ |gossip 55298
Consult Right |q 65992/3 |goto The Waking Shores/0 65.10,29.35
step
kill Meatgrinder Sotok##186777 |q 65993/1 |goto The Waking Shores/0 62.94,29.43
collect Qalashi Plans##193874 |n
accept The Obsidian Citadel##65995 |goto The Waking Shores/0 62.94,29.43
step
talk Left##190563
Select _"What have you observed about the djaradin?"_ |gossip 55296
Consult Left |q 65992/2 |goto The Waking Shores/0 63.43,28.87
step
talk Talonstalker Kavia##188299
Select _"What have you observed about the djaradin?"_ |gossip 55335
Consult Talonstalker Kavia |q 65992/1 |goto The Waking Shores/0 63.04,33.34
step
talk Wrathion##194772
|tip On top of the building.
turnin Killjoy##65993 |goto The Waking Shores/0 62.64,33.17
turnin Blacktalon Intel##65992 |goto The Waking Shores/0 62.64,33.17
turnin The Obsidian Citadel##65995 |goto The Waking Shores/0 62.64,33.17
step
talk Majordomo Selistra##186767
|tip On top of the building.
accept Veteran Reinforcements##65996 |goto The Waking Shores/0 62.75,33.10
step
clicknpc Injured Ruby Culler##190771
Heal the Injured Drakonid |q 65996/1 |goto The Waking Shores/0 60.98,35.63 |count 1
step
clicknpc Injured Ruby Culler##190771
Heal the Injured Drakonid |q 65996/1 |goto The Waking Shores/0 61.10,36.77 |count 2
step
clicknpc Injured Ruby Culler##190771
Heal the Injured Drakonid |q 65996/1 |goto The Waking Shores/0 59.04,34.84 |count 3
step
talk Caretaker Ventraz##188297
accept Fighting Fire with... Water##66998 |goto The Waking Shores/0 59.10,34.85
step
use the Bottled Water Elemental##194441
|tip This will summon a water elemental to help you fight.
|tip If you already have a water elemental, use it again to fully heal your elemental.
kill Erupting Droplet##191983+
|tip They look like orange lava oozes.
|tip Inside and outside the cave.
Contain the Erupting Cavern |q 66998/1 |goto The Waking Shores/0 59.15,34.03
step
talk Caretaker Ventraz##188297
turnin Fighting Fire with... Water##66998 |goto The Waking Shores/0 59.10,34.85
step
clicknpc Injured Ruby Culler##190771
Heal the Injured Drakonid |q 65996/1 |goto The Waking Shores/0 56.64,34.77 |count 4
step
Meet Sendrax at the Conservatory Outpost |q 65996/2 |goto The Waking Shores/0 54.99,30.77
step
talk Caretaker Azkra##190155
turnin Veteran Reinforcements##65996 |goto The Waking Shores/0 54.99,30.77
accept Chasing Sendrax##65997 |goto The Waking Shores/0 54.99,30.77
step
talk Sendrax##187406
|tip Behind the statue.
Select _"What is happening here?"_ |gossip 55225
Find Sendrax |q 65997/1 |goto The Waking Shores/0 55.18,24.96
step
talk Sendrax##187406
turnin Chasing Sendrax##65997 |goto The Waking Shores/0 55.18,24.95
accept Future of the Flights##65998 |goto The Waking Shores/0 55.18,24.95
accept Red in Tooth and Claw##65999 |goto The Waking Shores/0 55.18,24.95
step
click On the Origin of Draconic Species
accept Library of Alexstrasza##66000 |goto The Waking Shores/0 55.26,24.69
stickystart "Slay_Primalist_Forces"
step
click Dracuixote
|tip It looks like a {o}book on the bookshelf{}.
|tip Inside the building.
Save the Book |q 66000/1 |goto The Waking Shores/0 53.47,22.00 |count 1
step
click The Scales of Wrath
|tip It looks like an {o}open book on the bookshelf{}.
|tip Inside the building.
Save the Book |q 66000/1 |goto The Waking Shores/0 53.36,22.39 |count 2
step
Find Infused Dragon Eggs |q 65998/1 |goto The Waking Shores/0 55.18,22.72
|tip Run next to the {o}Ruby Dragon Eggs{}.
|tip They look like groups of {o}large, red, spikey eggs{}.
|tip The eggs will {o}break open{} and 3 enemies will {o}attack you{}.
stickystart "Kill_Infused_Ruby_Whelplings"
step
click Pride and Protodrakes
|tip It looks like a {o}book next to the fire{}.
|tip Inside the building, on the ground floor.
Save the Book |q 66000/1 |goto The Waking Shores/0 54.63,20.36 |count 3
step
click The Lord of the Wings
|tip It looks like an {o}open book{} laying on the floor.
|tip Inside the building, on the top floor.
Save the Book |q 66000/1 |goto The Waking Shores/0 54.60,20.62 |count 4
step
label "Kill_Infused_Ruby_Whelplings"
kill 9 Infused Ruby Whelpling##186822 |q 65998/2 |goto The Waking Shores/0 56.38,23.31
|tip Run next to the {o}Ruby Dragon Eggs{}.
|tip They look like groups of {o}large, red, spikey eggs{}.
|tip The eggs will {o}break open{} and 3 enemies will {o}attack you{}.
step
label "Slay_Primalist_Forces"
Kill enemies around this area
Slay #15# Primalist Forces |q 65999/1 |goto The Waking Shores/0 56.38,23.31
'|kill Primal Revenant##195917, Molten Primalist##186825, Swelling Fire Elemental##188667, Lavacaller Primalist##186823, Unleashed Lavaburst##188666, Primal Tarasek##188372, Tarasek Elementalist##190080, Firava the Rekindler##195915
step
_Next to you:_
talk Sendrax
turnin Future of the Flights##65998
turnin Red in Tooth and Claw##65999
turnin Library of Alexstrasza##66000
accept A Last Hope##66001
step
talk Sendrax##190269
Select _"I am ready."_ |gossip 55259
Meet Sendrax by the Ritual Site |q 66001/1 |goto The Waking Shores/0 56.24,22.07
step
Watch the dialogue
click Infused Dragon Egg
|tip Click it when Sendrax tells you to.
Pick up the Infused Dragon Egg |q 66001/2 |goto The Waking Shores/0 56.92,21.61
step
_NOTE:_
During the Next Step
|tip You will be carrying the {o}Infused Dragon Egg{}.
|tip {o}Just run, don't stop{} to fight enemies or anything else.
|tip If you {o}do anything{} like fighting enemies, eating or drinking, or using a potion, etc, you will {o}drop the egg{} on the ground.
|tip Make sure you pick the egg back up if you do anything that makes you drop it.
Click Here to Continue |confirm |q 66001
step
Carry the Egg to Safety |q 66001/3 |goto The Waking Shores/0 54.99,30.77
|tip You are carrying the {o}Infused Dragon Egg{}.
|tip {o}Just run, don't stop{} to fight enemies or anything else.
|tip If you {o}do anything{} like fighting enemies, eating or drinking, or using a potion, etc, you will {o}drop the egg{} on the ground.
|tip Make sure you pick the egg back up if you do anything that makes you drop it.
step
talk Apprentice Caretaker Zefren##194525
accept A Two for One Deal##70179 |goto The Waking Shores/0 54.44,30.85
step
Kill Elemental enemies around this area
|tip They look like {o}various rock elementals{}.
|tip You can find more nearby in the valley below.
collect 10 Building Materials##198511 |q 70179/1 |goto The Waking Shores/0 51.56,31.65
'|kill Raging Elemental##194523, Earthshatter Elemental##194524, Crushing Elemental##194517
step
talk Apprentice Caretaker Zefren##194525
turnin A Two for One Deal##70179 |goto The Waking Shores/0 54.44,30.85
step
talk Majordomo Selistra##186795
turnin A Last Hope##66001 |goto The Waking Shores/0 55.09,31.01
accept For the Benefit of the Queen##66114 |goto The Waking Shores/0 55.09,31.01
step
talk Majordomo Selistra##186795
Select _"Take me with you to see the queen, please."_ |gossip 54941
Begin Flying with Majordomo Selistra |havebuff Majordomo's Wild Ride##376478 |goto The Waking Shores/0 55.09,31.01 |q 66114
step
Watch the dialogue
Ride with Majordomo Selistra to the Ruby Lifeshrine |q 66114/1 |goto The Waking Shores/0 62.26,72.88 |notravel
step
talk Alexstrasza the Life-Binder##187290
Select  _"<Offer the rescued egg to Queen Alexstrasza.>"_ |gossip 107094
Show Queen Alexstrasza the Infused Egg |q 66114/2 |goto The Waking Shores/0 62.34,73.02
step
talk Alexstrasza the Life-Binder##187290
turnin For the Benefit of the Queen##66114 |goto The Waking Shores/0 62.34,73.02
accept The Mandate of the Red##66115 |goto The Waking Shores/0 62.34,73.02
accept Dragonriding##68795 |goto The Waking Shores/0 62.34,73.02
step
talk Lifecaller Tzadrak##191025
accept A Ruby Lifecalling##66825 |goto The Waking Shores/0 61.90,73.82
step
click Gardener's Trusty Rake
|tip It looks like a long-handled gardening tool.
|tip On the table.
Choose a Calling |q 66825/1 |goto The Waking Shores/0 61.85,73.78 |count 1
step
Watch the dialogue
click Reinforced Hornstrider Lasso
|tip It looks like a coil of rope.
|tip On the table.
Choose a Calling |q 66825/1 |goto The Waking Shores/0 61.85,73.81 |count 2
step
Watch the dialogue
click Whelptender's Watering Can
|tip It looks like a metal pot with a long pouring spout.
|tip On the table.
Choose a Calling |q 66825/1 |goto The Waking Shores/0 61.85,73.85 |count 3
step
Watch the dialogue
click Shimmery Jar of Fireflies
|tip It looks like a small glass jar with blue liquid in it.
|tip On the table.
Choose a Calling |q 66825/1 |goto The Waking Shores/0 61.85,73.87 |count 4
step
talk Lifecaller Tzadrak##191025
turnin A Ruby Lifecalling##66825 |goto The Waking Shores/0 61.90,73.82
step
talk Vaeros##191174
accept Nursery Direction##66997 |goto The Waking Shores/0 61.82,73.58
step
talk Akora##191012
accept Garden Party##70351 |goto The Waking Shores/0 61.74,73.70
step
talk Dazakros##191176
accept Hornstrider Havoc##66879 |goto The Waking Shores/0 61.73,73.76
step
talk Xius##189261
Select _"What do you do here?"_ |gossip 55288
Speak to Xius |q 66115/1 |goto The Waking Shores/0 60.70,74.05
step
talk Akxall##189262
Select _"Why are there so few eggs here?"_ |gossip 55289
Speak to Akxall |q 66115/2 |goto The Waking Shores/0 59.38,72.42
step
talk Lillistrazsa##193955
accept Friend on the Mend##70058 |goto The Waking Shores/0 59.88,70.37
step
click Glass Bead
|tip It looks like a rainbow colored gem.
|tip On the table.
collect Glass Bead##198345 |q 70058/3 |goto The Waking Shores/0 59.80,71.33
step
talk Valdestrasz##193987
Select _"Do you have any spare scraps of fabric?"_ |gossip 56425
collect Scrap of Fabric##198344 |q 70058/2 |goto The Waking Shores/0 60.31,72.81 |count 1
step
talk Tirastrasza##198605
Select _"Do you have any spare scraps of fabric?"_ |gossip 56428
collect Scrap of Fabric##198344 |q 70058/2 |goto The Waking Shores/0 60.55,73.46 |count 2
step
talk Rathestrasz##193995
Select _"Do you have any spare scraps of fabric?"_ |gossip 56424
collect Scrap of Fabric##198344 |q 70058/2 |goto The Waking Shores/0 59.93,72.67 |count 3
step
click Soft Ruby Feather+
|tip They look like {o}red feathers{}.
|tip Around the {o}two ponds{} nearby.
collect 5 Soft Ruby Feather##198343 |q 70058/1 |goto The Waking Shores/0 61.39,69.82
step
talk Mahra Treebender##192674
turnin Friend on the Mend##70058 |goto The Waking Shores/0 61.44,70.14
step
talk Mother Elion##185904
Select _"Why do you stay here, if you have no eggs to rear?"_ |gossip 55258
Speak to Mother Elion |q 66115/3 |goto The Waking Shores/0 61.60,68.70
step
talk Zahkrana##189260
Select _"How do you care for these eggs?"_ |gossip 55290
Speak to Zahkrana |q 66115/4 |goto The Waking Shores/0 62.77,70.43
step
talk Zahkrana##189260
turnin The Mandate of the Red##66115 |goto The Waking Shores/0 62.77,70.43
step
talk Amella##194174
accept Training Wings##70061 |goto The Waking Shores/0 62.18,70.56
step
clicknpc Ruby Whelpling##193979
|tip It looks like a tiny red dragon.
Choose the Ruby Whelpling |q 70061/1 |goto The Waking Shores/0 61.09,71.46
step
Begin Controlling the Ruby Whelpling |invehicle |q 70061
stickystart "Kill_Intrusive_Pupstingers"
stickystart "Kill_Agitated_Weedlings"
step
kill Relentless Gust##194159 |q 70061/4 |goto The Waking Shores/0 61.45,71.87
|tip They look like {o}tornado elementals{}.
|tip On the larger stone platforms on the wall.
|tip Use the abilities on your action bar.
|tip {o}To aim{} your abilities, {o}face the whelpling{} at what you want to target.
step
label "Kill_Intrusive_Pupstingers"
kill 6 Intrusive Pupstinger##194142 |q 70061/3 |goto The Waking Shores/0 61.45,71.87
|tip They look like {o}flying insects{} around this area.
|tip Use the abilities on your action bar. |notinsticky
|tip {o}To aim{} your abilities, {o}face the whelpling{} at what you want to target. |notinsticky
step
label "Kill_Agitated_Weedlings"
kill 12 Agitated Weedling##193994 |q 70061/2 |goto The Waking Shores/0 61.45,71.87
|tip They look like purple and green {o}plants with teeth{}.
|tip All along the small platforms on the wall.
|tip Use the abilities on your action bar. |notinsticky
|tip {o}To aim{} your abilities, {o}face the whelpling{} at what you want to target. |notinsticky
step
Release the Ruby Whelpling |outvehicle |q 70061
|tip You will automatically fly back to the stone platform.
step
talk Haephesta##192498
|tip On the large platform, overlooking the valley.
accept Artisan's Courier##67564 |goto The Waking Shores/0 57.93,68.25
step
talk Vaknai##192491
|tip On the large platform, overlooking the valley.
fpath Ruby Life Pools |goto The Waking Shores/0 57.80,68.11
step
talk Lord Andestrasz##193287
|tip On the large platform, overlooking the valley.
Select _" Tell me about dragonriding."_ |gossip 55643
Speak to Lord Andestrasz about Dragonriding |q 68795/1 |goto The Waking Shores/0 58.37,67.13
step
talk Veritistrasz##194076
|tip On the large platform, overlooking the valley.
accept Stay a While##70132 |goto The Waking Shores/0 57.85,66.80
step
Sit with Veritistrasz |havebuff Stay a While##384091 |goto The Waking Shores/0 57.85,66.80 |q 70132
|tip Use the {o}Stay a While{} ability.
|tip It appears as a button on the screen.
|tip On the large platform, overlooking the valley.
step
talk Veritistrasz##194076
|tip On the large platform, overlooking the valley.
Choose _<Sit and look at the view.>_
Sit and Look at the View |q 70132/1 |goto The Waking Shores/0 57.85,66.80
step
Watch the dialogue
talk Veritistrasz##194076
|tip On the large platform, overlooking the valley.
Choose _<You are busy. Get up and leave.>_
|tip If you want to hear stories and aren't in a rush, choose the other dialogue options and listen to his stories.
Listen to Veritistrasz's Stories |q 70132/2 |goto The Waking Shores/0 57.85,66.80
step
talk Veritistrasz##194076
|tip On the large platform, overlooking the valley.
turnin Stay a While##70132 |goto The Waking Shores/0 57.85,66.80
step
talk Lord Andestrasz##193287
|tip On the large platform, overlooking the valley.
|tip He eventually walks to this location.
turnin Dragonriding##68795 |goto The Waking Shores/0 57.66,66.89
accept How to Glide with Your Dragon##65118 |goto The Waking Shores/0 57.66,66.89
step
use the Renewed Proto-Drake##194034
|tip This will teach you your first dragonriding mount.
learnmount Renewed Proto-Drake##368896 |q 65118
step
_NOTE:_
During the Next Step
|tip Look for a string of large {b}glowing glyph rings{} in the air nearby to the {o}north{}.
|tip You will use your dragonriding mount to {o}glide through each of the rings{} toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the {o}Bronze Timepiece{} quest item to retry.
Click Here to Continue |confirm |q 65118
step
Glide Through The #5# Rings |q 65118/2 |goto The Waking Shores/0 57.69,66.71
|tip Look for a string of large {b}glowing glyph rings{} in the air nearby to the {o}north{}.
|tip You will use your dragonriding mount to {o}glide through each of the rings{} toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the {o}Bronze Timepiece{} quest item to retry.
step
Land in the Target Area |q 65118/3 |goto The Waking Shores/0 57.42,59.12
|tip On top of the large red rock pillar.
step
talk Celormu##183141
|tip On top of the large red rock pillar.
turnin How to Glide with Your Dragon##65118 |goto The Waking Shores/0 57.48,59.10
step
Return to the Ruby Lifeshrine |complete subzone("Ruby Lifeshrine") |q 65120 |future
|tip You will travel automatically.
step
talk Lord Andestrasz##193287
|tip On the large platform, overlooking the valley.
accept How To Dive with Your Dragon##65120 |goto The Waking Shores/0 57.66,66.89
step
_NOTE:_
During the Next Step
|tip Look for a string of large {b}glowing glyph rings{} in the air nearby to the {o}north{}.
|tip The rings drop down into the valley below, and lead to a large red rock pillar.
|tip You will use your dragonriding mount to {o}glide through each of the rings{} toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the {o}Bronze Timepiece{} quest item to retry.
Click Here to Continue |confirm |q 65120
step
Glide Through The #5# Rings |q 65120/2 |goto The Waking Shores/0 57.69,66.71
|tip Look for a string of large {b}glowing glyph rings{} in the air nearby to the {o}north{}.
|tip The rings drop down into the valley below, and lead to a large red rock pillar.
|tip You will use your dragonriding mount to {o}glide through each of the rings{} toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the {o}Bronze Timepiece{} quest item to retry.
step
Land in the Target Area |q 65120/3 |goto The Waking Shores/0 57.42,59.12
|tip On top of the large red rock pillar.
step
talk Celormu##183141
|tip On top of the large red rock pillar.
turnin How To Dive with Your Dragon##65120 |goto The Waking Shores/0 57.48,59.10
step
Return to the Ruby Lifeshrine |complete subzone("Ruby Lifeshrine") |q 65133 |future
|tip You will travel automatically.
step
talk Lord Andestrasz##193287
|tip On the large platform, overlooking the valley.
accept How to Use Momentum with Your Dragon##65133 |goto The Waking Shores/0 57.66,66.89
step
_NOTE:_
During the Next Step
|tip Look for a string of large {b}glowing glyph rings{} in the air nearby to the {o}north{}.
|tip The rings drop down into the valley below, and lead to a large red rock pillar.
|tip You will use your dragonriding mount to {o}glide through each of the rings{} toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the {o}Bronze Timepiece{} quest item to retry.
Click Here to Continue |confirm |q 65133
step
Glide Through The #5# Rings |q 65133/2 |goto The Waking Shores/0 57.69,66.71
|tip Look for a string of large {b}glowing glyph rings{} in the air nearby to the {o}north{}.
|tip The rings drop down into the valley below, and lead to a large red rock pillar.
|tip You will use your dragonriding mount to {o}glide through each of the rings{} toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the {o}Bronze Timepiece{} quest item to retry.
step
Land in the Target Area |q 65133/3 |goto The Waking Shores/0 57.42,59.12
|tip On top of the large red rock pillar.
step
talk Celormu##183141
|tip On top of the large red rock pillar.
turnin How to Use Momentum with Your Dragon##65133 |goto The Waking Shores/0 57.48,59.10
step
Return to the Ruby Lifeshrine |complete subzone("Ruby Lifeshrine") |q 68796 |future
|tip You will travel automatically.
step
talk Lord Andestrasz##193287
|tip On the large platform, overlooking the valley.
accept The Need For Higher Velocities##77345 |goto The Waking Shores/0 57.66,66.89
step
_NOTE:_
During the Next Step
|tip Look for a string of large {b}glowing glyph rings{} in the air nearby to the {o}north{}.
|tip The rings drop down into the valley below, and lead to a large red rock pillar.
|tip You will use your dragonriding mount to {o}glide through each of the rings{} toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the {o}Bronze Timepiece{} quest item to retry.
Click Here to Continue |confirm |q 77345
step
Glide Through The #8# Rings |q 77345/2 |goto The Waking Shores/0 57.69,66.71
|tip Look for a string of large {b}glowing glyph rings{} in the air nearby to the {o}north{}.
|tip The rings drop down into the valley below, and lead to a large red rock pillar.
|tip You will use your dragonriding mount to {o}glide through each of the rings{} toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the {o}Bronze Timepiece{} quest item to retry.
step
Land in the Target Area |q 77345/3 |goto The Waking Shores/0 57.32,59.13
step
talk Celormu##183141
|tip On the large platform.
turnin The Need For Higher Velocities##77345 |goto The Waking Shores/0 57.47,59.11
step
Return to the Ruby Lifeshrine |complete subzone("Ruby Lifeshrine") |q 68796 |future
|tip You will travel automatically.
step
talk Lord Andestrasz##193287
|tip On the large platform, overlooking the valley.
accept The Skytop Observatory##68796 |goto The Waking Shores/0 57.66,66.89
step
_NOTE:_
During the Next Steps
|tip You will talk to {o}Celormu{} to {o}start a dragonriding race{}.
|tip After talking to him, he will {o}countdown{} to start the race.
|tip Look for a string of large {b}glowing glyph rings{} in the air nearby to the {o}northeast{}.
|tip You will use your dragonriding mount to {o}glide through each of the rings{}.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
Click Here to Continue |confirm |q 68796
step
Watch the dialogue
talk Celormu##198040
|tip He eventually walks to this location.
|tip On the large platform, overlooking the valley.
Select _"I'd like to try the course to Skytop Observatory."_ |gossip 107284
Speak with Celormu to Start the Race |q 68796/1 |goto The Waking Shores/0 57.73,66.72
step
Race to the Skytop Observatory |q 68796/2 |goto The Waking Shores/0 57.76,66.75 |notravel
|tip Look for a string of large {b}glowing glyph rings{} in the air nearby to the {o}northeast{}.
|tip You will use your dragonriding mount to {o}glide through each of the rings{}.
|tip Follow the {o}onscreen instructions{} and the {o}dotted lines{} to each of the rings.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
step
talk Lord Andestrasz##193359
|tip On top of the mountain.
turnin The Skytop Observatory##68796 |goto The Waking Shores/0 75.18,54.97
accept A New Set of Horns##68797 |goto The Waking Shores/0 75.18,54.97
accept Skyriding Talents and You##68798 |goto The Waking Shores/0 75.18,54.97
step
talk Lithragosa##193364
|tip At the entrance of the crumbled building.
Speak to Lithragosa |q 68798/1 |goto The Waking Shores/0 74.57,56.97
step
talk Lithragosa##193364
|tip At the entrance of the crumbled building.
Select _"I'm ready. [Open Dragonriding Skill Track.]"_ |gossip 55584
View the Dragonriding Skill Track with Lithragosa |q 68798/2 |goto The Waking Shores/0 74.57,56.97
step
talk Lithragosa##193364
|tip At the entrance of the crumbled building.
Learn the "Take to the Skies" Skill with Lithragosa |q 68798/3 |goto The Waking Shores/0 74.57,56.97
step
talk Glensera##190839
Meet Glensera in the Skytop Observatory |q 68797/1 |goto The Waking Shores/0 74.11,57.93
step
click Rostrum of Transformation
Use the Rostrum of Transformation |q 68797/2 |goto The Waking Shores/0 74.03,58.15
step
talk Celormu##193411
Speak to Celormu |q 68798/4 |goto The Waking Shores/0 73.25,52.06
step
talk Azerastrasz##193477
|tip Open the flight map.
fpath Skytop Observatory |goto The Waking Shores/0 72.77,51.90
step
talk Lord Andestrasz##193359
turnin A New Set of Horns##68797 |goto The Waking Shores/0 75.18,54.97
turnin Skyriding Talents and You##68798 |goto The Waking Shores/0 75.18,54.97
accept Return to the Ruby Lifeshrine##68799 |goto The Waking Shores/0 75.18,54.97
step
clicknpc Relastrasza##199684
Ride Relastrasza to the Skytop Launch Tower |q 68799/1 |goto The Waking Shores/0 75.02,55.58
step
talk Akora##190866
|tip On the ground.
turnin Garden Party##70351 |goto The Waking Shores/0 60.16,66.43
accept Flowers of our Labor##66827 |goto The Waking Shores/0 60.16,66.43
stickystart "Gather_Seed_Pods"
stickystart "Gather_Fragrant_Dragonflowers"
step
use the Trusty Dragonkin Rake##193826
|tip Use it on {o}Ripened Dragonfruit{}.
|tip They look like large {o}red and green bulbs{} on the branches of {o}trees with red leaves{}.
|tip They will fall to the ground.
clicknpc Ripened Dragonfruit##191296+
Gather #5# Ripened Dragonfruit |q 66827/2 |goto The Waking Shores/0 59.85,65.11
step
label "Gather_Seed_Pods"
click Lush Seed Pod+
|tip They look like {o}large brown seeds{} on the ground.
Gather #5# Lush Seed Pods |q 66827/3 |goto The Waking Shores/0 59.85,65.11
step
label "Gather_Fragrant_Dragonflowers"
click Fragrant Dragonflower+
|tip They look like {o}short plants{} with {o}peach colored flower petals{}.
|tip They will attack you.
Gather #5# Fragrant Dragonflowers |q 66827/1 |goto The Waking Shores/0 59.85,65.11
step
clicknpc Seed Basket##191293
Watch the dialogue
Offer the Lush Seed Pods |q 66827/6 |goto The Waking Shores/0 60.30,66.47
step
clicknpc Fruit Basket##191281
Watch the dialogue
Offer the Ripened Dragonfruit |q 66827/5 |goto The Waking Shores/0 60.28,66.54
step
clicknpc Flower Basket##191292
Watch the dialogue
Offer the Fragrant Dragonflowers |q 66827/4 |goto The Waking Shores/0 60.28,66.62
step
talk Akora##190866
turnin Flowers of our Labor##66827 |goto The Waking Shores/0 60.16,66.42
step
talk Keshki##190868
accept Huddle at the Hollow##66828 |goto The Waking Shores/0 60.19,66.39
step
talk Majordomo Selistra##191768
turnin Training Wings##70061 |goto The Waking Shores/0 62.32,72.90
step
talk Alexstrasza the Life-Binder##187290
|tip At the top of the Ruby Lifeshrine.
turnin Return to the Ruby Lifeshrine##68799 |goto The Waking Shores/0 62.34,73.02
accept Who Brought the Ruckus?##66931 |goto The Waking Shores/0 62.34,73.02
step
talk Thomas Bright##192574
turnin Artisan's Courier##67564 |goto The Waking Shores/0 60.23,72.18
accept A Gift for Miguel##67100 |goto The Waking Shores/0 60.23,72.18
step
talk Thomas Bright##192574
Select _"What do you mean, "high quality"?"_ |gossip 55059
Select _"What do you want to give Miguel?"_ |gossip 55062
Select _"I will find these for you."_ |gossip 55066
Talk to Thomas about Quality |q 67100/1 |goto The Waking Shores/0 60.23,72.18
step
Discover the Commotion |q 66931/1 |goto The Waking Shores/0 59.44,72.83
step
talk Majordomo Selistra##190293
turnin Who Brought the Ruckus?##66931 |goto The Waking Shores/0 59.51,72.63
accept The Primary Threat##66116 |goto The Waking Shores/0 59.51,72.63
step
Report to Commander Lethanak |q 66116/2 |goto The Waking Shores/0 59.41,75.88
|tip On the icy ground.
step
talk Commander Lethanak##187119
turnin The Primary Threat##66116 |goto The Waking Shores/0 59.41,75.88
accept Basalt Assault##66118 |goto The Waking Shores/0 59.41,75.88
step
kill 4 Enraged Cliff##187090 |q 66118/1 |goto The Waking Shores/0 60.28,78.54
|tip They look like large stone elementals.
You can find more around [57.76,76.66]
step
talk Commander Lethanak##187119
turnin Basalt Assault##66118 |goto The Waking Shores/0 59.41,75.87
accept Proto-Fight##66122 |goto The Waking Shores/0 59.41,75.87
step
talk Majordomo Selistra##187129
accept Egg Evac##66121 |goto The Waking Shores/0 59.48,76.14
stickystart "Slay_Proto_Dragons"
step
click Bronze Egg
|tip It looks like a large yellow spikey dragon egg.
Rescue the Bronze Egg |q 66121/1 |goto The Waking Shores/0 56.14,81.30
step
click Ruby Egg
|tip It looks like a large red spikey dragon egg.
Rescue the Ruby Egg |q 66121/4 |goto The Waking Shores/0 54.99,80.95
step
click Emerald Egg
|tip It looks like a large green spikey dragon egg.
Rescue the Emerald Egg |q 66121/3 |goto The Waking Shores/0 55.32,83.30
step
click Azure Egg
|tip It looks like a large blue spikey dragon egg.
Rescue the Azure Egg |q 66121/2 |goto The Waking Shores/0 57.35,83.28
step
label "Slay_Proto_Dragons"
use the Ruby Spear##192436
|tip Use it on {o}Proto-Dragons{}.
|tip They look like {o}large dragons{} on the ground and flying in the air.
|tip They are {o}elite{}, but using the {o}spear{} on them makes them {o}easier to kill{}.
Slay #3# Proto-Dragons |q 66122/2 |goto The Waking Shores/0 55.59,81.86
'|clicknpc Rumbling Proto-Dragon##187212, Galestrike Proto-Dragon##187211
step
talk Majordomo Selistra##191895
turnin Proto-Fight##66122 |goto The Waking Shores/0 53.68,80.17
turnin Egg Evac##66121 |goto The Waking Shores/0 53.68,80.17
accept Cut Off the Head##66123 |goto The Waking Shores/0 53.68,80.17
step
use Ruby Spear##192436
|tip Use it on {o}Jadzigeth{}.
|tip He looks like a large {o}blue ice crystal dragon{}.
|tip He is {o}elite{}, but using the {o}spear{} on him makes him {o}easier to kill{}.
kill Jadzigeth##188447 |q 66123/1 |goto The Waking Shores/0 53.68,82.95
step
talk Majordomo Selistra##191895
turnin Cut Off the Head##66123 |goto The Waking Shores/0 53.68,80.17
accept Exeunt, Triumphant##66124 |goto The Waking Shores/0 53.68,80.17
step
Watch the dialogue
talk Majordomo Selistra##187278
|tip He flies to this location.
Select  _"<Check in with the majordomo.>"_ |gossip 107159
Speak to Majordomo Selistra at the Wild Hatchery |q 66124/1 |goto The Waking Shores/0 46.14,78.53
step
talk Majordomo Selistra##187278
turnin Exeunt, Triumphant##66124 |goto The Waking Shores/0 46.14,78.53
step
talk Alexstrasza the Life-Binder##187115
accept Wrathion Awaits##66079 |goto The Waking Shores/0 46.09,78.29
step
if not haveq(66524) and not completedq(66524)
talk Hauler Bennet##191698
accept Out For Delivery##66963 |goto The Waking Shores/0 48.48,78.85
step
talk Cataloger Wulferd##187705
turnin Out For Delivery##66963 |goto The Waking Shores/0 48.49,82.67
accept Amateur Protography##66524 |goto The Waking Shores/0 48.49,82.67
step
talk Naleidea Rivergleam##186869
accept Orientation: Dragonscale Basecamp##72397 |goto The Waking Shores/0 47.88,82.41
step
talk Rae'ana##188265
Meet the Scholars Supplier |q 72397/1 |goto The Waking Shores/0 47.92,82.08
step
talk Art Raskins##192843
fpath Dragonscale Basecamp |goto The Waking Shores/0 47.91,83.32
step
talk Maribeth##187399
home Dragonscale Basecamp |goto The Waking Shores/0 47.75,83.25 |q 72397
step
talk Granpap Whiskers##187408
Meet the Catalogers Supplier |q 72397/2 |goto The Waking Shores/0 47.73,83.23
step
talk Pathfinder Jeb##187700
Meet the Explorers Supplier |q 72397/3 |goto The Waking Shores/0 47.33,83.40
step
talk Boss Magor##189065
Meet the Artisans Supplier |q 72397/4 |goto The Waking Shores/0 46.94,82.89
step
talk Cataloger Jakes##189226
|tip Inside the building.
Meet the Keeper of Renown |q 72397/5 |goto The Waking Shores/0 47.11,82.57
step
talk Toddy Whiskers##187276
|tip Inside the building.
turnin Orientation: Dragonscale Basecamp##72397 |goto The Waking Shores/0 47.22,82.73
step
talk Iyali##193500
accept Behavior Analysis "Homework"##69897 |goto The Waking Shores/0 45.91,81.45
accept Scientific Meat-thod##69898 |goto The Waking Shores/0 45.91,81.45
step
kill Pudgy Riverbeast##196017+
|tip They look like large hippos around this area.
collect Extra-Delicious Riverbeast Meat##194564 |q 69898/1 |goto The Waking Shores/0 47.62,76.82
step
use Wulferd's Award-Winning Camera##192465
|tip Stand nearby and use the {o}Catalog{} ability on your action bar while {o}looking at the Optimistic Whelp{}, after it jumps to take off flying.
|tip It looks like baby dragon.
|tip {o}If it's not here{}, either try to take a picture of it as it's flying around nearby, or {o}wait for it to run back{} to this location.
Photograph an Optimistic Whelp Learning to Fly |q 66524/2 |goto The Waking Shores/0 44.86,78.02
step
use Wulferd's Award-Winning Camera##192465
|tip Stand nearby and use the {o}Catalog{} ability on your action bar while {o}looking at a Hungry Proto-Drake{} when it is {o}near the water{}.
|tip It looks like a {o}large red dragon{} that {o}flies down to the water{} at this location.
|tip Take the picture after it grabs the fish.
|tip You may have to wait for it.
Photograph a Hungry Proto-Drake Catching a Fish |q 66524/3 |goto The Waking Shores/0 43.89,78.68
step
clicknpc Sleeping Whelp##196073
Pet the Sleeping Whelp |q 69897/1 |goto The Waking Shores/0 42.55,79.36 |count 1
step
clicknpc Sleeping Whelp##196073
Pet the Sleeping Whelp |q 69897/1 |goto The Waking Shores/0 42.40,82.57 |count 2
step
use Wulferd's Award-Winning Camera##192465
|tip Stand nearby and use the {o}Catalog{} ability on your action bar {o}while looking at the Proto-Dragon Egg{}.
|tip It looks like a large {o}grey spikey dragon egg{}.
|tip On the ground, near the water.
Photograph a Proto-Dragon Egg |q 66524/1 |goto The Waking Shores/0 43.43,82.80
step
clicknpc Sleeping Whelp##196073
Pet the Sleeping Whelp |q 69897/1 |goto The Waking Shores/0 43.53,84.96 |count 3
step
talk Iyali##193500
Select  _"<Report whelp behavior.>"_ |gossip 55294
Tell  _"One whelpling enjoyed being petted."_ |gossip 106987
Select  _"<Report more whelp behavior.>"_ |gossip 106990
Tell  _"One whelping bit me and flew away."_ |gossip 106988
Select  _"<Finish report.>"_ |gossip 107710
Report Back to Iyali |q 69897/2 |goto The Waking Shores/0 45.91,81.44
step
talk Iyali##193500
turnin Behavior Analysis "Homework"##69897 |goto The Waking Shores/0 45.91,81.44
turnin Scientific Meat-thod##69898 |goto The Waking Shores/0 45.91,81.44
accept Secret Research##69899 |goto The Waking Shores/0 45.91,81.44
step
Watch the dialogue
Listen to Iyali |q 69899/1 |goto The Waking Shores/0 45.91,81.45
step
click Explorer's Crate
Break the Crate Open |q 69899/2 |goto The Waking Shores/0 45.91,81.45
step
Watch the dialogue
Supervise the Kids |q 69899/3 |goto The Waking Shores/0 45.96,81.44
step
talk Iyali##193500
Select _"This creature is too injured. We need a researcher to help."_ |gossip 107291
Select  _"<Agree to Iyali's terms.>"_ |gossip 107292
Watch the dialogue
Convince Iyali to Accept Help |q 69899/4 |goto The Waking Shores/0 45.91,81.42
step
talk Tyrgon##192298
turnin Secret Research##69899 |goto The Waking Shores/0 45.95,81.49
accept Identifying the Source##69900 |goto The Waking Shores/0 45.95,81.49
accept Bring In the Expert##69901 |goto The Waking Shores/0 45.95,81.49
step
kill Trakhan##193783 |q 69900/1 |goto The Waking Shores/0 44.52,80.37
step
click Sunlight Flower
|tip It looks like a {o}small green plant with orange flowers{}.
|tip On top of the cliff.
|tip {o}Watch out{} for the {o}elite enemy{} nearby.
Collect the Sunlight Flower |q 69901/1 |goto The Waking Shores/0 43.46,83.03 |count 1
step
click Sunlight Flower
|tip It looks like a {o}small green plant with orange flowers{}.
|tip On top of the cliff.
|tip {o}Watch out{} for the {o}elite enemy{} nearby.
Collect the Sunlight Flower |q 69901/1 |goto The Waking Shores/0 43.04,79.44 |count 2
step
click Sunlight Flower
|tip It looks like a {o}small green plant with orange flowers{}.
|tip On the side of the cliff.
Collect the Sunlight Flower |q 69901/1 |goto The Waking Shores/0 42.05,77.61 |count 3
step
click Sunlight Flower
|tip It looks like a {o}small green plant with orange flowers{}.
Collect the Sunlight Flower |q 69901/1 |goto The Waking Shores/0 40.56,80.03 |count 4
step
click Sunlight Flower
|tip It looks like a {o}small green plant with orange flowers{}.
|tip On top of the cliff.
Collect the Sunlight Flower |q 69901/1 |goto The Waking Shores/0 38.67,82.27 |count 5
step
talk Cataloger Wulferd##193740
turnin Amateur Protography##66524 |goto The Waking Shores/0 39.02,83.24
accept Competitive Protography##66525 |goto The Waking Shores/0 39.02,83.24
step
talk Dervishian##193954
accept Preserving the Wilds##66526 |goto The Waking Shores/0 39.09,83.27
stickystart "Free_Proto_Whelps_Or_Proto_Drakes"
step
use Wulferd's Award-Winning Camera##192465
|tip Use the {o}Catalog{} ability on your action bar {o}while looking at the Infused Proto-Drake{}.
|tip It looks like a {o}large grey dragon{} that {o}flies in a circle nearby{}.
Photograph an Infused Proto-Drake |q 66525/2 |goto The Waking Shores/0 39.66,84.37
step
use Wulferd's Award-Winning Camera##192465
|tip Stand nearby and use the {o}Catalog{} ability on your action bar {o}while looking at the Infused Proto-Dragon Eggs{}.
|tip They look like large black and white spikey dragon eggs.
Photograph an Infused Proto-Dragon Egg |q 66525/1 |goto The Waking Shores/0 40.62,85.23
step
label "Free_Proto_Whelps_Or_Proto_Drakes"
Kill Primalist enemies around this area
Free #5# Proto-Whelps or Proto-Drakes |q 66526/1 |goto The Waking Shores/0 40.62,85.23
You can find more around: |notinsticky
[38.54,81.19]
[40.43,78.80]
'|kill Earthbound Primalist##193795, Windborne Primalist##189485
step
talk Dervishian##193954
turnin Preserving the Wilds##66526 |goto The Waking Shores/0 39.09,83.27
step
talk Cataloger Wulferd##193740
turnin Competitive Protography##66525 |goto The Waking Shores/0 39.02,83.24
accept Professional Protography##66527 |goto The Waking Shores/0 39.02,83.24
step
Jump on the Vertical Enhancement Apparatus |q 66527/1 |goto The Waking Shores/0 38.94,83.39
|tip Walk onto the large metal spring.
|tip You will be shot up to the top of the pillar.
step
use Wulferd's Award-Winning Camera##192465
|tip Use the {o}Catalog{} ability on your action bar {o}while looking at the Slumbering Proto-Dragon{} nearby.
|tip It looks like a {o}large dragon sleeping{}.
|tip On top of the pillar.
|tip The dragon will knock you off the pillar after you take the picture.
Photograph the Slumbering Proto-Dragon |q 66527/2 |goto The Waking Shores/0 38.77,84.04
step
talk Cataloger Wulferd##193740
turnin Professional Protography##66527 |goto The Waking Shores/0 39.02,83.23
step
talk Dervishian##193954
accept King Without a Crown##66528 |goto The Waking Shores/0 39.09,83.27
step
click Proto-Dragon Charred Foreclaw##378979
Investigate the Charred Foreclaw |q 66528/2 |goto The Waking Shores/0 38.84,83.49
step
click Proto-Dragon Severed Spine##379001
Investigate the Severed Spine |q 66528/1 |goto The Waking Shores/0 39.14,83.94
step
click Proto-Dragon Cracked Rib##378998
Investigate the Cracked Rib |q 66528/3 |goto The Waking Shores/0 39.39,84.03
step
talk Dervishian##193954
turnin King Without a Crown##66528 |goto The Waking Shores/0 39.09,83.27
accept A Thousand Words##66529 |goto The Waking Shores/0 39.09,83.27
step
Watch the dialogue
|tip {o}Dervishian{} walks to this location.
use Wulferd's Award-Winning Camera##192465
|tip Use the {o}Catalog{} ability on your action bar {o}while looking at Dervishian{} as she stands next to the dragon skull nearby.
Photograph Dervishian Near the Proto-Dragon Skeleton |q 66529/1 |goto The Waking Shores/0 38.72,83.69
step
talk Dervishian##189484
turnin A Thousand Words##66529 |goto The Waking Shores/0 38.72,83.69
step
talk Tyrgon##192298
turnin Identifying the Source##69900 |goto The Waking Shores/0 45.95,81.49
turnin Bring In the Expert##69901 |goto The Waking Shores/0 45.95,81.49
accept Theory in Practice##69902 |goto The Waking Shores/0 45.95,81.49
step
clicknpc Injured Proto-Whelpling##193547
Watch the dialogue
Treat the Whelpling |q 69902/1 |goto The Waking Shores/0 45.91,81.45
step
talk Tyrgon##192298
Select _"<Name proto-dragon whelp.>"_ |gossip 107424
Select _"Lord Firegiggle"_ |gossip 107419
Name the Whelpling |q 69902/2 |goto The Waking Shores/0 45.95,81.49
step
talk Tyrgon##192298
turnin Theory in Practice##69902 |goto The Waking Shores/0 45.95,81.49
step
talk Scout Kuvaeth##190273
accept Disastrous Detour##69896 |goto The Waking Shores/0 63.58,61.77
step
talk Tallevia Mistsong##192484
fpath Life Vault Ruins |goto The Waking Shores/0 65.03,57.36
step
talk Elementalist Taiyang##188735
turnin Disastrous Detour##69896 |goto The Waking Shores/0 66.06,58.13
accept Site Salvage##66435 |goto The Waking Shores/0 66.06,58.13
accept Unearthed Troublemakers##66436 |goto The Waking Shores/0 66.06,58.13
stickystart "Accept_A_Key_Element"
stickystart "Slay_Earth_Elementals"
step
talk Beleaguered Explorer##189089
Select _"Go to the vault. You'll be safe there."_ |gossip 54942
Rescue the Explorer |q 66435/1 |goto The Waking Shores/0 67.16,58.31 |count 1
step
talk Beleaguered Explorer##189089
Select _"Go to the vault. You'll be safe there."_ |gossip 54942
Rescue the Explorer |q 66435/1 |goto The Waking Shores/0 67.51,59.62 |count 2
step
talk Beleaguered Explorer##189089
|tip Inside the crumbled building.
Select _"Go to the vault. You'll be safe there."_ |gossip 54942
Rescue the Explorer |q 66435/1 |goto The Waking Shores/0 67.92,58.82 |count 3
step
talk Beleaguered Explorer##189089
Select _"Go to the vault. You'll be safe there."_ |gossip 54942
Rescue the Explorer |q 66435/1 |goto The Waking Shores/0 67.54,57.96 |count 4
step
talk Beleaguered Explorer##189089
Select _"Go to the vault. You'll be safe there."_ |gossip 54942
Rescue the Explorer |q 66435/1 |goto The Waking Shores/0 67.81,57.37 |count 5
step
label "Accept_A_Key_Element"
Kill enemies around this area
|tip They look like rock and stone elementals.
|tip You can find them all around the Life Vault Ruins area. |notinsticky
collect Orb of Primal Stone##191904 |n
|tip You will eventually accept this quest after looting.
accept A Key Element##66437 |goto The Waking Shores/0 67.37,57.37
'|kill Unsettled Rubble##189795, Displaced Earth##187393
step
label "Slay_Earth_Elementals"
Kill enemies around this area |notinsticky
|tip They look like rock and stone elementals. |notinsticky
|tip You can find them all around the Life Vault Ruins area. |notinsticky
Slay #12# Earth Elementals |q 66436/1 |goto The Waking Shores/0 67.37,57.37
'|kill Unsettled Rubble##189795, Displaced Earth##187393
step
talk Elementalist Taiyang##190352
|tip Inside the building.
turnin Site Salvage##66435 |goto The Waking Shores/0 66.59,56.08
turnin Unearthed Troublemakers##66436 |goto The Waking Shores/0 66.59,56.08
turnin A Key Element##66437 |goto The Waking Shores/0 66.59,56.08
accept Distilled Effort##66441 |goto The Waking Shores/0 66.59,56.08
step
talk Acadia Chistlestone##188053
|tip Inside the building.
accept Rapid Fire Plans##66439 |goto The Waking Shores/0 66.62,56.05
step
talk Examiner Tae'shara Bloodwatcher##188503
|tip Inside the building.
accept Lofty Goals##66438 |goto The Waking Shores/0 66.57,56.11
step
talk Scout Ri'tal##190334
Select _"Where is the orb now?"_ |gossip 55167
Speak to Scout Ri'tal |q 66438/1 |goto The Waking Shores/0 70.62,63.15
step
talk Scout Francisco##190423
Select _"Where is it now?"_ |gossip 55168
Speak to Scout Francisco |q 66438/2 |goto The Waking Shores/0 70.13,61.53
step
Walk to this location to launch across the chasm |goto The Waking Shores/0 69.17,61.70 < 7 |walk
click Orb of Primal Gales##377189
|tip It looks like a white orb.
collect Orb of Primal Gales##192524 |q 66438/3 |goto The Waking Shores/0 68.27,61.52
step
talk Keshki##191011
turnin Huddle at the Hollow##66828 |goto The Waking Shores/0 65.33,63.68
accept Hornswoggled!##66830 |goto The Waking Shores/0 65.33,63.68
step
use the Jar of Fireflies##193918
|tip Use it near {o}Bullied Frogs{}.
|tip They will {o}become Pacified Frogs{}.
|tip They look like green frogs.
clicknpc Pacified Frog##190981+
Collect #8# Pacified Frogs |q 66830/1 |goto The Waking Shores/0 66.22,64.03
step
talk Keshki##191011
turnin Hornswoggled!##66830 |goto The Waking Shores/0 65.34,63.68
accept Home Is Where the Frogs Are##66831 |goto The Waking Shores/0 65.34,63.68
stickystart "Collect_Fiery_Spirits"
step
Kill enemies around this area
collect 8 Primal Flame Fragment##192545+ |n
use the Primal Flame Fragment##192545+
Form the Orb of Primal Flames |q 66439/2 |goto The Waking Shores/0 68.91,64.65
'|kill Primalist Magmashaper##190186, Destructive Flames##188174, Ashen Spark##190528
step
label "Collect_Fiery_Spirits"
Kill enemies around this area
|tip They look like fire and lava elementals. |notinsticky
Collect #3# Fiery Spirits |q 67100/2 |goto The Waking Shores/0 68.91,64.65
|tip Only Fiery Spirits with {o}at least 2 bronze diamonds{} on the {o}item picture{} will count for the quest goal.
'|kill Primalist Magmashaper##190186, Destructive Flames##188174, Ashen Spark##190528 |notinsticky
step
talk Zikkori##196820
accept Drainage Solutions##70994 |goto The Waking Shores/0 70.50,56.84
stickystart "Siphon_Glittery_Streams"
step
kill Acequian##187617
|tip It looks like a large steam elemental.
|tip Inside the cave.
collect Orb of Primal Waves##192562 |q 66441/1 |goto The Waking Shores/0 72.20,56.71
step
label "Siphon_Glittery_Streams"
use Zikkori's Water Siphoning Device##200747
|tip Use it on {o}Glittery Streams{}.
|tip They look like water elementals.
|tip Inside the cave.
Siphon #8# Glittery Streams |q 70994/1 |goto The Waking Shores/0 72.20,56.71
'|clicknpc Glittery Stream##197763
step
talk Zikkori##196820
turnin Drainage Solutions##70994 |goto The Waking Shores/0 70.50,56.84
step
talk Elementalist Taiyang##190352
|tip Inside the building.
turnin Lofty Goals##66438 |goto The Waking Shores/0 66.59,56.08
turnin Rapid Fire Plans##66439 |goto The Waking Shores/0 66.59,56.08
turnin Distilled Effort##66441 |goto The Waking Shores/0 66.59,56.08
accept Let's Get Theoretical##66442 |goto The Waking Shores/0 66.59,56.08
step
talk Elementalist Taiyang##190352
|tip Inside the building.
Select _"I'm ready."_ |gossip 54908
Watch the dialogue
Test the Fire and Air Orbs |q 66442/1 |goto The Waking Shores/0 66.59,56.08
step
Watch the dialogue
|tip Inside the building.
|tip Use the {o}Test the Orb of Primal Stone{} ability.
|tip It appears as a button on the screen.
Watch the dialogue
Destroy the Barrier |q 66442/2 |goto The Waking Shores/0 66.56,56.06
step
talk Elementalist Taiyang##197860
|tip She runs to this location.
|tip Inside the building.
turnin Let's Get Theoretical##66442 |goto The Waking Shores/0 66.51,55.96
accept Beyond the Barrier##66447 |goto The Waking Shores/0 66.51,55.96
step
kill Discordant Watcher##189149 |q 66447/1 |goto The Waking Shores/0 65.97,55.20
|tip It looks like a large human statue.
|tip She will {o}become hostile{} when you get near her.
|tip Inside the building.
step
click Fragmented Dragon Record
|tip Inside the building.
collect Fragmented Record Rubbing##192480 |q 66447/2 |goto The Waking Shores/0 66.11,54.94
step
talk Elementalist Taiyang##190354
turnin Beyond the Barrier##66447 |goto The Waking Shores/0 65.86,57.47
step
talk Crabtender Kad'irsza##196827
accept Crabtender's Quandry##66612 |goto The Waking Shores/0 59.74,51.22
step
talk Ru'kroszk##193304
accept Gills with Gall##71141 |goto The Waking Shores/0 59.70,51.22
stickystart "Slay_Gorlocs"
step
Enter the cave |goto The Waking Shores/0 59.01,47.14 < 30 |walk |only if not subzone("Cliffdrip Cave")
kill Murghurgl the Invader##197211 |q 71141/1 |goto The Waking Shores/0 57.98,46.32
|tip He looks like a green gremlin riding on a crab.
|tip Inside this cave.
step
label "Slay_Gorlocs"
Kill Cliffdrip enemies around this area
|tip They look like various colored gremlins.
|tip Inside and outside the cave.
Slay #12# Gorlocs |q 66612/1 |goto The Waking Shores/0 59.01,47.14
'|kill Cliffdrip Fallstriker##189815, Cliffdrip Snapstrider##189812, Cliffdrip Wavemender##189814
step
talk Crabtender Kad'irsza##196827
turnin Crabtender's Quandry##66612 |goto The Waking Shores/0 59.74,51.22
step
talk Ru'kroszk##193304
turnin Gills with Gall##71141 |goto The Waking Shores/0 59.70,51.22
step
talk Pana##192472
fpath Uktulut Pier |goto The Waking Shores/0 45.84,27.47
step
talk Thomas Bright##192574
turnin A Gift for Miguel##67100 |goto The Waking Shores/0 60.23,72.19
step
clicknpc Croaking Frog Carrier##191489
|tip It looks like a wooden crate.
Release the Frogs |q 66831/1 |goto The Waking Shores/0 60.24,66.46
step
talk Keshki##190868
turnin Home Is Where the Frogs Are##66831 |goto The Waking Shores/0 60.19,66.39
step
Enter the building on the ground |goto The Waking Shores/0 57.73,67.05 < 20 |walk
talk Kolgar Flameguard##194801
|tip Inside the building.
accept Untold Regrets##70239 |goto The Waking Shores/0 58.67,67.78
step
talk Bathoras##194805
|tip If you want to hear the story, follow Kolgar Flameguard as he walks.
Tell him  _"This orc needs your help urgently. <Skip current conversation.>"_ |gossip 106935
Walk with Duroz and Kolgar |q 70239/1 |goto The Waking Shores/0 57.37,65.68
step
talk Bathoras##194805
turnin Untold Regrets##70239 |goto The Waking Shores/0 57.37,65.68
accept Pain Management##70240 |goto The Waking Shores/0 57.37,65.68
step
talk Vaeros##190525
turnin Nursery Direction##66997 |goto The Waking Shores/0 55.26,63.47
accept Leave Bee Alone##66734 |goto The Waking Shores/0 55.26,63.47
accept Just a Trim##66735 |goto The Waking Shores/0 55.26,63.47
stickystart "Bag_Bothersome_Bees"
stickystart "Collect_Blooming_Shallowlilies"
stickystart "Collect_Milky_Snapflowers"
stickystart "Prune_Overgrown_Shrubs"
step
use Empty Life Pools Vial##198673
|tip Use it next to the water.
collect Filled Life Pools Vial##198674 |q 70240/3 |goto The Waking Shores/0 55.89,64.37
step
label "Bag_Bothersome_Bees"
use Smoke Diffuser##193064
|tip Use it on {o}Bothersome Bees{}.
|tip They look like {o}large bees{}.
|tip They will attack you.
|tip {o}Fight them, but don't kill them{}, they will eventually {o}become clickable{}.
clicknpc Bothersome Bee##190543+
Bag #8# Bothersome Bees |q 66734/1 |goto The Waking Shores/0 56.21,64.59
step
label "Collect_Blooming_Shallowlilies"
click Blooming Shallowlily+
|tip They look like {o}small green lilypads{} in the water.
collect 3 Blooming Shallowlily##198668 |q 70240/2 |goto The Waking Shores/0 56.21,64.59
step
label "Collect_Milky_Snapflowers"
click Milky Snapflower+
|tip They look like {o}plants{} with long stalks and {o}white flower petals{}.
collect 5 Milky Snapflower##198666 |q 70240/1 |goto The Waking Shores/0 56.21,64.59
step
label "Prune_Overgrown_Shrubs"
click Overgrown Shrub+
|tip They look like {o}large green bushes{}.
|tip You will be attacked.
Prune #5# Overgrown Shrubs |q 66735/1 |goto The Waking Shores/0 56.21,64.59
step
Relocate the Bothersome Bees |q 66734/2 |goto The Waking Shores/0 56.92,70.51
|tip Use the {o}Bee Free!{} ability.
|tip It appears as a button on the screen.
step
talk Bathoras##194805
Select _"I have gathered the components for you."_ |gossip 56408
Give the Components to Bathoras |q 70240/4 |goto The Waking Shores/0 57.37,65.68
step
Watch the dialogue
|tip Bathoras will give you a potion.
collect Medicative Potion##200109 |q 70240/5 |goto The Waking Shores/0 57.37,65.68
step
talk Duroz Scaletaker##194800
turnin Pain Management##70240 |goto The Waking Shores/0 56.81,64.50
step
talk Vaeros##190525
turnin Leave Bee Alone##66734 |goto The Waking Shores/0 55.26,63.47
turnin Just a Trim##66735 |goto The Waking Shores/0 55.26,63.47
step
talk Adazius##190533
accept A Better Start##66737 |goto The Waking Shores/0 55.19,63.70
step
_NOTE:_
During the Next Steps
|tip When you {o}plant each seed{}, a {o}dialogue will happen{} before the quest goal completes.
|tip You {o}don't have to wait{} and watch it.
|tip If you want, you can {o}manually skip{} to the next step {o}each time{}, and {o}start running to the next location{}.
|tip The quest {o}goals will complete as you move{} to the next location.
Click Here to Continue |confirm |q 66737
step
click Fertile Soil##291206
|tip It looks like a pile of brown dirt.
Watch the dialogue
Mature the Seed |q 66737/1 |goto The Waking Shores/0 55.66,64.61 |count 1
step
click Fertile Soil##291206
|tip It looks like a pile of brown dirt.
Watch the dialogue
Mature the Seed |q 66737/1 |goto The Waking Shores/0 56.03,66.37 |count 2
step
click Fertile Soil##291206
|tip It looks like a pile of brown dirt.
Watch the dialogue
Mature the Seed |q 66737/1 |goto The Waking Shores/0 56.41,66.01 |count 3
step
click Fertile Soil##291206
|tip It looks like a pile of brown dirt.
Watch the dialogue
Mature the Seed |q 66737/1 |goto The Waking Shores/0 57.29,64.72 |count 4
step
click Fertile Soil##291206
|tip It looks like a pile of brown dirt.
Watch the dialogue
Mature the Seed |q 66737/1 |goto The Waking Shores/0 56.86,63.70 |count 5
step
click Fertile Soil##291206
|tip It looks like a pile of brown dirt.
Watch the dialogue
Mature the Seed |q 66737/1 |goto The Waking Shores/0 55.73,63.73 |count 6
step
talk Adazius##190533
turnin A Better Start##66737 |goto The Waking Shores/0 55.20,63.70
step
talk Dazakros##191280
turnin Hornstrider Havoc##66879 |goto The Waking Shores/0 53.42,58.37
accept Deluge Dilemma##66892 |goto The Waking Shores/0 53.42,58.37
accept Beaky Reclamation##66893 |goto The Waking Shores/0 53.42,58.37
stickystart "Slay_Water_Elementals"
step
use the Pungent Salve##194434
|tip Use it on {o}Injured Hornstriders{}.
|tip They look like {o}two-legged dinosaurs{}.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
Heal #8# Injured Hornstriders |q 66893/1 |goto The Waking Shores/0 52.50,56.54
'|clicknpc Injured Hornstrider##191338
step
label "Slay_Water_Elementals"
Kill enemies around this area
|tip They look like water elementals and oozes.
Slay #12# Water Elementals |q 66892/1 |goto The Waking Shores/0 52.50,56.54
'|kill Frenzied Ripple##191364, Ensnaring Current##191328, Encroaching Downpour##191324
step
talk Dazakros##191280
turnin Deluge Dilemma##66892 |goto The Waking Shores/0 53.43,58.37
turnin Beaky Reclamation##66893 |goto The Waking Shores/0 53.43,58.37
step
talk Ingot##185627
accept Punching Up##65687 |goto The Waking Shores/0 39.43,48.33
accept A Cultist's Misgivings##65690 |goto The Waking Shores/0 39.43,48.33
stickystart "Slay_Worldbreaker_Dragonkin"
step
Locate Ayasanth |q 65690/1 |goto The Waking Shores/0 37.43,46.66
step
talk Ayasanth##185628
|tip Inside a wooden cage.
turnin A Cultist's Misgivings##65690 |goto The Waking Shores/0 37.43,46.66
accept Under Lock and Key##65782 |goto The Waking Shores/0 37.43,46.66
step
kill Worldbreaker Guard##185594+
Obtain a Key from Worldbreaker Guards |q 65782/1 |goto The Waking Shores/0 37.50,47.73
step
label "Slay_Worldbreaker_Dragonkin"
Kill Worldbreaker enemies around this area
|tip They look like dragon people.
Slay #12# Worldbreaker Dragonkin |q 65687/1 |goto The Waking Shores/0 37.50,47.73
'|kill Worldbreaker Smith##185591, Worldbreaker Guard##185594, Worldbreaker Cultist##185595, Worldbreaker Brute##185589, Worldbreaker Shapist##185593
step
click Worldbreaker Cell##381224
|tip It looks like a wooden cage.
Unlock Ayasanth's Cell |q 65782/2 |goto The Waking Shores/0 37.43,46.66
step
Watch the dialogue
talk Ingot##185627
|tip He walks to this location.
turnin Punching Up##65687 |goto The Waking Shores/0 37.33,46.64
step
talk Ayasanth##185628
turnin Under Lock and Key##65782 |goto The Waking Shores/0 37.34,46.61
accept The Shadow of His Wings##65691 |goto The Waking Shores/0 37.34,46.61
step
Enter the cave |goto The Waking Shores/0 35.61,47.95 < 20 |walk |only if not (subzone("Smoldering Perch") and _G.IsIndoors())
Watch the dialogue
|tip Downstairs inside the cave.
|tip You will be attacked.
Confront Cygenoth the Corrupted |q 65691/1 |goto The Waking Shores/0 35.01,45.46
step
kill Cygenoth##185660 |q 65691/2 |goto The Waking Shores/0 35.01,45.46
|tip Downstairs inside the cave.
step
Follow the path up and leave the cave |goto The Waking Shores/0 35.61,47.95 < 20 |walk |only if subzone("Smoldering Perch") and _G.IsIndoors()
talk Ayasanth##185628
|tip Up on the cliff.
turnin The Shadow of His Wings##65691 |goto The Waking Shores/0 39.56,48.41
step
Watch the dialogue
talk Wrathion##186274
turnin Wrathion Awaits##66079 |goto The Waking Shores/0 42.47,66.84
step
talk Scalecommander Emberthal##192795
accept Lessons from Our Past##72241 |goto The Waking Shores/0 42.47,66.78
step
talk Scalecommander Emberthal##192795
Select _"Tell me of the dracthyr's origins."_ |gossip 107399
Speak with Scalecommander Emberthal to Learn of Past Events |q 72241/1 |goto The Waking Shores/0 42.47,66.78
step
talk Scalecommander Emberthal##192795
turnin Lessons from Our Past##72241 |goto The Waking Shores/0 42.47,66.78
accept Best Plans and Intentions##66048 |goto The Waking Shores/0 42.47,66.78
step
talk Wrathion##186274
accept Sharp Practice##66078 |goto The Waking Shores/0 42.47,66.84
stickystart "Test_Blacktalon"
step
talk Do-Yeon Shadowrider##188444
fpath Obsidian Bulwark |goto The Waking Shores/0 42.26,66.25
step
talk Fao the Relentless##186331
Select _"Might we review the battle plans?"_ |gossip 55311
Click Here After Talking to Fao the Relentless |confirm |goto The Waking Shores/0 42.41,66.18 |q 66048
step
click Blacktalon Battle Plans##377111
|tip They look like brown pieces of paper on a table.
|tip Inside the tent.
Consult Fao the Relentless |q 66048/1 |goto The Waking Shores/0 42.40,66.06
step
talk Forgemaster Bazentus##186493
|tip He walks around this area.
Select _"Tell me about the weapons in the Citadel."_ |gossip 55309
Select _"Thank you for the information."_ |gossip 55310
Consult Forgemaster Bazentus |q 66048/4 |goto The Waking Shores/0 42.83,66.85
step
talk Archivist Edress##187466
Select _"What has your research found?"_ |gossip 55307
Watch the dialogue
Consult Archivist Edres |q 66048/2 |goto The Waking Shores/0 43.76,67.28
step
talk Talonstalker Kavia##189507
|tip On the edge of the cliff, overlooking the valley below.
Select _"What have you observed?"_ |gossip 54996
Click Here After Talking to Talonstalker Kavia |confirm |goto The Waking Shores/0 42.30,69.29 |q 66048
step
click Scouting Scope##376824
Consult Talonstalker Kavia |q 66048/3 |goto The Waking Shores/0 42.22,69.32
step
label "Test_Blacktalon"
talk Blacktalon NPC+ |talk Blacktalon Assassin##187189, Blacktalon Avenger##187187
|tip Only Blacktalon Avengers and Assassins will work for the quest goal.
Select _"I'm here to test your combat skills."_ |gossip 54628
|tip They will attack you.
|tip Defeat them to test them.
Test #8# Blacktalons |q 66078/1 |goto The Waking Shores/0 42.56,67.92
step
talk Wrathion##186274
turnin Best Plans and Intentions##66048 |goto The Waking Shores/0 42.47,66.84
turnin Sharp Practice##66078 |goto The Waking Shores/0 42.47,66.84
step
Watch the dialogue
talk Wrathion##186274
accept Talon Strike##65956 |goto The Waking Shores/0 42.47,66.84
accept No Time For Heroes##65957 |goto The Waking Shores/0 42.47,66.84
step
_NOTE:_
During the Next Steps
|tip Use the {o}Blacktalon Marker{} ability on enemies.
|tip It appears as a button on the screen.
|tip It will {o}stun the enemies{} and {o}summon allies{} to help you fight.
Click Here to Continue |confirm |q 65957
stickystart "Disrupt_The_Djaradin_Defenses"
step
kill Piercer Gigra##186511 |q 65957/1 |goto The Waking Shores/0 35.47,68.52
|tip On top of the building.
step
kill Olphis the Molten##181875 |q 65957/3 |goto The Waking Shores/0 34.81,66.87
|tip He looks like a large black and orange mammoth.
step
kill Modak Flamespit##186509 |q 65957/2 |goto The Waking Shores/0 35.69,60.74
|tip On top of the building.
step
label "Disrupt_The_Djaradin_Defenses"
Kill enemies around this area
click Siege Arbalest+
|tip They look like {o}large ballista machines{}.
click Djaradin Banner+
|tip They look like {o}banner poles, topped with dragon skulls and red banners{} hanging from them.
kill Molten Extracts##186716+
|tip They look like various large {o}brown pottery jars{}.
Disrupt the Djaradin Defenses |q 65956/1 |goto The Waking Shores/0 36.47,67.85
'|kill Qalashi Boltthrower##189557, Qalashi Ironskin##191524, Qalashi Boltthrower##189557, Qalashi Necksnapper##186109, Qalashi Steelcrafter##186483, Qalashi Crustshaper##186638, Qalashi Boltthrower##189557, Qalashi Skullhauler##186239
step
talk Wrathion##186681
turnin Talon Strike##65956 |goto The Waking Shores/0 33.99,61.29
turnin No Time For Heroes##65957 |goto The Waking Shores/0 33.99,61.29
accept The Courage of One's Convictions##65939 |goto The Waking Shores/0 33.99,61.29
step
talk Wrathion##186681
Select _"I am ready to begin the assault."_ |gossip 55405
Speak with Wrathion to Begin the Assault |q 65939/1 |goto The Waking Shores/0 33.99,61.29
step
Reach the Obsidian Citadel |complete subzone("Obsidian Citadel") |goto The Waking Shores/0 33.13,61.95 |q 65939
|tip On the bridge.
step
Enter the Obsidian Citadel |q 65939/2 |goto The Waking Shores/0 30.47,60.84
stickystart "Slay_Qalashi_Forces"
step
talk Wrathion##186933
|tip He flies to this location.
accept Taking the Walls##66044 |goto The Waking Shores/0 29.15,58.83
step
talk Wrathion##186933
Select _"I am ready to assist you."_ |gossip 54627
Assist Wrathion |q 66044/1 |goto The Waking Shores/0 29.15,58.83
step
Begin Flying with Wrathion |invehicle |goto The Waking Shores/0 29.15,58.83 |q 66044
step
Fly with Wrathion |outvehicle |goto The Waking Shores/0 27.15,58.09 |q 66044 |notravel
|tip He will drop you on top of the wall.
step
click Siege Arbalist
|tip It looks like a large ballista machine.
|tip On top of the wall.
Destroy the South Siege Arbalast |q 66044/2 |goto The Waking Shores/0 26.83,59.94
step
talk Wrathion##186935
|tip On top of the wall.
Meet Wrathion on the Wall |invehicle |goto The Waking Shores/0 26.77,61.20 |q 66044
step
Fly with Wrathion |outvehicle |goto The Waking Shores/0 29.63,62.37 |q 66044 |notravel
|tip He will drop you on top of the wall.
step
click Siege Arbalist
|tip It looks like a large ballista machine.
|tip On top of the wall.
Destroy the East Siege Arbalast |q 66044/3 |goto The Waking Shores/0 29.51,61.00
step
talk Wrathion##186935
|tip On top of the wall.
Meet Wrathion on the Wall |invehicle |goto The Waking Shores/0 29.05,61.82 |q 66044
step
Fly with Wrathion |outvehicle |goto The Waking Shores/0 27.72,55.55 |q 66044 |notravel
|tip He will drop you on the platform.
step
click Siege Arbalist
|tip It looks like a large ballista machine.
Destroy the North Siege Arbalast |q 66044/4 |goto The Waking Shores/0 27.76,56.54
step
kill Champion Choruk##186592 |q 66044/5 |goto The Waking Shores/0 26.92,57.14
|tip He walks around this area, riding a black and yellow mammoth.
step
label "Slay_Qalashi_Forces"
Kill enemies around this area
|tip You can find them all around the Obsidian Citadel area. |notinsticky
Slay #12# Qalashi Forces |q 65939/3 |goto The Waking Shores/0 26.59,57.97
'|kill Qalashi Necksnapper##186892, Qalashi Gatecrasher##186915, Djaradin Flametamer##195187, Qalashi Crustshaper##191597, Qalashi Flamelobber##189768, Qalashi Skullhauler##190116, Qalashi Boltthrower##190079, Qalashi Boltthrower##189734
step
talk Wrathion##196265
turnin The Courage of One's Convictions##65939 |goto The Waking Shores/0 26.43,58.77
turnin Taking the Walls##66044 |goto The Waking Shores/0 26.43,58.77
accept Obsidian Oathstone##66049 |goto The Waking Shores/0 26.43,58.77
step
talk Wrathion##187045
Select _"Is that the Oathstone?"_ |gossip 55423
Speak with Wrathion at the Oathstone |q 66049/1 |goto The Waking Shores/0 27.30,62.58
step
click Obsidian Oathstone##376917
|tip It looks like a large stone monument.
Examine the Oathstone |q 66049/2 |goto The Waking Shores/0 27.62,63.33
step
Watch the dialogue
talk Wrathion##187045
turnin Obsidian Oathstone##66049 |goto The Waking Shores/0 27.30,62.58
step
talk Forgemaster Bazentus##186493
accept A Shattered Past##66055 |goto The Waking Shores/0 27.25,62.79
stickystart "Collect_Oathstone_Fragments"
step
Enter the Vaults Beneath the Citadel |q 66055/1 |goto The Waking Shores/0 27.11,60.82
|tip Enter the building and run down the stairs.
step
label "Collect_Oathstone_Fragments"
click Oathstone Fragment+
|tip They look like {o}large pieces of the stone monument{}.
|tip Downstairs inside the building.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
collect 12 Oathstone Fragment##191131 |q 66055/2 |goto The Waking Shores/0 24.74,58.26
step
Run up the stairs and leave the building |goto The Waking Shores/0 27.16,60.87 < 15 |walk |only if subzone("Obsidian Citadel") and _G.IsIndoors()
talk Forgemaster Bazentus##186493
turnin A Shattered Past##66055 |goto The Waking Shores/0 27.25,62.80
accept Forging A New Future##66056 |goto The Waking Shores/0 27.25,62.80
step
click Earth-Warder's Forge##377013
Activate the Earth-Warder's Forge |q 66056/1 |goto The Waking Shores/0 24.63,60.88
step
kill Animated Cindershards##189875+
|tip They look like {o}rock elementals{}.
click Cindershard Coal##377012+
|tip They look like {o}piles of grey stones{}.
|tip An {o}enemy may spawn{} when you click them.
collect 6 Cindershard Coal##192548 |q 66056/2 |goto The Waking Shores/0 24.90,60.88
step
talk Forgemaster Bazentus##186493
turnin Forging A New Future##66056 |goto The Waking Shores/0 24.68,61.12
accept The Spark##66354 |goto The Waking Shores/0 24.68,61.12
step
click Oathstone Fragments##378433+
Place the Fragments on the Forge |q 66354/1 |goto The Waking Shores/0 24.56,60.90
step
Watch the dialogue
Repair the Fragments |q 66354/2 |goto The Waking Shores/0 24.56,60.90
step
click Reformed Oathstone Fragments##377026
Collect the Reformed Pieces |q 66354/3 |goto The Waking Shores/0 24.56,60.90
step
talk Forgemaster Bazentus##186493
turnin The Spark##66354 |goto The Waking Shores/0 24.68,61.12
accept Restoring the Faith##66057 |goto The Waking Shores/0 24.68,61.12
step
talk Wrathion##187045
Select _"You can now repair the Obsidian Oathstone."_ |gossip 56143
Speak with Wrathion |q 66057/1 |goto The Waking Shores/0 27.30,62.58
step
Watch the dialogue
clicknpc Wrathion##191669
Travel with Wrathion to the Throne |q 66057/2 |goto The Waking Shores/0 27.09,62.21
step
Begin Flying with Wrathion |invehicle |goto The Waking Shores/0 27.09,62.21 |q 66057
step
Fly with Wrathion |outvehicle |goto The Waking Shores/0 25.45,56.74 |q 66057 |notravel
|tip He will bring you to the upper platform.
step
Approach Wrathion and Sabellian |q 66057/3 |goto The Waking Shores/0 25.09,56.45
|tip On the upper platform.
step
talk Wrathion##187495
turnin Restoring the Faith##66057 |goto The Waking Shores/0 24.44,55.50
accept Claimant to the Throne##66780 |goto The Waking Shores/0 24.44,55.50
step
talk Sabellian##185894
accept Heir Apparent##66779 |goto The Waking Shores/0 24.25,55.87
step
talk Forgemaster Bazentus##193464
Select _"What can you tell me about Sabellian?"_ |gossip 55566
Speak with Bazentus |q 66779/2 |goto The Waking Shores/0 24.38,57.83
step
talk Baskilan##188158
Select _"What can you tell me about Sabellian?"_ |gossip 55358
Speak with Baskilian |q 66779/1 |goto The Waking Shores/0 24.31,58.90
step
talk Foehn Breezeskimmer##188336
fpath Obsidian Throne |goto The Waking Shores/0 25.27,56.83
step
talk Archivist Edress##193456
Select _"What can you tell me about Sabellian?"_ |gossip 55564
Speak with Archivist Edress |q 66779/3 |goto The Waking Shores/0 25.11,56.24
step
talk Archivist Edress##193456
Select _"What can you tell me about Wrathion?"_ |gossip 55565
Speak with Archivist Edress |q 66780/3 |goto The Waking Shores/0 25.11,56.24
step
talk Archivist Edress##193456
accept Neltharus: Secrets Within##72135 |goto The Waking Shores/0 25.11,56.24
step
talk Left##191710
Select _"What can you tell me about Wrathion?"_ |gossip 55355
Speak with Left and Right |q 66780/2 |goto The Waking Shores/0 25.01,55.19
step
talk Talonstalker Kavia##191600
|tip She walks around this area.
Select _"What can you tell me about Wrathion?"_ |gossip 55354
Speak with Talonstalker Kavia |q 66780/1 |goto The Waking Shores/0 26.35,54.45
step
talk Wrathion##187495
turnin Claimant to the Throne##66780 |goto The Waking Shores/0 24.43,55.49
step
talk Sabellian##185894
turnin Heir Apparent##66779 |goto The Waking Shores/0 24.24,55.88
accept Black Wagon Flight##65793 |goto The Waking Shores/0 24.24,55.88
step
talk Hjorik##192493
|tip On top of the mountain.
fpath Apex Observatory |goto The Waking Shores/0 23.79,83.14
step
talk Nulia##192494
|tip On the beach, next to the water.
fpath Uktulut Outpost |goto The Waking Shores/0 17.51,88.70
step
talk Sabellian##190937
Select _"Let's get moving."_ |gossip 55381
Speak with Sabellian to Begin Moving the Eggs |q 65793/2 |goto The Waking Shores/0 43.83,66.43
step
Watch the dialogue
|tip Follow the {o}wagon{} and {o}protect it{}.
|tip They eventually travel to this location.
Escort the Wagon |q 65793/3 |goto The Waking Shores/0 52.26,66.82 |notravel
'|clicknpc Sabellian##191640
step
talk Sabellian##190740
|tip Up on the platform.
turnin Black Wagon Flight##65793 |goto The Waking Shores/0 57.96,67.31
accept The Last Eggtender##66785 |goto The Waking Shores/0 57.96,67.31
step
talk Mother Elion##185904
turnin The Last Eggtender##66785 |goto The Waking Shores/0 61.60,68.71
accept Egg-cited for the Future##66788 |goto The Waking Shores/0 61.60,68.71
stickystart "Sweep_Fallen_Leaves"
stickystart "Pull_Overgrown_Weeds"
step
clicknpc Ruby Shrineguard##191126
Polish the Ruby Shrineguard |q 66788/3 |goto The Waking Shores/0 61.44,69.02
step
label "Sweep_Fallen_Leaves"
click Fallen Leaves##377230
|tip They look like {o}piles of red and brown leaves{}.
Sweep #2# Fallen Leaves |q 66788/1 |goto The Waking Shores/0 61.53,68.57
step
label "Pull_Overgrown_Weeds"
click Overgrown Weeds##377231
|tip They look like {o}green ferns{}.
|tip {o}After clicking{} them, {o}run away from them{} to pull them out of the ground.
Pull #3# Overgrown Weeds |q 66788/2 |goto The Waking Shores/0 61.53,68.57
step
talk Mother Elion##185904
turnin Egg-cited for the Future##66788 |goto The Waking Shores/0 61.60,68.71
accept Life-Binder on Duty##65791 |goto The Waking Shores/0 61.60,68.71
step
talk Alexstrasza the Life-Binder##185905
turnin Life-Binder on Duty##65791 |goto The Waking Shores/0 62.34,73.02
accept A Charge of Care##65794 |goto The Waking Shores/0 62.34,73.02
step
talk Alexstrasza the Life-Binder##185905
Select _"I am ready."_ |gossip 55380
Empower the Ruby Oathstone |q 65794/1 |goto The Waking Shores/0 62.34,73.02
step
talk Alexstrasza the Life-Binder##193377
turnin A Charge of Care##65794 |goto The Waking Shores/0 61.56,68.56
accept Next Steppes##65795 |goto The Waking Shores/0 61.56,68.56
step
talk Ambassador Taurasza##185878
turnin Next Steppes##65795 |goto The Waking Shores/0 48.27,88.67
step
|next "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)"	|only if completedq(72293)
|next "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Ohn'ahran Plains (Full Zone)"		|only if not completedq(72293)
step
label "All_Scouting_Map_Quests_Complete"
_NOTE:_
You Finished All Scouting Map Quests
|tip You have completed all of the Scouting Map quests for all of the zones in the Dragon Isles.
|tip This guide is finished, please choose another guide.
Click Here to Continue |confirm
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Ohn'ahran Plains (Full Zone)",{
author="support@zygorguides.com",
},[[
step
talk Ambassador Taurasza##185878
turnin Ohn'ahran Plains##72267 |goto The Waking Shores/0 48.27,88.67 |only if haveq(72267) or completedq(72267)
accept Into the Plains##65779 |goto The Waking Shores/0 48.27,88.67
step
talk Scout Tomul##185882
turnin Into the Plains##65779 |goto Ohn'ahran Plains/0 77.72,23.94
accept Proving Oneself##65780 |goto Ohn'ahran Plains/0 77.72,23.94
step
kill Blazing Proto-Dragon##185883 |q 65780/1 |goto Ohn'ahran Plains/0 78.57,27.12
|tip He is {o}elite{}, but the {o}centaurs{} nearby will {o}help you{} fight.
step
talk Scout Tomul##185882
turnin Proving Oneself##65780 |goto Ohn'ahran Plains/0 78.63,25.39
accept Welcome at Our Fire##65783 |goto Ohn'ahran Plains/0 78.63,25.39
step
talk Apprentice Ehri##186653
|tip She walks around this small area.
accept Sole Supplier##65951 |goto Ohn'ahran Plains/0 84.34,25.00
step
talk Farrier Roscha##186650
accept Thieving Gorlocs##65950 |goto Ohn'ahran Plains/0 84.40,25.02
step
talk Muqur Rain-Touched##194904
|tip Inside the building.
accept Nergazurai##70319 |goto Ohn'ahran Plains/0 84.53,25.34
step
talk Scout Tomul##185882
turnin Welcome at Our Fire##65783 |goto Ohn'ahran Plains/0 85.32,25.42
accept The Shikaar##70174 |goto Ohn'ahran Plains/0 85.32,25.42
step
Watch the dialogue
talk Sansok Khan##181217
Select _"I need to speak to the leader of the green dragonflight."_ |gossip 56190
Speak to Sansok Khan |q 70174/1 |goto Ohn'ahran Plains/0 85.74,25.33
step
talk Sansok Khan##181217
turnin The Shikaar##70174 |goto Ohn'ahran Plains/0 85.74,25.33
accept Making Introductions##65801 |goto Ohn'ahran Plains/0 85.74,25.33
accept Supplies for the Journey##65802 |goto Ohn'ahran Plains/0 85.74,25.33
step
click Bundle of Pelts
|tip Inside the building.
Gather the Camp Provisions |q 65802/2 |goto Ohn'ahran Plains/0 86.17,25.31 |count 1
stickystart "Collect_Feralbloom_Pods"
step
talk Aru##186176
Select _"I am {_G.UnitName("player")}. I will be joining your clan for the Khural."_ |gossip 55270
Speak to Aru and Belika |q 65801/2 |goto Ohn'ahran Plains/0 85.76,26.60
step
click Basket of Dried Fish
Gather the Camp Provisions |q 65802/2 |goto Ohn'ahran Plains/0 84.31,27.18 |count 2
step
talk Beastmaster Nuqut##186183
Select _"I am {_G.UnitName("player")}. Will you be joining the caravan to the Khural?"_ |gossip 55228
Speak to Beastmaster Nuqut |q 65801/3 |goto Ohn'ahran Plains/0 83.92,25.87
step
click Crate of Horseshoes
Gather the Camp Provisions |q 65802/2 |goto Ohn'ahran Plains/0 84.34,24.91 |count 3
step
talk Flightmaster Baqir##184630
fpath Timberstep Outpost |goto Ohn'ahran Plains/0 85.28,24.10
step
label "Collect_Feralbloom_Pods"
click Medicinal Feralbloom##377122+
|tip They look like large round {o}orange flowers{} with tall {o}green stalks{}.
collect 5 Feralbloom Pod##192812 |q 65802/1 |goto Ohn'ahran Plains/0 84.95,25.16
step
click Weapon Rack
Gather the Camp Provisions |q 65802/2 |goto Ohn'ahran Plains/0 84.37,23.12 |count 4
step
talk Scout Tomul##185882
|tip Inside the building.
turnin Supplies for the Journey##65802 |goto Ohn'ahran Plains/0 84.69,22.81
step
talk Ohn Seshteng##184595
Select _"I am {_G.UnitName("player")}. I will be joining your clan for the Khural."_ |gossip 54838
Speak to Ohn Seshteng |q 65801/1 |goto Ohn'ahran Plains/0 85.63,20.85
stickystart "Collect_Vulture_Gizzard"
step
Kill enemies around this area
|tip They look like {o}brown tigers with scales{} on their backs.
collect Rockfang Femur##198793 |q 70319/2 |goto Ohn'ahran Plains/0 85.58,15.84
'|kill Sutaan##188274, Ravenous Rockfang##185903
step
label "Collect_Vulture_Gizzard"
kill Ravine Vulture##190943+
|tip They look like {o}brown birds{}.
collect Vulture Gizzard##198794 |q 70319/4 |goto Ohn'ahran Plains/0 85.58,15.84
step
kill Swift Hornstrider##188089+
|tip They look like raptor plainstriders.
collect Hornstrider Scale##198795 |q 70319/3 |goto Ohn'ahran Plains/0 77.12,20.61
step
kill Clearwater Ottuk##192854+
|tip They look like {o}otters with horns{}.
collect Ottuk Heart##198792 |q 70319/1 |goto Ohn'ahran Plains/0 75.39,24.59
stickystart "Collect_Shikaar_Supplies"
step
Find Khasar |q 65951/1 |goto Ohn'ahran Plains/0 80.56,30.74
step
talk Khasar##186649
turnin Sole Supplier##65951 |goto Ohn'ahran Plains/0 80.56,30.74
step
label "Collect_Shikaar_Supplies"
Kill Mudfin enemies around this area
collect 30 Shikaar Supplies##191541 |q 65950/1 |goto Ohn'ahran Plains/0 81.63,30.55
'|kill Mudfin Salamancer##186669, Mudfin Mudrunner##186690, Mudfin Shaman##186679
step
talk Khasar##186649
turnin Thieving Gorlocs##65950 |goto Ohn'ahran Plains/0 80.56,30.74
accept The Ora-cull##65953 |goto Ohn'ahran Plains/0 80.56,30.74
accept Release the Hounds##65954 |goto Ohn'ahran Plains/0 80.56,30.74
accept A Centaur's Best Friend##65955 |goto Ohn'ahran Plains/0 80.56,30.74
stickystart "Collect_Mudfin_Totems"
step
click Khasar's Cage
Free Khasar |q 65955/1 |goto Ohn'ahran Plains/0 80.56,30.74
step
clicknpc Batu##187841
Collect the Bakar Collar |q 65954/2 |goto Ohn'ahran Plains/0 80.62,30.68 |count 1
step
click Bakar Cage
Free the Bakar |q 65954/1 |goto Ohn'ahran Plains/0 81.25,31.70 |count 1
step
click Bakar Cage
Free the Bakar |q 65954/1 |goto Ohn'ahran Plains/0 81.12,29.77 |count 2
step
click Bakar Cage
Free the Bakar |q 65954/1 |goto Ohn'ahran Plains/0 81.43,29.72 |count 3
step
click Bakar Cage
Free the Bakar |q 65954/1 |goto Ohn'ahran Plains/0 82.21,30.22 |count 4
step
clicknpc Sarnai##187067
Collect the Bakar Collar |q 65954/2 |goto Ohn'ahran Plains/0 82.20,30.43 |count 2
step
click Bakar Cage
Free the Bakar |q 65954/1 |goto Ohn'ahran Plains/0 82.36,30.57 |count 5
step
label "Collect_Mudfin_Totems"
kill Mudfin Shaman##186679+
|tip They look like {o}blue gremlins{}.
collect 4 Mudfin Totem##191143 |q 65953/1 |goto Ohn'ahran Plains/0 81.47,30.83
step
Enter the cave |goto Ohn'ahran Plains/0 83.00,31.92 < 20 |walk |only if not (subzone("Mudfin Village") and _G.IsIndoors())
click Baba's Cage
|tip It looks like a wooden cage.
|tip Inside the cave.
Free Baba |q 65955/2 |goto Ohn'ahran Plains/0 83.37,32.41
step
Watch the dialogue
talk Khasar##186649
|tip He walks to this location.
|tip Inside the cave.
turnin The Ora-cull##65953 |goto Ohn'ahran Plains/0 83.44,32.32
turnin Release the Hounds##65954 |goto Ohn'ahran Plains/0 83.44,32.32
turnin A Centaur's Best Friend##65955 |goto Ohn'ahran Plains/0 83.44,32.32
accept A Chief of Legends##65952 |goto Ohn'ahran Plains/0 83.44,32.32
step
kill Chief Grrlgllmesh##186678 |q 65952/1 |goto Ohn'ahran Plains/0 82.08,31.48
collect Medallion of a Fallen Friend##191127 |n
|tip You will automatically accept the quest after looting the item.
accept Medallion of a Fallen Friend##66005 |goto Ohn'ahran Plains/0 82.08,31.48
step
Enter the cave |goto Ohn'ahran Plains/0 83.00,31.92 < 20 |walk |only if not (subzone("Mudfin Village") and _G.IsIndoors())
talk Khasar##186649
|tip Inside the cave.
turnin A Chief of Legends##65952 |goto Ohn'ahran Plains/0 83.44,32.32
turnin Medallion of a Fallen Friend##66005 |goto Ohn'ahran Plains/0 83.44,32.32
accept The Sole Mender##65949 |goto Ohn'ahran Plains/0 83.44,32.32
accept Return to Roscha##66006 |goto Ohn'ahran Plains/0 83.44,32.32
step
click Shikaar Supplies
|tip Inside the cave.
Retrieve the Supplies |q 66006/1 |goto Ohn'ahran Plains/0 83.51,32.14
step
talk Muqur Rain-Touched##194904
|tip Inside the building.
turnin Nergazurai##70319 |goto Ohn'ahran Plains/0 84.53,25.34
step
talk Farrier Roscha##186650
turnin The Sole Mender##65949 |goto Ohn'ahran Plains/0 84.40,25.02
turnin Return to Roscha##66006 |goto Ohn'ahran Plains/0 84.40,25.02
step
talk Scout Tomul##185882
|tip Inside the building.
turnin Making Introductions##65801 |goto Ohn'ahran Plains/0 84.69,22.81
accept Toward the City##65803 |goto Ohn'ahran Plains/0 84.69,22.81
step
talk Scout Tomul##185882
Select _"I'm ready to go."_ |gossip 55267
Meet with the Caravan |q 65803/1 |goto Ohn'ahran Plains/0 83.15,23.74
step
Arrive at the First Stop |q 65803/3 |goto Ohn'ahran Plains/0 75.67,31.68
|tip You can {o}fly directly{} here, you {o}don't need to follow the caravan{}.
|tip If you do follow the caravan, however, they will tell you stories as they walk.
step
talk Scout Tomul##185882
turnin Toward the City##65803 |goto Ohn'ahran Plains/0 75.67,31.68
accept For Food and Rivalry##65804 |goto Ohn'ahran Plains/0 75.67,31.68
step
click Mysterious Paw Print
accept Mysterious Beast##70185 |goto Ohn'ahran Plains/0 76.74,31.89
step
talk Malakesh##196259
fpath Rusza'thar Reach |goto Ohn'ahran Plains/0 84.66,36.89
step
kill Konkhular##194544
|tip Inside the small cave.
collect Pelt of Konkhular##198517 |q 70185/1 |goto Ohn'ahran Plains/0 78.28,35.21
step
Kill enemies around this area
|tip They look like various animals.
collect 30 Fresh Game Meat##191100 |q 65804/1 |goto Ohn'ahran Plains/0 77.15,31.09
'|kill Sunhide Stomphoof##187960, Fleecepelt Argali##187975, Plainswalker Mammoth##187938, Plainswalker Calf##187939, Plainswalker Bull##187937
step
talk Scout Tomul##185882
turnin For Food and Rivalry##65804 |goto Ohn'ahran Plains/0 75.67,31.68
turnin Mysterious Beast##70185 |goto Ohn'ahran Plains/0 75.67,31.68
accept By Broken Road##65940 |goto Ohn'ahran Plains/0 75.67,31.68
step
Arrive at the Second Stop |q 65940/2 |goto Ohn'ahran Plains/0 69.96,37.97
|tip You can {o}fly directly{} here, you {o}don't need to follow the caravan{}.
|tip If you do follow the caravan, however, they will tell you stories as they walk.
step
talk Ohn Seshteng##184595
turnin By Broken Road##65940 |goto Ohn'ahran Plains/0 69.96,37.97
accept Connection to Ohn'ahra##65805 |goto Ohn'ahran Plains/0 69.96,37.97
stickystart "Collect_River_Reeds"
stickystart "Collect_Fowl_Tailfeathers"
step
kill Mudwalker Salamanther##190961+
|tip They look like large {o}yellow lizards with green fins{}.
collect Salamanther Heart##191103 |q 65805/3 |goto Ohn'ahran Plains/0 69.75,38.00
step
label "Collect_River_Reeds"
click River Reeds+
|tip They look like {o}brown and yellow plants{} near the edge of the water.
collect 4 River Reeds##191101 |q 65805/1 |goto Ohn'ahran Plains/0 69.75,38.00
step
label "Collect_Fowl_Tailfeathers"
click Jadethroat Mallard##190708+
|tip They look like {o}brown birds with green heads{}.
|tip They are on the ground, and flying in the air.
|tip They may attack you.
|tip You can also just {o}kill them{}, if you get no feathers by clicking them.
collect 8 Fowl Tailfeathers##191102 |q 65805/2 |goto Ohn'ahran Plains/0 69.75,38.00
step
talk Ohn Seshteng##184595
turnin Connection to Ohn'ahra##65805 |goto Ohn'ahran Plains/0 69.96,37.97
accept Omens on the Wind##66848 |goto Ohn'ahran Plains/0 69.96,37.97
step
talk Ohn Seshteng##184595
Select _"I am ready."_ |gossip 64063
Speak to Ohn Seshteng |q 66848/1 |goto Ohn'ahran Plains/0 69.96,37.97
step
click Ohn'ir Totem
Place the Totem |q 66848/2 |goto Ohn'ahran Plains/0 69.98,37.66 |count 1
step
click Ohn'ir Totem
Place the Totem |q 66848/2 |goto Ohn'ahran Plains/0 69.93,37.54 |count 2
step
click Ohn'ir Totem
Place the Totem |q 66848/2 |goto Ohn'ahran Plains/0 69.87,37.63 |count 3
step
Watch the dialogue
Complete the Ritual |q 66848/3 |goto Ohn'ahran Plains/0 69.87,37.63
step
talk Ohn Seshteng##184595
|tip She walks to this location.
turnin Omens on the Wind##66848 |goto Ohn'ahran Plains/0 69.97,37.97
step
talk Sansok Khan##181217
accept Maruukai##65806 |goto Ohn'ahran Plains/0 70.02,38.02
step
talk Hunter Narman##191924
accept Bloodlines, Sweets, and Teerai##70739 |goto Ohn'ahran Plains/0 63.62,40.47
step
talk Flightmaster Salukan##191263
fpath Maruukai |goto Ohn'ahran Plains/0 62.96,42.13
step
talk Beastmaster Tirren##195524
accept Trouble In The Pines##65837 |goto Ohn'ahran Plains/0 61.98,41.81
step
Arrive in Maruukai |q 65806/2 |goto Ohn'ahran Plains/0 61.64,39.80
step
talk Sansok Khan##191283
turnin Maruukai##65806 |goto Ohn'ahran Plains/0 61.44,39.51
accept Clan Teerai##66016 |goto Ohn'ahran Plains/0 61.44,39.51
accept Clan Ohn'ir##66017 |goto Ohn'ahran Plains/0 61.44,39.51
accept Clan Nokhud##66018 |goto Ohn'ahran Plains/0 61.44,39.51
accept Orientation: Maruukai##72429 |goto Ohn'ahran Plains/0 61.44,39.51
step
Watch the dialogue
talk Scout Tomul##191485
|tip She walks to this location.
turnin Clan Nokhud##66018 |goto Ohn'ahran Plains/0 60.38,40.70
step
talk Guard Bahir##186940
accept Unwelcome Outsider##66021 |goto Ohn'ahran Plains/0 60.30,40.76
step
talk Nokhud NPCs
|tip They look like centaurs around this area.
Select _"Let's spar."_ |gossip 55277
|tip They will attack you.
|tip They will eventually surrender.
|tip You can also {o}attack them without talking{} to them.
Defeat #6# Nokhud Centaurs |q 66021/1 |goto Ohn'ahran Plains/0 59.30,42.02
'|talk Nokhud Fighter##187297, Nokhud Spearthrower##191570, Nokhud Brute##187299
step
talk Qariin Dotur##186941
turnin Clan Teerai##66016 |goto Ohn'ahran Plains/0 59.16,37.61
accept Honoring Our Ancestors##66019 |goto Ohn'ahran Plains/0 59.16,37.61
step
click Raw Game Meat
Gather the Raw Game Meat |q 66019/1 |goto Ohn'ahran Plains/0 59.39,37.81
step
click Raw Game Meat
Place the Raw Game Meat |q 66019/2 |goto Ohn'ahran Plains/0 59.13,37.57
step
click Jar of Spices
Gather the Jar of Spices |q 66019/3 |goto Ohn'ahran Plains/0 59.31,37.29
step
Apply the Jar of Spices |q 66019/4 |goto Ohn'ahran Plains/0 59.13,37.57
|tip Use the {o}Apply Jar of Spices{} ability.
|tip It appears as a button on the screen.
step
click Basket of Spices
Gather the Basket of Spices |q 66019/5 |goto Ohn'ahran Plains/0 59.39,37.36
step
Apply the Basket of Spices |q 66019/6 |goto Ohn'ahran Plains/0 59.13,37.57
|tip Use the {o}Apply Basket of Spices{} ability.
|tip It appears as a button on the screen.
step
click Pot of Spices
Gather the Pot of Spices |q 66019/7 |goto Ohn'ahran Plains/0 59.05,37.90
step
Apply the Pot of Spices |q 66019/8 |goto Ohn'ahran Plains/0 59.13,37.57
|tip Use the {o}Apply Cauldron of Spices{} ability.
|tip It appears as a button on the screen.
step
click Spiced Game Meat
Pick Up the Spiced Game Meat |q 66019/9 |goto Ohn'ahran Plains/0 59.12,37.57
step
Cook the Spiced Game Meat |q 66019/10 |goto Ohn'ahran Plains/0 58.89,37.28
|tip Use the {o}Roasting{} ability.
|tip It appears as a button on the screen.
step
click Spiced Game Meat
Place the Offering |q 66019/11 |goto Ohn'ahran Plains/0 59.16,37.10
step
talk Qariin Dotur##186941
turnin Honoring Our Ancestors##66019 |goto Ohn'ahran Plains/0 59.16,37.62
step
talk Elder Odgerel##196449
|tip Inside the building.
Select  _"<Ask about Narman's proposal.>"_ |gossip 106779
Consult Elder Odgerel |q 70739/1 |goto Ohn'ahran Plains/0 60.04,37.39
step
talk Quartermaster Huseng##196707
|tip Inside the building.
Meet the Renown Quartermaster |q 72429/2 |goto Ohn'ahran Plains/0 60.40,37.72
step
talk Agari Dotur##185179
|tip Inside the building.
Meet the Keeper of Renown |q 72429/1 |goto Ohn'ahran Plains/0 60.40,37.66
step
talk Agari Dotur##185179
|tip Inside the building.
turnin Orientation: Maruukai##72429 |goto Ohn'ahran Plains/0 60.40,37.66
step
talk Windsage Kven##195239
|tip Inside the building.
accept Emberwatch##70337 |goto Ohn'ahran Plains/0 62.12,36.44
step
talk Hearthkeeper Erden##194928
|tip Inside the building.
buy Honey Plum Tart##199918 |q 70739/2 |goto Ohn'ahran Plains/0 62.17,35.69
step
talk Windsage Dawa##190192
accept Shikaar Giver##70730 |goto Ohn'ahran Plains/0 62.82,35.44
step
talk Ohn Seshteng##191595
|tip Inside the building.
turnin Clan Ohn'ir##66017 |goto Ohn'ahran Plains/0 63.00,33.67
accept Omens and Incense##66020 |goto Ohn'ahran Plains/0 63.00,33.67
step
talk Windsage Ordven##195302
|tip Outside, next to the building.
accept A Disgruntled Initiate##65906 |goto Ohn'ahran Plains/0 63.12,34.04
step
click Sweetsuckle+
|tip They look like {o}small pink and purple flowers{}.
collect Sweetsuckle Bloom##191160+ |n
use the Sweetsuckle Bloom##191160+
|tip You need {o}5 of them{} before you can use them.
collect Sweetsuckle Incense##198981 |q 66020/1 |goto Ohn'ahran Plains/0 62.93,35.18
step
click Incense Burner
|tip Inside the building.
Burn the Sweetsuckle Incense |q 66020/2 |goto Ohn'ahran Plains/0 62.83,33.72
step
talk Ohn Seshteng##191595
|tip Inside the building.
turnin Omens and Incense##66020 |goto Ohn'ahran Plains/0 63.00,33.66
step
talk Ohn Arasara##192080
Select  _"<Ask about Dawa's proposal.>"_ |gossip 107074
Consult Ohn Arasara |q 70730/1 |goto Ohn'ahran Plains/0 63.85,35.90
step
talk Hearthkeeper Erden##194928
|tip Inside the building.
buy Yak Milk Pudding##199919 |q 70730/2 |goto Ohn'ahran Plains/0 62.17,35.69
step
talk Provisioner Zara##196437
Select _"I have brought you sweets on behalf of Windsage Dawa."_ |gossip 107058
Consult Provisioner Zara |q 70730/3 |goto Ohn'ahran Plains/0 63.55,41.08
step
talk Scout Tomul##191485
turnin Unwelcome Outsider##66021 |goto Ohn'ahran Plains/0 62.43,41.72
step
_Next to you:_
talk Aru##192724
accept Clans of the Plains##66969
step
talk Sansok Khan##191283
Report to Sansok Khan |q 66969/1 |goto Ohn'ahran Plains/0 61.44,39.51
step
talk Sansok Khan##191283
Select _"I am ready."_ |gossip 56528
Select _"Clan Teerai"_ |gossip 56515
Select _"Clan Ohn'ir"_ |gossip 56537
Select _"Clan Nokhud"_ |gossip 56549
Select _"Clan Shikaar"_ |gossip 56554
Answer #4# Questions Correctly |q 66969/2 |goto Ohn'ahran Plains/0 61.44,39.51
step
talk Sansok Khan##191283
turnin Clans of the Plains##66969 |goto Ohn'ahran Plains/0 61.44,39.51
step
Watch the dialogue
talk Gemisath##194927
|tip She walks to this location.
accept The Emissary's Arrival##66948 |goto Ohn'ahran Plains/0 61.03,40.44
step
talk Gemisath##194927
Select _"I am here to help restore the Green Oathstone."_ |gossip 56585
Offer Aid to the Green Dragonflight |q 66948/1 |goto Ohn'ahran Plains/0 61.03,40.44
step
talk Gemisath##194927
turnin The Emissary's Arrival##66948 |goto Ohn'ahran Plains/0 61.03,40.44
accept The Khanam Matra##66022 |goto Ohn'ahran Plains/0 61.03,40.44
step
talk Khansguard Akato##186942
|tip Outside, on top of the building.
Select _"I'm ready for my audience."_ |gossip 54895
Speak to Khansguard Akato |q 66022/1 |goto Ohn'ahran Plains/0 60.29,37.88
step
talk Khansguard Akato##186942
|tip Outside, on top of the building.
turnin The Khanam Matra##66022 |goto Ohn'ahran Plains/0 60.35,38.04
accept Trucebreakers##66023 |goto Ohn'ahran Plains/0 60.35,38.04
stickystart "Slay_Nokhud_Forces"
step
talk Scout Tomul##191485
accept Covering Their Tails##66024 |goto Ohn'ahran Plains/0 59.52,38.75
step
kill Guard Bahir##191843 |q 66024/1 |goto Ohn'ahran Plains/0 58.03,39.36
step
label "Slay_Nokhud_Forces"
Kill Nokhud enemies around this area
|tip They look like enemy centaurs.
Slay #10# Nokhud Forces |q 66023/1 |goto Ohn'ahran Plains/0 58.98,39.24
You can find more around [61.06,39.98]
'|kill Nokhud Reaver##187201, Nokhud Betrayer##187150, Nokhud Storm Adept##187149
step
talk Khansguard Akato##186942
|tip Outside, on top of the building.
turnin Trucebreakers##66023 |goto Ohn'ahran Plains/0 60.35,38.04
step
talk Khanam Matra Sarest##181198
|tip Outside, on top of the building.
turnin Covering Their Tails##66024 |goto Ohn'ahran Plains/0 60.32,38.07
accept The Nokhud Threat##66025 |goto Ohn'ahran Plains/0 60.32,38.07
step
Watch the dialogue
talk Khanam Matra Sarest##181198
|tip She walks to this location.
|tip Inside the building, on the top floor.
turnin The Nokhud Threat##66025 |goto Ohn'ahran Plains/0 60.00,37.47
accept Hooves of War##66201 |goto Ohn'ahran Plains/0 60.00,37.47
step
kill Old Arbhog##196897
|tip He looks like a {o}large black yak{}.
|tip He walks around this area.
collect Arbhog's Horns##200258 |q 70730/4 |goto Ohn'ahran Plains/0 57.23,42.70
step
talk Matchmaker Osila##196249
Select _"I have brought some sweets for you, matchmaker."_ |gossip 106837
Encourage the Matchmaker |q 70739/3 |goto Ohn'ahran Plains/0 55.36,38.37
step
click Burial Flowers+
|tip They look like {o}large white flowers{}.
collect 8 Burial Flower##201044 |q 70739/4 |goto Ohn'ahran Plains/0 56.44,40.67
step
click Burial Flowers
Make the Offering |q 70739/5 |goto Ohn'ahran Plains/0 56.79,38.77
step
talk Hunter Narman##191924
turnin Bloodlines, Sweets, and Teerai##70739 |goto Ohn'ahran Plains/0 63.62,40.47
step
talk Windsage Dawa##190192
turnin Shikaar Giver##70730 |goto Ohn'ahran Plains/0 62.82,35.44
accept After My Ohn Heart##70721 |goto Ohn'ahran Plains/0 62.82,35.44
step
talk Volebel##190049
fpath Emberwatch |goto Ohn'ahran Plains/0 66.78,25.17
step
talk Telemancer Aerilyn##190089
turnin Emberwatch##70337 |goto Ohn'ahran Plains/0 66.00,25.06
accept The Nelthazan Ruins##65890 |goto Ohn'ahran Plains/0 66.00,25.06
step
talk Skyscribe Adenedal##186300
turnin The Nelthazan Ruins##65890 |goto Ohn'ahran Plains/0 64.00,18.29
accept Tools of the Tirade##65891 |goto Ohn'ahran Plains/0 64.00,18.29
accept The Relic Inquiry##65893 |goto Ohn'ahran Plains/0 64.00,18.29
stickystart "Collect_Nelthazan_Artifact_Fragments"
step
click Waygate Rubble+
|tip They look like {o}piles of grey stone slabs{}.
Deploy #5# Tools |q 65891/1 |goto Ohn'ahran Plains/0 63.72,15.91
step
label "Collect_Nelthazan_Artifact_Fragments"
Kill enemies around this area
collect 60 Nelthazan Artifact Fragments##193375 |q 65893/1 |goto Ohn'ahran Plains/0 63.42,16.09
You can find more around [62.27,17.51]
'|kill Sundered Runebinder##186354, Tarasek Laborer##186319, Sundered Enforcer##186323
step
talk Skyscribe Adenedal##186300
turnin Tools of the Tirade##65891 |goto Ohn'ahran Plains/0 64.00,18.29
turnin The Relic Inquiry##65893 |goto Ohn'ahran Plains/0 64.00,18.29
accept Competing Company##65895 |goto Ohn'ahran Plains/0 64.00,18.29
step
kill Tserasor the Preserver##190598
|tip Inside the small crumbled building.
collect Map of Nelthazan Ruins##193355 |n
Find the Clue |q 65895/1 |goto Ohn'ahran Plains/0 62.93,18.66 |count 1
step
kill Sootscale the Indomitable##190307
|tip In the doorway of the crumbled building.
collect Shattered Ornament##193357 |n
Find the Clue |q 65895/1 |goto Ohn'ahran Plains/0 62.44,18.52 |count 2
step
click Remains of Keskahz
|tip It looks like a {o}dead brown dragon person{} on the ground.
|tip {o}Avoid the Proto-drake Eggs{}.
|tip If you {o}get too close{} to them, {o}enemies will appear{}.
collect Recruitment Roster##198078 |n
Find the Clue |q 65895/1 |goto Ohn'ahran Plains/0 61.72,18.61 |count 3
step
kill Malifron##190278
|tip He walks around this area.
collect Orders from Sarkareth##198079 |n
Find the Clue |q 65895/1 |goto Ohn'ahran Plains/0 62.77,16.28 |count 4
step
talk Skyscribe Adenedal##186300
|tip Inside the building.
turnin Competing Company##65895 |goto Ohn'ahran Plains/0 62.14,16.30
step
talk Skyscribe Adenedal##186300
|tip Inside the building.
accept One Step Backwards##66719 |goto Ohn'ahran Plains/0 62.14,16.30
|only if Evoker
step
use Adenedal's Tidy Purse##193376
Open Adenedal's Purse |q 66719/1
|only if Evoker
step
use Ancient Mana Gem##198351
Consume the Ancient Mana |q 66719/2
|only if Evoker
step
talk Skyscribe Adenedal##186300
|tip Inside the building.
turnin One Step Backwards##66719 |goto Ohn'ahran Plains/0 62.14,16.30
|only if Evoker
step
talk Skyscribe Adenedal##186300
|tip Inside the building.
accept Proto Problems##65898 |goto Ohn'ahran Plains/0 62.14,16.30
step
click The Black Locus
|tip On the platform, overlooking the valley.
|tip You will be attacked.
collect The Black Locus##193601 |q 65898/1 |goto Ohn'ahran Plains/0 60.60,17.37
kill Hypoxicron##186334 |q 65898/2 |goto Ohn'ahran Plains/0 61.33,17.37
step
talk Skyscribe Adenedal##191154
|tip Inside the building.
turnin Proto Problems##65898 |goto Ohn'ahran Plains/0 66.33,24.34
accept The Black Locus##66700 |goto Ohn'ahran Plains/0 66.33,24.34
step
talk Telemancer Aerilyn##190089
turnin The Black Locus##66700 |goto Ohn'ahran Plains/0 66.00,25.06
step
talk Hunter Narman##191924
Select _"Dawa is already headed towards the pond."_ |gossip 107089
Speak to Hunter Narman |q 70721/1 |goto Ohn'ahran Plains/0 63.62,40.47
step
Meet Narman and Dawa by the Water |q 70721/2 |goto Ohn'ahran Plains/0 46.70,60.47
|tip On top of the mountain, near a small pond.
step
Watch the dialogue
talk Hunter Narman##197011
|tip On top of the mountain, near a small pond.
turnin After My Ohn Heart##70721 |goto Ohn'ahran Plains/0 46.70,60.47
step
talk Khansguard Jebotai##187787
|tip Inside the building.
turnin Hooves of War##66201 |goto Ohn'ahran Plains/0 41.89,61.80
accept The Calm Before the Storm##66222 |goto Ohn'ahran Plains/0 41.89,61.80
step
talk Elder Yuvari##188224
accept Up to No-khud##66651 |goto Ohn'ahran Plains/0 40.93,61.63
step
talk Flightmaster Carseng##192865
fpath Teerakai |goto Ohn'ahran Plains/0 39.98,61.13
step
talk Initiate Zorig##188225
turnin Up to No-khud##66651 |goto Ohn'ahran Plains/0 39.05,66.02
accept Return to Mender##66652 |goto Ohn'ahran Plains/0 39.05,66.02
step
kill Tombcaller Ganzaya##188509
|tip He walks around this area.
Interrupt the Ritual |q 66652/1 |goto Ohn'ahran Plains/0 37.08,65.66
step
click Exhumed Spear
Retrieve the Spear |q 66652/2 |goto Ohn'ahran Plains/0 37.04,65.47
step
talk Initiate Zorig##188225
turnin Return to Mender##66652 |goto Ohn'ahran Plains/0 39.04,66.02
accept Desecrator Annihilator##66654 |goto Ohn'ahran Plains/0 39.04,66.02
accept Reagents of De-Necromancy##66655 |goto Ohn'ahran Plains/0 39.04,66.02
stickystart "Collect_Intact_Skulls"
stickystart "Collect_Clumps_Of_Sacred_Soil"
stickystart "Slay_Desecrating_Centaurs"
step
Kill enemies around this area
|tip They look like {o}centaurs{}.
Retrieve #3# Risen Hero's Weapons |q 66654/2 |goto Ohn'ahran Plains/0 34.92,66.84
'|kill Nokhud Desecrator##188511, Ukhel Gravestirrer##189928
step
label "Collect_Intact_Skulls"
Kill Risen enemies around this area
|tip They look like {o}blue ghost dogs and birds{}.
collect 4 Intact Skull##191901 |q 66655/1 |goto Ohn'ahran Plains/0 35.00,68.00
'|kill Risen Ohuna##189087, Risen Bakar##188510
step
label "Collect_Clumps_Of_Sacred_Soil"
click Disturbed Sacred Soil+
|tip They look like {o}piles of brown dirt{}.
collect 6 Clump of Sacred Soil##193257 |q 66655/2 |goto Ohn'ahran Plains/0 35.00,68.00
step
label "Slay_Desecrating_Centaurs"
Kill enemies around this area |notinsticky
|tip They look like {o}centaurs{}. |notinsticky
Slay #10# Desecrating Centaurs |q 66654/1 |goto Ohn'ahran Plains/0 34.92,66.84
'|kill Nokhud Desecrator##188511, Ukhel Gravestirrer##189928
step
talk Initiate Zorig##189858
turnin Desecrator Annihilator##66654 |goto Ohn'ahran Plains/0 33.75,65.35
turnin Reagents of De-Necromancy##66655 |goto Ohn'ahran Plains/0 33.75,65.35
accept Zambul, Head Vandal##69936 |goto Ohn'ahran Plains/0 33.75,65.35
step
kill Overseer Zambul##191145 |q 69936/1 |goto Ohn'ahran Plains/0 34.92,66.84
|tip He looks like a {o}larger centaur{}.
|tip He walks all around this area.
|tip He will appear on your {o}minimap{} as a {o}yellow dot{}.
step
talk Initiate Zorig##189858
turnin Zambul, Head Vandal##69936 |goto Ohn'ahran Plains/0 33.75,65.35
accept Definitely Eternal Slumber##66656 |goto Ohn'ahran Plains/0 33.75,65.35
step
kill Cathan the Determined##192224
|tip She looks like a {o}blue ghost centaur{}.
|tip She walks around this area.
|tip She will appear on your {o}minimap{} as a {o}yellow dot{}.
use the Totem of Respite##194447
|tip Use it on her {o}corpse{}.
Release Cathan's Spirit |q 66656/1 |goto Ohn'ahran Plains/0 31.17,68.99
step
kill Zaphil the Defiant##192223
|tip He looks like a {o}blue ghost centaur{}.
|tip He walks around this area.
|tip He will appear on your {o}minimap{} as a {o}yellow dot{}.
use the Totem of Respite##194447
|tip Use it on his {o}corpse{}.
Release Zaphil's Spirit |q 66656/2 |goto Ohn'ahran Plains/0 31.01,71.02
step
kill Ganmat the Wise##192226
|tip He looks like a {o}blue ghost centaur{}.
|tip He walks around this area.
|tip He will appear on your {o}minimap{} as a {o}yellow dot{}.
use the Totem of Respite##194447
|tip Use it on his {o}corpse{}.
Release Ganmat's Spirit |q 66656/3 |goto Ohn'ahran Plains/0 32.15,70.48
step
kill Dihar the Unyielding##192225
|tip She looks like a {o}blue ghost centaur{}.
|tip She walks around this area.
|tip She will appear on your {o}minimap{} as a {o}yellow dot{}.
use the Totem of Respite##194447
|tip Use it on her {o}corpse{}.
Release Dihar's Spirit |q 66656/4 |goto Ohn'ahran Plains/0 32.63,71.42
step
_Next to you:_
talk Initiate Zorig##193985
turnin Definitely Eternal Slumber##66656
accept And Stay Dead!##66657
step
Enter the cave |goto Ohn'ahran Plains/0 31.69,70.43 < 15 |walk
kill Tombcaller Arban##190047 |q 66657/1 |goto Ohn'ahran Plains/0 31.50,70.82
|tip He looks like a centaur.
|tip He walks around this area inside the cave.
step
Investigate Teera's Tomb |q 66657/2 |goto Ohn'ahran Plains/0 31.04,70.93
|tip Inside the cave.
step
Investigate Maruuk's Tomb |q 66657/3 |goto Ohn'ahran Plains/0 31.48,71.46
|tip Inside the cave.
step
_Next to you:_
talk Initiate Zorig##193985
turnin And Stay Dead!##66657
accept The Nokhud Offensive: Founders Keepers##66658
step
talk Scout Khenyug##189594
|tip Inside the hut.
Select _"Clan Nokhud has declared war on all Maruuk."_ |gossip 55139
Speak to Scout Khenyug |q 66222/4 |goto Ohn'ahran Plains/0 37.57,59.45
step
talk Herbalist Agura##188337
Select _"War is coming. Jebotai asks you to prepare for casualties."_ |gossip 87457
Speak to Herbalist Agura |q 66222/1 |goto Ohn'ahran Plains/0 38.48,57.41
step
talk Khansguard Hojin##190585
|tip He walks around this area.
Select _"Balakar has declared war on the Khanam Matra. Jebotai wants you to ready the khansguard."_ |gossip 56252
Speak to Khansguard Hojin |q 66222/3 |goto Ohn'ahran Plains/0 39.50,55.35
step
talk Quartermaster Gensai##189593
|tip Inside the hut.
Select _"Clan Nokhud has declared war. Jebotai asks that you provide provisions."_ |gossip 54937
Speak to Quartermaster Gensai |q 66222/2 |goto Ohn'ahran Plains/0 40.72,56.35
step
talk Elder Nazuun##190164
accept Land of the Apex##66687 |goto Ohn'ahran Plains/0 41.64,56.75
accept Signs of the Wind##66688 |goto Ohn'ahran Plains/0 41.64,56.75
step
click Fern Spores+
|tip They look like {o}green fern plants{}.
click Avian Feather+
|tip They look like {o}brown and white feathers{}.
Gather #8# Wind Tokens |q 66688/1 |goto Ohn'ahran Plains/0 44.60,54.19
You can find more around [46.43,52.17]
step
click Offering Vessel
turnin Signs of the Wind##66688 |goto Ohn'ahran Plains/0 49.35,49.53
step
talk Himia, The Blessed##190950
accept Himia, the Blessed##70374 |goto Ohn'ahran Plains/0 49.34,49.41
step
talk Himia, The Blessed##190950
Select _"I am ready."_ |gossip 56476
Kill the enemies that attack in waves
kill Earth Elemental##190173
Defeat the Elements |q 70374/1 |goto Ohn'ahran Plains/0 49.34,49.41
step
Kill Thunderspine enemies around this area
|tip They look like {o}large and small dinosaurs{}.
collect 2 Thunderspine Scale##193202 |q 66687/3 |goto Ohn'ahran Plains/0 50.49,50.20
'|kill Thunderspine Rumbler##192941, Thunderspine Crasher##191057
step
kill Spider Eggs##191083+
|tip They look like {o}white cocoon eggs{} next to walls.
|tip All throughout the cave.
kill Rustfang Creeper##187672+
|tip They look like {o}large spiders{}.
collect 10 Shadespinner's Web##193207 |q 66687/1 |goto Ohn'ahran Plains/0 43.63,48.10
step
Leave the cave |goto Ohn'ahran Plains/0 43.63,48.10 < 20 |walk |only if subzone("Deadsnare Caverns") and _G.IsIndoors()
Kill Nimblewing enemies around this area
|tip They look like {o}wolf dragons{}.
collect 2 Slyvern Talon##193206 |q 66687/2 |goto Ohn'ahran Plains/0 42.65,46.55
'|kill Nimblewing Striker##192938, Nimblewing Slyvern##191051
step
talk Elder Nazuun##190164
turnin Land of the Apex##66687 |goto Ohn'ahran Plains/0 41.64,56.75
turnin Himia, the Blessed##70374 |goto Ohn'ahran Plains/0 41.64,56.75
accept Rellen, the Learned##66834 |goto Ohn'ahran Plains/0 41.64,56.75
step
Enter the cave |goto Ohn'ahran Plains/0 40.35,57.41 < 15 |walk
click Offering Basket
|tip Inside the cave.
Watch the dialogue
Summon Rellen |q 66834/1 |goto Ohn'ahran Plains/0 40.11,57.86
step
click Torch
|tip Inside the cave.
Acquire a Torch |q 66834/2 |goto Ohn'ahran Plains/0 40.20,57.89
step
Watch the dialogue
|tip Use the {o}Witness Rellen{} ability.
|tip It appears as a button on the screen.
|tip Inside the cave.
Slay the Shadespinner |q 66834/3 |goto Ohn'ahran Plains/0 40.20,57.89
step
click Spear
|tip Inside the cave.
Acquire a Spear |q 66834/4 |goto Ohn'ahran Plains/0 40.06,57.77
step
Watch the dialogue
|tip Use the {o}Witness Rellen{} ability.
|tip It appears as a button on the screen.
|tip Inside the cave.
Slay the Thunderspine |q 66834/5 |goto Ohn'ahran Plains/0 40.06,57.77
step
click Bow
|tip Inside the cave.
Acquire a Bow |q 66834/6 |goto Ohn'ahran Plains/0 40.06,57.74
step
Watch the dialogue
|tip Use the {o}Witness Rellen{} ability.
|tip It appears as a button on the screen.
|tip Inside the cave.
Slay the Slyvern |q 66834/7 |goto Ohn'ahran Plains/0 40.06,57.74
step
talk Elder Nazuun##190164
turnin Rellen, the Learned##66834 |goto Ohn'ahran Plains/0 41.64,56.75
accept The Nokhud Offensive: The Final Ancestor##66690 |goto Ohn'ahran Plains/0 41.64,56.75
step
talk Khansguard Jebotai##187787
|tip Inside the building.
turnin The Calm Before the Storm##66222 |goto Ohn'ahran Plains/0 41.89,61.79
accept Boku the Mystic##70229 |goto Ohn'ahran Plains/0 41.89,61.79
step
talk Initiate Boku##186290
|tip On top of the hill.
turnin Boku the Mystic##70229 |goto Ohn'ahran Plains/0 36.81,57.27
accept Pessimistic Mystic##66254 |goto Ohn'ahran Plains/0 36.81,57.27
step
click Empowerment Totem
Place the Empowerment Totem |q 66254/1 |goto Ohn'ahran Plains/0 36.71,57.13 |count 1
step
click Empowerment Totem
Place the Empowerment Totem |q 66254/1 |goto Ohn'ahran Plains/0 36.66,57.71 |count 2
step
click Empowerment Totem
Place the Empowerment Totem |q 66254/1 |goto Ohn'ahran Plains/0 37.10,57.82 |count 3
step
click Empowerment Totem
Place the Empowerment Totem |q 66254/1 |goto Ohn'ahran Plains/0 37.20,57.26 |count 4
step
talk Initiate Boku##186290
turnin Pessimistic Mystic##66254 |goto Ohn'ahran Plains/0 36.81,57.27
accept Mystic Mystery##66224 |goto Ohn'ahran Plains/0 36.81,57.27
step
Meet Boku Outside Teerakai |q 66224/1 |goto Ohn'ahran Plains/0 44.56,61.96
step
click Boku's Belongings
Select  _"<Collect Boku's belongings.>"_ |gossip 56253
Collect Boku's Belongings |q 66224/2 |goto Ohn'ahran Plains/0 44.56,61.96
step
Search for Boku |q 66224/3 |goto Ohn'ahran Plains/0 46.52,63.25
step
clicknpc Unidentified Centaur##190486
Select  _"<Take the object.>"_ |gossip 55390
|tip You will be attacked.
Investigate the Unidentified Centaur |q 66224/4 |goto Ohn'ahran Plains/0 46.52,63.25
step
Continue Searching for Boku |q 66224/5 |goto Ohn'ahran Plains/0 49.31,63.22
step
talk Initiate Boku##187795
turnin Mystic Mystery##66224 |goto Ohn'ahran Plains/0 49.31,63.22
step
talk Tigari Khan##195316
accept Toting Totems##66225 |goto Ohn'ahran Plains/0 49.36,63.13
accept Taken By Storm##70195 |goto Ohn'ahran Plains/0 49.36,63.13
stickystart "Collect_Bundles_Of_Totems"
step
kill Shela the Windbinder##194884
Free Altan |q 70195/1 |goto Ohn'ahran Plains/0 48.90,69.04
collect Ridgewater Retreat Orders##198698 |q 70195/2 |goto Ohn'ahran Plains/0 48.90,69.04
step
label "Collect_Bundles_Of_Totems"
Kill Nokhud enemies around this area
collect 8 Bundle of Totems##193051 |q 66225/1 |goto Ohn'ahran Plains/0 49.94,67.40
'|kill Nokhud Mystic-Hunter##186295, Nokhud Marauder##186299, Nokhud Mystic-Hunter##190958
step
talk Tigari Khan##190648
turnin Toting Totems##66225 |goto Ohn'ahran Plains/0 49.36,63.12
turnin Taken By Storm##70195 |goto Ohn'ahran Plains/0 49.36,63.12
accept Catching Wind##66236 |goto Ohn'ahran Plains/0 49.36,63.12
step
talk Initiate Boku##187804
turnin Catching Wind##66236 |goto Ohn'ahran Plains/0 58.11,68.97
accept Weather Control##66242 |goto Ohn'ahran Plains/0 58.11,68.97
accept Eagle-itarian##66256 |goto Ohn'ahran Plains/0 58.11,68.97
accept Fowl Sorcery##66257 |goto Ohn'ahran Plains/0 58.11,68.97
stickystart "Slay_Primalists"
stickystart "Kill_Stormcaller_Initiates"
stickystart "Kill_Stormbound_Essences"
step
click Ohuna Binding Totem
Free the Child of Ohn'ahra |q 66256/1 |goto Ohn'ahran Plains/0 58.51,69.02 |count 1
step
click Ohuna Binding Totem
Free the Child of Ohn'ahra |q 66256/1 |goto Ohn'ahran Plains/0 58.06,67.43 |count 2
step
click Boku's Wind Totem
Destroy the Wagon |q 66257/1 |goto Ohn'ahran Plains/0 58.17,67.35 |count 1
step
click Ohuna Binding Totem
Free the Child of Ohn'ahra |q 66256/1 |goto Ohn'ahran Plains/0 57.86,64.89 |count 3
step
click Ohuna Binding Totem
Free the Child of Ohn'ahra |q 66256/1 |goto Ohn'ahran Plains/0 58.66,64.09 |count 4
step
click Boku's Wind Totem
Destroy the Wagon |q 66257/1 |goto Ohn'ahran Plains/0 58.86,61.83 |count 2
step
click Ohuna Binding Totem
Free the Child of Ohn'ahra |q 66256/1 |goto Ohn'ahran Plains/0 58.78,61.73 |count 5
step
click Ohuna Binding Totem
Free the Child of Ohn'ahra |q 66256/1 |goto Ohn'ahran Plains/0 59.65,64.03 |count 6
step
click Boku's Wind Totem
Destroy the Wagon |q 66257/1 |goto Ohn'ahran Plains/0 59.22,65.52 |count 3
step
click Boku's Wind Totem
Destroy the Wagon |q 66257/1 |goto Ohn'ahran Plains/0 61.77,66.66 |count 4
step
label "Slay_Primalists"
Kill Pimalist enemies around this area
|tip They look like various races of {o}humanoids{}.
Slay #6# Primalists |q 66256/2 |goto Ohn'ahran Plains/0 59.81,66.03
'|kill Primalist Instructor##195742, Primalist Stormsmith##187916, Prozela Galeshot##193669
step
label "Kill_Stormcaller_Initiates"
kill 6 Stormcaller Initiate##187817 |q 66242/2 |goto Ohn'ahran Plains/0 59.35,66.22
|tip They look like {o}centaurs with wind elementals{}.
step
label "Kill_Stormbound_Essences"
kill 8 Stormbound Essence##187819 |q 66242/1 |goto Ohn'ahran Plains/0 59.35,66.22
|tip They look like {o}wind elementals{}.
step
talk Initiate Boku##187809
|tip On top of the mountain.
turnin Weather Control##66242 |goto Ohn'ahran Plains/0 60.66,63.54
turnin Eagle-itarian##66256 |goto Ohn'ahran Plains/0 60.66,63.54
turnin Fowl Sorcery##66257 |goto Ohn'ahran Plains/0 60.66,63.54
accept Oh No, Ohn'ahra!##66258 |goto Ohn'ahran Plains/0 60.66,63.54
step
Watch the dialogue
|tip Follow {o}Boku{} and {o}protect him{} as he fights enemies.
Kill enemies around this area
Protect Boku from Enemies |q 66258/1 |goto Ohn'ahran Plains/0 60.42,64.73
Free Ohn'ahra |q 66258/2 |goto Ohn'ahran Plains/0 60.42,64.73
'|kill Agitated Essence##192238, Agitated Initiate##195674, Alerted Stormsmith##192236, Alerted Goliath##192237
step
talk Initiate Boku##195024
turnin Oh No, Ohn'ahra!##66258 |goto Ohn'ahran Plains/0 61.42,62.78
accept A Storm of Ill Tidings##66259 |goto Ohn'ahran Plains/0 61.42,62.78
step
talk Initiate Radiya##190014
turnin A Disgruntled Initiate##65906 |goto Ohn'ahran Plains/0 56.26,75.96
accept Sneaking Out##65901 |goto Ohn'ahran Plains/0 56.26,75.96
step
click Wind Totem
Place the Wind Totem |q 65901/1 |goto Ohn'ahran Plains/0 56.65,76.27 |count 1
step
talk Flightmaster Huraq##195235
fpath Ohn'iri Springs |goto Ohn'ahran Plains/0 56.68,76.59
step
click Wind Totem
Place the Wind Totem |q 65901/1 |goto Ohn'ahran Plains/0 57.36,76.33 |count 2
step
click Wind Totem
Place the Wind Totem |q 65901/1 |goto Ohn'ahran Plains/0 57.01,75.48 |count 3
step
talk Initiate Radiya##190014
Select _"The totems are placed."_ |gossip 55343
Inform Radiya |q 65901/2 |goto Ohn'ahran Plains/0 56.25,75.95
step
talk Initiate Radiya##190014
turnin Sneaking Out##65901 |goto Ohn'ahran Plains/0 54.79,66.40
accept Favorite Fruit##65907 |goto Ohn'ahran Plains/0 54.79,66.40
step
click Wildsprings Shrub+
|tip They look like {o}green bushes{}.
collect 6 Wild Bushfruit##192743 |q 65907/1 |goto Ohn'ahran Plains/0 53.53,71.02
step
use the Wild Bushfruit##192743+
|tip Use it on {o}Mudstompers{}.
|tip They look like small and large {o}hippos{}.
Feed #6# Mudstompers |q 65907/2 |goto Ohn'ahran Plains/0 54.28,66.61
step
talk Initiate Radiya##190014
turnin Favorite Fruit##65907 |goto Ohn'ahran Plains/0 54.79,66.40
accept A Promise Is A Promise##65770 |goto Ohn'ahran Plains/0 54.79,66.40
step
talk Initiate Radiya##190014
Select _"I promise to keep your secret."_ |gossip 55344
Promise Radiya |q 65770/1 |goto Ohn'ahran Plains/0 54.79,66.40
step
Meet Radiya Further North |q 65770/2 |goto Ohn'ahran Plains/0 53.11,64.01
step
talk Godoloto##190022
|tip He flies down onto the rock.
turnin A Promise Is A Promise##65770 |goto Ohn'ahran Plains/0 52.05,63.24
accept More Adventure Than Expected##65761 |goto Ohn'ahran Plains/0 52.05,63.24
step
talk Initiate Radiya##190014
|tip Inside the building.
Find Radiya |q 65761/3 |goto Ohn'ahran Plains/0 47.51,54.12
step
talk Initiate Radiya##190014
|tip Inside the building.
turnin More Adventure Than Expected##65761 |goto Ohn'ahran Plains/0 47.51,54.12
accept Stealing Its Thunder##65711 |goto Ohn'ahran Plains/0 47.51,54.12
step
Enter the cave |goto Ohn'ahran Plains/0 47.54,56.07 < 20 |walk
kill Storm Extractor##190011 |q 65711/1 |goto Ohn'ahran Plains/0 47.29,56.72
|tip Inside the cave.
step
talk Lizi##190009
Select  _"<Gently offer the bushfruit.>"_ |gossip 55367
Soothe Lizi the Thunder Lizard |q 65711/2 |goto Ohn'ahran Plains/0 48.31,56.60
step
talk Initiate Radiya##190014
|tip She runs to this location.
turnin Stealing Its Thunder##65711 |goto Ohn'ahran Plains/0 48.27,56.49
accept Sneaking In##66676 |goto Ohn'ahran Plains/0 48.27,56.49
step
talk Initiate Radiya##190014
Return to Radiya in Ohn'iri Springs |q 66676/1 |goto Ohn'ahran Plains/0 56.20,77.10
step
talk Initiate Radiya##190014
turnin Sneaking In##66676 |goto Ohn'ahran Plains/0 56.20,77.10
step
talk Quartermaster Huseng##196707
|tip Inside the building, on the ground floor.
accept Cultural Exchange##72117 |goto Ohn'ahran Plains/0 60.40,37.72
step
talk Khanam Matra Sarest##181198
|tip Inside the building, on the top floor.
Select _"The Primalists have captured Ohn'ahra and have allied with Clan Nokhud."_ |gossip 56420
Speak to the Khanam Matra at Maruukai |q 66259/1 |goto Ohn'ahran Plains/0 60.00,37.47
step
talk Khanam Matra Sarest##181198
|tip Inside the building, on the top floor.
turnin A Storm of Ill Tidings##66259 |goto Ohn'ahran Plains/0 60.00,37.47
accept Chasing the Wind##66327 |goto Ohn'ahran Plains/0 60.00,37.47
step
Watch the dialogue
|tip Inside the building, on the top floor.
Hear the Report |q 66327/1 |goto Ohn'ahran Plains/0 60.00,37.47
step
talk Khanam Matra Sarest##181198
|tip Inside the building, on the top floor.
Select _"I understand."_ |gossip 56419
Talk to Khanam Matra Sarest |q 66327/2 |goto Ohn'ahran Plains/0 60.00,37.47
step
Meet Khanam Matra Sarest Outside the Horn of Drusahl |q 66327/4 |goto Ohn'ahran Plains/0 73.03,40.59
step
talk Khanam Matra Sarest##188068
turnin Chasing the Wind##66327 |goto Ohn'ahran Plains/0 73.03,40.59
accept Nokhud Can Come of This##70244 |goto Ohn'ahran Plains/0 73.03,40.59
step
Kill enemies around this area
clicknpc Teerai Survivor##191097+
|tip They look like {o}centuars laying on the ground{}.
Retake the Village from the Nokhud |q 70244/1 |goto Ohn'ahran Plains/0 75.33,40.90
'|kill Primalist Stormfury##190945, Nokhud Warhound##190962, Nokhud Stormlasher##188231, Nokhud Raider##188230, Nokhud Scavenger##185445, Primalist Tempest##190946
step
kill Warmonger Kharad##190932 |q 70244/2 |goto Ohn'ahran Plains/0 76.14,40.87
|tip He is {o}elite{}.
|tip Your {o}allies will help{} you fight.
step
talk Khanam Matra Sarest##191494
turnin Nokhud Can Come of This##70244 |goto Ohn'ahran Plains/0 76.70,40.93
accept Blowing of the Horn##66329 |goto Ohn'ahran Plains/0 76.70,40.93
step
talk Khanam Matra Sarest##188068
Select _"I am ready!"_ |gossip 54892
Talk to Khanam Matra Sarest |q 66329/1 |goto Ohn'ahran Plains/0 76.70,40.93
step
talk Khanam Matra Sarest##188068
turnin Blowing of the Horn##66329 |goto Ohn'ahran Plains/0 76.70,40.93
accept Green Dragon Down##66328 |goto Ohn'ahran Plains/0 76.70,40.93
step
Find the Green Dragons |q 66328/1 |goto Ohn'ahran Plains/0 72.35,50.33
step
talk Khanam Matra Sarest##188068
Select _"Let's explain ourselves."_ |gossip 56207
Speak to the Khanam Matra |q 66328/2 |goto Ohn'ahran Plains/0 72.35,50.33
step
Watch the dialogue
Listen to the Discussion |q 66328/3 |goto Ohn'ahran Plains/0 72.35,50.33
step
talk Khanam Matra Sarest##188068
turnin Green Dragon Down##66328 |goto Ohn'ahran Plains/0 72.35,50.33
step
talk Flightmaster Nakeena##191622
|tip Up on the cliff.
fpath Pinewood Post |goto Ohn'ahran Plains/0 80.43,57.89
step
talk Sentinel Olekk##190024
turnin Trouble In The Pines##65837 |goto Ohn'ahran Plains/0 81.03,58.91
accept Tempests Abound##66681 |goto Ohn'ahran Plains/0 81.03,58.91
step
talk Scout Watu##190025
accept Counting Sheep##66680 |goto Ohn'ahran Plains/0 81.03,58.97
step
talk Sondo##191397
buy Diced Meat##193890 |q 66680/1 |goto Ohn'ahran Plains/0 80.64,58.76
step
clicknpc Wish##191408
Select  _"<Offer the diced meat.>"_ |gossip 55180
Treat Wish |q 66680/2 |goto Ohn'ahran Plains/0 81.03,59.54
stickystart "Accept_More_Than_A_Rock"
stickystart "Slay_Stormtouched_Beasts"
step
use Wish's Whistle##193892
|tip Use it on {o}Lost Argali{}.
|tip They look like {o}black and white yaks{}.
Save #5# Lost Argali |q 66680/3 |goto Ohn'ahran Plains/0 82.20,64.51
'|clicknpc Lost Argali##190041
step
label "Accept_More_Than_A_Rock"
Kill enemies around this area
collect Stormtouched Shards##194031 |n
|tip You will automatically accept the quest when you loot the item.
accept More Than A Rock##66689 |goto Ohn'ahran Plains/0 82.20,64.51
'|kill Craggy Stag##191541, Pinehoof Doe##191496, Insatiable Vulture##191545, Rumbling Blackpaw##191665, Insatiable Vulture##191551
step
label "Slay_Stormtouched_Beasts"
Kill enemies around this area
Slay #8# Stormtouched Beasts |q 66681/1 |goto Ohn'ahran Plains/0 82.20,64.51
'|kill Craggy Stag##191541, Pinehoof Doe##191496, Insatiable Vulture##191545, Rumbling Blackpaw##191665, Insatiable Vulture##191551
step
talk Scout Watu##190025
turnin Counting Sheep##66680 |goto Ohn'ahran Plains/0 81.03,58.97
turnin Tempests Abound##66681 |goto Ohn'ahran Plains/0 81.03,58.97
turnin More Than A Rock##66689 |goto Ohn'ahran Plains/0 81.03,58.97
accept Last Resort Analysis##66683 |goto Ohn'ahran Plains/0 81.03,58.97
step
talk Basaan##191392
Select _"Do you know anything about this shard?"_ |gossip 55375
Inquire Basaan |q 66683/1 |goto Ohn'ahran Plains/0 80.96,59.53
step
talk Sondo##191397
Select _"Do you know anything about this shard?"_ |gossip 55374
Inquire Sondo |q 66683/3 |goto Ohn'ahran Plains/0 80.64,58.76
step
talk Flightmaster Nakeena##191622
Select _"Do you know anything about this shard?"_ |gossip 55376
Inquire Nakeena |q 66683/2 |goto Ohn'ahran Plains/0 80.43,57.88
step
talk Scout Watu##190025
turnin Last Resort Analysis##66683 |goto Ohn'ahran Plains/0 81.03,58.97
accept Show of Storm##65836 |goto Ohn'ahran Plains/0 81.03,58.97
step
Regroup with Scout Watu |q 65836/1 |goto Ohn'ahran Plains/0 84.05,60.73
step
kill Stormed Blackpaw##193827 |q 65836/2 |goto Ohn'ahran Plains/0 84.05,60.73
|tip It looks like a black bear.
step
Watch the dialogue
talk Scout Watu##190025
|tip He runs to this location.
turnin Show of Storm##65836 |goto Ohn'ahran Plains/0 83.98,60.73
accept Storm Chasing##66684 |goto Ohn'ahran Plains/0 83.98,60.73
step
Enter the cave |goto Ohn'ahran Plains/0 84.84,63.27 < 20 |walk
click Storm Pylon
|tip Inside the cave.
Destroy the Storm Pylon |q 66684/1 |goto Ohn'ahran Plains/0 85.02,64.22
step
talk Scout Watu##190025
turnin Storm Chasing##66684 |goto Ohn'ahran Plains/0 80.85,58.95
step
talk Jhara##191391
|tip Inside the building.
home Pinewood Post |goto Ohn'ahran Plains/0 81.33,59.31 |q 66344 |future
step
talk Merithra##188156
accept With the Wind At Our Backs##66344 |goto Ohn'ahran Plains/0 72.46,50.79
step
talk Gerithus##189697
Select _"I'm ready to go."_ |gossip 54859
Fly with Gerithus |q 66344/1 |goto Ohn'ahran Plains/0 72.30,50.72
step
Begin Flying to Shady Sanctuary |invehicle |goto Ohn'ahran Plains/0 72.30,50.72 |q 66344
step
Watch the dialogue
Fly to Shady Sanctuary |outvehicle |goto Ohn'ahran Plains/0 28.62,58.21 |q 66344 |notravel
step
talk Merithra##188106
turnin With the Wind At Our Backs##66344 |goto Ohn'ahran Plains/0 28.26,57.69
accept Shady Sanctuary##70220 |goto Ohn'ahran Plains/0 28.26,57.69
step
talk Guard-Captain Alowen##194899
Select _"The Primalists are on the move. Merithra calls the flight to battle!"_ |gossip 56367
Speak to Guard-Captain Alowen |q 70220/1 |goto Ohn'ahran Plains/0 29.06,55.26
step
talk Sidra the Mender##194902
Select _"You are needed at the front."_ |gossip 56204
Speak to Isidra the Mender |q 70220/3 |goto Ohn'ahran Plains/0 30.19,55.68
step
talk Aronus##188972
Speak to Aronus to Visit Merithra's Watch |q 70220/4 |goto Ohn'ahran Plains/0 29.28,56.43
step
talk Aronus##188972
Select _"Take me up to Merithra's Watch."_ |gossip 56101
Fly with Aronus |invehicle |goto Ohn'ahran Plains/0 29.28,56.43 |q 70220
step
Fly to Merithra's Watch |outvehicle |goto Ohn'ahran Plains/0 29.51,60.34 |q 70220 |notravel
step
talk Viranikus##194903
|tip On the platform, overlooking the valley.
Select _"The centaur clans have declared their support. Rally your troops!"_ |gossip 56205
Speak to Viranikus |q 70220/5 |goto Ohn'ahran Plains/0 30.03,60.25
step
talk Sariosa##186487
fpath Shady Sanctuary |goto Ohn'ahran Plains/0 29.82,57.64
step
talk Sariosa##186487
Select _"The Ancient Bough is in danger! Please help deliver the message."_ |gossip 56235
Speak to Sariosa |q 70220/2 |goto Ohn'ahran Plains/0 29.82,57.64
step
talk Gracus##186503
|tip He looks like a {o}large walking tree{}.
|tip He walks around this area.
accept Some Call Me Bug Catcher##70062 |goto Ohn'ahran Plains/0 29.91,58.42
step
kill Flyspawn Beetle##193996+
|tip They look like {o}insects flying in the air{}.
Gather #6# Flyspawn Beetle Parts |q 70062/1 |goto Ohn'ahran Plains/0 29.73,58.08
step
talk Gracus##186503
|tip He looks like a {o}large walking tree{}.
|tip He walks around this area.
turnin Some Call Me Bug Catcher##70062 |goto Ohn'ahran Plains/0 29.91,58.42
accept Others Call Me Duck Herder##70069 |goto Ohn'ahran Plains/0 29.91,58.42
step
click Duck+
|tip They look like {o}small birds with various names{}.
|tip They walk around this area.
Feed #4# Ducklings |q 70069/1 |goto Ohn'ahran Plains/0 30.96,56.14
step
talk Gracus##186503
|tip He looks like a {o}large walking tree{}.
|tip He walks around this area.
turnin Others Call Me Duck Herder##70069 |goto Ohn'ahran Plains/0 29.91,58.42
accept But... I Am the Hero of Ducks##70070 |goto Ohn'ahran Plains/0 29.91,58.42
step
talk Merithra##188106
turnin Shady Sanctuary##70220 |goto Ohn'ahran Plains/0 28.26,57.69
accept The Primalist Front##66331 |goto Ohn'ahran Plains/0 28.26,57.69
step
Search for Firequackers |q 70070/1 |goto Ohn'ahran Plains/0 27.19,56.43
step
kill Queasy Hornswog##194003
|tip It looks like a {o}large grey frog{}.
Make the Queasy Hornswog Throw Up |q 70070/2 |goto Ohn'ahran Plains/0 27.19,56.43
step
talk Celina Crunchyleaves##186303
accept Find Theramus##65899 |goto Ohn'ahran Plains/0 25.06,56.89
step
Enter the cave |goto Ohn'ahran Plains/0 24.76,63.53 < 20 |walk
talk Theramus##186313
|tip Inside the cave.
Select _"Are you Theramus?"_ |gossip 54644
Find Theramus |q 65899/2 |goto Ohn'ahran Plains/0 24.85,64.46
step
talk Celina Crunchyleaves##186303
turnin Find Theramus##65899 |goto Ohn'ahran Plains/0 24.43,63.01
accept Can't Beat Fluffy##65903 |goto Ohn'ahran Plains/0 24.43,63.01
step
talk Felina Starrunner##185726
accept Suspiciously Spiced Steak##65900 |goto Ohn'ahran Plains/0 24.46,63.05
step
use the Versatile Longnet##191134
|tip Use it on {o}Glade Hoppers{}.
|tip They look like {o}rabbits{}.
Catch #12# Glade Hoppers |q 65903/1 |goto Ohn'ahran Plains/0 23.18,65.34
'|clicknpc Glade Hopper##187473
stickystart "Collect_Reptilian_Eggshells"
stickystart "Collect_Sourblooms"
step
kill Mud Snapper##186308+
|tip They look like {o}large turtles{}.
collect 3 Perfectly Tender Turtle Meat##191085 |q 65900/1 |goto Ohn'ahran Plains/0 22.46,61.27
step
label "Collect_Reptilian_Eggshells"
click Reptilian Eggshell##376695+
|tip They look like {o}large brown and white broken eggs{}.
collect 6 Reptilian Eggshell##191084 |q 65900/2 |goto Ohn'ahran Plains/0 22.46,61.27
step
label "Collect_Sourblooms"
click Sourbloom##376082+
|tip They look like {o}orange flowers{}.
collect 15 Sourbloom##191083 |q 65900/3 |goto Ohn'ahran Plains/0 22.46,61.27
step
talk Celina Crunchyleaves##186303
turnin Can't Beat Fluffy##65903 |goto Ohn'ahran Plains/0 24.43,63.01
step
talk Felina Starrunner##185726
Select  _"<Hand over the ingredients.>"_ |gossip 55348
Give the Ingredients to Felina Starrunner |q 65900/4 |goto Ohn'ahran Plains/0 24.46,63.05
step
Watch the dialogue
talk Felina Starrunner##185726
turnin Suspiciously Spiced Steak##65900 |goto Ohn'ahran Plains/0 24.46,63.05
accept Food or Floof##65902 |goto Ohn'ahran Plains/0 24.46,63.05
step
Enter the cave |goto Ohn'ahran Plains/0 24.76,63.53 < 20 |walk
talk Theramus##186313
|tip Inside the cave.
Select _"I brought your favorite food."_ |gossip 54645
Feed Theramus |q 65902/1 |goto Ohn'ahran Plains/0 24.85,64.46
step
clicknpc Place glade hoppers##186970
|tip Inside the cave.
Release the Glade Hoppers |q 65902/2 |goto Ohn'ahran Plains/0 24.82,64.59
step
talk Felina Starrunner##185726
turnin Food or Floof##65902 |goto Ohn'ahran Plains/0 24.46,63.05
accept More Than Weeds##65905 |goto Ohn'ahran Plains/0 24.46,63.05
step
talk Celina Crunchyleaves##186303
accept Proof of Negligence##65937 |goto Ohn'ahran Plains/0 24.43,63.01
stickystart "Collect_Pulsating_Thorn"
stickystart "Clear_Out_The_Lilac_Ramble"
step
talk Injured Cub##186378
|tip It looks like a small bear.
Select  _"<Attempt to pick up the cub.>"_ |gossip 55203
Rescue the Injured Cub |q 65937/2 |goto Ohn'ahran Plains/0 24.87,60.33
step
click Trampled Bush
collect Decayed Flower##191086 |q 65937/1 |goto Ohn'ahran Plains/0 25.81,59.61
step
label "Collect_Pulsating_Thorn"
kill Wrathful Orchid##186321+
|tip They look like {o}plants with teeth{}.
collect Pulsating Thorn##191568 |q 65937/3 |goto Ohn'ahran Plains/0 25.35,60.66
step
label "Clear_Out_The_Lilac_Ramble"
Kill enemies around this area
click Creeping Dreadweed+
|tip They look like {o}brown bushes{}.
Clear Out the Lilac Ramble |q 65905/1 |goto Ohn'ahran Plains/0 25.19,60.38
'|kill Wrathful Orchid##186321, Ashen Groveripper##187872, Flyspawn Beetle##186456
step
talk Felina Starrunner##185726
turnin More Than Weeds##65905 |goto Ohn'ahran Plains/0 24.46,63.05
step
talk Celina Crunchyleaves##186303
turnin Proof of Negligence##65937 |goto Ohn'ahran Plains/0 24.43,63.01
accept Enough Is Enough##65904 |goto Ohn'ahran Plains/0 24.43,63.01
step
Enter the cave |goto Ohn'ahran Plains/0 24.76,63.53 < 20 |walk
talk Theramus##186313
|tip Inside the cave.
Select _"You need to see this, Theramus."_ |gossip 55161
Show the Evidence to Theramus |q 65904/1 |goto Ohn'ahran Plains/0 24.58,64.14
step
Watch the dialogue
|tip Inside the cave.
talk Celina Crunchyleaves##186303
turnin Enough Is Enough##65904 |goto Ohn'ahran Plains/0 24.56,63.96
step
talk Felina Starrunner##185726
|tip Inside the cave.
accept In Memory of Ysera##66011 |goto Ohn'ahran Plains/0 24.53,63.96
step
Follow Celina and Felina |q 66011/1 |goto Ohn'ahran Plains/0 24.94,65.90
|tip Outside, on top of the cave.
step
talk Theramus##186313
Select _"I understand."_ |gossip 55162
Speak to Theramus |q 66011/2 |goto Ohn'ahran Plains/0 24.94,65.90
step
Watch the dialogue
Restore the Shrine |q 66011/3 |goto Ohn'ahran Plains/0 24.94,65.90
step
talk Theramus##187270
turnin In Memory of Ysera##66011 |goto Ohn'ahran Plains/0 24.94,65.90
step
talk Belika##186175
Select _"Merithra sent me to hear your report."_ |gossip 55238
Hear Aru and Belika's Report |q 66331/3 |goto Ohn'ahran Plains/0 27.56,46.00
step
talk Boku##191325
Select _"I'm here to hear your report."_ |gossip 55239
Hear Boku's Report |q 66331/2 |goto Ohn'ahran Plains/0 25.72,44.26
step
talk Ohn Seshteng##191343
Select _"Sounds like a breeze. I'm ready!"_ |gossip 55240
Watch the dialogue
|tip You will fly as a bird.
|tip You can {o}click the arrow button{} to {o}leave the vehicle{} after you start flying.
|tip The {o}goal will complete{} without you having to listen to the story.
Hear Ohn Seshteng's Report |q 66331/4 |goto Ohn'ahran Plains/0 26.18,40.07
step
talk Merithra##189599
Select _"Show me what you see."_ |gossip 55241
Speak to Merithra |q 66331/5 |goto Ohn'ahran Plains/0 25.63,40.51
step
talk Khanam Matra Sarest##188601
turnin The Primalist Front##66331 |goto Ohn'ahran Plains/0 25.67,40.43
step
talk Merithra##189599
accept Justice for Solethus##66333 |goto Ohn'ahran Plains/0 25.63,40.51
stickystart "Kill_Nokhud_Warmongers"
step
click Dragon-Killer Ballista
Destroy the Dragon-Killer Ballista |q 66333/2 |goto Ohn'ahran Plains/0 24.81,39.89 |count 1
step
click Dragon-Killer Ballista
Destroy the Dragon-Killer Ballista |q 66333/2 |goto Ohn'ahran Plains/0 24.37,38.47 |count 2
step
click Dragon-Killer Ballista
Destroy the Dragon-Killer Ballista |q 66333/2 |goto Ohn'ahran Plains/0 25.44,37.72 |count 3
step
label "Kill_Nokhud_Warmongers"
kill 3 Nokhud Warmonger##188341 |q 66333/1 |goto Ohn'ahran Plains/0 24.49,37.45
|tip They look like {o}large centaurs carrying polearms{}.
step
_Next to you:_
talk Khanam Matra Sarest
turnin Justice for Solethus##66333
accept Deconstruct Additional Pylons##66335
accept Starve the Storm##66784
'|talk Khanam Matra Sarest##191494
step
kill Primalist Storm-Summoner##191259+
|tip There are {o}3 of them{}.
|tip Inside the open cavern.
Deactivate the Storm Corridor |q 66784/1 |goto Ohn'ahran Plains/0 24.94,34.90
step
_Next to you:_
talk Khanam Matra Sarest
turnin Starve the Storm##66784
'|talk Khanam Matra Sarest##191494
step
Mark the Second Primalist Pylon |q 66335/2 |goto Ohn'ahran Plains/0 23.20,37.45
|tip Use the {o}Call Merithra{} ability.
|tip It appears as a button on the screen.
step
Mark the Third Primalist Pylon |q 66335/3 |goto Ohn'ahran Plains/0 21.44,37.58
|tip Use the {o}Call Merithra{} ability.
|tip It appears as a button on the screen.
step
Mark the First Primalist Pylon |q 66335/1 |goto Ohn'ahran Plains/0 23.91,39.38
|tip Use the {o}Call Merithra{} ability.
|tip It appears as a button on the screen.
step
_Next to you:_
talk Khanam Matra Sarest
turnin Deconstruct Additional Pylons##66335
accept Stormbreaker##66337
'|talk Khanam Matra Sarest##191494
step
kill Stormbound Proto-Drake##195094
|tip Your allies will help you fight.
|tip {o}Koroleth appears{} when the drake is at about {o}35% health{}, and kill it.
|tip After the drake dies, she will attack you.
kill Koroleth##188180 |q 66337/1 |goto Ohn'ahran Plains/0 22.38,39.80
step
talk Gerithus##195136
Select _"Take me to Merithra."_ |gossip 63840
Speak to Gerithus |q 66337/2 |goto Ohn'ahran Plains/0 22.92,40.20
step
Watch the dialogue
Return to Merithra |outvehicle |goto Ohn'ahran Plains/0 25.66,47.84 |q 66337 |notravel
step
talk Merithra##188150
turnin Stormbreaker##66337 |goto Ohn'ahran Plains/0 25.65,48.40
accept The Isle of Emerald##66336 |goto Ohn'ahran Plains/0 25.65,48.40
step
talk Merithra##188181
turnin The Isle of Emerald##66336 |goto Ohn'ahran Plains/0 22.14,50.98
accept Renewal of Vows##66783 |goto Ohn'ahran Plains/0 22.14,50.98
step
talk Sansok Khan##188246
Select  _"<Suggest a trophy from her first hunt.>"_ |gossip 54952
clicknpc Shikaar Spear##191195
|tip It appears in her hand.
Take the Spear |havebuff Sansok's Offering##375466 |goto Ohn'ahran Plains/0 22.28,50.88 |q 66783
step
talk Merithra##188181
Select _"Here is the weapon Sansok Khan earned after her first hunt."_ |gossip 56430
Accept Sansok Khan's Offering |q 66783/1 |goto Ohn'ahran Plains/0 22.14,50.97
step
talk Tigari Khan##191156
Select  _"<Suggest she offer an eagle feather.>"_ |gossip 54951
clicknpc Ohuna Feather##191209
|tip It appears in her hand.
Take the Feather |havebuff Tigari's Offering##375472 |goto Ohn'ahran Plains/0 22.37,51.05 |q 66783
step
talk Merithra##188181
Select _"Here is a feather from Ohn'ahra, lifted upon the wind."_ |gossip 56431
Accept Tigari Khan's Offering |q 66783/2 |goto Ohn'ahran Plains/0 22.14,50.98
step
talk Khanam Matra Sarest##188601
Select  _"<Suggest she offer blood.>"_ |gossip 54948
clicknpc Horn of the Khanam Matra##191208
|tip It appears in her hand.
Take the Horn |havebuff Khanam Matra's Offering##375470 |goto Ohn'ahran Plains/0 22.34,50.95 |q 66783
step
talk Merithra##188181
Select _"Here is proof of the unbroken lineage of Clan Teerai, direct descendants of the centaur Teera."_ |gossip 56432
Accept Khanam Matra's Offering |q 66783/3 |goto Ohn'ahran Plains/0 22.14,50.98
step
clicknpc Everblooming Soil##197601
|tip It appears in Merithra's hands.
Take the Soil |havebuff Merithra's Offering##391289 |goto Ohn'ahran Plains/0 22.15,50.98 |q 66783
step
talk Khanam Matra Sarest##188601
Select _"Please accept Merithra's gift to the centaur clans."_ |gossip 63841
Give Merithra's Offering |q 66783/4 |goto Ohn'ahran Plains/0 22.34,50.95
step
talk Merithra##188181
turnin Renewal of Vows##66783 |goto Ohn'ahran Plains/0 22.14,50.98
accept Into the Azure##66340 |goto Ohn'ahran Plains/0 22.14,50.98
step
talk Khanam Matra Sarest##188601
accept The Nokhud Offensive: The Wind Belongs to the Sky##66339 |goto Ohn'ahran Plains/0 22.34,50.95
step
talk Gracus##186503
|tip He looks like a large tree.
|tip He walks around this area.
turnin But... I Am the Hero of Ducks##70070 |goto Ohn'ahran Plains/0 29.91,58.42
step
talk Healer Selbekh##192621
accept The Trouble with Taivan##67772 |goto Ohn'ahran Plains/0 61.22,40.01
step
clicknpc Taivan##196665
Brush Taivan |q 67772/1 |goto Ohn'ahran Plains/0 61.13,40.01
step
click Pelt Bundle
Pick Up the Pelt Bundle |q 67772/2 |goto Ohn'ahran Plains/0 61.19,39.70
step
click Pelt Bundle Location
|tip On Taivan's back.
Place the Pelt Bundle |q 67772/3 |goto Ohn'ahran Plains/0 61.13,40.01
step
talk Taivan##196675
Select _"Go find Hunter Jadar, Taivan. I will meet you there."_ |gossip 106972
Send Taivan to Hunter Jadar |q 67772/4 |goto Ohn'ahran Plains/0 61.13,40.01
step
Meet Hunter Jadar at the Watering Hole |q 67772/5 |goto Ohn'ahran Plains/0 71.42,49.60
step
talk Hunter Jadar##192629
turnin The Trouble with Taivan##67772 |goto Ohn'ahran Plains/0 71.42,49.60
accept The Hunting Hound##67921 |goto Ohn'ahran Plains/0 71.42,49.60
step
talk Taivan##194292
Select _"Let's hunt, boy!"_ |gossip 56209
Talk to Taivan |q 67921/1 |goto Ohn'ahran Plains/0 71.43,49.42
step
Kill enemies around this area
|tip They look like various beasts.
Hunt #5# Dangerous Beasts with Taivan |q 67921/2 |goto Ohn'ahran Plains/0 73.67,49.53
'|kill Plains Rockfang##193384, Horned Plainstomper##193407, Mosshair Mammoth##193395, Grazing Broadhoof##193386, Broadhoof Bull##193385, Mosshair Bull##193394
step
talk Hunter Jadar##192629
turnin The Hunting Hound##67921 |goto Ohn'ahran Plains/0 71.42,49.61
accept Part of a Pack##70989 |goto Ohn'ahran Plains/0 71.42,49.61
step
kill Ravenous Proto-Drake##193145 |q 70989/1 |goto Ohn'ahran Plains/0 73.97,49.37
|tip It looks like a {o}large green dragon{} that {o}flies in the air{}.
|tip It will appear on your {o}minimap{} as a {o}yellow dot{}.
|tip It is {o}elite{}, but you should be able to kill it.
step
talk Hunter Jadar##192629
turnin Part of a Pack##70989 |goto Ohn'ahran Plains/0 71.42,49.60
accept Try Again, Taivan!##68083 |goto Ohn'ahran Plains/0 71.42,49.60
step
talk Healer Selbekh##192621
turnin Try Again, Taivan!##68083 |goto Ohn'ahran Plains/0 61.22,40.01
accept The Gentle Giant##68084 |goto Ohn'ahran Plains/0 61.22,40.01
step
talk Taivan##188247
Select _"Go find Shepherd Tevatei, Taivan. I will meet you there."_ |gossip 56231
Talk to Taivan |q 68084/1 |goto Ohn'ahran Plains/0 61.13,40.01
step
Meet Shepherd Tevatei at the Mallakh |q 68084/2 |goto Ohn'ahran Plains/0 49.06,41.08
step
talk Shepherd Tevatei##192633
turnin The Gentle Giant##68084 |goto Ohn'ahran Plains/0 49.06,41.08
accept Shaping a Shepherd##68085 |goto Ohn'ahran Plains/0 49.06,41.08
step
talk Taivan##194292
Select _"Are you ready to give this a try, boy?"_ |gossip 56208
Talk to Taivan |q 68085/1 |goto Ohn'ahran Plains/0 48.97,40.92
step
Command Taivan to Herd #3# Argali |q 68085/2 |goto Ohn'ahran Plains/0 48.92,40.87
|tip Use the {o}Command Taivan to Herd{} ability on {o}Aylaag Argali{}.
|tip It appears as a button on the screen.
|tip They look like {o}rams{}.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
'|clicknpc Aylaag Argali##193183
step
Chase an Argali into the Pen |q 68085/3 |goto Ohn'ahran Plains/0 49.51,41.48
|tip Use the {o}Herd Them Yourself!{} ability on an {o}Aylaag Argali{}.
|tip It appears as a button on the screen.
|tip They look like {o}rams{}.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
|tip After you use the ability, {o}keep running next to it{}.
|tip {o}Direct it to the pen{} at this location.
'|clicknpc Aylaag Argali##196969
step
talk Shepherd Tevatei##192633
turnin Shaping a Shepherd##68085 |goto Ohn'ahran Plains/0 49.06,41.08
accept Reign of the Ram##71022 |goto Ohn'ahran Plains/0 49.06,41.08
step
kill Stubborn Ram##195849
|tip Use the {o}Command Taivan to Confront{} ability on the {o}Stubborn Ram{}.
|tip It appears as a button on the screen.
|tip It will attack you, and eventually {o}surrender{} when it gets to {o}low health{}.
Confront the Stubborn Ram |q 71022/1 |goto Ohn'ahran Plains/0 49.65,39.45
step
talk Shepherd Tevatei##192633
turnin Reign of the Ram##71022 |goto Ohn'ahran Plains/0 49.05,41.08
accept Danger in Daruukhan##68087 |goto Ohn'ahran Plains/0 49.05,41.08
step
talk Teerai Messenger##193586
|tip He runs to this location.
Select _"I will leave for Daruukhan at once."_ |gossip 64043
Talk to the Teerai Messenger |q 68087/1 |goto Ohn'ahran Plains/0 49.07,40.95
step
talk Flightmaster Washengtu##191814
fpath Broadhoof Outpost |goto Ohn'ahran Plains/0 46.57,41.29
step
Meet Healer Selbekh at Daruukhan |q 68087/2 |goto Ohn'ahran Plains/0 52.83,29.85
step
talk Healer Selbekh##192621
turnin Danger in Daruukhan##68087 |goto Ohn'ahran Plains/0 52.83,29.85
accept Saving Centaur##69094 |goto Ohn'ahran Plains/0 52.83,29.85
step
clicknpc Heavy Beam##196118
|tip If nothing happens, return to {o}Healer Selbekh{} and tell him, _Can you call Taivan for me?_, then try again.
Rescue Weaver Daavu |q 69094/1 |goto Ohn'ahran Plains/0 52.13,29.66
step
Watch the dialogue
clicknpc Weaver Daavu##196009
|tip Taivan will carry him away.
|tip If nothing happens, return to {o}Healer Selbekh{} and tell him, _Can you call Taivan for me?_, then try again.
Rescue Weaver Daavu |q 69094/2 |goto Ohn'ahran Plains/0 52.12,29.66
step
clicknpc Leatherworker Tukhtai##196179
|tip Inside the broken hut.
|tip Taivan will carry her away.
|tip If nothing happens, return to {o}Healer Selbekh{} and tell him, _Can you call Taivan for me?_, then try again.
Rescue Leatherworker Tukhtai |q 69094/4 |goto Ohn'ahran Plains/0 52.27,29.11
step
clicknpc Heavy Beam##196166
Watch the dialogue
|tip Taivan will move the logs.
clicknpc Weaver Sagaa##196180
|tip Taivan will carry her away.
|tip If nothing happens, return to {o}Healer Selbekh{} and tell him, _Can you call Taivan for me?_, then try again.
Rescue Weaver Sagaa |q 69094/5 |goto Ohn'ahran Plains/0 51.62,29.15
step
clicknpc Smith Gaan##196175
|tip Inside the burning hut.
|tip Taivan will carry him away.
|tip If nothing happens, return to {o}Healer Selbekh{} and tell him, _Can you call Taivan for me?_, then try again.
Rescue Smith Gaan |q 69094/3 |goto Ohn'ahran Plains/0 51.49,30.38
step
clicknpc Heavy Beam##196167
clicknpc Fletcher Nisekh##196187
|tip Taivan will carry him away.
|tip If nothing happens, return to {o}Healer Selbekh{} and tell him, _Can you call Taivan for me?_, then try again.
Rescue Fletcher Nisekh |q 69094/6 |goto Ohn'ahran Plains/0 52.19,30.41
step
talk Healer Selbekh##192621
|tip You may have to {o}talk to her{} to {o}call Taivan{} if he isn't already nearby.
turnin Saving Centaur##69094 |goto Ohn'ahran Plains/0 52.83,29.84
accept Homeward Hound##69095 |goto Ohn'ahran Plains/0 52.83,29.84
step
talk Taivan##194292
Select _"Let's go home, boy!"_ |gossip 87458
Talk to Taivan |q 69095/1 |goto Ohn'ahran Plains/0 52.71,30.01
step
Watch the dialogue
Ride Taivan to Maruukai |q 69095/2 |goto Ohn'ahran Plains/0 61.13,40.01 |notravel
step
talk Healer Selbekh##192621
turnin Homeward Hound##69095 |goto Ohn'ahran Plains/0 61.22,40.01
accept Taivan's Purpose##69096 |goto Ohn'ahran Plains/0 61.22,40.01
step
talk Chimei##193112
Select _"Hello. Are you alright?"_ |gossip 94791
Try to Talk to Chimei |q 69096/1 |goto Ohn'ahran Plains/0 61.81,38.58
step
talk Chimei##193112
Select  _"<Try tapping Chimei on the shoulder.>"_ |gossip 95243
Try to Talk to Chimei Again |q 69096/2 |goto Ohn'ahran Plains/0 61.81,38.58
step
Watch the dialogue
|tip Taivan will lay next to Chimei.
Wait to See What Taivan Does |q 69096/3 |goto Ohn'ahran Plains/0 61.81,38.58
step
talk Healer Selbekh##192621
turnin Taivan's Purpose##69096 |goto Ohn'ahran Plains/0 61.82,38.73
step
talk Flightmaster Rynaam##192838
fpath Forkriver Crossing |goto Ohn'ahran Plains/0 71.65,79.07
step
Open Your Profession Panel
|tip Press {o}K{} to open it.
|tip It is {o}required{} before proceeding to the next step.
Click Here to Continue |confirm |q 69919 |future
step
talk Azley##193108
accept Targeted Ads##69915 |goto Ohn'ahran Plains/0 72.05,81.14
accept A Craft in Need##69919 |goto Ohn'ahran Plains/0 72.05,81.14 |only if hasprof("Dragon Isles Alchemy",1) or hasprof("Dragon Isles Blacksmtihing",1) or hasprof("Dragon Isles Cooking",1) or hasprof("Dragon Isles Enchanting",1) or hasprof("Dragon Isles Engineering",1) or hasprof("Dragon Isles Inscription",1) or hasprof("Dragon Isles Jewelcrafting",1) or hasprof("Dragon Isles Leatherworking",1) or hasprof("Dragon Isles Tailoring",1)
step
talk Azley##193108
Select _"Tell me the rules of crafting for the Artisan's Consortium."_
Learn the Rules of the Artisan's Consortium from Azley |q 69919/1 |goto Ohn'ahran Plains/0 72.05,81.14
|only if haveq(69919) or completedq(69919)
step
talk Azley##193108
turnin A Craft in Need##69919 |goto Ohn'ahran Plains/0 72.05,81.14
|only if haveq(69919) or completedq(69919)
step
Kill Goat enemies around this area
|tip They look like various colored {o}sheep with horns{}.
collect "Order Anything Crafters Make!"##198346 |q 69915/1 |goto Ohn'ahran Plains/0 75.99,84.53
collect "Public Orders: Fast and Made For You!"##198347 |q 69915/2 |goto Ohn'ahran Plains/0 75.99,84.53
collect "Custom High-Quality Gear: Better Business with Personal Orders!"##198348 |q 69915/3 |goto Ohn'ahran Plains/0 75.99,84.53
'|kill Forkriver Goat##193730, Meddlesome Goat##196212
step
talk Azley##193108
turnin Targeted Ads##69915 |goto Ohn'ahran Plains/0 72.05,81.14
accept Customer Satisfaction##69981
step
talk Bree'zin##193778
Select _"The Artisan's Consortium wants to know how your recrafting order went."_ |gossip 55653
Select _"You improved the quality of your necklace by getting it recrafted?"_ |gossip 55652
Find the Headstrong Herbalist |q 69981/1 |goto Ohn'ahran Plains/0 74.61,81.04
step
talk Duncan Ironeye##193780
|tip Near the bottom of the waterfall.
Select _"The Artisan's Consortium wants to know how your recrafting order went."_ |gossip 55648
Select _"They changed the Optional Reagents by recrafting your armor?"_ |gossip 55647
Find the Stalwart Prospector |q 69981/2 |goto Ohn'ahran Plains/0 77.27,73.14
step
click Eznuu##378862
Find Eznuu |q 69981/3 |goto Ohn'ahran Plains/0 67.03,80.89
step
talk Azley##193108
Select  _"<Show Azley what you found.>"_ |gossip 55602
Return to Azley |q 69981/4 |goto Ohn'ahran Plains/0 72.05,81.14
step
talk Mahra Treebender##193835
turnin Customer Satisfaction##69981 |goto Ohn'ahran Plains/0 71.84,81.31
step
_NOTE:_
The Rest of the Guide
|tip The remaining steps of this guide will walk you through completing {o}dungeon quests{}.
|tip These dungeon quests are {o}required{} to earn the {o}Sojourner of Ohn'ahron Plains{} achievement.
|tip You can complete them now, or return to this guide later to finish the achievement.
|tip If you want to {o}continue leveling{}, click through the next steps until the next guide is loaded.
Click Here to Continue |confirm |q 66690
stickystart "Retrieve_Maruuks_Spear"
stickystart "Collect_Medallion_Of_The_Ancestors"
step
_Inside the Nokhud Offensive Dungeon:_
|tip Use the {o}Group Finder{} to enter the {o}Nokhud Offensive{} dungeon.
kill Teera##195723
|tip She is a boss inside the dungeon.
collect Sarantuya the Ever-True##200115 |n
Retrieve Teera's Bow |q 66658/1
step
label "Retrieve_Maruuks_Spear"
_Inside the Nokhud Offensive Dungeon:_ |notinsticky
kill Maruuk##186338
|tip He is a boss inside the dungeon. |notinsticky
collect Batubar the Relentless##200100 |n
Retrieve Maruuk's Spear |q 66658/2
step
label "Collect_Medallion_Of_The_Ancestors"
_Inside the Nokhud Offensive Dungeon:_ |notinsticky
kill Balakar Khan##186151
|tip He is a boss inside the dungeon. |notinsticky
collect Medallion of the Ancestors##193483 |q 66690/1
step
Return to Ohn'ahran Plains |complete zone("Ohn'ahran Plains") |q 66690
|tip Leave the dungeon.
step
Enter the cave |goto Ohn'ahran Plains/0 40.29,59.43 < 15 |walk
click Teera's Bow##377538
|tip Inside the cave.
Place Teera's Bow |q 66658/3 |goto Ohn'ahran Plains/0 40.09,58.36
step
click Maruuk's Spear##377537
|tip Inside the cave.
Place Maruuk's Spear |q 66658/4 |goto Ohn'ahran Plains/0 39.60,59.06
step
talk Initiate Zorig##190068
turnin The Nokhud Offensive: Founders Keepers##66658 |goto Ohn'ahran Plains/0 41.00,61.62
step
talk Elder Nazuun##190164
turnin The Nokhud Offensive: The Final Ancestor##66690 |goto Ohn'ahran Plains/0 41.64,56.75
step
|next "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)"	|only if completedq(72293)
|next "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\The Azure Span (Full Zone)"		|only if not completedq(72293)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\The Azure Span (Full Zone)",{
author="support@zygorguides.com",
},[[
step
talk Masud the Wise##185599
turnin Into the Azure##66340 |goto Ohn'ahran Plains/0 71.66,80.58 |only if haveq(66340) or completedq(66340)
turnin Azure Span##72268 |goto Ohn'ahran Plains/0 71.66,80.58 |only if haveq(72268) or completedq(72268)
accept To the Azure Span##65686 |goto Ohn'ahran Plains/0 71.66,80.58
step
talk Glania of the Blessed Ones##185603
turnin To the Azure Span##65686 |goto The Azure Span/0 41.44,35.61
accept Camp Antonidas##66228 |goto The Azure Span/0 41.44,35.61 |only if not Dracthyr
step
talk Scalecommander Emberthal##197023
accept Shades of Blue##70746 |goto The Azure Span/0 41.45,35.90
|only if Dracthyr
step
talk Khuri##185608
accept Some Good Fishing##66227 |goto The Azure Span/0 41.46,35.63
step
talk Khuri##185608
Learn the Fishing Skill from Khuri |q 66227/1 |goto The Azure Span/0 41.46,35.63
step
cast Fishing##131474
|tip Click the {o}Fishing Bobber{} when it {o}bounces in the water{}.
|tip Keep repeating this process.
Fish #3# Blue-Tailed Minnows |q 66227/3 |goto The Azure Span/0 41.35,35.56
step
talk Khuri##185608
turnin Some Good Fishing##66227 |goto The Azure Span/0 41.46,35.63
step
talk Miva Star-Eye##192750
accept Arcane Detection##67174 |goto The Azure Span/0 41.22,35.88
step
click Unassuming Flask
|tip It looks like a {o}small brown sack{}.
Examine the Unassuming Flask |q 67174/1 |goto The Azure Span/0 41.39,35.70
step
click Dusty Teapot
|tip It looks like a {o}white pot{}.
|tip Inside the {o}leather basket{}.
Examine the Dusty Teapot |q 67174/2 |goto The Azure Span/0 41.41,35.84
step
click Toolk's Toy Boat
|tip It looks like a {o}small ship{}.
Confiscate Toolk's Toy Boat |q 67174/3 |goto The Azure Span/0 41.23,36.39
step
talk Miva Star-Eye##192750
turnin Arcane Detection##67174 |goto The Azure Span/0 41.22,35.88
accept How To Stop An Exploding Toy Boat##67175 |goto The Azure Span/0 41.22,35.88
step
talk Julk##192751
Select _"Your daughter ran off with a dangerous... boat. We need to either take it or dispel its magics."_ |gossip 55247
Watch the dialogue
Speak to Julk |q 67175/1 |goto The Azure Span/0 41.20,35.86
step
click Wand of Dispelling
|tip It looks like a {o}staff{}.
collect Miva's Dispelling Wand##194900 |q 67175/2 |goto The Azure Span/0 41.19,35.90
step
click Unstable Toy Boat
|tip It looks like a {o}small ship{}.
Dispel the Arcane Magic from the Toy Boat |q 67175/3 |goto The Azure Span/0 40.59,36.56
step
talk Miva Star-Eye##192750
turnin How To Stop An Exploding Toy Boat##67175 |goto The Azure Span/0 41.22,35.88
step
Meet Emberthal and Telash Outside of Camp Antonidas |q 70746/1 |goto The Azure Span/0 45.60,41.29
|only if Dracthyr
step
talk Scalecommander Emberthal##197023
turnin Shades of Blue##70746 |goto The Azure Span/0 45.61,41.25
|only if Dracthyr
step
Watch the dialogue
talk Telash Greywing##197025
accept The Azure Wizard##70747 |goto The Azure Span/0 45.65,41.27
|only if Dracthyr
step
talk Archmage Khadgar##192091
Select _"Do you serve the blue dragonflight?"_
Talk to Khadgar |q 70747/1 |goto The Azure Span/0 46.64,40.19
|only if Dracthyr
step
talk Archmage Khadgar##192091
turnin The Azure Wizard##70747 |goto The Azure Span/0 46.64,40.19
|only if Dracthyr
step
talk Noriko the All-Remembering##183543
turnin Camp Antonidas##66228 |goto The Azure Span/0 46.64,40.16
|only if not Dracthyr
step
talk Noriko the All-Remembering##183543
accept Assemble the Defenses##67033 |goto The Azure Span/0 46.69,39.77
step
talk Althanus##192222
accept Preservation of Knowledge##67035 |goto The Azure Span/0 46.67,39.73
step
talk Steward Argalos##189116
fpath Camp Antonidas |goto The Azure Span/0 46.71,39.56
step
click Broken Arcane Device
collect Broken Arcane Device##194512 |q 67033/1 |goto The Azure Span/0 46.14,39.34 |count 1
step
click Discarded Book
|tip It looks like an {o}open book{}.
Retrieve the Collection of Tomes |q 67035/1 |goto The Azure Span/0 46.12,39.22 |count 1
step
click Discarded Book
|tip It looks like an {o}open book{}.
|tip Inside the building.
Retrieve the Collection of Tomes |q 67035/1 |goto The Azure Span/0 46.11,38.51 |count 2
step
click Discarded Book
|tip It looks like an {o}open book{}.
|tip Inside the building.
Retrieve the Collection of Tomes |q 67035/1 |goto The Azure Span/0 46.00,38.37 |count 3
step
click Discarded Book
|tip It looks like an {o}open book{}.
|tip Inside the building.
Retrieve the Collection of Tomes |q 67035/1 |goto The Azure Span/0 45.87,38.45 |count 4
step
click Broken Arcane Device
collect Broken Arcane Device##194512 |q 67033/1 |goto The Azure Span/0 45.86,40.17 |count 2
step
click Broken Arcane Device
|tip Inside the crumbled building.
collect Broken Arcane Device##194512 |q 67033/1 |goto The Azure Span/0 46.06,40.81 |count 3
step
talk Althanus##192222
turnin Preservation of Knowledge##67035 |goto The Azure Span/0 46.67,39.74
step
talk Noriko the All-Remembering##183543
turnin Assemble the Defenses##67033 |goto The Azure Span/0 46.69,39.77
accept Wrath of the Kirin Tor##67036 |goto The Azure Span/0 46.69,39.77
step
click Arcane Blaster
Control the Arcane Blaster |invehicle |goto The Azure Span/0 46.31,38.85 |q 67036
step
kill Proto-Drake##197693+
|tip They look like {o}dragons{} flying in the air nearby to the {o}east{}.
|tip Use the ability on your action bar.
Watch the dialogue
Repel the Primalist Army |q 67036/1 |goto The Azure Span/0 46.31,38.85
step
talk Noriko the All-Remembering##183543
turnin Wrath of the Kirin Tor##67036 |goto The Azure Span/0 46.64,40.16
step
talk Archmage Khadgar##192091
|tip He runs to this location.
accept Meeting Kalecgos##65688 |goto The Azure Span/0 46.64,40.19
step
talk Custodian Vernagos##189208
|tip Inside the crumbled building.
accept Tending the Forge##66523 |goto The Azure Span/0 46.12,40.99
step
talk Caddy Scattershot##190001
accept Path to Nowhere##66671 |goto The Azure Span/0 45.69,39.78
step
click WANTED: Frigellus
|tip It looks like a {o}piece of paper{} pinned to a rock.
accept WANTED: Frigellus##66488 |goto The Azure Span/0 46.16,39.62
step
clicknpc Supply Portal##188915
Select _"Khadgar said you have something that could help me aid Kalecgos."_ |gossip 55328
Watch the dialogue
Request a Bag of Helpful Goods |q 65688/1 |goto The Azure Span/0 45.99,38.79
step
click Bag of Helpful Goods
Recover the Bag of Helpful Goods |q 65688/2 |goto The Azure Span/0 45.95,38.89
stickystart "Collect_Frozen_Cores"
step
kill Frigellus##189217 |q 66488/1 |goto The Azure Span/0 47.99,38.09
|tip He looks like a large {o}ice elemental{}.
step
label "Collect_Frozen_Cores"
kill Calving Elemental##189312+
|tip They look like small {o}ice elementals{}.
|tip They can also be {o}underwater{}.
collect 4 Frozen Core##192474 |q 66523/1 |goto The Azure Span/0 47.48,38.04
stickystart "Collect_Hornswog_Hide_Scraps"
stickystart "Collect_Formant_Embercones"
step
talk Custodian Cynegos##189952
|tip Inside the building.
turnin WANTED: Frigellus##66488 |goto The Azure Span/0 46.01,38.31
step
talk Arch Enchanter Celeste##192335
|tip Inside the building.
accept Setting the Defense##66489 |goto The Azure Span/0 45.99,38.41
step
use the Arch Instructor's Wand##192471
|tip Use it on {o}Azure Defenders{}.
|tip They look like {o}armored blue dragon people{}.
Empower #6# Azure Defenders |q 66489/1 |goto The Azure Span/0 46.19,38.94
'|clicknpc Azure Defender##192593
step
talk Arch Enchanter Celeste##192335
|tip Inside the building.
turnin Setting the Defense##66489 |goto The Azure Span/0 45.99,38.41
step
label "Collect_Hornswog_Hide_Scraps"
kill Encroaching Hornswog##189314+
|tip They look like {o}large blue frogs{}.
collect 8 Hornswog Hide Scraps##192473 |q 66523/2 |goto The Azure Span/0 46.61,41.60
You can find more around: |notinsticky
[45.50,40.81]
[45.32,39.62]
step
label "Collect_Formant_Embercones"
click Dormant Embercone+
|tip They look like {o}brown pine cones{}.
collect 12 Dormant Embercone##192776 |q 66523/3 |goto The Azure Span/0 46.61,41.60
You can find more around: |notinsticky
[45.50,40.81]
[45.32,39.62]
step
talk Custodian Vernagos##189208
|tip Inside the crumbled building.
turnin Tending the Forge##66523 |goto The Azure Span/0 46.12,40.99
step
clicknpc Supply Portal##188915
accept Send It!##66493 |goto The Azure Span/0 45.99,38.79
step
clicknpc Supply Portal##188915
Talk to the Supply Portal |q 66493/1 |goto The Azure Span/0 45.99,38.79
step
clicknpc Supply Portal##188915
Select _"I'm ready to deliver mail!"_ |gossip 55697
Start Delivering the Mail |q 66493/2 |goto The Azure Span/0 45.99,38.79
step
Deliver #14# Packages |q 66493/3 |goto The Azure Span/0 46.25,39.50
|tip Use the {o}Throw Mail{} ability on {o}Kirin Tor Apprentices{}.
|tip It appears as a button on the screen.
|tip They look like various {o}humanoid NPCs wearing purple robes{}.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
'|clicknpc Kirin Tor Apprentice##189241
step
clicknpc Supply Portal##188915
turnin Send It!##66493 |goto The Azure Span/0 45.99,38.79
step
talk Ruriq##186157
accept Mammoths Matter##65914 |goto The Azure Span/0 44.78,50.62
accept Culling the Cullers##65925 |goto The Azure Span/0 44.78,50.62
stickystart "Kill_Vicious_Ice_Slitherers"
stickystart "Collect_Ontuq_Hide_Scraps_And_Ontuq_Tusks"
step
kill 3 Vicious Ice Borer##186392 |q 65925/2 |goto The Azure Span/0 47.47,51.31
|tip They look like {o}larger centipedes{}.
step
label "Kill_Vicious_Ice_Slitherers"
kill 10 Vicious Ice Slitherer##186391 |q 65925/1 |goto The Azure Span/0 47.47,51.31
|tip They look like {o}smaller centipedes{}.
step
label "Collect_Ontuq_Hide_Scraps_And_Ontuq_Tusks"
click On'tuq Mammoth Matriarch##376174+
|tip They look like {o}larger dead mammoths{}.
|tip Only the {o}matriarchs{} will drop the {o}tusks{}.
click On'tuq Mammoth##376172+
|tip They look like {o}smaller dead mammoths{}.
collect 5 On'tuq Tusk##191092 |q 65914/2 |goto The Azure Span/0 47.47,51.31
collect 7 On'tuq Hide Scraps##191091 |q 65914/1 |goto The Azure Span/0 47.47,51.31
step
talk Ruriq##186157
turnin Mammoths Matter##65914 |goto The Azure Span/0 45.42,54.17
turnin Culling the Cullers##65925 |goto The Azure Span/0 45.42,54.17
accept Tackling the Falls##65926 |goto The Azure Span/0 45.42,54.17
step
clicknpc The Fallstrider##186971
Help Ruriq |q 65926/1 |goto The Azure Span/0 45.39,54.13
step
talk Kauj##186386
turnin Tackling the Falls##65926 |goto The Azure Span/0 45.51,54.18
accept The Gleamfisher##66724 |goto The Azure Span/0 45.51,54.18
step
clicknpc Gleamfish##187037
collect Gleamfish##194324 |q 66724/1 |goto The Azure Span/0 44.92,53.77 |count 1
step
clicknpc Gleamfish##187037
collect Gleamfish##194324 |q 66724/1 |goto The Azure Span/0 45.17,54.91 |count 2
step
clicknpc Gleamfish##187037
collect Gleamfish##194324 |q 66724/1 |goto The Azure Span/0 45.16,54.95 |count 3
step
click Offering Basket##380509
Watch the dialogue
Place the Gleamfish in the Basket |q 66724/2 |goto The Azure Span/0 45.48,54.19
step
talk Ruriq##186157
turnin The Gleamfisher##66724 |goto The Azure Span/0 45.45,54.17
accept Ice Breakers##65929 |goto The Azure Span/0 45.45,54.17
step
talk Kauj##186386
accept Wayward Winds##65928 |goto The Azure Span/0 45.51,54.18
stickystart "Collect_Restless_Motes"
step
clicknpc Freezing Water##186398+
|tip They look like water elementals frozen in {o}blocks of ice{}.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
|tip You may be attacked.
Thaw #5# Freezing Waters |q 65929/1 |goto The Azure Span/0 46.65,57.75
step
label "Collect_Restless_Motes"
Kill Restless enemies around this area
|tip They look like {o}air elementals{}.
collect 10 Restless Mote##191199 |q 65928/1 |goto The Azure Span/0 46.65,57.45
'|kill Restless Wind##186397, Restless Gale##186427
step
talk Ruriq##186157
turnin Ice Breakers##65929 |goto The Azure Span/0 45.45,54.17
step
talk Kauj##186386
turnin Wayward Winds##65928 |goto The Azure Span/0 45.51,54.18
accept A Wrestle of Wind and Water##65930 |goto The Azure Span/0 45.51,54.18
step
Enter the cave at the bottom of the waterfall |goto The Azure Span/0 45.52,57.03 < 20 |walk
kill Kraunot##186401
|tip Inside the cave.
Challenge the Spirits |q 65930/1 |goto The Azure Span/0 45.60,57.62
step
talk Ruriq##186157
turnin A Wrestle of Wind and Water##65930 |goto The Azure Span/0 45.00,54.03
accept Ruriq's River Rapids Ride##66155 |goto The Azure Span/0 45.00,54.03
step
clicknpc The Fallstrider##190067
Begin Riding on the Fallstrider |invehicle |goto The Azure Span/0 44.92,54.10 |q 66155
step
_As You Ride on the Boat:_
|tip Use the abilities on your action bar on the {o}fish in the water{}.
Catch #10# Fish on The Fallstrider |q 66155/1
step
Watch the dialogue
Ride the River with Ruriq |outvehicle |goto The Azure Span/0 34.31,52.47 |q 66155 |notravel
step
Watch the dialogue
talk Ruriq##190287
|tip He walks to this location.
turnin Ruriq's River Rapids Ride##66155 |goto The Azure Span/0 34.27,52.34
step
talk Kalecgos##185615
|tip Inside the building.
turnin Meeting Kalecgos##65688 |goto The Azure Span/0 40.92,55.00
accept The Many Images of Kalecgos##65689 |goto The Azure Span/0 40.92,55.00
step
click Crystal Pylon
|tip You will fly up to the platform nearby.
Use the Crystal Pylon |q 65689/1 |goto The Azure Span/0 41.15,55.41
step
Reach the Azure Archives |q 65689/2 |goto The Azure Span/0 41.16,57.81
step
talk Kalecgos##185622
turnin The Many Images of Kalecgos##65689 |goto The Azure Span/0 40.74,59.04
accept Driven Mad##65702 |goto The Azure Span/0 40.74,59.04
step
talk Kalecgos##185623
accept Arcane Pruning##65709 |goto The Azure Span/0 40.69,59.10
step
use the Bag of Helpful Goods##191953
collect Ley Scepter##191952 |q 65709/1
stickystart "Collect_Unstable_Arcane"
step
use the Ley Scepter##191952
Repair the North Arcane Field |q 65709/2 |goto The Azure Span/0 39.58,60.27
step
use the Ley Scepter##191952
Repair the East Arcane Field |q 65709/3 |goto The Azure Span/0 41.19,62.27
step
label "Collect_Unstable_Arcane"
Kill enemies around this area
collect 40 Unstable Arcana##190769 |q 65702/1 |goto The Azure Span/0 40.33,61.03
'|kill Destabilized Elemental##181536, Uncontrolled Guardian##181775
step
talk Kalecgos##185623
turnin Arcane Pruning##65709 |goto The Azure Span/0 40.69,59.10
step
talk Kalecgos##185622
turnin Driven Mad##65702 |goto The Azure Span/0 40.74,59.04
accept Straight to the Top##65852 |goto The Azure Span/0 40.74,59.04
step
use Bag of Helpful Goods##191978
collect Arcane Stepping Stone##191979 |q 65852/1 |goto The Azure Span/0 39.58,60.27
step
Reach the Azure Archives Apex |q 65852/2 |goto The Azure Span/0 39.58,60.27
|tip Use the {o}Arcane Stepping Stone{} ability.
|tip It appears as a button on the screen.
|tip You will fly to the top of the floating platforms nearby.
step
talk Kalecgos##186184
|tip On the highest floating platform.
turnin Straight to the Top##65852 |goto The Azure Span/0 39.97,61.46
accept Platform Adjustments##65751 |goto The Azure Span/0 39.97,61.46
accept Arcane Annoyances##65752 |goto The Azure Span/0 39.97,61.46
stickystart "Kill_Feasting_Wyrms"
step
click Unstable Arcane Energy
|tip It looks like a {o}portal{} spewing arcane energy.
|tip On the highest floating platform.
Dispel the Unstable Arcane Energy |q 65751/1 |goto The Azure Span/0 39.51,61.51 |count 1
step
click Unstable Arcane Energy
|tip It looks like a {o}portal{} spewing arcane energy.
|tip On the highest floating platform.
Dispel the Unstable Arcane Energy |q 65751/1 |goto The Azure Span/0 39.58,62.71 |count 2
step
click Unstable Arcane Energy
|tip It looks like a {o}portal{} spewing arcane energy.
|tip On the highest floating platform.
Dispel the Unstable Arcane Energy |q 65751/1 |goto The Azure Span/0 40.23,62.03 |count 3
step
label "Kill_Feasting_Wyrms"
use the Arcane Hook##194891
|tip Use it on {o}Feasting Wyrms{}.
|tip They look like flying {o}purple dragons{} with no arms or legs around this area.
|tip On the highest floating platform. |notinsticky
kill 6 Feasting Wyrm##192739 |q 65752/1 |goto The Azure Span/0 39.90,61.69
step
talk Kalecgos##186184
|tip On the highest floating platform.
turnin Platform Adjustments##65751 |goto The Azure Span/0 39.97,61.46
turnin Arcane Annoyances##65752 |goto The Azure Span/0 39.97,61.46
accept Reclaiming the Oathstone##65854 |goto The Azure Span/0 39.97,61.46
step
talk Kalecgos##186187
|tip On the ground.
Select _"I'm ready to see you reclaim the Azure Oathstone."_ |gossip 54821
Reclaim the Oathstone |q 65854/1 |goto The Azure Span/0 39.44,63.18
step
talk Sindragosa##186188
turnin Reclaiming the Oathstone##65854 |goto The Azure Span/0 39.48,63.07
accept Aiding Azure Span##65855 |goto The Azure Span/0 39.48,63.07
step
talk Arc Tel XVII##189459
fpath Azure Archives |goto The Azure Span/0 37.06,60.82
step
talk Arc Tel XVII##189459
Speak to the Flightmaster |q 65855/1 |goto The Azure Span/0 37.06,60.82
step
talk Lilial Dawnburst##185778
|tip On the ground.
accept Eight-Legged Menace##65750 |goto The Azure Span/0 51.73,61.98
accept Icy Webs##65769 |goto The Azure Span/0 51.73,61.98
stickystart "Free_Cocooned_Survivors"
stickystart "Slay_Shiverweb_Creepers_Or_Shiverweb_Crawlers"
step
kill 3 Primalist Tender##186111 |q 65750/2 |goto The Azure Span/0 50.58,60.58
|tip They look like {o}humanoids{}.
step
label "Free_Cocooned_Survivors"
clicknpc Cocooned Survivor##186222+
|tip They look like large {o}white squirming cocoons{}.
Free #6# Cocooned Survivors |q 65769/1 |goto The Azure Span/0 50.58,60.58
step
label "Slay_Shiverweb_Creepers_Or_Shiverweb_Crawlers"
Kill Shiverweb enemies around this area
|tip They look like {o}spiders{}.
Slay #10# Shiverweb Creepers or Shiverweb Crawlers |q 65750/1 |goto The Azure Span/0 50.58,60.58
'|kill Shiverweb Creeper##185811, Shiverweb Crawler##185810
step
talk Lilial Dawnburst##185778
turnin Eight-Legged Menace##65750 |goto The Azure Span/0 51.73,61.98
turnin Icy Webs##65769 |goto The Azure Span/0 51.73,61.98
accept Grungir the Explorer##65758 |goto The Azure Span/0 51.73,61.98
step
talk Grungir Ironspout##185806
turnin Grungir the Explorer##65758 |goto The Azure Span/0 48.99,64.22
accept Dwarven Antifreeze##65832 |goto The Azure Span/0 48.99,64.22
accept Primalist Tampering##65833 |goto The Azure Span/0 48.99,64.22
stickystart "Collect_Flasks_Of_Dwarven_Antifreeze"
step
kill Frostcaller Sin'tia##186922
collect Sin'tia's Runestone##191136 |q 65833/3 |goto The Azure Span/0 49.05,66.03
step
kill Frostcaller Nai'jin##186921
|tip Inside the cavern.
collect Nai'jin's Runestone##191135 |q 65833/2 |goto The Azure Span/0 47.60,64.63
step
kill Frostcaller Julh'ek##186923
collect Julh'ek's Runestone##191137 |q 65833/1 |goto The Azure Span/0 47.66,62.40
step
label "Collect_Flasks_Of_Dwarven_Antifreeze"
Kill enemies around this area
collect 6 Flask of Dwarven Antifreeze##191042 |q 65832/1 |goto The Azure Span/0 49.08,63.73
'|kill Primalist Infuser##186112, Shiverweb Crusher##185814, Shiverweb Cloaker##195397
step
talk Grungir Ironspout##185806
turnin Dwarven Antifreeze##65832 |goto The Azure Span/0 48.99,64.22
turnin Primalist Tampering##65833 |goto The Azure Span/0 48.99,64.22
accept Kill the Queen##65834 |goto The Azure Span/0 48.99,64.22
step
use the Spider Squasher##191044
|tip Use it on the {o}Shiverweb Queen{}, it will {o}damage her greatly{}.
|tip She looks like a {o}large blue spider{}.
|tip Upstairs inside the cavern.
|tip She is {o}elite{}, but you should be able to {o}kill her easily{} with the help of the {o}quest item{}.
|tip The {o}quest item{} will damage her {o}one time only{}.
kill Shiverweb Queen##186064 |q 65834/1 |goto The Azure Span/0 47.23,65.57
step
talk Grungir Ironspout##185806
turnin Kill the Queen##65834 |goto The Azure Span/0 48.99,64.22
step
talk Noriko the All-Remembering##183543
turnin Aiding Azure Span##65855 |goto The Azure Span/0 46.64,40.16
accept Ask the Locals##66699 |goto The Azure Span/0 46.64,40.16
accept Suspiciously Quiet##69904 |goto The Azure Span/0 46.64,40.16
step
talk Althanus##192222
accept Supporting the Cobalt Assembly##72784 |goto The Azure Span/0 46.65,40.13
step
talk Apprentice Scrumpy##189198
|tip Outside, behind the building.
Find the Apprentices |q 69904/1 |goto The Azure Span/0 47.67,40.23
step
talk Apprentice Scrumpy##189198
turnin Suspiciously Quiet##69904 |goto The Azure Span/0 47.67,40.23
accept Ways of Seeing##66500 |goto The Azure Span/0 47.67,40.23
step
click Lingering Image
|tip It looks like a {o}purple rune symbol{} on the wall.
Tell  _"Close your eyes and listen."_ |gossip 54980
Investigate the Mosaic |q 66500/1 |goto The Azure Span/0 47.78,39.99
step
talk Korrikunit the Whalebringer##190229
Select _"Do you know of any ley lines in the area?"_ |gossip 55417
Consult Korrikunit |q 66699/1 |goto The Azure Span/0 46.76,38.59
step
talk Jokomuupat##190226
Select _"I'm looking for pockets of concentrated magic in the Azure Span."_ |gossip 55418
Consult Jokomuupat |q 66699/2 |goto The Azure Span/0 46.34,38.15
step
click Lingering Image
|tip It looks like a {o}purple rune symbol{} on the column.
|tip Inside the building.
Tell  _"Close your eyes and listen."_ |gossip 55184
Investigate the Pavilion |q 66500/4 |goto The Azure Span/0 46.02,38.64
step
talk Babunituk##190225
Select _"I'm looking for crystals. Purple crystals. In caves."_ |gossip 55419
Consult Babunituk |q 66699/3 |goto The Azure Span/0 45.72,38.84
step
talk Babunituk##190225
turnin Ask the Locals##66699 |goto The Azure Span/0 45.72,38.84
accept Catch the Caravan##65864 |goto The Azure Span/0 45.72,38.84
step
click Lingering Image
|tip It looks like a {o}purple rune symbol{} on the wall.
|tip Inside the crumbled building.
Tell  _"Close your eyes and listen."_ |gossip 55183
Investigate the Workshop |q 66500/3 |goto The Azure Span/0 46.03,40.98
step
click Lingering Image
|tip It looks like a {o}purple rune symbol{} on the wall.
|tip Inside the building.
Tell  _"Close your eyes and listen."_ |gossip 55182
Investigate the Tower |q 66500/2 |goto The Azure Span/0 47.13,40.38
step
talk Apprentice Scrumpy##189198
|tip Outside, behind the building.
turnin Ways of Seeing##66500 |goto The Azure Span/0 47.67,40.23
step
talk Noriko the All-Remembering##183543
accept For The Love of Others##66503 |goto The Azure Span/0 46.64,40.16
step
talk Noriko the All-Remembering##183543
Select _"Can you send me to the top of the tower?"_ |gossip 54965
Talk to Noriko |q 66503/1 |goto The Azure Span/0 46.64,40.16
step
click Ancient Remains
|tip At the top of the crumbled tower.
Investigate the Ancient Remains |q 66503/2 |goto The Azure Span/0 47.13,40.30
step
kill Echo of Loss##190259 |q 66503/3 |goto The Azure Span/0 46.99,40.41
|tip It looks like a {o}dragon ghost{}.
|tip It walks around this area.
|tip Upstairs in the crumbled tower, on the middle floor.
step
talk Noriko the All-Remembering##183543
turnin For The Love of Others##66503 |goto The Azure Span/0 46.64,40.16
step
talk Brena##186224
Select _"You must be Brena. I..."_ |gossip 54825
Find Brena |q 65864/1 |goto The Azure Span/0 35.25,36.98
step
Watch the dialogue
talk Brena##186224
turnin Catch the Caravan##65864 |goto The Azure Span/0 35.25,36.98
step
talk Elder Poa##188809
accept Those Aren't for Chewing##65868 |goto The Azure Span/0 35.37,36.94
step
Watch the dialogue
talk Brena##191810
accept Howling in the Big Tree Hills##65867 |goto The Azure Span/0 35.28,36.94
accept Snap the Traps##65866 |goto The Azure Span/0 35.28,36.94
stickystart "Spring_Traps"
stickystart "Collect_Funerary_Offerings"
step
kill Hyenamaster Durgun##186515 |q 65867/1 |goto The Azure Span/0 35.66,34.72
step
Enter the cave |goto The Azure Span/0 34.94,32.63 < 20 |walk
kill Trap-Layer Kerwal##186516 |q 65867/2 |goto The Azure Span/0 34.99,32.04
|tip Inside the cave.
step
kill Bakra the Bully##186517 |q 65867/3 |goto The Azure Span/0 33.95,33.18
step
label "Spring_Traps"
click Bladejaw Trap##376139+
|tip They look like {o}silver metal bear traps{}.
Spring #8# Traps |q 65866/1 |goto The Azure Span/0 34.75,34.50
step
label "Collect_Funerary_Offerings"
Kill enemies around this area
|tip {o}Some{} of them are {o}stealthed{}.
Collect #8# Funerary Offerings |q 65868/1 |goto The Azure Span/0 35.02,33.92
'|kill Shadepaw Bruiser##183343, Shadepaw Hunter##186490, Scavenging Hyena##183340, Shadepaw Bandit##183341
step
talk Hanu##186618
turnin Snap the Traps##65866 |goto The Azure Span/0 34.27,31.29
turnin Howling in the Big Tree Hills##65867 |goto The Azure Span/0 34.27,31.29
turnin Those Aren't for Chewing##65868 |goto The Azure Span/0 34.27,31.29
step
Watch the dialogue
talk Hanu##189642
|tip He runs to this location.
accept Gnoll Way Out##65871 |goto The Azure Span/0 34.42,31.11
step
talk Brena##186228
accept Ill Gnolls With Ill Intent##65872 |goto The Azure Span/0 34.37,31.02
accept Leader of the Shadepaw Pack##65873 |goto The Azure Span/0 34.37,31.02
step
talk Elder Poa##189662
accept Supplies!##65870 |goto The Azure Span/0 34.34,31.00
stickystart "Slay_Shadepaw_Gnolls"
step
Enter the cave |goto The Azure Span/0 34.02,30.77 < 20 |walk |only if not subzone("Kargpaw's Den")
click Basket of Hunting Game Calls
|tip Inside the cave.
collect Hunting Game Calls##192189 |q 65870/3 |goto The Azure Span/1 36.38,93.17
step
click Barrel of Salt
|tip Inside the cave.
|tip You will be attacked.
collect Meat Curing Salts##191111 |q 65870/1 |goto The Azure Span/1 28.96,75.19
step
click Crude Cage
|tip Inside the cave.
Rescue the Tuskarr |q 65871/1 |goto The Azure Span/1 30.29,60.43 |count 1
step
clicknpc Norukk##186655
|tip Downstairs inside the cave.
Rescue Norukk |q 65871/2 |goto The Azure Span/1 41.43,63.90
step
click Crude Cage
|tip Downstairs inside the cave.
Rescue the Tuskarr |q 65871/1 |goto The Azure Span/1 46.08,41.66 |count 2
step
click Barrel of Skinning Tools
|tip Downstairs inside the cave.
|tip You will be attacked.
collect Skinning Tools##192190 |q 65870/2 |goto The Azure Span/1 51.56,36.59
step
click Crude Cage
|tip Downstairs inside the cave.
Rescue the Tuskarr |q 65871/1 |goto The Azure Span/1 38.09,32.94 |count 3
step
Follow the path down |goto The Azure Span/1 36.23,30.76 < 20 |walk
kill Kargpaw the Fetid##186660
|tip Downstairs inside the cave.
collect Kargpaw's Totem##191118 |q 65873/1 |goto The Azure Span/1 41.56,15.40
step
label "Slay_Shadepaw_Gnolls"
Kill Sickly enemies around this area
|tip They look like {o}gnolls{}.
|tip Inside the cave.
Slay #16# Shadepaw Gnolls |q 65872/1 |goto The Azure Span/1 44.77,44.12
'|kill Sickly Ambusher##189402, Sickly Grunt##186768, Sickly Shaman##186667, Sickly Brute##186668, Sickly Pilferer##193505
step
Leave the cave |goto The Azure Span/1 55.01,84.31 < 20 |walk |only if subzone("Kargpaw's Den")
talk Elder Poa##189662
turnin Supplies!##65870 |goto The Azure Span/0 34.34,31.00
step
talk Brena##186228
turnin Ill Gnolls With Ill Intent##65872 |goto The Azure Span/0 34.37,31.02
turnin Leader of the Shadepaw Pack##65873 |goto The Azure Span/0 34.37,31.02
step
talk Hanu##189642
turnin Gnoll Way Out##65871 |goto The Azure Span/0 34.42,31.10
step
talk Brena##186228
accept Spreading Decay##66239 |goto The Azure Span/0 34.37,31.02
step
talk Brena##187721
turnin Spreading Decay##66239 |goto The Azure Span/0 28.69,34.82
accept Another Ambush##65869 |goto The Azure Span/0 28.69,34.82
step
talk Akiun##187730
Select _"Can you tell me what happened?"_ |gossip 55220
Speak to Akiun |q 65869/1 |goto The Azure Span/0 28.68,34.75
step
talk Unkimi##194613
accept Falling Water##71233 |goto The Azure Span/0 28.46,35.11
step
clicknpc Tuskarr Fisherman##190136
Select  _"<Inspect the corpse further...>"_ |gossip 55691
|tip You will be {o}attacked{}.
|tip If you stay {o}mounted{}, you can quickly {o}fly away{}.
Examine the Body |q 65869/2 |goto The Azure Span/0 29.24,33.57 |count 1
step
clicknpc Tuskarr Hunter##190142
Select  _"<Inspect the corpse further...>"_ |gossip 55692
|tip You will be {o}attacked{}.
|tip If you stay {o}mounted{}, you can quickly {o}fly away{}.
Examine the Body |q 65869/2 |goto The Azure Span/0 29.17,32.55 |count 2
step
clicknpc Tuskarr Craftsman##190143
Select  _"<Inspect the corpse further...>"_ |gossip 55693
|tip You will be {o}attacked{}.
|tip If you stay {o}mounted{}, you can quickly {o}fly away{}.
Examine the Body |q 65869/2 |goto The Azure Span/0 28.20,31.86 |count 3
step
clicknpc Festering Gnoll##190074
Select  _"<Inspect the corpse further...>"_ |gossip 55694
|tip You will be {o}attacked{}.
|tip If you stay {o}mounted{}, you can quickly {o}fly away{}.
Examine the Body |q 65869/2 |goto The Azure Span/0 27.97,32.83 |count 4
step
talk Brena##189708
turnin Another Ambush##65869 |goto The Azure Span/0 28.79,34.74
accept Urgent Action Required##66026 |goto The Azure Span/0 28.79,34.74
step
talk Illusory Mage##187764
accept A Minor Setback##66261 |goto The Azure Span/0 21.01,38.91
|only if not haveq(66262) and not completedq(66262)
step
talk Detry Hornswald##187463
|tip Underwater.
turnin A Minor Setback##66261 |goto The Azure Span/0 22.73,41.67 |only if haveq(66261) or completedq(66261)
accept Waste Water Cleanup##66262 |goto The Azure Span/0 22.73,41.67
step
click Rotting Pile+
|tip They look like {o}piles of brown rocks{} in the water.
|tip You will be attacked.
kill Muck Elemental##187498+
Deal with #6# Rotting Piles |q 66262/1 |goto The Azure Span/0 22.73,41.67
step
talk Detry Hornswald##187463
|tip Underwater.
turnin Waste Water Cleanup##66262 |goto The Azure Span/0 22.73,41.67
accept A Precision Approach##66263 |goto The Azure Span/0 22.73,41.67
accept Disarmed and Docile##66264 |goto The Azure Span/0 22.73,41.67
stickystart "Collect_Gnawbone_Armaments"
step
Enter the cave |goto The Azure Span/0 24.39,39.58 < 30 |walk
kill Flayfist##187505 |q 66263/1 |goto The Azure Span/0 24.83,39.01
|tip Inside the cave.
step
label "Collect_Gnawbone_Armaments"
Kill Gnawbone enemies around this area
click Gnawbone Weapon Rack+
|tip They look like {o}wooden stands with weapons{}.
collect 15 Gnawbone Armaments##191424 |q 66264/1 |goto The Azure Span/0 23.48,40.16
'|kill Gnawbone Brawler##187502, Gnawbone Totemchewer##187936, Gnawbone Grunt##187500, Gnawbone Splintershield##197847, Gnawbone Chainchewer##196521, Gnawbone Underboss##187503
step
talk Detry Hornswald##187463
|tip Underwater.
turnin A Precision Approach##66263 |goto The Azure Span/0 22.73,41.67
turnin Disarmed and Docile##66264 |goto The Azure Span/0 22.73,41.67
accept Who's Next?##66265 |goto The Azure Span/0 22.73,41.67
accept Filthy Mongrels##66266 |goto The Azure Span/0 22.73,41.67
step
talk Illusory Mage##198202
accept M.E.T.A.##66267 |goto The Azure Span/0 23.46,41.85
stickystart "Kill_Hyena_Matriarchs"
stickystart "Free_Abused_Animals"
stickystart "Kill_Hyena_Mongrels"
step
Enter the cave |goto The Azure Span/0 24.11,41.95 < 20 |walk
kill Cracktooth##187528 |q 66265/1 |goto The Azure Span/0 24.22,41.80
|tip Inside the cave.
step
label "Kill_Hyena_Matriarchs"
kill 3 Hyena Matriarch##187566 |q 66266/1 |goto The Azure Span/0 24.22,42.51
|tip They look like {o}larger brown hyenas{}.
step
label "Free_Abused_Animals"
Kill Duskpaw enemies around this area
|tip They look like {o}gnolls{}.
click Gnawed Keys##376414+
|tip They look like {o}small keyrings{} hanging on buildings and objects.
collect Duskpaw Key##191736+ |n
|tip You need a key to free an animal.
click Various Animals
|tip They look like many different types of animals.
|tip They are {o}friendly{}, and are {o}dazed{}.
Free #6# Abused Animals |q 66267/1 |goto The Azure Span/0 24.22,42.51
'|kill Duskpaw Scavenger##187568, Duskpaw Hidestitcher##187941, Duskpaw Trapper##187510
step
label "Kill_Hyena_Mongrels"
kill 12 Hyena Mongrel##187565 |q 66266/2 |goto The Azure Span/0 24.22,42.51
|tip They look like {o}smaller hyenas{}.
step
talk Detry Hornswald##187463
|tip Underwater.
turnin Who's Next?##66265 |goto The Azure Span/0 22.73,41.67
turnin Filthy Mongrels##66266 |goto The Azure Span/0 22.73,41.67
turnin M.E.T.A.##66267 |goto The Azure Span/0 22.73,41.67
accept Third Try's the Charm##66268 |goto The Azure Span/0 22.73,41.67
accept Just To Be Sure##66269 |goto The Azure Span/0 22.73,41.67
stickystart "Slay_Stormfang_Elementalists"
step
Enter the cave |goto The Azure Span/0 22.26,43.21 < 20 |walk
kill Bloodclaw##187553 |q 66268/1 |goto The Azure Span/0 22.22,43.76
|tip Inside the cave.
step
label "Slay_Stormfang_Elementalists"
Kill Stormfang enemies around this area
|tip They look like {o}gnolls{}.
|tip Stormfang Grunts will not count for the quest goal.
Slay #12# Stormfang Elementalists |q 66269/1 |goto The Azure Span/0 22.65,43.42
'|kill Stormfang Dustcaller##187551, Stormfang Hexspiter##187930, Stormfang Bonecaster##187931, Stormfang Shaman##187552
step
talk Detry Hornswald##187463
|tip Underwater.
turnin Third Try's the Charm##66268 |goto The Azure Span/0 22.73,41.67
turnin Just To Be Sure##66269 |goto The Azure Span/0 22.73,41.67
accept Whack-a-Gnoll##66270 |goto The Azure Span/0 22.73,41.67
step
Reach the Challengers |q 66270/1 |goto The Azure Span/0 21.50,41.36
|tip You will be attacked.
step
Watch the dialogue
Kill the enemies that attack
|tip Fill the bar in the quest tracker area.
kill Doomblood##187753
Defeat the Would-be Warlords |q 66270/2 |goto The Azure Span/0 21.50,41.36
'|kill Spineripper##187748, Deathwind##187750, Hacklung##187752, Charfang##187751, Facebreaker##187749
step
talk Detry Hornswald##187463
|tip Underwater.
turnin Whack-a-Gnoll##66270 |goto The Azure Span/0 22.73,41.67
step
talk Brena##186179
turnin Urgent Action Required##66026 |goto The Azure Span/0 20.59,35.67
step
Watch the dialogue
talk Kalecgos##187873
|tip He walks to this location.
accept Breaching the Brackenhide##65838 |goto The Azure Span/0 20.53,35.69
step
click Rotting Root
Select  _"<Cut the root.>"_ |gossip 55350
Investigate the North Area |q 65838/1 |goto The Azure Span/0 18.40,34.74
step
click Rotting Root
Select  _"<Cut the root.>"_ |gossip 54967
Investigate the South Area |q 65838/2 |goto The Azure Span/0 18.87,37.01
step
click Rotting Root
Select  _"<Cut the root.>"_ |gossip 54968
Investigate the West Area |q 65838/3 |goto The Azure Span/0 17.59,36.98
step
talk Kalecgos##187873
turnin Breaching the Brackenhide##65838 |goto The Azure Span/0 16.75,37.31
accept Ley Litter##65846 |goto The Azure Span/0 16.75,37.31
step
talk Norukk##186181
accept Cut Out the Rot##65844 |goto The Azure Span/0 16.76,37.25
step
talk Brena##186179
accept Echoes of the Fallen##65845 |goto The Azure Span/0 16.75,37.22
stickystart "Kill_Rotting_Treants"
stickystart "Collect_Ley_Crystals"
stickystart "Kill_Brackenhide_Rotflingers"
step
use Brena's Totem##191928
|tip Use it on {o}Kaqiata{}.
Contact the Spirit |q 65845/1 |goto The Azure Span/0 17.46,37.08 |count 1
'|clicknpc Kaqiata##188854
step
use Brena's Totem##191928
|tip Use it on {o}Popoak{}.
Contact the Spirit |q 65845/1 |goto The Azure Span/0 18.13,37.66 |count 2
step
use Brena's Totem##191928
|tip Use it on {o}Lutokk{}.
|tip In the entrance of the cave.
Contact the Spirit |q 65845/1 |goto The Azure Span/0 18.52,37.27 |count 3
step
use Brena's Totem##191928
|tip Use it on {o}Nomurok{}.
Contact the Spirit |q 65845/1 |goto The Azure Span/0 17.54,37.93 |count 4
step
use Brena's Totem##191928
|tip Use it on {o}Tuyuki{}.
Contact the Spirit |q 65845/1 |goto The Azure Span/0 17.41,38.66 |count 5
step
label "Kill_Rotting_Treants"
kill 5 Rotting Treant##186361 |q 65844/1 |goto The Azure Span/0 17.89,37.71
|tip They look like {o}walking trees{}.
You can find more inside the cave at [18.56,37.24]
step
label "Collect_Ley_Crystals"
click Gnawed Ley Crystal+
|tip They look like {o}purple crystals{}.
collect 7 Ley Crystal##194431 |q 65846/1 |goto The Azure Span/0 17.78,37.63
step
label "Kill_Brackenhide_Rotflingers"
kill 10 Brackenhide Rotflinger##186362 |q 65844/2 |goto The Azure Span/0 17.89,37.71
|tip They look like {o}gnolls with animal skulls{} on their {o}left shoulders{}.
You can find more inside the cave at [18.56,37.24]
step
talk Brena##186179
turnin Echoes of the Fallen##65845 |goto The Azure Span/0 16.75,37.22
step
talk Norukk##186181
turnin Cut Out the Rot##65844 |goto The Azure Span/0 16.76,37.25
step
talk Kalecgos##187873
turnin Ley Litter##65846 |goto The Azure Span/0 16.75,37.32
accept Tome-ward Bound##65848 |goto The Azure Span/0 16.75,37.32
step
talk Kalecgos##187873
Select _"I'm ready."_ |gossip 55002
Watch the dialogue
Speak to Kalecgos |q 65848/1 |goto The Azure Span/0 16.75,37.32
step
clicknpc Tome of Spellflinging##191636
Ride the Tome of Spellflinging |q 65848/2 |goto The Azure Span/0 16.72,37.30
step
kill Brackenhide Putrifier##196496 |q 65848/3 |goto The Azure Span/0 15.97,38.42 |count 1
|tip It looks like a larger enemy {o}channeling a green spell{}.
|tip Use the abilities on your action bar.
step
kill Brackenhide Putrifier##196496 |q 65848/3 |goto The Azure Span/0 15.15,38.04 |count 2
|tip It looks like a larger enemy {o}channeling a green spell{}.
|tip Use the abilities on your action bar.
step
kill Brackenhide Putrifier##196496 |q 65848/3 |goto The Azure Span/0 15.65,37.32 |count 3
|tip It looks like a larger enemy {o}channeling a green spell{}.
|tip Use the abilities on your action bar.
step
Watch the dialogue
|tip Use the ability on your action bar.
kill Twisted Ancient##186194 |q 65848/4 |goto The Azure Span/0 15.41,37.69
step
Regroup at the Cave |outvehicle |goto The Azure Span/0 15.16,39.18 |q 65848 |notravel
|tip You will automatically travel into the cave.
step
Watch the dialogue
talk Kalecgos##187873
|tip Inside the cave.
turnin Tome-ward Bound##65848 |goto The Azure Span/0 15.30,39.43
accept Realignment##65847 |goto The Azure Span/0 15.30,39.43
step
click Ley Crystal
|tip Inside the cave.
Focus the Ley Line |q 65847/1 |goto The Azure Span/0 15.36,39.50
step
click Decay Infection
|tip Inside the cave.
Destroy the Decay Infection |q 65847/2 |goto The Azure Span/0 15.51,39.30 |count 1
step
click Decay Infection
|tip Inside the cave.
Destroy the Decay Infection |q 65847/2 |goto The Azure Span/0 15.30,39.12 |count 2
step
click Decay Infection
|tip Inside the cave.
Destroy the Decay Infection |q 65847/2 |goto The Azure Span/0 15.07,39.53 |count 3
step
talk Kalecgos##186177
|tip Outside the cave, next to the road.
turnin Realignment##65847 |goto The Azure Span/0 16.11,41.41
step
talk Brena##186179
accept To Iskaara##65849 |goto The Azure Span/0 16.08,41.45
step
talk Skygazer Paatu##186443
fpath Iskaara |goto The Azure Span/0 13.29,48.77
step
talk Brena##186480
|tip Inside the building.
turnin To Iskaara##65849 |goto The Azure Span/0 13.24,49.56
accept Gather the Family##66210 |goto The Azure Span/0 13.24,49.56
accept Brackenhide Hollow: To the Source##66211 |goto The Azure Span/0 13.24,49.56
step
talk Murik##193006
accept Community Connections##72435 |goto The Azure Span/0 13.14,49.26
step
talk Hanu##186186
accept Scampering Scamps##66218 |goto The Azure Span/0 12.90,48.70
step
talk Norukk##196544
Meet the Drake Scholar |q 72435/4 |goto The Azure Span/0 12.93,48.62
step
talk Arvik##186449
Meet the Equipment Supplier |q 72435/1 |goto The Azure Span/0 13.17,48.52
step
talk Tatto##186462
Meet the Mount Supplier |q 72435/3 |goto The Azure Span/0 13.19,48.82
step
click Decorated Teapot
Collect the Funeral Offering |q 66210/1 |goto The Azure Span/0 13.48,48.57 |count 1
step
talk Auntie Kaunnie##189533
accept Rowie##66558 |goto The Azure Span/0 13.76,47.61
step
click Handcrafted Boat
Collect the Funeral Offering |q 66210/1 |goto The Azure Span/0 13.87,49.48 |count 2
step
talk Lukoturukk##193877
accept Fishing: Aileron Seamoth##66212 |goto The Azure Span/0 14.08,49.45
step
talk Rokkutuk##194059
Meet the Recipe Supplier |q 72435/2 |goto The Azure Span/0 13.91,50.08
step
talk Rowie##186542
Select  _"<Tell Rowie his mother's final message.>"_ |gossip 55005
Select  _"<Tell Rowie he probably isn't ready to take on a yeti on his own, yet.>"_ |gossip 55006
Send Rowie Home |q 66558/1 |goto The Azure Span/0 16.12,50.42
step
talk Rowie##186542
turnin Rowie##66558 |goto The Azure Span/0 16.12,50.42
accept Toejam the Terrible##70129 |goto The Azure Span/0 16.12,50.42
step
Enter the cave |goto The Azure Span/0 16.24,50.37 < 15 |walk
talk Toejam the Terrible##193733
|tip Upstairs inside the cave.
Select  _"<Brandish your weapon.>"_ |gossip 55904
Select  _"<Try to explain that you need to fight him.>"_ |gossip 55905
Select  _"<...>"_ |gossip 55906
Select  _"<Ask if he could just pretend to let Rowie kill him.>"_ |gossip 55907
Select  _"<Mime pretending to be killed.>"_ |gossip 55908
Select  _"<Explain there's this tuskarr kid, and his mom just died, and he really needs some encouragement, and...>"_ |gossip 55909
Select  _"<... Mime dying and then someone crying over your corpse.>"_ |gossip 55910
Select  _"<Nod in encouragement.>"_ |gossip 55911
"Slay" Toejam the Terrible |q 70129/1 |goto The Azure Span/0 16.74,49.32
step
Leave the cave |goto The Azure Span/0 16.24,50.37 < 15 |walk |only if subzone("The Azure Span") and _G.IsIndoors()
cast Fishing##131474
|tip Click the {o}Fishing Bobber{} when it {o}bounces in the water{}.
|tip Keep repeating this process.
collect 5 Aileron Seamoth##194967 |q 66212/1 |goto The Azure Span/0 15.65,50.70
step
talk Lukoturukk##193877
turnin Fishing: Aileron Seamoth##66212 |goto The Azure Span/0 14.07,49.45
step
talk Auntie Kaunnie##189533
turnin Toejam the Terrible##70129 |goto The Azure Span/0 13.80,49.01
step
talk Lil Ki##186547
|tip He walks around this area.
accept Cooking Utensils##70939 |goto The Azure Span/0 13.53,48.66
step
talk Murik##193006
turnin Community Connections##72435 |goto The Azure Span/0 13.14,49.26
step
Enter the building |goto The Azure Span/0 12.79,49.34 < 10 |walk |only if not subzone("The Filled Bowl")
talk Elder Nappa##186446
|tip Inside the building.
accept The Weave of a Tale##66213 |goto The Azure Span/0 12.40,49.41
step
talk Elder Poa##186448
|tip Inside the building.
Select _"I have come to tell YOU a tale, Elder."_ |gossip 55010
Select _"It's about the greatest fish anyone has ever caught..."_ |gossip 55011
Select _"By collecting all the rarest fish across the many lands and crafting them into the most irresistible lure."_ |gossip 55014
Select _"A perfectly average fish."_ |gossip 55017
Select _"It slipped from my hands and tried to flop back into the water!"_ |gossip 55020
Select _"I killed and ate it, of course."_ |gossip 55022
Tell a Story |q 66213/1 |goto The Azure Span/0 12.41,49.34
step
talk Elder Nappa##186446
|tip Inside the building.
turnin The Weave of a Tale##66213 |goto The Azure Span/0 12.40,49.41
step
click Stone Sculpture
|tip Inside the building.
Collect the Funeral Offering |q 66210/1 |goto The Azure Span/0 12.49,49.45 |count 3
step
click Ornamented Shield
Collect the Funeral Offering |q 66210/1 |goto The Azure Span/0 12.46,50.32 |count 4
step
talk Lukoturukk##193877
accept Nook News##71234 |goto The Azure Span/0 14.07,49.45
step
click Funeral Boat
Place the Offerings in the Boat |q 66210/2 |goto The Azure Span/0 13.13,48.57
step
talk Brena##186480
|tip Inside the building.
turnin Gather the Family##66210 |goto The Azure Span/0 13.24,49.56
step
talk Kalecgos##189793
|tip Inside the building.
accept The Cycle of the Sea##65850 |goto The Azure Span/0 13.27,49.53
step
talk Brena##186480
|tip Inside the building.
Select _"I'm ready to begin the funeral."_ |gossip 55314
Begin Following Brena |goto The Azure Span/0 13.24,49.56 > 10 |q 65850
step
Watch the dialogue
|tip Follow {o}Brena{} as she walks.
|tip She eventually walks to this location.
Speak to Brena |q 65850/1 |goto The Azure Span/0 12.93,50.43
step
click Funeral Boat
Push the Boat Out to Sea |q 65850/2 |goto The Azure Span/0 13.16,50.20
step
talk Kalecgos##186177
turnin The Cycle of the Sea##65850 |goto The Azure Span/0 12.94,50.39
accept Azure Alignment##65911 |goto The Azure Span/0 12.94,50.39
step
talk Neelo##187674
Select  _"<Ask Neelo what he's doing.>"_ |gossip 55003
Find Neelo and Nau |q 66218/1 |goto The Azure Span/0 10.59,46.87
step
Watch the dialogue
talk Neelo##187674
turnin Scampering Scamps##66218 |goto The Azure Span/0 10.59,46.87
accept Can We Keep It?##66223 |goto The Azure Span/0 10.59,46.87
step
talk Jinkutuk##193637
buy 7 Frigidfish##192153 |q 66223/1 |goto The Azure Span/0 13.85,49.48
step
talk Neelo##187674
turnin Can We Keep It?##66223 |goto The Azure Span/0 10.59,46.87
step
talk Wayun##186212
turnin Nook News##71234 |goto The Azure Span/0 7.46,44.28
step
talk Mordigan Ironjaw##190691
|tip He walks around this area.
accept A Matter of Taste##66781 |goto The Azure Span/0 7.61,44.32
step
click Large Stone
collect Large Stone##193052 |q 66781/1 |goto The Azure Span/0 7.23,45.12
step
talk Mordigan Ironjaw##190691
|tip He walks around this area.
turnin A Matter of Taste##66781 |goto The Azure Span/0 7.61,44.32
step
talk LOU-C Fitzcog##187198
accept Fishy Fingers##66164 |goto The Azure Span/0 7.65,44.33
step
talk Examiner Rowe##187136
accept Salivatory Samples##66154 |goto The Azure Span/0 7.67,44.27
step
talk Aelnara##187156
accept Crystals in the Water##66147 |goto The Azure Span/0 7.64,44.23
stickystart "Recover_Stolen_Parts"
stickystart "Collect_Saliva_Samples"
step
click Conspicuous Crystal+
|tip They look like large single {o}blue crystals{}.
Mine #4# Mysterious Crystals |q 66147/1 |goto The Azure Span/0 10.20,42.91
step
label "Recover_Stolen_Parts"
click Stolen Parts+
|tip They look like small {o}piles of metal cog wheels{}.
Recover #5# Stolen Parts |q 66164/1 |goto The Azure Span/0 10.11,43.23
step
label "Collect_Saliva_Samples"
Kill Brinetooth enemies around this area
|tip They look like {o}gremlins{}.
collect 12 Saliva Sample##191202 |q 66154/1 |goto The Azure Span/0 10.22,43.29
'|kill Brinetooth Gnasher##187271, Brinetooth Jabber##187273, Brinetooth Spawnwatcher##187279
step
talk Aelnara##187156
turnin Crystals in the Water##66147 |goto The Azure Span/0 7.64,44.23
step
talk Examiner Rowe##187136
turnin Salivatory Samples##66154 |goto The Azure Span/0 7.67,44.27
step
talk LOU-C Fitzcog##187198
turnin Fishy Fingers##66164 |goto The Azure Span/0 7.65,44.33
accept Field Experiment##66175 |goto The Azure Span/0 7.65,44.33
step
click Geoscanner 289-07
Activate the Geoscanner |q 66175/1 |goto The Azure Span/0 7.64,44.32
step
Watch the dialogue
talk LOU-C Fitzcog##187198
turnin Field Experiment##66175 |goto The Azure Span/0 7.65,44.33
accept No Dwarf Left Behind##66177 |goto The Azure Span/0 7.65,44.33
step
talk Wayun##186212
accept Afront 'Till A Salt##66232 |goto The Azure Span/0 7.46,44.28
stickystart "Collect_Crystal_Flakes"
step
click Mordigan's Field Notes
Find the First Clue |q 66177/1 |goto The Azure Span/0 9.38,42.53
step
click Mordigan's Flask
Find the Second Clue |q 66177/2 |goto The Azure Span/0 10.02,41.30
step
click Mordigan's Boots
Find the Third Clue |q 66177/3 |goto The Azure Span/0 9.93,39.68
step
click Mordigan's Pants
Find the Fourth Clue |q 66177/4 |goto The Azure Span/0 10.61,41.26
step
talk Aelnara##188030
turnin No Dwarf Left Behind##66177 |goto The Azure Span/0 10.77,41.18
accept Mad Mordigan & The Crystal King##66187 |goto The Azure Span/0 10.77,41.18
stickystop "Collect_Crystal_Flakes"
step
kill Mordigan Ironjaw##187353
|tip Inside the small cave.
|tip He will eventually become friendly.
Decrystallize Mordigan |q 66187/1 |goto The Azure Span/0 11.19,41.05
step
talk Aelnara##188030
turnin Mad Mordigan & The Crystal King##66187 |goto The Azure Span/0 10.77,41.18
accept Back To Camp##66559 |goto The Azure Span/0 10.77,41.18
step
label "Collect_Crystal_Flakes"
Kill Brinetooth enemies around this area
|tip They look like {o}gremlins{}.
collect 120 Crystal Flakes##191309 |q 66232/1 |goto The Azure Span/0 9.94,41.47
'|kill Brinetooth Bruiser##187285, Brinetooth Wavecrasher##188115, Brinetooth Hunter##187281
step
talk Examiner Rowe##187136
turnin Back To Camp##66559 |goto The Azure Span/0 7.67,44.27
step
talk Wayun##186212
turnin Afront 'Till A Salt##66232 |goto The Azure Span/0 7.46,44.28
step
talk Willa Stronghinge##190315
|tip Inside the building.
turnin Falling Water##71233 |goto The Azure Span/0 18.73,24.47
accept Nothing for Breakfast##66837 |goto The Azure Span/0 18.73,24.47
accept It's Cold Up Here##66838 |goto The Azure Span/0 18.73,24.47
step
talk Zon'Wogi##190892
accept The Great Shokhari##66844 |goto The Azure Span/0 19.05,23.97
step
talk Bergede Broadchin##190332
fpath Three-Falls Lookout |goto The Azure Span/0 19.15,23.78
step
talk Modurun Sixtoes##190672
accept It's Brew Time!##66839 |goto The Azure Span/0 19.04,23.27
step
talk Branor Broadbraw##190884
accept Out of Lukh##66843 |goto The Azure Span/0 19.26,26.90
step
talk Gnoll Mon-Ark##183997
accept By Royal Decree##65279 |goto The Azure Span/0 16.20,20.88
step
_Next to you:_
talk Gnoll Mon-Ark
accept Rot Rancher##65306
stickystart "Collect_Smelly_Oozes"
stickystart "Kill_Brackenhide_Warriors"
step
kill 4 Brackenhide Shaman##183957 |q 65279/2 |goto The Azure Span/0 14.07,20.93
|tip They look like {o}gnolls holding staves{}.
step
label "Collect_Smelly_Oozes"
click Rotting Sap##375266+
|tip They look like large {o}yellow ooze dripping from objects{}.
kill Errant Rot##184011+
|tip They look like {o}small oozes{}.
collect 20 Smelly Ooze##189183 |q 65306/1 |goto The Azure Span/0 13.93,20.80
step
_Next to you:_
talk Gnoll Mon-Ark
turnin Rot Rancher##65306
step
label "Kill_Brackenhide_Warriors"
kill 8 Brackenhide Warrior##183956 |q 65279/1 |goto The Azure Span/0 15.20,20.69
|tip They look like {o}gnolls holding maces{}.
step
_Next to you:_
talk Gnoll Mon-Ark
turnin By Royal Decree##65279
accept Keys to the Kingdom##65302
step
click Royal Key
|tip It looks like a {o}small key{}.
|tip You will be attacked.
collect Sticky Gnoll Key##188959 |q 65302/1 |goto The Azure Span/0 13.83,21.92
step
click Royal Coffers
|tip It looks like a {o}wooden barrel{}.
|tip Inside the tree.
Open the Locked Barrel |q 65302/2 |goto The Azure Span/0 14.56,20.60
step
Reach the River Bank |q 65302/3 |goto The Azure Span/0 15.74,19.17
step
talk Gnoll Mon-Ark##183997
|tip He runs to this location.
turnin Keys to the Kingdom##65302 |goto The Azure Span/0 15.74,19.17
accept Making a Mountain Out of a Gnoll Hill##65594 |goto The Azure Span/0 15.74,19.17
step
clicknpc Purified Slime##189840
Hop on Your Slime Mount |q 65594/1 |goto The Azure Span/0 15.71,19.27
step
kill Decay Totem##186137
|tip Use the {o}Lunge{} ability on your action bar.
Destroy the Decay Totem |q 65594/2 |goto The Azure Span/0 15.93,19.67 |count 1
step
kill Decay Totem##186137
|tip Use the {o}Lunge{} ability on your action bar.
Destroy the Decay Totem |q 65594/2 |goto The Azure Span/0 15.52,20.70 |count 2
step
kill Decay Totem##186137
|tip Use the {o}Lunge{} ability on your action bar.
Destroy the Decay Totem |q 65594/2 |goto The Azure Span/0 13.90,20.89 |count 3
step
Go to the Top of the Hill |q 65594/3 |goto The Azure Span/0 12.86,22.01
step
talk Gnoll Mon-Ark##183997
turnin Making a Mountain Out of a Gnoll Hill##65594 |goto The Azure Span/0 12.86,22.01
accept One Bad Apple##65595 |goto The Azure Span/0 12.86,22.01
step
Enter the Cave |q 65595/1 |goto The Azure Span/0 12.95,22.78
|tip Inside the cave.
step
click Meat Storage
|tip Inside the cave.
kill "Friendly" Gnoll##189953
Open the First Cage |q 65595/2 |goto The Azure Span/0 12.95,22.78
step
click Meat Storage
|tip Inside the cave.
kill "Friendly" Gnoll##189981
Open the Second Cage |q 65595/3 |goto The Azure Span/0 12.90,22.77
step
talk Friendly Gnoll##189979
|tip Inside the cave.
Select _"If I open this cage, will you try to eat me?"_
Consult the Third Gnoll |q 65595/4 |goto The Azure Span/0 12.86,22.75
step
click Rotting Root
|tip {o}Run away{} from it {o}after clicking it{}.
|tip Inside the cave.
Pull the Vine |q 65595/5 |goto The Azure Span/0 12.99,22.71
step
kill Root of Decay##185326 |q 65595/6 |goto The Azure Span/0 13.02,22.71
|tip Inside the cave.
step
_Next to you:_
talk Gnoll Mon-Ark
turnin One Bad Apple##65595
step
kill Sky Vixen Shokhari##190761 |q 66844/1 |goto The Azure Span/0 13.33,26.37
|tip She looks like a {o}large brown wolf dragon{}.
|tip She runs around this area.
step
Enter the cave |goto The Azure Span/0 15.86,27.39 < 20 |walk
kill Gloomfur Sasquatch##190723
|tip Inside the cave.
Watch the dialogue
Find Lukh |q 66843/1 |goto The Azure Span/0 15.49,27.63
stickystart "Collect_Vorquin_Meat"
step
kill Striped Bruffalon##190726+
|tip They look like {o}buffalo with antlers{}.
collect 3 Moose Flank##194030 |q 66837/2 |goto The Azure Span/0 17.48,26.62
step
label "Collect_Vorquin_Meat"
Kill Vorquin enemies around this area
|tip They look like {o}horses with antlers{}.
collect 8 Vorquin Meat##193219 |q 66837/1 |goto The Azure Span/0 17.48,26.62
'|kill Vorquin Strider##190944, Vorquin Foal##194433
step
talk Branor Broadbraw##190884
turnin Out of Lukh##66843 |goto The Azure Span/0 19.26,26.90
stickystart "Collect_Fruits_Berries_And_Herbs"
step
Kill Thickmane enemies around this area
|tip They look like {o}bears{}.
collect 7 Thick Bear Pelt##193220 |q 66838/1 |goto The Azure Span/0 21.79,26.76
'|kill Thickmane Bear##190731, Juvenile Thickmane Bear##194436, Thickmane Matriarch##194439
step
label "Collect_Fruits_Berries_And_Herbs"
click Bronze Horn+
|tip They look like small {o}green plants with orange stems{} growing out of the top of them.
click Dragon Foil+
|tip They look like small {o}green plants with blue stems{} growing out of the top of them.
click Blood Berries+
|tip They look like small {o}red bushes{}.
Collect Fruits, Berries, and Herbs |q 66839/1 |goto The Azure Span/0 21.79,26.76
step
talk Willa Stronghinge##190315
|tip Inside the building.
turnin Nothing for Breakfast##66837 |goto The Azure Span/0 18.73,24.47
turnin It's Cold Up Here##66838 |goto The Azure Span/0 18.73,24.47
step
talk Zon'Wogi##190892
turnin The Great Shokhari##66844 |goto The Azure Span/0 19.05,23.97
step
talk Modurun Sixtoes##190672
turnin It's Brew Time!##66839 |goto The Azure Span/0 19.04,23.27
step
talk Manny Read##190679
accept Water Safety##66840 |goto The Azure Span/0 18.54,23.67
step
use the Water Testing Flask##193569
|tip At the {o}bottom of the waterfall{}.
Collect the Waterfall Sample |q 66840/1 |goto The Azure Span/0 17.30,23.20 |count 1
step
talk Gannar Fullpack##190666
accept A Shard of the Past##66841 |goto The Azure Span/0 19.16,24.73
step
use the Water Testing Flask##193569
|tip At the {o}bottom of the waterfall{}.
Collect the Waterfall Sample |q 66840/1 |goto The Azure Span/0 19.39,23.95 |count 2
step
use the Water Testing Flask##193569
|tip At the {o}bottom of the waterfall{}.
|tip You will be attacked.
Collect the Waterfall Sample |q 66840/1 |goto The Azure Span/0 20.00,24.18 |count 3
step
click Ancient Artifact
|tip It looks like a {o}small drum{}.
|tip On a rock at the {o}top of the waterfall{}.
|tip The {o}water{} will try to {o}sweep you away{}, so try to {o}land on the rock{}, or fight against the water current and {o}jump onto it{}.
collect Ancient Artifact##193382 |q 66841/1 |goto The Azure Span/0 17.61,28.24
step
talk Manny Read##190679
turnin Water Safety##66840 |goto The Azure Span/0 18.54,23.67
step
talk Thanessa Silverbloom##190652
turnin A Shard of the Past##66841 |goto The Azure Span/0 18.65,23.67
step
talk Guo-Hee Calmwater##190799
|tip Inside the building.
accept Legendary Foil##66845 |goto The Azure Span/0 18.74,24.43
step
kill Mysterious Apparition##190765
|tip It looks like a {o}blue dragon person ghost{}.
|tip It walks around this area.
Return the Legendary Foil Card |q 66845/1 |goto The Azure Span/0 17.29,26.14
step
talk Guo-Hee Calmwater##190799
|tip Inside the building.
turnin Legendary Foil##66845 |goto The Azure Span/0 18.74,24.43
step
talk Mysterious Apparition##191741
|tip Inside the building.
accept The Heart of the Deck##66846 |goto The Azure Span/0 18.77,24.43
step
talk Mysterious Apparition##191741
|tip Inside the building.
Select _"I am ready to craft the card with you."_ |gossip 55333
Select _"I choose the draconic form."_ |gossip 54910
Select _"I choose the Destroyer."_ |gossip 54911
Select _"I choose Motivation."_ |gossip 54914
Watch the dialogue
Craft a New Card |q 66846/1 |goto The Azure Span/0 18.77,24.43
step
talk Mysterious Apparition##191741
|tip Inside the building.
turnin The Heart of the Deck##66846 |goto The Azure Span/0 18.77,24.43
step
talk Sindragosa##186188
accept The Azure Vaults##71155 |goto The Azure Span/0 39.48,63.07
|only if level >= 70
step
talk Kalecgos##186280
turnin Azure Alignment##65911 |goto The Azure Span/0 39.48,63.02
accept Calling the Blue Dragons##66027 |goto The Azure Span/0 39.48,63.02
step
talk Kalecgos##186280
Select _"I'm ready to see you call back the blue dragonflight."_ |gossip 54829
Speak to Kalecgos |q 66027/1 |goto The Azure Span/0 39.48,63.02
step
talk Kalecgos##186280
turnin Calling the Blue Dragons##66027 |goto The Azure Span/0 39.48,63.02
accept To Rhonin's Shield##65886 |goto The Azure Span/0 39.48,63.02
step
talk Heleth the Wise##197100
|tip On the balcony at the top of the tower.
accept Help Is Our Way!##71094 |goto The Azure Span/0 46.41,25.68
step
click First-Aid Kit
|tip At the top of the tower.
collect Salve-Soaked Bandages##200514 |q 71094/1 |goto The Azure Span/0 45.72,25.85
step
clicknpc Venderthvan##197113
|tip On the balcony at the top of the tower.
Heal Venderthvan |q 71094/3 |goto The Azure Span/0 46.43,25.68
step
Watch the dialogue
talk Heleth the Wise##197100
|tip He runs to this location.
|tip At the top of the tower.
turnin Help Is Our Way!##71094 |goto The Azure Span/0 45.90,25.98
accept A Claw in Need##71095 |goto The Azure Span/0 45.90,25.98
step
talk Venderthvan##197201
|tip At the top of the tower.
Select  _"<Nod kindly and ask what you can do to help him.>"_ |gossip 107112
Speak with Venderthvan |q 71095/1 |goto The Azure Span/0 45.94,25.97
step
click Dusty Jar
|tip It looks like a {o}blue glass jar{} at the top of the {o}bookshelf{}.
|tip At the top of the tower.
Select  _"<Take the jar.>"_ |gossip 107106
Find the Artifact |q 71095/2 |goto The Azure Span/0 45.80,25.57
step
talk Venderthvan##197201
|tip At the top of the tower.
turnin A Claw in Need##71095 |goto The Azure Span/0 45.94,25.97
accept Is A Claw Indeed##71096 |goto The Azure Span/0 45.94,25.97
step
Activate the Artifact |q 71096/1 |goto The Azure Span/0 45.94,25.97
|tip Use the {o}Shake Jar{} ability.
|tip It appears as a button on the screen.
|tip At the top of the tower.
step
Draw the Rune |q 71096/2 |goto The Azure Span/0 45.93,25.77
|tip {o}Trace{} the rune by running on the {o}pink lines{} on the ground.
|tip At the top of the tower.
step
Draw the Rune |q 71096/3 |goto The Azure Span/0 46.01,25.33 |count 1
|tip Use the {o}Shake Jar{} ability.
|tip It appears as a button on the screen.
|tip A rune will appear on the ground.
|tip {o}Trace{} the rune by running on the {o}pink lines{} on the ground.
|tip At the top of the tower.
step
Draw the Rune |q 71096/3 |goto The Azure Span/0 45.54,25.77 |count 2
|tip Use the {o}Shake Jar{} ability.
|tip It appears as a button on the screen.
|tip A rune will appear on the ground.
|tip {o}Trace{} the rune by running on the {o}pink lines{} on the ground.
|tip At the top of the tower.
step
Draw the Rune |q 71096/3 |goto The Azure Span/0 46.00,26.12 |count 3
|tip Use the {o}Shake Jar{} ability.
|tip It appears as a button on the screen.
|tip A rune will appear on the ground.
|tip {o}Trace{} the rune by running on the {o}pink lines{} on the ground.
|tip At the top of the tower.
step
talk Venderthvan##197201
|tip At the top of the tower.
turnin Is A Claw Indeed##71096 |goto The Azure Span/0 45.94,25.97
accept A Helping Claw##71097 |goto The Azure Span/0 45.94,25.97
step
Watch the dialogue
|tip Use the {o}Shake Jar{} ability.
|tip It appears as a button on the screen.
|tip At the top of the tower.
Activate the Artifact |q 71097/1 |goto The Azure Span/0 45.94,25.97
step
talk Venderthvan##197201
|tip At the top of the tower.
turnin A Helping Claw##71097 |goto The Azure Span/0 45.83,25.99
step
talk Venthi##194680
|tip On the ground, under a canopy.
turnin Supporting the Cobalt Assembly##72784 |goto The Azure Span/0 49.05,23.15
accept Welcome to the Assembly##70550 |goto The Azure Span/0 49.05,23.15
step
talk Kruthix##191999
fpath Cobalt Assembly |goto The Azure Span/0 49.10,22.67
step
talk Xavin##195637
Select  _"<View Cobalt Assembly abilities.>"_ |gossip 107115
Speak to Xavin |q 70550/1 |goto The Azure Span/0 49.47,22.60
step
talk Xavin##195637
|tip Choose the {o}Cobalt Cutthroat{} trait in the research window.
Unlock the Cobalt Cutthroat Trait |q 70550/2 |goto The Azure Span/0 49.47,22.60
step
talk Venthi##194680
turnin Welcome to the Assembly##70550 |goto The Azure Span/0 49.05,23.15
step
Reach Rhonin's Shield |q 65886/1 |goto The Azure Span/0 65.90,25.48
step
talk Tuskarr Elder##190300
accept Riders in the Snow##66708 |goto The Azure Span/0 65.90,25.48
step
talk Drok Scrollstabber##189751
turnin To Rhonin's Shield##65886 |goto The Azure Span/0 65.81,25.32
accept To the Mountain##65887 |goto The Azure Span/0 65.81,25.32
accept Drakes be Gone##67299 |goto The Azure Span/0 65.81,25.32
step
talk Polky Cogzapper##196545
accept Artifacts in the Wrong Hands##66964 |goto The Azure Span/0 65.94,25.27
step
talk Portia Striat##191976
fpath Rhonin's Shield |goto The Azure Span/0 66.00,25.39
step
click Arcane Blaster
Control the Arcane Blaster |invehicle |goto The Azure Span/0 66.09,25.47 |q 67299
step
kill 5 Proto-Drake##192873 |q 67299/1 |goto The Azure Span/0 66.06,25.46
|tip They look like {o}red dragons flying in the air{} all around this camp.
|tip Use the abilities on your action bar.
step
talk Drok Scrollstabber##189751
turnin Drakes be Gone##67299 |goto The Azure Span/0 65.81,25.32
step
talk Taelmyr Blazewing##186742
fpath Theron's Watch |goto The Azure Span/0 65.37,16.39
step
talk Tyrnokos Sunstrike##186755
accept Wayward Tools##66622 |goto The Azure Span/0 65.57,16.18
step
talk Sonova Snowden##189401
accept Hollow Up##66553 |goto The Azure Span/0 65.39,15.95
accept Aggressive Self-Defence##66554 |goto The Azure Span/0 65.39,15.95
step
clicknpc Wayward Tool##189817+
|tip They look like {o}various objects{} floating and moving around this area.
|tip They will {o}run away from you{}, so {o}click them quickly{} when you get close to them.
Rescue #6# Wayward Tools |q 66622/1 |goto The Azure Span/0 65.59,16.94
stickystart "Defeat_Winterpelt_Furbolgs"
step
click Various Objects
|tip They look like {o}totems{}, {o}vases{}, large {o}pieces of trees{} and {o}stones{}, and {o}dead bear people{}.
Uncover #6# Clues |q 66553/1 |goto The Azure Span/0 66.39,12.77
step
label "Defeat_Winterpelt_Furbolgs"
Kill Winterpelt enemies around this area
|tip They look like {o}white bear people{}.
Defeat #6# Winterpelt Furbolgs |q 66554/1 |goto The Azure Span/0 66.39,12.77
'|kill Winterpelt Defender##189372, Winterpelt Snowspeaker##189378, Winterpelt Shaman##189381, Winterpelt Guardian##189382
step
talk Tyrnokos Sunstrike##186755
turnin Wayward Tools##66622 |goto The Azure Span/0 65.57,16.18
step
talk Sonova Snowden##189401
turnin Hollow Up##66553 |goto The Azure Span/0 65.39,15.95
turnin Aggressive Self-Defence##66554 |goto The Azure Span/0 65.39,15.95
accept Bear With Me##66555 |goto The Azure Span/0 65.39,15.95
step
talk Sonova Snowden##189401
Select  _"<Repeat the growling furbolg sounds as best you're able.>"_ |gossip 87434
Tell  _"GraagGch. Definitely."_ |gossip 87432
Select  _"<Recreate what you heard to the best of your ability.>"_ |gossip 87452
Select  _"<Growl from the back of your throat.>"_ |gossip 87449
Select  _"<Imitate the rumbling vocalizations of the Winterpelt.>"_ |gossip 87444
Tell  _"All the way in the back, yes."_ |gossip 87441
Witness the Translation |q 66555/1 |goto The Azure Span/0 65.39,15.95
step
talk Sonova Snowden##189401
turnin Bear With Me##66555 |goto The Azure Span/0 65.39,15.95
accept Ice Cave Ya Got There##66556 |goto The Azure Span/0 65.39,15.95
step
Enter the cave |goto The Azure Span/0 66.33,11.53 < 20 |walk |only if not (subzone("Winterpelt Hollow") and _G.IsIndoors())
Investigate the Cave in Winterpelt Hollow |q 66556/1 |goto The Azure Span/0 65.98,10.73
|tip Inside the cave.
step
Watch the dialogue
|tip Stormshackler Rynea's {o}guards become hostile{}.
|tip {o}Kill her guards{} to be able to attack her.
|tip Inside the cave.
kill Stormshackler Rynea##189391 |q 66556/2 |goto The Azure Span/0 65.98,10.73
step
Leave the cave |goto The Azure Span/0 66.33,11.53 < 20 |walk |only if subzone("Winterpelt Hollow") and _G.IsIndoors()
talk Sonova Snowden##189401
turnin Ice Cave Ya Got There##66556 |goto The Azure Span/0 65.39,15.95
accept Academic Aquaintances##66557 |goto The Azure Span/0 65.39,15.95
step
talk Steria Duskgrove##192830
accept Mossing the Mark##68641 |goto The Azure Span/0 63.61,28.82
step
talk Callisto Windsor##192825
accept Prowling Polar Predators##68639 |goto The Azure Span/0 63.58,28.90
stickystart "Slay_Infected_Frigidpelts"
step
click Drakmoss+
|tip They look like {o}green plants hanging{} from the large {o}spinal bones{}.
collect 5 Drakmoss Clump##197983 |q 68641/1 |goto The Azure Span/0 63.41,31.34
step
label "Slay_Infected_Frigidpelts"
Kill Frigidpelt enemies around this area
|tip They look like {o}white bears{} with spikes on them.
|tip Kill the ones with a {o}purple tint{}.
Slay #6# Infected Frigidpelts |q 68639/1 |goto The Azure Span/0 63.88,30.47
'|kill Prowling Frigidpelt##193062, Frigidpelt Matriarch##193063
step
talk Callisto Windsor##192825
turnin Prowling Polar Predators##68639 |goto The Azure Span/0 63.58,28.90
step
talk Steria Duskgrove##192830
turnin Mossing the Mark##68641 |goto The Azure Span/0 63.61,28.82
accept Needles to Say##68642 |goto The Azure Span/0 63.61,28.82
step
talk Callisto Windsor##192825
accept Vitamins and Minerals##68643 |goto The Azure Span/0 63.58,28.90
stickystart "Collect_Arcane_Infused_Quills"
step
click Strange Ice Crystal##378175+
|tip They look like {o}clusters of blue crystals{}.
collect 4 Vial of Mineral Water##198797 |q 68643/1 |goto The Azure Span/0 65.09,29.23
step
label "Collect_Arcane_Infused_Quills"
kill Barbed Bakar##193053+
|tip They look like {o}large white dogs{}.
clicknpc Prickly Crystalspine##193044+
|tip They look like {o}blue and purple porcupines{}.
collect 15 Arcane-Infused Quill##198336 |q 68642/1 |goto The Azure Span/0 64.96,29.56
step
talk Callisto Windsor##192825
turnin Vitamins and Minerals##68643 |goto The Azure Span/0 63.58,28.90
step
talk Steria Duskgrove##192830
turnin Needles to Say##68642 |goto The Azure Span/0 63.61,28.82
accept Sugar, Spice, and Everything Nice##68644 |goto The Azure Span/0 63.61,28.82
step
talk Steria Duskgrove##192830
Select _"I'm ready to begin."_ |gossip 87511
Talk to Steria |q 68644/1 |goto The Azure Span/0 63.61,28.82
step
click Steria's Mortar and Pestle
|tip It appears on the ground.
Prepare the Treatment |q 68644/2 |goto The Azure Span/0 63.58,28.83
step
talk Callisto Windsor##192825
Select _"Steria needs your help."_ |gossip 55895
Convince Callisto to Help |q 68644/3 |goto The Azure Span/0 63.58,28.90
step
Watch the dialogue
talk Sylvie##193068
Select  _"<Administer medicine.>"_ |gossip 55894
Treat Sylvie |q 68644/4 |goto The Azure Span/0 63.61,28.80
step
talk Steria Duskgrove##192830
turnin Sugar, Spice, and Everything Nice##68644 |goto The Azure Span/0 63.58,28.83
accept Save a Slyvern##69862 |goto The Azure Span/0 63.58,28.83
step
Meet Up with the Mages |q 69862/1 |goto The Azure Span/0 65.70,30.84
step
talk Steria Duskgrove##192830
|tip It may take a moment for her to appear.
turnin Save a Slyvern##69862 |goto The Azure Span/0 65.70,30.84
accept They Took the Kits##70338 |goto The Azure Span/0 65.70,30.84
step
use Steria's Charm of Invisibility##200526
|tip It will make you {o}stealthed{}, so you can {o}avoid enemies{}.
clicknpc Snowypelt Kit##193078+
|tip They look like {o}small baby wolf dragons{}.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
|tip Inside the cave.
Rescue #5# Kits |q 70338/1 |goto The Azure Span/0 65.82,30.79
step
Leave the cave |goto The Azure Span/0 65.82,30.79 < 15 |walk |only if subzone("Slyvern Ice Cave")
talk Sylvie##193068
Select  _"<Return the kits to their mother.>"_ |gossip 95272
Return the Kits to Sylvie |q 70338/2 |goto The Azure Span/0 65.73,30.78
step
talk Steria Duskgrove##192830
turnin They Took the Kits##70338 |goto The Azure Span/0 65.70,30.84
step
talk Old Grimtusk##189963
turnin Riders in the Snow##66708 |goto The Azure Span/0 59.26,39.73
accept Field Medic 101##66709 |goto The Azure Span/0 59.26,39.73
step
click Gnoll Spear
Remove the Spear |q 66709/1 |goto The Azure Span/0 59.26,39.73
step
click Pile of Wood##377197+
|tip They look like {o}piles of brown wooden boards{}.
Collect #5# Piles of Wood |q 66709/2 |goto The Azure Span/0 59.20,39.79
step
click Campfire
Start the Campfire |q 66709/3 |goto The Azure Span/0 59.24,39.75
step
talk Old Grimtusk##189963
Select  _"<Cauterize the wound as requested.>"_ |gossip 55063
Cauterize the Wound |q 66709/4 |goto The Azure Span/0 59.26,39.72
step
talk Old Grimtusk##189963
turnin Field Medic 101##66709 |goto The Azure Span/0 59.26,39.72
accept The Extraction##66715 |goto The Azure Span/0 59.26,39.72
step
Find the Missing Tuskarrs |q 66715/1 |goto The Azure Span/0 58.23,41.97
step
talk Frostbite##189625
turnin The Extraction##66715 |goto The Azure Span/0 58.38,41.99
accept Snowball Effect##66703 |goto The Azure Span/0 58.38,41.99
step
kill Snowhide Shaman##189654
|tip Inside the tree.
Retrieve the Totem |q 66703/1 |goto The Azure Span/0 58.35,42.63 |count 1
step
kill Snowhide Shaman##189654
|tip Inside the tree.
Retrieve the Totem |q 66703/1 |goto The Azure Span/0 56.88,42.33 |count 2
step
kill Snowhide Shaman##189654
Retrieve the Totem |q 66703/1 |goto The Azure Span/0 57.64,41.54 |count 3
step
talk Frostbite##189625
turnin Snowball Effect##66703 |goto The Azure Span/0 58.38,41.99
accept Frostbite: Causes and Symptoms##67050 |goto The Azure Span/0 58.38,41.99
step
click Snowhide Totem
Place the Snowhide Totem |q 67050/1 |goto The Azure Span/0 58.27,41.95 |count 1
step
click Snowhide Totem
Place the Snowhide Totem |q 67050/1 |goto The Azure Span/0 58.24,41.99 |count 2
step
click Snowhide Totem
Place the Snowhide Totem |q 67050/1 |goto The Azure Span/0 58.23,41.92 |count 3
step
talk Old Grimtusk##189963
Return to Old Grimtusk |q 67050/2 |goto The Azure Span/0 58.48,40.53
step
talk Old Grimtusk##189963
turnin Frostbite: Causes and Symptoms##67050 |goto The Azure Span/0 58.48,40.53
accept True Survivors##66730 |goto The Azure Span/0 58.48,40.53
step
talk Old Grimtusk##196812
turnin True Survivors##66730 |goto The Azure Span/0 58.79,34.91
accept No Vengeance on an Empty Stomach##71013 |goto The Azure Span/0 58.79,34.91
step
talk Young Quickhands##196840
|tip Learn the {o}Dragon Isles Fishing{} skill.
Learn the Fishing Skill from Young Quickhands |q 71013/1 |goto The Azure Span/0 58.81,34.78
step
cast Fishing##131474
|tip Click the {o}Fishing Bobber{} when it {o}bounces in the water{}.
|tip Keep repeating this process.
Fish #3# Frozen Tail Darters |q 71013/2 |goto The Azure Span/0 58.86,34.83
step
talk Old Grimtusk##196812
turnin No Vengeance on an Empty Stomach##71013 |goto The Azure Span/0 58.79,34.91
accept A Far Furbolg Friend##71014 |goto The Azure Span/0 58.79,34.91
accept All Brawn, No Brains##71015 |goto The Azure Span/0 58.79,34.91
accept Grimtusk's Sister##71016 |goto The Azure Span/0 58.79,34.91
step
talk Kalecgos##186304
turnin To the Mountain##65887 |goto The Azure Span/0 70.01,35.23
accept Primal Offensive##65943 |goto The Azure Span/0 70.01,35.23
step
talk Khadgar##186305
accept Lava Burst##65944 |goto The Azure Span/0 70.03,35.34
accept Elemental Unfocus##66647 |goto The Azure Span/0 70.03,35.34
stickystart "Slay_Primalist_Forces_65943"
step
click Lava Orb
|tip It looks like an {o}orange floating ball of lava{}.
Destroy the Lava Orb |q 65944/1 |goto The Azure Span/0 72.23,37.28 |count 1
step
kill Ruvin Stonegrinder##189939
|tip Inside the small cave.
collect Elemental Focus##192478 |q 66647/1 |goto The Azure Span/0 72.91,38.72
step
click Lava Orb
|tip It looks like an {o}orange floating ball of lava{}.
Destroy the Lava Orb |q 65944/1 |goto The Azure Span/0 73.12,37.76 |count 2
step
click Lava Orb
|tip It looks like an {o}orange floating ball of lava{}.
Destroy the Lava Orb |q 65944/1 |goto The Azure Span/0 73.77,38.32 |count 3
step
label "Slay_Primalist_Forces_65943"
Kill enemies around this area
Slay #15# Primalist Forces |q 65943/1 |goto The Azure Span/0 72.65,37.62
'|kill Fiery Carver##186328, Primal Fire Elemental##186550, Mountain Shaper##186329
step
talk Archmage Khadgar##186688
turnin Lava Burst##65944 |goto The Azure Span/0 74.47,37.84
turnin Elemental Unfocus##66647 |goto The Azure Span/0 74.47,37.84
step
talk Kalecgos##186686
turnin Primal Offensive##65943 |goto The Azure Span/0 74.47,37.81
accept Primal Power##65958 |goto The Azure Span/0 74.47,37.81
step
talk Archmage Khadgar##186688
accept Kirin Tor Recovery##65977 |goto The Azure Span/0 74.46,37.84
stickystart "Recover_The_Primal_Energies"
step
click Elemental Drainer
Rescue the Kirin Tor Mage |q 65977/1 |goto The Azure Span/0 74.59,38.63 |count 1
step
click Elemental Drainer
Rescue the Kirin Tor Mage |q 65977/1 |goto The Azure Span/0 75.27,37.21 |count 2
step
click Elemental Drainer
Rescue the Kirin Tor Mage |q 65977/1 |goto The Azure Span/0 75.64,38.37 |count 3
step
click Elemental Drainer
Rescue the Kirin Tor Mage |q 65977/1 |goto The Azure Span/0 76.13,37.86 |count 4
step
click Elemental Drainer
Rescue the Kirin Tor Mage |q 65977/1 |goto The Azure Span/0 76.57,38.92 |count 5
step
click Elemental Drainer
Rescue the Kirin Tor Mage |q 65977/1 |goto The Azure Span/0 76.02,39.53 |count 6
step
label "Recover_The_Primal_Energies"
Kill enemies around this area
use Elemental Focus##192479
|tip Use it next to their corpses.
Recover the Primal Energies |q 65958/1 |goto The Azure Span/0 75.49,38.27
'|kill Primal Lava Elemental##186438, Primalist Worshipper##186759
step
talk Archmage Khadgar##186779
turnin Primal Power##65958 |goto The Azure Span/0 76.95,39.43
turnin Kirin Tor Recovery##65977 |goto The Azure Span/0 76.95,39.43
accept Free Air##66007 |goto The Azure Span/0 76.95,39.43
step
extraaction Elemental Disguise##378814
|tip Use the {o}Elemental Disguise{} ability.
|tip It appears as a button on the screen.
Disguise Yourself as an Elemental |havebuff Elemental Disguise##378814 |goto The Azure Span/0 76.95,39.43 |q 66007
step
_NOTE:_
During the Next Steps
|tip Avoid the {o}blue swirls{} on the ground.
|tip Avoid the {o}enemies with blue circles{} around them, they can {o}see through{} your disguise.
Click Here to Continue |confirm |q 66007
step
click Lava Beacon
Destroy the Lava Beacon |q 66007/1 |goto The Azure Span/0 77.36,39.91 |count 1
step
click Lava Beacon
Destroy the Lava Beacon |q 66007/1 |goto The Azure Span/0 77.35,38.28 |count 2
step
click Lava Beacon
Destroy the Lava Beacon |q 66007/1 |goto The Azure Span/0 78.22,37.64 |count 3
step
click Lava Beacon
Destroy the Lava Beacon |q 66007/1 |goto The Azure Span/0 78.55,39.04 |count 4
step
Enter the cave |goto The Azure Span/0 78.72,39.53 < 20 |walk
talk Kalecgos##186862
|tip Inside the cave.
turnin Free Air##66007 |goto The Azure Span/0 78.38,39.98
accept In Defense of Vakthros##66009 |goto The Azure Span/0 78.38,39.98
step
kill Korthrox the Destroyer##183422 |q 66009/1 |goto The Azure Span/0 79.27,36.33
|tip {o}Blue circles{} (not the blue lightning swirls), will {o}appear on on the ground{} as you fight him.
|tip Kalecgos will say {o}"Seek sanctuary in my runes!"{} in your chat when the blue circles appear.
|tip {o}Run into the blue circles{} when they appear on the ground.
|tip They will {o}make you immune to damage{} while Korthrox uses a powerful ability.
step
talk Archmage Khadgar##193837
turnin In Defense of Vakthros##66009 |goto The Azure Span/0 77.99,32.47
accept The Storm-Eater's Fury##70041 |goto The Azure Span/0 77.99,32.47
step
click Arcane Disc
Board the Arcane Disc |q 70041/1 |goto The Azure Span/0 78.03,32.44
step
Watch the dialogue
Kill enemies around this area
|tip On the ground nearby.
|tip Use the abilities on your action bar.
Repel #150# Primalist Army |q 70041/2
step
Dispel #3# Storm Funnels |q 70041/3
|tip They look like {o}grey swirling tornados{} on the ground nearby.
|tip Use the {o}Azure Dispel{} ability on your action bar.
step
Kill enemies around this area
|tip On the ground nearby.
|tip Use the abilities on your action bar.
Eliminate #200# Primalist Army |q 70041/4
step
talk Kalecgos##187034
turnin The Storm-Eater's Fury##70041 |goto The Azure Span/0 78.22,33.34
accept The Blue Dragon Oathstone##66015 |goto The Azure Span/0 78.22,33.34
step
talk Kattigat##196254
turnin Artifacts in the Wrong Hands##66964 |goto The Azure Span/0 67.22,44.41
accept The Ailing Apprentice##67111 |goto The Azure Span/0 67.22,44.41
step
talk To'tik##191715
accept The Fending Flames##67724 |goto The Azure Span/0 67.34,44.34
accept Kill it with Fire##70856 |goto The Azure Span/0 67.34,44.34
stickystart "Collect_Intact_Crawler_Venom_Glands"
stickystart "Burn_Infected_Plunderers"
step
click Spider Silk Cocoon##378052
|tip Inside the cavern.
collect Shiverweb Silk##195468 |q 67724/1 |goto The Azure Span/0 68.06,43.06 |count 1
step
click Spider Silk Cocoon##378052
|tip Inside the cavern.
collect Shiverweb Silk##195468 |q 67724/1 |goto The Azure Span/0 68.49,43.63 |count 2
step
click Spider Silk Cocoon##378052
collect Shiverweb Silk##195468 |q 67724/1 |goto The Azure Span/0 68.73,45.38 |count 3
step
click Spider Silk Cocoon##378052
|tip Inside the crumbled building.
collect Shiverweb Silk##195468 |q 67724/1 |goto The Azure Span/0 68.48,45.97 |count 4
step
label "Collect_Intact_Crawler_Venom_Glands"
kill Shiverweb Crawler##192591+
|tip They look like {o}large blue spiders{}.
|tip They can be hidden under the ground.
|tip Inside and outside the cavern. |notinsticky
collect 5 Intact Crawler Venom Gland##194747 |q 67111/1 |goto The Azure Span/0 68.67,44.55
step
label "Burn_Infected_Plunderers"
use the Flamethrower Torch##199928
|tip Use it next to {o}Infected Plunderers{}.
|tip They look like {o}corpses of dragon people{} with small {o}blue eggs{} on them.
|tip Position yourself to {o}point the fire at the corpses{}.
|tip Inside and outside the cave. |notinsticky
Burn #10# Infected Plunderers |q 70856/1 |goto The Azure Span/0 68.67,44.55
'|clicknpc Infected Plunderer##196486
step
talk To'tik##191715
turnin The Fending Flames##67724 |goto The Azure Span/0 67.34,44.34
turnin Kill it with Fire##70856 |goto The Azure Span/0 67.34,44.34
step
talk Kattigat##196254
turnin The Ailing Apprentice##67111 |goto The Azure Span/0 67.22,44.41
accept Back into the Action##70858 |goto The Azure Span/0 67.22,44.41
step
clicknpc Alia Sunsoar##192234
Administer the Ice Cold Antidote |q 70858/1 |goto The Azure Span/0 67.23,44.38
step
Watch the dialogue
talk Alia Sunsoar##196501
|tip She walks to this location.
turnin Back into the Action##70858 |goto The Azure Span/0 67.30,44.34
accept What the Guardian Beholds##70859 |goto The Azure Span/0 67.30,44.34
step
kill Edavix##196377
|tip Inside the building, {o}high up on the cliffside{}.
collect Whispering Shard##200067 |q 70859/1 |goto The Azure Span/0 69.54,43.11
step
talk Alia Sunsoar##196501
turnin What the Guardian Beholds##70859 |goto The Azure Span/0 67.30,44.34
accept Whispered Fragments##70931 |goto The Azure Span/0 67.30,44.34
step
talk To'tik##191715
accept What Valthrux Once Was##70937 |goto The Azure Span/0 67.34,44.34
stickystart "Collect_Whispering_Fragments"
step
click Discarded Journal
Find the Discarded Journal |q 70937/4 |goto The Azure Span/0 69.53,44.12
step
click Crumbling Tablet
|tip Inside the building.
Find the Crumbling Tablet |q 70937/1 |goto The Azure Span/0 70.19,43.29
step
click Sundered Flame Journal
|tip Inside the building, on the ground floor.
Find the Sundered Flame Journal |q 70937/3 |goto The Azure Span/0 70.01,46.15
step
click Scratched Tablet
|tip Inside the building, on the top floor.
Find the Scratched Tablet |q 70937/2 |goto The Azure Span/0 70.25,46.17
step
label "Collect_Whispering_Fragments"
Kill enemies around this area
|tip Only enemies that look like {o}dragon people{} will drop the quest item.
collect 40 Whispering Fragments##200110 |q 70931/1 |goto The Azure Span/0 69.67,45.61
'|kill Unruly Plunderer##196383, Thieving Conjurer##196388, Skulking Bruiser##196384
step
talk To'tik##191715
turnin What Valthrux Once Was##70937 |goto The Azure Span/0 67.34,44.34
step
talk Alia Sunsoar##196501
turnin Whispered Fragments##70931 |goto The Azure Span/0 67.30,44.34
step
talk To'tik##191715
accept No One May Wield It##70946 |goto The Azure Span/0 67.34,44.34
step
talk Alia Sunsoar##196501
Select _"Alia, the artifact is too dangerous to use. It must be destroyed."_ |gossip 106989
Watch the dialogue
Warn Alia |q 70946/1 |goto The Azure Span/0 67.30,44.34
step
talk To'tik##191715
turnin No One May Wield It##70946 |goto The Azure Span/0 67.34,44.34
step
talk Kattigat##196520
accept Good Intentions##70970 |goto The Azure Span/0 67.32,44.39
step
Enter the cave |goto The Azure Span/0 71.76,43.64 < 15 |walk |only if not subzone("Forgotten Cavern")
kill Alia Sunsoar##196737
|tip Inside the cave.
Stop Alia |q 70970/1 |goto The Azure Span/0 72.54,42.85
step
click Valthrux
|tip Inside the cave.
Select  _"<Destroy Valthrux>"_ |gossip 107025
Destroy the Valthrux |q 70970/2 |goto The Azure Span/0 72.55,42.85
step
Leave the cave |goto The Azure Span/0 71.76,43.64 < 15 |walk |only if subzone("Forgotten Cavern")
talk Kattigat##196520
turnin Good Intentions##70970 |goto The Azure Span/0 67.32,44.39
step
talk Rannan Korren##188144
accept To the Ruins!##66391 |goto The Azure Span/0 63.44,57.99
step
talk Maddy Scattershot##187800
turnin Path to Nowhere##66671 |goto The Azure Span/0 63.22,58.42
step
talk Garz##187301
turnin Academic Aquaintances##66557 |goto The Azure Span/0 63.20,58.62
accept Broken Traditions, Broken Bodies##66141 |goto The Azure Span/0 63.20,58.62
step
talk Camilla Highwind##186782
fpath Camp Nowhere |goto The Azure Span/0 63.45,58.66
step
talk Rannan Korren##189171
|tip Inside the crumbled building.
turnin To the Ruins!##66391 |goto The Azure Span/0 65.02,58.61
accept R.A.D. Anomalies##66353 |goto The Azure Span/0 65.02,58.61
step
talk Lathos Sunband##189166
|tip Inside the crumbled building.
accept What the Enemy Knows##66352 |goto The Azure Span/0 65.00,58.62
stickystart "Collect_Sundered_Flames_Orders"
step
use the R.A.D.##191909
Record the Anomaly |q 66353/1 |goto The Azure Span/0 65.53,58.83 |count 1
step
use the R.A.D.##191909
Record the Anomaly |q 66353/1 |goto The Azure Span/0 66.30,59.37 |count 2
step
use the R.A.D.##191909
Record the Anomaly |q 66353/1 |goto The Azure Span/0 66.39,59.73 |count 3
step
label "Collect_Sundered_Flames_Orders"
Kill enemies around this area
|tip They look like {o}blue dragon people{}.
Collect #4# Sundered Flame's Orders |q 66352/1 |goto The Azure Span/0 65.70,59.45
'|kill Tarasek Warrior##187352, Arcane Manipulator##188172, Sundered Sentinel##188173
step
talk Rannan Korren##189171
|tip Inside the crumbled building.
turnin R.A.D. Anomalies##66353 |goto The Azure Span/0 65.02,58.61
step
talk Lathos Sunband##189166
|tip Inside the crumbled building.
turnin What the Enemy Knows##66352 |goto The Azure Span/0 65.00,58.62
accept The Expedition Continues!##66422 |goto The Azure Span/0 65.00,58.62
step
talk Lathos Sunband##189236
turnin The Expedition Continues!##66422 |goto The Azure Span/0 65.64,60.79
accept Worries and Validations##66423 |goto The Azure Span/0 65.64,60.79
step
click Ruined Draconic Tablet
|tip It looks like a {o}stone slab{}.
Find the Clue |q 66423/1 |goto The Azure Span/0 65.32,60.81 |count 1
step
click Ruined Draconic Tablet
|tip It looks like a {o}stone slab{}.
Find the Clue |q 66423/1 |goto The Azure Span/0 65.86,60.55 |count 2
step
talk Lathos Sunband##189236
turnin Worries and Validations##66423 |goto The Azure Span/0 65.64,60.80
step
talk Rannan Korren##188845
accept Arcane Overload##66425 |goto The Azure Span/0 65.63,60.76
step
use the R.A.D.D.E.R.##192110
|tip Near the {o}blue bubble{}.
|tip Inside the building, on the ground floor.
|tip You will be attacked.
Dispel the Arcane Bubble |q 66425/1 |goto The Azure Span/0 65.28,61.31 |count 1
step
use the R.A.D.D.E.R.##192110
|tip Near the {o}blue bubble{}.
|tip Inside the building, on the ground floor.
|tip You will be attacked.
Dispel the Arcane Bubble |q 66425/1 |goto The Azure Span/0 65.10,61.54 |count 2
step
use the R.A.D.D.E.R.##192110
|tip Near the {o}blue bubble{}.
|tip Inside the building, on the top floor.
|tip You will be attacked.
Dispel the Arcane Bubble |q 66425/1 |goto The Azure Span/0 65.06,61.14 |count 3
step
talk Rannan Korren##188845
turnin Arcane Overload##66425 |goto The Azure Span/0 65.63,60.76
step
talk Lathos Sunband##189236
accept Running Out of Time##66426 |goto The Azure Span/0 65.64,60.79
step
Watch the dialogue
Listen to Rannan's and Lathos' Plan |q 66426/1 |goto The Azure Span/0 65.64,60.79
step
talk Lathos Sunband##189792
|tip Inside the building.
turnin Running Out of Time##66426 |goto The Azure Span/0 68.46,60.50
accept A Looming Menace##66427 |goto The Azure Span/0 68.46,60.50
step
kill Arcane Manipulator Tharohn##188171 |q 66427/1 |goto The Azure Span/0 68.08,61.59
|tip On the stone platform.
step
talk Lathos Sunband##189792
|tip Inside the building.
turnin A Looming Menace##66427 |goto The Azure Span/0 68.46,60.50
step
talk Rannan Korren##189791
|tip Inside the building.
accept Friendship For Granted##66428 |goto The Azure Span/0 68.48,60.44
step
use the R.A.D.D.E.R.E.R.##192475
|tip Inside the building.
Use the R.A.D.D.E.R.E.R. |q 66428/1 |goto The Azure Span/0 68.60,60.39
step
Watch the dialogue
|tip Inside the building.
Dispel the Arcane Barrier |q 66428/2 |goto The Azure Span/0 68.50,60.47
step
talk Rannan Korren##189791
|tip Inside the building.
turnin Friendship For Granted##66428 |goto The Azure Span/0 68.48,60.43
accept I Will Remember##66429 |goto The Azure Span/0 68.48,60.43
step
talk Narn##190873
Select _"What's happening?"_ |gossip 55174
Speak to Narn |q 66141/1 |goto The Azure Span/0 65.62,54.84
step
talk Garz##187308
turnin Broken Traditions, Broken Bodies##66141 |goto The Azure Span/0 63.51,52.98
accept Former Furbolg Family##66148 |goto The Azure Span/0 63.51,52.98
accept Elemental Influence##66149 |goto The Azure Span/0 63.51,52.98
accept Rescuing Radza##66150 |goto The Azure Span/0 63.51,52.98
stickystart "Slay_Rustpine_Furbolg_And_Elementals"
step
talk Radza Thunderclaw##187501
|tip You {o}may not be able to talk to him{} if someone already did.
|tip Skip to the next step, if you can't talk to him.
Select _"I am prepared to fight off your captors."_ |gossip 54654
|tip You will be attacked.
Speak to Radza Thunderclaw |q 66150/1 |goto The Azure Span/0 60.95,51.46
step
Kill the enemies that attack in waves
kill Khargall Fivefangs##188102
Defend Radza Thunderclaw |q 66150/2 |goto The Azure Span/0 60.95,51.46
step
click Primalist Earthbind Totem+
|tip They look like {o}small wooden pedestals{}.
Destroy #3# Primalist Earthbind Totems |q 66149/1 |goto The Azure Span/0 61.80,51.94
step
label "Slay_Rustpine_Furbolg_And_Elementals"
Kill enemies around this area
Slay #15# Rustpine Furbolg and Elementals |q 66148/1 |goto The Azure Span/0 61.80,51.94
'|kill Rustpine Loamcrafter##188664, Rustpine Loamcrafter##191155, Rustpine Loamcrafter##187539, Rustpine Immolator##187396, Rustpine Rager##188803, Stonegrabber Shard##187506, Rustpine Fireflinger##191152, Stonegrabber Fragment##187625
step
talk Narn##187534
turnin Former Furbolg Family##66148 |goto The Azure Span/0 60.93,50.59
turnin Elemental Influence##66149 |goto The Azure Span/0 60.93,50.59
step
talk Radza Thunderclaw##187616
turnin Rescuing Radza##66150 |goto The Azure Span/0 60.91,50.51
accept His Stone Heart##66151 |goto The Azure Span/0 60.91,50.51
step
kill Stoneheart##187387 |q 66151/1 |goto The Azure Span/0 60.51,49.48
|tip Inside the cave.
step
talk Radza Thunderclaw##187616
turnin His Stone Heart##66151 |goto The Azure Span/0 60.91,50.51
step
talk Garz##187535
accept Nowhere to Go##66152 |goto The Azure Span/0 60.99,50.57
step
talk Garz##188897
turnin Nowhere to Go##66152 |goto The Azure Span/0 63.20,58.67
step
talk Rannan Korren##193337
turnin I Will Remember##66429 |goto The Azure Span/0 63.68,58.91
step
talk Sindragosa##186188
Select _"I'm ready to see the oathstone be reclaimed."_ |gossip 55293
Witness the Ceremony |q 66015/1 |goto The Azure Span/0 39.48,63.07
step
talk Sindragosa##186188
turnin The Blue Dragon Oathstone##66015 |goto The Azure Span/0 39.48,63.07
step
talk Kalecgos##190000
accept To Valdrakken##66244 |goto The Azure Span/0 39.47,63.05
|only if not (haveq(72293) or completedq(72293))
step
talk Varsek##196816
|tip Inside the crumbled building.
turnin All Brawn, No Brains##71015 |goto The Azure Span/0 21.05,35.09
accept Elementary, My Dear Drakonid##71009 |goto The Azure Span/0 21.05,35.09
step
Watch the dialogue
clicknpc Instructional Crystal##196837
Select _"I'm ready to "follow the pattern"."_ |gossip 107039
Activate the Instructional Crystal |q 71009/1 |goto The Azure Span/0 21.54,35.48
step
Follow the Pattern |q 71009/2 |goto The Azure Span/0 21.68,35.39
|tip {o}Trace{} the {o}pink lines{} by running on them.
step
talk Varsek##196838
turnin Elementary, My Dear Drakonid##71009 |goto The Azure Span/0 21.51,35.47
accept Varsek Recruited##71012 |goto The Azure Span/0 21.51,35.47
step
talk Rauvros##194415
|tip On top of the building, on the middle floor.
accept The Joy of Painting##70166 |goto The Azure Span/0 22.14,36.77
step
talk Tavio##195935
turnin Tuskarr Fishing Gear##71230 |goto The Azure Span/0 12.82,49.18
step
Enter the building |goto The Azure Span/0 12.79,49.34 < 10 |walk
talk Naluki##196841
|tip Inside the building.
turnin Grimtusk's Sister##71016 |goto The Azure Span/0 12.47,49.23
accept Naluki's Letter##71017 |goto The Azure Span/0 12.47,49.23
step
talk Elder Poa##186448
|tip Inside the building.
accept Tuskarr Champion's Tales##70940 |goto The Azure Span/0 12.41,49.34
step
talk Hudson##194323
turnin The Joy of Painting##70166 |goto The Azure Span/0 7.86,53.48
step
Watch the dialogue
talk Ranpiata##194425
accept Sad Little Accidents##70168 |goto The Azure Span/0 7.87,53.45
step
talk Barst##196806
turnin A Far Furbolg Friend##71014 |goto The Azure Span/0 1.18,39.26
accept A Little Kelp for My Friends##70996 |goto The Azure Span/0 1.18,39.26
step
kill Wild Kelp Elemental##196809 |q 70996/1 |goto The Azure Span/0 0.81,39.03
|tip Inside the small cave on the beach.
step
talk Barst##196806
|tip Outside, on top of the cave.
turnin A Little Kelp for My Friends##70996 |goto The Azure Span/0 1.18,39.26
accept Barst Recruited##71000 |goto The Azure Span/0 1.18,39.26
step
talk Old Grimtusk##196812
turnin Varsek Recruited##71012 |goto The Azure Span/0 58.79,34.91
turnin Barst Recruited##71000 |goto The Azure Span/0 58.79,34.91
turnin Naluki's Letter##71017 |goto The Azure Span/0 58.79,34.91
accept Loose Ends##71135 |goto The Azure Span/0 58.79,34.91
step
click Campfire
Send the Rally Signal |q 71135/1 |goto The Azure Span/0 59.08,44.26
step
Watch the dialogue
kill Frostbite##197164 |q 71135/2 |goto The Azure Span/0 58.91,44.14
|tip {o}Kill the gnolls{} behind him to {o}remove his shield{}.
step
talk Old Grimtusk##196812
turnin Loose Ends##71135 |goto The Azure Span/0 58.79,34.91
step
|next "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)"	|only if completedq(72293)
|next "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Thaldraszus (Full Zone)"		|only if not completedq(72293)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Thaldraszus (Full Zone)",{
author="support@zygorguides.com",
},[[
step
talk Aluri##193321
fpath Valdrakken |goto Valdrakken/0 44.04,67.97
step
talk Waywatcher Lorin##197533
accept The Wayward Waywatcher##71219 |goto Valdrakken/0 50.14,62.38
step
talk Hot Springs Spa Promoter##197986
accept Relaxation Time!##72067 |goto Valdrakken/0 48.06,59.63
step
talk Grimla Fizzlecrank##194578
accept Lost to the Skies##71239 |goto Valdrakken/0 25.17,66.16
step
talk Unatos##193015
|tip Inside the building.
accept Orientation: Valdrakken##72406 |goto Valdrakken/0 58.16,35.11
|only if not achieved(16363)
step
click Teleport to Seat of the Aspects
|tip Upstairs inside the building.
Access the Teleporter to the Seat of the Aspects |q 66244/2 |goto Valdrakken/0 61.95,32.12
|only if haveq(66244)
step
Make Your Way to Valdrakken |q 66244/1 |goto Valdrakken/0 58.11,34.87
|tip At the top of the tower.
|only if haveq(66244)
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
turnin To Valdrakken##66244 |goto Valdrakken/0 58.11,34.87 |only if haveq(66244) or completedq(66244)
turnin Thaldraszus##72269 |goto Valdrakken/0 58.11,34.87 |only if haveq(72269) or completedq(72269)
accept A Message Most Dire##66159 |goto Valdrakken/0 58.11,34.87
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
Select _"So, about the Azure Span..."_ |gossip 55406
Deliver the Information |q 66159/1 |goto Valdrakken/0 58.11,34.87
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
turnin A Message Most Dire##66159 |goto Valdrakken/0 58.11,34.87
step
Watch the dialogue
talk Captain Drine##189842
|tip She runs to this location.
|tip At the top of the tower.
accept Nowhere to Hide##66163 |goto Valdrakken/0 59.37,34.74
accept Eyes and Ears##66166 |goto Valdrakken/0 59.37,34.74
step
use the Revealing Dragon's Eye##198859
|tip At the top of the tower.
Use the Revealing Dragon's Eye |q 66163/1 |goto Valdrakken/0 59.37,34.74
step
talk Kalecgos##187676
|tip At the top of the tower.
accept The Algeth'ar Academy##72193 |goto Valdrakken/0 61.69,36.03
|only if level >= 70
step
talk Watcher Koranos##191369
|tip At the top of the tower.
accept Halls of Infusion: Entropy to Order##72192 |goto Valdrakken/0 54.38,40.94
step
talk Thalendra##192522
accept A Dryad's Work Is Never Done##67094 |goto Valdrakken/0 72.76,66.17
step
talk Tender Xina##189364
|tip He walks around this area.
accept Garden Variety##72189 |goto Valdrakken/0 77.43,67.31
step
talk Valdrakken Citizen##189869
Select _"Halt! I see through your disguise!"_ |gossip 55202
|tip You will be attacked by 3 enemies.
|tip You may need to {o}wait{} for them to respawn.
kill 3 Primalist Infiltrator##189895 |q 66163/2 |goto Valdrakken/0 80.36,50.34 |count 3 |noordinal
step
talk Valdrakken Citizen##189869
Select _"Halt! I see through your disguise!"_ |gossip 55202
|tip You will be attacked by 3 enemies.
|tip You may need to {o}wait{} for them to respawn.
kill 6 Primalist Infiltrator##189895 |q 66163/2 |goto Valdrakken/0 68.52,64.87 |count 6 |noordinal
step
clicknpc Hungry Swoglet##192810
|tip It looks like a {o}large yellow frog{}.
|tip It walks around this area.
Feed the Hungry Swoglet |q 67094/1 |goto Valdrakken/0 67.05,70.49
step
clicknpc Hungry Slyvern Kit##192804
|tip It looks like a {o}small white wolf dragon{}.
|tip It walks around this area.
Feed the Hungry Slyvern Kit |q 67094/3 |goto Valdrakken/0 56.93,80.00
step
clicknpc Hungry Hatchling##192793
|tip It looks like a {o}small turtle{}.
|tip On the plateau above the building, next to the water.
|tip It walks around this area.
Feed the Hungry Hatchling |q 67094/4 |goto Valdrakken/0 58.54,57.09
step
Enter the building |goto Valdrakken/0 55.33,57.37 < 20 |walk
click Storage Chest
|tip Inside the building.
Watch the dialogue
Investigate the Bank |q 66166/2 |goto Valdrakken/0 59.20,54.70
step
clicknpc Hungry Eft##192585
|tip it looks like a {o}small white salamander{}.
|tip It walks around this area and in the water nearby.
Feed the Hungry Eft |q 67094/5 |goto Valdrakken/0 51.29,71.45
step
talk Kaestrasz##185561
Meet the Drake Manuscript and Armor Supplier |q 72406/2 |goto Valdrakken/0 46.67,78.94
|only if haveq(72406)
step
clicknpc Hungry Otter Pup##192808
|tip It looks like a {o}small brown rodent{}.
|tip It walks around this area.
Feed the Hungry Otter Pup |q 67094/2 |goto Valdrakken/0 42.68,74.86
step
talk Dothenos##191000
Meet the Trade Coordinator |q 72406/3 |goto Valdrakken/0 36.38,63.02
|only if haveq(72406)
step
click Consortium Ledger
Watch the dialogue
Investigate the Crafter's Consortium |q 66166/1 |goto Valdrakken/0 34.63,61.30
step
talk Provisioner Thom##193659
|tip Inside the building.
Meet the Equipment Supplier |q 72406/1 |goto Valdrakken/0 36.57,50.64
|only if haveq(72406)
step
click Goblet
|tip It looks like a {o}golden drinking cup{} on a table.
|tip Inside the building.
Watch the dialogue
Investigate the Inn |q 66166/3 |goto Valdrakken/0 46.92,47.72
step
talk Erugosa##185556
|tip Inside the building.
accept To Cook With Finery##70880 |goto Valdrakken/0 46.51,46.24
|only if not achieved(16363)
step
click Discarded Note
|tip It looks like a {o}piece of paper{} laying on the bar.
|tip Inside the building.
accept Archival Assistance##67007 |goto Valdrakken/0 47.80,46.57
|only if level >= 70
step
talk Talikka##198349
|tip Inside the building.
accept Reservoir Reservations##72190 |goto Valdrakken/0 25.49,40.93
step
talk Kemora##189973
|tip Inside the building.
turnin Archival Assistance##67007 |goto Valdrakken/0 35.04,28.07
|only if level >= 70
step
talk Spa Concierge##197670
turnin Relaxation Time!##72067 |goto Thaldraszus/0 40.42,49.54
accept Serene Dreams##72246 |goto Thaldraszus/0 40.42,49.54
step
talk Xijan Thornpaw##194717
turnin Serene Dreams##72246 |goto Thaldraszus/0 40.49,48.92
accept Good Reviews##70738 |goto Thaldraszus/0 40.49,48.92
step
talk Quilius##196160
accept Steam Cleaning##70740 |goto Thaldraszus/0 40.46,48.88
step
click Misplaced Luggage
accept Some Favorite Things##70741 |goto Thaldraszus/0 41.47,47.35
stickystart "Rescue_Youga_Students"
stickystart "Slay_Elementals_70740"
step
talk Fleur Starling##198696
Rescue the Youga Instructor |q 70738/2 |goto Thaldraszus/0 41.17,47.50
step
click Yougah-for-Ogres Manual
|tip It looks like a {o}book{}.
Find the Belongings |q 70741/1 |goto Thaldraszus/0 41.16,47.44 |count 2
step
click Lost S.E.L.F.I.E. Camera
|tip It looks like a {o}small camera{} on the table.
Find the Belongings |q 70741/1 |goto Thaldraszus/0 40.72,47.31 |count 3
step
click Stylish Umbrella
|tip It looks like a {o}red and white umbrella{}.
Find the Belongings |q 70741/1 |goto Thaldraszus/0 40.10,46.61 |count 4
step
click Overturned Beach Chair
|tip It looks like a {o}wooden foldable chair{} with red and green cloth.
Find the Belongings |q 70741/1 |goto Thaldraszus/0 40.27,46.16 |count 5
step
click Soggy You-ga Pillow
|tip It looks like a {o}red square sitting pillow{} at the bottom of the waterfall.
Find the Belongings |q 70741/1 |goto Thaldraszus/0 41.01,45.96 |count 6
step
label "Rescue_Youga_Students"
talk Terrorized Spa Guest##194808+
|tip They look like {o}friendly NPCs standing in fear{}.
Rescue #6# Youga Students |q 70738/1 |goto Thaldraszus/0 40.92,46.66
step
label "Slay_Elementals_70740"
Kill enemies around this area
|tip They look like hostile {o}steam and fire elementals{}.
|tip The smaller neutral Steam Jet elementals will not count for the quest goal.
Slay #12# Elementals |q 70740/1 |goto Thaldraszus/0 40.92,46.66
'|kill Steam Scaulder##194937, Flame Blister##197413
step
talk Quilius##196160
turnin Steam Cleaning##70740 |goto Thaldraszus/0 40.46,48.88
step
talk Xijan Thornpaw##194717
turnin Good Reviews##70738 |goto Thaldraszus/0 40.49,48.93
turnin Some Favorite Things##70741 |goto Thaldraszus/0 40.49,48.93
step
talk Cae'Ryn##194812
accept Precious Baby##70743 |goto Thaldraszus/0 40.49,48.97
step
Find the Baby |q 70743/1 |goto Thaldraszus/0 38.90,45.22
step
Watch the dialogue
clicknpc Baby##196194
|tip It looks like a {o}tiny dog{}.
Comfort Baby |q 70743/2 |goto Thaldraszus/0 38.90,45.22
step
click Horrible Mess
accept Look at the Bones!##70744 |goto Thaldraszus/0 38.89,45.25
step
click More Horrible Mess+
|tip They look like {o}piles of red meat and bones{}.
Clean #10# Messes |q 70744/1 |goto Thaldraszus/0 38.53,46.51
step
talk Elzara##194812
turnin Precious Baby##70743 |goto Thaldraszus/0 40.49,48.97
step
talk Xijan Thornpaw##194717
turnin Look at the Bones!##70744 |goto Thaldraszus/0 40.49,48.92
step
talk Quilius##196160
accept Enforced Relaxation##70745 |goto Thaldraszus/0 40.46,48.88
step
Drop down and enter the cave |goto Thaldraszus/0 39.88,48.45 < 20 |walk
kill Vadne Bleakheart##195764 |q 70745/1 |goto Thaldraszus/0 40.06,49.02
|tip Inside the cave.
step
talk Quilius##196160
|tip Up on the ledge, above the cave.
turnin Enforced Relaxation##70745 |goto Thaldraszus/0 40.46,48.88
step
talk Captain Drine##189842
|tip Near the entrance to a building.
turnin Nowhere to Hide##66163 |goto Valdrakken/0 54.77,47.23
turnin Eyes and Ears##66166 |goto Valdrakken/0 54.77,47.23
accept Southern Exposure##66167 |goto Valdrakken/0 54.77,47.23
step
talk Unatos##193015
|tip Inside the building, on the ground floor.
turnin Orientation: Valdrakken##72406 |goto Valdrakken/0 58.17,35.12
|only if haveq(72406) or completedq(72406)
step
talk Thalendra##192522
turnin A Dryad's Work Is Never Done##67094 |goto Valdrakken/0 72.76,66.17
accept A Dryadic Remedy##67606 |goto Valdrakken/0 72.76,66.17
step
talk Gryrmpech##187300
|tip Inside the open building.
turnin Garden Variety##72189 |goto Thaldraszus/0 37.86,75.46
accept Azeroth Pest Control##66134 |goto Thaldraszus/0 37.86,75.46
step
kill 8 Agitated Seedling##187687 |q 66134/1 |goto Thaldraszus/0 37.77,75.26
step
talk Gryrmpech##187300
|tip Inside the open building.
turnin Azeroth Pest Control##66134 |goto Thaldraszus/0 37.86,75.47
accept The Gardener's Apprentice##66135 |goto Thaldraszus/0 37.86,75.47
step
click Garden Junk
|tip Inside the building.
accept One Drakonid's Junk##66278 |goto Thaldraszus/0 38.91,74.25
step
Locate Lord Basilton |q 66135/1 |goto Thaldraszus/0 38.95,74.18
|tip Click the {o}various objects{} inside the building.
|tip You will {o}find him{} in the {o}last object{} you click, after searching them all.
step
talk Gryrmpech##187300
|tip Inside the open building.
turnin The Gardener's Apprentice##66135 |goto Thaldraszus/0 37.86,75.46
turnin One Drakonid's Junk##66278 |goto Thaldraszus/0 37.86,75.46
accept Elemental Extract##66136 |goto Thaldraszus/0 37.86,75.46
accept Lashing Out##66137 |goto Thaldraszus/0 37.86,75.46
accept New Kid on the Clock##66279 |goto Thaldraszus/0 37.86,75.46
step
clicknpc Lord Basilton##187400
|tip Inside the open building.
Let Basilton Sniff Your Hand |q 66279/1 |goto Thaldraszus/0 37.88,75.44
step
Kill enemies around this area
|tip They look like {o}water elementals{}.
collect 5 Watery Essence##191473 |q 66136/1 |goto Thaldraszus/0 37.11,71.19
'|kill Churning Splash##187318, Hulking Wave##187793
step
talk Orizmu##187310
Take the Pocket Watch to Orizmu in the Gardens |q 66279/2 |goto Thaldraszus/0 35.24,72.64
step
talk Orizmu##187310
turnin New Kid on the Clock##66279 |goto Thaldraszus/0 35.24,72.64
accept Like Sands Through the Hourglass##66138 |goto Thaldraszus/0 35.24,72.64
step
click Pile of Windswept Time Sand+
|tip They look like {o}piles of tan dirt{}.
|tip You may be attacked.
Gather #8# Piles of Windswept Time Sand |q 66138/1 |goto Thaldraszus/0 36.02,72.73
step
talk Orizmu##187310
turnin Like Sands Through the Hourglass##66138 |goto Thaldraszus/0 35.24,72.64
step
Kill enemies around this area
|tip They look like {o}walking plants{}.
Slay #10# Lashers |q 66137/1 |goto Thaldraszus/0 34.45,72.41
'|kill Invasive Deathblossom##187316, Deathblossom Weedling##187885
step
talk Gryrmpech##187300
|tip Inside the open building.
turnin Elemental Extract##66136 |goto Thaldraszus/0 37.86,75.46
turnin Lashing Out##66137 |goto Thaldraszus/0 37.86,75.46
accept Flame at Last##66139 |goto Thaldraszus/0 37.86,75.46
step
use the Concentrated Essence of Water##191676
|tip Use it on {o}Blazing Inferno{}.
|tip It looks like a {o}large fire elemental{}.
|tip It will {o}become weakened{} and easier to kill.
kill Blazing Inferno##189043 |q 66139/2 |goto Thaldraszus/0 35.63,75.23
step
talk Gryrmpech##187300
|tip Inside the open building.
turnin Flame at Last##66139 |goto Thaldraszus/0 37.86,75.46
accept Carry On, Basilton##66412 |goto Thaldraszus/0 37.86,75.46
step
clicknpc Lord Basilton##187400
|tip Inside the open building.
Select  _"<Basilton looks up at you and gives an excited squeak. He'd love to go along with you on more adventures!>"_ |gossip 55121
Speak with Lord Basilton |q 66412/1 |goto Thaldraszus/0 37.88,75.44
step
talk Gryrmpech##187300
|tip Inside the open building.
turnin Carry On, Basilton##66412 |goto Thaldraszus/0 37.86,75.46
step
talk Valdren##193454
|tip High up on the cliff.
fpath Garden Shrine |goto Thaldraszus/0 35.62,78.85
step
Travel to South Hold Gate |q 66167/1 |goto Thaldraszus/0 35.85,82.56
step
talk Guardian Velomir##190086
Aid Guardian Velomir |q 66167/2 |goto Thaldraszus/0 35.85,82.56
step
talk Guardian Velomir##190180
turnin Southern Exposure##66167 |goto Thaldraszus/0 35.85,82.56
accept Vengeance, Served Hot##66169 |goto Thaldraszus/0 35.85,82.56
accept The Fog of Battle##66246 |goto Thaldraszus/0 35.85,82.56
stickystart "Slay_Magmasworn_Primalists"
step
clicknpc Mangled Corpse##190440
Select _"Inspect the body."_ |gossip 54894
Find Velomir's Unit |q 66246/1 |goto Thaldraszus/0 36.25,83.73 |count 1
step
clicknpc Badly Injured Guardian##190442
|tip Inside the building.
Select _"Inspect the body."_ |gossip 55103
Find Velomir's Unit |q 66246/1 |goto Thaldraszus/0 35.76,84.19 |count 2
step
clicknpc Mangled Corpse##190247
Select _"Inspect the body."_ |gossip 54893
Find Velomir's Unit |q 66246/1 |goto Thaldraszus/0 36.46,85.39 |count 3
step
label "Slay_Magmasworn_Primalists"
Kill Magmasworn enemies around this area
Slay #12# Magmasworn Primalists |q 66169/1 |goto Thaldraszus/0 36.47,84.79
'|kill Magmaclaw Raider##187218, Magmasworn Lavablade##190212, Magmasworn Flameweaver##193414
step
talk Guardian Velomir##190180
|tip On the bridge.
turnin Vengeance, Served Hot##66169 |goto Thaldraszus/0 37.62,83.08
turnin The Fog of Battle##66246 |goto Thaldraszus/0 37.62,83.08
accept Remember the Fallen##66245 |goto Thaldraszus/0 37.62,83.08
step
click Magmasworn Spear
|tip On the bridge.
accept Slightly Used Weapons##66247 |goto Thaldraszus/0 37.85,83.26
stickystart "Collect_Magmasworn_Spears"
stickystart "Collect_South_Hold_Garrison_Signet"
step
click Coil of Heavy Rope
accept Tying Things Together##66248 |goto Thaldraszus/0 38.56,83.41
step
click Coil of Heavy Rope##377115+
|tip They look like {o}coiled ropes{}.
collect 5 Coil of Heavy Rope##192758 |q 66248/1 |goto Thaldraszus/0 39.17,83.81
step
label "Collect_Magmasworn_Spears"
kill Magmasworn Rockcleaver##190420+
collect 6 Magmasworn Spear##192759 |q 66247/1 |goto Thaldraszus/0 39.18,83.83
step
label "Collect_South_Hold_Garrison_Signet"
click South Hold NPCs
|tip They look like {o}dead dragon people{}.
collect 8 South Hold Garrison Signet##191269 |q 66245/1 |goto Thaldraszus/0 38.94,83.89
'|clicknpc South Hold Magus##187518, South Hold Guardian##187516
step
talk Guardian Velomir##190180
|tip On the bridge.
turnin Remember the Fallen##66245 |goto Thaldraszus/0 37.62,83.08
turnin Slightly Used Weapons##66247 |goto Thaldraszus/0 37.62,83.08
turnin Tying Things Together##66248 |goto Thaldraszus/0 37.62,83.08
accept Clear the Sky##66249 |goto Thaldraszus/0 37.62,83.08
step
click Siege Scorpion
|tip On a stone platform, overlooking the valley below.
Control a Siege Scorpion |q 66249/1 |goto Thaldraszus/0 40.88,83.86
step
kill Magmasworn Trueborn##194543+
|tip They look like {o}red dragons{} flying in the air nearby.
|tip Use the ability on your action bar.
Slay the Magmasworn |q 66249/2 |goto Thaldraszus/0 40.88,83.86
step
talk Guardian Velomir##190558
|tip Inside the building.
turnin Clear the Sky##66249 |goto Thaldraszus/0 40.56,85.48
accept Where's The Chief?##66250 |goto Thaldraszus/0 40.56,85.48
step
talk Guardian Velomir##190558
|tip Inside the building.
Select _"I'm ready. Let's get in there!"_ |gossip 54896
Investigate the Lookout Tower |q 66250/1 |goto Thaldraszus/0 40.56,85.48
step
talk Guardian Velomir##190562
turnin Where's The Chief?##66250 |goto Thaldraszus/0 40.15,85.13
accept Fire Fighter##66251 |goto Thaldraszus/0 40.15,85.13
step
kill Magmatalon##189538 |q 66251/1 |goto Thaldraszus/0 40.29,87.10
|tip He looks like a {o}black and orange dragon{} that flies in the air around this area.
|tip He will appear on your {o}minimap{} as a {o}yellow dot{}.
step
talk Guardian Velomir##190562
turnin Fire Fighter##66251 |goto Thaldraszus/0 40.15,85.13
accept Reporting In##66252 |goto Thaldraszus/0 40.15,85.13
step
talk Captain Drine##189842
|tip At the top of the tower.
turnin Reporting In##66252 |goto Valdrakken/0 55.94,39.96
accept Chaos and Commotion##71024 |goto Valdrakken/0 55.94,39.96
accept Look to the Overlook##71179 |goto Valdrakken/0 55.94,39.96
step
talk Nozdormu##187669
|tip At the top of the tower.
accept The Flow of Time##66320 |goto Valdrakken/0 61.40,39.05
step
click Teleport to Bottom Floor
|tip It looks like a {o}teleport pad{}.
|tip At the top of the tower.
Take a Teleport to the Bottom Floor |q 71024/1 |goto Valdrakken/0 55.36,46.00
step
talk Investigator Erima##196878
|tip Inside the building, on the ground floor.
Select _"Drine sent me. She said there was a commotion."_ |gossip 107133
Speak to Investigator Erima |q 71024/2 |goto Valdrakken/0 61.77,42.15
step
click Inert Runestone
|tip Inside the building, on the ground floor.
Examine the Runestone |q 71024/3 |goto Valdrakken/0 60.77,40.38
step
Watch the dialogue
talk Aesthis##196980
|tip He runs to this location.
|tip Inside the building, on the ground floor.
Select _"What is that thing?"_ |gossip 107400
Speak to Aesthis |q 71024/4 |goto Valdrakken/0 60.79,40.36
step
click Dropped Page
|tip Inside the building, on the ground floor.
Find the Clue |q 71024/5 |goto Valdrakken/0 56.94,44.39
step
Watch the dialogue
talk Investigator Erima##196984
|tip He runs to this location.
|tip Inside the building, on the ground floor.
turnin Chaos and Commotion##71024 |goto Valdrakken/0 56.46,43.75
accept Follow the Clues##70837 |goto Valdrakken/0 56.46,43.75
step
talk Investigator Erima##196416
|tip On the ledge, on the path leading upward.
turnin Follow the Clues##70837 |goto Thaldraszus/0 42.72,81.94
accept Rebels With a Cause##70838 |goto Thaldraszus/0 42.72,81.94
accept Detonation Locations##70842 |goto Thaldraszus/0 42.72,81.94
stickystart "Slay_Rebels_And_Primalists"
step
click Mistyvale Map
|tip It looks like a {o}brown paper map{} pinned to the doorway of the tent.
collect Mistyvale Map: Training Grounds##200461 |q 70842/1 |goto Thaldraszus/0 43.46,81.96
step
click Mistyvale Map
|tip It looks like a {o}brown paper map{} pinned to the tree.
collect Mistyvale Map: Black Market Auction House##200463 |q 70842/3 |goto Thaldraszus/0 43.55,81.14
step
clicknpc Unfinished Runestone##196464
accept Ruin the Runestones##70843 |goto Thaldraszus/0 43.58,81.01
step
click Incendiary Runestone
Destroy the North Cache |q 70843/2 |goto Thaldraszus/0 44.31,80.48
step
click Mistyvale Map
|tip It looks like a {o}brown paper map{} on a wooden crate.
|tip Inside the tent.
collect Mistyvale Map: Butterfly Garden##200462 |q 70842/2 |goto Thaldraszus/0 44.30,80.92
step
click Incendiary Runestone
Destroy the South Cache |q 70843/1 |goto Thaldraszus/0 44.43,81.48
step
label "Slay_Rebels_And_Primalists"
Kill enemies around this area
Slay #8# Rebels and Primalists |q 70838/1 |goto Thaldraszus/0 43.54,80.86
'|kill Mistyvale Splashcaster##193973, Mistyvale Mauler##193948, Mistyvale Firestarter##193969, Primalist Recruiter##197185, Mistyvale Mauler##193970
step
talk Investigator Erima##196432
turnin Rebels With a Cause##70838 |goto Thaldraszus/0 42.58,78.82
turnin Detonation Locations##70842 |goto Thaldraszus/0 42.58,78.82
turnin Ruin the Runestones##70843 |goto Thaldraszus/0 42.58,78.82
accept Maldra's in Hot Water##70850 |goto Thaldraszus/0 42.58,78.82
step
kill Orian Darkwater##196457 |q 70850/1 |goto Thaldraszus/0 42.92,80.21
step
talk Investigator Erima##196432
turnin Maldra's in Hot Water##70850 |goto Thaldraszus/0 42.58,78.82
step
talk Maldra Flametongue##196562
accept Chasing Waterfalls##70873 |goto Thaldraszus/0 42.68,78.80
step
Kill enemies around this area
|tip Only enemies that look like {o}steam elementals{} will drop the quest item.
|tip They are in the {o}water areas{}.
collect 35 Fallingwater Mote##200087 |q 70873/1 |goto Thaldraszus/0 44.09,79.44
You can find more around [43.76,80.85]
'|kill Serene Fallingwater##196467, Animate Splash##196469
step
talk Maldra Flametongue##196562
turnin Chasing Waterfalls##70873 |goto Thaldraszus/0 42.68,78.80
accept Breaching the Fire Wall##70874 |goto Thaldraszus/0 42.68,78.80
step
Watch the dialogue
|tip Use the {o}Attune with Fallingwater{} ability.
|tip It appears as a button on the screen.
Begin the Ritual |q 70874/1 |goto Thaldraszus/0 42.36,78.81
step
Watch the dialogue
Complete the Ritual |q 70874/2 |goto Thaldraszus/0 42.36,78.81
step
talk Maldra Flametongue##196608
turnin Breaching the Fire Wall##70874 |goto Thaldraszus/0 42.27,78.91
accept Ring of Fire##70878 |goto Thaldraszus/0 42.27,78.91
step
talk Investigator Erima##196566
accept Worst of the Worst##70875 |goto Thaldraszus/0 42.45,78.85
accept Fracture the Foci##70876 |goto Thaldraszus/0 42.45,78.85
stickystart "Slay_Rebels_70875"
stickystart "Slay_Elementals_70875"
step
Run through the fire and enter the cave |goto Thaldraszus/0 43.43,78.76 < 15 |walk |only if not (subzone("Emberslate Cavern") and _G.IsIndoors())
click Primalist Focus
|tip Inside the cave.
Destroy the Primal Focus |q 70876/1 |goto Thaldraszus/0 43.85,77.82 |count 1
step
click Primalist Focus
|tip Downstairs inside the cave.
Destroy the Primal Focus |q 70876/1 |goto Thaldraszus/0 44.23,77.83 |count 2
step
click Primalist Focus
|tip Downstairs inside the cave.
Destroy the Primal Focus |q 70876/1 |goto Thaldraszus/0 44.67,77.61 |count 3
step
click Primalist Focus
|tip Upstairs inside the cave.
Destroy the Primal Focus |q 70876/1 |goto Thaldraszus/0 44.67,78.39 |count 4
step
talk Maldra Flametongue##197580
|tip Downstairs inside the cave.
|tip If you can't talk to her, another player may already be fighting the elementals.
|tip If elementals are already attacking nearby, kill them without talking to Maldra.
Select _"I'm ready."_ |gossip 106979
Kill the enemies that attack in waves
kill Magmaticus##196599
Protect Maldra Flametongue |q 70878/2 |goto Thaldraszus/0 44.52,78.16
step
label "Slay_Rebels_70875"
Kill Mistyvale enemies around this area
|tip They look like {o}dragon people{}.
|tip Throughout the cave. |notinsticky
Slay #3# Rebels |q 70875/1 |goto Thaldraszus/0 44.26,78.12
'|kill Mistyvale Stonecarver##196624, Mistyvale Insurgent##196634
step
label "Slay_Elementals_70875"
Kill enemies around this area
|tip They look like {o}fire elementals{}.
|tip Throughout the cave. |notinsticky
Slay #4# Elementals |q 70875/2 |goto Thaldraszus/0 44.26,78.12
'|kill Blazing Ember##196600, Incendiary Goo##196601, Flickering Ember##197906
step
Leave the cave |goto Thaldraszus/0 43.43,78.76 < 15 |walk |only if subzone("Emberslate Cavern") and _G.IsIndoors()
talk Investigator Erima##196566
turnin Ring of Fire##70878 |goto Thaldraszus/0 42.45,78.85
turnin Worst of the Worst##70875 |goto Thaldraszus/0 42.45,78.85
turnin Fracture the Foci##70876 |goto Thaldraszus/0 42.45,78.85
accept Report on the Rebels##70879 |goto Thaldraszus/0 42.45,78.85
step
talk Captain Drine##189842
|tip At the top of the tower.
turnin Report on the Rebels##70879 |goto Valdrakken/0 55.94,39.96
step
talk Zuttiki##190527
turnin Reservoir Reservations##72190 |goto Thaldraszus/0 49.54,58.86
accept Wotcher, Watcher?##65913 |goto Thaldraszus/0 49.54,58.86
step
Enter the building |goto Thaldraszus/0 47.80,59.47 < 15 |walk
Find Mara |q 65913/1 |goto Thaldraszus/0 46.52,60.00
|tip Inside the building.
step
talk Mara##194252
|tip Inside the building.
Awaken Mara |q 65913/2 |goto Thaldraszus/0 46.52,60.00
step
talk Mara##189045
turnin Wotcher, Watcher?##65913 |goto Thaldraszus/0 49.61,58.76
accept Where There's a Ward, There's a Way##70139 |goto Thaldraszus/0 49.61,58.76
step
talk Zuttiki##190527
accept Preventative Maintenance##65918 |goto Thaldraszus/0 49.54,58.86
step
Enter the North Hall |q 70139/1 |goto Thaldraszus/0 51.42,56.36
|tip Up on the platform, at the entrance of the building.
step
Enter the building up on the platform |goto Thaldraszus/0 51.42,56.36 < 15 |walk
click Broken Ward Stone
|tip Inside the building.
Check the North Ward |q 70139/2 |goto Thaldraszus/0 52.25,54.73
step
Enter the East Hall |q 70139/3 |goto Thaldraszus/0 51.52,61.40
|tip Up on the platform, at the entrance of the building.
step
Enter the building up on the platform |goto Thaldraszus/0 51.52,61.40 < 15 |walk
click Broken Ward Stone
|tip Inside the building.
Check the East Ward |q 70139/4 |goto Thaldraszus/0 52.52,62.80
step
Kill enemies around this area
|tip You can find them all around the {o}perimeter of this structure{}.
|tip Only enemies that look like {o}elementals{} will count for the quest goal.
Slay #8# Unleashed Elementals |q 65918/1 |goto Thaldraszus/0 49.29,58.62
'|kill Hydraulic Eroder##195092, Unleashed Rubble##194212
step
talk Zuttiki##190527
turnin Preventative Maintenance##65918 |goto Thaldraszus/0 49.54,58.86
step
talk Mara##189045
turnin Where There's a Ward, There's a Way##70139 |goto Thaldraszus/0 49.68,58.75
accept We Don't Negotiate with Primalists##65916 |goto Thaldraszus/0 49.68,58.75
step
talk Zuttiki##190527
accept Refti Retribution##65921 |goto Thaldraszus/0 49.54,58.86
stickystart "Rescue_Refti_Survivors"
stickystart "Take_Revenge_Against_The_Primalists"
step
Enter the cave |goto Thaldraszus/0 51.99,57.57 < 20 |walk
kill Ko'jo##186367 |q 65916/2 |goto Thaldraszus/0 53.51,56.09
|tip To be able to attack him, {o}kill the elementals near him{}.
|tip Upstairs inside the cave.
step
click Missing Ward Pieces
|tip Upstairs inside the cave.
Retrieve the Missing Ward Pieces |q 65916/1 |goto Thaldraszus/0 53.45,56.21
step
label "Rescue_Refti_Survivors"
clicknpc Refti Corpse##196473+
|tip They look like {o}lizard people{} laying on the ground.
|tip The ones that can be rescued will be {o}outlined in a slight yellow glow{}.
|tip Inside the cave.
Rescue #4# Refti Survivors |q 65921/1 |goto Thaldraszus/0 52.88,57.20
step
label "Take_Revenge_Against_The_Primalists"
Kill enemies around this area
|tip Inside the cave.
Take Revenge Against the Primalists |q 65921/2 |goto Thaldraszus/0 52.88,57.20
'|kill Primalist Floodweaver##194655, Humid Drizzle##194068, Primal Stonekin##194291, Primal Waterspout##194219, Primalist Shardbreaker##194303, Primalist Surgecrusher##194656, Crunchy Gravel##195845, Primalist Earthshaker##194302
step
talk Zuttiki##190527
turnin Refti Retribution##65921 |goto Thaldraszus/0 49.54,58.86
step
talk Mara##189045
turnin We Don't Negotiate with Primalists##65916 |goto Thaldraszus/0 49.68,58.75
accept For the Ward!##65920 |goto Thaldraszus/0 49.68,58.75
step
Enter the building |goto Thaldraszus/0 47.80,59.47 < 15 |walk
click Broken Ward Stone
|tip Inside the building.
Reactivate the West Ward |q 65920/1 |goto Thaldraszus/0 46.45,60.02
step
Enter the building up on the platform |goto Thaldraszus/0 51.52,61.40 < 15 |walk
click Broken Ward Stone
|tip Inside the building.
Reactivate the East Ward |q 65920/3 |goto Thaldraszus/0 52.52,62.80
step
Enter the building up on the platform |goto Thaldraszus/0 51.42,56.36 < 15 |walk
click Broken Ward Stone
|tip Inside the building.
Reactivate the North Ward |q 65920/2 |goto Thaldraszus/0 52.25,54.73
step
click Warding Console
Activate the Console |q 65920/4 |goto Thaldraszus/0 49.54,58.76
step
talk Mara##189045
turnin For the Ward!##65920 |goto Thaldraszus/0 49.67,58.75
step
talk Harleen Chirpsnide##183912
|tip Inside the small cave.
|tip High up on the mountain.
turnin Lost to the Skies##71239 |goto Thaldraszus/0 49.95,69.79
accept Flying Rocs##66071 |goto Thaldraszus/0 49.95,69.79
step
talk Segallia##184591
|tip She walks around this area.
|tip Inside the small cave.
accept Smash 'Em to Feathereens##65267 |goto Thaldraszus/0 49.99,69.76
stickystart "Kill_Screechflight_Witherers"
stickystart "Kill_Screechflight_Hexclaws"
step
clicknpc Injured Bluefeather Roc##184481+
|tip They look like {o}large darker blue birds{}.
Mend #8# Injured Bluefeather Rocs |q 66071/1 |goto Thaldraszus/0 50.41,71.14
step
label "Kill_Screechflight_Witherers"
kill 8 Screechflight Witherer##183954 |q 65267/1 |goto Thaldraszus/0 50.41,71.14
|tip They look like {o}harpies with white feathers{}.
step
label "Kill_Screechflight_Hexclaws"
kill 10 Screechflight Hexclaw##183995 |q 65267/2 |goto Thaldraszus/0 50.41,71.14
|tip They look like {o}harpies with black feathers{}.
step
talk Harleen Chirpsnide##183912
|tip Inside the small cave.
turnin Flying Rocs##66071 |goto Thaldraszus/0 49.95,69.79
step
talk Segallia##184591
|tip She walks around this area.
|tip Inside the small cave.
turnin Smash 'Em to Feathereens##65267 |goto Thaldraszus/0 49.99,69.76
accept Plucking Parts##65373 |goto Thaldraszus/0 49.99,69.76
step
talk Harleen Chirpsnide##183912
|tip Inside the small cave.
accept A Roc-ing Appetite##65313 |goto Thaldraszus/0 49.95,69.79
accept Explosive Excrement##65490 |goto Thaldraszus/0 49.95,69.79
stickystart "Fill_The_Chirpsnide_Auto_Excre_Collector"
step
Enter the cave |goto Thaldraszus/0 51.34,72.36 < 20 |walk
click Feather-Plucker 3300 Gasket
|tip It looks like a {o}metal cogwheel{}.
|tip Inside the cave.
collect Feather-Plucker 3300 Gasket##189453 |q 65373/2 |goto Thaldraszus/0 51.48,73.57
step
click Feather-Plucker 3300 Bolts
|tip It looks like a {o}small pile of metal bolts and nuts{}.
|tip Downstairs inside the cave, in a small side room.
collect Feather-Plucker 3300 Bolts##191178 |q 65373/4 |goto Thaldraszus/0 51.02,74.67
step
Follow the path down |goto Thaldraszus/0 50.33,75.55 < 15 |walk
click Feather-Plucker 3300 Exhaust Pipe
|tip It looks like a {o}grey and gold metal pipe{}.
|tip Downstairs inside the cave.
collect Feather-Plucker 3300 Exhaust Pipe##191177 |q 65373/3 |goto Thaldraszus/0 49.85,76.10
step
Follow the path down |goto Thaldraszus/0 49.09,74.33 < 15 |walk
kill Hawthia Roc-Muncher##184592 |q 65313/1 |goto Thaldraszus/0 48.90,75.17
|tip Downstairs inside the cave.
collect Screechflight Scroll##189361 |n
accept Rolling in the Screech##65475 |goto Thaldraszus/0 48.90,75.17
step
click Feather-Plucker 3300 Gears
|tip It looks like a {o}pile of metal cogwheels{} on the ground.
|tip Downstairs inside the cave.
collect Feather-Plucker 3300 Gears##191176 |q 65373/1 |goto Thaldraszus/0 48.81,75.35
step
label "Fill_The_Chirpsnide_Auto_Excre_Collector"
use The Chirpsnide Auto-Excre-Collector##190188
|tip {o}Run over{} the {o}Rocdrop Scarabs{} to squish them.
|tip Use the item {o}near their corpses{} after you squish them.
|tip They look like {o}small beetles{}.
|tip Throughout the cave.
Fill the Chirpsnide Auto-Excre-Collector |q 65490/1 |goto Thaldraszus/0 50.60,74.22
step
Leave the cave |goto Thaldraszus/0 50.24,72.28 < 20 |walk |only if (subzone("Bluefeather Cliffs") or subzone("Thaldraszus")) and _G.IsIndoors()
talk Segallia##184591
|tip She walks around this area.
|tip Inside the small cave.
turnin Plucking Parts##65373 |goto Thaldraszus/0 49.98,69.80
step
talk Harleen Chirpsnide##183912
|tip Inside the small cave.
turnin A Roc-ing Appetite##65313 |goto Thaldraszus/0 49.95,69.79
turnin Rolling in the Screech##65475 |goto Thaldraszus/0 49.95,69.79
turnin Explosive Excrement##65490 |goto Thaldraszus/0 49.95,69.79
accept Separating the Yolk##65287 |goto Thaldraszus/0 49.95,69.79
accept A Nest of Our Own##65371 |goto Thaldraszus/0 49.95,69.79
step
talk Segallia##184591
|tip She walks around this area.
|tip Inside the small cave.
accept It's Plucking Time##65374 |goto Thaldraszus/0 49.98,69.80
stickystart "Pluck_Hatchling_Feathers"
stickystart "Collect_Screechflight_Staves"
stickystart "Save_Bluefeather_Eggs"
stickystart "Collect_Screechflight_Talons"
step
Kill enemies around this area
|tip They look like {o}water and steam elementals{}.
|tip Down in the canyon, in the water.
collect 3 Streamborne's Core##189974 |q 65371/3 |goto Thaldraszus/0 46.39,70.01
'|kill Creekmoaner##199011, Howling Creekborne##185262
step
label "Pluck_Hatchling_Feathers"
use Feather-Plucker 3300##189454
|tip Use it on {o}Snatched Hatchlings{}.
|tip They look like small {o}blue birds flying{} in the air.
|tip Down in the canyon and high up on the ledge. |notinsticky
Pluck #6# Hatchling Feathers |q 65374/1 |goto Thaldraszus/0 46.39,70.01
'|clicknpc Snatched Hatchling##185524
step
label "Collect_Screechflight_Staves"
kill Screechflight Cursewife##184816+
|tip They look like {o}blue harpies{}.
|tip Down in the canyon and high up on the ledge. |notinsticky
collect 6 Screechflight Staff##189979 |q 65371/2 |goto Thaldraszus/0 46.39,70.01
step
label "Save_Bluefeather_Eggs"
click Bluefeather Roc Egg+
|tip They look like {o}large white eggs in nests{}.
|tip Down in the canyon and high up on the ledge. |notinsticky
Save #20# Bluefeather Eggs |q 65287/1 |goto Thaldraszus/0 46.39,70.01
step
label "Collect_Screechflight_Talons"
Kill Screechflight enemies around this area
|tip They look like {o}harpies{}. |notinsticky
|tip Down in the canyon and high up on the ledge. |notinsticky
collect 20 Screechflight Talon##189981 |q 65371/1 |goto Thaldraszus/0 46.39,70.01
'|kill Screechflight Snatcher##183888, Screechflight Cursewife##184816
step
talk Segallia##184591
turnin It's Plucking Time##65374 |goto Thaldraszus/0 43.00,71.48
step
talk Harleen Chirpsnide##183912
turnin Separating the Yolk##65287 |goto Thaldraszus/0 43.00,71.45
turnin A Nest of Our Own##65371 |goto Thaldraszus/0 43.00,71.45
accept Screechflight Potluck##65778 |goto Thaldraszus/0 43.00,71.45
step
use the Im-PECK-able Screechflight Disguise##191681
|tip In the entrance of the cave.
Put on the Disguise |q 65778/1 |goto Thaldraszus/0 43.42,71.60
step
talk Chef Fry-Aerie##187280
|tip Inside the small cave.
Select  _"<Show the "egg" to the Chef.>"_ |gossip 54665
Select  _"<Nod your head.>"_ |gossip 54604
Convince the Screechflight Chef |q 65778/2 |goto Thaldraszus/0 43.56,72.09
step
Toss the Egg into the Screechflight Cauldron |q 65778/3 |goto Thaldraszus/0 43.56,72.09
|tip Use the {o}Toss the "Egg"{} ability.
|tip It appears as a button on the screen.
|tip Inside the small cave.
step
Watch the dialogue
|tip Inside the small cave.
Knock the Screechflight Sauciere Out |q 65778/4 |goto Thaldraszus/0 43.56,72.09
step
Watch the dialogue
talk Harleen Chirpsnide##183912
|tip She runs to this location.
|tip Inside the small cave.
turnin Screechflight Potluck##65778 |goto Thaldraszus/0 43.53,72.11
accept The Awaited Egg-splosion##66299 |goto Thaldraszus/0 43.53,72.11
step
use the Im-PECK-able Screechflight Disguise v2##191763
|tip Inside the small cave.
Put on Your NEW Disguise |q 66299/1 |goto Thaldraszus/0 43.53,72.11
step
click Simmering Bluefeather Chunk Stew
|tip It looks like a {o}cauldron{}.
|tip Inside the small cave.
Dunk the "Egg" in the Stew |q 66299/2 |goto Thaldraszus/0 43.55,72.11
step
click Chirpsnide's One-Way Taxi
Take Chirpsnide's One-Way Taxi Up |q 66299/3 |goto Thaldraszus/0 43.29,71.27
step
click Matriarch's Egg Bowl
|tip Inside the small cave.
Place the "Egg" on the Matriarch's Egg Bowl |q 66299/4 |goto Thaldraszus/0 44.50,73.04
step
Watch the dialogue
|tip Inside the small cave.
|tip You will be attacked.
Stay in Character |q 66299/5 |goto Thaldraszus/0 44.46,73.00
step
kill Matriarch Avethyra##184847
|tip Inside the small cave.
Slay the Matriarch |q 66299/6 |goto Thaldraszus/0 44.46,73.00
step
Use Chirpsnide's Auto-Glider |havebuff The Chirpsnide Auto-Glider##371083 |goto Thaldraszus/0 44.24,72.71 |q 66299
|tip Use the {o}The Chirpsnide Auto-Glider{} ability.
|tip It appears as a button on the screen.
step
Report to Harleen |q 66299/7 |goto Thaldraszus/0 43.45,70.54
step
talk Harleen Chirpsnide##183912
turnin The Awaited Egg-splosion##66299 |goto Thaldraszus/0 43.45,70.54
step
talk Szareth##193538
|tip He walks around this area.
|tip On a stone platform, overlooking the valley below.
accept Every Life Counts##69932 |goto Thaldraszus/0 50.14,67.69
accept Curiosity's Price##69933 |goto Thaldraszus/0 50.14,67.69
stickystart "Collect_Sun_Baked_Linens"
stickystart "Collect_Anethetic_Pollen"
step
clicknpc Stubborn Vine##193569
|tip After clicking it, {o}run away from it{} to pull it out of the ground.
kill Laden Lasher##193541
collect Snipped Vine##198406 |n
Snip the Stubborn Vine |q 69933/2 |goto Thaldraszus/0 48.97,66.92
step
label "Collect_Sun_Baked_Linens"
click Handwoven Basket+
|tip They look like {o}small brown wicker baskets{}.
collect 6 Sun-Baked Linens##198040 |q 69932/1 |goto Thaldraszus/0 49.35,67.04
step
label "Collect_Anethetic_Pollen"
kill Productive Pollinator##193809+
|tip They look like {o}bees{}.
click Magnificent Flower+
|tip They look like {o}large purple leafy plants{}.
|tip You may be attacked.
collect 40 Anesthetic Pollen##198042 |q 69932/2 |goto Thaldraszus/0 49.35,67.04
step
clicknpc Little Jetstream##193611
|tip Inside the building.
Bandage Little Jetstream |q 69932/3 |goto Thaldraszus/0 49.42,67.92
step
talk Szareth##193538
|tip He walks around this area.
|tip On a stone platform, overlooking the valley below.
turnin Every Life Counts##69932 |goto Thaldraszus/0 50.14,67.69
turnin Curiosity's Price##69933 |goto Thaldraszus/0 50.14,67.69
accept Bleeding Hearts##69934 |goto Thaldraszus/0 50.14,67.69
step
talk Talon Smoht##189018
|tip On a stone platform, overlooking the valley below.
fpath Gelikyr Post |goto Thaldraszus/0 51.16,67.09
step
Find the Isolated Cave |q 69934/1 |goto Thaldraszus/0 53.03,67.55
|tip At the entrance of the small cave.
|tip On the ground.
step
click Medical Supplies
|tip Inside the small cave.
Deliver the Potions to the Isolated Cave |q 69934/2 |goto Thaldraszus/0 53.33,67.51
step
Find the Gelikyr Infirmary |q 69934/3 |goto Thaldraszus/0 51.74,69.16
|tip At the entrance of the building.
step
click Medical Supplies
|tip Inside the building.
Deliver the Potions to the Gelikyr Infirmary |q 69934/4 |goto Thaldraszus/0 51.69,69.19
step
talk Timetender Athekk##193042
|tip He walks around this area.
|tip Inside the building.
turnin Bleeding Hearts##69934 |goto Thaldraszus/0 51.69,69.24
step
talk Commander Thadezus##189174
|tip On the bridge.
turnin Look to the Overlook##71179 |goto Thaldraszus/0 52.66,67.29
accept What Once Was Ours##66468 |goto Thaldraszus/0 52.66,67.29
step
Kill enemies around this area
click Various Totem+
|tip They look like various types of {o}elemental totems{}.
use the Rejuvenating Draught##192795
|tip Use it on {o}Injured Gelikyr Guards{}.
|tip They look like {o}dragon people inside buildings{}.
Quell the Primalist Threat |q 66468/1 |goto Thaldraszus/0 53.91,64.11
'|kill Hailbringer Theurgist##189229, Earthshaker Marauder##189231, Earthshaker Theurgist##189230, Hailbringer Marauder##189228
'|clicknpc Injured Gelikyr Guard##190469, Earthquake Totem##190433, Rainstorm Totem##190434
step
talk Sharnax##189188
|tip He walks around this area.
|tip Inside the building.
turnin What Once Was Ours##66468 |goto Thaldraszus/0 54.35,64.94
accept The Forward Push##66470 |goto Thaldraszus/0 54.35,64.94
accept Prime Planning##66471 |goto Thaldraszus/0 54.35,64.94
stickystart "Collect_Primalist_Orders"
step
kill Karthis Sleetsong##189246
collect Iceforged Gateway Stone##200672 |q 66470/3 |goto Thaldraszus/0 53.70,63.39
step
click Elemental Gateway
Close the Elemental Gateway |q 66470/4 |goto Thaldraszus/0 53.61,63.37 |count 1
step
Enter the building |goto Thaldraszus/0 54.28,61.94 < 20 |walk
kill Morgg##189244
|tip He walks in and out of the building.
collect Earthen Gateway Stone##200671 |q 66470/2 |goto Thaldraszus/0 54.29,61.94
step
click Elemental Gateway
|tip Inside the building.
Close the Elemental Gateway |q 66470/4 |goto Thaldraszus/0 54.88,62.06 |count 2
step
Leave the building |goto Thaldraszus/0 54.28,61.94 < 20 |walk |only if subzone("Gelikyr Overlook") and _G.IsIndoors()
kill Alora Mistbreeze##189243
|tip Outside, above the building.
collect Misttouched Gateway Stone##200670 |q 66470/1 |goto Thaldraszus/0 54.63,62.65
step
click Elemental Gateway
Close the Elemental Gateway |q 66470/4 |goto Thaldraszus/0 54.53,62.52 |count 3
step
label "Collect_Primalist_Orders"
Kill enemies around this area
|tip Not all of the enemies will drop the quest item.
collect 7 Primalist Orders##192808 |q 66471/1 |goto Thaldraszus/0 54.65,63.13
'|kill Hailstorm Warmonger##190602, Hailstorm Iceshot##190603, Rockguard Cragshaper##190605
step
talk Sharnax##189188
|tip At the top of the path, next to a cavern.
turnin The Forward Push##66470 |goto Thaldraszus/0 54.80,64.38
turnin Prime Planning##66471 |goto Thaldraszus/0 54.80,64.38
accept The Land Awakens##66473 |goto Thaldraszus/0 54.80,64.38
step
kill Primordial Wrath##190579 |q 66473/1 |goto Thaldraszus/0 55.32,65.25
|tip It looks like a {o}large stone elemental{}.
|tip To be able to attack him, {o}kill the enemies next to him{}.
|tip Inside the cavern.
step
kill Primordial Hail##189039 |q 66473/2 |goto Thaldraszus/0 54.16,65.33
|tip Inside the cavern.
step
talk Sharnax##189188
|tip At the top of the path, next to a cavern.
turnin The Land Awakens##66473 |goto Thaldraszus/0 54.80,64.38
accept Primal List##66472 |goto Thaldraszus/0 54.80,64.38
step
talk Commander Thadezus##189174
|tip On the bridge.
turnin Primal List##66472 |goto Thaldraszus/0 52.66,67.29
step
talk Waywatcher Alvi##191753
turnin The Wayward Waywatcher##71219 |goto Thaldraszus/0 54.68,69.47
accept Supplying in Weight##66100 |goto Thaldraszus/0 54.68,69.47
accept A Sketchy Request##66230 |goto Thaldraszus/0 54.68,69.47
stickystart "Collect_Waywatcher_Supplies"
step
Kill Embertooth enemies around this area
|tip They look like {o}lizard people{}.
collect Crude Tarasek Key##191317 |q 66230/1 |goto Thaldraszus/0 55.74,68.44
'|kill Embertooth Pooltender##187445, Embertooth Scavenger##187426
step
click Tarasek Lockbox
|tip It looks like a {o}metal and wooden chest{}.
collect Alvi's "Ledger"##191405 |q 66230/2 |goto Thaldraszus/0 55.62,69.33
step
label "Collect_Waywatcher_Supplies"
click Waywatcher Supplies##376615+
|tip They look like {o}brown bags{}.
collect 6 Waywatcher Supplies##191852 |q 66100/1 |goto Thaldraszus/0 55.74,68.44
step
talk Waywatcher Alvi##187289
turnin Supplying in Weight##66100 |goto Thaldraszus/0 56.95,67.69
turnin A Sketchy Request##66230 |goto Thaldraszus/0 56.95,67.69
accept A Poisonous Palette##66456 |goto Thaldraszus/0 56.95,67.69
accept Ending the Blue Period##66457 |goto Thaldraszus/0 56.95,67.69
stickystart "Collect_Envenomed_Spears"
step
kill Bluescale##188723 |q 66457/1 |goto Thaldraszus/0 55.95,71.51
|tip Inside the small cave.
step
label "Collect_Envenomed_Spears"
kill Embertooth Spearhunter##188725+
|tip They look like {o}lizard people{}.
collect 8 Envenomed Spear##191308 |q 66456/1 |goto Thaldraszus/0 56.77,69.15
step
talk Waywatcher Alvi##187289
turnin A Poisonous Palette##66456 |goto Thaldraszus/0 56.95,67.69
turnin Ending the Blue Period##66457 |goto Thaldraszus/0 56.95,67.69
accept Cache and Release##66465 |goto Thaldraszus/0 56.95,67.69
accept Art Imitates Life##66467 |goto Thaldraszus/0 56.95,67.69
stickystart "Destroy_Spear_Caches"
step
Enter the cave |goto Thaldraszus/0 56.91,67.19 < 15 |walk |only if not (subzone("Passage of Time") and _G.IsIndoors())
kill Greater Venomsprout##188814 |q 66467/1 |goto Thaldraszus/0 58.29,67.19
|tip Downstairs inside the cave.
step
label "Destroy_Spear_Caches"
click Poisoned Spear Stash+
|tip They look like {o}bunches of wooden sticks{}.
|tip hroughout the cave. |notinsticky
Destroy #8# Spear Caches |q 66465/1 |goto Thaldraszus/0 57.84,66.74
step
Leave the cave |goto Thaldraszus/0 56.91,67.19 < 15 |walk |only if subzone("Passage of Time") and _G.IsIndoors()
talk Waywatcher Alvi##187289
turnin Cache and Release##66465 |goto Thaldraszus/0 54.64,69.51
turnin Art Imitates Life##66467 |goto Thaldraszus/0 54.64,69.51
step
talk Chromie##187100
Select _"Nozdormu sent me to help."_ |gossip 63842
Watch the dialogue
Speak with Chromie |q 66320/1 |goto Thaldraszus/0 57.46,78.92
step
talk Chromie##187100
turnin The Flow of Time##66320 |goto Thaldraszus/0 57.46,78.92
step
talk Andantenormu##187877
accept Temporal Difficulties##66080 |goto Thaldraszus/0 57.53,78.79
step
talk Azim##193458
fpath Shifting Sands |goto Thaldraszus/0 57.63,79.02
step
Find the Missing Recruit |q 66080/1 |goto Thaldraszus/0 55.00,75.75
step
talk Siaszerathel##187098
turnin Temporal Difficulties##66080 |goto Thaldraszus/0 55.00,75.75
accept Haven't Got Time For the Pain##70136 |goto Thaldraszus/0 55.00,75.75
step
click Timewalker Notes
collect Timewalker Notes##198408 |q 70136/2 |goto Thaldraszus/0 53.18,77.38
step
kill Crazed Alpha##194224 |q 70136/3 |goto Thaldraszus/0 52.69,76.81
|tip Inside the small cave.
step
click Timewalker Staff
|tip Inside the cave.
collect Timewalker Staff##198410 |q 70136/1 |goto Thaldraszus/0 52.71,76.86
step
talk Siaszerathel##187098
turnin Haven't Got Time For the Pain##70136 |goto Thaldraszus/0 55.00,75.75
accept Time is Running Out##66081 |goto Thaldraszus/0 55.00,75.75
accept Time in a Bottle##66082 |goto Thaldraszus/0 55.00,75.75
stickystart "Collect_The_Energy"
step
click Temporal Collector##377081+
|tip They look like {o}floating blue crystals{}.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
collect 8 Temporal Collector##192602 |q 66081/1 |goto Thaldraszus/0 55.12,77.65
step
label "Collect_The_Energy"
Kill Time-Charged enemies around this area
|tip They look like {o}various animals{}.
|tip {o}Walk into the Time Motes{} that appear after killing the enemies.
|tip They look like {o}floating yellow orbs{} of light.
Collect the Energy |q 66082/1 |goto Thaldraszus/0 55.77,76.95
'|kill Time-Charged Salamanther##187338, Time-Charged Ohuna##187337, Time-Charged Vorquin##187336, Time-Charged Bear##195635, Time-Charged Hornswog##187324
step
talk Siaszerathel##187098
turnin Time is Running Out##66081 |goto Thaldraszus/0 57.46,78.92
turnin Time in a Bottle##66082 |goto Thaldraszus/0 57.46,78.92
step
Watch the dialogue
talk Andantenormu##187877
accept Feels Like the First Time##66083 |goto Thaldraszus/0 57.52,78.79
step
Watch the dialogue
talk Andantenormu##190479
|tip He walks to this location.
Select _"I am ready to begin."_ |gossip 55340
Speak with Andantenormu |q 66083/1 |goto Thaldraszus/0 57.58,78.38
step
click Temporal Collector
Drain the Collector |q 66083/2 |goto Thaldraszus/0 57.68,78.33
step
click Crystal Focus
Empower the Conduit |q 66083/3 |goto Thaldraszus/0 57.67,78.38
step
_NOTE:_
During This Quest
|tip If your guide viewer gets {o}hidden after a reload{} screen during this quest, click the {o}Z{} minimap button to make it appear again.
Click Here to Continue |confirm |q 66083
step
click Time-Lost Artifact
Watch the dialogue
Return the Artifact |q 66083/4 |goto Thaldraszus/0 57.64,78.46
step
Watch the dialogue
Restore the Personal Timeline |q 66083/5
step
Return to Thaldraszus |complete zone("Thaldraszus") |q 66083
step
talk Andantenormu##187877
|tip He walks to this location.
turnin Feels Like the First Time##66083 |goto Thaldraszus/0 57.52,78.79
accept Times Like These##66084 |goto Thaldraszus/0 57.52,78.79
step
talk Siaszerathel##187098
accept If We Could Turn Back Time##66085 |goto Thaldraszus/0 57.46,78.92
stickystart "Collect_Temporal_Residue"
step
click Time Rift
Close the First Rift |q 66085/1 |goto Thaldraszus/0 58.59,78.22
step
talk Siaszerathel##187339
Select _"Show me what you got."_ |gossip 56086
Watch the dialogue
Observe Zera |q 66085/2 |goto Thaldraszus/0 59.81,79.31
step
click Time Rift
Close the Second Rift |q 66085/3 |goto Thaldraszus/0 60.01,79.28
step
click Time Rift
Close the Third Rift |q 66085/4 |goto Thaldraszus/0 59.97,77.20
step
Watch the dialogue
talk Aeonormu##187504
Select _"Are you one of the Timewalkers?"_ |gossip 55001
Select _"Zera could lead you to them."_ |gossip 55190
Meet the Stranger |q 66085/5 |goto Thaldraszus/0 59.95,77.23
step
label "Collect_Temporal_Residue"
Kill enemies around this area
collect 100 Temporal Residue##192809 |q 66084/1 |goto Thaldraszus/0 59.11,78.16
'|kill Time-Lost Thunderhide##187258, Time-Lost Raptor##187256, Time-Lost Devilsaur##187262, Time-Lost Murloc##190584, Time-Lost Murhulk##195095
step
talk Siaszerathel##187098
turnin If We Could Turn Back Time##66085 |goto Thaldraszus/0 57.46,78.92
step
talk Andantenormu##187877
turnin Times Like These##66084 |goto Thaldraszus/0 57.53,78.79
step
talk Aeonormu##190929
accept Closing Time##66087 |goto Thaldraszus/0 57.55,78.86
step
Kill enemies around this area
|tip Use the {o}Temporal Burst{} ability near enemies and allies.
|tip It appears as a button on the screen.
|tip It will {o}damage enemies{} and {o}strengthen allies{}.
|tip You will get {o}quest progress{} by strengthening allies.
click Various Object+
|tip They look like {o}various objects in yellow orbs{} on top of pedestals.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
click Time Rift+
|tip They look like {o}yellow swirling portals{}.
Preserve the Timeline |q 66087/1 |goto Thaldraszus/0 57.49,83.13
'|clicknpc Bronze Sentry##187391, Bronze Warder##187397
'|kill Time-Lost Bladewing##187232, Time-Lost Sunseeker##187239, Time-Lost Geomancer##187265, Time-Lost Briarback##187264, Time-Lost Destroyer##187244, Time-Lost Chieftain##187266
step
talk Aeonormu##190929
turnin Closing Time##66087 |goto Thaldraszus/0 57.55,78.86
step
talk Andantenormu##187877
accept Catching Up to Chromie##65935 |goto Thaldraszus/0 57.52,78.79
step
Meet Chromie at the Bronze Temple |q 65935/1 |goto Thaldraszus/0 59.58,81.69
|tip Up on the platform.
step
talk Chromie##186711
|tip Up on the platform.
turnin Catching Up to Chromie##65935 |goto Thaldraszus/0 59.58,81.69
accept Time-Locked Timewalkers##65947 |goto Thaldraszus/0 59.58,81.69
accept Cracks in Time##65948 |goto Thaldraszus/0 59.58,81.69
step
talk Andantenormu##186433
accept Quelling Causalities##66646 |goto Thaldraszus/0 59.55,82.70
stickystart "Slay_The_Time_Elementals"
step
Free the Timewalker |q 65947/1 |goto Thaldraszus/0 59.01,82.77 |count 1
|tip Use the {o}Temporal Destabilizing Beam{} ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
'|clicknpc Amu'sha Skystrider##189564
step
Free the Timewalker |q 65947/1 |goto Thaldraszus/0 58.72,82.43 |count 2
|tip Use the {o}Temporal Destabilizing Beam{} ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
'|clicknpc Suma the Guised##189520
step
Free the Timewalker |q 65947/1 |goto Thaldraszus/0 58.38,82.14 |count 3
|tip Use the {o}Temporal Destabilizing Beam{} ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
'|clicknpc Historian Jum'Flitmo##189549
step
Free the Timewalker |q 65947/1 |goto Thaldraszus/0 58.13,82.83 |count 4
|tip Use the {o}Temporal Destabilizing Beam{} ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
'|clicknpc Scribe Kalve##189545
step
Yank the West Crystal |q 65948/1
|tip Use the {o}Temporal Destabilizing Beam{} ability.
|tip It appears as a button on the screen.
|tip After using the ability, {o}run away from the crystal{} to yank it.
click Temporal Crystal Chunk+
|tip They look like various sized {o}blue rocks{}.
|tip They {o}appear{} on the ground around where the {o}crystal lands{} after you pull it.
Collect #50# Temporal Energy |q 65948/3 |goto Thaldraszus/0 58.35,83.09 |count 50 |noordinal
'|clicknpc Bronze Power Crystal##189582
step
Free the Timewalker |q 65947/1 |goto Thaldraszus/0 60.31,81.39 |count 5
|tip Use the {o}Temporal Destabilizing Beam{} ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
'|clicknpc Warden Dialash##189558
step
Yank the East Crystal |q 65948/2
|tip Use the {o}Temporal Destabilizing Beam{} ability.
|tip It appears as a button on the screen.
|tip After using the ability, {o}run away from the crystal{} to yank it.
click Temporal Crystal Chunk+
|tip They look like various sized {o}blue rocks{}.
|tip They {o}appear{} on the ground around where the {o}crystal lands{} after you pull it.
Collect #100# Temporal Energy |q 65948/3 |goto Thaldraszus/0 60.71,80.55 |count 100 |noordinal
'|clicknpc Bronze Power Crystal##192086
step
Free the Timewalker |q 65947/1 |goto Thaldraszus/0 60.86,80.03 |count 6
|tip Use the {o}Temporal Destabilizing Beam{} ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
'|clicknpc Elo'sho Skystrider##189547
step
Free the Timewalker |q 65947/1 |goto Thaldraszus/0 60.45,79.74 |count 7
|tip Use the {o}Temporal Destabilizing Beam{} ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
'|clicknpc Wan'she Skystrider##189562
step
Free the Timewalker |q 65947/1 |goto Thaldraszus/0 60.27,80.40 |count 8
|tip Use the {o}Temporal Destabilizing Beam{} ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
'|clicknpc Warden Krizzik##189560
step
label "Slay_The_Time_Elementals"
Kill enemies around this area
Slay the Time Elementals |q 66646/1 |goto Thaldraszus/0 60.51,80.57
You can find more around [58.73,82.74]
'|kill Timeling##186479, Time-Lost Sunseeker##201533, Timeless Causality##186464, Time-Lost Raptor##201534
step
talk Andantenormu##186433
turnin Quelling Causalities##66646 |goto Thaldraszus/0 59.55,82.70
step
talk Chromie##186711
turnin Time-Locked Timewalkers##65947 |goto Thaldraszus/0 59.58,81.69
turnin Cracks in Time##65948 |goto Thaldraszus/0 59.58,81.69
accept The Once and Future Team##65938 |goto Thaldraszus/0 59.58,81.69
step
Use the Timewalker Staff on the Temple Door Bubble |q 65938/1 |goto Thaldraszus/0 60.60,83.46
|tip Use the {o}Temporal Destabilizing Beam{} ability.
|tip It appears as a button on the screen.
|tip After using the ability, {o}run down the ramp{} to pull on the buble.
step
kill Colossal Causality##186672
|tip It looks like a {o}large fire elemental{}.
|tip Your {o}allies will help{} you fight.
Slay the Giant Time Elemental |q 65938/2 |goto Thaldraszus/0 60.72,83.68
step
talk Chromie##186711
turnin The Once and Future Team##65938 |goto Thaldraszus/0 59.58,81.69
accept The Never-Final Countdown##65962 |goto Thaldraszus/0 59.58,81.69
step
talk Chromie##186711
Select  _"<Tell Chromie you're ready.>"_ |gossip 54696
Speak to Chromie |q 65962/1 |goto Thaldraszus/0 59.58,81.69
step
talk Warden Dialash##187013
fpath Temporal Conflux |goto Thaldraszus/0 59.91,81.34
step
talk Archivist Areniel##192543
accept An Anomalous Shrine##67093 |goto Thaldraszus/0 60.29,82.03
accept Entropic Remnants##67154 |goto Thaldraszus/0 60.29,82.03
step
talk Nozdormu##186931
turnin The Never-Final Countdown##65962 |goto Thaldraszus/0 60.05,82.45
accept Tumbling Through Time##70040 |goto Thaldraszus/0 60.05,82.45
step
talk Andantenormu##185915
Select _"Nozdormu requests your presence."_ |gossip 55814
Speak with Andantenormu |q 70040/2 |goto Thaldraszus/0 60.19,81.76
step
talk Soridormi##192403
Select _"Nozdormu requests your presence."_ |gossip 55789
Speak with Soridormi |q 70040/1 |goto Thaldraszus/0 59.52,82.52
step
talk Siaszerathel##192404
Select _"Nozdormu requests your presence."_ |gossip 55815
Speak with Siaszerathel |q 70040/3 |goto Thaldraszus/0 59.30,82.15
step
talk Nozdormu##186931
Select _"Everyone is gathered."_ |gossip 55840
Watch the dialogue
Speak with Nozdormu |q 70040/4 |goto Thaldraszus/0 60.05,82.45
step
talk Nozdormu##186931
turnin Tumbling Through Time##70040 |goto Thaldraszus/0 60.05,82.45
accept To the Future!##66028 |goto Thaldraszus/0 60.05,82.45
accept Temporal Tuning##66029 |goto Thaldraszus/0 60.05,82.45
step
kill Ancient Timekeeper##192516
|tip It {o}may not be here{} if another player just killed it.
|tip If it's not here, {o}look for the Anomalous Mote{} on the ground around this area.
click Anomalous Mote
|tip It looks like a {o}floating yellow orb of light{}.
|tip It {o}appears{} on the ground after you kill the {o}Ancient Timekeeper{}.
Inspect the Anomalous Mote |q 67093/2 |goto Thaldraszus/0 59.41,74.40
step
Enter the building |goto Thaldraszus/0 59.42,74.03 < 15 |walk
click Cache of the Timeless One
|tip Inside the building.
|tip {o}Don't fly{} into the building, {o}walk instead{}, so you {o}don't lose the buff{}.
|tip If you {o}lose the buff{}, click the {o}orb outside{} again, and walk into the building again.
|tip {o}Avoid{} the objects, orbs, and beams of light as you run.
|tip You will be teleported back outside after looting it.
collect Echo of Duty##194687 |q 67093/3 |goto Thaldraszus/0 59.49,71.86
step
Kill enemies around this area
collect 8 Vitrified Sand##199064 |q 67154/1 |goto Thaldraszus/0 59.08,78.81
'|kill Time-Lost Thunderhide##187258, Shifting Falcon##195324, Time-Lost Devilsaur##187262, Time-Lost Raptor##187256, Time-Lost Murloc##190584, Time-Lost Murhulk##195095
step
talk Archivist Areniel##192543
|tip Up on the platform.
turnin Entropic Remnants##67154 |goto Thaldraszus/0 60.29,82.03
step
click Portal to the Primalist Future
Take the Portal to the Future |q 66028/1 |goto Thaldraszus/0 59.83,82.24
step
Enter the Primalist Future |complete zone("Primalist Tomorrow") |q 66028
step
talk Soridormi##183860
turnin To the Future!##66028 |goto Primalist Tomorrow/0 61.07,50.82
accept Resistance Isn't Futile##66030 |goto Primalist Tomorrow/0 61.07,50.82
step
talk Possible Future You##186953
accept Making Time##66031 |goto Primalist Tomorrow/0 61.46,50.19
stickystart "Heal_Injured_Resistance_Fighters"
stickystart "Collect_Elemental_Essences"
step
use the Chrono Crystal##192749
|tip Use it near the {o}large dragons{} tumbling in the air.
Fix the Temporal Position |q 66029/1 |goto Primalist Tomorrow/0 47.10,41.28
step
label "Heal_Injured_Resistance_Fighters"
use the Bandages##192467
|tip Use them on {o}Injured Resistance Fighters{}.
|tip They look like {o}allies{} laying on the ground.
clicknpc Injured Resistance Fighter##187341+
Heal #10# Injured Resistance Fighters |q 66030/1 |goto Primalist Tomorrow/0 51.12,30.48
You can find more around: |notinsticky
[45.12,18.99]
[44.58,33.95]
step
label "Collect_Elemental_Essences"
Kill enemies around this area
|tip Use the {o}Accompanies by Zera{} ability.
|tip {o}Siaszerathel{} will follow you and {o}help you fight{}.
|tip Try to {o}focus on finding non-elite enemies{}, so you can complete the quest faster.
collect 30 Elemental Essence##192454 |q 66031/1 |goto Primalist Tomorrow/0 45.91,30.57
'|kill Rimebound Controller##191654, Rimebound Subjugator##195837, Rimebound Subjugator##191658, Cragsworn Stoneshaper##191661, Hoary Icicle##194797, Colossal Glacier##194798, Vicious Rimefang##194120, Restless Icicle##194794, Cragsworn Stoneshaper##195838, Rimebound Controller##195836, Rimebound Subjugator##195837, Cragsworn Stoneshaper##195838, Cragsworn Conqueror##195839
step
talk Possible Future You##186953
|tip Up on the platform.
turnin Making Time##66031 |goto Primalist Tomorrow/0 61.46,50.20
step
talk Soridormi##183860
|tip Up on the platform.
turnin Resistance Isn't Futile##66030 |goto Primalist Tomorrow/0 61.08,50.82
accept Return to the Present##66032 |goto Primalist Tomorrow/0 61.08,50.82
step
click Portal to Temporal Conflux
Return to the Present |complete zone("Thaldraszus") |goto Primalist Tomorrow/0 61.01,50.52 |q 66032
step
talk Nozdormu##186931
turnin Temporal Tuning##66029 |goto Thaldraszus/0 60.05,82.45
turnin Return to the Present##66032 |goto Thaldraszus/0 60.05,82.45
accept To the... Past?##66033 |goto Thaldraszus/0 60.05,82.45
accept Temporal Two-ning##72519 |goto Thaldraszus/0 60.05,82.45
step
click Portal to Azmerloth
Take the Portal to Azmerloth |q 66033/1 |goto Thaldraszus/0 59.98,82.08
step
Travel to Azmerloth |complete zone("Azmerloth") |q 66033
step
talk Andantenormu##187344
turnin To the... Past?##66033 |goto Azmerloth/0 59.83,66.14
accept Murloc Motes##66035 |goto Azmerloth/0 59.83,66.14
step
talk Varian Wryngrrlgulgll##183854
accept Mugurlglrlgl!##66036 |goto Azmerloth/0 59.91,65.98
|only if Alliance
stickystart "Kill_Deathling_Destroyers_Alliance"
stickystart "Collect_Temprgrlglr_Motes_Alliance"
stickystart "Kill_Deathlings_Alliance"
step
use the Chrono Crystal##192749
|tip Use it near the {o}large dragons{} tumbling in the air.
Fix the Temporal Position |q 72519/1 |goto Azmerloth/0 61.59,61.82
|only if Alliance
step
label "Kill_Deathling_Destroyers_Alliance"
kill 5 Deathling Destroyer##190214 |q 66036/2 |goto Azmerloth/0 60.22,65.02
|tip They look like {o}large metal murlocs{}.
|only if Alliance
step
label "Collect_Temprgrlglr_Motes_Alliance"
Collect #12# Temprgrlglr Motes |q 66035/1 |goto Azmerloth/0 60.22,65.02
|tip They look like floating {o}yellow orbs of light{}.
|tip {o}Walk into them{} to collect them.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
|only if Alliance
step
label "Kill_Deathlings_Alliance"
kill 25 Deathling##187342 |q 66036/1 |goto Azmerloth/0 60.22,65.02
|only if Alliance
step
talk Andantenormu##187344
turnin Murloc Motes##66035 |goto Azmerloth/0 59.83,66.14
|only if Alliance
step
talk Varian Wryngrrlgulgll##183854
turnin Mugurlglrlgl!##66036 |goto Azmerloth/0 59.91,65.98
accept Deathwingurlugull!##70373 |goto Azmerloth/0 59.91,65.98
|only if Alliance
step
Watch the dialogue
clicknpc Murloc Hopper##195209
Enter the Hopper |q 70373/1 |goto Azmerloth/0 59.81,65.70
|only if Alliance
step
kill Deathwingurlugull##195314 |q 70373/2 |goto Azmerloth/0 59.83,59.04
|tip It looks like a {o}huge murloc{}.
|tip Use the abilities on your action bar.
|only if Alliance
step
Return to Varian Wryngrrlgulgll |outvehicle |goto Azmerloth/0 59.73,65.62 |q 70373
|only if Alliance
step
talk Varian Wryngrrlgulgll##183854
turnin Deathwingurlugull!##70373 |goto Azmerloth/0 59.91,65.98
|only if Alliance
step
talk Thrallgrulgulgul##183855
accept Mugurlglrlgl!##66704 |goto Azmerloth/0 59.98,65.97
|only if Horde
stickystart "Kill_Deathling_Destroyers_Horde"
stickystart "Collect_Temprgrlglr_Motes_Horde"
stickystart "Kill_Deathlings_Horde"
step
use the Chrono Crystal##192749
|tip Use it near the {o}large dragons{} tumbling in the air.
Fix the Temporal Position |q 72519/1 |goto Azmerloth/0 61.59,61.82
|only if Horde
step
label "Kill_Deathling_Destroyers_Horde"
kill 5 Deathling Destroyer##190214 |q 66704/2 |goto Azmerloth/0 60.22,65.02
|tip They look like {o}large metal murlocs{}.
|only if Horde
step
label "Collect_Temprgrlglr_Motes_Horde"
Collect #12# Temprgrlglr Motes |q 66035/1 |goto Azmerloth/0 60.22,65.02
|tip They look like floating {o}yellow orbs of light{}.
|tip {o}Walk into them{} to collect them.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
|only if Horde
step
label "Kill_Deathlings_Horde"
kill 25 Deathling##187342 |q 66704/1 |goto Azmerloth/0 60.22,65.02
|only if Horde
step
talk Andantenormu##187344
turnin Murloc Motes##66035 |goto Azmerloth/0 59.83,66.14
|only if Horde
step
talk Thrallgrulgulgul##183855
turnin Mugurlglrlgl!##66704 |goto Azmerloth/0 59.98,65.97
accept Deathwingurlugull!##70371 |goto Azmerloth/0 59.98,65.97
|only if Horde
step
Watch the dialogue
clicknpc Murloc Hopper##195209
Enter the Hopper |q 70371/1 |goto Azmerloth/0 59.81,65.70
|only if Horde
step
kill Deathwingurlugull##195314 |q 70371/2 |goto Azmerloth/0 59.83,59.04
|tip It looks like a {o}huge murloc{}.
|tip Use the abilities on your action bar.
|only if Horde
step
Return to Thrallgrulgulgul |outvehicle |goto Azmerloth/0 59.73,65.62 |q 70371
|only if Horde
step
talk Thrallgrulgulgul##183855
turnin Deathwingurlugull!##70371 |goto Azmerloth/0 59.98,65.97
|only if Horde
step
talk Andantenormu##187344
accept Back to Reality##66037 |goto Azmerloth/0 59.83,66.14
step
click Portal to Temporal Conflux
Return to the Present |complete zone("Thaldraszus") |goto Azmerloth/0 59.72,66.11 |q 66037
step
talk Nozdormu##186931
turnin Back to Reality##66037 |goto Thaldraszus/0 60.05,82.45
turnin Temporal Two-ning##72519 |goto Thaldraszus/0 60.05,82.45
accept On Your Mark... Get Set...##66660 |goto Thaldraszus/0 60.05,82.45
step
click Portal to The Gnoll War
Take the Time Portal to the Gnoll War |q 66660/1 |goto Thaldraszus/0 59.92,82.19
step
Travel to the Past |complete zone("The Gnoll War") |q 66660
step
talk Andantenormu##187435
turnin On Your Mark... Get Set...##66660 |goto The Gnoll War/0 43.38,69.22
step
_NOTE:_
During the Next Quest
|tip The next quest is a {o}timed quest{}.
|tip You will be {o}following the road to yellow swirling portals{}, in multiple zones.
|tip Walk into the yellow swirling portals to travel to the next zone.
|tip As you travel to the portals, {o}walk into the pillars of white light{}.
|tip They will {o}boost your speed{}.
|tip {o}Avoid the circles{} on the ground, they will {o}slow you down{}.
Click Here to Continue |confirm |q 66038 |future
step
talk Andantenormu##187435
accept Race Through Time!##66038 |goto The Gnoll War/0 43.38,69.22
step
Travel to the War of the Shifting Sands |complete zone("War of the Shifting Sands") |goto The Gnoll War/0 32.38,49.69 |q 66038
step
Travel to the Pandaren Revolution |complete zone("Pandaren Revolution") |goto War of the Shifting Sands/0 39.55,76.76 |q 66038
step
Race Through Time |q 66038/1 |goto Pandaren Revolution/0 15.18,58.51
step
talk Andantenormu##187435
turnin Race Through Time!##66038 |goto The Black Empire/0 52.35,73.75
accept Chromie Time##66039 |goto The Black Empire/0 52.35,73.75
step
Follow the path and run up the stairs |goto The Black Empire/0 57.63,59.33 < 20 |only if walking
use the Chrono Crystal##192749
|tip Use it near {o}Chromie{}.
|tip She looks like a {o}large yellow dragon{} tumbling in the air.
Fix the Temporal Position |q 66039/1 |goto The Black Empire/0 53.87,43.43
'|clicknpc Chromie##186499
step
talk Chromie##186499
|tip She flies down and walks to this location.
turnin Chromie Time##66039 |goto The Black Empire/0 53.40,43.97
accept Back to the Future##66040 |goto The Black Empire/0 53.40,43.97
step
talk Chromie##186499
Select _"Let's do this!"_ |gossip 54816
|tip You may not be able to talk to her if another player already started the quest.
Kill the enemies that attack in waves
|tip Use the {o}Temporal Displacement{} ability.
|tip It appears as a button on the screen.
|tip This damages enemies and buffs you.
Defend Your Allies |q 66040/2 |goto The Black Empire/0 53.40,43.97
'|kill Winged Ruin##191399, Aqir Harbinger##191400, Grotesque Bulwark##191398
step
Return to the Present |complete zone("Thaldraszus") |q 66040
step
talk Chromie##183972
Select  _"<Quietly ask Chromie if Nozdormu is okay.>"_ |gossip 55119
Check in with Chromie |q 66040/3 |goto Thaldraszus/0 60.08,82.41
step
talk Nozdormu##186931
turnin Back to the Future##66040 |goto Thaldraszus/0 60.05,82.45
accept Moving On##66221 |goto Thaldraszus/0 60.05,82.45
step
talk Nozdormu##187669
|tip At the top of the tower.
turnin An Anomalous Shrine##67093 |goto Valdrakken/0 61.47,39.09
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
Select _"All of the Oathstones have been restored."_ |gossip 107528
Speak with Alexstrasza |q 66221/1 |goto Valdrakken/0 58.12,34.87
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
turnin Moving On##66221 |goto Valdrakken/0 58.12,34.87
step
talk Vesri##189339
|tip On a stone platform, overlooking the water.
fpath Algeth'era |goto Thaldraszus/0 49.47,41.94
step
talk Officer Obernax##189237
|tip On a stone platform, overlooking the water.
fpath Veiled Ossuary |goto Thaldraszus/0 62.07,18.93
step
talk Nirazal##193508
|tip On a stone platform, overlooking the lava.
fpath Vault of the Incarnates |goto Thaldraszus/0 72.14,56.45
step
|next "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Story Campaigns\\Intro & The Waking Shores (Story Only)",{
author="support@zygorguides.com",
},[[
step
All Scouting Map Quests Complete Detected	|next "All_Scouting_Map_Quests_Complete"
|only if achieved(16363) and completedq(65691) and completedallq(72266,72267,72268,72269)
step
accept The Dragon Isles Await##65436
|tip You will accept this quest automatically.
|only if Alliance and not (haveq(66589) or completedq(66589))
step
use the Lost Dragonscale##205456
Use the Lost Dragonscale to Teleport to Near Wrathion's Location |q 65436/1
|only if Alliance and not (haveq(66589) or completedq(66589))
step
talk Wrathion##189569
|tip Inside the building.
Meet Wrathion in Stormwind |q 65436/2 |goto Stormwind City/0 79.80,27.01
|only if Alliance and not (haveq(66589) or completedq(66589))
step
talk Wrathion##189569
|tip Inside the building.
turnin The Dragon Isles Await##65436 |goto Stormwind City/0 79.80,27.01
accept Aspectral Invitation##66577 |goto Stormwind City/0 79.80,27.01
|only if Alliance and not (haveq(66589) or completedq(66589))
step
talk Wrathion##189569
|tip Inside the building.
Select  _"<Listen to Wrathion and Turalyon.>"_ |gossip 55659
Speak with Wrathion |q 66577/1 |goto Stormwind City/0 79.80,27.01
|only if Alliance and not (haveq(66589) or completedq(66589))
step
talk Wrathion##189569
|tip Inside the building.
turnin Aspectral Invitation##66577 |goto Stormwind City/0 79.80,27.01
|only if Alliance and not (haveq(66589) or completedq(66589))
step
talk Scalecommander Azurathel##189603
|tip Inside the building.
accept The Obsidian Warders##72240 |goto Stormwind City/0 79.94,26.95
|only if Alliance
step
talk Toddy Whiskers##189602
|tip Inside the building.
accept Expeditionary Coordination##66589 |goto Stormwind City/0 79.72,27.33
|only if Alliance
step
talk Dungar Longdrink##352
|tip Inside the building.
fpath Stormwind |goto Stormwind City/0 70.94,72.47
|only if Alliance
step
talk Pathfinder Jeb##189763
Select _"We need explorers for an expedition to the Dragon Isles. Will you join us?"_ |gossip 55649
Recruit the Explorers |q 66589/2 |goto Stormwind City/0 38.24,45.31
|only if Alliance
step
talk Dervishian##198401
Select _"Scalecommander Azurathel would like you to meet him at the docks."_ |gossip 107417
Deliver the Orders to Dervishian |q 72240/1 |goto Stormwind City/0 39.25,41.40
|only if Alliance
step
talk Thaelin Darkanvil##189767
Select _"We need artisans for an expedition to the Dragon Isles. Will you join us?"_ |gossip 55651
Recruit the Artisans |q 66589/1 |goto Stormwind City/0 38.10,35.09
|only if Alliance
step
talk Cataloger Wulferd##189765
Select _"We need scholars for an expedition to the Dragon Isles. Will you join us?"_ |gossip 55650
Recruit the Scholars |q 66589/3 |goto Stormwind City/0 32.89,34.61
|only if Alliance
step
talk Toddy Whiskers##189077
turnin Expeditionary Coordination##66589 |goto Stormwind City/0 22.71,55.66
turnin The Obsidian Warders##72240 |goto Stormwind City/0 22.71,55.66
|only if Alliance
step
Watch the dialogue
talk Archmage Khadgar##193450
|tip He appears out of a portal.
accept Whispers on the Winds##66596 |goto Stormwind City/0 23.01,56.14
|only if Alliance
step
talk Archmage Khadgar##193450
Select  _"<Ask Khadgar what happened.>"_ |gossip 55739
Speak with Archmage Khadgar |q 66596/1 |goto Stormwind City/0 23.01,56.14
|only if Alliance
step
talk Wrathion##189569
turnin Whispers on the Winds##66596 |goto Stormwind City/0 22.94,55.99
|only if Alliance
step
talk Toddy Whiskers##189077
accept To the Dragon Isles!##67700 |goto Stormwind City/0 22.72,55.67
|only if Alliance
step
Wait for the Rugged Dragonscale at Stormwind Docks |q 67700/1 |goto Stormwind City/0 21.83,56.53
|tip Wait for the boat to arrive, then board the boat.
|only if Alliance
step
Travel to the Dragon Isles |complete zone("The Waking Shores") |q 67700
|tip Wait for the boat to sail to the Dragon Isles.
|only if Alliance
step
Ride the Rugged Dragonscale to Dragon Isles |q 67700/2 |goto The Waking Shores/0 82.13,31.88
|tip Walk into the camp.
|only if Alliance
step
Watch the dialogue
talk Toddy Whiskers##189022
|tip She runs to this location.
turnin To the Dragon Isles!##67700 |goto The Waking Shores/0 82.13,31.88
accept Explorers in Peril##70122 |goto The Waking Shores/0 82.13,31.88
|only if Alliance
step
talk Scalecommander Azurathel##189035
accept Primal Pests##70123 |goto The Waking Shores/0 82.16,31.85
|only if Alliance
step
talk Thaelin Darkanvil##189021
accept Practice Materials##70124 |goto The Waking Shores/0 82.09,31.88
|only if Alliance
stickystart "Kill_Primal_Proto_Drakes"
stickystart "Collect_Primal_Proto_Whelp_Scales"
step
click Protodragon Rib Cage
Rescue Professor Cogcatcher |q 70122/1 |goto The Waking Shores/0 83.55,33.60
|only if Alliance
step
clicknpc Archivist Rellid##189055
|tip He looks like a {o}Draenei{} being {o}flown around{} by 2 smaller dragons.
Rescue Archivist Rellid |q 70122/2 |goto The Waking Shores/0 82.93,36.04
|only if Alliance
step
clicknpc Spelunker Lockeye##189052
Rescue Spelunker Lockeye |q 70122/3 |goto The Waking Shores/0 79.50,35.35
|only if Alliance
step
label "Kill_Primal_Proto_Drakes"
kill 10 Primal Proto-Drake##193806 |q 70123/1 |goto The Waking Shores/0 81.66,34.60
|tip They look like {o}large dragons{}.
|only if Alliance
step
label "Collect_Primal_Proto_Whelp_Scales"
kill Primal Proto-Whelp##193876+
|tip They look like {o}tiny dragons{}.
collect 15 Primal Proto-Whelp Scale##198398 |q 70124/1 |goto The Waking Shores/0 81.66,34.60
|only if Alliance
step
talk Toddy Whiskers##187251
turnin Explorers in Peril##70122 |goto The Waking Shores/0 76.63,33.63
accept Where is Wrathion?##70125 |goto The Waking Shores/0 76.63,33.63
|only if Alliance
step
talk Sendrax##193362
Select _"Why aren't the dragons here to meet us?"_ |gossip 55636
Watch the dialogue
Inquire After the Missing Dragons |q 70125/1 |goto The Waking Shores/0 76.58,33.67
|only if Alliance
step
talk Sendrax##193362
turnin Where is Wrathion?##70125 |goto The Waking Shores/0 76.58,33.67
|tip You will {o}only{} be able to accept {o}one of these quests{}.
accept Adventuring in the Dragon Isles##72293 |goto The Waking Shores/0 76.58,33.67 |or
accept Excuse the Mess##69911 |goto The Waking Shores/0 76.58,33.67 |or
|only if Alliance
step
talk Cataloger Jakes##198846
turnin Dragon Isles Supplies##72708 |goto The Waking Shores/0 76.54,34.24
accept Funding a Treasure Hunt##72709 |goto The Waking Shores/0 76.54,34.24
|only if Alliance and (haveq(72708) or completedq(72708))
step
talk Cataloger Jakes##198846
buy Archeologist Artifact Notes##198854 |n
Buy Archeologist Artifact Notes from Cataloger Jakes |q 72709/1 |goto The Waking Shores/0 76.54,34.24
|only if Alliance and (haveq(72709) or completedq(72709))
step
use the Archeologist Artifact Notes##198854
Read the Archeology Artifact Notes |q 72709/2 |goto The Waking Shores/0 76.54,34.24
|only if Alliance and (haveq(72709) or completedq(72709))
step
talk Cataloger Jakes##198846
turnin Funding a Treasure Hunt##72709 |goto The Waking Shores/0 76.54,34.24
|only if Alliance and (haveq(72709) or completedq(72709))
step
talk Thaelin Darkanvil##189058
turnin Practice Materials##70124 |goto The Waking Shores/0 76.48,34.37
|only if Alliance
step
talk Scalecommander Azurathel##187252
turnin Primal Pests##70123 |goto The Waking Shores/0 76.75,34.41
|only if Alliance
step
talk Tixxa Mixxa##192490
fpath Wingrest Embassy |goto The Waking Shores/0 76.03,35.05
|only if Alliance
step
label "Scouting_Map_Alliance"
click Scouting Map
|tip It looks like a large brown paper map on the table.
|tip You are {o}choosing the zone{} you wish to {o}do quests in{}.
|tip Pick whichever you like, {o}it doesn't matter{}.
accept The Waking Shores##72266 |goto The Waking Shores/0 76.52,34.23	|or |only if not completedq(72266)
accept Ohn'ahran Plains##72267 |goto The Waking Shores/0 76.52,34.23	|or |only if not completedq(72267)
accept Azure Span##72268 |goto The Waking Shores/0 76.52,34.23		|or |only if not completedq(72268)
accept Thaldraszus##72269 |goto The Waking Shores/0 76.52,34.23		|or |only if not completedq(72269)
Choose a Zone from the Scouting Map |q 72293/1 |goto The Waking Shores/0 76.52,34.23 |only if haveq(72293)
|only if Alliance and (haveq(72293) or completedq(72293))
step
_Click the Quest Complete Box:_
|tip In the quest tracker area.
turnin Adventuring in the Dragon Isles##72293
|only if Alliance and (haveq(72293) or completedq(72293))
step
_Which Zone Did You Choose?_
|tip Click the line below for the zone you want to complete quests in.
The Waking Shores	|confirm	|next "Waking_Shores_Alliance"
Ohn'ahran Plains	|confirm	|next "Leveling Guides\\Dragonflight (10-70)\\Story Campaigns\\Ohn'ahran Plains (Story Only)"
The Azure Span		|confirm	|next "Leveling Guides\\Dragonflight (10-70)\\Story Campaigns\\The Azure Span (Story Only)"
Thaldraszus		|confirm	|next "Leveling Guides\\Dragonflight (10-70)\\Story Campaigns\\Thaldraszus (Story Only)"
|only if Alliance and (haveq(72293) or completedq(72293))
step
label "Waking_Shores_Alliance"
talk Sendrax##193362
turnin The Waking Shores##72266 |goto The Waking Shores/0 76.58,33.67 |only if haveq(72266) or completedq(72266)
accept Excuse the Mess##69911 |goto The Waking Shores/0 76.58,33.67
|only if Alliance
step
talk Ambassador Fastrasz##193393
|tip Inside the building.
Select _"I'm a new arrival with the Dragonscale Expedition."_ |gossip 55674
Speak with Ambassador Fastrasz |q 69911/1 |goto The Waking Shores/0 76.33,35.62
|only if Alliance
step
talk Ambassador Fastrasz##193393
|tip Inside the building.
home Wingrest Embassy |goto The Waking Shores/0 76.33,35.62 |q 69911 |future
|only if Alliance
step
click Embassy Visitor Log
|tip Inside the building.
Select _"<Begin filling out the form.>"_ |gossip 55746
Select _"Stonehead"_ |gossip 64055
Select _"<Write today's date.>"_ |gossip 55767
Select _"To aid the Dragonflights"_ |gossip 55768
Sign the Embassy Visitor Log |q 69911/2 |goto The Waking Shores/0 76.28,35.61
|only if Alliance
step
click Alexstrasza's Welcome
Read the Welcome Message |q 69911/3 |goto The Waking Shores/0 75.61,34.14
|only if Alliance
step
accept The Dragon Isles Await##65435
|tip You will accept this quest automatically.
|only if Horde and not (haveq(65443) or completedq(65443))
step
use the Lost Dragonscale##205458
Use the Lost Dragonscale to Teleport to Near Ebyssian's Location |q 65435/1
|only if Horde and not (haveq(65443) or completedq(65443))
step
talk Ebyssian##190239
Meet Ebyssian in Orgrimmar. |q 65435/2 |goto Orgrimmar/1 44.07,37.96
|only if Horde and not (haveq(65443) or completedq(65443))
step
talk Ebyssian##190239
|tip On the platform above the city.
turnin The Dragon Isles Await##65435 |goto Orgrimmar/1 44.07,37.96
accept Aspectral Invitation##65437 |goto Orgrimmar/1 44.07,37.96
|only if Horde and not (haveq(65443) or completedq(65443))
step
talk Ebyssian##190239
|tip On the platform above the city.
Select  _"<Listen to Ebonhorn.>"_ |gossip 55582
Speak with Ebyssian |q 65437/1 |goto Orgrimmar/1 44.07,37.96
|only if Horde and not (haveq(65443) or completedq(65443))
step
talk Ebyssian##190239
|tip On the platform above the city.
turnin Aspectral Invitation##65437 |goto Orgrimmar/1 44.07,37.96
|only if Horde and not (haveq(65443) or completedq(65443))
step
talk Scalecommander Cindrethresh##184786
|tip On the platform above the city.
accept The Dark Talons##72256 |goto Orgrimmar/1 44.02,38.25
|only if Horde
step
talk Naleidea Rivergleam##184793
|tip On the platform above the city.
accept Expeditionary Coordination##65443 |goto Orgrimmar/1 44.18,37.78
|only if Horde
step
talk Kodethi##198442
Select _"Scalecommander Cindrethresh would like you to meet her at the zeppelin tower."_ |gossip 107450
Deliver the Orders to Kodethi |q 72256/1 |goto Durotar/0 54.13,9.86
|only if Horde
step
talk Pathfinder Tacha##184796
Select _"We need explorers for an expedition to the Dragon Isles. Will you join us?"_ |gossip 53882
Recruit the Explorers |q 65443/2 |goto Durotar/0 54.01,13.04
|only if Horde
step
talk Boss Magor##184787
Select _"We need artisans for an expedition to the Dragon Isles. Will you join us?"_ |gossip 53883
Recruit the Artisans |q 65443/1 |goto Durotar/0 55.17,11.63
|only if Horde
step
talk Cataloger Coralie##184795
Select _"We need scholars for an expedition to the Dragon Isles. Will you join us?"_ |gossip 54035
Recruit the Scholars |q 65443/3 |goto Durotar/0 55.97,13.22
|only if Horde
step
talk Naleidea Rivergleam##197279
|tip On top of the tower.
turnin Expeditionary Coordination##65443 |goto Durotar/0 55.81,12.66
turnin The Dark Talons##72256 |goto Durotar/0 55.81,12.66
|only if Horde
step
Watch the dialogue
talk Archmage Khadgar##193450
|tip On top of the tower.
|tip He appears out of a portal.
accept Whispers on the Winds##65439 |goto Durotar/0 55.92,12.60
|only if Horde
step
talk Archmage Khadgar##193450
|tip On top of the tower.
Select  _"<Ask Khadgar what happened.>"_ |gossip 55626
Speak with Archmage Khadgar |q 65439/1 |goto Durotar/0 55.92,12.60
|only if Horde
step
talk Ebyssian##190239
|tip On top of the tower.
turnin Whispers on the Winds##65439 |goto Durotar/0 55.84,12.75
|only if Horde
step
talk Naleidea Rivergleam##197279
|tip On top of the tower.
accept To the Dragon Isles!##65444 |goto Durotar/0 55.81,12.66
|only if Horde
step
Wait for the Defiant Dragonscale at the Zeppelin Tower |q 65444/1 |goto Durotar/0 56.02,13.50
|tip Wait for the zeppelin to arrive, then board the zeppelin.
|only if Horde
step
Travel to the Dragon Isles |complete zone("The Waking Shores") |q 65444
|tip Wait for the zeppelin to fly to the Dragon Isles.
|only if Horde
step
Ride the Defiant Dragonscale to Dragon Isles |q 65444/2 |goto The Waking Shores/0 80.62,27.61
|tip Walk into the camp.
|only if Horde
step
Watch the dialogue
talk Naleidea Rivergleam##184841
|tip She runs to this location.
turnin To the Dragon Isles!##65444 |goto The Waking Shores/0 80.62,27.61
accept Explorers in Peril##65452 |goto The Waking Shores/0 80.62,27.61
|only if Horde
step
talk Scalecommander Cindrethresh##184859
accept Primal Pests##65453 |goto The Waking Shores/0 80.65,27.59
|only if Horde
step
talk Boss Magor##184844
accept Practice Materials##65451 |goto The Waking Shores/0 80.60,27.65
|only if Horde
stickystart "Kill_Primal_Proto_Drakes_Horde"
stickystart "Collect_Primal_Proto_Whelp_Scales_Horde"
step
click Protodragon Rib Cage
Rescue Pathfinder Poppy |q 65452/1 |goto The Waking Shores/0 80.37,26.34
|only if Horde
step
clicknpc Archivist Spearblossom##187157
|tip He looks like a {o}Tauren{} being {o}flown around{} by 2 smaller dragons.
Rescue Archivist Spearblossom |q 65452/2 |goto The Waking Shores/0 78.79,24.47
|only if Horde
step
clicknpc Spelunker Lazee##187151
Rescue Spelunker Lazee |q 65452/3 |goto The Waking Shores/0 77.33,29.81
|only if Horde
step
label "Kill_Primal_Proto_Drakes_Horde"
kill 10 Primal Proto-Drake##193806 |q 65453/1 |goto The Waking Shores/0 79.41,26.55
|tip They look like {o}large dragons{}.
|only if Horde
step
label "Collect_Primal_Proto_Whelp_Scales_Horde"
kill Primal Proto-Whelp##193876+
|tip They look like {o}tiny dragons{}.
collect 20 Primal Proto-Whelp Scale##198398 |q 65451/1 |goto The Waking Shores/0 79.41,26.55
|only if Horde
step
talk Naleidea Rivergleam##184870
turnin Explorers in Peril##65452 |goto The Waking Shores/0 76.61,33.60
accept Where is Wrathion?##69910 |goto The Waking Shores/0 76.61,33.60
|only if Horde
step
talk Sendrax##193362
Select _"Why aren't the dragons here to meet us?"_ |gossip 55636
Watch the dialogue
Inquire After the Missing Dragons |q 69910/1 |goto The Waking Shores/0 76.58,33.67
|only if Horde
step
talk Sendrax##193362
turnin Where is Wrathion?##70125 |goto The Waking Shores/0 76.58,33.67
|tip You will only be able to accept one of these quests.
accept Adventuring in the Dragon Isles##72293 |goto The Waking Shores/0 76.58,33.67 |or
accept Excuse the Mess##69911 |goto The Waking Shores/0 76.58,33.67 |or
|only if Horde
step
talk Scalecommander Cindrethresh##187235
turnin Primal Pests##65453 |goto The Waking Shores/0 76.28,33.02
|only if Horde
step
talk Boss Magor##187236
turnin Practice Materials##65451 |goto The Waking Shores/0 75.94,33.24
|only if Horde
step
talk Cataloger Jakes##198846
turnin Dragon Isles Supplies##72708 |goto The Waking Shores/0 76.54,34.24
accept Funding a Treasure Hunt##72709 |goto The Waking Shores/0 76.54,34.24
|only if Horde and (haveq(72708) or completedq(72708))
step
talk Cataloger Jakes##198846
buy Archeologist Artifact Notes##198854 |n
Buy Archeologist Artifact Notes from Cataloger Jakes |q 72709/1 |goto The Waking Shores/0 76.54,34.24
|only if Horde and (haveq(72709) or completedq(72709))
step
use the Archeologist Artifact Notes##198854
Read the Archeology Artifact Notes |q 72709/2 |goto The Waking Shores/0 76.54,34.24
|only if Horde and (haveq(72709) or completedq(72709))
step
talk Cataloger Jakes##198846
turnin Funding a Treasure Hunt##72709 |goto The Waking Shores/0 76.54,34.24
|only if Horde and (haveq(72709) or completedq(72709))
step
talk Tixxa Mixxa##192490
fpath Wingrest Embassy |goto The Waking Shores/0 76.03,35.05
|only if Horde
step
click Scouting Map
|tip It looks like a large brown paper map on the table.
|tip You are {o}choosing the zone{} you wish to {o}do quests in{}.
|tip Pick whichever you like, {o}it doesn't matter{}.
accept The Waking Shores##72266		|or |goto The Waking Shores/0 76.52,34.23 |only if not completedq(72266)
accept Ohn'ahran Plains##72267		|or |goto The Waking Shores/0 76.52,34.23 |only if not completedq(72267)
accept Azure Span##72268		|or |goto The Waking Shores/0 76.52,34.23 |only if not completedq(72268)
accept Thaldraszus##72269		|or |goto The Waking Shores/0 76.52,34.23 |only if not completedq(72269)
Choose a Zone from the Scouting Map |q 72293/1 |goto The Waking Shores/0 76.52,34.23 |only if haveq(72293)
|only if Horde and (haveq(72293) or completedq(72293))
step
_Click the Quest Complete Box:_
|tip In the quest tracker.
turnin Adventuring in the Dragon Isles##72293
|only if Horde and (haveq(72293) or completedq(72293))
step
_Which Zone Did You Choose?_
|tip Click the line below for the zone you want to complete quests in.
The Waking Shores	|confirm	|next "Waking_Shores_Horde"
Ohn'ahran Plains	|confirm	|next "Leveling Guides\\Dragonflight (10-70)\\Story Campaigns\\Ohn'ahran Plains (Story Only)"
The Azure Span		|confirm	|next "Leveling Guides\\Dragonflight (10-70)\\Story Campaigns\\The Azure Span (Story Only)"
Thaldraszus		|confirm	|next "Leveling Guides\\Dragonflight (10-70)\\Story Campaigns\\Thaldraszus (Story Only)"
|only if Horde and (haveq(72293) or completedq(72293))
step
label "Waking_Shores_Horde"
talk Sendrax##193362
turnin The Waking Shores##72266 |goto The Waking Shores/0 76.58,33.67 |only if haveq(72266) or completedq(72266)
accept Excuse the Mess##69911 |goto The Waking Shores/0 76.58,33.67
|only if Horde
step
talk Ambassador Fastrasz##193393
|tip Inside the building.
Select _"I'm a new arrival with the Dragonscale Expedition."_ |gossip 55674
Speak with Ambassador Fastrasz |q 69911/1 |goto The Waking Shores/0 76.33,35.62
|only if Horde
step
talk Ambassador Fastrasz##193393
|tip Inside the building.
home Wingrest Embassy |goto The Waking Shores/0 76.33,35.62 |q 69911 |future
|only if Horde
step
click Embassy Visitor Log
|tip Inside the building.
Select _"<Begin filling out the form.>"_ |gossip 55746
Select _"Stonehead"_ |gossip 64055
Select _"<Write today's date.>"_ |gossip 55767
Select _"To aid the Dragonflights"_ |gossip 55768
Sign the Embassy Visitor Log |q 69911/2 |goto The Waking Shores/0 76.28,35.61
|only if Horde
step
click Alexstrasza's Welcome
Read the Welcome Message |q 69911/3 |goto The Waking Shores/0 75.61,34.14
|only if Horde
step
click Brazier of Kinship
Relight the Brazier of Kinship |q 69911/4 |goto The Waking Shores/0 78.42,31.78
step
talk Sendrax##193362
turnin Excuse the Mess##69911 |goto The Waking Shores/0 76.58,33.67
accept My First Real Emergency!##69912 |goto The Waking Shores/0 76.58,33.67
step
talk Sendrax##193362
Select _"Send the signal flare to alert the dragons of our arrival."_ |gossip 55637
Watch the dialogue
Send the Signal Flare |q 69912/1 |goto The Waking Shores/0 76.58,33.67
step
Watch the dialogue
Wait for the Dragons' Arrival |q 69912/2 |goto The Waking Shores/0 76.26,34.40
step
talk Wrathion##193371
turnin My First Real Emergency!##69912 |goto The Waking Shores/0 76.19,34.50
step
talk Majordomo Selistra##193372
accept The Djaradin Have Awoken##69914 |goto The Waking Shores/0 76.22,34.53
step
talk Majordomo Selistra##193372
Select _"How can I help defend against the djaradin?"_ |gossip 55872
Watch the dialogue
Receive the Orders from Majordomo Selistra |q 69914/1 |goto The Waking Shores/0 76.22,34.53
step
talk Sendrax##193363
turnin The Djaradin Have Awoken##69914 |goto The Waking Shores/0 76.26,34.40
accept Reporting for Duty##65760 |goto The Waking Shores/0 76.26,34.40
step
talk Sendrax##193363
Select _"Lead me to Dragonheart Outpost."_ |gossip 55900
Ask Sendrax to Lead You to the Outpost |q 65760/1 |goto The Waking Shores/0 76.26,34.40
step
Watch the dialogue
|tip Follow {o}Sendrax{} as she walks.
|tip She eventually walks to this location.
Follow Sendrax to the Outpost |q 65760/2 |goto The Waking Shores/0 71.25,40.67
'|clicknpc Sendrax##191807
step
talk Commander Lethanak##186584
turnin Reporting for Duty##65760 |goto The Waking Shores/0 71.20,40.77
accept Invader Djaradin##65989 |goto The Waking Shores/0 71.20,40.77
accept Deliver Whelps From Evil##65990 |goto The Waking Shores/0 71.20,40.77
stickystart "Slay_Djaradin"
step
clicknpc Whimpering Whelpling##194231
|tip It looks like a {o}tiny red dragon{}.
|tip Behind the building.
Save the Whimpering Whelpling |q 65990/1 |goto The Waking Shores/0 71.36,44.64 |count 1
step
clicknpc Whimpering Whelpling##194231
|tip It looks like a {o}tiny red dragon{}.
|tip Upstairs inside the building.
Save the Whimpering Whelpling |q 65990/1 |goto The Waking Shores/0 70.97,46.63 |count 2
step
clicknpc Whimpering Whelpling##194231
|tip It looks like a {o}tiny red dragon{}.
Save the Whimpering Whelpling |q 65990/1 |goto The Waking Shores/0 69.86,45.30 |count 3
step
clicknpc Whimpering Whelpling##194231
|tip It looks like a {o}tiny red dragon{}.
|tip It flies in the air around this area.
Save the Whimpering Whelpling |q 65990/1 |goto The Waking Shores/0 69.35,43.36 |count 4
step
label "Slay_Djaradin"
Kill Qalashi enemies around this area
Slay #6# Djaradin |q 65989/1 |goto The Waking Shores/0 70.37,44.87
'|kill Qalashi Scavenger##191833, Qalashi Djaradin##188296
step
talk Commander Lethanak##186584
turnin Invader Djaradin##65989 |goto The Waking Shores/0 71.20,40.78
turnin Deliver Whelps From Evil##65990 |goto The Waking Shores/0 71.20,40.78
accept Time for a Reckoning##65991 |goto The Waking Shores/0 71.20,40.78
step
Meet Wrathion at Scalecracker Keep |q 65991/1 |goto The Waking Shores/0 66.49,34.42
|tip On top of the building.
step
talk Wrathion##186640
|tip He flies down and lands on top of the building.
turnin Time for a Reckoning##65991 |goto The Waking Shores/0 66.36,35.00
accept Killjoy##65993 |goto The Waking Shores/0 66.36,35.00
accept Blacktalon Intel##65992 |goto The Waking Shores/0 66.36,35.00
step
talk Right##190564
Select _"What have you observed about the djaradin?"_ |gossip 55298
Consult Right |q 65992/3 |goto The Waking Shores/0 65.10,29.35
step
kill Meatgrinder Sotok##186777 |q 65993/1 |goto The Waking Shores/0 62.94,29.43
collect Qalashi Plans##193874 |n
accept The Obsidian Citadel##65995 |goto The Waking Shores/0 62.94,29.43
step
talk Left##190563
Select _"What have you observed about the djaradin?"_ |gossip 55296
Consult Left |q 65992/2 |goto The Waking Shores/0 63.43,28.87
step
talk Talonstalker Kavia##188299
Select _"What have you observed about the djaradin?"_ |gossip 55335
Consult Talonstalker Kavia |q 65992/1 |goto The Waking Shores/0 63.04,33.34
step
talk Wrathion##194772
|tip On top of the building.
turnin Killjoy##65993 |goto The Waking Shores/0 62.64,33.17
turnin Blacktalon Intel##65992 |goto The Waking Shores/0 62.64,33.17
turnin The Obsidian Citadel##65995 |goto The Waking Shores/0 62.64,33.17
step
talk Majordomo Selistra##186767
|tip On top of the building.
accept Veteran Reinforcements##65996 |goto The Waking Shores/0 62.75,33.10
step
clicknpc Injured Ruby Culler##190771
Heal the Injured Drakonid |q 65996/1 |goto The Waking Shores/0 60.98,35.63 |count 1
step
clicknpc Injured Ruby Culler##190771
Heal the Injured Drakonid |q 65996/1 |goto The Waking Shores/0 61.10,36.77 |count 2
step
clicknpc Injured Ruby Culler##190771
Heal the Injured Drakonid |q 65996/1 |goto The Waking Shores/0 59.04,34.84 |count 3
step
clicknpc Injured Ruby Culler##190771
Heal the Injured Drakonid |q 65996/1 |goto The Waking Shores/0 56.64,34.77 |count 4
step
Meet Sendrax at the Conservatory Outpost |q 65996/2 |goto The Waking Shores/0 54.99,30.77
step
talk Caretaker Azkra##190155
turnin Veteran Reinforcements##65996 |goto The Waking Shores/0 54.99,30.77
accept Chasing Sendrax##65997 |goto The Waking Shores/0 54.99,30.77
step
talk Sendrax##187406
|tip Behind the statue.
Select _"What is happening here?"_ |gossip 55225
Find Sendrax |q 65997/1 |goto The Waking Shores/0 55.18,24.96
step
talk Sendrax##187406
turnin Chasing Sendrax##65997 |goto The Waking Shores/0 55.18,24.95
accept Future of the Flights##65998 |goto The Waking Shores/0 55.18,24.95
accept Red in Tooth and Claw##65999 |goto The Waking Shores/0 55.18,24.95
step
click On the Origin of Draconic Species
accept Library of Alexstrasza##66000 |goto The Waking Shores/0 55.26,24.69
stickystart "Slay_Primalist_Forces"
step
click Dracuixote
|tip It looks like a {o}book on the bookshelf{}.
|tip Inside the building.
Save the Book |q 66000/1 |goto The Waking Shores/0 53.47,22.00 |count 1
step
click The Scales of Wrath
|tip It looks like an {o}open book on the bookshelf{}.
|tip Inside the building.
Save the Book |q 66000/1 |goto The Waking Shores/0 53.36,22.39 |count 2
step
Find Infused Dragon Eggs |q 65998/1 |goto The Waking Shores/0 55.18,22.72
|tip Run next to the {o}Ruby Dragon Eggs{}.
|tip They look like groups of {o}large, red, spikey eggs{}.
|tip The eggs will {o}break open{} and 3 enemies will {o}attack you{}.
stickystart "Kill_Infused_Ruby_Whelplings"
step
click Pride and Protodrakes
|tip It looks like a {o}book next to the fire{}.
|tip Inside the building, on the ground floor.
Save the Book |q 66000/1 |goto The Waking Shores/0 54.63,20.36 |count 3
step
click The Lord of the Wings
|tip It looks like an {o}open book{} laying on the floor.
|tip Inside the building, on the top floor.
Save the Book |q 66000/1 |goto The Waking Shores/0 54.60,20.62 |count 4
step
label "Kill_Infused_Ruby_Whelplings"
kill 9 Infused Ruby Whelpling##186822 |q 65998/2 |goto The Waking Shores/0 56.38,23.31
|tip Run next to the {o}Ruby Dragon Eggs{}.
|tip They look like groups of {o}large, red, spikey eggs{}.
|tip The eggs will {o}break open{} and 3 enemies will {o}attack you{}.
step
label "Slay_Primalist_Forces"
Kill enemies around this area
Slay #15# Primalist Forces |q 65999/1 |goto The Waking Shores/0 56.38,23.31
'|kill Primal Revenant##195917, Molten Primalist##186825, Swelling Fire Elemental##188667, Lavacaller Primalist##186823, Unleashed Lavaburst##188666, Primal Tarasek##188372, Tarasek Elementalist##190080, Firava the Rekindler##195915
step
_Next to you:_
talk Sendrax
turnin Future of the Flights##65998
turnin Red in Tooth and Claw##65999
turnin Library of Alexstrasza##66000
accept A Last Hope##66001
step
talk Sendrax##190269
Select _"I am ready."_ |gossip 55259
Meet Sendrax by the Ritual Site |q 66001/1 |goto The Waking Shores/0 56.24,22.07
step
Watch the dialogue
click Infused Dragon Egg
|tip Click it when {o}Sendrax{} tells you to.
Pick up the Infused Dragon Egg |q 66001/2 |goto The Waking Shores/0 56.92,21.61
step
_NOTE:_
During the Next Step
|tip You will be carrying the {o}Infused Dragon Egg{}.
|tip {o}Just run, don't stop{} to fight enemies or anything else.
|tip If you {o}do anything{} like fighting enemies, eating or drinking, or using a potion, etc, you will {o}drop the egg{} on the ground.
|tip Make sure you pick the egg back up if you do anything that makes you drop it.
Click Here to Continue |confirm |q 66001
step
Carry the Egg to Safety |q 66001/3 |goto The Waking Shores/0 54.99,30.77
|tip You are carrying the {o}Infused Dragon Egg{}.
|tip {o}Just run, don't stop{} to fight enemies or anything else.
|tip If you {o}do anything{} like fighting enemies, eating or drinking, or using a potion, etc, you will {o}drop the egg{} on the ground.
|tip Make sure you pick the egg back up if you do anything that makes you drop it.
step
talk Majordomo Selistra##186795
turnin A Last Hope##66001 |goto The Waking Shores/0 55.09,31.01
accept For the Benefit of the Queen##66114 |goto The Waking Shores/0 55.09,31.01
step
talk Majordomo Selistra##186795
Select _"Take me with you to see the queen, please."_ |gossip 54941
Begin Flying with Majordomo Selistra |havebuff Majordomo's Wild Ride##376478 |goto The Waking Shores/0 55.09,31.01 |q 66114
step
Watch the dialogue
Ride with Majordomo Selistra to the Ruby Lifeshrine |q 66114/1 |goto The Waking Shores/0 62.26,72.88 |notravel
step
talk Alexstrasza the Life-Binder##187290
Select  _"<Offer the rescued egg to Queen Alexstrasza.>"_ |gossip 107094
Show Queen Alexstrasza the Infused Egg |q 66114/2 |goto The Waking Shores/0 62.34,73.02
step
talk Alexstrasza the Life-Binder##187290
turnin For the Benefit of the Queen##66114 |goto The Waking Shores/0 62.34,73.02
accept The Mandate of the Red##66115 |goto The Waking Shores/0 62.34,73.02
accept Dragonriding##68795 |goto The Waking Shores/0 62.34,73.02
step
talk Xius##189261
Select _"What do you do here?"_ |gossip 55288
Speak to Xius |q 66115/1 |goto The Waking Shores/0 60.70,74.05
step
talk Akxall##189262
Select _"Why are there so few eggs here?"_ |gossip 55289
Speak to Akxall |q 66115/2 |goto The Waking Shores/0 59.38,72.42
step
talk Mother Elion##185904
Select _"Why do you stay here, if you have no eggs to rear?"_ |gossip 55258
Speak to Mother Elion |q 66115/3 |goto The Waking Shores/0 61.60,68.70
step
talk Zahkrana##189260
Select _"How do you care for these eggs?"_ |gossip 55290
Speak to Zahkrana |q 66115/4 |goto The Waking Shores/0 62.77,70.43
step
talk Zahkrana##189260
turnin The Mandate of the Red##66115 |goto The Waking Shores/0 62.77,70.43
step
talk Amella##194174
accept Training Wings##70061 |goto The Waking Shores/0 62.18,70.56
step
clicknpc Ruby Whelpling##193979
|tip It looks like a tiny red dragon.
Choose the Ruby Whelpling |q 70061/1 |goto The Waking Shores/0 61.09,71.46
step
Begin Controlling the Ruby Whelpling |invehicle |q 70061
stickystart "Kill_Intrusive_Pupstingers"
stickystart "Kill_Agitated_Weedlings"
step
kill Relentless Gust##194159 |q 70061/4 |goto The Waking Shores/0 61.45,71.87
|tip They look like {o}tornado elementals{}.
|tip On the larger stone platforms on the wall.
|tip Use the abilities on your action bar.
|tip {o}To aim{} your abilities, {o}face the whelpling{} at what you want to target.
step
label "Kill_Intrusive_Pupstingers"
kill 6 Intrusive Pupstinger##194142 |q 70061/3 |goto The Waking Shores/0 61.45,71.87
|tip They look like {o}flying insects{} around this area.
|tip Use the abilities on your action bar. |notinsticky
|tip {o}To aim{} your abilities, {o}face the whelpling{} at what you want to target. |notinsticky
step
label "Kill_Agitated_Weedlings"
kill 12 Agitated Weedling##193994 |q 70061/2 |goto The Waking Shores/0 61.45,71.87
|tip They look like purple and green {o}plants with teeth{}.
|tip All along the small platforms on the wall.
|tip Use the abilities on your action bar. |notinsticky
|tip {o}To aim{} your abilities, {o}face the whelpling{} at what you want to target. |notinsticky
step
Release the Ruby Whelpling |outvehicle |q 70061
|tip You will automatically fly back to the stone platform.
step
talk Vaknai##192491
|tip On the large platform, overlooking the valley.
fpath Ruby Life Pools |goto The Waking Shores/0 57.80,68.11
step
talk Lord Andestrasz##193287
|tip On the large platform, overlooking the valley.
Select _" Tell me about dragonriding."_ |gossip 55643
Speak to Lord Andestrasz about Dragonriding |q 68795/1 |goto The Waking Shores/0 58.37,67.13
step
talk Lord Andestrasz##193287
|tip On the large platform, overlooking the valley.
|tip He eventually walks to this location.
turnin Dragonriding##68795 |goto The Waking Shores/0 57.66,66.89
accept How to Glide with Your Dragon##65118 |goto The Waking Shores/0 57.66,66.89
step
use the Renewed Proto-Drake##194034
|tip This will teach you your first dragonriding mount.
learnmount Renewed Proto-Drake##368896 |q 65118
step
_NOTE:_
During the Next Step
|tip Look for a string of large {b}glowing glyph rings{} in the air nearby to the {o}north{}.
|tip You will use your dragonriding mount to {o}glide through each of the rings{} toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the {o}Bronze Timepiece{} quest item to retry.
Click Here to Continue |confirm |q 65118
step
Glide Through The #5# Rings |q 65118/2 |goto The Waking Shores/0 57.69,66.71
|tip Look for a string of large {b}glowing glyph rings{} in the air nearby to the {o}north{}.
|tip You will use your dragonriding mount to {o}glide through each of the rings{} toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the {o}Bronze Timepiece{} quest item to retry.
step
Land in the Target Area |q 65118/3 |goto The Waking Shores/0 57.42,59.12
|tip On top of the large red rock pillar.
step
talk Celormu##183141
|tip On top of the large red rock pillar.
turnin How to Glide with Your Dragon##65118 |goto The Waking Shores/0 57.48,59.10
step
Return to the Ruby Lifeshrine |complete subzone("Ruby Lifeshrine") |q 65120 |future
|tip You will travel automatically.
step
talk Lord Andestrasz##193287
|tip On the large platform, overlooking the valley.
accept How To Dive with Your Dragon##65120 |goto The Waking Shores/0 57.66,66.89
step
_NOTE:_
During the Next Step
|tip Look for a string of large {b}glowing glyph rings{} in the air nearby to the {o}north{}.
|tip The rings drop down into the valley below, and lead to a large red rock pillar.
|tip You will use your dragonriding mount to {o}glide through each of the rings{} toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the {o}Bronze Timepiece{} quest item to retry.
Click Here to Continue |confirm |q 65120
step
Glide Through The #5# Rings |q 65120/2 |goto The Waking Shores/0 57.69,66.71
|tip Look for a string of large {b}glowing glyph rings{} in the air nearby to the {o}north{}.
|tip The rings drop down into the valley below, and lead to a large red rock pillar.
|tip You will use your dragonriding mount to {o}glide through each of the rings{} toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the {o}Bronze Timepiece{} quest item to retry.
step
Land in the Target Area |q 65120/3 |goto The Waking Shores/0 57.42,59.12
|tip On top of the large red rock pillar.
step
talk Celormu##183141
|tip On top of the large red rock pillar.
turnin How To Dive with Your Dragon##65120 |goto The Waking Shores/0 57.48,59.10
step
Return to the Ruby Lifeshrine |complete subzone("Ruby Lifeshrine") |q 65133 |future
|tip You will travel automatically.
step
talk Lord Andestrasz##193287
|tip On the large platform, overlooking the valley.
accept How to Use Momentum with Your Dragon##65133 |goto The Waking Shores/0 57.66,66.89
step
_NOTE:_
During the Next Step
|tip Look for a string of large {b}glowing glyph rings{} in the air nearby to the {o}north{}.
|tip The rings drop down into the valley below, and lead to a large red rock pillar.
|tip You will use your dragonriding mount to {o}glide through each of the rings{} toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the {o}Bronze Timepiece{} quest item to retry.
Click Here to Continue |confirm |q 65133
step
Glide Through The #5# Rings |q 65133/2 |goto The Waking Shores/0 57.69,66.71
|tip Look for a string of large {b}glowing glyph rings{} in the air nearby to the {o}north{}.
|tip The rings drop down into the valley below, and lead to a large red rock pillar.
|tip You will use your dragonriding mount to {o}glide through each of the rings{} toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the {o}Bronze Timepiece{} quest item to retry.
step
Land in the Target Area |q 65133/3 |goto The Waking Shores/0 57.42,59.12
|tip On top of the large red rock pillar.
step
talk Celormu##183141
|tip On top of the large red rock pillar.
turnin How to Use Momentum with Your Dragon##65133 |goto The Waking Shores/0 57.48,59.10
step
Return to the Ruby Lifeshrine |complete subzone("Ruby Lifeshrine") |q 68796 |future
|tip You will travel automatically.
step
talk Lord Andestrasz##193287
|tip On the large platform, overlooking the valley.
accept The Need For Higher Velocities##77345 |goto The Waking Shores/0 57.66,66.89
step
_NOTE:_
During the Next Step
|tip Look for a string of large {b}glowing glyph rings{} in the air nearby to the {o}north{}.
|tip The rings drop down into the valley below, and lead to a large red rock pillar.
|tip You will use your dragonriding mount to {o}glide through each of the rings{} toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the {o}Bronze Timepiece{} quest item to retry.
Click Here to Continue |confirm |q 77345
step
Glide Through The #8# Rings |q 77345/2 |goto The Waking Shores/0 57.69,66.71
|tip Look for a string of large {b}glowing glyph rings{} in the air nearby to the {o}north{}.
|tip The rings drop down into the valley below, and lead to a large red rock pillar.
|tip You will use your dragonriding mount to {o}glide through each of the rings{} toward the large red rock pillar.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
|tip If you fail, use the {o}Bronze Timepiece{} quest item to retry.
step
Land in the Target Area |q 77345/3 |goto The Waking Shores/0 57.32,59.13
step
talk Celormu##183141
|tip On the large platform.
turnin The Need For Higher Velocities##77345 |goto The Waking Shores/0 57.47,59.11
step
Return to the Ruby Lifeshrine |complete subzone("Ruby Lifeshrine") |q 68796 |future
|tip You will travel automatically.
step
talk Lord Andestrasz##193287
|tip On the large platform, overlooking the valley.
accept The Skytop Observatory##68796 |goto The Waking Shores/0 57.66,66.89
step
_NOTE:_
During the Next Steps
|tip You will talk to {o}Celormu{} to {o}start a dragonriding race{}.
|tip After talking to him, he will {o}countdown{} to start the race.
|tip Look for a string of large {b}glowing glyph rings{} in the air nearby to the {o}northeast{}.
|tip You will use your dragonriding mount to {o}glide through each of the rings{}.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
Click Here to Continue |confirm |q 68796
step
Watch the dialogue
talk Celormu##198040
|tip He eventually walks to this location.
|tip On the large platform, overlooking the valley.
Select _"I'd like to try the course to Skytop Observatory."_ |gossip 107284
Speak with Celormu to Start the Race |q 68796/1 |goto The Waking Shores/0 57.73,66.72
step
Race to the Skytop Observatory |q 68796/2 |goto The Waking Shores/0 57.76,66.75 |notravel
|tip Look for a string of large {b}glowing glyph rings{} in the air nearby to the {o}northeast{}.
|tip You will use your dragonriding mount to {o}glide through each of the rings{}.
|tip Follow the {o}onscreen instructions{} and the {o}dotted lines{} to each of the rings.
|tip Use the abilities on your action bar to boost your speed and elevation as you fly, if needed.
step
talk Lord Andestrasz##193359
|tip On top of the mountain.
turnin The Skytop Observatory##68796 |goto The Waking Shores/0 75.18,54.97
accept Skyriding Talents and You##68798 |goto The Waking Shores/0 75.18,54.97
step
talk Lithragosa##193364
|tip At the entrance of the crumbled building.
Speak to Lithragosa |q 68798/1 |goto The Waking Shores/0 74.57,56.97
step
talk Lithragosa##193364
|tip At the entrance of the crumbled building.
Select _"I'm ready. [Open Dragonriding Skill Track.]"_ |gossip 55584
View the Dragonriding Skill Track with Lithragosa |q 68798/2 |goto The Waking Shores/0 74.57,56.97
step
talk Lithragosa##193364
|tip At the entrance of the crumbled building.
Learn the "Take to the Skies" Skill with Lithragosa |q 68798/3 |goto The Waking Shores/0 74.57,56.97
step
talk Celormu##193411
Speak to Celormu |q 68798/4 |goto The Waking Shores/0 73.25,52.06
step
talk Azerastrasz##193477
|tip Open the flight map.
fpath Skytop Observatory |goto The Waking Shores/0 72.77,51.90
step
talk Lord Andestrasz##193359
turnin Skyriding Talents and You##68798 |goto The Waking Shores/0 75.18,54.97
accept Return to the Ruby Lifeshrine##68799 |goto The Waking Shores/0 75.18,54.97
step
clicknpc Relastrasza##199684
Ride Relastrasza to the Skytop Launch Tower |q 68799/1 |goto The Waking Shores/0 75.02,55.58
step
talk Majordomo Selistra##191768
turnin Training Wings##70061 |goto The Waking Shores/0 62.32,72.90
step
talk Alexstrasza the Life-Binder##187290
|tip At the top of the Ruby Lifeshrine.
turnin Return to the Ruby Lifeshrine##68799 |goto The Waking Shores/0 62.34,73.02
accept Who Brought the Ruckus?##66931 |goto The Waking Shores/0 62.34,73.02
step
Discover the Commotion |q 66931/1 |goto The Waking Shores/0 59.44,72.83
step
talk Majordomo Selistra##190293
turnin Who Brought the Ruckus?##66931 |goto The Waking Shores/0 59.51,72.63
accept The Primary Threat##66116 |goto The Waking Shores/0 59.51,72.63
step
Report to Commander Lethanak |q 66116/2 |goto The Waking Shores/0 59.41,75.88
|tip On the icy ground.
step
talk Commander Lethanak##187119
turnin The Primary Threat##66116 |goto The Waking Shores/0 59.41,75.88
accept Basalt Assault##66118 |goto The Waking Shores/0 59.41,75.88
step
kill 4 Enraged Cliff##187090 |q 66118/1 |goto The Waking Shores/0 60.28,78.54
|tip They look like {o}large stone elementals{}.
You can find more around [57.76,76.66]
step
talk Commander Lethanak##187119
turnin Basalt Assault##66118 |goto The Waking Shores/0 59.41,75.87
accept Proto-Fight##66122 |goto The Waking Shores/0 59.41,75.87
step
talk Majordomo Selistra##187129
accept Egg Evac##66121 |goto The Waking Shores/0 59.48,76.14
stickystart "Slay_Proto_Dragons"
step
click Bronze Egg
Rescue the Bronze Egg |q 66121/1 |goto The Waking Shores/0 56.14,81.30
step
click Ruby Egg
Rescue the Ruby Egg |q 66121/4 |goto The Waking Shores/0 54.99,80.95
step
click Emerald Egg
Rescue the Emerald Egg |q 66121/3 |goto The Waking Shores/0 55.32,83.30
step
click Azure Egg
Rescue the Azure Egg |q 66121/2 |goto The Waking Shores/0 57.35,83.28
step
label "Slay_Proto_Dragons"
use the Ruby Spear##192436
|tip Use it on {o}Proto-Dragons{}.
|tip They look like {o}large dragons{} on the ground and flying in the air.
|tip They are {o}elite{}, but using the {o}spear{} on them makes them {o}easier to kill{}.
Slay #3# Proto-Dragons |q 66122/2 |goto The Waking Shores/0 55.59,81.86
'|clicknpc Rumbling Proto-Dragon##187212, Galestrike Proto-Dragon##187211
step
talk Majordomo Selistra##191895
turnin Proto-Fight##66122 |goto The Waking Shores/0 53.68,80.17
turnin Egg Evac##66121 |goto The Waking Shores/0 53.68,80.17
accept Cut Off the Head##66123 |goto The Waking Shores/0 53.68,80.17
step
use Ruby Spear##192436
|tip Use it on {o}Jadzigeth{}.
|tip He looks like a large {o}blue ice crystal dragon{}.
|tip He is {o}elite{}, but using the {o}spear{} on him makes him {o}easier to kill{}.
kill Jadzigeth##188447 |q 66123/1 |goto The Waking Shores/0 53.68,82.95
step
talk Majordomo Selistra##191895
turnin Cut Off the Head##66123 |goto The Waking Shores/0 53.68,80.17
accept Exeunt, Triumphant##66124 |goto The Waking Shores/0 53.68,80.17
step
Watch the dialogue
talk Majordomo Selistra##187278
|tip He flies to this location.
Select  _"<Check in with the majordomo.>"_ |gossip 107159
Speak to Majordomo Selistra at the Wild Hatchery |q 66124/1 |goto The Waking Shores/0 46.14,78.53
step
talk Majordomo Selistra##187278
turnin Exeunt, Triumphant##66124 |goto The Waking Shores/0 46.14,78.53
step
talk Alexstrasza the Life-Binder##187115
accept Wrathion Awaits##66079 |goto The Waking Shores/0 46.09,78.29
step
talk Art Raskins##192843
fpath Dragonscale Basecamp |goto The Waking Shores/0 47.91,83.32
step
talk Tallevia Mistsong##192484
fpath Life Vault Ruins |goto The Waking Shores/0 65.03,57.36
step
talk Pana##192472
fpath Uktulut Pier |goto The Waking Shores/0 45.84,27.47
step
Watch the dialogue
talk Wrathion##186274
turnin Wrathion Awaits##66079 |goto The Waking Shores/0 42.47,66.84
step
talk Scalecommander Emberthal##192795
accept Lessons from Our Past##72241 |goto The Waking Shores/0 42.47,66.78
step
talk Scalecommander Emberthal##192795
Select _"Tell me of the dracthyr's origins."_ |gossip 107399
Speak with Scalecommander Emberthal to Learn of Past Events |q 72241/1 |goto The Waking Shores/0 42.47,66.78
step
talk Scalecommander Emberthal##192795
turnin Lessons from Our Past##72241 |goto The Waking Shores/0 42.47,66.78
accept Best Plans and Intentions##66048 |goto The Waking Shores/0 42.47,66.78
step
talk Wrathion##186274
accept Sharp Practice##66078 |goto The Waking Shores/0 42.47,66.84
stickystart "Test_Blacktalon"
step
talk Do-Yeon Shadowrider##188444
fpath Obsidian Bulwark |goto The Waking Shores/0 42.26,66.25
step
talk Fao the Relentless##186331
Select _"Might we review the battle plans?"_ |gossip 55311
Click Here After Talking to Fao the Relentless |confirm |goto The Waking Shores/0 42.41,66.18 |q 66048
step
click Blacktalon Battle Plans##377111
|tip They look like {o}brown pieces of paper{} on a table.
|tip Inside the tent.
Consult Fao the Relentless |q 66048/1 |goto The Waking Shores/0 42.40,66.06
step
talk Forgemaster Bazentus##186493
|tip He walks around this area.
Select _"Tell me about the weapons in the Citadel."_ |gossip 55309
Select _"Thank you for the information."_ |gossip 55310
Consult Forgemaster Bazentus |q 66048/4 |goto The Waking Shores/0 42.83,66.85
step
talk Archivist Edress##187466
Select _"What has your research found?"_ |gossip 55307
Watch the dialogue
Consult Archivist Edres |q 66048/2 |goto The Waking Shores/0 43.76,67.28
step
talk Talonstalker Kavia##189507
|tip On the edge of the cliff, overlooking the valley below.
Select _"What have you observed?"_ |gossip 54996
Click Here After Talking to Talonstalker Kavia |confirm |goto The Waking Shores/0 42.30,69.29 |q 66048
step
click Scouting Scope##376824
Consult Talonstalker Kavia |q 66048/3 |goto The Waking Shores/0 42.22,69.32
step
label "Test_Blacktalon"
talk Blacktalon NPC+
Select _"I'm here to test your combat skills."_ |gossip 54628
|tip They will attack you.
|tip Defeat them to test them.
Test #8# Blacktalons |q 66078/1 |goto The Waking Shores/0 42.56,67.92
'|talk Blacktalon Assassin##187189, Blacktalon Avenger##187187
step
talk Wrathion##186274
turnin Best Plans and Intentions##66048 |goto The Waking Shores/0 42.47,66.84
turnin Sharp Practice##66078 |goto The Waking Shores/0 42.47,66.84
step
Watch the dialogue
talk Wrathion##186274
accept Talon Strike##65956 |goto The Waking Shores/0 42.47,66.84
accept No Time For Heroes##65957 |goto The Waking Shores/0 42.47,66.84
step
_NOTE:_
During the Next Steps
|tip Use the {o}Blacktalon Marker{} ability on enemies.
|tip It appears as a button on the screen.
|tip It will {o}stun the enemies{} and {o}summon allies{} to help you fight.
Click Here to Continue |confirm |q 65957
stickystart "Disrupt_The_Djaradin_Defenses"
step
kill Piercer Gigra##186511 |q 65957/1 |goto The Waking Shores/0 35.47,68.52
|tip On top of the building.
step
kill Olphis the Molten##181875 |q 65957/3 |goto The Waking Shores/0 34.81,66.87
|tip He looks like a large black and orange mammoth.
step
kill Modak Flamespit##186509 |q 65957/2 |goto The Waking Shores/0 35.69,60.74
|tip On top of the building.
step
label "Disrupt_The_Djaradin_Defenses"
Kill enemies around this area
click Siege Arbalest+
|tip They look like {o}large ballista machines{}.
click Djaradin Banner+
|tip They look like {o}banner poles, topped with dragon skulls and red banners{} hanging from them.
kill Molten Extracts##186716+
|tip They look like various large {o}brown pottery jars{}.
Disrupt the Djaradin Defenses |q 65956/1 |goto The Waking Shores/0 36.47,67.85
'|kill Qalashi Boltthrower##189557, Qalashi Ironskin##191524, Qalashi Boltthrower##189557, Qalashi Necksnapper##186109, Qalashi Steelcrafter##186483, Qalashi Crustshaper##186638, Qalashi Boltthrower##189557, Qalashi Skullhauler##186239
step
talk Wrathion##186681
turnin Talon Strike##65956 |goto The Waking Shores/0 33.99,61.29
turnin No Time For Heroes##65957 |goto The Waking Shores/0 33.99,61.29
accept The Courage of One's Convictions##65939 |goto The Waking Shores/0 33.99,61.29
step
talk Wrathion##186681
Select _"I am ready to begin the assault."_ |gossip 55405
Speak with Wrathion to Begin the Assault |q 65939/1 |goto The Waking Shores/0 33.99,61.29
step
Reach the Obsidian Citadel |complete subzone("Obsidian Citadel") |goto The Waking Shores/0 33.13,61.95 |q 65939
|tip On the bridge.
step
Enter the Obsidian Citadel |q 65939/2 |goto The Waking Shores/0 30.47,60.84
stickystart "Slay_Qalashi_Forces"
step
talk Wrathion##186933
|tip He flies to this location.
accept Taking the Walls##66044 |goto The Waking Shores/0 29.15,58.83
step
talk Wrathion##186933
Select _"I am ready to assist you."_ |gossip 54627
Assist Wrathion |q 66044/1 |goto The Waking Shores/0 29.15,58.83
step
Begin Flying with Wrathion |invehicle |goto The Waking Shores/0 29.15,58.83 |q 66044
step
Fly with Wrathion |outvehicle |goto The Waking Shores/0 27.15,58.09 |q 66044 |notravel
|tip He will drop you on top of the wall.
step
click Siege Arbalist
|tip It looks like a large ballista machine.
|tip On top of the wall.
Destroy the South Siege Arbalast |q 66044/2 |goto The Waking Shores/0 26.83,59.94
step
talk Wrathion##186935
|tip On top of the wall.
Meet Wrathion on the Wall |invehicle |goto The Waking Shores/0 26.77,61.20 |q 66044
step
Fly with Wrathion |outvehicle |goto The Waking Shores/0 29.63,62.37 |q 66044 |notravel
|tip He will drop you on top of the wall.
step
click Siege Arbalist
|tip It looks like a large ballista machine.
|tip On top of the wall.
Destroy the East Siege Arbalast |q 66044/3 |goto The Waking Shores/0 29.51,61.00
step
talk Wrathion##186935
|tip On top of the wall.
Meet Wrathion on the Wall |invehicle |goto The Waking Shores/0 29.05,61.82 |q 66044
step
Fly with Wrathion |outvehicle |goto The Waking Shores/0 27.72,55.55 |q 66044 |notravel
|tip He will drop you on the platform.
step
click Siege Arbalist
|tip It looks like a large ballista machine.
Destroy the North Siege Arbalast |q 66044/4 |goto The Waking Shores/0 27.76,56.54
step
kill Champion Choruk##186592 |q 66044/5 |goto The Waking Shores/0 26.92,57.14
|tip He walks around this area, riding a black and yellow mammoth.
step
label "Slay_Qalashi_Forces"
Kill enemies around this area
|tip You can find them all around the Obsidian Citadel area. |notinsticky
Slay #12# Qalashi Forces |q 65939/3 |goto The Waking Shores/0 26.59,57.97
'|kill Qalashi Necksnapper##186892, Qalashi Gatecrasher##186915, Djaradin Flametamer##195187, Qalashi Crustshaper##191597, Qalashi Flamelobber##189768, Qalashi Skullhauler##190116, Qalashi Boltthrower##190079, Qalashi Boltthrower##189734
step
talk Wrathion##196265
turnin The Courage of One's Convictions##65939 |goto The Waking Shores/0 26.43,58.77
turnin Taking the Walls##66044 |goto The Waking Shores/0 26.43,58.77
accept Obsidian Oathstone##66049 |goto The Waking Shores/0 26.43,58.77
step
talk Wrathion##187045
Select _"Is that the Oathstone?"_ |gossip 55423
Speak with Wrathion at the Oathstone |q 66049/1 |goto The Waking Shores/0 27.30,62.58
step
click Obsidian Oathstone##376917
|tip It looks like a large stone monument.
Examine the Oathstone |q 66049/2 |goto The Waking Shores/0 27.62,63.33
step
Watch the dialogue
talk Wrathion##187045
turnin Obsidian Oathstone##66049 |goto The Waking Shores/0 27.30,62.58
step
talk Forgemaster Bazentus##186493
accept A Shattered Past##66055 |goto The Waking Shores/0 27.25,62.79
stickystart "Collect_Oathstone_Fragments"
step
Enter the Vaults Beneath the Citadel |q 66055/1 |goto The Waking Shores/0 27.11,60.82
|tip Enter the building and run down the stairs.
step
label "Collect_Oathstone_Fragments"
click Oathstone Fragment+
|tip They look like {o}large pieces of the stone monument{}.
|tip Downstairs inside the building.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
collect 12 Oathstone Fragment##191131 |q 66055/2 |goto The Waking Shores/0 24.74,58.26
step
Run up the stairs and leave the building |goto The Waking Shores/0 27.16,60.87 < 15 |walk |only if subzone("Obsidian Citadel") and _G.IsIndoors()
talk Forgemaster Bazentus##186493
turnin A Shattered Past##66055 |goto The Waking Shores/0 27.25,62.80
accept Forging A New Future##66056 |goto The Waking Shores/0 27.25,62.80
step
click Earth-Warder's Forge##377013
Activate the Earth-Warder's Forge |q 66056/1 |goto The Waking Shores/0 24.63,60.88
step
kill Animated Cindershards##189875+
|tip They look like {o}rock elementals{}.
click Cindershard Coal##377012+
|tip They look like {o}piles of grey stones{}.
|tip An {o}enemy may spawn{} when you click them.
collect 6 Cindershard Coal##192548 |q 66056/2 |goto The Waking Shores/0 24.90,60.88
step
talk Forgemaster Bazentus##186493
turnin Forging A New Future##66056 |goto The Waking Shores/0 24.68,61.12
accept The Spark##66354 |goto The Waking Shores/0 24.68,61.12
step
click Oathstone Fragments##378433+
Place the Fragments on the Forge |q 66354/1 |goto The Waking Shores/0 24.56,60.90
step
Watch the dialogue
Repair the Fragments |q 66354/2 |goto The Waking Shores/0 24.56,60.90
step
click Reformed Oathstone Fragments##377026
Collect the Reformed Pieces |q 66354/3 |goto The Waking Shores/0 24.56,60.90
step
talk Forgemaster Bazentus##186493
turnin The Spark##66354 |goto The Waking Shores/0 24.68,61.12
accept Restoring the Faith##66057 |goto The Waking Shores/0 24.68,61.12
step
talk Wrathion##187045
Select _"You can now repair the Obsidian Oathstone."_ |gossip 56143
Speak with Wrathion |q 66057/1 |goto The Waking Shores/0 27.30,62.58
step
Watch the dialogue
clicknpc Wrathion##191669
Travel with Wrathion to the Throne |q 66057/2 |goto The Waking Shores/0 27.09,62.21
step
Begin Flying with Wrathion |invehicle |goto The Waking Shores/0 27.09,62.21 |q 66057
step
Fly with Wrathion |outvehicle |goto The Waking Shores/0 25.45,56.74 |q 66057 |notravel
|tip He will bring you to the upper platform.
step
Approach Wrathion and Sabellian |q 66057/3 |goto The Waking Shores/0 25.09,56.45
|tip On the upper platform.
step
talk Wrathion##187495
turnin Restoring the Faith##66057 |goto The Waking Shores/0 24.44,55.50
accept Claimant to the Throne##66780 |goto The Waking Shores/0 24.44,55.50
step
talk Sabellian##185894
accept Heir Apparent##66779 |goto The Waking Shores/0 24.25,55.87
step
talk Forgemaster Bazentus##193464
Select _"What can you tell me about Sabellian?"_ |gossip 55566
Speak with Bazentus |q 66779/2 |goto The Waking Shores/0 24.38,57.83
step
talk Baskilan##188158
Select _"What can you tell me about Sabellian?"_ |gossip 55358
Speak with Baskilian |q 66779/1 |goto The Waking Shores/0 24.31,58.90
step
talk Foehn Breezeskimmer##188336
fpath Obsidian Throne |goto The Waking Shores/0 25.27,56.83
step
talk Archivist Edress##193456
Select _"What can you tell me about Sabellian?"_ |gossip 55564
Speak with Archivist Edress |q 66779/3 |goto The Waking Shores/0 25.11,56.24
step
talk Archivist Edress##193456
Select _"What can you tell me about Wrathion?"_ |gossip 55565
Speak with Archivist Edress |q 66780/3 |goto The Waking Shores/0 25.11,56.24
step
talk Left##191710
Select _"What can you tell me about Wrathion?"_ |gossip 55355
Speak with Left and Right |q 66780/2 |goto The Waking Shores/0 25.01,55.19
step
talk Talonstalker Kavia##191600
|tip She walks around this area.
Select _"What can you tell me about Wrathion?"_ |gossip 55354
Speak with Talonstalker Kavia |q 66780/1 |goto The Waking Shores/0 26.35,54.45
step
talk Wrathion##187495
turnin Claimant to the Throne##66780 |goto The Waking Shores/0 24.43,55.49
step
talk Sabellian##185894
turnin Heir Apparent##66779 |goto The Waking Shores/0 24.24,55.88
accept Black Wagon Flight##65793 |goto The Waking Shores/0 24.24,55.88
step
talk Hjorik##192493
|tip On top of the mountain.
fpath Apex Observatory |goto The Waking Shores/0 23.79,83.14
step
talk Nulia##192494
|tip On the beach, next to the water.
fpath Uktulut Outpost |goto The Waking Shores/0 17.51,88.70
step
talk Sabellian##190937
Select _"Let's get moving."_ |gossip 55381
Speak with Sabellian to Begin Moving the Eggs |q 65793/2 |goto The Waking Shores/0 43.83,66.43
step
Watch the dialogue
|tip Follow the {o}wagon{} and {o}protect it{}.
|tip They eventually travel to this location.
Escort the Wagon |q 65793/3 |goto The Waking Shores/0 52.26,66.82 |notravel
'|clicknpc Sabellian##191640
step
talk Sabellian##190740
|tip Up on the platform.
turnin Black Wagon Flight##65793 |goto The Waking Shores/0 57.96,67.31
accept The Last Eggtender##66785 |goto The Waking Shores/0 57.96,67.31
step
talk Mother Elion##185904
turnin The Last Eggtender##66785 |goto The Waking Shores/0 61.60,68.71
accept Egg-cited for the Future##66788 |goto The Waking Shores/0 61.60,68.71
stickystart "Sweep_Fallen_Leaves"
stickystart "Pull_Overgrown_Weeds"
step
clicknpc Ruby Shrineguard##191126
Polish the Ruby Shrineguard |q 66788/3 |goto The Waking Shores/0 61.44,69.02
step
label "Sweep_Fallen_Leaves"
click Fallen Leaves##377230
|tip They look like {o}piles of red and brown leaves{}.
Sweep #2# Fallen Leaves |q 66788/1 |goto The Waking Shores/0 61.53,68.57
step
label "Pull_Overgrown_Weeds"
click Overgrown Weeds##377231
|tip They look like {o}green ferns{}.
|tip {o}After clicking{} them, {o}run away from them{} to pull them out of the ground.
Pull #3# Overgrown Weeds |q 66788/2 |goto The Waking Shores/0 61.53,68.57
step
talk Mother Elion##185904
turnin Egg-cited for the Future##66788 |goto The Waking Shores/0 61.60,68.71
accept Life-Binder on Duty##65791 |goto The Waking Shores/0 61.60,68.71
step
talk Alexstrasza the Life-Binder##185905
turnin Life-Binder on Duty##65791 |goto The Waking Shores/0 62.34,73.02
accept A Charge of Care##65794 |goto The Waking Shores/0 62.34,73.02
step
talk Alexstrasza the Life-Binder##185905
Select _"I am ready."_ |gossip 55380
Empower the Ruby Oathstone |q 65794/1 |goto The Waking Shores/0 62.34,73.02
step
talk Alexstrasza the Life-Binder##193377
turnin A Charge of Care##65794 |goto The Waking Shores/0 61.56,68.56
accept Next Steppes##65795 |goto The Waking Shores/0 61.56,68.56
step
talk Ambassador Taurasza##185878
turnin Next Steppes##65795 |goto The Waking Shores/0 48.27,88.67
step
|next "Leveling Guides\\Dragonflight (10-70)\\Story Campaigns\\Intro & The Waking Shores (Story Only)"	|only if completedq(72293)
|next "Leveling Guides\\Dragonflight (10-70)\\Story Campaigns\\Ohn'ahran Plains (Story Only)"		|only if not completedq(72293)
step
label "All_Scouting_Map_Quests_Complete"
_NOTE:_
You Finished All Main Storylines
|tip You have completed all of the main storylines in all of the zones in the Dragon Isles.
|tip This guide is finished, please choose another guide.
|tip You can load the Full Zone leveling guides to complete side quests.
Click Here to Continue |confirm
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Story Campaigns\\Ohn'ahran Plains (Story Only)",{
author="support@zygorguides.com",
},[[
step
talk Ambassador Taurasza##185878
turnin Ohn'ahran Plains##72267 |goto The Waking Shores/0 48.27,88.67 |only if haveq(72267) or completedq(72267)
accept Into the Plains##65779 |goto The Waking Shores/0 48.27,88.67
step
talk Scout Tomul##185882
turnin Into the Plains##65779 |goto Ohn'ahran Plains/0 77.72,23.94
accept Proving Oneself##65780 |goto Ohn'ahran Plains/0 77.72,23.94
step
kill Blazing Proto-Dragon##185883 |q 65780/1 |goto Ohn'ahran Plains/0 78.57,27.12
|tip He is {o}elite{}, but the {o}centaurs{} nearby will {o}help you{} fight.
step
talk Scout Tomul##185882
turnin Proving Oneself##65780 |goto Ohn'ahran Plains/0 78.63,25.39
accept Welcome at Our Fire##65783 |goto Ohn'ahran Plains/0 78.63,25.39
step
talk Scout Tomul##185882
turnin Welcome at Our Fire##65783 |goto Ohn'ahran Plains/0 85.32,25.42
accept The Shikaar##70174 |goto Ohn'ahran Plains/0 85.32,25.42
step
Watch the dialogue
talk Sansok Khan##181217
Select _"I need to speak to the leader of the green dragonflight."_ |gossip 56190
Speak to Sansok Khan |q 70174/1 |goto Ohn'ahran Plains/0 85.74,25.33
step
talk Sansok Khan##181217
turnin The Shikaar##70174 |goto Ohn'ahran Plains/0 85.74,25.33
accept Making Introductions##65801 |goto Ohn'ahran Plains/0 85.74,25.33
accept Supplies for the Journey##65802 |goto Ohn'ahran Plains/0 85.74,25.33
step
click Bundle of Pelts
|tip Inside the building.
Gather the Camp Provisions |q 65802/2 |goto Ohn'ahran Plains/0 86.17,25.31 |count 1
stickystart "Collect_Feralbloom_Pods"
step
talk Aru##186176
Select _"I am {_G.UnitName("player")}. I will be joining your clan for the Khural."_ |gossip 55270
Speak to Aru and Belika |q 65801/2 |goto Ohn'ahran Plains/0 85.76,26.60
step
click Basket of Dried Fish
Gather the Camp Provisions |q 65802/2 |goto Ohn'ahran Plains/0 84.31,27.18 |count 2
step
talk Beastmaster Nuqut##186183
Select _"I am {_G.UnitName("player")}. Will you be joining the caravan to the Khural?"_ |gossip 55228
Speak to Beastmaster Nuqut |q 65801/3 |goto Ohn'ahran Plains/0 83.92,25.87
step
click Crate of Horseshoes
Gather the Camp Provisions |q 65802/2 |goto Ohn'ahran Plains/0 84.34,24.91 |count 3
step
talk Flightmaster Baqir##184630
fpath Timberstep Outpost |goto Ohn'ahran Plains/0 85.28,24.10
step
label "Collect_Feralbloom_Pods"
click Medicinal Feralbloom##377122+
|tip They look like large round {o}orange flowers{} with tall {o}green stalks{}.
collect 5 Feralbloom Pod##192812 |q 65802/1 |goto Ohn'ahran Plains/0 84.95,25.16
step
click Weapon Rack
Gather the Camp Provisions |q 65802/2 |goto Ohn'ahran Plains/0 84.37,23.12 |count 4
step
talk Scout Tomul##185882
|tip Inside the building.
turnin Supplies for the Journey##65802 |goto Ohn'ahran Plains/0 84.69,22.81
step
talk Ohn Seshteng##184595
Select _"I am {_G.UnitName("player")}. I will be joining your clan for the Khural."_ |gossip 54838
Speak to Ohn Seshteng |q 65801/1 |goto Ohn'ahran Plains/0 85.63,20.85
step
talk Scout Tomul##185882
|tip Inside the building.
turnin Making Introductions##65801 |goto Ohn'ahran Plains/0 84.69,22.81
accept Toward the City##65803 |goto Ohn'ahran Plains/0 84.69,22.81
step
talk Scout Tomul##185882
Select _"I'm ready to go."_ |gossip 55267
Meet with the Caravan |q 65803/1 |goto Ohn'ahran Plains/0 83.15,23.74
step
Arrive at the First Stop |q 65803/3 |goto Ohn'ahran Plains/0 75.67,31.68
|tip You can {o}fly directly{} here, you {o}don't need to follow the caravan{}.
|tip If you do follow the caravan, however, they will tell you stories as they walk.
step
talk Scout Tomul##185882
turnin Toward the City##65803 |goto Ohn'ahran Plains/0 75.67,31.68
accept For Food and Rivalry##65804 |goto Ohn'ahran Plains/0 75.67,31.68
step
click Mysterious Paw Print
accept Mysterious Beast##70185 |goto Ohn'ahran Plains/0 76.74,31.89
step
talk Malakesh##196259
fpath Rusza'thar Reach |goto Ohn'ahran Plains/0 84.66,36.89
step
kill Konkhular##194544
|tip Inside the small cave.
collect Pelt of Konkhular##198517 |q 70185/1 |goto Ohn'ahran Plains/0 78.28,35.21
step
Kill enemies around this area
|tip They look like various animals.
collect 30 Fresh Game Meat##191100 |q 65804/1 |goto Ohn'ahran Plains/0 77.15,31.09
'|kill Sunhide Stomphoof##187960, Fleecepelt Argali##187975, Plainswalker Mammoth##187938, Plainswalker Calf##187939, Plainswalker Bull##187937
step
talk Scout Tomul##185882
turnin For Food and Rivalry##65804 |goto Ohn'ahran Plains/0 75.67,31.68
turnin Mysterious Beast##70185 |goto Ohn'ahran Plains/0 75.67,31.68
accept By Broken Road##65940 |goto Ohn'ahran Plains/0 75.67,31.68
step
Arrive at the Second Stop |q 65940/2 |goto Ohn'ahran Plains/0 69.96,37.97
|tip You can {o}fly directly{} here, you {o}don't need to follow the caravan{}.
|tip If you do follow the caravan, however, they will tell you stories as they walk.
step
talk Ohn Seshteng##184595
turnin By Broken Road##65940 |goto Ohn'ahran Plains/0 69.96,37.97
accept Connection to Ohn'ahra##65805 |goto Ohn'ahran Plains/0 69.96,37.97
stickystart "Collect_River_Reeds"
stickystart "Collect_Fowl_Tailfeathers"
step
kill Mudwalker Salamanther##190961+
|tip They look like large {o}yellow lizards with green fins{}.
collect Salamanther Heart##191103 |q 65805/3 |goto Ohn'ahran Plains/0 69.75,38.00
step
label "Collect_River_Reeds"
click River Reeds+
|tip They look like {o}brown and yellow plants{} near the edge of the water.
collect 4 River Reeds##191101 |q 65805/1 |goto Ohn'ahran Plains/0 69.75,38.00
step
label "Collect_Fowl_Tailfeathers"
click Jadethroat Mallard##190708+
|tip They look like {o}brown birds with green heads{}.
|tip They are on the ground, and flying in the air.
|tip They may attack you.
|tip You can also just {o}kill them{}, if you get no feathers by clicking them.
collect 8 Fowl Tailfeathers##191102 |q 65805/2 |goto Ohn'ahran Plains/0 69.75,38.00
step
talk Ohn Seshteng##184595
turnin Connection to Ohn'ahra##65805 |goto Ohn'ahran Plains/0 69.96,37.97
accept Omens on the Wind##66848 |goto Ohn'ahran Plains/0 69.96,37.97
step
talk Ohn Seshteng##184595
Select _"I am ready."_ |gossip 64063
Speak to Ohn Seshteng |q 66848/1 |goto Ohn'ahran Plains/0 69.96,37.97
step
click Ohn'ir Totem
Place the Totem |q 66848/2 |goto Ohn'ahran Plains/0 69.98,37.66 |count 1
step
click Ohn'ir Totem
Place the Totem |q 66848/2 |goto Ohn'ahran Plains/0 69.93,37.54 |count 2
step
click Ohn'ir Totem
Place the Totem |q 66848/2 |goto Ohn'ahran Plains/0 69.87,37.63 |count 3
step
Watch the dialogue
Complete the Ritual |q 66848/3 |goto Ohn'ahran Plains/0 69.87,37.63
step
talk Ohn Seshteng##184595
|tip She walks to this location.
turnin Omens on the Wind##66848 |goto Ohn'ahran Plains/0 69.97,37.97
step
talk Sansok Khan##181217
accept Maruukai##65806 |goto Ohn'ahran Plains/0 70.02,38.02
step
talk Flightmaster Salukan##191263
fpath Maruukai |goto Ohn'ahran Plains/0 62.96,42.13
step
Arrive in Maruukai |q 65806/2 |goto Ohn'ahran Plains/0 61.64,39.80
step
talk Sansok Khan##191283
turnin Maruukai##65806 |goto Ohn'ahran Plains/0 61.44,39.51
accept Clan Teerai##66016 |goto Ohn'ahran Plains/0 61.44,39.51
accept Clan Ohn'ir##66017 |goto Ohn'ahran Plains/0 61.44,39.51
accept Clan Nokhud##66018 |goto Ohn'ahran Plains/0 61.44,39.51
accept Orientation: Maruukai##72429 |goto Ohn'ahran Plains/0 61.44,39.51
step
Watch the dialogue
talk Scout Tomul##191485
|tip She walks to this location.
turnin Clan Nokhud##66018 |goto Ohn'ahran Plains/0 60.38,40.70
step
talk Guard Bahir##186940
accept Unwelcome Outsider##66021 |goto Ohn'ahran Plains/0 60.30,40.76
step
talk Nokhud NPCs
|tip They look like centaurs around this area.
Select _"Let's spar."_ |gossip 55277
|tip They will attack you.
|tip They will eventually surrender.
|tip You can also {o}attack them without talking{} to them.
Defeat #6# Nokhud Centaurs |q 66021/1 |goto Ohn'ahran Plains/0 59.30,42.02
'|talk Nokhud Fighter##187297, Nokhud Spearthrower##191570, Nokhud Brute##187299
step
talk Qariin Dotur##186941
turnin Clan Teerai##66016 |goto Ohn'ahran Plains/0 59.16,37.61
accept Honoring Our Ancestors##66019 |goto Ohn'ahran Plains/0 59.16,37.61
step
click Raw Game Meat
Gather the Raw Game Meat |q 66019/1 |goto Ohn'ahran Plains/0 59.39,37.81
step
click Raw Game Meat
Place the Raw Game Meat |q 66019/2 |goto Ohn'ahran Plains/0 59.13,37.57
step
click Jar of Spices
Gather the Jar of Spices |q 66019/3 |goto Ohn'ahran Plains/0 59.31,37.29
step
Apply the Jar of Spices |q 66019/4 |goto Ohn'ahran Plains/0 59.13,37.57
|tip Use the {o}Apply Jar of Spices{} ability.
|tip It appears as a button on the screen.
step
click Basket of Spices
Gather the Basket of Spices |q 66019/5 |goto Ohn'ahran Plains/0 59.39,37.36
step
Apply the Basket of Spices |q 66019/6 |goto Ohn'ahran Plains/0 59.13,37.57
|tip Use the {o}Apply Basket of Spices{} ability.
|tip It appears as a button on the screen.
step
click Pot of Spices
Gather the Pot of Spices |q 66019/7 |goto Ohn'ahran Plains/0 59.05,37.90
step
Apply the Pot of Spices |q 66019/8 |goto Ohn'ahran Plains/0 59.13,37.57
|tip Use the {o}Apply Cauldron of Spices{} ability.
|tip It appears as a button on the screen.
step
click Spiced Game Meat
Pick Up the Spiced Game Meat |q 66019/9 |goto Ohn'ahran Plains/0 59.12,37.57
step
Cook the Spiced Game Meat |q 66019/10 |goto Ohn'ahran Plains/0 58.89,37.28
|tip Use the {o}Roasting{} ability.
|tip It appears as a button on the screen.
step
click Spiced Game Meat
Place the Offering |q 66019/11 |goto Ohn'ahran Plains/0 59.16,37.10
step
talk Qariin Dotur##186941
turnin Honoring Our Ancestors##66019 |goto Ohn'ahran Plains/0 59.16,37.62
step
talk Quartermaster Huseng##196707
|tip Inside the building.
Meet the Renown Quartermaster |q 72429/2 |goto Ohn'ahran Plains/0 60.40,37.72
step
talk Agari Dotur##185179
|tip Inside the building.
Meet the Keeper of Renown |q 72429/1 |goto Ohn'ahran Plains/0 60.40,37.66
step
talk Agari Dotur##185179
|tip Inside the building.
turnin Orientation: Maruukai##72429 |goto Ohn'ahran Plains/0 60.40,37.66
step
talk Ohn Seshteng##191595
|tip Inside the building.
turnin Clan Ohn'ir##66017 |goto Ohn'ahran Plains/0 63.00,33.67
accept Omens and Incense##66020 |goto Ohn'ahran Plains/0 63.00,33.67
step
click Sweetsuckle+
|tip They look like {o}small pink and purple flowers{}.
collect Sweetsuckle Bloom##191160+ |n
use the Sweetsuckle Bloom##191160+
|tip You need {o}5 of them{} before you can use them.
collect Sweetsuckle Incense##198981 |q 66020/1 |goto Ohn'ahran Plains/0 62.93,35.18
step
click Incense Burner
|tip Inside the building.
Burn the Sweetsuckle Incense |q 66020/2 |goto Ohn'ahran Plains/0 62.83,33.72
step
talk Ohn Seshteng##191595
|tip Inside the building.
turnin Omens and Incense##66020 |goto Ohn'ahran Plains/0 63.00,33.66
step
talk Volebel##190049
fpath Emberwatch |goto Ohn'ahran Plains/0 66.78,25.17
step
talk Scout Tomul##191485
turnin Unwelcome Outsider##66021 |goto Ohn'ahran Plains/0 62.43,41.72
step
_Next to you:_
talk Aru##192724
accept Clans of the Plains##66969
step
talk Sansok Khan##191283
Report to Sansok Khan |q 66969/1 |goto Ohn'ahran Plains/0 61.44,39.51
step
talk Sansok Khan##191283
Select _"I am ready."_ |gossip 56528
Select _"Clan Teerai"_ |gossip 56515
Select _"Clan Ohn'ir"_ |gossip 56537
Select _"Clan Nokhud"_ |gossip 56549
Select _"Clan Shikaar"_ |gossip 56554
Answer #4# Questions Correctly |q 66969/2 |goto Ohn'ahran Plains/0 61.44,39.51
step
talk Sansok Khan##191283
turnin Clans of the Plains##66969 |goto Ohn'ahran Plains/0 61.44,39.51
step
Watch the dialogue
talk Gemisath##194927
|tip She walks to this location.
accept The Emissary's Arrival##66948 |goto Ohn'ahran Plains/0 61.03,40.44
step
talk Gemisath##194927
Select _"I am here to help restore the Green Oathstone."_ |gossip 56585
Offer Aid to the Green Dragonflight |q 66948/1 |goto Ohn'ahran Plains/0 61.03,40.44
step
talk Gemisath##194927
turnin The Emissary's Arrival##66948 |goto Ohn'ahran Plains/0 61.03,40.44
accept The Khanam Matra##66022 |goto Ohn'ahran Plains/0 61.03,40.44
step
talk Khansguard Akato##186942
|tip Outside, on top of the building.
Select _"I'm ready for my audience."_ |gossip 54895
Speak to Khansguard Akato |q 66022/1 |goto Ohn'ahran Plains/0 60.29,37.88
step
talk Khansguard Akato##186942
|tip Outside, on top of the building.
turnin The Khanam Matra##66022 |goto Ohn'ahran Plains/0 60.35,38.04
accept Trucebreakers##66023 |goto Ohn'ahran Plains/0 60.35,38.04
stickystart "Slay_Nokhud_Forces"
step
talk Scout Tomul##191485
accept Covering Their Tails##66024 |goto Ohn'ahran Plains/0 59.52,38.75
step
kill Guard Bahir##191843 |q 66024/1 |goto Ohn'ahran Plains/0 58.03,39.36
step
label "Slay_Nokhud_Forces"
Kill Nokhud enemies around this area
|tip They look like enemy centaurs.
Slay #10# Nokhud Forces |q 66023/1 |goto Ohn'ahran Plains/0 58.98,39.24
You can find more around [61.06,39.98]
'|kill Nokhud Reaver##187201, Nokhud Betrayer##187150, Nokhud Storm Adept##187149
step
talk Khansguard Akato##186942
|tip Outside, on top of the building.
turnin Trucebreakers##66023 |goto Ohn'ahran Plains/0 60.35,38.04
step
talk Khanam Matra Sarest##181198
|tip Outside, on top of the building.
turnin Covering Their Tails##66024 |goto Ohn'ahran Plains/0 60.32,38.07
accept The Nokhud Threat##66025 |goto Ohn'ahran Plains/0 60.32,38.07
step
Watch the dialogue
talk Khanam Matra Sarest##181198
|tip She walks to this location.
|tip Inside the building, on the top floor.
turnin The Nokhud Threat##66025 |goto Ohn'ahran Plains/0 60.00,37.47
accept Hooves of War##66201 |goto Ohn'ahran Plains/0 60.00,37.47
step
talk Flightmaster Washengtu##191814
fpath Broadhoof Outpost |goto Ohn'ahran Plains/0 46.57,41.29
step
talk Khansguard Jebotai##187787
|tip Inside the building.
turnin Hooves of War##66201 |goto Ohn'ahran Plains/0 41.89,61.80
accept The Calm Before the Storm##66222 |goto Ohn'ahran Plains/0 41.89,61.80
step
talk Flightmaster Carseng##192865
fpath Teerakai |goto Ohn'ahran Plains/0 39.98,61.13
step
talk Scout Khenyug##189594
|tip Inside the hut.
Select _"Clan Nokhud has declared war on all Maruuk."_ |gossip 55139
Speak to Scout Khenyug |q 66222/4 |goto Ohn'ahran Plains/0 37.57,59.45
step
talk Herbalist Agura##188337
Select _"War is coming. Jebotai asks you to prepare for casualties."_ |gossip 87457
Speak to Herbalist Agura |q 66222/1 |goto Ohn'ahran Plains/0 38.48,57.41
step
talk Khansguard Hojin##190585
|tip He walks around this area.
Select _"Balakar has declared war on the Khanam Matra. Jebotai wants you to ready the khansguard."_ |gossip 56252
Speak to Khansguard Hojin |q 66222/3 |goto Ohn'ahran Plains/0 39.50,55.35
step
talk Quartermaster Gensai##189593
|tip Inside the hut.
Select _"Clan Nokhud has declared war. Jebotai asks that you provide provisions."_ |gossip 54937
Speak to Quartermaster Gensai |q 66222/2 |goto Ohn'ahran Plains/0 40.72,56.35
step
talk Khansguard Jebotai##187787
|tip Inside the building.
turnin The Calm Before the Storm##66222 |goto Ohn'ahran Plains/0 41.89,61.79
accept Boku the Mystic##70229 |goto Ohn'ahran Plains/0 41.89,61.79
step
talk Initiate Boku##186290
|tip On top of the hill.
turnin Boku the Mystic##70229 |goto Ohn'ahran Plains/0 36.81,57.27
accept Pessimistic Mystic##66254 |goto Ohn'ahran Plains/0 36.81,57.27
step
click Empowerment Totem
Place the Empowerment Totem |q 66254/1 |goto Ohn'ahran Plains/0 36.71,57.13 |count 1
step
click Empowerment Totem
Place the Empowerment Totem |q 66254/1 |goto Ohn'ahran Plains/0 36.66,57.71 |count 2
step
click Empowerment Totem
Place the Empowerment Totem |q 66254/1 |goto Ohn'ahran Plains/0 37.10,57.82 |count 3
step
click Empowerment Totem
Place the Empowerment Totem |q 66254/1 |goto Ohn'ahran Plains/0 37.20,57.26 |count 4
step
talk Initiate Boku##186290
turnin Pessimistic Mystic##66254 |goto Ohn'ahran Plains/0 36.81,57.27
accept Mystic Mystery##66224 |goto Ohn'ahran Plains/0 36.81,57.27
step
Meet Boku Outside Teerakai |q 66224/1 |goto Ohn'ahran Plains/0 44.56,61.96
step
click Boku's Belongings
Select  _"<Collect Boku's belongings.>"_ |gossip 56253
Collect Boku's Belongings |q 66224/2 |goto Ohn'ahran Plains/0 44.56,61.96
step
Search for Boku |q 66224/3 |goto Ohn'ahran Plains/0 46.52,63.25
step
clicknpc Unidentified Centaur##190486
Select  _"<Take the object.>"_ |gossip 55390
|tip You will be attacked.
Investigate the Unidentified Centaur |q 66224/4 |goto Ohn'ahran Plains/0 46.52,63.25
step
Continue Searching for Boku |q 66224/5 |goto Ohn'ahran Plains/0 49.31,63.22
step
talk Initiate Boku##187795
turnin Mystic Mystery##66224 |goto Ohn'ahran Plains/0 49.31,63.22
step
talk Tigari Khan##195316
accept Toting Totems##66225 |goto Ohn'ahran Plains/0 49.36,63.13
accept Taken By Storm##70195 |goto Ohn'ahran Plains/0 49.36,63.13
stickystart "Collect_Bundles_Of_Totems"
step
kill Shela the Windbinder##194884
Free Altan |q 70195/1 |goto Ohn'ahran Plains/0 48.90,69.04
collect Ridgewater Retreat Orders##198698 |q 70195/2 |goto Ohn'ahran Plains/0 48.90,69.04
step
label "Collect_Bundles_Of_Totems"
Kill Nokhud enemies around this area
collect 8 Bundle of Totems##193051 |q 66225/1 |goto Ohn'ahran Plains/0 49.94,67.40
'|kill Nokhud Mystic-Hunter##186295, Nokhud Marauder##186299, Nokhud Mystic-Hunter##190958
step
talk Tigari Khan##190648
turnin Toting Totems##66225 |goto Ohn'ahran Plains/0 49.36,63.12
turnin Taken By Storm##70195 |goto Ohn'ahran Plains/0 49.36,63.12
accept Catching Wind##66236 |goto Ohn'ahran Plains/0 49.36,63.12
step
talk Initiate Boku##187804
turnin Catching Wind##66236 |goto Ohn'ahran Plains/0 58.11,68.97
accept Weather Control##66242 |goto Ohn'ahran Plains/0 58.11,68.97
accept Eagle-itarian##66256 |goto Ohn'ahran Plains/0 58.11,68.97
accept Fowl Sorcery##66257 |goto Ohn'ahran Plains/0 58.11,68.97
stickystart "Slay_Primalists"
stickystart "Kill_Stormcaller_Initiates"
stickystart "Kill_Stormbound_Essences"
step
click Ohuna Binding Totem
Free the Child of Ohn'ahra |q 66256/1 |goto Ohn'ahran Plains/0 58.51,69.02 |count 1
step
click Ohuna Binding Totem
Free the Child of Ohn'ahra |q 66256/1 |goto Ohn'ahran Plains/0 58.06,67.43 |count 2
step
click Boku's Wind Totem
Destroy the Wagon |q 66257/1 |goto Ohn'ahran Plains/0 58.17,67.35 |count 1
step
click Ohuna Binding Totem
Free the Child of Ohn'ahra |q 66256/1 |goto Ohn'ahran Plains/0 57.86,64.89 |count 3
step
click Ohuna Binding Totem
Free the Child of Ohn'ahra |q 66256/1 |goto Ohn'ahran Plains/0 58.66,64.09 |count 4
step
click Boku's Wind Totem
Destroy the Wagon |q 66257/1 |goto Ohn'ahran Plains/0 58.86,61.83 |count 2
step
click Ohuna Binding Totem
Free the Child of Ohn'ahra |q 66256/1 |goto Ohn'ahran Plains/0 58.78,61.73 |count 5
step
click Ohuna Binding Totem
Free the Child of Ohn'ahra |q 66256/1 |goto Ohn'ahran Plains/0 59.65,64.03 |count 6
step
click Boku's Wind Totem
Destroy the Wagon |q 66257/1 |goto Ohn'ahran Plains/0 59.22,65.52 |count 3
step
click Boku's Wind Totem
Destroy the Wagon |q 66257/1 |goto Ohn'ahran Plains/0 61.77,66.66 |count 4
step
label "Slay_Primalists"
Kill Pimalist enemies around this area
|tip They look like various races of {o}humanoids{}.
Slay #6# Primalists |q 66256/2 |goto Ohn'ahran Plains/0 59.81,66.03
'|kill Primalist Instructor##195742, Primalist Stormsmith##187916, Prozela Galeshot##193669
step
label "Kill_Stormcaller_Initiates"
kill 6 Stormcaller Initiate##187817 |q 66242/2 |goto Ohn'ahran Plains/0 59.35,66.22
|tip They look like {o}centaurs with wind elementals{}.
step
label "Kill_Stormbound_Essences"
kill 8 Stormbound Essence##187819 |q 66242/1 |goto Ohn'ahran Plains/0 59.35,66.22
|tip They look like {o}wind elementals{}.
step
talk Initiate Boku##187809
|tip On top of the mountain.
turnin Weather Control##66242 |goto Ohn'ahran Plains/0 60.66,63.54
turnin Eagle-itarian##66256 |goto Ohn'ahran Plains/0 60.66,63.54
turnin Fowl Sorcery##66257 |goto Ohn'ahran Plains/0 60.66,63.54
accept Oh No, Ohn'ahra!##66258 |goto Ohn'ahran Plains/0 60.66,63.54
step
Watch the dialogue
|tip Follow {o}Boku{} and {o}protect him{} as he fights enemies.
Kill enemies around this area
Protect Boku from Enemies |q 66258/1 |goto Ohn'ahran Plains/0 60.42,64.73
Free Ohn'ahra |q 66258/2 |goto Ohn'ahran Plains/0 60.42,64.73
'|kill Agitated Essence##192238, Agitated Initiate##195674, Alerted Stormsmith##192236, Alerted Goliath##192237
step
talk Initiate Boku##195024
turnin Oh No, Ohn'ahra!##66258 |goto Ohn'ahran Plains/0 61.42,62.78
accept A Storm of Ill Tidings##66259 |goto Ohn'ahran Plains/0 61.42,62.78
step
talk Flightmaster Huraq##195235
fpath Ohn'iri Springs |goto Ohn'ahran Plains/0 56.68,76.59
step
talk Khanam Matra Sarest##181198
|tip Inside the building, on the top floor.
Select _"The Primalists have captured Ohn'ahra and have allied with Clan Nokhud."_ |gossip 56420
Speak to the Khanam Matra at Maruukai |q 66259/1 |goto Ohn'ahran Plains/0 60.00,37.47
step
talk Khanam Matra Sarest##181198
|tip Inside the building, on the top floor.
turnin A Storm of Ill Tidings##66259 |goto Ohn'ahran Plains/0 60.00,37.47
accept Chasing the Wind##66327 |goto Ohn'ahran Plains/0 60.00,37.47
step
Watch the dialogue
|tip Inside the building, on the top floor.
Hear the Report |q 66327/1 |goto Ohn'ahran Plains/0 60.00,37.47
step
talk Khanam Matra Sarest##181198
|tip Inside the building, on the top floor.
Select _"I understand."_ |gossip 56419
Talk to Khanam Matra Sarest |q 66327/2 |goto Ohn'ahran Plains/0 60.00,37.47
step
Meet Khanam Matra Sarest Outside the Horn of Drusahl |q 66327/4 |goto Ohn'ahran Plains/0 73.03,40.59
step
talk Khanam Matra Sarest##188068
turnin Chasing the Wind##66327 |goto Ohn'ahran Plains/0 73.03,40.59
accept Nokhud Can Come of This##70244 |goto Ohn'ahran Plains/0 73.03,40.59
step
Kill enemies around this area
clicknpc Teerai Survivor##191097+
|tip They look like {o}centuars laying on the ground{}.
Retake the Village from the Nokhud |q 70244/1 |goto Ohn'ahran Plains/0 75.33,40.90
'|kill Primalist Stormfury##190945, Nokhud Warhound##190962, Nokhud Stormlasher##188231, Nokhud Raider##188230, Nokhud Scavenger##185445, Primalist Tempest##190946
step
kill Warmonger Kharad##190932 |q 70244/2 |goto Ohn'ahran Plains/0 76.14,40.87
|tip He is {o}elite{}.
|tip Your {o}allies will help{} you fight.
step
talk Khanam Matra Sarest##191494
turnin Nokhud Can Come of This##70244 |goto Ohn'ahran Plains/0 76.70,40.93
accept Blowing of the Horn##66329 |goto Ohn'ahran Plains/0 76.70,40.93
step
talk Khanam Matra Sarest##188068
Select _"I am ready!"_ |gossip 54892
Talk to Khanam Matra Sarest |q 66329/1 |goto Ohn'ahran Plains/0 76.70,40.93
step
talk Khanam Matra Sarest##188068
turnin Blowing of the Horn##66329 |goto Ohn'ahran Plains/0 76.70,40.93
accept Green Dragon Down##66328 |goto Ohn'ahran Plains/0 76.70,40.93
step
Find the Green Dragons |q 66328/1 |goto Ohn'ahran Plains/0 72.35,50.33
step
talk Khanam Matra Sarest##188068
Select _"Let's explain ourselves."_ |gossip 56207
Speak to the Khanam Matra |q 66328/2 |goto Ohn'ahran Plains/0 72.35,50.33
step
Watch the dialogue
Listen to the Discussion |q 66328/3 |goto Ohn'ahran Plains/0 72.35,50.33
step
talk Khanam Matra Sarest##188068
turnin Green Dragon Down##66328 |goto Ohn'ahran Plains/0 72.35,50.33
step
talk Flightmaster Nakeena##191622
|tip Up on the cliff.
fpath Pinewood Post |goto Ohn'ahran Plains/0 80.43,57.89
step
talk Merithra##188156
accept With the Wind At Our Backs##66344 |goto Ohn'ahran Plains/0 72.46,50.79
step
talk Gerithus##189697
Select _"I'm ready to go."_ |gossip 54859
Fly with Gerithus |q 66344/1 |goto Ohn'ahran Plains/0 72.30,50.72
step
Begin Flying to Shady Sanctuary |invehicle |goto Ohn'ahran Plains/0 72.30,50.72 |q 66344
step
Watch the dialogue
Fly to Shady Sanctuary |outvehicle |goto Ohn'ahran Plains/0 28.62,58.21 |q 66344 |notravel
step
talk Merithra##188106
turnin With the Wind At Our Backs##66344 |goto Ohn'ahran Plains/0 28.26,57.69
accept Shady Sanctuary##70220 |goto Ohn'ahran Plains/0 28.26,57.69
step
talk Guard-Captain Alowen##194899
Select _"The Primalists are on the move. Merithra calls the flight to battle!"_ |gossip 56367
Speak to Guard-Captain Alowen |q 70220/1 |goto Ohn'ahran Plains/0 29.06,55.26
step
talk Sidra the Mender##194902
Select _"You are needed at the front."_ |gossip 56204
Speak to Isidra the Mender |q 70220/3 |goto Ohn'ahran Plains/0 30.19,55.68
step
talk Aronus##188972
Speak to Aronus to Visit Merithra's Watch |q 70220/4 |goto Ohn'ahran Plains/0 29.28,56.43
step
talk Aronus##188972
Select _"Take me up to Merithra's Watch."_ |gossip 56101
Fly with Aronus |invehicle |goto Ohn'ahran Plains/0 29.28,56.43 |q 70220
step
Fly to Merithra's Watch |outvehicle |goto Ohn'ahran Plains/0 29.51,60.34 |q 70220 |notravel
step
talk Viranikus##194903
|tip On the platform, overlooking the valley.
Select _"The centaur clans have declared their support. Rally your troops!"_ |gossip 56205
Speak to Viranikus |q 70220/5 |goto Ohn'ahran Plains/0 30.03,60.25
step
talk Sariosa##186487
fpath Shady Sanctuary |goto Ohn'ahran Plains/0 29.82,57.64
step
talk Sariosa##186487
Select _"The Ancient Bough is in danger! Please help deliver the message."_ |gossip 56235
Speak to Sariosa |q 70220/2 |goto Ohn'ahran Plains/0 29.82,57.64
step
talk Merithra##188106
turnin Shady Sanctuary##70220 |goto Ohn'ahran Plains/0 28.26,57.69
accept The Primalist Front##66331 |goto Ohn'ahran Plains/0 28.26,57.69
step
talk Belika##186175
Select _"Merithra sent me to hear your report."_ |gossip 55238
Hear Aru and Belika's Report |q 66331/3 |goto Ohn'ahran Plains/0 27.56,46.00
step
talk Boku##191325
Select _"I'm here to hear your report."_ |gossip 55239
Hear Boku's Report |q 66331/2 |goto Ohn'ahran Plains/0 25.72,44.26
step
talk Ohn Seshteng##191343
Select _"Sounds like a breeze. I'm ready!"_ |gossip 55240
Watch the dialogue
|tip You will fly as a bird.
|tip You can {o}click the arrow button{} to {o}leave the vehicle{} after you start flying.
|tip The {o}goal will complete{} without you having to listen to the story.
Hear Ohn Seshteng's Report |q 66331/4 |goto Ohn'ahran Plains/0 26.18,40.07
step
talk Merithra##189599
Select _"Show me what you see."_ |gossip 55241
Speak to Merithra |q 66331/5 |goto Ohn'ahran Plains/0 25.63,40.51
step
talk Khanam Matra Sarest##188601
turnin The Primalist Front##66331 |goto Ohn'ahran Plains/0 25.67,40.43
step
talk Merithra##189599
accept Justice for Solethus##66333 |goto Ohn'ahran Plains/0 25.63,40.51
stickystart "Kill_Nokhud_Warmongers"
step
click Dragon-Killer Ballista
Destroy the Dragon-Killer Ballista |q 66333/2 |goto Ohn'ahran Plains/0 24.81,39.89 |count 1
step
click Dragon-Killer Ballista
Destroy the Dragon-Killer Ballista |q 66333/2 |goto Ohn'ahran Plains/0 24.37,38.47 |count 2
step
click Dragon-Killer Ballista
Destroy the Dragon-Killer Ballista |q 66333/2 |goto Ohn'ahran Plains/0 25.44,37.72 |count 3
step
label "Kill_Nokhud_Warmongers"
kill 3 Nokhud Warmonger##188341 |q 66333/1 |goto Ohn'ahran Plains/0 24.49,37.45
|tip They look like {o}large centaurs carrying polearms{}.
step
_Next to you:_
talk Khanam Matra Sarest
turnin Justice for Solethus##66333
accept Deconstruct Additional Pylons##66335
accept Starve the Storm##66784
'|talk Khanam Matra Sarest##191494
step
kill Primalist Storm-Summoner##191259+
|tip There are {o}3 of them{}.
|tip Inside the open cavern.
Deactivate the Storm Corridor |q 66784/1 |goto Ohn'ahran Plains/0 24.94,34.90
step
_Next to you:_
talk Khanam Matra Sarest
turnin Starve the Storm##66784
'|talk Khanam Matra Sarest##191494
step
Mark the Second Primalist Pylon |q 66335/2 |goto Ohn'ahran Plains/0 23.20,37.45
|tip Use the {o}Call Merithra{} ability.
|tip It appears as a button on the screen.
step
Mark the Third Primalist Pylon |q 66335/3 |goto Ohn'ahran Plains/0 21.44,37.58
|tip Use the {o}Call Merithra{} ability.
|tip It appears as a button on the screen.
step
Mark the First Primalist Pylon |q 66335/1 |goto Ohn'ahran Plains/0 23.91,39.38
|tip Use the {o}Call Merithra{} ability.
|tip It appears as a button on the screen.
step
_Next to you:_
talk Khanam Matra Sarest
turnin Deconstruct Additional Pylons##66335
accept Stormbreaker##66337
'|talk Khanam Matra Sarest##191494
step
kill Stormbound Proto-Drake##195094
|tip Your allies will help you fight.
|tip {o}Koroleth appears{} when the drake is at about {o}35% health{}, and kill it.
|tip After the drake dies, she will attack you.
kill Koroleth##188180 |q 66337/1 |goto Ohn'ahran Plains/0 22.38,39.80
step
talk Gerithus##195136
Select _"Take me to Merithra."_ |gossip 63840
Speak to Gerithus |q 66337/2 |goto Ohn'ahran Plains/0 22.92,40.20
step
Watch the dialogue
Return to Merithra |outvehicle |goto Ohn'ahran Plains/0 25.66,47.84 |q 66337 |notravel
step
talk Merithra##188150
turnin Stormbreaker##66337 |goto Ohn'ahran Plains/0 25.65,48.40
accept The Isle of Emerald##66336 |goto Ohn'ahran Plains/0 25.65,48.40
step
talk Merithra##188181
turnin The Isle of Emerald##66336 |goto Ohn'ahran Plains/0 22.14,50.98
accept Renewal of Vows##66783 |goto Ohn'ahran Plains/0 22.14,50.98
step
talk Sansok Khan##188246
Select  _"<Suggest a trophy from her first hunt.>"_ |gossip 54952
clicknpc Shikaar Spear##191195
|tip It appears in her hand.
Take the Spear |havebuff Sansok's Offering##375466 |goto Ohn'ahran Plains/0 22.28,50.88 |q 66783
step
talk Merithra##188181
Select _"Here is the weapon Sansok Khan earned after her first hunt."_ |gossip 56430
Accept Sansok Khan's Offering |q 66783/1 |goto Ohn'ahran Plains/0 22.14,50.97
step
talk Tigari Khan##191156
Select  _"<Suggest she offer an eagle feather.>"_ |gossip 54951
clicknpc Ohuna Feather##191209
|tip It appears in her hand.
Take the Feather |havebuff Tigari's Offering##375472 |goto Ohn'ahran Plains/0 22.37,51.05 |q 66783
step
talk Merithra##188181
Select _"Here is a feather from Ohn'ahra, lifted upon the wind."_ |gossip 56431
Accept Tigari Khan's Offering |q 66783/2 |goto Ohn'ahran Plains/0 22.14,50.98
step
talk Khanam Matra Sarest##188601
Select  _"<Suggest she offer blood.>"_ |gossip 54948
clicknpc Horn of the Khanam Matra##191208
|tip It appears in her hand.
Take the Horn |havebuff Khanam Matra's Offering##375470 |goto Ohn'ahran Plains/0 22.34,50.95 |q 66783
step
talk Merithra##188181
Select _"Here is proof of the unbroken lineage of Clan Teerai, direct descendants of the centaur Teera."_ |gossip 56432
Accept Khanam Matra's Offering |q 66783/3 |goto Ohn'ahran Plains/0 22.14,50.98
step
clicknpc Everblooming Soil##197601
|tip It appears in Merithra's hands.
Take the Soil |havebuff Merithra's Offering##391289 |goto Ohn'ahran Plains/0 22.15,50.98 |q 66783
step
talk Khanam Matra Sarest##188601
Select _"Please accept Merithra's gift to the centaur clans."_ |gossip 63841
Give Merithra's Offering |q 66783/4 |goto Ohn'ahran Plains/0 22.34,50.95
step
talk Merithra##188181
turnin Renewal of Vows##66783 |goto Ohn'ahran Plains/0 22.14,50.98
accept Into the Azure##66340 |goto Ohn'ahran Plains/0 22.14,50.98
step
talk Flightmaster Rynaam##192838
fpath Forkriver Crossing |goto Ohn'ahran Plains/0 71.65,79.07
step
|next "Leveling Guides\\Dragonflight (10-70)\\Story Campaigns\\Intro & The Waking Shores (Story Only)"	|only if completedq(72293)
|next "Leveling Guides\\Dragonflight (10-70)\\Story Campaigns\\The Azure Span (Story Only)"		|only if not completedq(72293)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Story Campaigns\\The Azure Span (Story Only)",{
author="support@zygorguides.com",
},[[
step
talk Masud the Wise##185599
turnin Into the Azure##66340 |goto Ohn'ahran Plains/0 71.66,80.58 |only if haveq(66340) or completedq(66340)
turnin Azure Span##72268 |goto Ohn'ahran Plains/0 71.66,80.58 |only if haveq(72268) or completedq(72268)
accept To the Azure Span##65686 |goto Ohn'ahran Plains/0 71.66,80.58
step
talk Glania of the Blessed Ones##185603
turnin To the Azure Span##65686 |goto The Azure Span/0 41.44,35.61
accept Camp Antonidas##66228 |goto The Azure Span/0 41.44,35.61 |only if not Dracthyr
step
talk Scalecommander Emberthal##197023
accept Shades of Blue##70746 |goto The Azure Span/0 41.45,35.90
|only if Dracthyr
step
Meet Emberthal and Telash Outside of Camp Antonidas |q 70746/1 |goto The Azure Span/0 45.60,41.29
|only if Dracthyr
step
talk Scalecommander Emberthal##197023
turnin Shades of Blue##70746 |goto The Azure Span/0 45.61,41.25
|only if Dracthyr
step
Watch the dialogue
talk Telash Greywing##197025
accept The Azure Wizard##70747 |goto The Azure Span/0 45.65,41.27
|only if Dracthyr
step
talk Archmage Khadgar##192091
Select _"Do you serve the blue dragonflight?"_
Talk to Khadgar |q 70747/1 |goto The Azure Span/0 46.64,40.19
|only if Dracthyr
step
talk Archmage Khadgar##192091
turnin The Azure Wizard##70747 |goto The Azure Span/0 46.64,40.19
|only if Dracthyr
step
talk Noriko the All-Remembering##183543
turnin Camp Antonidas##66228 |goto The Azure Span/0 46.64,40.16
|only if not Dracthyr
step
talk Noriko the All-Remembering##183543
accept Assemble the Defenses##67033 |goto The Azure Span/0 46.69,39.77
step
talk Althanus##192222
accept Preservation of Knowledge##67035 |goto The Azure Span/0 46.67,39.73
step
talk Steward Argalos##189116
fpath Camp Antonidas |goto The Azure Span/0 46.71,39.56
step
click Broken Arcane Device
collect Broken Arcane Device##194512 |q 67033/1 |goto The Azure Span/0 46.14,39.34 |count 1
step
click Discarded Book
|tip It looks like an {o}open book{}.
Retrieve the Collection of Tomes |q 67035/1 |goto The Azure Span/0 46.12,39.22 |count 1
step
click Discarded Book
|tip It looks like an {o}open book{}.
|tip Inside the building.
Retrieve the Collection of Tomes |q 67035/1 |goto The Azure Span/0 46.11,38.51 |count 2
step
click Discarded Book
|tip It looks like an {o}open book{}.
|tip Inside the building.
Retrieve the Collection of Tomes |q 67035/1 |goto The Azure Span/0 46.00,38.37 |count 3
step
click Discarded Book
|tip It looks like an {o}open book{}.
|tip Inside the building.
Retrieve the Collection of Tomes |q 67035/1 |goto The Azure Span/0 45.87,38.45 |count 4
step
click Broken Arcane Device
collect Broken Arcane Device##194512 |q 67033/1 |goto The Azure Span/0 45.86,40.17 |count 2
step
click Broken Arcane Device
|tip Inside the crumbled building.
collect Broken Arcane Device##194512 |q 67033/1 |goto The Azure Span/0 46.06,40.81 |count 3
step
talk Althanus##192222
turnin Preservation of Knowledge##67035 |goto The Azure Span/0 46.67,39.74
step
talk Noriko the All-Remembering##183543
turnin Assemble the Defenses##67033 |goto The Azure Span/0 46.69,39.77
accept Wrath of the Kirin Tor##67036 |goto The Azure Span/0 46.69,39.77
step
click Arcane Blaster
Control the Arcane Blaster |invehicle |goto The Azure Span/0 46.31,38.85 |q 67036
step
kill Proto-Drake##197693+
|tip They look like {o}dragons{} flying in the air nearby to the {o}east{}.
|tip Use the ability on your action bar.
Watch the dialogue
Repel the Primalist Army |q 67036/1 |goto The Azure Span/0 46.31,38.85
step
talk Noriko the All-Remembering##183543
turnin Wrath of the Kirin Tor##67036 |goto The Azure Span/0 46.64,40.16
step
talk Archmage Khadgar##192091
|tip He runs to this location.
accept Meeting Kalecgos##65688 |goto The Azure Span/0 46.64,40.19
step
clicknpc Supply Portal##188915
Select _"Khadgar said you have something that could help me aid Kalecgos."_ |gossip 55328
Watch the dialogue
Request a Bag of Helpful Goods |q 65688/1 |goto The Azure Span/0 45.99,38.79
step
click Bag of Helpful Goods
Recover the Bag of Helpful Goods |q 65688/2 |goto The Azure Span/0 45.95,38.89
step
talk Kalecgos##185615
|tip Inside the building.
turnin Meeting Kalecgos##65688 |goto The Azure Span/0 40.92,55.00
accept The Many Images of Kalecgos##65689 |goto The Azure Span/0 40.92,55.00
step
click Crystal Pylon
|tip You will fly up to the platform nearby.
Use the Crystal Pylon |q 65689/1 |goto The Azure Span/0 41.15,55.41
step
Reach the Azure Archives |q 65689/2 |goto The Azure Span/0 41.16,57.81
step
talk Kalecgos##185622
turnin The Many Images of Kalecgos##65689 |goto The Azure Span/0 40.74,59.04
accept Driven Mad##65702 |goto The Azure Span/0 40.74,59.04
step
talk Kalecgos##185623
accept Arcane Pruning##65709 |goto The Azure Span/0 40.69,59.10
step
use the Bag of Helpful Goods##191953
collect Ley Scepter##191952 |q 65709/1
stickystart "Collect_Unstable_Arcane"
step
use the Ley Scepter##191952
Repair the North Arcane Field |q 65709/2 |goto The Azure Span/0 39.58,60.27
step
use the Ley Scepter##191952
Repair the East Arcane Field |q 65709/3 |goto The Azure Span/0 41.19,62.27
step
label "Collect_Unstable_Arcane"
Kill enemies around this area
collect 40 Unstable Arcana##190769 |q 65702/1 |goto The Azure Span/0 40.33,61.03
'|kill Destabilized Elemental##181536, Uncontrolled Guardian##181775
step
talk Kalecgos##185623
turnin Arcane Pruning##65709 |goto The Azure Span/0 40.69,59.10
step
talk Kalecgos##185622
turnin Driven Mad##65702 |goto The Azure Span/0 40.74,59.04
accept Straight to the Top##65852 |goto The Azure Span/0 40.74,59.04
step
use Bag of Helpful Goods##191978
collect Arcane Stepping Stone##191979 |q 65852/1 |goto The Azure Span/0 39.58,60.27
step
Reach the Azure Archives Apex |q 65852/2 |goto The Azure Span/0 39.58,60.27
|tip Use the {o}Arcane Stepping Stone{} ability.
|tip It appears as a button on the screen.
|tip You will fly to the top of the floating platforms nearby.
step
talk Kalecgos##186184
|tip On the highest floating platform.
turnin Straight to the Top##65852 |goto The Azure Span/0 39.97,61.46
accept Platform Adjustments##65751 |goto The Azure Span/0 39.97,61.46
accept Arcane Annoyances##65752 |goto The Azure Span/0 39.97,61.46
stickystart "Kill_Feasting_Wyrms"
step
click Unstable Arcane Energy
|tip It looks like a {o}portal{} spewing arcane energy.
|tip On the highest floating platform.
Dispel the Unstable Arcane Energy |q 65751/1 |goto The Azure Span/0 39.51,61.51 |count 1
step
click Unstable Arcane Energy
|tip It looks like a {o}portal{} spewing arcane energy.
|tip On the highest floating platform.
Dispel the Unstable Arcane Energy |q 65751/1 |goto The Azure Span/0 39.58,62.71 |count 2
step
click Unstable Arcane Energy
|tip It looks like a {o}portal{} spewing arcane energy.
|tip On the highest floating platform.
Dispel the Unstable Arcane Energy |q 65751/1 |goto The Azure Span/0 40.23,62.03 |count 3
step
label "Kill_Feasting_Wyrms"
use the Arcane Hook##194891
|tip Use it on {o}Feasting Wyrms{}.
|tip They look like flying {o}purple dragons{} with no arms or legs around this area.
|tip On the highest floating platform. |notinsticky
kill 6 Feasting Wyrm##192739 |q 65752/1 |goto The Azure Span/0 39.90,61.69
step
talk Kalecgos##186184
|tip On the highest floating platform.
turnin Platform Adjustments##65751 |goto The Azure Span/0 39.97,61.46
turnin Arcane Annoyances##65752 |goto The Azure Span/0 39.97,61.46
accept Reclaiming the Oathstone##65854 |goto The Azure Span/0 39.97,61.46
step
talk Kalecgos##186187
|tip On the ground.
Select _"I'm ready to see you reclaim the Azure Oathstone."_ |gossip 54821
Reclaim the Oathstone |q 65854/1 |goto The Azure Span/0 39.44,63.18
step
talk Sindragosa##186188
turnin Reclaiming the Oathstone##65854 |goto The Azure Span/0 39.48,63.07
accept Aiding Azure Span##65855 |goto The Azure Span/0 39.48,63.07
step
talk Arc Tel XVII##189459
fpath Azure Archives |goto The Azure Span/0 37.06,60.82
step
talk Arc Tel XVII##189459
Speak to the Flightmaster |q 65855/1 |goto The Azure Span/0 37.06,60.82
step
talk Noriko the All-Remembering##183543
turnin Aiding Azure Span##65855 |goto The Azure Span/0 46.64,40.16
accept Ask the Locals##66699 |goto The Azure Span/0 46.64,40.16
step
talk Korrikunit the Whalebringer##190229
Select _"Do you know of any ley lines in the area?"_ |gossip 55417
Consult Korrikunit |q 66699/1 |goto The Azure Span/0 46.76,38.59
step
talk Jokomuupat##190226
Select _"I'm looking for pockets of concentrated magic in the Azure Span."_ |gossip 55418
Consult Jokomuupat |q 66699/2 |goto The Azure Span/0 46.34,38.15
step
talk Babunituk##190225
Select _"I'm looking for crystals. Purple crystals. In caves."_ |gossip 55419
Consult Babunituk |q 66699/3 |goto The Azure Span/0 45.72,38.84
step
talk Babunituk##190225
turnin Ask the Locals##66699 |goto The Azure Span/0 45.72,38.84
accept Catch the Caravan##65864 |goto The Azure Span/0 45.72,38.84
step
talk Brena##186224
Select _"You must be Brena. I..."_ |gossip 54825
Find Brena |q 65864/1 |goto The Azure Span/0 35.25,36.98
step
Watch the dialogue
talk Brena##186224
turnin Catch the Caravan##65864 |goto The Azure Span/0 35.25,36.98
step
talk Elder Poa##188809
accept Those Aren't for Chewing##65868 |goto The Azure Span/0 35.37,36.94
step
Watch the dialogue
talk Brena##191810
accept Howling in the Big Tree Hills##65867 |goto The Azure Span/0 35.28,36.94
accept Snap the Traps##65866 |goto The Azure Span/0 35.28,36.94
stickystart "Spring_Traps"
stickystart "Collect_Funerary_Offerings"
step
kill Hyenamaster Durgun##186515 |q 65867/1 |goto The Azure Span/0 35.66,34.72
step
Enter the cave |goto The Azure Span/0 34.94,32.63 < 20 |walk
kill Trap-Layer Kerwal##186516 |q 65867/2 |goto The Azure Span/0 34.99,32.04
|tip Inside the cave.
step
kill Bakra the Bully##186517 |q 65867/3 |goto The Azure Span/0 33.95,33.18
step
label "Spring_Traps"
click Bladejaw Trap##376139+
|tip They look like {o}silver metal bear traps{}.
Spring #8# Traps |q 65866/1 |goto The Azure Span/0 34.75,34.50
step
label "Collect_Funerary_Offerings"
Kill enemies around this area
|tip {o}Some{} of them are {o}stealthed{}.
Collect #8# Funerary Offerings |q 65868/1 |goto The Azure Span/0 35.02,33.92
'|kill Shadepaw Bruiser##183343, Shadepaw Hunter##186490, Scavenging Hyena##183340, Shadepaw Bandit##183341
step
talk Hanu##186618
turnin Snap the Traps##65866 |goto The Azure Span/0 34.27,31.29
turnin Howling in the Big Tree Hills##65867 |goto The Azure Span/0 34.27,31.29
turnin Those Aren't for Chewing##65868 |goto The Azure Span/0 34.27,31.29
step
Watch the dialogue
talk Hanu##189642
|tip He runs to this location.
accept Gnoll Way Out##65871 |goto The Azure Span/0 34.42,31.11
step
talk Brena##186228
accept Ill Gnolls With Ill Intent##65872 |goto The Azure Span/0 34.37,31.02
accept Leader of the Shadepaw Pack##65873 |goto The Azure Span/0 34.37,31.02
step
talk Elder Poa##189662
accept Supplies!##65870 |goto The Azure Span/0 34.34,31.00
stickystart "Slay_Shadepaw_Gnolls"
step
Enter the cave |goto The Azure Span/0 34.02,30.77 < 20 |walk |only if not subzone("Kargpaw's Den")
click Basket of Hunting Game Calls
|tip Inside the cave.
collect Hunting Game Calls##192189 |q 65870/3 |goto The Azure Span/1 36.38,93.17
step
click Barrel of Salt
|tip Inside the cave.
|tip You will be attacked.
collect Meat Curing Salts##191111 |q 65870/1 |goto The Azure Span/1 28.96,75.19
step
click Crude Cage
|tip Inside the cave.
Rescue the Tuskarr |q 65871/1 |goto The Azure Span/1 30.29,60.43 |count 1
step
clicknpc Norukk##186655
|tip Downstairs inside the cave.
Rescue Norukk |q 65871/2 |goto The Azure Span/1 41.43,63.90
step
click Crude Cage
|tip Downstairs inside the cave.
Rescue the Tuskarr |q 65871/1 |goto The Azure Span/1 46.08,41.66 |count 2
step
click Barrel of Skinning Tools
|tip Downstairs inside the cave.
|tip You will be attacked.
collect Skinning Tools##192190 |q 65870/2 |goto The Azure Span/1 51.56,36.59
step
click Crude Cage
|tip Downstairs inside the cave.
Rescue the Tuskarr |q 65871/1 |goto The Azure Span/1 38.09,32.94 |count 3
step
Follow the path down |goto The Azure Span/1 36.23,30.76 < 20 |walk
kill Kargpaw the Fetid##186660
|tip Downstairs inside the cave.
collect Kargpaw's Totem##191118 |q 65873/1 |goto The Azure Span/1 41.56,15.40
step
label "Slay_Shadepaw_Gnolls"
Kill Sickly enemies around this area
|tip They look like {o}gnolls{}.
|tip Inside the cave.
Slay #16# Shadepaw Gnolls |q 65872/1 |goto The Azure Span/1 44.77,44.12
'|kill Sickly Ambusher##189402, Sickly Grunt##186768, Sickly Shaman##186667, Sickly Brute##186668, Sickly Pilferer##193505
step
Leave the cave |goto The Azure Span/1 55.01,84.31 < 20 |walk |only if subzone("Kargpaw's Den")
talk Elder Poa##189662
turnin Supplies!##65870 |goto The Azure Span/0 34.34,31.00
step
talk Brena##186228
turnin Ill Gnolls With Ill Intent##65872 |goto The Azure Span/0 34.37,31.02
turnin Leader of the Shadepaw Pack##65873 |goto The Azure Span/0 34.37,31.02
step
talk Hanu##189642
turnin Gnoll Way Out##65871 |goto The Azure Span/0 34.42,31.10
step
talk Brena##186228
accept Spreading Decay##66239 |goto The Azure Span/0 34.37,31.02
step
talk Brena##187721
turnin Spreading Decay##66239 |goto The Azure Span/0 28.69,34.82
accept Another Ambush##65869 |goto The Azure Span/0 28.69,34.82
step
talk Akiun##187730
Select _"Can you tell me what happened?"_ |gossip 55220
Speak to Akiun |q 65869/1 |goto The Azure Span/0 28.68,34.75
step
clicknpc Tuskarr Fisherman##190136
Select  _"<Inspect the corpse further...>"_ |gossip 55691
|tip You will be {o}attacked{}.
|tip If you stay {o}mounted{}, you can quickly {o}fly away{}.
Examine the Body |q 65869/2 |goto The Azure Span/0 29.24,33.57 |count 1
step
clicknpc Tuskarr Hunter##190142
Select  _"<Inspect the corpse further...>"_ |gossip 55692
|tip You will be {o}attacked{}.
|tip If you stay {o}mounted{}, you can quickly {o}fly away{}.
Examine the Body |q 65869/2 |goto The Azure Span/0 29.17,32.55 |count 2
step
clicknpc Tuskarr Craftsman##190143
Select  _"<Inspect the corpse further...>"_ |gossip 55693
|tip You will be {o}attacked{}.
|tip If you stay {o}mounted{}, you can quickly {o}fly away{}.
Examine the Body |q 65869/2 |goto The Azure Span/0 28.20,31.86 |count 3
step
clicknpc Festering Gnoll##190074
Select  _"<Inspect the corpse further...>"_ |gossip 55694
|tip You will be {o}attacked{}.
|tip If you stay {o}mounted{}, you can quickly {o}fly away{}.
Examine the Body |q 65869/2 |goto The Azure Span/0 27.97,32.83 |count 4
step
talk Brena##189708
turnin Another Ambush##65869 |goto The Azure Span/0 28.79,34.74
accept Urgent Action Required##66026 |goto The Azure Span/0 28.79,34.74
step
talk Brena##186179
turnin Urgent Action Required##66026 |goto The Azure Span/0 20.59,35.67
step
Watch the dialogue
talk Kalecgos##187873
|tip He walks to this location.
accept Breaching the Brackenhide##65838 |goto The Azure Span/0 20.53,35.69
step
click Rotting Root
Select  _"<Cut the root.>"_ |gossip 55350
Investigate the North Area |q 65838/1 |goto The Azure Span/0 18.40,34.74
step
click Rotting Root
Select  _"<Cut the root.>"_ |gossip 54967
Investigate the South Area |q 65838/2 |goto The Azure Span/0 18.87,37.01
step
click Rotting Root
Select  _"<Cut the root.>"_ |gossip 54968
Investigate the West Area |q 65838/3 |goto The Azure Span/0 17.59,36.98
step
talk Kalecgos##187873
turnin Breaching the Brackenhide##65838 |goto The Azure Span/0 16.75,37.31
accept Ley Litter##65846 |goto The Azure Span/0 16.75,37.31
step
talk Norukk##186181
accept Cut Out the Rot##65844 |goto The Azure Span/0 16.76,37.25
step
talk Brena##186179
accept Echoes of the Fallen##65845 |goto The Azure Span/0 16.75,37.22
stickystart "Kill_Rotting_Treants"
stickystart "Collect_Ley_Crystals"
stickystart "Kill_Brackenhide_Rotflingers"
step
use Brena's Totem##191928
|tip Use it on {o}Kaqiata{}.
Contact the Spirit |q 65845/1 |goto The Azure Span/0 17.46,37.08 |count 1
'|clicknpc Kaqiata##188854
step
use Brena's Totem##191928
|tip Use it on {o}Popoak{}.
Contact the Spirit |q 65845/1 |goto The Azure Span/0 18.13,37.66 |count 2
step
use Brena's Totem##191928
|tip Use it on {o}Lutokk{}.
|tip In the entrance of the cave.
Contact the Spirit |q 65845/1 |goto The Azure Span/0 18.52,37.27 |count 3
step
use Brena's Totem##191928
|tip Use it on {o}Nomurok{}.
Contact the Spirit |q 65845/1 |goto The Azure Span/0 17.54,37.93 |count 4
step
use Brena's Totem##191928
|tip Use it on {o}Tuyuki{}.
Contact the Spirit |q 65845/1 |goto The Azure Span/0 17.41,38.66 |count 5
step
label "Kill_Rotting_Treants"
kill 5 Rotting Treant##186361 |q 65844/1 |goto The Azure Span/0 17.89,37.71
|tip They look like {o}walking trees{}.
You can find more inside the cave at [18.56,37.24]
step
label "Collect_Ley_Crystals"
click Gnawed Ley Crystal+
|tip They look like {o}purple crystals{}.
collect 7 Ley Crystal##194431 |q 65846/1 |goto The Azure Span/0 17.78,37.63
step
label "Kill_Brackenhide_Rotflingers"
kill 10 Brackenhide Rotflinger##186362 |q 65844/2 |goto The Azure Span/0 17.89,37.71
|tip They look like {o}gnolls with animal skulls{} on their {o}left shoulders{}.
You can find more inside the cave at [18.56,37.24]
step
talk Brena##186179
turnin Echoes of the Fallen##65845 |goto The Azure Span/0 16.75,37.22
step
talk Norukk##186181
turnin Cut Out the Rot##65844 |goto The Azure Span/0 16.76,37.25
step
talk Kalecgos##187873
turnin Ley Litter##65846 |goto The Azure Span/0 16.75,37.32
accept Tome-ward Bound##65848 |goto The Azure Span/0 16.75,37.32
step
talk Kalecgos##187873
Select _"I'm ready."_ |gossip 55002
Watch the dialogue
Speak to Kalecgos |q 65848/1 |goto The Azure Span/0 16.75,37.32
step
clicknpc Tome of Spellflinging##191636
Ride the Tome of Spellflinging |q 65848/2 |goto The Azure Span/0 16.72,37.30
step
kill Brackenhide Putrifier##196496 |q 65848/3 |goto The Azure Span/0 15.97,38.42 |count 1
|tip It looks like a larger enemy {o}channeling a green spell{}.
|tip Use the abilities on your action bar.
step
kill Brackenhide Putrifier##196496 |q 65848/3 |goto The Azure Span/0 15.15,38.04 |count 2
|tip It looks like a larger enemy {o}channeling a green spell{}.
|tip Use the abilities on your action bar.
step
kill Brackenhide Putrifier##196496 |q 65848/3 |goto The Azure Span/0 15.65,37.32 |count 3
|tip It looks like a larger enemy {o}channeling a green spell{}.
|tip Use the abilities on your action bar.
step
Watch the dialogue
|tip Use the ability on your action bar.
kill Twisted Ancient##186194 |q 65848/4 |goto The Azure Span/0 15.41,37.69
step
Regroup at the Cave |outvehicle |goto The Azure Span/0 15.16,39.18 |q 65848 |notravel
|tip You will automatically travel into the cave.
step
Watch the dialogue
talk Kalecgos##187873
|tip Inside the cave.
turnin Tome-ward Bound##65848 |goto The Azure Span/0 15.30,39.43
accept Realignment##65847 |goto The Azure Span/0 15.30,39.43
step
click Ley Crystal
|tip Inside the cave.
Focus the Ley Line |q 65847/1 |goto The Azure Span/0 15.36,39.50
step
click Decay Infection
|tip Inside the cave.
Destroy the Decay Infection |q 65847/2 |goto The Azure Span/0 15.51,39.30 |count 1
step
click Decay Infection
|tip Inside the cave.
Destroy the Decay Infection |q 65847/2 |goto The Azure Span/0 15.30,39.12 |count 2
step
click Decay Infection
|tip Inside the cave.
Destroy the Decay Infection |q 65847/2 |goto The Azure Span/0 15.07,39.53 |count 3
step
talk Kalecgos##186177
|tip Outside the cave, next to the road.
turnin Realignment##65847 |goto The Azure Span/0 16.11,41.41
step
talk Brena##186179
accept To Iskaara##65849 |goto The Azure Span/0 16.08,41.45
step
talk Skygazer Paatu##186443
fpath Iskaara |goto The Azure Span/0 13.29,48.77
step
talk Brena##186480
|tip Inside the building.
turnin To Iskaara##65849 |goto The Azure Span/0 13.24,49.56
accept Gather the Family##66210 |goto The Azure Span/0 13.24,49.56
step
click Decorated Teapot
Collect the Funeral Offering |q 66210/1 |goto The Azure Span/0 13.48,48.57 |count 1
step
click Handcrafted Boat
Collect the Funeral Offering |q 66210/1 |goto The Azure Span/0 13.87,49.48 |count 2
step
click Stone Sculpture
|tip Inside the building.
Collect the Funeral Offering |q 66210/1 |goto The Azure Span/0 12.49,49.45 |count 3
step
click Ornamented Shield
Collect the Funeral Offering |q 66210/1 |goto The Azure Span/0 12.46,50.32 |count 4
step
click Funeral Boat
Place the Offerings in the Boat |q 66210/2 |goto The Azure Span/0 13.13,48.57
step
talk Brena##186480
|tip Inside the building.
turnin Gather the Family##66210 |goto The Azure Span/0 13.24,49.56
step
talk Kalecgos##189793
|tip Inside the building.
accept The Cycle of the Sea##65850 |goto The Azure Span/0 13.27,49.53
step
talk Brena##186480
|tip Inside the building.
Select _"I'm ready to begin the funeral."_ |gossip 55314
Begin Following Brena |goto The Azure Span/0 13.24,49.56 > 10 |q 65850
step
Watch the dialogue
|tip Follow {o}Brena{} as she walks.
|tip She eventually walks to this location.
Speak to Brena |q 65850/1 |goto The Azure Span/0 12.93,50.43
step
click Funeral Boat
Push the Boat Out to Sea |q 65850/2 |goto The Azure Span/0 13.16,50.20
step
talk Kalecgos##186177
turnin The Cycle of the Sea##65850 |goto The Azure Span/0 12.94,50.39
accept Azure Alignment##65911 |goto The Azure Span/0 12.94,50.39
step
talk Bergede Broadchin##190332
fpath Three-Falls Lookout |goto The Azure Span/0 19.15,23.78
step
talk Kalecgos##186280
turnin Azure Alignment##65911 |goto The Azure Span/0 39.48,63.02
accept Calling the Blue Dragons##66027 |goto The Azure Span/0 39.48,63.02
step
talk Kalecgos##186280
Select _"I'm ready to see you call back the blue dragonflight."_ |gossip 54829
Speak to Kalecgos |q 66027/1 |goto The Azure Span/0 39.48,63.02
step
talk Kalecgos##186280
turnin Calling the Blue Dragons##66027 |goto The Azure Span/0 39.48,63.02
accept To Rhonin's Shield##65886 |goto The Azure Span/0 39.48,63.02
step
talk Kruthix##191999
fpath Cobalt Assembly |goto The Azure Span/0 49.10,22.67
step
talk Taelmyr Blazewing##186742
fpath Theron's Watch |goto The Azure Span/0 65.37,16.39
step
Reach Rhonin's Shield |q 65886/1 |goto The Azure Span/0 66.00,25.39
step
talk Portia Striat##191976
fpath Rhonin's Shield |goto The Azure Span/0 66.00,25.39
step
talk Drok Scrollstabber##189751
turnin To Rhonin's Shield##65886 |goto The Azure Span/0 65.81,25.32
accept To the Mountain##65887 |goto The Azure Span/0 65.81,25.32
step
talk Kalecgos##186304
turnin To the Mountain##65887 |goto The Azure Span/0 70.01,35.23
accept Primal Offensive##65943 |goto The Azure Span/0 70.01,35.23
step
talk Khadgar##186305
accept Lava Burst##65944 |goto The Azure Span/0 70.03,35.34
accept Elemental Unfocus##66647 |goto The Azure Span/0 70.03,35.34
stickystart "Slay_Primalist_Forces_65943"
step
click Lava Orb
|tip It looks like an {o}orange floating ball of lava{}.
Destroy the Lava Orb |q 65944/1 |goto The Azure Span/0 72.23,37.28 |count 1
step
kill Ruvin Stonegrinder##189939
|tip Inside the small cave.
collect Elemental Focus##192478 |q 66647/1 |goto The Azure Span/0 72.91,38.72
step
click Lava Orb
|tip It looks like an {o}orange floating ball of lava{}.
Destroy the Lava Orb |q 65944/1 |goto The Azure Span/0 73.12,37.76 |count 2
step
click Lava Orb
|tip It looks like an {o}orange floating ball of lava{}.
Destroy the Lava Orb |q 65944/1 |goto The Azure Span/0 73.77,38.32 |count 3
step
label "Slay_Primalist_Forces_65943"
Kill enemies around this area
Slay #15# Primalist Forces |q 65943/1 |goto The Azure Span/0 72.65,37.62
'|kill Fiery Carver##186328, Primal Fire Elemental##186550, Mountain Shaper##186329
step
talk Archmage Khadgar##186688
turnin Lava Burst##65944 |goto The Azure Span/0 74.47,37.84
turnin Elemental Unfocus##66647 |goto The Azure Span/0 74.47,37.84
step
talk Kalecgos##186686
turnin Primal Offensive##65943 |goto The Azure Span/0 74.47,37.81
accept Primal Power##65958 |goto The Azure Span/0 74.47,37.81
step
talk Archmage Khadgar##186688
accept Kirin Tor Recovery##65977 |goto The Azure Span/0 74.46,37.84
stickystart "Recover_The_Primal_Energies"
step
click Elemental Drainer
Rescue the Kirin Tor Mage |q 65977/1 |goto The Azure Span/0 74.59,38.63 |count 1
step
click Elemental Drainer
Rescue the Kirin Tor Mage |q 65977/1 |goto The Azure Span/0 75.27,37.21 |count 2
step
click Elemental Drainer
Rescue the Kirin Tor Mage |q 65977/1 |goto The Azure Span/0 75.64,38.37 |count 3
step
click Elemental Drainer
Rescue the Kirin Tor Mage |q 65977/1 |goto The Azure Span/0 76.13,37.86 |count 4
step
click Elemental Drainer
Rescue the Kirin Tor Mage |q 65977/1 |goto The Azure Span/0 76.57,38.92 |count 5
step
click Elemental Drainer
Rescue the Kirin Tor Mage |q 65977/1 |goto The Azure Span/0 76.02,39.53 |count 6
step
label "Recover_The_Primal_Energies"
Kill enemies around this area
use Elemental Focus##192479
|tip Use it next to their corpses.
Recover the Primal Energies |q 65958/1 |goto The Azure Span/0 75.49,38.27
'|kill Primal Lava Elemental##186438, Primalist Worshipper##186759
step
talk Archmage Khadgar##186779
turnin Primal Power##65958 |goto The Azure Span/0 76.95,39.43
turnin Kirin Tor Recovery##65977 |goto The Azure Span/0 76.95,39.43
accept Free Air##66007 |goto The Azure Span/0 76.95,39.43
step
extraaction Elemental Disguise##378814
|tip Use the {o}Elemental Disguise{} ability.
|tip It appears as a button on the screen.
Disguise Yourself as an Elemental |havebuff Elemental Disguise##378814 |goto The Azure Span/0 76.95,39.43 |q 66007
step
_NOTE:_
During the Next Steps
|tip Avoid the {o}blue swirls{} on the ground.
|tip Avoid the {o}enemies with blue circles{} around them, they can {o}see through{} your disguise.
Click Here to Continue |confirm |q 66007
step
click Lava Beacon
Destroy the Lava Beacon |q 66007/1 |goto The Azure Span/0 77.36,39.91 |count 1
step
click Lava Beacon
Destroy the Lava Beacon |q 66007/1 |goto The Azure Span/0 77.35,38.28 |count 2
step
click Lava Beacon
Destroy the Lava Beacon |q 66007/1 |goto The Azure Span/0 78.22,37.64 |count 3
step
click Lava Beacon
Destroy the Lava Beacon |q 66007/1 |goto The Azure Span/0 78.55,39.04 |count 4
step
Enter the cave |goto The Azure Span/0 78.72,39.53 < 20 |walk
talk Kalecgos##186862
|tip Inside the cave.
turnin Free Air##66007 |goto The Azure Span/0 78.38,39.98
accept In Defense of Vakthros##66009 |goto The Azure Span/0 78.38,39.98
step
kill Korthrox the Destroyer##183422 |q 66009/1 |goto The Azure Span/0 79.27,36.33
|tip {o}Blue circles{} (not the blue lightning swirls), will {o}appear on on the ground{} as you fight him.
|tip Kalecgos will say {o}"Seek sanctuary in my runes!"{} in your chat when the blue circles appear.
|tip {o}Run into the blue circles{} when they appear on the ground.
|tip They will {o}make you immune to damage{} while Korthrox uses a powerful ability.
step
talk Archmage Khadgar##193837
turnin In Defense of Vakthros##66009 |goto The Azure Span/0 77.99,32.47
accept The Storm-Eater's Fury##70041 |goto The Azure Span/0 77.99,32.47
step
click Arcane Disc
Board the Arcane Disc |q 70041/1 |goto The Azure Span/0 78.03,32.44
step
Watch the dialogue
Kill enemies around this area
|tip On the ground nearby.
|tip Use the abilities on your action bar.
Repel #150# Primalist Army |q 70041/2
step
Dispel #3# Storm Funnels |q 70041/3
|tip They look like {o}grey swirling tornados{} on the ground nearby.
|tip Use the {o}Azure Dispel{} ability on your action bar.
step
Kill enemies around this area
|tip On the ground nearby.
|tip Use the abilities on your action bar.
Eliminate #200# Primalist Army |q 70041/4
step
talk Kalecgos##187034
turnin The Storm-Eater's Fury##70041 |goto The Azure Span/0 78.22,33.34
accept The Blue Dragon Oathstone##66015 |goto The Azure Span/0 78.22,33.34
step
talk Camilla Highwind##186782
fpath Camp Nowhere |goto The Azure Span/0 63.45,58.66
step
talk Sindragosa##186188
Select _"I'm ready to see the oathstone be reclaimed."_ |gossip 55293
Witness the Ceremony |q 66015/1 |goto The Azure Span/0 39.48,63.07
step
talk Sindragosa##186188
turnin The Blue Dragon Oathstone##66015 |goto The Azure Span/0 39.48,63.07
step
talk Kalecgos##190000
accept To Valdrakken##66244 |goto The Azure Span/0 39.47,63.05
|only if not (haveq(72293) or completedq(72293))
step
|next "Leveling Guides\\Dragonflight (10-70)\\Story Campaigns\\Intro & The Waking Shores (Story Only)"	|only if completedq(72293)
|next "Leveling Guides\\Dragonflight (10-70)\\Story Campaigns\\Thaldraszus (Story Only)"		|only if not completedq(72293)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Story Campaigns\\Thaldraszus (Story Only)",{
author="support@zygorguides.com",
},[[
step
talk Aluri##193321
fpath Valdrakken |goto Valdrakken/0 44.04,67.97
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
turnin To Valdrakken##66244 |goto Valdrakken/0 58.11,34.87 |only if haveq(66244) or completedq(66244)
turnin Thaldraszus##72269 |goto Valdrakken/0 58.11,34.87 |only if haveq(72269) or completedq(72269)
accept A Message Most Dire##66159 |goto Valdrakken/0 58.11,34.87
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
Select _"So, about the Azure Span..."_ |gossip 55406
Deliver the Information |q 66159/1 |goto Valdrakken/0 58.11,34.87
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
turnin A Message Most Dire##66159 |goto Valdrakken/0 58.11,34.87
step
Watch the dialogue
talk Captain Drine##189842
|tip She runs to this location.
|tip At the top of the tower.
accept Nowhere to Hide##66163 |goto Valdrakken/0 59.37,34.74
accept Eyes and Ears##66166 |goto Valdrakken/0 59.37,34.74
step
use the Revealing Dragon's Eye##198859
|tip At the top of the tower.
Use the Revealing Dragon's Eye |q 66163/1 |goto Valdrakken/0 59.37,34.74
step
talk Valdrakken Citizen##189869
Select _"Halt! I see through your disguise!"_ |gossip 55202
|tip You will be attacked by 3 enemies.
|tip You may need to {o}wait{} for them to respawn.
kill 3 Primalist Infiltrator##189895 |q 66163/2 |goto Valdrakken/0 80.36,50.34 |count 3 |noordinal
step
talk Valdrakken Citizen##189869
Select _"Halt! I see through your disguise!"_ |gossip 55202
|tip You will be attacked by 3 enemies.
|tip You may need to {o}wait{} for them to respawn.
kill 6 Primalist Infiltrator##189895 |q 66163/2 |goto Valdrakken/0 68.52,64.87 |count 6 |noordinal
step
Enter the building |goto Valdrakken/0 55.33,57.37 < 20 |walk
click Storage Chest
|tip Inside the building.
Watch the dialogue
Investigate the Bank |q 66166/2 |goto Valdrakken/0 59.20,54.70
step
click Consortium Ledger
Watch the dialogue
Investigate the Crafter's Consortium |q 66166/1 |goto Valdrakken/0 34.63,61.30
step
click Goblet
|tip It looks like a {o}golden drinking cup{} on a table.
|tip Inside the building.
Watch the dialogue
Investigate the Inn |q 66166/3 |goto Valdrakken/0 46.92,47.72
step
talk Captain Drine##189842
|tip Near the entrance to a building.
turnin Nowhere to Hide##66163 |goto Valdrakken/0 54.77,47.23
turnin Eyes and Ears##66166 |goto Valdrakken/0 54.77,47.23
accept Southern Exposure##66167 |goto Valdrakken/0 54.77,47.23
step
talk Valdren##193454
|tip High up on the cliff.
fpath Garden Shrine |goto Thaldraszus/0 35.62,78.85
step
Travel to South Hold Gate |q 66167/1 |goto Thaldraszus/0 35.85,82.56
step
talk Guardian Velomir##190086
Aid Guardian Velomir |q 66167/2 |goto Thaldraszus/0 35.85,82.56
step
talk Guardian Velomir##190180
turnin Southern Exposure##66167 |goto Thaldraszus/0 35.85,82.56
accept Vengeance, Served Hot##66169 |goto Thaldraszus/0 35.85,82.56
accept The Fog of Battle##66246 |goto Thaldraszus/0 35.85,82.56
stickystart "Slay_Magmasworn_Primalists"
step
clicknpc Mangled Corpse##190440
Select _"Inspect the body."_ |gossip 54894
Find Velomir's Unit |q 66246/1 |goto Thaldraszus/0 36.25,83.73 |count 1
step
clicknpc Badly Injured Guardian##190442
|tip Inside the building.
Select _"Inspect the body."_ |gossip 55103
Find Velomir's Unit |q 66246/1 |goto Thaldraszus/0 35.76,84.19 |count 2
step
clicknpc Mangled Corpse##190247
Select _"Inspect the body."_ |gossip 54893
Find Velomir's Unit |q 66246/1 |goto Thaldraszus/0 36.46,85.39 |count 3
step
label "Slay_Magmasworn_Primalists"
Kill Magmasworn enemies around this area
Slay #12# Magmasworn Primalists |q 66169/1 |goto Thaldraszus/0 36.47,84.79
'|kill Magmaclaw Raider##187218, Magmasworn Lavablade##190212, Magmasworn Flameweaver##193414
step
talk Guardian Velomir##190180
|tip On the bridge.
turnin Vengeance, Served Hot##66169 |goto Thaldraszus/0 37.62,83.08
turnin The Fog of Battle##66246 |goto Thaldraszus/0 37.62,83.08
accept Remember the Fallen##66245 |goto Thaldraszus/0 37.62,83.08
step
click Magmasworn Spear
|tip On the bridge.
accept Slightly Used Weapons##66247 |goto Thaldraszus/0 37.85,83.26
stickystart "Collect_Magmasworn_Spears"
stickystart "Collect_South_Hold_Garrison_Signet"
step
click Coil of Heavy Rope
accept Tying Things Together##66248 |goto Thaldraszus/0 38.56,83.41
step
click Coil of Heavy Rope##377115+
|tip They look like {o}coiled ropes{}.
collect 5 Coil of Heavy Rope##192758 |q 66248/1 |goto Thaldraszus/0 39.17,83.81
step
label "Collect_Magmasworn_Spears"
kill Magmasworn Rockcleaver##190420+
collect 6 Magmasworn Spear##192759 |q 66247/1 |goto Thaldraszus/0 39.18,83.83
step
label "Collect_South_Hold_Garrison_Signet"
click South Hold NPCs
|tip They look like {o}dead dragon people{}.
collect 8 South Hold Garrison Signet##191269 |q 66245/1 |goto Thaldraszus/0 38.94,83.89
'|clicknpc South Hold Magus##187518, South Hold Guardian##187516
step
talk Guardian Velomir##190180
|tip On the bridge.
turnin Remember the Fallen##66245 |goto Thaldraszus/0 37.62,83.08
turnin Slightly Used Weapons##66247 |goto Thaldraszus/0 37.62,83.08
turnin Tying Things Together##66248 |goto Thaldraszus/0 37.62,83.08
accept Clear the Sky##66249 |goto Thaldraszus/0 37.62,83.08
step
click Siege Scorpion
|tip On a stone platform, overlooking the valley below.
Control a Siege Scorpion |q 66249/1 |goto Thaldraszus/0 40.88,83.86
step
kill Magmasworn Trueborn##194543+
|tip They look like {o}red dragons{} flying in the air nearby.
|tip Use the ability on your action bar.
Slay the Magmasworn |q 66249/2 |goto Thaldraszus/0 40.88,83.86
step
talk Guardian Velomir##190558
|tip Inside the building.
turnin Clear the Sky##66249 |goto Thaldraszus/0 40.56,85.48
accept Where's The Chief?##66250 |goto Thaldraszus/0 40.56,85.48
step
talk Guardian Velomir##190558
|tip Inside the building.
Select _"I'm ready. Let's get in there!"_ |gossip 54896
Investigate the Lookout Tower |q 66250/1 |goto Thaldraszus/0 40.56,85.48
step
talk Guardian Velomir##190562
turnin Where's The Chief?##66250 |goto Thaldraszus/0 40.15,85.13
accept Fire Fighter##66251 |goto Thaldraszus/0 40.15,85.13
step
kill Magmatalon##189538 |q 66251/1 |goto Thaldraszus/0 40.29,87.10
|tip He looks like a {o}black and orange dragon{} that flies in the air around this area.
|tip He will appear on your {o}minimap{} as a {o}yellow dot{}.
step
talk Guardian Velomir##190562
turnin Fire Fighter##66251 |goto Thaldraszus/0 40.15,85.13
accept Reporting In##66252 |goto Thaldraszus/0 40.15,85.13
step
talk Captain Drine##189842
|tip At the top of the tower.
turnin Reporting In##66252 |goto Valdrakken/0 55.94,39.96
step
talk Nozdormu##187669
|tip At the top of the tower.
accept The Flow of Time##66320 |goto Valdrakken/0 61.40,39.05
step
talk Talon Smoht##189018
|tip On a stone platform, overlooking the valley below.
fpath Gelikyr Post |goto Thaldraszus/0 51.16,67.09
step
talk Chromie##187100
Select _"Nozdormu sent me to help."_ |gossip 63842
Watch the dialogue
Speak with Chromie |q 66320/1 |goto Thaldraszus/0 57.46,78.92
step
talk Chromie##187100
turnin The Flow of Time##66320 |goto Thaldraszus/0 57.46,78.92
step
talk Andantenormu##187877
accept Temporal Difficulties##66080 |goto Thaldraszus/0 57.53,78.79
step
talk Azim##193458
fpath Shifting Sands |goto Thaldraszus/0 57.63,79.02
step
Find the Missing Recruit |q 66080/1 |goto Thaldraszus/0 55.00,75.75
step
talk Siaszerathel##187098
turnin Temporal Difficulties##66080 |goto Thaldraszus/0 55.00,75.75
accept Haven't Got Time For the Pain##70136 |goto Thaldraszus/0 55.00,75.75
step
click Timewalker Notes
collect Timewalker Notes##198408 |q 70136/2 |goto Thaldraszus/0 53.18,77.38
step
kill Crazed Alpha##194224 |q 70136/3 |goto Thaldraszus/0 52.69,76.81
|tip Inside the small cave.
step
click Timewalker Staff
|tip Inside the cave.
collect Timewalker Staff##198410 |q 70136/1 |goto Thaldraszus/0 52.71,76.86
step
talk Siaszerathel##187098
turnin Haven't Got Time For the Pain##70136 |goto Thaldraszus/0 55.00,75.75
accept Time is Running Out##66081 |goto Thaldraszus/0 55.00,75.75
accept Time in a Bottle##66082 |goto Thaldraszus/0 55.00,75.75
stickystart "Collect_The_Energy"
step
click Temporal Collector##377081+
|tip They look like {o}floating blue crystals{}.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
collect 8 Temporal Collector##192602 |q 66081/1 |goto Thaldraszus/0 55.12,77.65
step
label "Collect_The_Energy"
Kill Time-Charged enemies around this area
|tip They look like {o}various animals{}.
|tip {o}Walk into the Time Motes{} that appear after killing the enemies.
|tip They look like {o}floating yellow orbs{} of light.
Collect the Energy |q 66082/1 |goto Thaldraszus/0 55.77,76.95
'|kill Time-Charged Salamanther##187338, Time-Charged Ohuna##187337, Time-Charged Vorquin##187336, Time-Charged Bear##195635, Time-Charged Hornswog##187324
step
talk Siaszerathel##187098
turnin Time is Running Out##66081 |goto Thaldraszus/0 57.46,78.92
turnin Time in a Bottle##66082 |goto Thaldraszus/0 57.46,78.92
step
Watch the dialogue
talk Andantenormu##187877
accept Feels Like the First Time##66083 |goto Thaldraszus/0 57.52,78.79
step
Watch the dialogue
talk Andantenormu##190479
|tip He walks to this location.
Select _"I am ready to begin."_ |gossip 55340
Speak with Andantenormu |q 66083/1 |goto Thaldraszus/0 57.58,78.38
step
click Temporal Collector
Drain the Collector |q 66083/2 |goto Thaldraszus/0 57.68,78.33
step
click Crystal Focus
Empower the Conduit |q 66083/3 |goto Thaldraszus/0 57.67,78.38
step
_NOTE:_
During This Quest
|tip If your guide viewer gets {o}hidden after a reload{} screen during this quest, click the {o}Z{} minimap button to make it appear again.
Click Here to Continue |confirm |q 66083
step
click Time-Lost Artifact
Watch the dialogue
Return the Artifact |q 66083/4 |goto Thaldraszus/0 57.64,78.46
step
Watch the dialogue
Restore the Personal Timeline |q 66083/5
step
Return to Thaldraszus |complete zone("Thaldraszus") |q 66083
step
talk Andantenormu##187877
|tip He walks to this location.
turnin Feels Like the First Time##66083 |goto Thaldraszus/0 57.52,78.79
accept Times Like These##66084 |goto Thaldraszus/0 57.52,78.79
step
talk Siaszerathel##187098
accept If We Could Turn Back Time##66085 |goto Thaldraszus/0 57.46,78.92
stickystart "Collect_Temporal_Residue"
step
click Time Rift
Close the First Rift |q 66085/1 |goto Thaldraszus/0 58.59,78.22
step
talk Siaszerathel##187339
Select _"Show me what you got."_ |gossip 56086
Watch the dialogue
Observe Zera |q 66085/2 |goto Thaldraszus/0 59.81,79.31
step
click Time Rift
Close the Second Rift |q 66085/3 |goto Thaldraszus/0 60.01,79.28
step
click Time Rift
Close the Third Rift |q 66085/4 |goto Thaldraszus/0 59.97,77.20
step
Watch the dialogue
talk Aeonormu##187504
Select _"Are you one of the Timewalkers?"_ |gossip 55001
Select _"Zera could lead you to them."_ |gossip 55190
Meet the Stranger |q 66085/5 |goto Thaldraszus/0 59.95,77.23
step
label "Collect_Temporal_Residue"
Kill enemies around this area
collect 100 Temporal Residue##192809 |q 66084/1 |goto Thaldraszus/0 59.11,78.16
'|kill Time-Lost Thunderhide##187258, Time-Lost Raptor##187256, Time-Lost Devilsaur##187262, Time-Lost Murloc##190584, Time-Lost Murhulk##195095
step
talk Siaszerathel##187098
turnin If We Could Turn Back Time##66085 |goto Thaldraszus/0 57.46,78.92
step
talk Andantenormu##187877
turnin Times Like These##66084 |goto Thaldraszus/0 57.53,78.79
step
talk Aeonormu##190929
accept Closing Time##66087 |goto Thaldraszus/0 57.55,78.86
step
Kill enemies around this area
|tip Use the {o}Temporal Burst{} ability near enemies and allies.
|tip It appears as a button on the screen.
|tip It will {o}damage enemies{} and {o}strengthen allies{}.
|tip You will get {o}quest progress{} by strengthening allies.
click Various Object+
|tip They look like {o}various objects in yellow orbs{} on top of pedestals.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
click Time Rift+
|tip They look like {o}yellow swirling portals{}.
Preserve the Timeline |q 66087/1 |goto Thaldraszus/0 57.49,83.13
'|clicknpc Bronze Sentry##187391, Bronze Warder##187397
'|kill Time-Lost Bladewing##187232, Time-Lost Sunseeker##187239, Time-Lost Geomancer##187265, Time-Lost Briarback##187264, Time-Lost Destroyer##187244, Time-Lost Chieftain##187266
step
talk Aeonormu##190929
turnin Closing Time##66087 |goto Thaldraszus/0 57.55,78.86
step
talk Andantenormu##187877
accept Catching Up to Chromie##65935 |goto Thaldraszus/0 57.52,78.79
step
Meet Chromie at the Bronze Temple |q 65935/1 |goto Thaldraszus/0 59.58,81.69
|tip Up on the platform.
step
talk Chromie##186711
|tip Up on the platform.
turnin Catching Up to Chromie##65935 |goto Thaldraszus/0 59.58,81.69
accept Time-Locked Timewalkers##65947 |goto Thaldraszus/0 59.58,81.69
accept Cracks in Time##65948 |goto Thaldraszus/0 59.58,81.69
step
talk Andantenormu##186433
accept Quelling Causalities##66646 |goto Thaldraszus/0 59.55,82.70
stickystart "Slay_The_Time_Elementals"
step
Free the Timewalker |q 65947/1 |goto Thaldraszus/0 59.01,82.77 |count 1
|tip Use the {o}Temporal Destabilizing Beam{} ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
'|clicknpc Amu'sha Skystrider##189564
step
Free the Timewalker |q 65947/1 |goto Thaldraszus/0 58.72,82.43 |count 2
|tip Use the {o}Temporal Destabilizing Beam{} ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
'|clicknpc Suma the Guised##189520
step
Free the Timewalker |q 65947/1 |goto Thaldraszus/0 58.38,82.14 |count 3
|tip Use the {o}Temporal Destabilizing Beam{} ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
'|clicknpc Historian Jum'Flitmo##189549
step
Free the Timewalker |q 65947/1 |goto Thaldraszus/0 58.13,82.83 |count 4
|tip Use the {o}Temporal Destabilizing Beam{} ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
'|clicknpc Scribe Kalve##189545
step
Yank the West Crystal |q 65948/1
|tip Use the {o}Temporal Destabilizing Beam{} ability.
|tip It appears as a button on the screen.
|tip After using the ability, {o}run away from the crystal{} to yank it.
click Temporal Crystal Chunk+
|tip They look like various sized {o}blue rocks{}.
|tip They {o}appear{} on the ground around where the {o}crystal lands{} after you pull it.
Collect #50# Temporal Energy |q 65948/3 |goto Thaldraszus/0 58.35,83.09 |count 50 |noordinal
'|clicknpc Bronze Power Crystal##189582
step
Free the Timewalker |q 65947/1 |goto Thaldraszus/0 60.31,81.39 |count 5
|tip Use the {o}Temporal Destabilizing Beam{} ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
'|clicknpc Warden Dialash##189558
step
Yank the East Crystal |q 65948/2
|tip Use the {o}Temporal Destabilizing Beam{} ability.
|tip It appears as a button on the screen.
|tip After using the ability, {o}run away from the crystal{} to yank it.
click Temporal Crystal Chunk+
|tip They look like various sized {o}blue rocks{}.
|tip They {o}appear{} on the ground around where the {o}crystal lands{} after you pull it.
Collect #100# Temporal Energy |q 65948/3 |goto Thaldraszus/0 60.71,80.55 |count 100 |noordinal
'|clicknpc Bronze Power Crystal##192086
step
Free the Timewalker |q 65947/1 |goto Thaldraszus/0 60.86,80.03 |count 6
|tip Use the {o}Temporal Destabilizing Beam{} ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
'|clicknpc Elo'sho Skystrider##189547
step
Free the Timewalker |q 65947/1 |goto Thaldraszus/0 60.45,79.74 |count 7
|tip Use the {o}Temporal Destabilizing Beam{} ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
'|clicknpc Wan'she Skystrider##189562
step
Free the Timewalker |q 65947/1 |goto Thaldraszus/0 60.27,80.40 |count 8
|tip Use the {o}Temporal Destabilizing Beam{} ability.
|tip It appears as a button on the screen.
|tip You will be attacked.
'|clicknpc Warden Krizzik##189560
step
label "Slay_The_Time_Elementals"
Kill enemies around this area
Slay the Time Elementals |q 66646/1 |goto Thaldraszus/0 60.51,80.57
You can find more around [58.73,82.74]
'|kill Timeling##186479, Time-Lost Sunseeker##201533, Timeless Causality##186464, Time-Lost Raptor##201534
step
talk Andantenormu##186433
turnin Quelling Causalities##66646 |goto Thaldraszus/0 59.55,82.70
step
talk Chromie##186711
turnin Time-Locked Timewalkers##65947 |goto Thaldraszus/0 59.58,81.69
turnin Cracks in Time##65948 |goto Thaldraszus/0 59.58,81.69
accept The Once and Future Team##65938 |goto Thaldraszus/0 59.58,81.69
step
Use the Timewalker Staff on the Temple Door Bubble |q 65938/1 |goto Thaldraszus/0 60.60,83.46
|tip Use the {o}Temporal Destabilizing Beam{} ability.
|tip It appears as a button on the screen.
|tip After using the ability, {o}run down the ramp{} to pull on the buble.
step
kill Colossal Causality##186672
|tip It looks like a {o}large fire elemental{}.
|tip Your {o}allies will help{} you fight.
Slay the Giant Time Elemental |q 65938/2 |goto Thaldraszus/0 60.72,83.68
step
talk Chromie##186711
turnin The Once and Future Team##65938 |goto Thaldraszus/0 59.58,81.69
accept The Never-Final Countdown##65962 |goto Thaldraszus/0 59.58,81.69
step
talk Chromie##186711
Select  _"<Tell Chromie you're ready.>"_ |gossip 54696
Speak to Chromie |q 65962/1 |goto Thaldraszus/0 59.58,81.69
step
talk Warden Dialash##187013
fpath Temporal Conflux |goto Thaldraszus/0 59.91,81.34
step
talk Nozdormu##186931
turnin The Never-Final Countdown##65962 |goto Thaldraszus/0 60.05,82.45
accept Tumbling Through Time##70040 |goto Thaldraszus/0 60.05,82.45
step
talk Andantenormu##185915
Select _"Nozdormu requests your presence."_ |gossip 55814
Speak with Andantenormu |q 70040/2 |goto Thaldraszus/0 60.19,81.76
step
talk Soridormi##192403
Select _"Nozdormu requests your presence."_ |gossip 55789
Speak with Soridormi |q 70040/1 |goto Thaldraszus/0 59.52,82.52
step
talk Siaszerathel##192404
Select _"Nozdormu requests your presence."_ |gossip 55815
Speak with Siaszerathel |q 70040/3 |goto Thaldraszus/0 59.30,82.15
step
talk Nozdormu##186931
Select _"Everyone is gathered."_ |gossip 55840
Watch the dialogue
Speak with Nozdormu |q 70040/4 |goto Thaldraszus/0 60.05,82.45
step
talk Nozdormu##186931
turnin Tumbling Through Time##70040 |goto Thaldraszus/0 60.05,82.45
accept To the Future!##66028 |goto Thaldraszus/0 60.05,82.45
accept Temporal Tuning##66029 |goto Thaldraszus/0 60.05,82.45
step
click Portal to the Primalist Future
Take the Portal to the Future |q 66028/1 |goto Thaldraszus/0 59.83,82.24
step
Enter the Primalist Future |complete zone("Primalist Tomorrow") |q 66028
step
talk Soridormi##183860
turnin To the Future!##66028 |goto Primalist Tomorrow/0 61.07,50.82
accept Resistance Isn't Futile##66030 |goto Primalist Tomorrow/0 61.07,50.82
step
talk Possible Future You##186953
accept Making Time##66031 |goto Primalist Tomorrow/0 61.46,50.19
stickystart "Heal_Injured_Resistance_Fighters"
stickystart "Collect_Elemental_Essences"
step
use the Chrono Crystal##192749
|tip Use it near the {o}large dragons{} tumbling in the air.
Fix the Temporal Position |q 66029/1 |goto Primalist Tomorrow/0 47.10,41.28
step
label "Heal_Injured_Resistance_Fighters"
use the Bandages##192467
|tip Use them on {o}Injured Resistance Fighters{}.
|tip They look like {o}allies{} laying on the ground.
clicknpc Injured Resistance Fighter##187341+
Heal #10# Injured Resistance Fighters |q 66030/1 |goto Primalist Tomorrow/0 51.12,30.48
You can find more around: |notinsticky
[45.12,18.99]
[44.58,33.95]
step
label "Collect_Elemental_Essences"
Kill enemies around this area
|tip Use the {o}Accompanies by Zera{} ability.
|tip {o}Siaszerathel{} will follow you and {o}help you fight{}.
|tip Try to {o}focus on finding non-elite enemies{}, so you can complete the quest faster.
collect 30 Elemental Essence##192454 |q 66031/1 |goto Primalist Tomorrow/0 45.91,30.57
'|kill Rimebound Controller##191654, Rimebound Subjugator##195837, Rimebound Subjugator##191658, Cragsworn Stoneshaper##191661, Hoary Icicle##194797, Colossal Glacier##194798, Vicious Rimefang##194120, Restless Icicle##194794, Cragsworn Stoneshaper##195838, Rimebound Controller##195836, Rimebound Subjugator##195837, Cragsworn Stoneshaper##195838, Cragsworn Conqueror##195839
step
talk Possible Future You##186953
|tip Up on the platform.
turnin Making Time##66031 |goto Primalist Tomorrow/0 61.46,50.20
step
talk Soridormi##183860
|tip Up on the platform.
turnin Resistance Isn't Futile##66030 |goto Primalist Tomorrow/0 61.08,50.82
accept Return to the Present##66032 |goto Primalist Tomorrow/0 61.08,50.82
step
click Portal to Temporal Conflux
Return to the Present |complete zone("Thaldraszus") |goto Primalist Tomorrow/0 61.01,50.52 |q 66032
step
talk Nozdormu##186931
turnin Temporal Tuning##66029 |goto Thaldraszus/0 60.05,82.45
turnin Return to the Present##66032 |goto Thaldraszus/0 60.05,82.45
accept To the... Past?##66033 |goto Thaldraszus/0 60.05,82.45
accept Temporal Two-ning##72519 |goto Thaldraszus/0 60.05,82.45
step
click Portal to Azmerloth
Take the Portal to Azmerloth |q 66033/1 |goto Thaldraszus/0 59.98,82.08
step
Travel to Azmerloth |complete zone("Azmerloth") |q 66033
step
talk Andantenormu##187344
turnin To the... Past?##66033 |goto Azmerloth/0 59.83,66.14
accept Murloc Motes##66035 |goto Azmerloth/0 59.83,66.14
step
talk Varian Wryngrrlgulgll##183854
accept Mugurlglrlgl!##66036 |goto Azmerloth/0 59.91,65.98
|only if Alliance
stickystart "Kill_Deathling_Destroyers_Alliance"
stickystart "Collect_Temprgrlglr_Motes_Alliance"
stickystart "Kill_Deathlings_Alliance"
step
use the Chrono Crystal##192749
|tip Use it near the {o}large dragons{} tumbling in the air.
Fix the Temporal Position |q 72519/1 |goto Azmerloth/0 61.59,61.82
|only if Alliance
step
label "Kill_Deathling_Destroyers_Alliance"
kill 5 Deathling Destroyer##190214 |q 66036/2 |goto Azmerloth/0 60.22,65.02
|tip They look like {o}large metal murlocs{}.
|only if Alliance
step
label "Collect_Temprgrlglr_Motes_Alliance"
Collect #12# Temprgrlglr Motes |q 66035/1 |goto Azmerloth/0 60.22,65.02
|tip They look like floating {o}yellow orbs of light{}.
|tip {o}Walk into them{} to collect them.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
|only if Alliance
step
label "Kill_Deathlings_Alliance"
kill 25 Deathling##187342 |q 66036/1 |goto Azmerloth/0 60.22,65.02
|only if Alliance
step
talk Andantenormu##187344
turnin Murloc Motes##66035 |goto Azmerloth/0 59.83,66.14
|only if Alliance
step
talk Varian Wryngrrlgulgll##183854
turnin Mugurlglrlgl!##66036 |goto Azmerloth/0 59.91,65.98
accept Deathwingurlugull!##70373 |goto Azmerloth/0 59.91,65.98
|only if Alliance
step
Watch the dialogue
clicknpc Murloc Hopper##195209
Enter the Hopper |q 70373/1 |goto Azmerloth/0 59.81,65.70
|only if Alliance
step
kill Deathwingurlugull##195314 |q 70373/2 |goto Azmerloth/0 59.83,59.04
|tip It looks like a {o}huge murloc{}.
|tip Use the abilities on your action bar.
|only if Alliance
step
Return to Varian Wryngrrlgulgll |outvehicle |goto Azmerloth/0 59.73,65.62 |q 70373
|only if Alliance
step
talk Varian Wryngrrlgulgll##183854
turnin Deathwingurlugull!##70373 |goto Azmerloth/0 59.91,65.98
|only if Alliance
step
talk Thrallgrulgulgul##183855
accept Mugurlglrlgl!##66704 |goto Azmerloth/0 59.98,65.97
|only if Horde
stickystart "Kill_Deathling_Destroyers_Horde"
stickystart "Collect_Temprgrlglr_Motes_Horde"
stickystart "Kill_Deathlings_Horde"
step
use the Chrono Crystal##192749
|tip Use it near the {o}large dragons{} tumbling in the air.
Fix the Temporal Position |q 72519/1 |goto Azmerloth/0 61.59,61.82
|only if Horde
step
label "Kill_Deathling_Destroyers_Horde"
kill 5 Deathling Destroyer##190214 |q 66704/2 |goto Azmerloth/0 60.22,65.02
|tip They look like {o}large metal murlocs{}.
|only if Horde
step
label "Collect_Temprgrlglr_Motes_Horde"
Collect #12# Temprgrlglr Motes |q 66035/1 |goto Azmerloth/0 60.22,65.02
|tip They look like floating {o}yellow orbs of light{}.
|tip {o}Walk into them{} to collect them.
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
|only if Horde
step
label "Kill_Deathlings_Horde"
kill 25 Deathling##187342 |q 66704/1 |goto Azmerloth/0 60.22,65.02
|only if Horde
step
talk Andantenormu##187344
turnin Murloc Motes##66035 |goto Azmerloth/0 59.83,66.14
|only if Horde
step
talk Thrallgrulgulgul##183855
turnin Mugurlglrlgl!##66704 |goto Azmerloth/0 59.98,65.97
accept Deathwingurlugull!##70371 |goto Azmerloth/0 59.98,65.97
|only if Horde
step
Watch the dialogue
clicknpc Murloc Hopper##195209
Enter the Hopper |q 70371/1 |goto Azmerloth/0 59.81,65.70
|only if Horde
step
kill Deathwingurlugull##195314 |q 70371/2 |goto Azmerloth/0 59.83,59.04
|tip It looks like a {o}huge murloc{}.
|tip Use the abilities on your action bar.
|only if Horde
step
Return to Thrallgrulgulgul |outvehicle |goto Azmerloth/0 59.73,65.62 |q 70371
|only if Horde
step
talk Thrallgrulgulgul##183855
turnin Deathwingurlugull!##70371 |goto Azmerloth/0 59.98,65.97
|only if Horde
step
talk Andantenormu##187344
accept Back to Reality##66037 |goto Azmerloth/0 59.83,66.14
step
click Portal to Temporal Conflux
Return to the Present |complete zone("Thaldraszus") |goto Azmerloth/0 59.72,66.11 |q 66037
step
talk Nozdormu##186931
turnin Back to Reality##66037 |goto Thaldraszus/0 60.05,82.45
turnin Temporal Two-ning##72519 |goto Thaldraszus/0 60.05,82.45
accept On Your Mark... Get Set...##66660 |goto Thaldraszus/0 60.05,82.45
step
click Portal to The Gnoll War
Take the Time Portal to the Gnoll War |q 66660/1 |goto Thaldraszus/0 59.92,82.19
step
Travel to the Past |complete zone("The Gnoll War") |q 66660
step
talk Andantenormu##187435
turnin On Your Mark... Get Set...##66660 |goto The Gnoll War/0 43.38,69.22
step
_NOTE:_
During the Next Quest
|tip The next quest is a {o}timed quest{}.
|tip You will be {o}following the road to yellow swirling portals{}, in multiple zones.
|tip Walk into the yellow swirling portals to travel to the next zone.
|tip As you travel to the portals, {o}walk into the pillars of white light{}.
|tip They will {o}boost your speed{}.
|tip {o}Avoid the circles{} on the ground, they will {o}slow you down{}.
Click Here to Continue |confirm |q 66038 |future
step
talk Andantenormu##187435
accept Race Through Time!##66038 |goto The Gnoll War/0 43.38,69.22
step
Travel to the War of the Shifting Sands |complete zone("War of the Shifting Sands") |goto The Gnoll War/0 32.38,49.69 |q 66038
step
Travel to the Pandaren Revolution |complete zone("Pandaren Revolution") |goto War of the Shifting Sands/0 39.55,76.76 |q 66038
step
Race Through Time |q 66038/1 |goto Pandaren Revolution/0 15.18,58.51
step
talk Andantenormu##187435
turnin Race Through Time!##66038 |goto The Black Empire/0 52.35,73.75
accept Chromie Time##66039 |goto The Black Empire/0 52.35,73.75
step
Follow the path and run up the stairs |goto The Black Empire/0 57.63,59.33 < 20 |only if walking
use the Chrono Crystal##192749
|tip Use it near {o}Chromie{}.
|tip She looks like a {o}large yellow dragon{} tumbling in the air.
Fix the Temporal Position |q 66039/1 |goto The Black Empire/0 53.87,43.43
'|clicknpc Chromie##186499
step
talk Chromie##186499
|tip She flies down and walks to this location.
turnin Chromie Time##66039 |goto The Black Empire/0 53.40,43.97
accept Back to the Future##66040 |goto The Black Empire/0 53.40,43.97
step
talk Chromie##186499
Select _"Let's do this!"_ |gossip 54816
|tip You may not be able to talk to her if another player already started the quest.
Kill the enemies that attack in waves
|tip Use the {o}Temporal Displacement{} ability.
|tip It appears as a button on the screen.
|tip This damages enemies and buffs you.
Defend Your Allies |q 66040/2 |goto The Black Empire/0 53.40,43.97
'|kill Winged Ruin##191399, Aqir Harbinger##191400, Grotesque Bulwark##191398
step
Return to the Present |complete zone("Thaldraszus") |q 66040
step
talk Chromie##183972
Select  _"<Quietly ask Chromie if Nozdormu is okay.>"_ |gossip 55119
Check in with Chromie |q 66040/3 |goto Thaldraszus/0 60.08,82.41
step
talk Nozdormu##186931
turnin Back to the Future##66040 |goto Thaldraszus/0 60.05,82.45
accept Moving On##66221 |goto Thaldraszus/0 60.05,82.45
step
talk Nozdormu##187669
|tip At the top of the tower.
turnin An Anomalous Shrine##67093 |goto Valdrakken/0 61.47,39.09
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
Select _"All of the Oathstones have been restored."_ |gossip 107528
Speak with Alexstrasza |q 66221/1 |goto Valdrakken/0 58.12,34.87
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
turnin Moving On##66221 |goto Valdrakken/0 58.12,34.87
step
talk Vesri##189339
|tip On a stone platform, overlooking the water.
fpath Algeth'era |goto Thaldraszus/0 49.47,41.94
step
talk Officer Obernax##189237
|tip On a stone platform, overlooking the water.
fpath Veiled Ossuary |goto Thaldraszus/0 62.07,18.93
step
talk Nirazal##193508
|tip On a stone platform, overlooking the lava.
fpath Vault of the Incarnates |goto Thaldraszus/0 72.14,56.45
step
|next "Leveling Guides\\Dragonflight (10-70)\\Story Campaigns\\Intro & The Waking Shores (Story Only)"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Dragon Glyphs\\Dragon Glyphs (All Zones)",{
author="support@zygorguides.com",
achieveid={16575,16576,16577,16578,17411},
},[[
step
_NOTE:_
Dragon Glyphs & Dragonriding Skills
|tip Dragon Glyphs look like large round golden runes that float in the air, spread out across the continent.
|tip You fly through them on your dragonriding mount to collect them.
|tip Collecting them will give you Dragonriding skill points, which can be used to increase the power of your Dragonriding ability.
|tip This guide will walk you through collecting all of the Dragon Glyphs, so that you can max out your Dragonriding skill quickly.
|tip As you collect Dragon Glyphs, to spend the skill points, click the "Dragon Isles Summary" button on your minimap, and click the "View" button under "Dragonriding Skills & Unlocks".
Click Here to Continue |confirm
step
Collect the Dragon Glyph: Wingrest Embassy |achieve 15986 |goto The Waking Shores/0 74.87,37.40 |notravel
|tip Above the hole at the top of the tower.
step
Collect the Dragon Glyph: Scalecracker Peak |achieve 16052 |goto The Waking Shores/0 73.20,20.51 |notravel
|tip Above the top of the mountain peak.
step
Collect the Dragon Glyph: Life-Binder Observatory |achieve 15990 |goto The Waking Shores/0 52.63,17.06 |notravel
|tip Above the top of the building.
step
Collect the Dragon Glyph: Dragonheart Outpost |achieve 16051 |goto The Waking Shores/0 69.25,46.19 |notravel
|tip Inside the the crumbled tower, near the top.
step
Collect the Dragon Glyph: Skytop Observatory Tower |achieve 15985 |goto The Waking Shores/0 75.27,57.04 |notravel
|tip Above the top of the tower.
step
Collect the Dragon Glyph: Skytop Observatory Rostrum |achieve 16668 |goto The Waking Shores/0 74.34,57.59 |notravel
|tip Near the ground.
step
Collect the Dragon Glyph: Crumbling Life Archway |achieve 15991 |goto The Waking Shores/0 57.64,54.98 |notravel
|tip Inside the arch of the wall, at the top.
step
Collect the Dragon Glyph: The Overflowing Spring |achieve 15989 |goto The Waking Shores/0 46.40,52.12 |notravel
|tip Above the top of the mountain peak.
step
Collect the Dragon Glyph: Obsidian Throne |achieve 16053 |goto The Waking Shores/0 21.91,51.48 |notravel
|tip Above a pool of lava.
step
Collect the Dragon Glyph: Obsidian Bulwark |achieve 15987 |goto The Waking Shores/0 40.97,71.88 |notravel
|tip Above the top of the large red stone pillar.
step
Collect the Dragon Glyph: Ruby Life Pools Peaks |achieve 15988 |goto The Waking Shores/0 54.46,74.22 |notravel
|tip Above the top of the mountain.
step
Collect the Dragon Glyph: Flashfrost Enclave |achieve 16669 |goto The Waking Shores/0 58.11,78.64 |notravel
|tip Near the ground, on the grassy ledge.
step
Collect the Dragon Glyph: Rubyscale Outpost |achieve 16670 |goto The Waking Shores/0 48.81,86.61 |notravel
|tip Near the ground, above the bridge.
step
Collect the Dragon Glyph: Mirewood Fen |achieve 16671 |goto Ohn'ahran Plains/0 78.38,21.26 |notravel
|tip Near the ground, above the tree.
step
Collect the Dragon Glyph: Rusza'thar Reach |achieve 16062 |goto Ohn'ahran Plains/0 86.48,39.42 |notravel
|tip Above the building, at the top of the mountain peak.
step
Collect the Dragon Glyph: Ohn'ahra's Roost |achieve 16054 |goto Ohn'ahran Plains/0 57.94,31.20 |notravel
|tip Above the massive owl statue, at the top of the mountain peak.
step
Collect the Dragon Glyph: Nokhudon Hold |achieve 16055 |goto Ohn'ahran Plains/0 30.63,36.12 |notravel
|tip Near the top of the mountain peak.
step
Collect the Dragon Glyph: Emerald Gardens |achieve 16056 |goto Ohn'ahran Plains/0 30.16,61.28 |notravel
|tip Above the top of the waterfall.
step
Collect the Dragon Glyph: The Eternal Kurgans |achieve 16057 |goto Ohn'ahran Plains/0 29.50,75.24 |notravel
|tip High in the air, near the mountains.
step
Collect the Dragon Glyph: Szar Skeleth |achieve 16058 |goto Ohn'ahran Plains/0 44.63,64.73 |notravel
|tip At the top of the crumbled tower.
step
Collect the Dragon Glyph: Mirror of the Sky |achieve 16059 |goto Ohn'ahran Plains/0 47.26,72.24 |notravel
|tip High in the air, near the mountain.
step
Collect the Dragon Glyph: Ohn'iri Springs |achieve 16060 |goto Ohn'ahran Plains/0 57.15,80.15 |notravel
|tip High in the air, near the mountain.
step
Collect the Dragon Glyph: Windsong Rise |achieve 16063 |goto Ohn'ahran Plains/0 61.49,64.30 |notravel
|tip High in the air, above the mountain.
step
Collect the Dragon Glyph: Dragonsprings Summit |achieve 16061 |goto The Azure Span/0 46.57,21.71 |notravel
|tip High in the air, near to the wall with the waterfalls.
step
Collect the Dragon Glyph: Cobalt Assembly |achieve 16064 |goto The Azure Span/0 45.86,25.80 |notravel
|tip Above the top of the tower.
step
Collect the Dragon Glyph: Forkriver Crossing |achieve 16672 |goto Ohn'ahran Plains/0 70.13,86.70 |notravel
|tip In the air, above the road.
step
Collect the Dragon Glyph: Creektooth Den |achieve 16069 |goto The Azure Span/0 26.73,31.70 |notravel
|tip Above the top of the broken tree.
step
Collect the Dragon Glyph: Brackenhide Hollow |achieve 16068 |goto The Azure Span/0 10.38,35.84 |notravel
|tip High in the air, near the tall tree on top of the mountain.
step
Collect the Dragon Glyph: Azure Archive |achieve 16065 |goto The Azure Span/0 39.25,62.99 |notravel
|tip High in the air, near the highest floating platform and huge purple crystal.
step
Collect the Dragon Glyph: Zelthrak Outpost |achieve 16071 |goto The Azure Span/0 52.97,49.06 |notravel
|tip Close to the large tree, about halfway down the trunk.
step
Collect the Dragon Glyph: Imbu |achieve 16070 |goto The Azure Span/0 60.61,70.11 |notravel
|tip High in the air, above the lower waterfall on the side of the cliff.
step
Collect the Dragon Glyph: Ruins of Karnthar |achieve 16066 |goto The Azure Span/0 68.65,60.38 |notravel
|tip At the top of the crumbled tower.
step
Collect the Dragon Glyph: Lost Ruins |achieve 16067 |goto The Azure Span/0 70.56,46.26 |notravel
|tip Inside the open room at the top of the tower.
step
Collect the Dragon Glyph: Vakthros Range |achieve 16073 |goto The Azure Span/0 72.57,39.69 |notravel
|tip High in the air, above the ice on top of the mountain.
step
Collect the Dragon Glyph: Kalthraz Fortress |achieve 16072 |goto The Azure Span/0 67.64,29.12 |notravel
|tip Fly through the hole in the side of the top of the tower.
step
Collect the Dragon Glyph: The Fallen Course |achieve 16673 |goto The Azure Span/0 56.82,16.07 |notravel
|tip Near the ground, above the road.
step
Collect the Dragon Glyph: South Hold Gate |achieve 16100 |goto Thaldraszus/0 35.57,85.53 |notravel
|tip Inside the open room at the top of the tower.
step
Collect the Dragon Glyph: Stormshroud Peak |achieve 16099 |goto Thaldraszus/0 46.10,73.97 |notravel
|tip Above the top of the mountain peak.
step
Collect the Dragon Glyph: Valdrakken |achieve 16101 |goto Valdrakken/0 59.22,38.05 |notravel
|tip Above the top of the tower.
step
Collect the Dragon Glyph: Algeth'era |achieve 16102 |goto Thaldraszus/0 49.89,40.32 |notravel
|tip Above the top of the tower.
step
Collect the Dragon Glyph: Tyrhold |achieve 16103 |goto Thaldraszus/0 61.56,56.61 |notravel
|tip On top of the large floating rock.
step
Collect the Dragon Glyph: Gelikyr Overlook |achieve 16666 |goto Thaldraszus/0 52.69,67.46 |notravel
|tip Above the bridge.
step
Collect the Dragon Glyph: Passage of Time |achieve 16667 |goto Thaldraszus/0 55.69,72.21 |notravel
|tip High in the air, near the large stone arch.
step
Collect the Dragon Glyph: Temporal Conflux |achieve 16098 |goto Thaldraszus/0 66.01,82.34 |notravel
|tip Inside the open room at the top of the tower.
step
Collect the Dragon Glyph: Thaldrazsus Apex |achieve 16107 |goto Thaldraszus/0 72.95,69.19 |notravel
|tip Above the top of the mountain peak.
step
Collect the Dragon Glyph: Vault of the Incarnates |achieve 16106 |goto Thaldraszus/0 72.39,51.51 |notravel
|tip Above a pool of lava.
step
Collect the Dragon Glyph: Algeth'ar Academy |achieve 16104 |goto Thaldraszus/0 62.41,40.41 |notravel
|tip Inside the large open room at the top of the tower, up near the ceiling.
step
Collect the Dragon Glyph: Veiled Ossuary |achieve 16105 |goto Thaldraszus/0 67.10,11.76 |notravel
|tip Inside the large open room at the top of the tower.
step
Collect the Dragon Glyph: Talon's Watch |achieve 17411/2 |goto The Forbidden Reach/5 20.58,91.36 |notravel
|tip In the base of the tower.
step
Collect the Dragon Glyph: War Creche |achieve 17411/6 |goto The Forbidden Reach/5 48.53,68.96 |notravel
|tip On top of the mountain.
step
Collect the Dragon Glyph: Talonlord's Perch |achieve 17411/7 |goto The Forbidden Reach/5 59.04,65.09 |notravel
|tip Inside the top of the tower.
step
Collect the Dragon Glyph: Stormsunder Mountain |achieve 17411/5 |goto The Forbidden Reach/5 77.27,55.13 |notravel
step
Collect the Dragon Glyph: Dragonskull Island |achieve 17411/4 |goto The Forbidden Reach/5 79.46,32.65 |notravel
|tip Underneath the trees.
step
Collect the Dragon Glyph: Fragstone Vault |achieve 17411/3 |goto The Forbidden Reach/5 62.54,32.43 |notravel
|tip Under the dome in the top of the tower.
step
Collect the Dragon Glyph: Caldera of the Menders |achieve 17411/8 |goto The Forbidden Reach/5 37.72,30.61 |notravel
|tip Inside the top of the tower.
step
Collect the Dragon Glyph: Northwind Point |achieve 17411/1 |goto The Forbidden Reach/5 18.32,13.22 |notravel
|tip Inside the broken tower.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Dragonriding World Tour",{
author="support@zygorguides.com",
description="This guide will walk you through completing the normal and advanced dragonriding racing quests.",
startlevel=60,
patch='100002',
},[[
step
Complete the Dragon Glyphs guide
|tip You will need all of your dragonriding abilities unlocked to continue.
Click Here to Continue |confirm
|tip
Click Here to Load the "Dragon Glyphs (All Zones)" Guide |confirm |loadguide "Leveling Guides\\Dragonflight (10-70)\\Dragon Glyphs\\Dragon Glyphs (All Zones)" |q 72488 |future
step
talk Celormu##193411
accept The Waking Shores Tour##72481 |goto The Waking Shores/0 73.25,52.06
step
talk Bronze Timekeeper##190123
Select _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Ruby Lifeshrine Loop |q 72481/1 |goto The Waking Shores/0 63.32,70.91
step
talk Bronze Timekeeper##190326
Select _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Flashfrost Flyover |q 72481/7 |goto The Waking Shores/0 62.77,74.00
step
talk Bronze Timekeeper##190473
Select _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Wild Preserve Slalom |q 72481/2 |goto The Waking Shores/0 47.01,85.58
step
talk Bronze Timekeeper##190503
Select _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Wild Preserve Circuit |q 72481/8 |goto The Waking Shores/0 42.59,94.45
step
talk Bronze Timekeeper##190519
Select _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Emberflow Flight |q 72481/3 |goto The Waking Shores/0 41.97,67.30
step
talk Bronze Timekeeper##190551
Select _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Apex Canopy River Run |q 72481/4 |goto The Waking Shores/0 23.26,84.30
step
talk Bronze Timekeeper##190667
Select _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Uktulut Coaster |q 72481/5 |goto The Waking Shores/0 55.45,41.13
step
talk Bronze Timekeeper##190753
Select _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Wingrest Roundabout |q 72481/6 |goto The Waking Shores/0 73.19,33.93
step
talk Celormu##193411
turnin The Waking Shores Tour##72481 |goto The Waking Shores/0 73.25,52.06
accept The Ohn'ahran Plains Tour##72483 |goto The Waking Shores/0 73.25,52.06
step
talk Bronze Timekeeper##190928
Select _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Sundapple Copse Circuit |q 72483/1 |goto Ohn'ahran Plains/0 63.74,30.52
step
talk Bronze Timekeeper##191422
Select _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Fly through 9 rings quickly and return to the starting point.
|tip Green orbs restore your vigor.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
Earn Bronze in the Maruuki Dash |q 72483/5 |goto Ohn'ahran Plains/0 59.93,35.55
step
talk Bronze Timekeeper##191247
Select _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Emerald Gardens Ascent |q 72483/4 |goto Ohn'ahran Plains/0 25.71,55.07
step
talk Bronze Timekeeper##196092
Select _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the River Rapids Route |q 72483/7 |goto Ohn'ahran Plains/0 43.74,66.78
step
talk Bronze Timekeeper##191511
Select _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Fly through 9 rings quickly and return to the starting point.
|tip Green orbs restore your vigor.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
Earn Bronze in the Mirror of the Sky Dash |q 72483/6 |goto Ohn'ahran Plains/0 47.48,70.63
step
talk Bronze Timekeeper##191165
Select _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Ravine River Run |q 72483/3 |goto Ohn'ahran Plains/0 80.89,72.20
step
talk Bronze Timekeeper##191121
|tip In the top of the tower.
Select _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Fen Flythrough |q 72483/2 |goto Ohn'ahran Plains/0 86.26,35.82
step
talk Celormu##199118
turnin The Ohn'ahran Plains Tour##72483 |goto Ohn'ahran Plains/0 88.09,36.28
accept The Azure Span Tour##72485 |goto Ohn'ahran Plains/0 88.09,36.28
step
talk Bronze Timekeeper##191947
Select _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Azure Span Slalom |q 72485/2 |goto The Azure Span/0 20.95,22.63
step
talk Bronze Timekeeper##192886
Select _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Iskaara Tour |q 72485/4 |goto The Azure Span/0 16.58,49.37
step
talk Bronze Timekeeper##193027
Select _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Archive Ambit |q 72485/6 |goto The Azure Span/0 42.27,56.77
step
talk Bronze Timekeeper##194372
Select _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Azure Span Sprint |q 72485/1 |goto The Azure Span/0 47.91,40.79
step
talk Bronze Timekeeper##192945
Select _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Frostland Flyover |q 72485/5 |goto The Azure Span/0 48.47,35.79
step
talk Bronze Timekeeper##192115
Select _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid flaming orange balls around the lava fields.
Earn Bronze in the Vakthros Ascent |q 72485/3 |goto The Azure Span/0 71.29,24.64
step
talk Celormu##199119
turnin The Azure Span Tour##72485 |goto The Azure Span/0 63.16,13.65
accept The Thaldraszus Tour##72487 |goto The Azure Span/0 63.16,13.65
step
talk Bronze Timekeeper##194348
Select _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Garden Gallivant |q 72487/5 |goto Thaldraszus/0 39.50,76.19
step
talk Bronze Timekeeper##192555
Select _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Flowing Forest Flight |q 72487/1 |goto Thaldraszus/0 57.77,75.01
step
talk Bronze Timekeeper##193651
Select _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Tyrhold Trial |q 72487/2 |goto Thaldraszus/0 57.24,66.90
step
talk Bronze Timekeeper##193951
Select _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Academy Ascent |q 72487/4 |goto Thaldraszus/0 60.29,41.59
step
talk Bronze Timekeeper##194372
Select _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Caverns Criss-Cross |q 72487/6 |goto Thaldraszus/0 58.06,33.62
step
talk Bronze Timekeeper##193911
|tip Inside the tower.
Select _"I'd like to try the course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Cliffside Circuit |q 72487/3 |goto Thaldraszus/0 37.65,48.93
step
talk Celormu##199120
turnin The Thaldraszus Tour##72487 |goto Thaldraszus/0 46.04,63.03
accept The Waking Shores Advanced Tour##72482 |goto Thaldraszus/0 46.04,63.03
step
The following steps require advanced piloting
|tip You will need to consistently maintain a very high rate of speed.
|tip Courses will typically have floating obstacles to avoid that will stall your flight.
|tip Collecting all green orbs in your path is critical if you wish to achieve gold rating.
|tip Be sure to catch every wind draft along the race path as well.
Click Here to Continue |confirm |q 72488 |future
step
talk Bronze Timekeeper##190123
Select _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid large purple orbs along the course path.
Earn Bronze in the Advanced Ruby Lifeshrine Loop |q 72482/1 |goto The Waking Shores/0 63.32,70.91
step
talk Bronze Timekeeper##190326
Select _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid large purple orbs along the course path.
Earn Bronze in the Advanced Flashfrost Flyover |q 72482/7 |goto The Waking Shores/0 62.77,74.00
step
talk Bronze Timekeeper##190473
Select _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid large purple orbs along the course path.
Earn Bronze in the Advanced Wild Preserve Slalom |q 72482/2 |goto The Waking Shores/0 47.01,85.58
step
talk Bronze Timekeeper##190503
Select _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Advanced Wild Preserve Circuit |q 72482/8 |goto The Waking Shores/0 42.59,94.45
step
talk Bronze Timekeeper##190519
Select _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid gouts of lava that spray into the air.
Earn Bronze in the Advanced Emberflow Flight |q 72482/3 |goto The Waking Shores/0 41.97,67.30
step
talk Bronze Timekeeper##190551
Select _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid large purple orbs along the course path.
Earn Bronze in the Advanced Apex Canopy River Run |q 72482/4 |goto The Waking Shores/0 23.26,84.30
step
talk Bronze Timekeeper##190667
Select _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid large purple orbs along the course path.
Earn Bronze in the Advanced Uktulut Coaster |q 72482/5 |goto The Waking Shores/0 55.45,41.13
step
talk Bronze Timekeeper##190753
Select _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid large purple orbs along the course path.
Earn Bronze in the Advanced Wingrest Roundabout |q 72482/6 |goto The Waking Shores/0 73.19,33.93
step
talk Celormu##193411
turnin The Waking Shores Advanced Tour##72482 |goto The Waking Shores/0 73.25,52.06
accept The Ohn'ahran Plains Advanced Tour##72484 |goto The Waking Shores/0 73.25,52.06
step
talk Bronze Timekeeper##190928
Select _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid large purple orbs along the course path.
Earn Bronze in the Advanced Sundapple Copse Circuit |q 72484/1 |goto Ohn'ahran Plains/0 63.74,30.52
step
talk Bronze Timekeeper##191247
Select _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Advanced Emerald Gardens Ascent |q 72484/4 |goto Ohn'ahran Plains/0 25.71,55.07
step
talk Bronze Timekeeper##196092
Select _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Advanced River Rapids Route |q 72484/5 |goto Ohn'ahran Plains/0 43.74,66.78
step
talk Bronze Timekeeper##191165
Select _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid large purple orbs along the course path.
Earn Bronze in the Advanced Ravine River Run |q 72484/3 |goto Ohn'ahran Plains/0 80.89,72.20
step
talk Bronze Timekeeper##191121
|tip In the top of the tower.
Select _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid large purple orbs along the course path.
Earn Bronze in the Advanced Fen Flythrough |q 72484/2 |goto Ohn'ahran Plains/0 86.26,35.82
step
talk Celormu##199118
turnin The Ohn'ahran Plains Advanced Tour##72484 |goto Ohn'ahran Plains/0 88.09,36.28
accept The Azure Span Advanced Tour##72486 |goto Ohn'ahran Plains/0 88.09,36.28
step
talk Bronze Timekeeper##191947
Select _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Advanced Azure Span Slalom |q 72486/2 |goto The Azure Span/0 20.95,22.63
step
talk Bronze Timekeeper##192886
Select _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Advanced Iskaara Tour |q 72486/4 |goto The Azure Span/0 16.58,49.37
step
talk Bronze Timekeeper##193027
Select _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Advanced Archive Ambit |q 72486/6 |goto The Azure Span/0 42.27,56.77
step
talk Bronze Timekeeper##194372
Select _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Advanced Azure Span Sprint |q 72486/1 |goto The Azure Span/0 47.91,40.79
step
talk Bronze Timekeeper##192945
Select _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Advanced Frostland Flyover |q 72486/5 |goto The Azure Span/0 48.47,35.79
step
talk Bronze Timekeeper##192115
Select _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid flaming orange balls around the lava fields.
Earn Bronze in the Advanced Vakthros Ascent |q 72486/3 |goto The Azure Span/0 71.29,24.64
step
talk Celormu##199119
turnin The Azure Span Advanced Tour##72486 |goto The Azure Span/0 63.16,13.65
accept The Thaldraszus Advanced Tour##72488 |goto The Azure Span/0 63.16,13.65
step
talk Bronze Timekeeper##194348
Select _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Advanced Garden Gallivant |q 72488/5 |goto Thaldraszus/0 39.50,76.19
step
talk Bronze Timekeeper##192555
Select _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Advanced Flowing Forest Flight |q 72488/1 |goto Thaldraszus/0 57.77,75.01
step
talk Bronze Timekeeper##193651
Select _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid flaming orange balls around the lava fields.
Earn Bronze in the Advanced Tyrhold Trial |q 72488/2 |goto Thaldraszus/0 57.24,66.90
step
talk Bronze Timekeeper##193951
Select _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid large purple orbs along the course path.
Earn Bronze in the Advanced Academy Ascent |q 72488/4 |goto Thaldraszus/0 60.29,41.59
step
talk Bronze Timekeeper##194372
Select _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
Earn Bronze in the Advanced Caverns Criss-Cross |q 72488/6 |goto Thaldraszus/0 58.06,33.62
step
talk Bronze Timekeeper##193911
|tip Inside the tower.
Select _"I'd like to try the Advanced course."_
|tip The race will start in a few seconds.
|tip You will begin at half vigor.
|tip Green orbs will restore one vigor.
|tip It is critical to maintain a fast pace with "Surge Forward" to earn gold time.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|tip Avoid large purple orbs along the course path.
Earn Bronze in the Advanced Cliffside Circuit |q 72488/3 |goto Thaldraszus/0 37.65,48.93
step
talk Celormu##199120
turnin The Thaldraszus Advanced Tour##72488 |goto Thaldraszus/0 46.04,63.03
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Dragonflight Campaign",{
author="support@zygorguides.com",
description="This guide will walk you through completing the various chapters of the Dragonflight campaign.",
condition_suggested=function() return level >= 68 and not completedallq(67084,66128,66444,66547,66402,69888) end,
startlevel=68,
patch='100002',
},[[
step
Reach Level 68 |ding 68
|tip Use the leveling guides to accomplish this.
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
accept Renown of the Dragon Isles##71232 |goto Valdrakken/0 58.00,34.60
step
talk Koszaru##213930
turnin Renown of the Dragon Isles##71232 |goto Valdrakken/0 48.12,58.64
accept Open Orientation##72585 |goto Valdrakken/0 48.12,58.64
step
talk Unatos##193015
|tip Inside the building, on the ground floor.
accept Orientation: Valdrakken##72406 |goto Valdrakken/0 58.16,35.11
step
talk Kaestrasz##185561
Meet the Drake Manuscript and Armor Supplier |q 72406/2 |goto Valdrakken/0 46.67,78.94
step
talk Dothenos##191000
Meet the Trade Coordinator |q 72406/3 |goto Valdrakken/0 36.38,63.01
step
talk Provisioner Thom##193659
|tip Inside the building.
Meet the Equipment Supplier |q 72406/1 |goto Valdrakken/0 36.57,50.64
step
talk Unatos##193015
|tip Inside the building, on the ground floor.
turnin Orientation: Valdrakken##72406 |goto Valdrakken/0 58.17,35.12
step
talk Naleidea Rivergleam##186869
accept Orientation: Dragonscale Basecamp##72397 |goto The Waking Shores/0 47.88,82.41
step
talk Rae'ana##188265
Meet the Scholars Supplier |q 72397/1 |goto The Waking Shores/0 47.92,82.08
step
talk Granpap Whiskers##187408
Meet the Catalogers Supplier |q 72397/2 |goto The Waking Shores/0 47.73,83.23
step
talk Pathfinder Jeb##187700
Meet the Explorers Supplier |q 72397/3 |goto The Waking Shores/0 47.33,83.40
step
talk Boss Magor##189065
Meet the Artisans Supplier |q 72397/4 |goto The Waking Shores/0 46.94,82.89
step
talk Cataloger Jakes##189226
|tip Inside the building.
Meet the Keeper of Renown |q 72397/5 |goto The Waking Shores/0 47.11,82.57
step
talk Toddy Whiskers##187276
|tip Inside the building.
turnin Orientation: Dragonscale Basecamp##72397 |goto The Waking Shores/0 47.22,82.73
step
talk Sansok Khan##191283
accept Orientation: Maruukai##72429 |goto Ohn'ahran Plains/0 63.41,41.39
step
talk Quartermaster Huseng##196707
|tip Inside the building.
Meet the Renown Quartermaster |q 72429/2 |goto Ohn'ahran Plains/0 60.40,37.72
step
talk Agari Dotur##185179
|tip Inside the building.
Meet the Keeper of Renown |q 72429/1 |goto Ohn'ahran Plains/0 60.40,37.66
step
talk Agari Dotur##185179
|tip Inside the building.
turnin Orientation: Maruukai##72429 |goto Ohn'ahran Plains/0 60.40,37.66
step
talk Murik##193006
accept Orientation: Iskaara##72435 |goto The Azure Span/0 13.14,49.26
step
talk Arvik##186449
Meet the Equipment Supplier |q 72435/1 |goto The Azure Span/0 12.90,48.82
step
talk Norukk##196544
Meet the Drake Scholar |q 72435/4 |goto The Azure Span/0 12.93,48.62
step
talk Tatto##186462
Meet the Mount Supplier |q 72435/3 |goto The Azure Span/0 13.80,49.73
step
talk Rokkutuk##194059
Meet the Recipe Supplier |q 72435/2 |goto The Azure Span/0 13.91,50.08
step
talk Murik##193006
turnin Orientation: Iskaara##72435 |goto The Azure Span/0 13.14,49.26
step
talk Koszaru##213930
turnin Open Orientation##72585 |goto Valdrakken/0 48.12,58.64
accept Learning Ingenuity##72773 |goto Valdrakken/0 48.12,58.64
step
ding 70
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
accept To Tyrhold##70437 |goto Valdrakken/0 58.11,34.87
step
talk Alexstrasza the Life-Binder##187678
Select _"I am ready."_ |gossip 107526
Speak to Alexstrasza |q 70437/1 |goto Valdrakken/0 58.11,34.87
step
Travel to Tyrhold |q 70437/2 |goto Thaldraszus/0 57.46,58.73
step
talk Skygazer Paatu##186443
turnin To Tyrhold##70437 |goto Thaldraszus/0 57.46,58.73
accept Aspect Power##66675 |goto Thaldraszus/0 57.46,58.73
step
talk Alexstrasza the Life-Binder##187658
Select _"I am ready to begin."_ |gossip 55436
Begin the Ritual |q 66675/1 |goto Thaldraszus/0 57.46,58.73
step
kill Ezrigeth##187666 |q 66675/2 |goto Thaldraszus/0 57.64,58.40
step
Watch the dialogue
talk Nozdormu##192455
turnin Aspect Power##66675 |goto Thaldraszus/0 57.45,59.07
accept Red Dawn##67073 |goto Thaldraszus/0 57.45,59.07
step
talk Alexstrasza the Life-Binder##190902
turnin Red Dawn##67073 |goto Thaldraszus/0 72.51,56.16
step
talk Greyzik Cobblefinger##196066
turnin Learning Ingenuity##72773 |goto Valdrakken/0 84.21,54.39
accept Jump-Start? Jump-Starting!##70180 |goto Valdrakken/0 84.21,54.39
step
clicknpc Goblin Gyrocopter##196104
Pilot the Goblin Gyrocopter |q 70180/1 |goto Valdrakken/0 84.73,54.77
step
Super-Charge the Device |q 70180/2 |goto Valdrakken/0 84.04,53.56
|tip Use the {o}Electromagnetic Bolt 2000{} ability.
|tip Shoot the {o}console on the ground{} repeatedly.
step
Eject from the Gyrocopter |q 70180/3 |goto Valdrakken/0 84.04,53.56
|tip Use the {o}Eject!{} ability.
step
click Engine of Innovation
Activate the Engine of Innovation |q 70180/4 |goto Valdrakken/0 84.04,53.56
step
talk Maiden of Inspiration##196475
turnin Jump-Start? Jump-Starting!##70180 |goto Valdrakken/0 84.35,53.56
accept In Tyr's Footsteps##70845 |goto Valdrakken/0 84.35,53.56
step
click Ornamental Statue
turnin In Tyr's Footsteps##70845 |goto The Azure Span/0 67.18,30.72
accept First Challenge of Tyr: Finesse##70181 |goto The Azure Span/0 67.18,30.72
step
clicknpc Maiden of Inspiration##194533
Watch the dialogue
|tip You will be {o}launched into the air{}.
|tip You will need to {o}float through large glowing rings{} in the air nearby.
Speak with the Maiden of Inspiration to Begin |q 70181/1 |goto The Azure Span/0 67.13,30.92
step
Fly Through #10# Rings |q 70181/2 |goto The Azure Span/0 66.14,29.94
|tip Use the {o}Boost{} button ability to {o}regain altitude{}.
|tip You have {o}2 minutes{} to complete this.
|tip If the {o}time expires{}, you will {o}fall to the ground{}.
step
talk Maiden of Inspiration##195827
turnin First Challenge of Tyr: Finesse##70181 |goto The Azure Span/0 67.12,30.92
accept The Sweet Taste of Victory##70182 |goto The Azure Span/0 67.12,30.92
step
Watch the dialogue
click Portal to Valdrakken
Return to Valdrakken |complete zone("Valdrakken") |goto The Azure Span/0 67.18,30.92 |q 70182
step
Return to the Engine of Innovation |q 70182/1 |goto Valdrakken/0 84.34,53.54
step
talk Maiden of Inspiration##196475
turnin The Sweet Taste of Victory##70182 |goto Valdrakken/0 84.34,53.54
accept Fueling the Engine##70633 |goto Valdrakken/0 84.34,53.54
step
Use the Bottled Essence to Power up the Engine |q 70633/1 |goto Valdrakken/0 84.34,53.54
|tip Use the {o}Create Spark of Ingenuity{} button ability.
step
talk Maiden of Inspiration##196475
turnin Fueling the Engine##70633 |goto Valdrakken/0 84.34,53.54
accept In Tyr's Footsteps: The Ohn'ahran Plains##70339 |goto Valdrakken/0 84.34,53.54
step
talk Greyzik Cobblefinger##196066
accept Crafting Orders##72783 |goto Valdrakken/0 85.02,54.45
step
talk Head Clerk Mimzy Sprazzlerock##185542
View the Crafting Orders from Mimzy Sprazzlerock |q 72783/1 |goto Valdrakken/0 34.59,63.03
step
_Click the Complete Quest Box_
turnin Crafting Orders##72783
step
click Ornamented Statue
turnin In Tyr's Footsteps: The Ohn'ahran Plains##70339 |goto Ohn'ahran Plains/0 66.14,55.21
accept Second Challenge of Tyr: Might##70376 |goto Ohn'ahran Plains/0 66.14,55.21
step
talk Maiden of Inspiration##195088
Select _"I'm ready to begin."_ |gossip 56368
Speak with the Maiden of Inspiration |q 70376/2 |goto Ohn'ahran Plains/0 66.28,55.33
step
Kill enemies that attack in waves
|tip Use the {o}Accelerated Healing{} button ability for an {o}instant heal{}.
kill Proto Dragon##195177
Defeat the Enemies |q 70376/1 |goto Ohn'ahran Plains/0 66.28,55.33
'|kill Centaur Fighter##194950, Fire Primalist##195130, Djaradin Warrior##195175
step
talk Maiden of Inspiration##195924
turnin Second Challenge of Tyr: Might##70376 |goto Ohn'ahran Plains/0 66.28,55.33
accept Well Earned Victory##70341 |goto Ohn'ahran Plains/0 66.28,55.33
step
Watch the dialogue
click Portal to Valdrakken
Return to Valdrakken |complete zone("Valdrakken") |goto Ohn'ahran Plains/0 66.26,55.40 |q 70341
step
Return to the Engine of Innovation |q 70341/1 |goto Valdrakken/0 84.34,53.54
step
talk Maiden of Inspiration##196475
turnin Well Earned Victory##70341 |goto Valdrakken/0 84.34,53.54
accept In Tyr's Footsteps: The Waking Shores##70650 |goto Valdrakken/0 84.34,53.54
step
Enter the cave |goto The Waking Shores/0 63.87,40.95 < 20 |walk
talk Maiden of Inspiration##196475
|tip Inside the cave.
turnin In Tyr's Footsteps: The Waking Shores##70650 |goto The Waking Shores/0 64.05,41.48
accept Third Challenge of Tyr: Persistence##70509 |goto The Waking Shores/0 64.05,41.48
step
Watch the dialogue
|tip Inside the cave.
talk Maiden of Inspiration##195558
Select _"What happened?"_ |gossip 63890
Speak with the Maiden of Inspiration |q 70509/1 |goto The Waking Shores/0 64.10,41.39
step
Watch the dialogue
|tip Inside the cave.
Watch the Projection |q 70509/2 |goto The Waking Shores/0 64.10,41.39
step
click Broken Head##380940
|tip Inside the building.
Recover the Broken Head |q 70509/3 |goto The Waking Shores/0 66.35,34.88
step
click Broken Arm##380941
Recover the Broken Arm |q 70509/4 |goto The Waking Shores/0 64.44,34.29
step
kill Qalashi Marauder##195678
|tip He walks around this area.
Recover the Broken Orb |q 70509/5 |goto The Waking Shores/0 65.60,32.69
step
Enter the cave |goto The Waking Shores/0 63.87,40.95 < 20 |walk
click Broken Ornamented Statue
|tip Inside the cave.
Repair the Statue |q 70509/6 |goto The Waking Shores/0 64.05,41.48
step
talk Maiden of Inspiration##195737
|tip Inside the cave.
turnin Third Challenge of Tyr: Persistence##70509 |goto The Waking Shores/0 64.10,41.39
accept Third Challenge of Tyr: Persistence Embodied##70621 |goto The Waking Shores/0 64.10,41.39 |instant
accept Victorious##70510 |goto The Waking Shores/0 64.10,41.39
step
click Portal to Valdrakken
|tip Inside the cave.
Use the Portal |q 70510/2 |goto The Waking Shores/0 64.05,41.37
step
Return to the Engine of Innovation |q 70510/1 |goto Valdrakken/0 84.34,53.55
step
talk Maiden of Inspiration##196475
turnin Victorious##70510 |goto Valdrakken/0 84.34,53.55
accept Fourth Challenge of Tyr: Resourcefulness##70881 |goto Valdrakken/0 84.34,53.55
step
_Inside the Halls of Infusion Dungeon:_
kill Watcher Irideus##189719
|tip Use the {o}Halls of Infusion{} dungeon guide.
collect Irideus' Power Core##200108 |q 70881/1 |goto Halls of Infusion/0 61.58,35.28
step
_Inside the Halls of Infusion Dungeon:_
kill Primal Tsunami##189729 |q 70881/2 |goto Halls of Infusion/1 42.76,47.50
|tip Use the {o}Halls of Infusion{} dungeon guide.
step
talk Maiden of Inspiration##196475
turnin Fourth Challenge of Tyr: Resourcefulness##70881 |goto Valdrakken/0 84.34,53.55
accept Fifth Challenge of Tyr: Ingenuity##70899 |goto Valdrakken/0 84.35,53.55
step
use Irideus' Power Core##200120
|tip Use it on enemies that look like {o}metal golems{}.
Attune Irideus' Power Core |q 70899/1 |goto Thaldraszus/0 58.66,58.28
'|clicknpc Malfunctioning Protector##198343, Custodial Protector##192694
step
talk Maiden of Inspiration##196475
turnin Fifth Challenge of Tyr: Ingenuity##70899 |goto Valdrakken/0 84.35,53.56
accept Innovating the Engine##70900 |goto Valdrakken/0 84.35,53.56
step
Replace the Power Core |q 70900/1 |goto Valdrakken/0 84.34,53.57
|tip Use the {o}Insert the Power Core{} button ability.
step
talk Maiden of Inspiration##196475
turnin Innovating the Engine##70900 |goto Valdrakken/0 84.35,53.56
step
talk Herald Flaps##197478
accept Emerald Summons##66620 |goto Valdrakken/0 45.40,55.20
accept Ally of Dragons##68794 |goto Valdrakken/0 45.40,55.20
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
turnin Ally of Dragons##68794 |goto Valdrakken/0 58.16,34.92
accept The Gift of Silver##67074 |goto Valdrakken/0 58.16,34.92
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
Select _"What is this gift from Tyr?"_ |gossip 55708
Speak to Alexstrasza |q 67074/1 |goto Valdrakken/0 58.16,34.92
step
Watch the dialogue
|tip At the top of the tower.
Reveal the Gift |q 67074/2 |goto Valdrakken/0 59.22,37.97
step
click Silver Scale
|tip At the top of the tower.
collect Silver Scale##197845 |q 67074/3 |goto Valdrakken/0 59.22,37.93
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
turnin The Gift of Silver##67074 |goto Valdrakken/0 58.16,34.92
accept The Legacy of Tyrhold##70703 |goto Valdrakken/0 58.16,34.92
step
Meet Koranos at Tyrhold |q 70703/1 |goto Thaldraszus/0 58.18,58.74
step
click Silver Scale
Place the Silver Scale |q 70703/2 |goto Thaldraszus/0 58.18,58.74
step
click Tyrhold Console
Activate the Tyrhold Device |q 70703/3 |goto Thaldraszus/0 58.17,58.74
step
Watch the dialogue
talk Watcher Koranos##192480
turnin The Legacy of Tyrhold##70703 |goto Thaldraszus/0 58.15,58.84
accept The Magic Within##67075 |goto Thaldraszus/0 58.15,58.84
step
click Tyrhold Console
Find the Hidden Magic |q 67075/1 |goto Thaldraszus/0 58.34,57.83 |count 1
step
click Tyrhold Console
Find the Hidden Magic |q 67075/1 |goto Thaldraszus/0 57.88,55.61 |count 2
step
click Tyrhold Console
Find the Hidden Magic |q 67075/1 |goto Thaldraszus/0 59.80,56.37 |count 3
step
click Tyrhold Console
Find the Hidden Magic |q 67075/1 |goto Thaldraszus/0 59.89,61.13 |count 4
step
click Tyrhold Console
Find the Hidden Magic |q 67075/1 |goto Thaldraszus/0 57.90,61.96 |count 5
step
click Tyrhold Console
Find the Hidden Magic |q 67075/1 |goto Thaldraszus/0 58.34,59.65 |count 6
step
click Silver Scale
Place the Silver Scale |q 67075/2 |goto Thaldraszus/0 58.18,58.74
step
Watch the dialogue
talk Watcher Koranos##192480
turnin The Magic Within##67075 |goto Thaldraszus/0 58.15,58.84
accept A Spark of Discovery##67076 |goto Thaldraszus/0 58.15,58.84
step
talk Titan Spark##192707
Select  _"<Investigate the spark.>"_ |gossip 55721
Investigate the Spark |q 67076/1 |goto Thaldraszus/0 58.14,58.55
step
Follow the Spark |q 67076/2 |goto Thaldraszus/0 62.20,59.20
|tip Stay close to the {o}Titan Spark{} as it moves around.
|tip It eventually travels to this location.
'|clicknpc Titan Spark##193814
step
Watch the dialogue
talk Kalecgos##193492
turnin A Spark of Discovery##67076 |goto Thaldraszus/0 62.20,59.39
step
talk Alexstrasza the Life-Binder##192573
accept Memories of the Past##67077 |goto Thaldraszus/0 62.12,59.28
step
talk Nozdormu##192492
Select _"Timeless One, I need to borrow your sight."_ |gossip 55667
Watch the dialogue
Share in the Timeless Sight |q 67077/1 |goto Thaldraszus/0 62.13,59.41
step
Watch the dialogue
Witness the Memory |q 67077/2 |goto Thaldraszus/0 62.13,58.85
step
talk Nozdormu##192492
Select  _"<Ask about the memory.>"_ |gossip 55668
Speak to Nozdormu |q 67077/4 |goto Thaldraszus/0 62.14,59.41
step
talk Kalecgos##193492
Select  _"<Ask about the memory>"_ |gossip 55646
Speak to Kalecgos |q 67077/3 |goto Thaldraszus/0 62.20,59.38
step
talk Alexstrasza the Life-Binder##192573
Select  _"<Ask about the memory>"_ |gossip 55696
Speak to Alexstrasza |q 67077/5 |goto Thaldraszus/0 62.12,59.28
step
talk Alexstrasza the Life-Binder##192573
turnin Memories of the Past##67077 |goto Thaldraszus/0 62.12,59.28
step
Watch the dialogue
talk Keeper Tyr##192496
accept Parting Instructions##67078 |goto Thaldraszus/0 62.20,59.20
step
click Silver Scale
|tip Inside the building.
Place the Silver Scale |q 67078/1 |goto Thaldraszus/0 60.55,58.74
step
click Forge Console
|tip Inside the building.
Activate the Forge |q 67078/2 |goto Thaldraszus/0 60.55,58.74
step
talk Watcher Koranos##192480
|tip Inside the building.
turnin Parting Instructions##67078 |goto Thaldraszus/0 60.36,58.87
accept Hard Lock Life##67079 |goto Thaldraszus/0 60.36,58.87
step
clicknpc Maiden of Patience##192720
|tip She will be {o}stunned and weakened{}.
|tip She walks around this area.
kill Maiden of Patience##192720
collect Secondary Security Disc##197863 |q 67079/2 |goto Thaldraszus/0 57.66,63.69
step
clicknpc Maiden of Diligence##192718
|tip She will be {o}stunned and weakened{}.
|tip She walks around this area.
kill Maiden of Diligence##192718
collect Primary Security Disc##197862 |q 67079/1 |goto Thaldraszus/0 57.81,53.64
step
talk Watcher Koranos##192480
|tip Inside the building.
turnin Hard Lock Life##67079 |goto Thaldraszus/0 60.37,58.87
step
Watch the dialogue
|tip Inside the building.
talk Keeper Tyr##192496
accept An Infusion of Materials##67081 |goto Thaldraszus/0 60.53,58.64
stickystart "Collect_Ancient_Titansteel_Ingots"
step
_Inside the Halls of Infusion Dungeon:_
kill Primal Tsunami##189729 |q 67081/2 |goto Halls of Infusion/1 42.76,47.50
|tip Use the {o}Halls of Infusion{} dungeon guide.
step
label "Collect_Ancient_Titansteel_Ingots"
collect 10 Ancient Titansteel Ingot##198038 |q 67081/1
|tip Loot them from {o}bosses{} inside the {o}Halls of Infusion{} dungeon.
|tip Use the {o}Halls of Infusion{} dungeon guide. |notinsticky
step
talk Keeper Tyr##192496
|tip Inside the building.
turnin An Infusion of Materials##67081 |goto Thaldraszus/0 60.53,58.64
accept The Silver Purpose##67084 |goto Thaldraszus/0 60.53,58.64
step
click Ancient Titansteel Ingots
|tip Inside the building.
Place the Ingots |q 67084/1 |goto Thaldraszus/0 60.81,58.74
step
click Forge Console
|tip Inside the building.
Activate the Secondary Console |q 67084/2 |goto Thaldraszus/0 60.64,59.17 |count 1
step
click Forge Console
|tip Inside the building.
Activate the Secondary Console |q 67084/2 |goto Thaldraszus/0 60.63,58.34 |count 2
step
click Silver Scale
|tip Inside the building.
Activate the Silver Scale |q 67084/3 |goto Thaldraszus/0 60.55,58.74
step
talk Alexstrasza the Life-Binder##192573
|tip Inside the building.
turnin The Silver Purpose##67084 |goto Thaldraszus/0 60.19,58.64
step
talk Rowie##197631
accept A Lost Tribe##68863 |goto Valdrakken/0 45.60,55.09
step
talk Murik##193006
turnin A Lost Tribe##68863 |goto The Azure Span/0 13.14,49.26
accept Sudden Isolation##68640 |goto The Azure Span/0 13.14,49.26
step
talk Guard Hakota##188301
turnin Sudden Isolation##68640 |goto The Waking Shores/0 55.12,38.26
accept Pressing Matters##66409 |goto The Waking Shores/0 55.12,38.26
step
kill Flameshaper Lorak##197260
collect Qalashi Trophy##191855 |q 66409/1 |goto The Waking Shores/0 65.53,31.77
step
talk Guard Hakota##188301
turnin Pressing Matters##66409 |goto The Waking Shores/0 55.12,38.26
accept Worst Impressions##66410 |goto The Waking Shores/0 55.12,38.26
step
Watch the dialogue
Follow Guard Hakota |q 66410/1 |goto The Waking Shores/0 53.74,37.97
'|clicknpc Guard Hakota##188301
step
talk Tutaqan##187323
Select _"I have slain your enemies. You have seen proof of my deeds."_ |gossip 55407
Speak to Tutaqan |q 66410/3 |goto The Waking Shores/0 53.61,37.96
step
talk Tutaqan##187323
turnin Worst Impressions##66410 |goto The Waking Shores/0 53.61,37.96
step
talk Crafter Kuliqa##188285
accept Salvaging Supplies##66417 |goto The Waking Shores/0 53.65,38.01
step
talk Elder Unujaak##188283
accept Troubled Waters##66411 |goto The Waking Shores/0 53.66,37.91
stickystart "Collect_Succulent_Snapper_Meat"
stickystart "Collect_Whalebone_Fragments"
stickystart "Collect_Waterlogged_Wood"
step
use the Tuskarr Fishing Net##192191
|tip Use it on {o}fish in the water{}.
Catch #10# Warmwater Riverfish |q 66411/1 |goto The Waking Shores/0 52.27,35.13
'|clicknpc Warmwater Riverfish##189455
step
label "Collect_Succulent_Snapper_Meat"
kill Agitated Snapper##188334+
collect 6 Succulent Snapper Meat##191858 |q 66411/2 |goto The Waking Shores/0 52.27,35.13
step
label "Collect_Whalebone_Fragments"
click Whalebone Fragment##376805+
|tip They look like {o}large bone tusks{}.
collect 8 Whalebone Fragment##191862 |q 66417/1 |goto The Waking Shores/0 52.94,34.85
step
label "Collect_Waterlogged_Wood"
click Pile of Driftwood##376802+
|tip They look like {o}piles of logs{}.
collect 30 Waterlogged Wood##191863 |q 66417/2 |goto The Waking Shores/0 52.94,34.85
step
talk Elder Unujaak##188283
turnin Troubled Waters##66411 |goto The Waking Shores/0 54.11,38.19
step
talk Crafter Kuliqa##188285
Select  _"<Hand over the materials.>"_ |gossip 55305
Deliver the Materials to Crafter Kuliqa |q 66417/3 |goto The Waking Shores/0 54.26,38.67
step
talk Crafter Kuliqa##188285
turnin Salvaging Supplies##66417 |goto The Waking Shores/0 54.26,38.67
accept Testing the Tuskarrsenal##66418 |goto The Waking Shores/0 54.26,38.67
step
click Uktulut Bone Spear
Take the Uktulut Bone Spear |q 66418/1 |goto The Waking Shores/0 54.25,38.64
step
Destroy #4# Tuskarr Training Dummies |q 66418/2 |goto The Waking Shores/0 54.08,36.83
|tip Use the {o}Tuskarr Spear Strike{} button ability on {o}Tuskarr Training Dummies{}.
'|clicknpc Tuskarr Training Dummy##190621, Tuskarr Training Dummy##190624, Tuskarr Training Dummy##188352, Tuskarr Training Dummy##190623
step
talk Crafter Kuliqa##188285
turnin Testing the Tuskarrsenal##66418 |goto The Waking Shores/0 54.26,38.67
step
talk Tutaqan##187323
|tip He walks to this location.
accept All But One##66414 |goto The Waking Shores/0 53.70,37.97
step
Find Ipko |q 66414/1 |goto The Waking Shores/0 56.18,35.56
step
clicknpc Ipko##189808
Carry Ipko |havebuff Carrying Ipko##372806 |goto The Waking Shores/0 56.18,35.56 |q 66414
step
Return Ipko |q 66414/2 |goto The Waking Shores/0 54.92,36.41
|tip You will be {o}attacked{} along the way, causing you to {o}drop Ipko{}.
|tip Make sure to {o}click Ipko{} again.
'|clicknpc Ipko##188639
step
talk Tutaqan##187323
turnin All But One##66414 |goto The Waking Shores/0 54.92,36.40
step
talk Elder Unujaak##188283
accept Closure##66440 |goto The Waking Shores/0 54.95,36.47
step
talk Tutaqan##187323
Select  _"<Begin the ritual.>"_ |gossip 55409
Speak to Tutaqan |q 66440/1 |goto The Waking Shores/0 53.61,39.23
step
click Tuskarr Incense
Burn the Incense |q 66440/2 |goto The Waking Shores/0 53.59,39.34
step
click Fish Offering
Place the Offering |q 66440/3 |goto The Waking Shores/0 53.60,39.31
step
click Lantern of Karkut
Take the Lantern |q 66440/4 |goto The Waking Shores/0 53.58,39.29
step
Watch the dialogue
Complete the Ritual |q 66440/5 |goto The Waking Shores/0 53.61,39.23
step
talk Tutaqan##187323
turnin Closure##66440 |goto The Waking Shores/0 53.61,39.23
step
talk Elder Unujaak##188283
accept In Mourning##66431 |goto The Waking Shores/0 53.64,39.31
step
talk Tutaqan##187323
Select _"Is there anything I can do to help?"_ |gossip 55410
Offer to Help Tutaqan |q 66431/1 |goto The Waking Shores/0 53.89,41.29
step
talk Tutaqan##187323
turnin In Mourning##66431 |goto The Waking Shores/0 53.89,41.29
accept The Only Way Past Is Through##66415 |goto The Waking Shores/0 53.89,41.29
step
talk Peaceful Ottuk##188816
Approach the Peaceful Ottuk |q 66415/1 |goto The Waking Shores/0 52.85,40.99
step
talk Peaceful Ottuk##188816
Select  _"<Pet the ottuk.>"_ |gossip 107476
Pet the Peaceful Ottuk |q 66415/2 |goto The Waking Shores/0 52.85,40.99
step
Take the Peaceful Ottuk to Tutaqan |q 66415/3 |goto The Waking Shores/0 53.89,41.29
step
talk Territorial Ottuk##188813
Approach the Territorial Ottuk |q 66415/4 |goto The Waking Shores/0 54.12,40.25
step
click Broken Fishing Pole##381654
collect Broken Fishing Pole##200188 |q 66415/5 |goto The Waking Shores/0 54.48,41.05
step
click Stuffed Duckling Toy##381655
collect Stuffed Duckling Toy##200190 |q 66415/6 |goto The Waking Shores/0 52.92,39.26
step
Create the Ottuk Lure |q 66415/7 |goto The Waking Shores/0 52.92,39.26
|tip Use the {o}Create Lure{} button ability.
step
talk Territorial Ottuk##188813
Select  _"<Wiggle the toy in front of the ottuk.>"_ |gossip 107504
Begin Luring the Territorial Ottuk |havebuff Territorial Ottuk##373615 |goto The Waking Shores/0 54.12,40.25 |q 66415
step
Take the Territorial Ottuk to Tutaqan |q 66415/8 |goto The Waking Shores/0 53.89,41.29
step
talk Dutiful Ottuk##188817
Approach the Dutiful Ottuk |q 66415/9 |goto The Waking Shores/0 54.31,41.97
step
clicknpc Meaty Crab##196815
Collect the Meaty Crab |q 66415/10 |goto The Waking Shores/0 53.30,41.50
step
talk Dutiful Ottuk##188817
Select  _"<Offer the crab to the ottuk.>"_ |gossip 107506
Offer the Meaty Crab |q 66415/11 |goto The Waking Shores/0 54.31,41.97
step
Watch the dialogue
Take the Dutiful Ottuk to Tutaqan |q 66415/12 |goto The Waking Shores/0 53.89,41.29
step
talk Tutaqan##187323
turnin The Only Way Past Is Through##66415 |goto The Waking Shores/0 53.89,41.29
step
accept Calling the Hunting Party##66443 |goto The Waking Shores/0 53.89,41.29
|tip You will accept this quest automatically.
step
talk Guard Hakota##188301
Select _"What's going on?"_ |gossip 107102
Investigate the Hunting call |q 66443/1 |goto The Waking Shores/0 53.93,38.14
step
talk Guard Hakota##188301
Select  _"We must go quickly. <Skip current conversation.>"_ |gossip 107749
Listen to the Plan |q 66443/2 |goto The Waking Shores/0 53.93,38.14
step
talk Guard Hakota##188301
turnin Calling the Hunting Party##66443 |goto The Waking Shores/0 53.93,38.14
step
talk Tutaqan##187323
accept While the Iron Is Hot##66444 |goto The Waking Shores/0 53.87,38.14
step
kill Zhurtan the Riverboiler##188687 |q 66444/1 |goto The Waking Shores/0 48.59,46.00
|tip He is an {o}elite enemy{}.
|tip Your {o}allies{} will {o}help you fight{}.
step
talk Tutaqan##187323
turnin While the Iron Is Hot##66444 |goto The Waking Shores/0 53.66,37.96
step
talk Merithra##186955
|tip Up on the platform.
turnin Emerald Summons##66620 |goto Ohn'ahran Plains/0 29.79,60.04
accept A Day in the Groves##66178 |goto Ohn'ahran Plains/0 29.79,60.04
step
talk Merithra##187525
turnin A Day in the Groves##66178 |goto Ohn'ahran Plains/0 33.22,51.76
accept Seeds for the Future##66179 |goto Ohn'ahran Plains/0 33.22,51.76
accept Wake the Ancients##66180 |goto Ohn'ahran Plains/0 33.22,51.76
stickystart "Deliver_Garden_Seeds_to_Sisters"
step
use the Borrowed Breath##192555
Awaken Quercus |q 66180/1 |goto Ohn'ahran Plains/0 30.09,52.93
'|clicknpc Quercus##187550
step
use the Borrowed Breath##192555
Awaken Dalicus |q 66180/2 |goto Ohn'ahran Plains/0 28.58,51.80
'|clicknpc Dalicus##187777
step
use the Borrowed Breath##192555
Awaken Asercus |q 66180/3 |goto Ohn'ahran Plains/0 30.11,50.36
'|clicknpc Asercus##187778
step
label "Deliver_Garden_Seeds_to_Sisters"
Kill Lasher enemies around this area
collect 12 Garden Seed##192547 |goto Ohn'ahran Plains/0 29.55,51.93 |q 66179
'|kill Giant Lasher##194588, Sprouting Lasher##187546, Vigorous Lasher##190198, Vigorous Lasher##187545
step
talk Sister of the Garden##190209+
|tip They look like {o}female centaurs{}.
Select  _"<Give Sister of the Garden the seeds you've collected.>"_ |gossip 55275
Deliver #12# Garden Seeds to Sisters |q 66179/1 |goto Ohn'ahran Plains/0 29.49,50.79
step
talk Merithra##187525
turnin Seeds for the Future##66179 |goto Ohn'ahran Plains/0 33.22,51.76
turnin Wake the Ancients##66180 |goto Ohn'ahran Plains/0 33.22,51.76
accept Gerithus's Research##66182 |goto Ohn'ahran Plains/0 33.22,51.76
step
talk Gerithus##189849
turnin Gerithus's Research##66182 |goto Ohn'ahran Plains/0 28.41,48.61
accept Emerald Tears##66183 |goto Ohn'ahran Plains/0 28.41,48.61
step
talk Rymek##189850
accept A Frenzied Defender##66181 |goto Ohn'ahran Plains/0 28.50,48.70
stickystart "Collect_Emerald_Tears"
step
kill Frenzied Grovetalon##187507 |q 66181/1 |goto Ohn'ahran Plains/0 27.93,45.18
|tip It flies in a circle around this area.
step
label "Collect_Emerald_Tears"
click Emerald Tear##376929+
|tip They look like {o}small green crystals{}.
collect 8 Emerald Tear##192558 |q 66183/1 |goto Ohn'ahran Plains/0 28.16,46.69
step
talk Rymek##189850
turnin A Frenzied Defender##66181 |goto Ohn'ahran Plains/0 28.50,48.70
step
talk Gerithus##189849
turnin Emerald Tears##66183 |goto Ohn'ahran Plains/0 28.41,48.61
accept Anchors to Life##66184 |goto Ohn'ahran Plains/0 28.41,48.61
step
click Inert Anchor
Empower the First Anchor |q 66184/1 |goto Ohn'ahran Plains/0 28.26,48.52
step
click Inert Anchor
Empower the Second Anchor |q 66184/2 |goto Ohn'ahran Plains/0 28.28,48.68
step
click Inert Anchor
Empower the Third Anchor |q 66184/3 |goto Ohn'ahran Plains/0 28.53,48.53
step
Watch the dialogue
Wait for Merithra to Arrive |q 66184/4 |goto Ohn'ahran Plains/0 28.37,48.69
step
talk Gerithus##189849
turnin Anchors to Life##66184 |goto Ohn'ahran Plains/0 28.41,48.61
step
talk Merithra##187509
accept To Somnikus##66393 |goto Ohn'ahran Plains/0 28.37,48.69
step
talk Somnikus##186469
turnin To Somnikus##66393 |goto Ohn'ahran Plains/0 22.00,50.99
accept The Chittering Rocks##66395 |goto Ohn'ahran Plains/0 22.00,50.99
step
talk Rymek##189857
accept Guarded Appreciation##66396 |goto Ohn'ahran Plains/0 22.10,50.87
stickystart "Kill_Glacial_Tunnelers"
step
talk Emerald Warden##194684
Select  _"<Give Rymek's Gift.>"_ |gossip 55157
Give Rymek's Gift to the Emerald Guard |q 66396/1 |goto Ohn'ahran Plains/0 22.25,52.14 |count 1
step
talk Emerald Warden##194684
Select  _"<Give Rymek's Gift.>"_ |gossip 55157
Give Rymek's Gift to the Emerald Guard |q 66396/1 |goto Ohn'ahran Plains/0 21.75,51.82 |count 2
step
talk Emerald Warden##194684
Select  _"<Give Rymek's Gift.>"_ |gossip 55157
Give Rymek's Gift to the Emerald Guard |q 66396/1 |goto Ohn'ahran Plains/0 21.99,50.38 |count 3
step
talk Emerald Warden##194684
Select  _"<Give Rymek's Gift.>"_ |gossip 55157
Give Rymek's Gift to the Emerald Guard |q 66396/1 |goto Ohn'ahran Plains/0 22.56,50.53 |count 4
step
talk Emerald Warden##194684
Select  _"<Give Rymek's Gift.>"_ |gossip 55157
Give Rymek's Gift to the Emerald Guard |q 66396/1 |goto Ohn'ahran Plains/0 21.49,49.08 |count 5
step
talk Emerald Warden##194684
Select  _"<Give Rymek's Gift.>"_ |gossip 55157
Give Rymek's Gift to the Emerald Guard |q 66396/1 |goto Ohn'ahran Plains/0 21.53,48.45 |count 6
step
label "Kill_Glacial_Tunnelers"
clicknpc Suspicious Permafrost##189870+
|tip They look like {o}large grey pointed rocks{}.
kill 8 Glacial Tunneler##188360 |q 66395/1 |goto Ohn'ahran Plains/0 22.80,49.39
step
talk Somnikus##186469
turnin The Chittering Rocks##66395 |goto Ohn'ahran Plains/0 22.00,50.99
step
talk Rymek##189857
turnin Guarded Appreciation##66396 |goto Ohn'ahran Plains/0 22.10,50.87
accept So Close##66190 |goto Ohn'ahran Plains/0 22.10,50.87
step
talk Rymek##191388
Select _"What do you think?"_ |gossip 55173
Speak to Rymek in Ancient Bough |q 66190/1 |goto Ohn'ahran Plains/0 19.93,49.35
step
kill Ezralor##188755 |q 66190/2 |goto Ohn'ahran Plains/0 21.39,48.75
step
Watch the dialogue
talk Merithra##187561
turnin So Close##66190 |goto Ohn'ahran Plains/0 22.06,49.20
accept And Yet So Far##66191 |goto Ohn'ahran Plains/0 22.06,49.20
step
talk Merithra##187561
Select _"What is hidden in the Dream?"_ |gossip 55426
Speak to Merithra |q 66191/1 |goto Ohn'ahran Plains/0 22.06,49.20
step
talk Merithra##187561
turnin And Yet So Far##66191 |goto Ohn'ahran Plains/0 22.06,49.20
accept Rallying Nature's Allies##66392 |goto Ohn'ahran Plains/0 22.06,49.20
|tip You must complete the {o}Oh'ahran Plains story campaign{} to be able to accept this quest.
step
talk Aronus##188335
Select _"Take me up to Shady Sanctuary."_ |gossip 55339
Speak to Aronus For a Lift to Shady Sanctuary |q 66392/1 |goto Ohn'ahran Plains/0 22.04,50.26
step
talk Koda Steelclaw##188340
Select  _"<Rally to join the fight at Ancient Bough.>"_ |gossip 54931
Speak to Koda Steelclaw |q 66392/3 |goto Ohn'ahran Plains/0 29.32,55.88
step
click Infused Anchor
Collect the Infused Anchor |q 66392/2 |goto Ohn'ahran Plains/0 30.48,56.76 |count 1
step
click Infused Anchor
Collect the Infused Anchor |q 66392/2 |goto Ohn'ahran Plains/0 30.54,56.74 |count 2
step
click Infused Anchor
Collect the Infused Anchor |q 66392/2 |goto Ohn'ahran Plains/0 30.59,56.78 |count 3
step
talk Scout Tomul##194328
Select  _"<Rally to join the fight at Ancient Bough.>"_ |gossip 56255
Speak to Scout Tomul |q 66392/4 |goto Ohn'ahran Plains/0 29.96,58.20
step
talk Archdruid Hamuul Runetotem##188339
|tip Inside the building.
Select  _"<Rally to join the fight at Ancient Bough.>"_ |gossip 55369
Speak to Hamuul Runetotem |q 66392/5 |goto Ohn'ahran Plains/0 28.32,60.11
step
talk Somnikus##187594
turnin Rallying Nature's Allies##66392 |goto Ohn'ahran Plains/0 28.38,57.96
accept Across the Weald##66185 |goto Ohn'ahran Plains/0 28.38,57.96
step
click Portal to Ardenweald
Cross into Ardenweald |q 66185/1 |goto Ohn'ahran Plains/0 28.35,57.80
step
talk Ysera##187634
turnin Across the Weald##66185 |goto Ardenweald/0 45.88,60.90
accept The Price##66186 |goto Ardenweald/0 45.88,60.90
step
talk Malfurion Stormrage##187636
Speak to Malfurion Stormrage |q 66186/1 |goto Ardenweald/0 45.82,60.86
step
talk Malfurion Stormrage##187636
turnin The Price##66186 |goto Ardenweald/0 45.82,60.86
accept Storm's Rest##66188 |goto Ardenweald/0 45.82,60.86
step
Reach the Middle of the Grove of Awakening |q 66188/1 |goto Ardenweald/0 45.30,63.65
step
clicknpc Globe of Rebirth##194365
Activate the Globe of Rebirth |q 66188/2 |goto Ardenweald/0 45.07,63.17 |count 1
step
clicknpc Globe of Rebirth##189943
Activate the Globe of Rebirth |q 66188/2 |goto Ardenweald/0 44.99,63.94 |count 2
step
clicknpc Globe of Rebirth##194363
Activate the Globe of Rebirth |q 66188/2 |goto Ardenweald/0 45.58,63.62 |count 3
step
talk Winter Queen##187632
Select  _"<Skip to the end.>"_ |gossip 56087
Convince the Winter Queen |q 66188/3 |goto Ardenweald/0 45.29,64.01
step
Watch the dialogue
talk Ysera##188348
turnin Storm's Rest##66188 |goto Ardenweald/0 45.29,63.62
accept Step Into the Life##66189 |goto Ardenweald/0 45.29,63.62
step
Cross into the Emerald Dreamway |q 66189/1 |goto Ardenweald/0 45.28,65.62
|tip Use the {o}Cross Over{} button ability.
stickystart "Clear_the_Emerald_Dreamway"
step
clicknpc Infused Anchor##187642
Place the First Infused Anchor |q 66189/3 |goto The Emerald Dreamway DF/0 65.83,50.40
step
clicknpc Infused Anchor##187644
|tip Inside the small cave.
Place the Third Infused Anchor |q 66189/5 |goto The Emerald Dreamway DF/0 58.69,81.95
step
clicknpc Infused Anchor##187643
Place the Second Infused Anchor |q 66189/4 |goto The Emerald Dreamway DF/0 46.31,39.50
step
label "Clear_the_Emerald_Dreamway"
Kill enemies around this area
clicknpc Frost Shard##194945+
|tip They look like {o}large ice spikes{}.
Clear the Emerald Dreamway |q 66189/2 |goto The Emerald Dreamway DF/0 51.99,51.97
'|kill Arctic Summoner##194917, Drenched Rager##188540, Freezing Front##188357
'|clicknpc Frost Shard##194951
step
clicknpc Dream Portal##190027
Cross Over Into the Ancient Bough |q 66189/6 |goto The Emerald Dreamway DF/0 31.44,22.53
step
talk Ysera##187646
turnin Step Into the Life##66189 |goto Ohn'ahran Plains/0 18.81,51.89
accept Thin the Veil##66394 |goto Ohn'ahran Plains/0 18.81,51.89
accept Our Full Strength##66397 |goto Ohn'ahran Plains/0 18.81,51.89
stickystart "Deactivate_Barrier_Moorings"
stickystart "Free_Emerald_Scaleguards_or_Wardens"
step
Kill enemies around this area
collect Volatile Frostfire##193221+ |n
clicknpc Gerithus##187657
Free Gerithus |q 66397/2 |goto Ohn'ahran Plains/0 20.28,49.14
'|kill Frost Shackler##188449, Icebound Tarasek##195019, Hydro Pugilist##188450
step
label "Deactivate_Barrier_Moorings"
clicknpc Barrier Mooring##188383+
|tip They look like {o}stone crescent portal structures{}.
Deactivate #6# Barrier Moorings |q 66394/1 |goto Ohn'ahran Plains/0 18.44,51.00
step
label "Free_Emerald_Scaleguards_or_Wardens"
Kill enemies around this area
collect Volatile Frostfire##193221+ |n
click Various NPCs
|tip They look like {o}dragon people frozen in huge ice blocks{}.
Free #4# Emerald Scaleguards or Wardens |q 66397/3 |goto Ohn'ahran Plains/0 18.44,51.00
'|kill Frost Shackler##188449, Icebound Tarasek##195019, Hydro Pugilist##188450
'|clicknpc Emerald Scaleguard##190385, Emerald Warden##194700
step
talk Gerithus##188763
turnin Our Full Strength##66397 |goto Ohn'ahran Plains/0 18.58,51.66
step
talk Ysera##187646
turnin Thin the Veil##66394 |goto Ohn'ahran Plains/0 18.82,51.88
accept Reunited, Once Again##66635 |goto Ohn'ahran Plains/0 18.82,51.88
step
talk Ysera##187646
Select _"I'm ready."_ |gossip 54828
Speak with Ysera |q 66635/1 |goto Ohn'ahran Plains/0 18.82,51.88
step
talk Merithra##187660
turnin Reunited, Once Again##66635 |goto Ohn'ahran Plains/0 18.88,51.11
accept The Emerald Dragonflight##66398 |goto Ohn'ahran Plains/0 18.88,51.11
step
talk Gerithus##188763
Select _"I'm ready to fly to Lunedane and face Rymek."_ |gossip 55438
Speak to Gerithus |invehicle |q 66398 |goto Ohn'ahran Plains/0 18.58,51.65
step
Watch the dialogue
Fly to Lunedane |outvehicle |goto Ohn'ahran Plains/0 22.05,75.63 |q 66398 |notravel
step
talk Gerithus##188787
turnin The Emerald Dragonflight##66398 |goto Ohn'ahran Plains/0 21.98,76.09
accept We'll Cross that Bridge##66399 |goto Ohn'ahran Plains/0 21.98,76.09
step
clicknpc Frost Core##190004
|tip Inside the building.
Destroy the First Frost Core |q 66399/1 |goto Ohn'ahran Plains/0 21.08,76.56
step
clicknpc Frost Core##190005
|tip Inside the building.
Destroy the Second Frost Core |q 66399/2 |goto Ohn'ahran Plains/0 21.88,78.40
step
kill Frostdrake##188804 |q 66399/3 |goto Ohn'ahran Plains/0 21.15,79.13
step
talk Somnikus##188840
turnin We'll Cross that Bridge##66399 |goto Ohn'ahran Plains/0 20.92,79.79
accept Winter's Fall##66400 |goto Ohn'ahran Plains/0 20.92,79.79
step
kill Rymek##188846 |q 66400/1 |goto Ohn'ahran Plains/0 20.13,81.29
step
Watch the dialogue
talk Merithra##188847
turnin Winter's Fall##66400 |goto Ohn'ahran Plains/0 19.78,81.65
accept The Dreamer##66401 |goto Ohn'ahran Plains/0 19.78,81.65
step
talk Dream Locus##188843
Select  _"<Witness the restoration.>"_ |gossip 54860
Speak to Merithra |q 66401/1 |goto Ohn'ahran Plains/0 19.39,82.17
step
talk Merithra##188848
turnin The Dreamer##66401 |goto Ohn'ahran Plains/0 19.62,81.90
step
talk Ysera##188850
accept Like Mother, Like Daughter##66402 |goto Ohn'ahran Plains/0 19.81,81.69
step
Watch the dialogue
Witness the Ascension of Merithra |q 66402/1 |goto Ohn'ahran Plains/0 19.81,81.69
step
talk Merithra##188848
turnin Like Mother, Like Daughter##66402 |goto Ohn'ahran Plains/0 19.77,81.69
step
talk Doc Nanners##196643
accept A New Mystery##69093 |goto Valdrakken/0 45.31,54.95
step
talk Naleidea Rivergleam##186869
turnin A New Mystery##69093 |goto The Waking Shores/0 47.88,82.42
accept The Sealed Door##66012 |goto The Waking Shores/0 47.88,82.42
step
talk Naleidea Rivergleam##186870
turnin The Sealed Door##66012 |goto Thaldraszus/0 54.49,55.67
accept Investigate the Door##66013 |goto Thaldraszus/0 54.49,55.67
step
click Broken Watcher##376932
Inspect the Broken Watcher |q 66013/1 |goto Thaldraszus/0 54.47,55.73
step
click Titan Door##376116
Inspect the Door |q 66013/2 |goto Thaldraszus/0 54.65,55.74
step
click Broken Watcher Staff##376957
Inspect the Snapped Staff |q 66013/3 |goto Thaldraszus/0 54.26,55.40
step
talk Naleidea Rivergleam##186870
turnin Investigate the Door##66013 |goto Thaldraszus/0 54.49,55.67
accept Speak to Koranos##66673 |goto Thaldraszus/0 54.49,55.67
step
talk Watcher Koranos##197231
Select _"I'm here on behalf of the Dragonscale Expedition. What can you tell me about the sealed Titan facility near Tyrhold?"_ |gossip 55337
Speak to Koranos |q 66673/1 |goto Valdrakken/0 54.15,46.65
step
click Watcher Log
|tip Inside the building.
Search the Archives for the Watcher Log |q 66673/2 |goto Valdrakken/0 34.83,24.95
step
click Watcher Log
|tip Inside the building.
Select  _"<Read the first entry.>"_ |gossip 107608
Read the First Entry |q 66673/3 |goto Valdrakken/0 34.83,24.95
step
click Watcher Log
|tip Inside the building.
Select  _"<Read the next entry.>"_ |gossip 107611
Read the Second Entry |q 66673/4 |goto Valdrakken/0 34.83,24.95
step
click Watcher Log
|tip Inside the building.
Select  _"<Read the next entry.>"_ |gossip 107612
Read the Third Entry |q 66673/5 |goto Valdrakken/0 34.83,24.95
step
click Watcher Log
|tip Inside the building.
Select  _"<Take the watcher log.>"_ |gossip 107625
Take the Watcher Log |q 66673/6 |goto Valdrakken/0 34.83,24.95
step
Exit the Library |q 66673/7 |goto Valdrakken/0 34.21,28.03
|tip You will be attacked.
step
talk Naleidea Rivergleam##186870
Select  _"<Fill her in on the log's contents and the daring attack and theft by Sarkareth.>"_ |gossip 55271
Speak to Naleidea About What You've Learned |q 66673/8 |goto Thaldraszus/0 54.48,55.67
step
talk Naleidea Rivergleam##186870
turnin Speak to Koranos##66673 |goto Thaldraszus/0 54.48,55.67
accept The Ruins of Szar Skeleth##66094 |goto Thaldraszus/0 54.48,55.67
accept The Abandoned Outpost##70784 |goto Thaldraszus/0 54.48,55.67
accept The City of the Dead##70785 |goto Thaldraszus/0 54.48,55.67
step
talk Naleidea Rivergleam##190855
turnin The City of the Dead##70785 |goto Thaldraszus/0 62.24,18.27
accept The Judgment of Tyr##66814 |goto Thaldraszus/0 62.24,18.27
step
talk Naleidea Rivergleam##190855
Select _"Let's get started then."_ |gossip 55160
Speak to Naleidea |q 66814/1 |goto Thaldraszus/0 62.24,18.27
step
Follow Naleidea |q 66814/2 |goto Thaldraszus/0 62.92,16.87
|tip You will be attacked.
'|clicknpc Naleidea Rivergleam##190860
step
kill Sundered Lookout##196926+
Defeat the Ambushers |q 66814/3 |goto Thaldraszus/0 62.90,16.96
step
Follow Naleidea |q 66814/4 |goto Thaldraszus/0 63.18,15.94
|tip You will be attacked.
'|clicknpc Naleidea Rivergleam##190861
step
kill Sundered Vanguard##196927+
Defeat the Ambushers |q 66814/5 |goto Thaldraszus/0 63.18,15.94
step
Follow Naleidea |q 66814/6 |goto Thaldraszus/0 63.67,14.73
|tip You will be attacked.
'|clicknpc Naleidea Rivergleam##190864
step
kill Sundered Shadetalon##190924+
Defeat the Ambushers |q 66814/7 |goto Thaldraszus/0 63.67,14.73
step
Reach Naleidea |q 66814/8 |goto Thaldraszus/0 64.46,15.14
|tip Inside the building.
'|clicknpc Naleidea Rivergleam##190865
step
click Various Object+
|tip They look like {o}various large objects{}.
|tip You will be attacked.
|tip Inside the building.
click Judgment of Tyr
|tip It will {o}appear{} after you {o}clear the other objects{}.
collect The Judgment of Tyr##193072 |q 66814/9 |goto Thaldraszus/0 64.53,15.08
'|kill Skittering Boneborer##196498
step
talk Naleidea Rivergleam##190865
|tip Inside the building.
turnin The Judgment of Tyr##66814 |goto Thaldraszus/0 64.46,15.14
step
talk Toddy Whiskers##191159
turnin The Ruins of Szar Skeleth##66094 |goto Ohn'ahran Plains/0 39.96,67.50
accept The Insight of Tyr##70507 |goto Ohn'ahran Plains/0 39.96,67.50
step
kill Reclaimer Makko##191536 |q 70507/1 |goto Ohn'ahran Plains/0 43.79,62.88
|tip He looks like a {o}dracthyr{} that walks around this area.
|tip He will appear on your {o}minimap{} as a {o}yellow dot{}.
collect The Insight of Tyr##193070 |n
Recover the Insight of Tyr |q 70507/2 |goto Ohn'ahran Plains/0 43.79,62.88
step
talk Toddy Whiskers##191159
turnin The Insight of Tyr##70507 |goto Ohn'ahran Plains/0 39.96,67.50
step
talk Naleidea Rivergleam##193350
turnin The Abandoned Outpost##70784 |goto The Azure Span/0 53.88,50.70
accept The Vigilance of Tyr##70503 |goto The Azure Span/0 53.88,50.70
stickystart "Collect_Tarasek_Pillaged_Piece"
stickystart "Collect_Magnetized_Splinters_And_Agitated_Fragments"
step
kill Obstructed Hornswog##196403
clicknpc Tarasek Hauler##196405
|tip It {o}appears after the frog dies{}.
collect Half Swallowed Sliver##200480 |q 70503/5 |goto The Azure Span/0 53.60,49.61
step
click Far-Flung Fragment
|tip It looks like a {o}small pile of grey rocks{}.
|tip At the top of the tower.
collect Far-Flung Fragment##200478 |q 70503/4 |goto The Azure Span/0 54.98,49.75
step
label "Collect_Tarasek_Pillaged_Piece"
kill Tarasek Scavenger##197085+
collect 2 Tarasek Pillaged Piece##200474 |q 70503/3 |goto The Azure Span/0 54.32,50.46
step
label "Collect_Magnetized_Splinters_And_Agitated_Fragments"
kill Crystallized Horror##197024
|tip It looks like a {o}large ice elemental{} that walks around this area.
|tip It won't attack you back.
click Magnetized Splinter##381738+
|tip They look like {o}small piles of white rocks{} that appear on the ground.
kill Agitated Shard##197045+
|tip They look like {o}small ice elementals{} that appear and attack you.
collect 4 Agitated Fragment##200473 |q 70503/2 |goto The Azure Span/0 54.32,50.46
collect 6 Magnetized Splinter##200471 |q 70503/1 |goto The Azure Span/0 54.32,50.46
step
talk Naleidea Rivergleam##193350
turnin The Vigilance of Tyr##70503 |goto The Azure Span/0 53.88,50.70
accept Next Steps##66128 |goto The Azure Span/0 53.88,50.70
step
Meet Up with Toddy and Naleidea in the Explorer's Tent |q 66128/1 |goto The Waking Shores/0 47.21,82.72
|tip Inside the building.
step
Watch the dialogue
|tip Inside the building.
Listen to Toddy and Naleidea |q 66128/2 |goto The Waking Shores/0 47.21,82.72
step
talk Camilla Highwind##186782
|tip Inside the building.
turnin Next Steps##66128 |goto The Waking Shores/0 47.21,82.72
step
talk Cataloger Jakes##189226
|tip Inside the building.
accept Break on Through##67722 |goto The Waking Shores/0 47.11,82.57
step
talk Toddy Whiskers##191838
turnin Break on Through##67722 |goto Thaldraszus/0 54.27,55.41
accept The Other Side##66636 |goto Thaldraszus/0 54.27,55.41
step
Ascend the Scaffolding to the Location of the Third Watcher |q 66636/1 |goto Thaldraszus/0 54.29,55.30
|tip Up on the platform.
step
Watch the dialogue
|tip Use {o}The Third Watcher{} button ability.
Complete the Unlocking Sequence |q 66636/2 |goto Thaldraszus/0 54.29,55.30
step
Make Your Way Inside |q 66636/3 |goto Thaldraszus/0 54.92,56.04
|tip Inside the building.
step
Watch the dialogue
|tip Inside the building.
talk Toddy Whiskers##192820
turnin The Other Side##66636 |goto Thaldraszus/0 55.13,56.34
accept Hall of Samples##66173 |goto Thaldraszus/0 55.13,56.34
accept Hall of the Aspects##66174 |goto Thaldraszus/0 55.13,56.34
step
Enter the Hall of Samples Through the Nearby Teleporter |q 66173/1 |goto Thaldraszus/0 54.87,55.85
|tip Walk onto the {o}teleport pad{}.
|tip Inside the building.
step
Watch the dialogue
|tip Inside the building.
Listen to Toddy |q 66173/2 |goto Thaldraszus/0 57.20,53.76
step
click Titan Lure
|tip Inside the building.
Pick Up the Titan Lure |q 66173/3 |goto Thaldraszus/0 57.20,53.75
step
Lure the Earth Proto-Dragon to the Containment Sphere |q 66173/5 |goto Thaldraszus/0 57.46,53.62 |count 1 |noordinal
|tip Use the {o}Lure Proto-dragon{} button ability on the {o}Escaped Earth Proto-dragon{}.
|tip It looks like a {o}brown dragon{} nearby.
|tip Lure it {o}inside the circle{}.
|tip Inside the building.
'|clicknpc Escaped Earth Proto-dragon##192618
step
Lure the Ice Proto-Dragon to the Containment Sphere |q 66173/5 |goto Thaldraszus/0 57.45,53.28 |count 2 |noordinal
|tip Use the {o}Lure Proto-dragon{} button ability on the {o}Escaped Ice Proto-dragon{}.
|tip It looks like a {o}blue dragon{} nearby.
|tip Lure it {o}inside the circle{}.
|tip Inside the building.
'|clicknpc Escaped Ice Proto-dragon##192617
step
Lure the Flame Proto-Dragon to the Containment Sphere |q 66173/5 |goto Thaldraszus/0 57.03,53.29 |count 3 |noordinal
|tip Use the {o}Lure Proto-dragon{} button ability on the {o}Escaped Fire Proto-dragon{}.
|tip It looks like an {o}orange dragon{} nearby.
|tip Lure it {o}inside the circle{}.
|tip Inside the building.
'|clicknpc Escaped Fire Proto-dragon##192614
step
Lure the Air Proto-Dragon to the Containment Sphere |q 66173/5 |goto Thaldraszus/0 57.03,53.63 |count 4 |noordinal
|tip Use the {o}Lure Proto-dragon{} button ability on the {o}Escaped Air Proto-dragon{}.
|tip It looks like a {o}blue dragon{} nearby.
|tip Lure it {o}inside the circle{}.
|tip Inside the building.
'|clicknpc Escaped Air Proto-dragon##192590
step
click Security Console
|tip Inside the building.
Activate the Security Console |q 66173/6 |goto Thaldraszus/0 57.24,52.67
step
talk Toddy Whiskers##193374
|tip Inside the building.
turnin Hall of Samples##66173 |goto Thaldraszus/0 57.27,52.74
step
Return to the Hall of Records |complete subzone("Hall of Records") |goto Thaldraszus/0 57.25,54.24 |q 66174
|tip Walk onto the {o}teleport pad{}.
|tip Inside the building.
step
Enter the Hall of the Aspects Through the Nearby Teleporter |q 66174/1 |goto Thaldraszus/0 54.79,56.01
|tip Walk onto the {o}teleport pad{}.
|tip Inside the building.
step
talk Toddy Whiskers##191853
|tip Inside the building.
Speak to Toddy |q 66174/2 |goto Thaldraszus/0 58.24,54.09
step
talk Toddy Whiskers##191853
|tip Inside the building.
Select _"Right. I'll watch your back."_ |gossip 55194
Let Toddy Know You're Ready |q 66174/3 |goto Thaldraszus/0 58.24,54.09
step
Watch the dialogue
|tip You will be attacked.
|tip Inside the building.
Access the Nozdormu Console |q 66174/4 |goto Thaldraszus/0 58.10,53.59
step
Watch the dialogue
|tip You will be attacked.
|tip Inside the building.
Access the Alexstrasza Console |q 66174/5 |goto Thaldraszus/0 58.06,53.44
step
Watch the dialogue
|tip You will be attacked.
|tip Inside the building.
Access the Ysera Console |q 66174/6 |goto Thaldraszus/0 58.10,53.30
step
Watch the dialogue
|tip You will be attacked.
|tip Inside the building.
Access the Kalecgos Console |q 66174/7 |goto Thaldraszus/0 58.29,53.30
step
Watch the dialogue
|tip You will be attacked.
|tip Inside the building.
Access the Neltharion Console |q 66174/8 |goto Thaldraszus/0 58.29,53.59
step
click Security Console
|tip Inside the building.
Access the Security Console |q 66174/9 |goto Thaldraszus/0 58.20,52.98
step
talk Toddy Whiskers##191853
|tip Inside the building.
turnin Hall of the Aspects##66174 |goto Thaldraszus/0 58.23,53.06
accept Back to the Main Hall##71152 |goto Thaldraszus/0 58.23,53.06
step
Return to the Hall of Records |complete subzone("Hall of Records") |goto Thaldraszus/0 58.19,54.31 |q 71152
|tip Walk onto the {o}teleport pad{}.
|tip Inside the building.
step
talk Toddy Whiskers##192820
|tip Inside the building.
turnin Back to the Main Hall##71152 |goto Thaldraszus/0 55.13,56.34
accept Retrieve the Discs##66546 |goto Thaldraszus/0 55.13,56.34
step
Watch the dialogue
|tip Inside the building.
Bring the Barrier Down |q 66546/1 |goto Thaldraszus/0 55.13,56.34
step
_NOTE:_
During the Next Steps
|tip After you {o}have the key{}, avoid the {o}blue and brown circles{}.
|tip You will have {o}30 seconds to do this{}.
Click Here to Continue |confirm |q 66546
step
click Burden Key
|tip Inside the building.
Use the Burden Key |q 66546/3 |goto Thaldraszus/0 55.08,56.11
Carry the Burden Key |havebuff Tyr's Burden##373846 |goto Thaldraszus/0 55.08,56.11 |q 66546
step
click Tyr's Burden##377064
|tip Inside the building.
Retrieve the Disc |q 66546/5 |goto Thaldraszus/0 55.42,57.16 |count 1
step
_NOTE:_
During the Next Steps
|tip After you {o}have the key{}, run onto {o}five brown circles{}.
|tip You will have {o}30 seconds to do this{}.
Click Here to Continue |confirm |q 66546
step
click Vigilance Key
|tip Inside the building.
Use the Vigilance Key |q 66546/2 |goto Thaldraszus/0 55.02,56.02
Carry the Vigilance Key |havebuff Tyr's Vigilance##373874 |goto Thaldraszus/0 55.02,56.02 |q 66546
step
Become a Vigilant Watcher |havebuff Vigilant Watcher##374139 |goto Thaldraszus/0 55.40,56.59 |q 66546
|tip After you {o}have the key{}, run onto {o}five brown circles{}.
|tip You will have {o}30 seconds to do this{}.
step
click Tyr's Vigilance##377063
|tip Inside the building.
Retrieve the Disc |q 66546/5 |goto Thaldraszus/0 55.75,56.47 |count 2
step
_NOTE:_
During the Next Steps
|tip After you {o}have the key{}, run onto {o}blue circles{} and {o}avoid brown circles{}.
|tip While {o}not on a blue circle{}, you will {o}drop the key after 5 seconds{}.
|tip You will have {o}30 seconds to do this{}.
Click Here to Continue |confirm |q 66546
step
click Judgement Key
|tip Inside the building.
Use the Judgement Key |q 66546/4 |goto Thaldraszus/0 55.00,56.26
Carry the Judgement Key |havebuff Tyr's Judgment##373876 |goto Thaldraszus/0 55.00,56.26 |q 66546
step
click Tyr's Judgment##377062
|tip Run onto {o}blue circles{} and {o}avoid brown circles{}.
|tip While {o}not on a blue circle{}, you will {o}drop the key after 5 seconds{}.
|tip You will have {o}30 seconds to do this{}.
|tip Inside the building.
Retrieve the Disc |q 66546/5 |goto Thaldraszus/0 55.85,57.11 |count 3
step
Watch the dialogue
|tip Avoid the {o}blue and brown circles{}.
|tip Run out of the building.
Escape the Facility |q 66546/6 |goto Thaldraszus/0 54.45,55.55
step
talk Toddy Whiskers##192967
turnin Retrieve the Discs##66546 |goto Thaldraszus/0 54.45,55.55
accept It Belongs in a Museum... Eventually##66547 |goto Thaldraszus/0 54.45,55.55
step
Meet Up with Toddy and Naleidea at the Dragonscale Basecamp |q 66547/1 |goto The Waking Shores/0 47.25,82.78
|tip Inside the building.
step
Watch the dialogue
|tip Inside the building.
Listen to Toddy and Naleidea |q 66547/2 |goto The Waking Shores/0 47.25,82.78
step
talk Naleidea Rivergleam##192980
|tip Inside the building.
turnin It Belongs in a Museum... Eventually##66547 |goto The Waking Shores/0 47.25,82.78
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\The Forbidden Reach",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various chapters of The Forbidden Reach questline.",
startlevel=68,
patch='100007',
},[[
step
accept Hidden Legacies##74381 |goto Valdrakken/0 60.91,26.63
|tip You will accept this quest automatically.
step
talk Kurazidaia##201398
|tip At the top of the tower.
Select _"Tell me what happened."_
Hear Kurazidaia's Report |q 74381/1 |goto Valdrakken/0 61.03,26.05
step
talk Kurazidaia##201398
turnin Hidden Legacies##74381 |goto Valdrakken/0 61.03,26.05
accept Return to the Reach##73076 |goto Valdrakken/0 61.03,26.05
step
talk Aluri##193321
Select _"Take me to Morqut Village."_
Speak with Flightmaster Aluri to Fly to the Forbidden Reach |q 73076/1 |goto Valdrakken/0 44.03,68.00
step
Reach the Forbidden Reach |outvehicle
|tip Wait for the flight to conclude.
step
talk Renpiaq##200561
fpath Morqut Village |goto The Forbidden Reach/5 35.85,59.12
step
Find Viridia in the Forbidden Reach |q 73076/2 |goto The Forbidden Reach/5 34.61,57.69
step
talk Scalecommander Viridia##199201
turnin Return to the Reach##73076 |goto The Forbidden Reach/5 34.61,57.69
|tip This might be completed at Scalecommander Emberthal nearby instead.
accept Wings of Mercy##73157 |goto The Forbidden Reach/5 34.61,57.69
accept Stemming the Irontide##74769 |goto The Forbidden Reach/5 34.61,57.69
accept An Eclectic Accord##75050 |goto The Forbidden Reach/5 34.61,57.69
step
talk Scalecommander Azurathel##199204
Select _"Scalecommander Viridia sent me to check on you."_
Speak to Azurathel |q 75050/3 |goto The Forbidden Reach/5 35.53,58.69
step
talk Scalecommander Cindrethresh##199199
Select _"Scalecommander Viridia sent me to check on you."_
Speak to Cindrethresh |q 75050/4 |goto The Forbidden Reach/5 35.30,59.49
step
talk Turik##200562
Select _"Scalecommander Viridia sent me to check on you."_
Speak to Turik |q 75050/2 |goto The Forbidden Reach/5 34.20,60.04
step
talk Unpukiat##200560
|tip Inside the building.
home Morqut Village |goto The Forbidden Reach/5 33.84,59.06 |q 75050
step
talk Tukkaraq##200558
Select _"Scalecommander Viridia sent me to check on you."_
Speak to Tukkaraq |q 75050/1 |goto The Forbidden Reach/5 34.37,58.57
step
talk Scalecommander Viridia##199201
turnin An Eclectic Accord##75050 |goto The Forbidden Reach/5 34.61,57.69
stickystart "Kill_10_Irontide_Pirates"
step
extraaction Mender's Signal##404990
|tip It appears as a button on your screen.
Aid the Tempest Coast Scouts |q 73157/1 |goto The Forbidden Reach/5 36.93,43.16
step
label "Kill_10_Irontide_Pirates"
Kill Irontide enemies around this area
Slay #10# Irontide Pirates |q 74769/1 |goto The Forbidden Reach/5 34.85,44.21
step
extraaction Mender's Signal##404990
|tip It appears as a button on your screen.
Aid the Stonesunder Crater Scouts |q 73157/2 |goto The Forbidden Reach/5 64.74,61.90
step
extraaction Mender's Signal##404990
|tip It appears as a button on your screen.
Aid the Darksand Hollow Scouts |q 73157/3 |goto The Forbidden Reach/5 78.84,67.66
step
talk Scalecommander Viridia##199201
turnin Wings of Mercy##73157 |goto The Forbidden Reach/5 34.61,57.69
turnin Stemming the Irontide##74769 |goto The Forbidden Reach/5 34.61,57.69
accept Helping Hand and Claw##73160 |goto The Forbidden Reach/5 34.61,57.69
step
talk Atrenosh Hailstone##200010
accept Plunder Siege##74359 |goto The Forbidden Reach/5 34.65,57.57
step
talk Treysh##200559
accept Still Within Reach##74379 |goto The Forbidden Reach/5 35.61,59.49
step
Locate Jeb and Tacha on the Sharpscale Coast |q 73160/1 |goto The Forbidden Reach/5 36.79,80.39
step
click Shipwrecked Debris
Rescue Pathfinder Tacha |q 73160/2 |goto The Forbidden Reach/5 36.96,80.28
step
click Tangling Seaweed
Rescue Pathfinder Jeb |q 73160/3 |goto The Forbidden Reach/5 36.66,79.88
step
label "Collect_10_Scattered_Supplies"
click Scattered Supplies##386055+
|tip They look like small wooden crates and barrels in the water around this area.
collect 10 Scattered Supplies##202713 |q 73160/4 |goto The Forbidden Reach/5 36.27,80.25
step
kill Karkinus the Capsizer##200907 |q 74377/1 |goto The Forbidden Reach/5 37.44,81.67
step
talk Pathfinder Tacha##200903
turnin Helping Hand and Claw##73160 |goto The Forbidden Reach/5 37.18,79.06
step
talk Scalecommander Viridia##199201
accept Emberthal Awaits##74847 |goto The Forbidden Reach/5 34.61,57.69
|tip If this quest is not available you can skip this step.
step
Meet with Scalecommander Emberthal Above Morqut Village |q 74847/1 |goto The Forbidden Reach/5 32.56,60.58
|only if haveq(74847) or completedq(74847)
step
talk Scalecommander Emberthal##199532
turnin Emberthal Awaits##74847 |goto The Forbidden Reach/5 32.57,60.58 |only if haveq(74847) or completedq(74847)
accept The Best We Have##72712 |goto The Forbidden Reach/5 32.57,60.58
step
Watch the dialogue
talk Talon Damos##199212
Select _"Let's fly."_
Give Talon Damos His Orders |q 72712/1 |goto The Forbidden Reach/5 32.63,60.54
step
talk Scalecommander Viridia##199201
accept Exploring Our Past##73159 |goto The Forbidden Reach/5 34.61,57.69
step
talk Pathfinder Jeb##200040
turnin Exploring Our Past##73159 |goto The Forbidden Reach/5 29.09,53.13
accept Zskera Vault: Az##72953 |goto The Forbidden Reach/5 29.09,53.13
step
talk Pathfinder Tacha##200041
accept The Keys You Need##74294 |goto The Forbidden Reach/5 29.16,53.13
step
talk Pathfinder Tacha##200041
turnin The Keys You Need##74294 |goto The Forbidden Reach/5 29.16,53.13
step
talk Cataloger Wulferd##201180
accept Authentic Authorization##74984 |goto The Forbidden Reach/5 29.26,52.69 |or
accept Authentic Authorization##74983 |goto The Forbidden Reach/5 29.26,52.69 |or
accept Authentic Authorization##74282 |goto The Forbidden Reach/5 29.26,52.69 |or
|tip You will only be able to accept one of these weekly quests.
|tip Any time you open vault doors, look around for the objective of the weekly quest.
|only if not completedq(72953)
step
talk Pathfinder Jeb##200040
Choose _"Let's explore Zskera Vault Az."_
Speak with Jeb to Enter the Vault |q 72953/1 |goto The Forbidden Reach/5 29.09,53.13
step
Run down the stairs |goto The Forbidden Reach/5 29.09,52.39 < 10 |walk
Kill the elite
|tip Inside the middle of the vault.
Secure the Vault |q 72953/2 |goto The Forbidden Reach/5 29.58,56.34
step
click Unusual Ring##385952
|tip Inside the vault.
accept The Forgotten Ring##73155 |goto The Forbidden Reach/5 29.87,57.30
step
click Web Rope##385679
|tip Inside the vault.
Climb the Web Rope to Reach the Second Floor |q 72953/4 |goto The Forbidden Reach/5 28.89,56.12
step
click Door
Open the Doors with Zskera Vault Keys |q 72953/3 |goto The Forbidden Reach/5 28.57,56.00
step
click Flask of Windward Steps##385687
Gain the "Windward Steps" Buff |complete hasbuff(398283) |goto The Forbidden Reach/5 28.35,56.13 |q 72953
step
click Journal Entry: The Creches##385836
collect Journal Entry: The Creches##204223 |n
|tip Inside the door inside the vault.
accept Journal Entry: The Creches##74883 |goto The Forbidden Reach/5 28.54,55.65 |only if Horde
accept Journal Entry: The Creches##73114 |goto The Forbidden Reach/5 28.54,55.65 |only if Alliance
step
Click Here to Continue |confirm |q 72953
|tip From this point, you can either continue opening vault doors until you exhaust your keys, or save them for later.
step
talk Pathfinder Jeb##202218
turnin Zskera Vault: Az##72953 |goto The Forbidden Reach/5 29.02,57.04
step
Leave Zskera Vault: Az |complete not subzone("Zskera Vault: Az") |goto The Forbidden Reach/5 28.81,49.98
step
talk Pathfinder Tacha##200041
accept What's Behind The Next Door##73089 |goto The Forbidden Reach/5 29.16,53.12
step
talk Researcher Imareth##200724
turnin The Forgotten Ring##73155 |goto The Forbidden Reach/5 35.18,57.60
accept Primordial Embellishment##74355 |goto The Forbidden Reach/5 35.18,57.61
step
talk Scalecommander Cindrethresh##199199
turnin Journal Entry: The Creches##74883 |goto The Forbidden Reach/5 35.30,59.50
|only if haveq(74883) or completedq(74883)
step
talk Scalecommander Azurathel##199204
turnin Journal Entry: The Creches##73114 |goto The Forbidden Reach/5 35.53,58.69
|only if haveq(73114) or completedq(73114)
step
kill Spellsworn Wingcatcher##201369 |q 74379/1 |goto The Forbidden Reach/5 59.04,57.54
|tip This enemy is elite and may require a group.
step
talk Talon Damos##200403
|tip On the balcony.
turnin The Best We Have##72712 |goto The Forbidden Reach/5 55.14,37.43
accept Inheritance##72713 |goto The Forbidden Reach/5 55.14,37.43
stickystart "Secure_the_Lost_Atheneum"
step
kill Skittering Ruinstalker##199238
|tip Upstairs inside the building.
Assist Emberthal's Scout |q 72713/1 |goto The Forbidden Reach/5 53.53,36.78 |count 1
step
click Suspicious Rubble
|tip Inside the building.
|tip Kill the spiders that spawn.
Assist Emberthal's Scout |q 72713/1 |goto The Forbidden Reach/5 53.58,39.11 |count 2
step
Enter the building |goto The Forbidden Reach/5 55.10,38.43 < 10 |walk
click Damaged Tome+
|tip Inside the building.
Assist Emberthal's Scout |q 72713/1 |goto The Forbidden Reach/5 54.94,36.92 |count 3
step
label "Secure_the_Lost_Atheneum"
Kill enemies around this area
Secure the Lost Atheneum |q 72713/2 |goto The Forbidden Reach/5 54.98,39.58
step
talk Talon Damos##200459
turnin Inheritance##72713 |goto The Forbidden Reach/5 55.18,35.84
step
talk Scalecommander Emberthal##199531
accept Creche Fallen##72545 |goto The Forbidden Reach/5 55.13,35.89
step
clicknpc Talon Arrosh##199215
|tip Inside the building.
collect 1 Horn Signet of Arrosh##203692 |q 72545/2 |goto The Forbidden Reach/5 53.81,36.44
step
clicknpc Talon Tetsos##199217
|tip Inside the building.
collect 1 Horn Signet of Tetsos##203689 |q 72545/1 |goto The Forbidden Reach/5 53.81,36.54
step
Enter the building |goto The Forbidden Reach/5 55.10,38.43 < 10 |walk
clicknpc Talon Hermin##199218
|tip Inside the building.
collect Horn Signet of Talon Hermin##203698 |q 72545/4 |goto The Forbidden Reach/5 54.95,37.00
step
clicknpc Talon Ekrati##199214
|tip Inside the building.
collect 1 Horn Signet of Ekrati##203697 |q 72545/3 |goto The Forbidden Reach/5 53.57,39.47
step
talk Scalecommander Emberthal##199531
turnin Creche Fallen##72545 |goto The Forbidden Reach/5 55.13,35.89
accept Aiding the Expedition##73094 |goto The Forbidden Reach/5 55.13,35.89
step
Find the beleaguered Dragonscale Expedition |q 73094/1 |goto The Forbidden Reach/5 61.57,61.64
step
talk Scalecommander Emberthal##199175
turnin Aiding the Expedition##73094 |goto The Forbidden Reach/5 61.57,61.64
accept Keeping the Flame at Bay##72715 |goto The Forbidden Reach/5 61.57,61.64
step
talk Ebyssian##199520
accept An Interdisciplinary Approach##72714 |goto The Forbidden Reach/5 61.69,61.28
stickystart "Kill_Sundered_Ruinstalkers"
stickystart "Kill_Sundered_Pillagers"
step
clicknpc Frightened Researcher##202599
|tip Inside the building.
Rescue the Researcher |q 72714/1 |goto The Forbidden Reach/5 58.21,60.79 |count 1
step
clicknpc Frightened Researcher##202601
|tip Upstairs inside the building.
Rescue the Researcher |q 72714/1 |goto The Forbidden Reach/5 57.52,63.66 |count 2
step
clicknpc Frightened Researcher##199358
|tip Inside the building.
Rescue the Researcher |q 72714/1 |goto The Forbidden Reach/5 59.53,63.93 |count 3
step
clicknpc Frightened Researcher##202602
|tip Inside the building.
Rescue the Researcher |q 72714/1 |goto The Forbidden Reach/5 58.92,66.07 |count 4
step
clicknpc Frightened Researcher##202603
|tip Inside the building.
Rescue the Researcher |q 72714/1 |goto The Forbidden Reach/5 56.87,66.24 |count 5
step
Enter the building |goto The Forbidden Reach/5 57.35,67.37 < 7 |walk
|tip Inside the building.
kill Winglord Iyazael##199401 |q 72715/3 |goto The Forbidden Reach/5 56.15,68.48
step
label "Kill_Sundered_Ruinstalkers"
kill 6 Sundered Ruinstalker##199379 |q 72715/2 |goto The Forbidden Reach/5 58.90,62.55
step
label "Kill_Sundered_Pillagers"
kill 4 Sundered Pillager##199374 |q 72715/1 |goto The Forbidden Reach/5 58.90,62.55
step
Enter the building |goto The Forbidden Reach/5 58.63,69.19 < 7 |walk
Find Ebyssian in the High Creche |q 72714/2 |goto The Forbidden Reach/5 58.75,70.29
step
talk Scalecommander Emberthal##199521
|tip Inside the building.
turnin Keeping the Flame at Bay##72715 |goto The Forbidden Reach/5 58.83,70.32
step
talk Ebyssian##199177
|tip He will walk to this spot inside the building.
turnin An Interdisciplinary Approach##72714 |goto The Forbidden Reach/5 58.76,70.44
step
talk Scalecommander Emberthal##199521
|tip Inside the building.
accept Chasing the Flame##73137 |goto The Forbidden Reach/5 58.83,70.32
step
talk Scalecommander Emberthal##199538
turnin Chasing the Flame##73137 |goto The Forbidden Reach/5 74.38,36.90
accept A Creche Divided##72717 |goto The Forbidden Reach/5 74.38,36.90
step
click Forbidden Memoire
|tip Inside the cave.
Examine the Forbidden Memoire |q 72717/4 |goto Dragonskull Island/0 10.94,61.27 |count 1
|tip You can skip this step if you would prefer.
step
kill Failed Scalecommander Elarthresh##201820 |q 72717/1 |goto Dragonskull Island/0 14.65,49.00
|tip Inside the cave.
step
kill Failed Scalecommander Abereth##201823 |q 72717/3 |goto Dragonskull Island/0 30.97,35.22
|tip Inside the cave.
step
kill Failed Scalecommander Haerothal##201822 |q 72717/2 |goto Dragonskull Island/0 67.92,14.76
|tip Inside the cave.
step
click Forbidden Memoire
|tip Inside the cave.
Examine the Forbidden Memoire |q 72717/4 |goto Dragonskull Island/0 70.63,50.73 |count 2
|tip You can skip this step if you would prefer.
step
click Forbidden Memoire
|tip Inside the cave.
Examine the Forbidden Memoire |q 72717/4 |goto Dragonskull Island/0 84.45,46.05 |count 3
|tip You can skip this step if you would prefer.
step
click Forbidden Memoire
|tip Inside the cave.
Examine the Forbidden Memoire |q 72717/4 |goto Dragonskull Island/0 57.19,74.72 |count 4
|tip You can skip this step if you would prefer.
step
talk Scalecommander Emberthal##199539
turnin A Creche Divided##72717 |goto The Forbidden Reach/5 76.73,38.52
step
Watch the dialogue
talk Scalecommander Emberthal##199539
accept Return to Viridia##73156 |goto The Forbidden Reach/5 76.73,38.53
step
talk Treysh##200559
turnin Still Within Reach##74379 |goto The Forbidden Reach/5 35.61,59.49
step
talk Scalecommander Viridia##199201
turnin Return to Viridia##73156 |goto The Forbidden Reach/5 34.60,57.67
step
collect Atrenosh's Journal##203463 |q 74359/1
|tip You can loot this randomly from chests all over The Forbidden Reach.
step
talk Atrenosh Hailstone##200010
turnin Plunder Siege##74359 |goto The Forbidden Reach/5 34.65,57.57
step
label "Collect_3_Zskera_Vault_Keys"
collect 3 Zskera Vault Key##202196 |q 73089
|tip These come from various activities within The Forbidden Reach.
|tip Complete events and kill rare spawns for a chance for them to drop.
step
talk Atrenosh Hailstone##200010
Select _"Let's explore Zskera Vault Az."_
Enter Zskera Vault: Az |complete subzone("Zskera Vault: Az") |goto The Forbidden Reach/5 29.09,53.13 |q 74355
step
click Door
|tip On the first level of the vault.
Unlock the door |goto The Forbidden Reach/5 30.57,56.01
click Primordial Jeweler's Kit##389631
collect 1 Primordial Jeweler's Kit##204353 |q 74355/1 |goto The Forbidden Reach/5 31.16,55.91
step
click Flask of Windward Steps##385687
Gain the "Windward Steps" Buff |complete hasbuff(398283) |goto The Forbidden Reach/5 28.35,56.13 |q 74355
step
extraaction Windward Steps##398280
|tip Use this to navigate platforms, launching forward a short distance.
click Door
|tip On the second level of the vault.
Unlock the door |goto The Forbidden Reach/5 29.37,57.73
click Primordial Anvil##393934
collect 1 Primordial Anvil##204685 |q 74355/2 |goto The Forbidden Reach/5 29.13,57.92
step
extraaction Windward Steps##398280
|tip Use this to navigate platforms, launching forward a short distance.
Open #3# Doors with Zskera Vault Keys |q 73089/1 |goto The Forbidden Reach/5 30.31,56.53
|tip Doors will stay open until the next weekly reset.
step
Leave Zskera Vault: Az |complete not subzone("Zskera Vault: Az") |goto The Forbidden Reach/5 28.81,49.98
step
talk Pathfinder Tacha##200041
turnin What's Behind The Next Door##73089 |goto The Forbidden Reach/5 29.16,53.13
step
talk Researcher Imareth##200724
turnin Primordial Embellishment##74355 |goto The Forbidden Reach/5 35.18,57.61
step
talk Pathfinder Jeb##200040
accept The Scary Vault of Ur##72952 |goto The Forbidden Reach/5 29.09,53.13
|tip This quest appears on a rotation with six other versions of the vault.
|tip Check back at the next daily reset for it.
step
talk Cataloger Wulferd##201180
accept Authentic Authorization##74984 |goto The Forbidden Reach/5 29.26,52.69 |or
accept Authentic Authorization##74983 |goto The Forbidden Reach/5 29.26,52.69 |or
accept Authentic Authorization##74282 |goto The Forbidden Reach/5 29.26,52.69 |or
|tip You will only be able to accept one of these weekly quests.
|tip Any time you open vault doors, look around for the objective of the weekly quest.
|only if not completedq(72952)
step
collect Zskera Vault Key##202196 |q 72952
|tip You will need at least one of these to open a vault door for the quest.
|tip You can acquire these from rare chests and rare mobs all over The Forbidden Reach.
step
talk Pathfinder Jeb##200040
Choose _"Let's explore Zskera Vault Ur."_
Speak with Jeb to Enter the Vault |q 72952/1 |goto The Forbidden Reach/5 29.09,53.13
step
Run down the stairs |goto The Forbidden Reach/5 29.09,52.39 < 10 |walk
Kill the elite
|tip Inside the middle of the vault.
Secure the Vault |q 72952/2 |goto The Forbidden Reach/5 29.57,56.31
step
click Door
Open the Doors with Zskera Vault Keys |q 72952/3 |goto The Forbidden Reach/5 29.57,56.31
step
Click Here to Continue |confirm |q 72952
|tip From this point, you can either continue opening vault doors until you exhaust your keys, or save them for later.
step
Leave Zskera Vault: Ur |complete not subzone("Zskera Vault: Ur") |goto The Forbidden Reach/5 28.81,49.98 |q 72952
step
talk Pathfinder Jeb##202218
turnin The Scary Vault of Ur##72952 |goto The Forbidden Reach/5 29.09,53.13
step
talk Pathfinder Jeb##200040
accept Zskera Vault: Ix##72954 |goto The Forbidden Reach/5 29.09,53.13
|tip This quest appears on a rotation with six other versions of the vault.
|tip Check back at the next daily reset for it.
step
talk Pathfinder Tacha##200041
accept Key Hunting##74771 |goto The Forbidden Reach/5 29.16,53.13
step
talk Cataloger Wulferd##201180
accept Authentic Authorization##74984 |goto The Forbidden Reach/5 29.26,52.69 |or
accept Authentic Authorization##74983 |goto The Forbidden Reach/5 29.26,52.69 |or
accept Authentic Authorization##74282 |goto The Forbidden Reach/5 29.26,52.69 |or
|tip You will only be able to accept one of these weekly quests.
|tip Any time you open vault doors, look around for the objective of the weekly quest.
|only if not completedq(72954)
step
collect 3 Zskera Vault Key##202196 |q 74771/1
|tip You can acquire these from rare chests and rare mobs all over The Forbidden Reach.
step
talk Pathfinder Tacha##200041
turnin Key Hunting##74771 |goto The Forbidden Reach/5 29.16,53.13
step
talk Pathfinder Jeb##200040
Choose _"Let's explore Zskera Vault Ix."_
Speak with Jeb to Enter the Vault |q 72954/1 |goto The Forbidden Reach/5 29.09,53.13
step
talk Volethi##201240
accept Not Forgotten##74293 |goto The Forbidden Reach/5 28.87,52.26
stickystart "Free_Imprisoned_Dracthyr"
step
kill Toadstool Danner##200260 |q 72954/2 |goto The Forbidden Reach/5 29.57,56.31
|tip Inside the middle of the vault.
step
click Igniter Torch##387508
collect Igniter Torch##204066 |goto The Forbidden Reach/5 29.66,56.63 |q 72954
step
click Breaching Cannon
Fire the Breaching Cannon |q 72954/4 |goto The Forbidden Reach/5 29.81,56.53
|tip This will blast open the door in front of it and an enemy will attack you.
step
click Door
Open the Doors with Zskera Vault Keys |q 72954/3 |goto The Forbidden Reach/5 29.57,56.31
step
Click Here to Continue |confirm |q 72954
|tip From this point, you can either continue opening vault doors until you exhaust your keys, or save them for later.
step
label "Free_Imprisoned_Dracthyr"
clicknpc Imprisoned Dracthyr##200568+
|tip They look like Dracthry frozen in place behind vault doors.
Free #6# Imprisoned Dracthyr |q 74293/1 |goto The Forbidden Reach/5 29.57,56.31
step
Leave Zskera Vault: Ix |complete not subzone("Zskera Vault: Ix") |goto The Forbidden Reach/5 28.81,49.98 |q 72954
step
talk Pathfinder Jeb##202218
turnin Zskera Vault: Ix##72954 |goto The Forbidden Reach/5 29.09,53.13
step
talk Scalecommander Viridia##199201
turnin Not Forgotten##74293 |goto The Forbidden Reach/5 34.60,57.68
step
talk Pathfinder Jeb##200040
accept Zskera Vault: Kx##72955 |goto The Forbidden Reach/5 29.09,53.13
|tip This quest appears on a rotation with six other versions of the vault.
|tip Check back at the next daily reset for it.
step
talk Cataloger Wulferd##201180
accept Authentic Authorization##74984 |goto The Forbidden Reach/5 29.26,52.69 |or
accept Authentic Authorization##74983 |goto The Forbidden Reach/5 29.26,52.69 |or
accept Authentic Authorization##74282 |goto The Forbidden Reach/5 29.26,52.69 |or
|tip You will only be able to accept one of these weekly quests.
|tip Any time you open vault doors, look around for the objective of the weekly quest.
|only if not completedq(72955)
step
collect Zskera Vault Key##202196 |q 72955
|tip You will need at least one of these to open a vault door for the quest.
|tip You can acquire these from rare chests and rare mobs all over The Forbidden Reach.
step
talk Pathfinder Jeb##200040
Choose _"Let's explore Zskera Vault Kx."_
Speak with Jeb to Enter the Vault |q 72955/1 |goto The Forbidden Reach/5 29.09,53.13
step
Run down the stairs |goto The Forbidden Reach/5 29.09,52.39 < 10 |walk
Kill enemies around this area
|tip Inside the middle of the vault.
Secure the Vault |q 72955/2 |goto The Forbidden Reach/5 29.57,56.31
step
click Door
Open the Doors with Zskera Vault Keys |q 72955/3 |goto The Forbidden Reach/5 29.57,56.31
step
Click Here to Continue |confirm |q 72955
|tip From this point, you can either continue opening vault doors until you exhaust your keys, or save them for later.
step
Leave Zskera Vault: Kx |complete not subzone("Zskera Vault: Kx") |goto The Forbidden Reach/5 28.81,49.98 |q 72955
step
talk Pathfinder Jeb##202218
turnin Zskera Vault: Kx##72955 |goto The Forbidden Reach/5 29.09,53.13
step
talk Pathfinder Jeb##200040
accept More Doors To Open##72956 |goto The Forbidden Reach/5 29.09,53.13
|tip This quest appears on a rotation with six other versions of the vault.
|tip Check back at the next daily reset for it.
step
talk Cataloger Wulferd##201180
accept Authentic Authorization##74984 |goto The Forbidden Reach/5 29.26,52.69 |or
accept Authentic Authorization##74983 |goto The Forbidden Reach/5 29.26,52.69 |or
accept Authentic Authorization##74282 |goto The Forbidden Reach/5 29.26,52.69 |or
|tip You will only be able to accept one of these weekly quests.
|tip Any time you open vault doors, look around for the objective of the weekly quest.
|only if not completedq(72956)
step
collect Zskera Vault Key##202196 |q 72956
|tip You will need at least one of these to open a vault door for the quest.
|tip You can acquire these from rare chests and rare mobs all over The Forbidden Reach.
step
talk Pathfinder Jeb##200040
Choose _"Let's explore Zskera Vault Ur."_
Speak with Jeb to Enter the Vault |q 72956/1 |goto The Forbidden Reach/5 29.09,53.13
step
Run down the stairs |goto The Forbidden Reach/5 29.09,52.39 < 10 |walk
kill 1 Farscale Overseer##202653
|tip Inside the middle of the vault.
Secure the Vault |q 72956/2 |goto The Forbidden Reach/5 29.57,56.31
step
click Door
Open the Doors with Zskera Vault Keys |q 72956/3 |goto The Forbidden Reach/5 29.57,56.31
step
Click Here to Continue |confirm |q 72956
|tip From this point, you can either continue opening vault doors until you exhaust your keys, or save them for later.
step
Leave the Zskera Vaults |complete not subzone("Zskera Vaults") |goto The Forbidden Reach/5 28.81,49.98 |q 72956
step
talk Pathfinder Jeb##202218
turnin More Doors To Open##72956 |goto The Forbidden Reach/5 29.09,53.13
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Old Hatreds Questline",{
author="support@zygorguides.com",
startlevel=68,
patch='100007',
},[[
step
talk Mayla Highmountain##202656
accept A Debt That Must Be Paid##72591 |goto Valdrakken/0 50.80,58.65
step
talk Baine Bloodhoof##199323
turnin A Debt That Must Be Paid##72591 |goto Ohn'ahran Plains/0 66.62,38.58
accept Scars from the Past##72592 |goto Ohn'ahran Plains/0 66.62,38.58
step
talk Khanam Matra Sarest##181198
Choose _"<Ask about Bovan Windtotem and his tribe.>"_
Speak to the Khanam Matra |q 72592/1 |goto Ohn'ahran Plains/0 60.00,37.48
step
talk Sansok Khan##195543
Choose _"<Ask about Bovan Windtotem and his tribe.>"_
Speak to Sansok Khan |q 72592/2 |goto Ohn'ahran Plains/0 63.41,41.39
step
talk Scout Tomul##191485
Choose _"<Ask Tomul about the missing tauren and relay Sansok Khan's request.>"_
Speak to Scout Tomul |q 72592/3 |goto Ohn'ahran Plains/0 62.43,41.72
step
talk Baine Bloodhoof##199323
turnin Scars from the Past##72592 |goto Ohn'ahran Plains/0 66.62,38.58
step
talk Scout Tomul##199330
accept A Tomul-tuous Beginning##72593 |goto Ohn'ahran Plains/0 66.64,38.68
step
talk Baine Bloodhoof##202707
turnin A Tomul-tuous Beginning##72593 |goto Ohn'ahran Plains/0 69.32,47.69
accept The Search for Bovan Windtotem##72595 |goto Ohn'ahran Plains/0 69.32,47.69
step
talk Scout Tomul##202706
accept Resupplying Supplies##72662 |goto Ohn'ahran Plains/0 69.40,47.73
stickystart "Collect_40_Fresh_Plains_Meat"
step
click Bloody Axe
Choose _<Collect the axe.>_
collect 1 Bloody Axe##202405 |q 72595/1 |goto Ohn'ahran Plains/0 71.43,44.47
step
talk Windtotem Survivor##202740
Choose _<Tell the brave how to get back to Baine.>_
Rescue a Windtotem Survivor |q 72595/4 |count 1 |goto Ohn'ahran Plains/0 71.91,47.73
step
talk Windtotem Survivor##202740
Choose _<Tell the brave how to get back to Baine.>_
Rescue a Windtotem Survivor |q 72595/4 |count 2 |goto Ohn'ahran Plains/0 74.83,48.29
step
talk Windtotem Survivor##202740
Choose _<Tell the brave how to get back to Baine.>_
Rescue a Windtotem Survivor |q 72595/4 |count 3 |goto Ohn'ahran Plains/0 76.45,51.36
step
click Discarded Necklace
Choose _<Collect the necklace.>_
collect 1 Tauren Necklace##202414 |q 72595/3 |goto Ohn'ahran Plains/0 74.53,53.41
step
clicknpc Unidentified Tauren##200787
Choose _<Collect the headdress.>_
collect 1 Unique Headdress##202415 |q 72595/2 |goto Ohn'ahran Plains/0 72.85,50.94
step
label "Collect_40_Fresh_Plains_Meat"
Kill enemies around this area
collect 40 Fresh Plains Meat##202394 |q 72662/1 |goto Ohn'ahran Plains/0 74.54,50.52
step
talk Scout Tomul##202706
turnin Resupplying Supplies##72662 |goto Ohn'ahran Plains/0 69.40,47.73
step
talk Baine Bloodhoof##202707
turnin The Search for Bovan Windtotem##72595 |goto Ohn'ahran Plains/0 69.33,47.69
accept A Place of Refuge##74946 |goto Ohn'ahran Plains/0 69.33,47.69
step
talk Scout Tomul##200492
turnin A Place of Refuge##74946 |goto Ohn'ahran Plains/0 73.33,55.07
accept Delivering Bad News##72594 |goto Ohn'ahran Plains/0 73.33,55.07
step
talk Koya Windtotem##200700
Choose _"<Ask about the headdress you found.>"_
Find the Owner of the Headdress |q 72594/3 |goto Ohn'ahran Plains/0 72.36,55.46
step
talk Ironhoof##200699
Choose _"<Ask about the axe you found.>"_
Find the Owner of the Axe |q 72594/1 |goto Ohn'ahran Plains/0 73.21,56.41
step
talk Tam Windtotem##200698
Choose _"<Ask about the necklace you found.>"_
Find the Owner of the Necklace |q 72594/2 |goto Ohn'ahran Plains/0 72.33,57.27
step
talk Baine Bloodhoof##200831
turnin Delivering Bad News##72594 |goto Ohn'ahran Plains/0 72.76,55.82
accept Pinewood Trail##72663 |goto Ohn'ahran Plains/0 72.76,55.82
step
talk Baine Bloodhoof##200932
turnin Pinewood Trail##72663 |goto Ohn'ahran Plains/0 80.91,57.62
accept Joint Rescue Operation##72599 |goto Ohn'ahran Plains/0 80.91,57.62
step
talk Scout Tomul##200933
accept A Proper Shikaar Send-Off##72600 |goto Ohn'ahran Plains/0 80.91,57.72
stickystart "Plant_10_Shikaar_Banners"
step
clicknpc Windtotem Captive##200983
Free the Windtotem Captive |q 72599/1 |count 1 |goto Ohn'ahran Plains/0 83.23,55.66
step
clicknpc Windtotem Captive##200983
Free the Windtotem Captive |q 72599/1 |count 2 |goto Ohn'ahran Plains/0 83.80,53.69
step
clicknpc Windtotem Captive##200983
Free the Windtotem Captive |q 72599/1 |count 3 |goto Ohn'ahran Plains/0 84.61,52.83
step
clicknpc Windtotem Captive##200983
Free the Windtotem Captive |q 72599/1 |count 4 |goto Ohn'ahran Plains/0 86.47,53.52
step
clicknpc Windtotem Captive##200983
|tip Inside the building.
Free the Windtotem Captive |q 72599/1 |count 5 |goto Ohn'ahran Plains/0 86.11,54.55
step
clicknpc Windtotem Captive##200983
Free the Windtotem Captive |q 72599/1 |count 6 |goto Ohn'ahran Plains/0 84.88,55.88
step
label "Plant_10_Shikaar_Banners"
Kill Nokhud enemies around this area
use the Shikaar Banners##203470
|tip Use it on the corpses of enemies you kill.
Plant #10# Shikaar Banners |q 72600/1 |goto Ohn'ahran Plains/0 84.37,54.13
You can find more around [86.61,50.63]
step
talk Scout Tomul##200938
turnin A Proper Shikaar Send-Off##72600 |goto Ohn'ahran Plains/0 87.18,51.52
step
talk Baine Bloodhoof##200939
turnin Joint Rescue Operation##72599 |goto Ohn'ahran Plains/0 87.26,51.60
step
talk Scout Tomul##200938
accept Bovan's Last Hope##72601 |goto Ohn'ahran Plains/0 87.18,51.52
step
talk Windsage Boku##199409
turnin Bovan's Last Hope##72601 |goto Ohn'ahran Plains/0 56.57,73.83
accept Optimistic Mystic##72602 |goto Ohn'ahran Plains/0 56.57,73.83
step
kill Geyser Salamanther##186705
collect 1 Strong Salamanther Heart##203474 |q 72602/1 |goto Ohn'ahran Plains/0 54.04,72.99
step
click Geyser Flower##386398
collect 8 Geyser Flower##203473 |q 72602/2 |goto Ohn'ahran Plains/0 53.51,70.91
step
talk Windsage Boku##199409
turnin Optimistic Mystic##72602 |goto Ohn'ahran Plains/0 56.87,71.64
accept What Words Are Worth##72603 |goto Ohn'ahran Plains/0 56.87,71.64
step
click Incense Burner
Place the Items |q 72603/1 |goto Ohn'ahran Plains/0 56.91,71.60
step
Watch the Dialogue
Witness the Vision |q 72603/2 |goto Ohn'ahran Plains/0 56.91,71.60
step
talk Baine Bloodhoof##201424
turnin What Words Are Worth##72603 |goto Ohn'ahran Plains/0 56.87,71.54
accept Desperate Rescue##72604 |goto Ohn'ahran Plains/0 56.87,71.54
step
talk Baine Bloodhoof##201488
turnin Desperate Rescue##72604 |goto Ohn'ahran Plains/0 38.09,34.01
accept Saving Bovan Windtotem##72605 |goto Ohn'ahran Plains/0 38.08,34.02
step
use the Borrowed Potion of Invisibility##203685
Consume the Borrowed Potion of Invisibility |q 72605/1 |goto Ohn'ahran Plains/0 38.01,34.17
step
click Prisoner Transfer Notes
|tip It looks like scattered papers on the ground.
|tip Avoid enemies with the giant circles around them.
Find the Prisoner Transfer Notes |q 72605/2 |goto Ohn'ahran Plains/0 35.10,36.38
step
Follow the path down |goto Ohn'ahran Plains/0 34.19,36.99 < 30 |only if walking
click Interrogation Notes
|tip It looks like scattered papers on the ground.
|tip Avoid enemies with the giant circles around them.
Find the Interrogation Notes |q 72605/3 |goto Ohn'ahran Plains/0 35.10,38.94
step
click Prisoner Update Notes
Find the Prisoner Update Notes |q 72605/4 |goto Ohn'ahran Plains/0 36.12,40.81
step
Find Bovan Windtotem |q 72605/5 |goto Ohn'ahran Plains/0 33.21,42.93
step
talk Baine Bloodhoof##201496
turnin Saving Bovan Windtotem##72605 |goto Ohn'ahran Plains/0 33.14,42.96
step
talk Baine Bloodhoof##201516
accept See Red##72606 |goto Ohn'ahran Plains/0 33.33,42.65
step
Kill enemies around this area
Slay the Centuar within the Nokhudon Hold |q 72606/1 |goto Ohn'ahran Plains/0 34.88,38.62
step
_Next to you:_
talk Baine Bloodhoof##203204
turnin See Red##72606
accept Old Hatreds##72607
step
kill Jamoku##199914 |q 72607/1 |goto Ohn'ahran Plains/0 33.05,38.48
step
talk Baine Bloodhoof##201528
turnin Old Hatreds##72607 |goto Ohn'ahran Plains/0 33.26,42.93
step
talk Scout Tomul##201530
accept Case Closed##72609 |goto Ohn'ahran Plains/0 33.41,42.82
step
talk Scout Tomul##201529
turnin Case Closed##72609 |goto Ohn'ahran Plains/0 72.68,56.02
step
talk Baine Bloodhoof##201566
accept Letting Go##72611 |goto Ohn'ahran Plains/0 72.71,56.08
step
talk Baine Bloodhoof##201566
Choose _"<Tell Baine you will participate in the funeral.>"_
|tip The second option will skip the next couple of steps.
Speak with Baine |q 72611/1 |goto Ohn'ahran Plains/0 72.71,56.08
step
click Centaur Pyre
Light the First |q 72611/2 |goto Ohn'ahran Plains/0 72.47,55.95
step
click Centaur Pyre
Light the Second Pyre |q 72611/3 |goto Ohn'ahran Plains/0 72.50,56.02
step
click Tauren Pyre
Light the Third Pyre |q 72611/4 |goto Ohn'ahran Plains/0 72.55,56.09
step
click Tauren Pyre
Light the Final Pyre |q 72611/5 |goto Ohn'ahran Plains/0 72.59,56.16
step
Watch the Dialogue
Conclude the Funeral |q 72611/6 |goto Ohn'ahran Plains/0 72.69,56.06
step
talk Baine Bloodhoof##201566
turnin Letting Go##72611 |goto Ohn'ahran Plains/0 72.71,56.08
accept A Final Word##75258 |goto Ohn'ahran Plains/0 72.71,56.08
step
talk Baine Bloodhoof##201566
turnin A Final Word##75258 |goto Ohn'ahran Plains/0 72.71,56.08
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\The Forbidden Reach Side Quests",{
author="support@zygorguides.com",
startlevel=68,
patch='100007',
},[[
step
label "Active_Quests_Available"
Wait for a Quest to Become Available |complete questactive(73189,75024,75026,73191,75025,73190,73142,73179,73178,73694,73141,73140,73398,73194)
step
talk Volethi##200727
accept Creche Cache##73189 |goto The Forbidden Reach/5 34.84,57.47 |only if questactive(73189)
accept Sneaky Pebbles##75024 |goto The Forbidden Reach/5 34.85,57.48 |only if questactive(75024)
|only if questactive(73189,75024)
step
talk Tukkaraq##200558
accept Up to the Highest Height!##75026 |goto The Forbidden Reach/5 34.36,58.57 |only if questactive(75026)
accept Everburning Embers##73141 |goto The Forbidden Reach/5 34.36,58.57 |only if questactive(73141)
accept Driftwood Derby##73715 |goto The Forbidden Reach/5 34.36,58.57 |only if questactive(73715)
|only if questactive(75026,73141,73715)
step
talk Scalecommander Viridia##199201
accept Stuck in Stasis##73694 |goto The Forbidden Reach/5 34.60,57.67
|only if questactive(73694)
step
Talk to NPCs around this area
|tip The Dracthyr Stoneclaw will tank for you.
|tip The Dracthyr Mender will heal for you.
Select _"Come with me to the Froststone Vault."_
Recruit the Healing Wing |q 73694/1 |goto The Forbidden Reach/5 34.74,57.94
|only if haveq(73694) or completedq(73694)
step
talk Cataloger Coralie##201291
accept Snake Wrangling##73191 |goto The Forbidden Reach/5 34.36,59.28 |only if questactive(73191)
accept A Good Day for Rolling##75025 |goto The Forbidden Reach/5 34.36,59.28 |only if questactive(75025)
|only if questactive(73191,75025)
step
talk Scalecommander Cindrethresh##199199
accept Toxic Infestation##73190 |goto The Forbidden Reach/5 35.31,59.49 |only if questactive(73190)
accept Busting Blues##73142 |goto The Forbidden Reach/5 35.31,59.50 |only if questactive(73142)
accept Soupocalypse Now!##73179 |goto The Forbidden Reach/5 35.30,59.49 |only if questactive(73179)
accept Up Close and Personal##73194 |goto The Forbidden Reach/5 35.30,59.49 |only if questactive(73194)
|only if questactive(73190,73142,73179,73194)
step
talk Scalecommander Azurathel##199204
accept Hands Off Our Booty!##73178 |goto The Forbidden Reach/5 35.53,58.69 |only if questactive(73178)
accept Sunder the Crater##73140 |goto The Forbidden Reach/5 35.53,58.69 |only if questactive(73140)
accept Too Far Forward##73398 |goto The Forbidden Reach/5 35.53,58.69 |only if questactive(73398)
|only if questactive(73178,73140,73398)
step
clicknpc Tukkaraq's Boat##201122
Board Tukkaraq's Boat |q 73715/1 |goto The Forbidden Reach/5 36.60,57.61
|only if haveq(73715) or completedq(73715)
step
clicknpc Driftwood##201138
|tip Use the abilities on your vehicle bar to catch driftwood in the water.
|tip Toss Net at pieces of driftwood.
|tip Throw fish to stun enemies.
|tip Water Shield to reduce damage and heal.
Net #24# Driftwood |q 73715/2
|only if haveq(73715) or completedq(73715)
stickystart "Slay_Irontide_Cutthroats"
step
click Stolen Booty##385999+
|tip They look like small chests around these areas.
collect 10 Stolen Goods##202647 |q 73178/2 |goto The Forbidden Reach/5 38.56,64.50
You can find more around:
[37.67,78.67]
[34.25,45.30]
|only if haveq(73178) or completedq(73178)
step
label "Slay_Irontide_Cutthroats"
Kill Irontide enemies around this area
Slay #10# Irontide Cutthroats |q 73178/1 |goto The Forbidden Reach/5 37.67,78.67
|only if haveq(73178) or completedq(73178)
step
talk Fusethrian##200987
Choose _<Ask for explosive... soup?>_
Obtain the Explosive Soup Experiments |q 73179/1 |goto The Forbidden Reach/5 34.16,59.77
|only if haveq(73179) or completedq(73179)
step
clicknpc Morqut Glider##201376
Take the Glider |q 73179/2 |goto The Forbidden Reach/5 35.70,59.00
|only if haveq(73179) or completedq(73179)
step
Slay #50# Irontide Invaders |q 73179/3 |goto The Forbidden Reach/5 21.13,45.45
|tip Use the abilities on your vehicle bar to attack enemies on the boat.
|only if haveq(73179) or completedq(73179)
stickystart "Kill_Dragonbane_Beetles"
step
kill Pestilent Pincher##200910 |q 73190/2 |goto The Forbidden Reach/5 41.04,35.84
|only if haveq(73190) or completedq(73190)
step
use the Proto-Killing Spear##202642
|tip Use it on a proto dragon flying around one of these areas.
|tip While on the proto dragon, attack it until your bar switches to a vehicle bar.
|tip Spam the ability to deal damage to the proto dragon.
|tip Repeat this until it dies.
Slay a Proto-dragon with the Proto-Killing Spear |q 73194/1 |goto The Forbidden Reach/5 39.60,52.62
You can find more around:
[50.33,53.11]
[60.69,60.44]
[69.68,58.47]
|only if haveq(73194) or completedq(73194)
step
click Infuser Shard+
|tip They look like tiny crystals on the ground around this area.
|tip Aim at Dragonbane Beetles and fire the crystal at them to infuse and defeat them.
Defeat #12# Infused Beetles |q 75024/1 |goto The Forbidden Reach/5 39.36,32.76
|only if haveq(75024) or completedq(75024)
step
label "Kill_Dragonbane_Beetles"
kill 24 Dragonbane Beetle##198792 |q 73190/1 |goto The Forbidden Reach/5 39.83,35.02
|only if haveq(73190) or completedq(73190)
step
click Snowball
|tip They look like large round balls of snow on the ground around this area.
|tip While carrying them, run over burning critters to save them.
Save #14# Overcharged Critters |q 75025/1 |goto The Forbidden Reach/5 61.81,26.70
|only if haveq(75025) or completedq(75025)
step
clicknpc Broken Kite Piece##203134+
|tip They look like small pieces of wood on the ground around this area.
|tip They appear on your minimap as yellow dots.
Collect #12# Kite Pieces |q 75026/1 |goto The Forbidden Reach/5 31.97,60.59
|only if haveq(75026) or completedq(75026)
step
click Rustling Bush##384952+
|tip They look like green bushes on the ground around this area.
Collect #6# Toxic Watersnakes |q 73191/1 |goto The Forbidden Reach/5 41.28,40.55
You can find more around [45.61,37.24]
|only if haveq(73191) or completedq(73191)
step
extraaction Release Watersnakes##400872
|tip Use the button that appears on your screen.
Release the Toxic Watersnakes |q 73191/2 |goto The Forbidden Reach/5 42.91,38.91
|only if haveq(73191) or completedq(73191)
step
Kill enemies around this area
collect 10 Arcane Focus##202362 |q 73142/1 |goto The Forbidden Reach/5 52.59,56.41
|only if haveq(73142) or completedq(73142)
step
Enter the Support Creche |q 73189/1 |goto The Forbidden Reach/5 36.68,32.41
|only if haveq(73189) or completedq(73189)
step
use the Toxin Antidote##202620
|tip Use it to reduce your toxin level before it overwhelms you.
|tip Avoid cloudy areas on the ground, which increase your toxicity level faster.
click Mender Supplies##385990+
|tip They look like wooden crates inside the building.
collect 6 Mender Supplies##202619 |q 73189/2 |goto The Support Creche/0 37.51,44.98
|only if haveq(73189) or completedq(73189)
stickystart "Slay_Ice_Primalists"
step
clicknpc Imprisoned Dracthyr##201060+
|tip They look like Dracthyr frozen in stasis inside the building.
|tip They appear on your minimap as yellow dots.
Free #6# Imprisoned Dracthyr |q 73694/2 |goto Froststone Vault/0 55.23,39.08
|only if haveq(73694) or completedq(73694)
step
label "Slay_Ice_Primalists"
Kill enemies around this area.
|tip Inside the building.
Slay #10# Ice Primalists |q 73694/3 |goto Froststone Vault/0 55.23,39.08
|only if haveq(73694) or completedq(73694)
step
Kill enemies around this area
|tip Inside and outside The Siege Creche.
collect 14 Everburning Ember##202364 |q 73141/1 |goto The Siege Creche/0 58.82,38.53
|only if haveq(73141) or completedq(73141)
stickystart "Slay_Sundered_Flame_Enemies"
step
Click NPCs around this area
|tip They look like Dracthyr NPCs laying on the ground around this area.
|tip You can find them inside and outside buildings.
use the Healing Draught##202874
|tip Use it on Injured Dracthyr around this area.
Heal #8# Injured Dracthyr |q 73398/1 |goto The Forbidden Reach/5 58.18,67.15
|only if haveq(73398) or completedq(73398)
step
label "Slay_Sundered_Flame_Enemies"
Kill Sundered enemies around this area
Slay #10# Sundered Flame Enemies |q 73398/2 |goto The Forbidden Reach/5 58.18,67.15
|only if haveq(73398) or completedq(73398)
step
kill Adept Stormbringer##200711 |q 73140/3 |goto The Forbidden Reach/5 69.80,59.62
|only if haveq(73140) or completedq(73140)
step
label "Destroy_Primalist_Totems"
click Primalist Totem
|tip They look like roots tipped with white light growing from the ground around this area.
Destroy #6# Primalist Totems |q 73140/2 |goto The Forbidden Reach/5 69.80,59.62
|only if haveq(73140) or completedq(73140)
step
label "Slay_Air_or_Earth_Primalists"
Kill Primalist enemies around this area
Slay #8# Air or Earth Primalists |q 73140/1 |goto The Forbidden Reach/5 69.80,59.62
|only if haveq(73140) or completedq(73140)
step
use the Toxin Antidote##202620 |only if subzone("The Support Creche")
|tip Use it to reduce your toxin level before it overwhelms you. |only if subzone("The Support Creche")
|tip Avoid cloudy areas on the ground, which increase your toxicity level faster. |only if subzone("The Support Creche")
talk Volethi##200727
turnin Creche Cache##73189 |goto The Forbidden Reach/5 34.84,57.47 |only if haveq(73189) or completedq(73189)
turnin Sneaky Pebbles##75024 |goto The Forbidden Reach/5 34.85,57.48 |only if haveq(75024) or completedq(75024)
|only if haveq(73189,75024) or completedq(73189,75024)
step
talk Scalecommander Viridia##199201
turnin Stuck in Stasis##73694 |goto The Forbidden Reach/5 34.60,57.67
|only if haveq(73694) or completedq(73694)
step
talk Cataloger Coralie##201291
turnin Snake Wrangling##73191 |goto The Forbidden Reach/5 34.36,59.28 |only if haveq(73191) or completedq(73191)
turnin A Good Day for Rolling##75025 |goto The Forbidden Reach/5 34.36,59.28 |only if haveq(75025) or completedq(75025)
|only if haveq(73191,75025) or completedq(73191,75025)
step
talk Tukkaraq##200558
turnin Up to the Highest Height!##75026 |goto The Forbidden Reach/5 34.36,58.57 |only if haveq(75026) or completedq(75026)
turnin Everburning Embers##73141 |goto The Forbidden Reach/5 34.36,58.57 |only if haveq(73141) or completedq(73141)
turnin Driftwood Derby##73715 |goto The Forbidden Reach/5 34.36,58.57 |only if haveq(73715) or completedq(73715)
|only if haveq(75026,73141,73715) or completedq(75026,73141,73715)
step
talk Scalecommander Cindrethresh##199199
turnin Toxic Infestation##73190 |goto The Forbidden Reach/5 35.31,59.49 |only if haveq(73190) or completedq(73190)
turnin Busting Blues##73142 |goto The Forbidden Reach/5 35.31,59.50 |only if haveq(73142) or completedq(73142)
turnin Soupocalypse Now!##73179 |goto The Forbidden Reach/5 35.30,59.49 |only if haveq(73179) or completedq(73179)
turnin Up Close and Personal##73194 |goto The Forbidden Reach/5 35.30,59.49 |only if haveq(73194) or completedq(73194)
|only if haveq(73190,73142,73179,73194) or completedq(73190,73142,73179,73194)
step
talk Scalecommander Azurathel##199204
turnin Hands Off Our Booty!##73178 |goto The Forbidden Reach/5 35.53,58.69 |only if haveq(73178) or completedq(73178)
turnin Sunder the Crater##73140 |goto The Forbidden Reach/5 35.53,58.69 |only if haveq(73140) or completedq(73140)
turnin Too Far Forward##73398 |goto The Forbidden Reach/5 35.53,58.69 |only if haveq(73398) or completedq(73398)
|only if haveq(73178,73140,73398) or completedq(73178,73140,73398)
step
You have completed all available side quests in The Forbidden Reach
|tip This guide will reset when more become available.
'|complete questactive(73189,75024,75026,73191,75025,73190,73142,73179,73178,73694,73141,73715,73140,73398,73194) |next "Active_Quests_Available"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Dragon Glyphs\\Dragon Glyphs (Zaralek Cavern)",{
author="support@zygorguides.com",
achieveid={18150},
patch='100100',
},[[
step
_NOTE:_
Dragon Glyphs & Dragonriding Skills
|tip You will need to complete the start of the "Zaralek Cavern" guide to unlock the area.
|tip Dragon Glyphs look like large round golden runes that float in the air, spread out across the continent.
|tip You fly through them on your dragonriding mount to collect them.
|tip Collecting them will give you Dragonriding skill points, which can be used to increase the power of your Dragonriding ability.
|tip This guide will walk you through collecting all of the Dragon Glyphs, so that you can max out your Dragonriding skill quickly.
|tip As you collect Dragon Glyphs, to spend the skill points, click the "Dragon Isles Summary" button on your minimap, and click the "View" button under "Dragonriding Skills & Unlocks".
Click Here to Continue |confirm
step
Complete the "It Was Not Enough" Quest |complete completedq(72873) |or
|tip Complete this quest in the "Zaralek Cavern" leveling guide to gain access to the zone.
Click Here to Load the "Zaralek Cavern" Leveling Guide |confirm |loadguide "Leveling Guides\\Dragonflight (10-70)\\Zaralek Cavern" |or
step
Collect the Dragon Glyph: Loamm |achieve 18150/3 |goto Zaralek Cavern/0 54.75,54.71 |notravel
|tip Near the roof.
step
Collect the Dragon Glyph: The Throughway |achieve 18150/6 |goto Zaralek Cavern/0 72.05,48.44 |notravel
|tip Behind the stalactites hanging from the ceiling.
step
Collect the Dragon Glyph: Nal Ks'kol |achieve 18150/2 |goto Zaralek Cavern/0 62.70,70.39 |notravel
step
Collect the Dragon Glyph: Glimmerogg |achieve 18150/1 |goto Zaralek Cavern/0 41.67,80.38 |notravel
|tip Near the roof.
step
Collect the Dragon Glyph: Zaqali Calderra |achieve 18150/4 |goto Zaralek Cavern/0 30.45,45.33 |notravel
|tip On top of the rock.
|tip Land before you reach 10 stacks of the debuff and wait for it to wear off or you will be shot down.
step
Collect the Dragon Glyph: Acidbite Ravine |achieve 18150/7 |goto Zaralek Cavern/0 47.44,37.07 |notravel
|tip At the top of the cavern.
step
Collect the Dragon Glyph: Slitherdrake Roost |achieve 18150/5 |goto Zaralek Cavern/0 55.29,27.84 |notravel
|tip Behind the stalactites hanging from the ceiling.
step
Collect the Dragon Glyph: Aberrus Approach |achieve 18150/8 |goto Zaralek Cavern/0 48.07,4.31 |notravel
|tip At the top of the lava fall.
|tip Get this glyph quickly because this area can dismount you randomly.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Zaralek Cavern",{
author="support@zygorguides.com",
description="This guide will help you complete the primary story and side quests in Zaralek Cavern",
condition_suggested=function() return level == 70 and not completedq(75694) end,
startlevel=68,
patch='100100',
},[[
step
accept The Land Beneath: Zaralek Cavern!##72975
|tip You will accept this quest automatically.
|tip If you do not see this quest, you must complete the first chapter of "The Forbidden Reach" leveling guide.
|tip Completing the quest "Return to Viridia" unlocks Zaralek Cavern.
step
talk Ebyssian##201281
|tip At the top of the tower.
turnin The Land Beneath: Zaralek Cavern!##72975 |goto Valdrakken/0 61.44,42.20
accept A Crack in the World##72976 |goto Valdrakken/0 61.44,42.20
step
talk Alexstrasza the Life-Binder##187678
|tip She eventually walks to this spot at the top of the tower.
Select _"What news is there of the Incarnates?"_
Speak with Alexstrasza Concerning Iridikron |q 72976/1 |goto Valdrakken/0 59.11,37.13
step
talk Ebyssian##201281
|tip At the top of the tower.
turnin A Crack in the World##72976 |goto Valdrakken/0 58.87,38.49
accept Where the Flames Fell##72977 |goto Valdrakken/0 58.87,38.49
step
talk Wrathion##201311
turnin Where the Flames Fell##72977 |goto Ohn'ahran Plains/0 87.14,27.27
accept Scar of Earth and Fire##72978 |goto Ohn'ahran Plains/0 87.14,27.27
step
Watch the dialogue
talk Khasar##202788
|tip He eventually walks to this spot.
Select _"What happened here?"_
Speak with Khasar |q 72978/1 |goto Ohn'ahran Plains/0 86.98,27.28
step
click Remains of a Fallen Shikaar
Inspect the Pile of Ashes |q 72978/2 |goto Ohn'ahran Plains/0 87.04,27.30
step
click Spear of a Fallen Shikaar
Inspect the Broken Spear |q 72978/3 |goto Ohn'ahran Plains/0 87.09,27.44
step
talk Sabellian##200085
Select _"Have you learned anything?"_
Speak with Sabellian |q 72978/4 |goto Ohn'ahran Plains/0 87.37,27.54
step
talk Wrathion##201311
turnin Scar of Earth and Fire##72978 |goto Ohn'ahran Plains/0 87.17,27.27
step
talk Khasar##202788
accept Rest Well, Warrior##75985 |goto Ohn'ahran Plains/0 86.99,27.28
step
click Shovel
Watch the dialogue
Bury the Brave Shikaar |q 75985/1 |goto Ohn'ahran Plains/0 87.04,27.266
step
talk Khasar##202788
turnin Rest Well, Warrior##75985 |goto Ohn'ahran Plains/0 86.99,27.28
step
talk Sabellian##200085
accept The Patience of Princes##72981 |goto Ohn'ahran Plains/0 87.37,27.53
step
map Ohn'ahran Plains/0
path follow smart; loop off; ants curved; dist 30
path	87.90,29.05	86.42,26.60	83.54,28.16	84.88,30.65	84.46,31.91
path	83.31,31.27
Travel Through the Tunnel |q 72981/1
|tip Fly off the cliff and through the tunnel below you.
step
talk Sabellian##201411
Select _"So what's the plan?"_
Watch the dialogue
Discuss the Plan with Sabellian |scenariogoal 1/58683 |goto The Throughway/0 74.41,42.24 |q 72981
stickystart "Slay_the_Earth_Primalists"
step
kill Cliffkeeper Bouldani##202612 |scenariogoal 2/58225 |goto The Throughway/0 49.77,55.15 |q 72981
step
label "Slay_the_Earth_Primalists"
Kill Stonebreath enemies around this area
Slay the Earth Primalists |scenariogoal 2/0 |goto The Throughway/0 40.55,40.06 |q 72981
stickystart "Slay_the_Fire_Primalists"
step
kill Portalkeeper Cimbra##202613 |scenariogoal 3/58372 |goto The Throughway/0 36.37,38.84 |q 72981
step
label "Slay_the_Fire_Primalists"
Slay the Fire Primalists |scenariogoal 3/0 |goto The Throughway/0 44.19,49.48 |q 72981
step
kill Summitshaper Lorac##201522 |scenariogoal 4/57855 |goto The Throughway/0 28.36,44.86 |q 72981
step
talk Elder Honeypelt##200116
|tip Inside the cave.
turnin The Patience of Princes##72981 |goto Deepflayer Nest/0 82.30,64.72
accept It Was Not Enough##72873 |goto Deepflayer Nest/0 82.30,64.72
accept Culling the Deep##72872 |goto Deepflayer Nest/0 82.30,64.72
step
extraaction Escape Crystals##403458
|tip Inside the cave.
Escape the Crystal Prison |q 72873/1 |goto Deepflayer Nest/0 82.30,64.72
step
talk Elder Honeypelt##200116
|tip Inside the cave.
Select _"Can you lead me to my companions?"_
Speak with Elder Honeypelt |q 72873/2 |goto Deepflayer Nest/0 81.78,65.86
stickystart "Slay_8_Deepflayers"
step
click Niffin Hole
|tip Inside the cave.
Follow Elder Honeypelt |q 72873/3 |goto Deepflayer Nest/0 33.21,64.72
step
click Niffin Hole
|tip Inside the cave.
Follow Elder Honeypelt |q 72873/4 |goto Deepflayer Nest/0 39.15,30.09
step
click Niffin Hole
|tip Inside the cave.
Follow Elder Honeypelt |q 72873/5 |goto Deepflayer Nest/0 62.28,21.47
step
Kill enemies that attack
|tip Inside the cave.
Rescue Wrathion |q 72873/6 |goto Deepflayer Nest/0 75.09,25.09
step
label "Slay_8_Deepflayers"
Slay #8# Deepflayers |q 72872/1 |goto Deepflayer Nest/0 53.62,45.06
|tip Inside the cave. |notinsticky
step
Follow the path |goto Deepflayer Nest/0 25.41,35.49 < 10 |walk
Find Sabellian |q 72873/7 |goto Zaralek Cavern/0 60.21,37.66
step
Watch the dialogue
talk Elder Honeypelt##201587
turnin It Was Not Enough##72873 |goto Zaralek Cavern/0 60.17,37.80
turnin Culling the Deep##72872 |goto Zaralek Cavern/0 60.17,37.80
accept Niffen and Goliath##72970 |goto Zaralek Cavern/0 60.17,37.80
step
Enter the cave |goto Zaralek Cavern/0 58.92,38.95 < 7 |walk
click Honeypelts Pungent Bait
|tip Inside the cave.
kill Deepflayer Broodmatron##200115 |q 72970/2 |goto Zaralek Cavern/0 58.41,38.96
step
talk Elder Honeypelt##201584
turnin Niffen and Goliath##72970 |goto Zaralek Cavern/0 60.16,37.56
step
talk Wrathion##201583
accept Brother's Keeper##72980 |goto Zaralek Cavern/0 60.06,37.47
step
talk Sabellian##201589
turnin Brother's Keeper##72980 |goto Zaralek Cavern/0 60.57,40.13
accept Secrets From Our Father##72874 |goto Zaralek Cavern/0 60.57,40.13
step
click Damaged Relic
Investigate the Damaged Relic |q 72874/2 |goto Zaralek Cavern/0 60.31,42.71
step
Enter the cave |goto Zaralek Cavern/0 59.06,41.00 < 7 |walk
click Humming Relic
|tip Inside the cave.
Choose _"Press the button."_
Investigate the Humming Relic |q 72874/3 |goto Zaralek Cavern/0 58.84,41.59
step
Enter the cave |goto Zaralek Cavern/0 61.91,41.80 < 7 |walk
click Rusted Relic
|tip Inside the cave.
Investigate the Rusted Relic |q 72874/1 |goto Zaralek Cavern/0 62.52,41.74
step
talk Sabellian##201589
|tip He walks around this area.
turnin Secrets From Our Father##72874 |goto Zaralek Cavern/0 60.57,40.13
accept The Earth Gives Way##72979 |goto Zaralek Cavern/0 60.57,40.13
step
talk Wrathion##201583
turnin The Earth Gives Way##72979 |goto Zaralek Cavern/0 57.03,38.26
step
talk Elder Honeypelt##201584
accept Smells Like Loamm##72973 |goto Zaralek Cavern/0 57.07,38.18
step
talk Elder Honeypelt##202873
Select _"We're ready to enter Loamm."_
Meet Honeypelt on the Outskirts of Loamm |q 72973/1 |goto Zaralek Cavern/0 58.60,54.58
step
talk Aurantia##204522
turnin Smells Like Loamm##72973 |goto Zaralek Cavern/0 56.96,55.65
accept Orientation: Loamm Niffen##75643 |goto Zaralek Cavern/0 56.96,55.65
accept Tougher Down Under##76101 |goto Zaralek Cavern/0 56.96,55.65
step
talk Elder Honeypelt##200054
accept Welcome to the City of Smells##72974 |goto Zaralek Cavern/0 56.98,55.77
step
talk Brynnsahce##204546
Select _"Ready to deliver!"_
Speak with Brynnsahce |q 72974/1 |goto Zaralek Cavern/0 57.02,55.78
step
talk Mimuup##204254
|tip Inside the building.
Introduce Yourself to the Keeper of Renown |q 75643/1 |goto Zaralek Cavern/0 56.53,55.66
step
talk Harlowe Marl##202468
|tip Inside the building.
Introduce Yourself to the Renown Quartermaster |q 75643/2 |goto Zaralek Cavern/0 56.48,55.62
step
talk Floressa##203293
|tip Inside the building.
home Loamm |goto Zaralek Cavern/0 56.42,55.84 |q 75643
step
talk Vaskarn##203404
|tip Inside the building.
turnin Tougher Down Under##76101 |goto Zaralek Cavern/0 56.52,56.08
step
talk Avogadro##202467
|tip Inside the building.
Introduce Yourself to the Flight Master |q 75643/3 |goto Zaralek Cavern/0 55.64,54.79
step
clicknpc Gumm##204624
|tip Jumping around the chairs aroudn this area.
Trade with the Teacher |q 72974/4 |goto Zaralek Cavern/0 57.64,53.42
step
Watch the Dialogue
talk Quicksmack Magk##204651
Select _"Let's give it our best!"_
kill Quicksmack Magk##204651
Trade with the Coach |q 72974/3 |goto Zaralek Cavern/0 57.73,56.42
step
talk Myrrit##201426
|tip He burrows around this area.
Watch the Dialogue
click Treasure?
|tip There will be multiple piles of "Treasure" to click.
|tip They look like small piles of dirt on the ground around this area.
Trade with the Cave Diver |q 72974/2 |goto Zaralek Cavern/0 55.65,57.35
step
click Cenka's Slug Jar
kill Runaway Meal##204639
Trade with the Resourceful Chef |q 72974/5 |goto Zaralek Cavern/0 54.20,56.39
step
talk Aurantia##200052
turnin Orientation: Loamm Niffen##75643 |goto Zaralek Cavern/0 54.64,54.74
step
talk Elder Honeypelt##200054
turnin Welcome to the City of Smells##72974 |goto Zaralek Cavern/0 54.64,54.70
|tip Keep the item awarded from this quest for a later quest.
step
Watch the dialogue
talk Aurantia##200052
accept Six Hundred Feet Under##75644 |goto Zaralek Cavern/0 54.64,54.74
step
talk Ebyssian##201366
Select _"Let's discuss our next steps."_
Regroup with Your Companions |q 75644/1 |goto Zaralek Cavern/0 54.71,54.51
step
talk Ebyssian##201366
turnin Six Hundred Feet Under##75644 |goto Zaralek Cavern/0 54.71,54.51
accept Future Aspects##74334 |goto Zaralek Cavern/0 54.71,54.51
step
talk Ebyssian##201366
Select _"We could ask Honeypelt."_
Suggest Honeypelt as a Guide |q 74334/1 |goto Zaralek Cavern/0 54.71,54.51
step
talk Effervesta##200053
accept A Swallow's Tale##72881 |goto Zaralek Cavern/0 54.64,54.79
step
talk Examiner Tae'shara Bloodwatcher##204509
accept Power Unified##75641 |goto Zaralek Cavern/0 56.84,54.79
step
Enter the cave |goto Zaralek Cavern/0 56.15,59.27 < 20 |walk
talk Cinnam##200056
|tip Inside the cave.
Select _"Do you know where Nevroll is?"_
Speak with Nevroll |q 72881/1 |goto Zaralek Cavern/0 55.69,60.23
step
talk Cinnam##200056
|tip Inside the cave.
turnin A Swallow's Tale##72881 |goto Zaralek Cavern/0 55.69,60.23
accept Flown the Coop##72882 |goto Zaralek Cavern/0 55.69,60.23
step
clicknpc Frightened Swallow##201777+
|tip They look like birds flying around Loamm.
Find #6# Swallows |q 72882/1 |goto Zaralek Cavern/0 57.18,55.48
step
Enter the cave |goto Zaralek Cavern/0 56.15,59.27 < 20 |walk
talk Cinnam##200056
|tip Inside the cave.
turnin Flown the Coop##72882 |goto Zaralek Cavern/0 55.69,60.23
step
talk Ponzo##204693
accept Get Rich Quick##75885 |goto Zaralek Cavern/0 58.09,53.81
step
talk Dead Cave Swallow##200238
accept A Bitter Pill to Swallow##72883 |goto Zaralek Cavern/0 57.90,54.84
step
talk Loamm Citizen##205014
Select _"Could I interest you in a Glimmerogg Timeshare Voucher?"_
Sell a Glimmerogg Timeshare Voucher |q 75885/2 |goto Zaralek Cavern/0 57.71,54.82 |count 1
step
talk Loamm Citizen##205025
Select _"Could I interest you in ordering a jar of Ponzo's Cream?"_
Sell Ponzo's Cream |q 75885/1 |goto Zaralek Cavern/0 58.12,55.55 |count 1
step
talk Loamm Citizen##205020
Select _"Could I interest you in a Glimmerogg Timeshare Voucher?"_
Sell a Glimmerogg Timeshare Voucher |q 75885/2 |goto Zaralek Cavern/0 57.36,52.96 |count 2
step
talk Loamm Citizen##205027
Select _"Could I interest you in a Glimmerogg Timeshare Voucher?"_
Sell a Glimmerogg Timeshare Voucher |q 75885/2 |goto Zaralek Cavern/0 56.60,53.97 |count 3
step
talk Loamm Citizen##205028
Select _"Could I interest you in ordering a jar of Ponzo's Cream?"_
Select _"Yes!"_
Sell Ponzo's Cream |q 75885/1 |goto Zaralek Cavern/0 56.33,54.83 |count 3
step
talk Ponzo##204693
turnin Get Rich Quick##75885 |goto Zaralek Cavern/0 58.09,53.81
step
Enter the cave |goto Zaralek Cavern/0 56.15,59.27 < 20 |walk
talk Cinnam##200056
|tip Inside the cave.
Choose _<Show Cinnam the dead swallow.>_
Return to Cinnam |q 72883/1 |goto Zaralek Cavern/0 55.69,60.23
step
talk Aurantia##200052
turnin A Bitter Pill to Swallow##72883 |goto Zaralek Cavern/0 54.64,54.74
accept Expedition Effervesta##72884 |goto Zaralek Cavern/0 54.64,54.74
step
click Miss Smelly
Find the First Clue |q 72884/1 |goto Zaralek Cavern/0 57.64,56.36 |count 1
step
click Effervesta's Trusty Pickaxe
Find the Second Clue |q 72884/1 |goto Zaralek Cavern/0 58.06,54.41 |count 2
step
click Effervesta's Scent Journal
Find the Third Clue |q 72884/1 |goto Zaralek Cavern/0 55.88,57.33 |count 3
step
talk Aurantia##200052
turnin Expedition Effervesta##72884 |goto Zaralek Cavern/0 58.05,54.16
accept Suss Out the Imposter##72886 |goto Zaralek Cavern/0 58.05,54.16
step
kill Nevroll##203039 |q 72886/1 |goto Zaralek Cavern/0 58.29,52.50
|tip Inside the cave.
|tip Kill the two drogbar to engage Nevroll.
step
click Effervesta's Prison
|tip Inside the cave.
Free Effervesta |q 72886/2 |goto Zaralek Cavern/0 58.25,52.37
step
talk Aurantia##200052
turnin Suss Out the Imposter##72886 |goto Zaralek Cavern/0 54.64,54.74
step
use the Gift of the High Redolence##205250
Consume the Reputation Token |complete itemcount(205250) == 0
step
talk Elder Honeypelt##200054
accept Slime Time Live##72878 |goto Zaralek Cavern/0 54.64,54.70
step
clicknpc Redolent Whelk##200898+
|tip You can find them all over this area.
use Snail Lasso##205980
|tip Lasso them and drag them around until the lasso wears off.
click Slime Puddle##386235+
collect 8 Snail Slime##203442 |q 72878/1 |goto Zaralek Cavern/0 58.72,64.29
step
talk Ebyssian##201236
turnin Future Aspects##74334 |goto Zaralek Cavern/0 59.42,68.82
step
talk Scalecommander Emberthal##200049
accept Save-A-Mole##72958 |goto Zaralek Cavern/0 59.44,68.94
accept Collating Their Research##74375 |goto Zaralek Cavern/0 59.44,68.94
stickystart "Collect_6_Sundered_Flame_Expedition_Notes"
step
click Titan Writings
Find a Clue |q 74375/1 |count 1 |goto Zaralek Cavern/0 59.87,72.61
step
click Draconic Texts
Find a Clue |q 74375/1 |count 2 |goto Zaralek Cavern/0 59.18,73.76
step
click Titan Scroll
Find a Clue |q 74375/1 |count 3 |goto Zaralek Cavern/0 59.93,74.50
step
click Draconic Scrolls
Find a Clue |q 74375/1 |count 4 |goto Zaralek Cavern/0 57.87,74.02
step
Enter the cave |goto Zaralek Cavern/0 58.55,74.66 < 7 |walk
talk Tuberros##201265
|tip Inside the cave.
Select _"It's okay. I'm here to free you."_
Find Tuberros |q 72958/1 |goto Zaralek Cavern/0 58.13,75.44
step
label "Collect_6_Sundered_Flame_Expedition_Notes"
kill Sundered Researcher##199946+
collect 6 Sundered Flame Expedition Notes##204713 |q 74375/2 |goto Zaralek Cavern/0 59.21,73.81
step
talk Scalecommander Emberthal##200049
turnin Save-A-Mole##72958 |goto Zaralek Cavern/0 59.44,68.94
turnin Collating Their Research##74375 |goto Zaralek Cavern/0 59.44,68.94
accept Whose Vault Is It Anyway?##72959 |goto Zaralek Cavern/0 59.44,68.94
step
talk Scalecommander Emberthal##200049
Select _"I am ready to go."_
Watch the dialogue
Talk to Emberthal |q 72959/1 |goto Zaralek Cavern/0 59.44,68.94
step
talk Scalecommander Emberthal##201619
turnin Whose Vault Is It Anyway?##72959 |goto Zaralek Cavern/0 62.57,73.26
step
talk Rannan Korren##200074
accept Charging Up##72961 |goto Zaralek Cavern/0 62.56,73.30
step
click Buzzing Orb
|tip They look like glowing orbs laying all around this area.
kill Nal ks'kol Defense Orb##203819
collect 6 Buzzing Orb Core##204833 |q 72961/1 |goto Zaralek Cavern/0 61.55,72.42
step
talk Rannan Korren##200074
turnin Charging Up##72961 |goto Zaralek Cavern/0 62.56,73.30
step
talk Scalecommander Emberthal##201619
accept Open That Door!##72962 |goto Zaralek Cavern/0 62.57,73.26
step
talk Rannan Korren##200074
Select _"How close are you to opening the door?"_
Ask Rannan About His Progress |q 72962/1 |goto Zaralek Cavern/0 62.56,73.30
step
Watch the dialogue
Open the Door |q 72962/2 |goto Zaralek Cavern/0 62.56,73.30
step
Enter the Vault with Emberthal |q 72962/3 |goto Zaralek Cavern/0 62.75,73.60
|tip Inside the building.
|tip Make sure he starts walking forward before you run in.
step
talk Scalecommander Emberthal##200075
|tip Inside the building.
turnin Open That Door!##72962 |goto Zaralek Cavern/0 62.76,73.60
accept Sundered Flames##75419 |goto Zaralek Cavern/0 62.75,73.60
step
kill Winglord Dezran##201677
|tip Inside the building.
Defeat the Sundered Flame Sentries |q 75419/1 |goto Zaralek Cavern/0 62.85,73.75
step
Watch the dialogue
talk Scalecommander Emberthal##204040
|tip He eventually walks to this spot inside the building.
turnin Sundered Flames##75419 |goto Zaralek Cavern/0 63.01,73.96
accept The Upper Hand##72963 |goto Zaralek Cavern/0 63.01,73.96
step
talk Scalecommander Emberthal##202857
|tip Inside the building.
Select _"I am ready."_
Let Emberthal Know that you are Ready to Face Sarkareth |q 72963/1 |goto Zaralek Cavern/0 63.01,73.96
step
Watch the dialogue
kill Scalecommander Sarkareth##184308
|tip Inside the building.
|tip Jump over the ring of flame when it moves outward.
|tip Move out of orange areas on the ground.
Defeat Sarkareth |q 72963/2 |goto Zaralek Cavern/0 63.50,74.71
step
talk Scalecommander Emberthal##204571
|tip Inside the building.
turnin The Upper Hand##72963 |goto Zaralek Cavern/0 63.42,74.60
accept Singed##72964 |goto Zaralek Cavern/0 63.42,74.60
step
talk Marithos##202696
|tip Inside the building.
Select _"Would you join Emberthal's cause?"_
Talk to Marithos |q 72964/2 |goto Zaralek Cavern/0 63.64,74.83
step
talk Amythora##202693
|tip Inside the building.
Select _"Emberthal would welcome you with open arms."_
Talk to Amythora |q 72964/1 |goto Zaralek Cavern/0 63.59,74.93
step
Watch the Dialogue |complete readyq(72964) or completedq(72964)
step
talk Scalecommander Emberthal##200064
|tip Inside the building.
turnin Singed##72964 |goto Zaralek Cavern/0 63.49,74.71
step
talk Ebyssian##202670
|tip Inside the building.
accept Aspects of Our Legacy##72965 |goto Zaralek Cavern/0 63.39,74.65
step
talk Ebyssian##202771
Select _"You should talk to them."_
Meet Ebyssian in Loamm |q 72965/1 |goto Zaralek Cavern/0 56.57,57.15
step
Watch the dialogue
talk Sabellian##199849
turnin Aspects of Our Legacy##72965 |goto Zaralek Cavern/0 56.62,56.71
accept Where There's Smoke, There's Fire##72966 |goto Zaralek Cavern/0 56.62,56.71
step
use the Shiny Token of Gratitude##205991
Consume the Reputation Token |complete itemcount(205991) == 0
step
talk Citros##200055
turnin Slime Time Live##72878 |goto Zaralek Cavern/0 56.80,54.00
accept Smells like Kith Spirit##72879 |goto Zaralek Cavern/0 56.80,54.00
step
click Incense Brew
Add Snail Slime |q 72879/1 |goto Zaralek Cavern/0 56.83,53.81
step
click Platter of Bugs
|tip Next to the cooking fire.
click Incense Brew
Add Bugs |q 72879/2 |goto Zaralek Cavern/0 56.83,53.81
step
click Smelling Crystals
|tip Next to the cooking fire.
click Incense Brew
Add Crystals |q 72879/3 |goto Zaralek Cavern/0 56.83,53.81
step
talk Citros##200055
turnin Smells like Kith Spirit##72879 |goto Zaralek Cavern/0 56.80,54.00
accept Incense Gratification##72880 |goto Zaralek Cavern/0 56.80,54.00
step
click Niffen Incense
Place the Incense |q 72880/1 |goto Zaralek Cavern/0 56.59,54.30 |count 1
step
click Niffen Incense
Place the Incense |q 72880/1 |goto Zaralek Cavern/0 55.90,54.18 |count 2
step
click Niffen Incense
Place the Incense |q 72880/1 |goto Zaralek Cavern/0 55.85,53.07 |count 3
step
click Niffen Incense
Place the Incense |q 72880/1 |goto Zaralek Cavern/0 55.35,52.25 |count 4
step
click Niffen Incense
Place the Incense |q 72880/1 |goto Zaralek Cavern/0 54.44,50.86 |count 5
step
click Niffen Incense
Place the Incense |q 72880/1 |goto Zaralek Cavern/0 53.36,50.83 |count 6
step
click Niffen Incense
Place the Incense |q 72880/1 |goto Zaralek Cavern/0 52.74,50.18 |count 7
step
click Niffen Incense
Place the Incense |q 72880/1 |goto Zaralek Cavern/0 51.96,50.29 |count 8
step
click Niffen Incense
Place the Incense |q 72880/1 |goto Zaralek Cavern/0 51.54,49.54 |count 9
step
talk Elder Honeypelt##200054
turnin Incense Gratification##72880 |goto Zaralek Cavern/0 54.64,54.70
step
use the Pungent Niffen Incense##205249
Consume the Reputation Token |complete itemcount(205249) == 0
step
talk Sabellian##200081
turnin Where There's Smoke, There's Fire##72966 |goto Zaralek Cavern/0 41.02,41.75
step
talk Ebyssian##200080
accept Sight Beyond Sight##72908 |goto Zaralek Cavern/0 40.94,41.71
step
click Flamesight Totem##393951
collect 1 Flamesight Rune##203385 |q 72908/1 |goto Zaralek Cavern/0 40.54,43.15
step
click Flamesight Totem##393951
collect 2 Flamesight Rune##203385 |q 72908/1 |goto Zaralek Cavern/0 39.70,42.29
step
click Flamesight Totem##393951
collect 3 Flamesight Rune##203385 |q 72908/1 |goto Zaralek Cavern/0 37.20,41.95
step
kill High Seer Jhatal##199842
collect 1 Greater Flamesight Rune##204694 |q 72908/2 |goto Zaralek Cavern/0 35.47,42.15
step
click Greater Flamesight Totem
|tip On top of the tower.
Activate the Greater Flamesight Totem  |q 72908/3 |goto Zaralek Cavern/0 35.50,42.13
step
talk Ebyssian##199852
|tip On top of the tower.
turnin Sight Beyond Sight##72908 |goto Zaralek Cavern/0 35.48,41.84
accept Legends of the Zaqali##72909 |goto Zaralek Cavern/0 35.48,41.84
step
talk Sabellian##199851
|tip On top of the tower.
accept Know Thy Enemy##72910 |goto Zaralek Cavern/0 35.40,41.87
stickystart "Collect_Zaqali_Armaments"
step
click Smoldering Incense
Inspect the Smoldering Incense |q 72909/1 |goto Zaralek Cavern/0 33.28,40.91
step
click Thrumming Earthstone
Inspect the Thrumming Earthstone |q 72909/2 |goto Zaralek Cavern/0 32.94,42.04
step
click Cached Weaponry
Inspect the Cached Weaponry |q 72909/3 |goto Zaralek Cavern/0 31.85,41.46
step
click Battered Ebon Armament
Inspect the Battered Ebon Armament |q 72909/4 |goto Zaralek Cavern/0 32.22,40.21
step
click Prayer Tablet
Inspect the Prayer Tablet |q 72909/5 |goto Zaralek Cavern/0 32.31,39.47
step
label "Collect_Zaqali_Armaments"
Kill Zaqali enemies around this area
|tip Ebyssian will help you kill them.
Collect #8# Zaqali Armaments |q 72910/1 |goto Zaralek Cavern/0 31.94,41.35
step
Regroup with Sabellian |q 72909/6 |goto Zaralek Cavern/0 30.39,41.56
step
Watch the dialogue
talk Ebyssian##199948
|tip Inside the cave.
turnin Legends of the Zaqali##72909 |goto Zaralek Cavern/0 30.18,41.02
step
talk Sabellian##199949
|tip Inside the cave.
turnin Know Thy Enemy##72910 |goto Zaralek Cavern/0 30.26,40.95
accept Take Out the Head##72911 |goto Zaralek Cavern/0 30.26,40.95
stickystart "Kill_Earthrender_Ku'siva"
step
kill Shrinekeeper Qanosh##199839 |q 72911/1 |goto Zaralek Cavern/0 30.98,45.72
step
label "Kill_Earthrender_Ku'siva"
kill Earthrender Ku'siva##199840 |q 72911/2 |goto Zaralek Cavern/0 30.98,45.72
step
Investigate the Disturbance  |q 72911/3 |goto Zaralek Cavern/0 30.98,45.72
step
talk Ebyssian##199863
turnin Take Out the Head##72911 |goto Zaralek Cavern/0 38.21,48.46
accept Consequences##72912 |goto Zaralek Cavern/0 38.21,48.46
step
talk Sabellian##199862
Select _"Let me see your arm."_
Watch the dialogue
Inspect Sabellian's Injuries |q 72912/1 |goto Zaralek Cavern/0 38.24,48.37
step
talk Ebyssian##199863
turnin Consequences##72912 |goto Zaralek Cavern/0 38.20,48.47
accept Battlefield Triage##72913 |goto Zaralek Cavern/0 38.20,48.47
stickystart "Collect_5_Vacant_Elemental_Cores"
step
kill Zaqali Flamewalker##199826+
collect 1 Zaqali Flame Totem##203654 |q 72913/2 |goto Zaralek Cavern/0 35.46,48.68
step
label "Collect_5_Vacant_Elemental_Cores"
Kill enemies around this area
collect 5 Vacant Elemental Core##203653 |q 72913/1 |goto Zaralek Cavern/0 35.46,48.68
step
_Next to you:_
talk Ebyssian
turnin Battlefield Triage##72913
accept Rushing Quality##72914
step
Head to the Altar |q 72914/1 |goto Zaralek Cavern/0 33.24,50.92
step
click Zaqali Flame Totem
Place the Totem |q 72914/2 |goto Zaralek Cavern/0 33.24,50.92
step
click Vacant Elemental Core
Place the Elemental Core  |q 72914/3 |count 1 |goto Zaralek Cavern/0 33.33,50.79
step
click Vacant Elemental Core
Place the Elemental Core |q 72914/3 |count 2 |goto Zaralek Cavern/0 33.36,50.95
step
click Vacant Elemental Core
Place the Elemental Core |q 72914/3 |count 3 |goto Zaralek Cavern/0 33.28,51.10
step
click Vacant Elemental Core
Place the Elemental Core |q 72914/3 |count 4 |goto Zaralek Cavern/0 33.15,51.10
step
click Vacant Elemental Core
Place the Elemental Core |q 72914/3 |count 5 |goto Zaralek Cavern/0 33.09,51.02
step
extraaction Assist Ebyssian##400855
|tip Use the "Assist Ebyssian" button that appears on your screen.
Take Your Place in the Ritual and Assist Ebyssian |q 72914/4 |goto Zaralek Cavern/0 33.26,50.78
step
click Darkened Elemental Core
collect 1 Darkened Elemental Core##203682 |q 72914/5 |goto Zaralek Cavern/0 33.33,50.79
step
click Darkened Elemental Core
collect 2 Darkened Elemental Core##203682 |q 72914/5 |goto Zaralek Cavern/0 33.36,50.95
step
click Darkened Elemental Core
collect 3 Darkened Elemental Core##203682 |q 72914/5 |goto Zaralek Cavern/0 33.28,51.10
step
click Darkened Elemental Core
collect 4 Darkened Elemental Core##203682 |q 72914/5 |goto Zaralek Cavern/0 33.15,51.10
step
click Darkened Elemental Core
collect 5 Darkened Elemental Core##203682 |q 72914/5 |goto Zaralek Cavern/0 33.08,51.02
step
extraaction Toss Cores##400826
|tip Use the "Toss Cores" button that appears on your screen.
Throw the Darkened Cores Into the Lava |q 72914/6 |goto Zaralek Cavern/0 33.20,50.98
step
talk Ebyssian##201581
turnin Rushing Quality##72914 |goto Zaralek Cavern/0 33.10,50.88
accept Shut Them Down##72916 |goto Zaralek Cavern/0 33.10,50.88
step
_Next to you:_
talk Sabellian##199950
accept Alliance of Convenience##72915
stickystart "Kill_4_Zaqali_Guards"
step
click Extracted Elemental Core
Destroy the Extracted Elemental Core |q 72916/2 |count 1 |goto Zaralek Cavern/0 29.86,51.43
step
click Extracted Elemental Core
Destroy the Extracted Elemental Core |q 72916/2 |count 2 |goto Zaralek Cavern/0 29.67,50.52
step
click Extracted Elemental Core
Destroy the Extracted Elemental Core |q 72916/2 |count 3 |goto Zaralek Cavern/0 29.22,53.59
step
click Extracted Elemental Core
Destroy the Extracted Elemental Core |q 72916/2 |count 4 |goto Zaralek Cavern/0 29.91,54.28
step
click Earthdrainer Conduit
Destroy the Earthdrainer Conduit |q 72916/1 |count 1 |goto Zaralek Cavern/0 29.51,54.70
step
click Earthdrainer Conduit
Destroy the Earthdrainer Conduit |q 72916/1 |count 2 |goto Zaralek Cavern/0 29.38,54.56
step
click Earthdrainer Conduit
Destroy the Earthdrainer Conduit |q 72916/1 |count 3 |goto Zaralek Cavern/0 29.20,54.53
step
label "Kill_4_Zaqali_Guards"
Kill Zaqali enemies around this area
Slay #4# Zaqali Guards |q 72915/1 |goto Zaralek Cavern/0 28.74,49.99
step
_Next to you:_
talk Ebyssian
turnin Shut Them Down##72916
step
_Next to you:_
talk Sabellian##201647
turnin Alliance of Convenience##72915
accept A Scale for a Scale##74494
step
click Zaqali Dragonslayer's Spear
collect 1 Zaqali Dragonslayer's Spear##204085 |q 74494/1 |goto Zaralek Cavern/0 28.21,50.39
step
Head to the Overlook |q 74494/2 |goto Zaralek Cavern/0 29.48,49.91
step
Watch the dialogue
talk Sabellian##199952
|tip He will run to this location.
turnin A Scale for a Scale##74494 |goto Zaralek Cavern/0 29.61,49.69
accept From Hell's Heart##72917 |goto Zaralek Cavern/0 29.61,49.69
step
Watch the dialogue
talk Sabellian##199954
Select _"I am ready."_
Agree to Sabellian's Plan |q 72917/1 |goto Zaralek Cavern/0 30.21,48.98
step
Watch the dialogue
kill Erupting Shadowflame##199838 |q 72917/2 |goto Zaralek Cavern/0 30.04,49.01
step
talk Ebyssian##199877
turnin From Hell's Heart##72917 |goto Zaralek Cavern/0 41.02,59.94
accept No Dragon Left Behind##72918 |goto Zaralek Cavern/0 41.02,59.94
step
clicknpc Ebyssian##199877
Pull the Spear Out By Hand |q 72918/1 |goto Zaralek Cavern/0 41.02,59.94
step
clicknpc Ebyssian##199877
|tip Walk away from Ebyssian once you have clicked.
Pull the Spear Out with More Leverage |q 72918/2 |goto Zaralek Cavern/0 41.02,59.94
step
talk Sabellian##199876
Select _"Do what you can."_
Watch the dialogue
Let Sabellian Help |q 72918/3 |goto Zaralek Cavern/0 41.17,59.83
step
clicknpc Ebyssian##199877
Remove the Heated Spear |q 72918/4 |goto Zaralek Cavern/0 41.03,59.92
step
talk Sabellian##199876
turnin No Dragon Left Behind##72918 |goto Zaralek Cavern/0 41.17,59.83
step
talk Ebyssian##199877
accept Raked Over the Coals##72919 |goto Zaralek Cavern/0 41.02,59.91
step
Disperse the Shadowflame |q 72919/1 |count 1 |goto Zaralek Cavern/0 42.86,58.95
|tip Fly through it on your drake.
step
Disperse the Shadowflame |q 72919/1 |count 2 |goto Zaralek Cavern/0 44.34,56.72
|tip Fly through it on your drake.
step
Disperse the Shadowflame |q 72919/1 |count 3 |goto Zaralek Cavern/0 45.30,56.61
|tip Fly through it on your drake.
step
Disperse the Shadowflame |q 72919/1 |count 4 |goto Zaralek Cavern/0 46.56,54.92
|tip Fly through it on your drake.
step
Disperse the Shadowflame |q 72919/1 |count 5 |goto Zaralek Cavern/0 46.58,53.00
|tip Fly through it on your drake.
step
Disperse the Shadowflame |q 72919/1 |count 6 |goto Zaralek Cavern/0 48.03,53.65
|tip Fly through it on your drake.
step
Disperse the Shadowflame |q 72919/1 |count 7 |goto Zaralek Cavern/0 49.42,54.39
|tip Fly through it on your drake.
step
Disperse the Shadowflame |q 72919/1 |count 8 |goto Zaralek Cavern/0 50.35,53.06
|tip Fly through it on your drake.
step
Disperse the Shadowflame |q 72919/1 |count 9 |goto Zaralek Cavern/0 52.01,51.66
|tip Fly through it on your drake.
step
Disperse the Shadowflame |q 72919/1 |count 10 |goto Zaralek Cavern/0 52.82,49.93
|tip Fly through it on your drake.
step
Disperse the Shadowflame |q 72919/1 |count 11 |goto Zaralek Cavern/0 53.45,51.63
|tip Fly through it on your drake.
step
Disperse the Shadowflame |q 72919/1 |count 12 |goto Zaralek Cavern/0 54.68,51.20
|tip Fly through it on your drake.
step
Head Into Loamm |q 72919/2 |goto Zaralek Cavern/0 55.78,53.60
step
talk Ebyssian##199958
|tip He runs to this location.
turnin Raked Over the Coals##72919 |goto Zaralek Cavern/0 56.01,54.35
accept The Endless Burning Sky##72920 |goto Zaralek Cavern/0 56.01,54.35
stickystart "Extinguish_Loamm"
step
talk Aquinan##204992
Rescue #1# Loamm Villager |q 72920/2 |count 1 |goto Zaralek Cavern/0 55.16,55.23
step
talk Cenka##204993
Select _"You need to evacuate!"_
Rescue #2# Loamm Villagers |q 72920/2 |count 2 |goto Zaralek Cavern/0 54.21,56.47
step
talk Teek##204994
Rescue #3# Loamm Villagers |q 72920/2 |count 3 |goto Zaralek Cavern/0 55.76,57.68
step
talk Gloowaz Bonesmusher##204995
Select _"I'll help you stand up."_
Rescue #4# Loamm Villagers |q 72920/2 |count 4 |goto Zaralek Cavern/0 57.71,56.43
step
talk Tale-Teller Talpi##204991
Select _"You need to evacuate!"_
Rescue #5# Loamm Villagers |q 72920/2 |goto Zaralek Cavern/0 57.76,53.42
step
label "Extinguish_Loamm"
extraaction Smothering Earth##401160
|tip Use the "Smothering Earth" button that appears on your screen.
Extinguish the Fires Around Loam |q 72920/1
step
talk Elder Honeypelt##201772
|tip Inside the building.
Select _"We need to get out of here."_
Rescue Elder Honeypelt |q 72920/3 |goto Zaralek Cavern/0 56.48,55.50
step
Watch the dialogue
Clear the Fire from the Doorway |q 72920/4 |goto Zaralek Cavern/0 56.29,55.45
step
talk Ebyssian##201784
|tip He runs to this location.
turnin The Endless Burning Sky##72920 |goto Zaralek Cavern/0 56.06,54.55
accept In the Wake of the Ashes##75145 |goto Zaralek Cavern/0 56.06,54.55
step
talk Ebyssian##203151
|tip At the top of the tower.
Select _"I am ready."_
Deliver the Report to Alexstrasza |q 75145/1 |goto Valdrakken/0 58.33,38.92
step
talk Ebyssian##203151
|tip At the top of the tower.
turnin In the Wake of the Ashes##75145 |goto Valdrakken/0 58.33,38.92
step
talk Ebyssian##203965
|tip He walks to this location at the top of the tower.
accept Here We Go Again##72987 |goto Valdrakken/0 61.94,41.17
step
use the Symbol of Friendship##205989
Consume the Reputation Token |complete itemcount(205989) == 0
step
talk Kalecgos##187676
|tip At the top of the tower.
Select _"I need a portal to Zaralek Cavern."_
Ask Kalecgos for a Portal |q 72987/2 |goto Valdrakken/0 61.63,36.09
step
click Portal to Zaralek Cavern |goto Valdrakken/0 60.70,36.92
|tip Kalecgos will catch you as you fall when you arrive.
Travel to the Zaralek Caverns |goto Zaralek Cavern/0 48.72,40.05 < 100 |noway |c |q 72987
step
talk Ebyssian##200046
Find Ebyssian |q 72987/1 |goto Zaralek Cavern/0 49.91,27.54
step
talk Ebyssian##200046
turnin Here We Go Again##72987 |goto Zaralek Cavern/0 49.91,27.54
accept The Obsidian Rest##75367 |goto Zaralek Cavern/0 49.91,27.54
step
click Flight Master's Report
collect 1 Flight Master's Report##204819 |q 75367/1 |goto Zaralek Cavern/0 51.06,26.31
step
talk Keskos##200893
fpath Obsidian Rest |goto Zaralek Cavern/0 51.03,26.17
step
talk Tzashivak##201026
Select _"We need any help we can get to stop the djaradin."_
Request Help from Tzashivak |q 75367/2 |goto Zaralek Cavern/0 51.36,25.60
step
click Enchanted Spying Glass
Use the Spying Glass |q 75367/3 |goto Zaralek Cavern/0 50.71,25.20
step
talk Ebyssian##200046
turnin The Obsidian Rest##75367goto Zaralek Cavern/0 49.92,27.54
accept Report: Battlefield Ruins##74393 |goto Zaralek Cavern/0 49.92,27.54
step
talk Field Commander Ignax##200051
turnin Report: Battlefield Ruins##74393 |goto Zaralek Cavern/0 46.69,29.63
accept Blow It Up##74538 |goto Zaralek Cavern/0 46.69,29.63
accept Thinning Their Defenses##74539 |goto Zaralek Cavern/0 46.69,29.63
accept Intercepting Communications##74540 |goto Zaralek Cavern/0 46.69,29.63
stickystart "Kill_5_Zaqali_Flametongues"
step
click Dragonslayer Ballista
Destroy the Dragonslayer Ballista |q 74538/1 |goto Zaralek Cavern/0 43.86,34.21 |count 1
step
click Dragonslayer Ballista
Destroy the Dragonslayer Ballista |q 74538/1 |goto Zaralek Cavern/0 42.86,33.44 |count 2
step
click Dragonslayer Ballista
Destroy the Dragonslayer Ballista |q 74538/1 |goto Zaralek Cavern/0 42.11,33.78 |count 3
step
click Dragonslayer Ballista
Destroy the Dragonslayer Ballista |q 74538/1 |goto Zaralek Cavern/0 42.22,34.76 |count 4
step
kill 1 Warchanter Ronvath##200128 |q 74540/2 |goto Zaralek Cavern/0 43.20,38.87
step
click Djaradin Warchest##398782
collect 1 Invasion Plans: Dragon Nests##204074 |q 74540/1 |goto Zaralek Cavern/0 42.97,38.95
step
label "Kill_5_Zaqali_Flametongues"
kill 5 Zaqali Flametongue##200066 |q 74539/1 |goto Zaralek Cavern/0 42.53,31.67
step
talk Field Commander Ignax##200051
turnin Blow It Up##74538 |goto Zaralek Cavern/0 46.69,29.62
turnin Thinning Their Defenses##74539 |goto Zaralek Cavern/0 46.69,29.62
turnin Intercepting Communications##74540 |goto Zaralek Cavern/0 46.69,29.62
accept Air Superiority##74542 |goto Zaralek Cavern/0 46.69,29.62
step
talk Ebyssian##202469
Select _"Let's fly."_
Fly with Ebyssian |q 74542/1 |goto Zaralek Cavern/0 46.97,29.38
step
Defeat the Djaradin Forces |q 74542/2 |goto Zaralek Cavern/0 46.97,29.38
|tip Use the abilities on your action bar to accomplish this.
step
Reach the Ledge |q 74542/3 |goto Zaralek Cavern/0 53.39,30.26
step
talk Ebyssian##202523
|tip He walks to this location.
turnin Air Superiority##74542 |goto Zaralek Cavern/0 53.60,30.22
|tip Keep the "Whelpling's Shadowflame Crest" rewarded from this quest for later.
accept Investigating the Unknown##74557 |goto Zaralek Cavern/0 53.60,30.22
step
clicknpc Zaqali Berserker##202529
Inspect the Djaradin Corpse  |q 74557/1 |goto Zaralek Cavern/0 53.63,30.16
step
clicknpc Drakonid Poacher##202549
Inspect the Poacher Corpse |q 74557/2 |goto Zaralek Cavern/0 53.44,29.84
step
clicknpc Slitherdrake##202550
Make Contact with a Serpent Drake |q 74557/3 |goto Zaralek Cavern/0 53.43,30.39
step
talk Ebyssian##202523
turnin Investigating the Unknown##74557 |goto Zaralek Cavern/0 53.59,30.21
accept Break Them Out##74562 |goto Zaralek Cavern/0 53.59,30.21
accept Worst of the Worst##74563 |goto Zaralek Cavern/0 53.59,30.21
stickystart "Disrupt_The_Operation"
step
Enter the cave |goto Zaralek Cavern/0 54.67,30.61 < 10 |walk
kill 1 Overseer Xymra##200186 |q 74563/1 |goto Zaralek Cavern/0 56.99,30.31
|tip Inside the cave.
step
label "Disrupt_The_Operation"
click Transportation Cart
click Door
kill Drakonid Poacher##200173
|tip Inside the cave.
Disrupt the Drakonid Poacher's Operation |q 74562/1 |goto Zaralek Cavern/0 55.43,30.99
step
talk Ebyssian##202523
turnin Break Them Out##74562 |goto Zaralek Cavern/0 53.60,30.21
turnin Worst of the Worst##74563 |goto Zaralek Cavern/0 53.60,30.21
step
use the Regurgitated Half-Digested Fish##205992
Consume the Reputation Token |complete itemcount(205992) == 0
step
talk Ebyssian##202995
accept Fading Embers##72922 |goto Zaralek Cavern/0 53.42,30.24
step
talk Scalecommander Emberthal##203904
Select _"I am ready to face him with you."_
Speak to Emberthal |q 72922/1 |goto Zaralek Cavern/0 45.91,26.34
step
Stop Sarkareth |q 72922/2 |goto Zaralek Cavern/0 45.32,25.20
step
Watch the dialogue
talk Ebyssian##199965
turnin Fading Embers##72922 |goto Zaralek Cavern/0 45.98,26.24
accept A Whisper to Sabellian##72923 |goto Zaralek Cavern/0 45.98,26.24
step
talk Sabellian##199973
Select _"Ebyssian would like to speak to you."_
Speak to Sabellian |q 72923/1 |goto Zaralek Cavern/0 46.74,29.57
step
Watch the dialogue
talk Ebyssian##199965
turnin A Whisper to Sabellian##72923 |goto Zaralek Cavern/0 46.82,29.66
accept Appealing to the Black Prince##72924 |goto Zaralek Cavern/0 46.82,29.66
step
talk Wrathion##200101
Select _"Ebyssian would like to speak to you."_
Speak to Wrathion |q 72924/1 |goto Zaralek Cavern/0 51.53,25.79
step
Watch the dialogue
talk Ebyssian##199965
turnin Appealing to the Black Prince##72924 |goto Zaralek Cavern/0 51.47,25.76
accept With Our Powers Combined##72925 |goto Zaralek Cavern/0 51.47,25.76
step
Meet Emberthal By the Entrance to Brimstone Garrison |q 72925/1 |goto Zaralek Cavern/0 47.18,27.90
step
talk Ebyssian##199965
turnin With Our Powers Combined##72925 |goto Zaralek Cavern/0 47.18,27.90
accept Forward Camp##72931 |goto Zaralek Cavern/0 47.18,27.90
step
talk Sabellian##199973
accept Wipe Them Out##72928 |goto Zaralek Cavern/0 47.06,28.08
step
Watch the dialogue
talk Wrathion##200101
accept In the Right Hands##72926 |goto Zaralek Cavern/0 47.23,27.82
stickystart "Defeat_Enemies_Around_Brimstone_Garrison"
step
click 'The Resting Blade'##385569
|tip Inside the building.
collect 'The Resting Blade'##204877 |q 72926/2 |goto Zaralek Cavern/0 45.11,21.01
step
click Ebon Eviscerator
collect Ebon Eviscerator##204184 |q 72926/1 |goto Zaralek Cavern/0 45.11,18.45
step
label "Defeat_Enemies_Around_Brimstone_Garrison"
Kill enemies around this area
Defeat Enemies in Brimstone Garrison |q 72928/1 |goto Zaralek Cavern/0 45.16,19.46
step
Meet Ebyssian at the Brimstone Garrison |q 72931/1 |goto Zaralek Cavern/0 44.05,15.65
|tip At the top of the tower.
step
talk Wrathion##200101
|tip At the top of the tower.
turnin In the Right Hands##72926 |goto Zaralek Cavern/0 44.00,15.66
step
talk Sabellian##199973
|tip At the top of the tower.
turnin Wipe Them Out##72928 |goto Zaralek Cavern/0 44.07,15.55
step
talk Ebyssian##199965
|tip At the top of the tower.
turnin Forward Camp##72931 |goto Zaralek Cavern/0 44.05,15.65
accept Finding Sarkareth##72927 |goto Zaralek Cavern/0 44.04,15.63
step
Meet with Emberthal |q 72927/1 |goto Zaralek Cavern/0 47.28,15.69
step
talk Scalecommander Emberthal##199964
turnin Finding Sarkareth##72927 |goto Zaralek Cavern/0 47.37,15.61
accept Cracking His Shell##72929 |goto Zaralek Cavern/0 47.37,15.61
step
click Aberrus Charge
Destroy a Connection |q 72929/1 |count 1 |goto Zaralek Cavern/0 47.54,16.32
step
click Aberrus Charge
Destroy a Connection |q 72929/1 |count 2 |goto Zaralek Cavern/0 49.24,16.62
step
talk Scalecommander Emberthal##199964
turnin Cracking His Shell##72929 |goto Zaralek Cavern/0 47.37,15.61
accept Stopping Sarkareth##72930 |goto Zaralek Cavern/0 47.37,15.61
step
kill Dreadful Defender##203842
|tip Keep moving out of areas on targeted on the ground.
Stop Sarkareth |q 72930/1 |goto Zaralek Cavern/0 48.55,15.01
step
talk Scalecommander Emberthal##199964
turnin Stopping Sarkareth##72930 |goto Zaralek Cavern/0 47.87,14.90
step
talk Ebyssian##199965
accept Aberrus, the Shadowed Crucible: Sarkareth##75694 |goto Zaralek Cavern/0 47.89,14.97
step
use the Sign of Respect##205998
Consume the Reputation Token |complete itemcount(205998) == 0
step
talk Mimuup##204254
|tip Inside the building.
turnin A Worthy Ally: Loamm Niffen##75665 |goto Zaralek Cavern/0 56.53,55.66 |or
'|complete completedq(75643) |or
step
use the Scentsational Niffen Treasures##205983
collect Splintered Spark of Shadowflame##204717 |q 75641/1 |goto Zaralek Cavern/0 56.84,54.79
step
talk Examiner Tae'shara Bloodwatcher##204509
turnin Power Unified##75641 |goto Zaralek Cavern/0 56.84,54.79
step
talk Rupert, the Gentleman Elemental##200291
accept Healing Crystals##73037 |goto Zaralek Cavern/0 40.10,68.42
step
talk Earthmender Narvra##200953
accept Satiating Sharpbeak##75440 |goto Zaralek Cavern/0 40.13,68.35
step
talk Veritistrasz##200298
accept Medicinal Fungi##73036 |goto Zaralek Cavern/0 40.19,68.32
step
click Sharpbeak's Feed
collect 1 Sharpbeak's Feed##205217 |q 75440/1 |goto Zaralek Cavern/0 40.14,68.19
step
talk Sharpbeak##200300
Select _"Easy, easy. I'm here to help."_
Get Sharpbeak to Accept Her Feed |q 75440/2 |goto Zaralek Cavern/0 40.34,67.80
step
talk Sharpbeak##200300
turnin Satiating Sharpbeak##75440 |goto Zaralek Cavern/0 40.34,67.80
stickystart "Collect_10_Viridian_Heartcrystals"
step
click Drooping Mushroom
collect 1 Drooping Mushroom Cutting##202873 |q 73036/1 |goto Zaralek Cavern/0 39.87,71.63
step
click Drooping Mushroom
collect 2 Drooping Mushroom Cutting##202873 |q 73036/1 |goto Zaralek Cavern/0 39.02,70.15
step
click Drooping Mushroom
collect 3 Drooping Mushroom Cutting##202873 |q 73036/1 |goto Zaralek Cavern/0 37.87,68.69
step
click Drooping Mushroom
collect 4 Drooping Mushroom Cutting##202873 |q 73036/1 |goto Zaralek Cavern/0 37.60,69.31
step
click Drooping Mushroom
collect 5 Drooping Mushroom Cutting##202873 |q 73036/1 |goto Zaralek Cavern/0 36.83,69.29
step
click Drooping Mushroom
collect 6 Drooping Mushroom Cutting##202873 |q 73036/1 |goto Zaralek Cavern/0 36.54,69.54
step
click Drooping Mushroom
collect 7 Drooping Mushroom Cutting##202873 |q 73036/1 |goto Zaralek Cavern/0 36.82,70.03
step
click Drooping Mushroom
collect 8 Drooping Mushroom Cutting##202873 |q 73036/1 |goto Zaralek Cavern/0 37.86,70.95
step
click Drooping Mushroom
collect 9 Drooping Mushroom Cutting##202873 |q 73036/1 |goto Zaralek Cavern/0 36.92,70.88
step
click Drooping Mushroom
collect 10 Drooping Mushroom Cutting##202873 |q 73036/1 |goto Zaralek Cavern/0 37.07,72.05
step
label "Collect_10_Viridian_Heartcrystals"
Kill Viridian enemies around this area
collect 10 Viridian Heartcrystal##203012 |q 73037/1 |goto Zaralek Cavern/0 38.77,72.89
step
talk Veritistrasz##200298
turnin Medicinal Fungi##73036 |goto Zaralek Cavern/0 40.19,68.32
step
talk Earthmender Narvra##200953
turnin Healing Crystals##73037 |goto Zaralek Cavern/0 40.13,68.35
step
talk Rupert, the Gentleman Elemental##200291
accept Cavernous Capers##73046 |goto Zaralek Cavern/0 40.10,68.40
step
talk Rupert, the Gentleman Elemental##200291
Select _"I'm Ready to travel with you"_
Speak with Rupert to Travel to the Buried Vault |q 73046/1 |goto Zaralek Cavern/0 40.10,68.40
step
talk Rupert, the Gentleman Elemental##203176
|tip He runs to this spot.
turnin Cavernous Capers##73046 |goto Zaralek Cavern/0 53.62,79.33
accept Bringing Disorder to Order##73040 |goto Zaralek Cavern/0 53.62,79.33
step
talk Voraxian##200290
accept A Room Without a View##73038 |goto Zaralek Cavern/0 53.67,79.52
step
Enter the building |goto Zaralek Cavern/0 52.64,81.98 < 10 |walk
click Elementally Charged Orb
|tip Inside the building.
|tip WARNING: Completing the world quest to kill watchers will boot you out of this area with no way to re-enter.
|tip If this happens, abandon "Bringing Disorder to Order" and accept it again.
collect 1 Elementally Charged Orb##203394 |q 73038/1 |goto Zaralek Cavern/0 51.18,83.24
step
click Elementally Charged Orb
|tip Inside the building.
|tip WARNING: Completing the world quest to kill watchers will boot you out of this area with no way to re-enter.
|tip If this happens, abandon "Bringing Disorder to Order" and accept it again.
collect 2 Elementally Charged Orb##203394 |q 73038/1 |goto Zaralek Cavern/0 53.07,84.77
step
click Elementally Charged Orb
|tip Inside the building.
|tip WARNING: Completing the world quest to kill watchers will boot you out of this area with no way to re-enter.
|tip If this happens, abandon "Bringing Disorder to Order" and accept it again.
collect 3 Elementally Charged Orb##203394 |q 73038/1 |goto Zaralek Cavern/0 51.28,86.23
step
kill 6 Enraged Watcher##200407 |q 73040/1 |goto Zaralek Cavern/0 53.20,80.58
step
talk Voraxian##200290
turnin A Room Without a View##73038 |goto Zaralek Cavern/0 53.68,79.51
step
talk Rupert, the Gentleman Elemental##203176
turnin Bringing Disorder to Order##73040 |goto Zaralek Cavern/0 53.62,79.33
accept Terrestrial Tunneling##73047 |goto Zaralek Cavern/0 53.62,79.33
step
talk Rupert, the Gentleman Elemental##203176
Select _"Can you take me back to camp?"_
Ask Rupert to Take You Back to the Dragonscale Camp |q 73047/1 |goto Zaralek Cavern/0 53.62,79.33
step
Return to the Dragonscale Camp |q 73047/2 |goto Zaralek Cavern/0 40.24,68.43
step
talk Rupert, the Gentleman Elemental##200291
turnin Terrestrial Tunneling##73047 |goto Zaralek Cavern/0 40.12,68.46
step
talk Earthmender Narvra##200953
accept Respite##73041 |goto Zaralek Cavern/0 40.16,68.34
step
click Peacebloom Tea
click Roasted Kabab
click Fruit Platter
click Cheese Platter
click Roasted Nuts
|tip Choose whichever you prefer.
Choose your meal |q 73041/1 |goto Zaralek Cavern/0 40.17,68.39
step
talk Tellywin Sharpfizzle##200292
Select _"What were the artifacts we recovered?"_
Ask Tellywin About the Artifacts You Recovered |q 73041/3 |goto Zaralek Cavern/0 40.14,68.35
step
talk Earthmender Narvra##200953
turnin Respite##73041 |goto Zaralek Cavern/0 40.16,68.34
accept A Tower Yonder##73042 |goto Zaralek Cavern/0 40.16,68.34
step
Investigate the Tower |q 73042/1 |goto Zaralek Cavern/0 48.35,50.30
step
click Broken Weapon
Investigate the Broken Weapon |q 73042/3 |goto Zaralek Cavern/0 47.92,48.94
step
clicknpc Brimstone Lookout##202825
Investigate the Corpse |q 73042/2 |goto Zaralek Cavern/0 47.90,48.95
step
clicknpc Brimstone Lookout##202825
Choose _"<Pick up the jerky.>"_
collect Questionable Jerky##204342 |goto Zaralek Cavern/0 47.90,48.95 |q 73042
step
click Cracked Jar
Investigate the Cracked Jar |q 73042/4 |goto Zaralek Cavern/0 47.64,48.71
step
click Weathered Book
|tip On the ground in the corner.
Choose _"<Pick up the book to bring to Narvra.>"_
Investigate the Book |q 73042/5 |goto Zaralek Cavern/0 47.67,48.89
step
click Note to Disposal Site
|tip Under the rubble.
collect Note to Disposal Site##204345 |goto Zaralek Cavern/0 47.63,48.89 |q 73042
step
Watch the Dialogue
talk Earthmender Narvra##200953
|tip She walks to this location.
turnin A Tower Yonder##73042 |goto Zaralek Cavern/0 48.95,45.52
accept Restless Death##73039 |goto Zaralek Cavern/0 48.95,45.52
step
talk Veritistrasz##200298
accept A Ghastly Legacy##73043 |goto Zaralek Cavern/0 48.93,45.51
step
talk Voraxian##200290
accept Cataloging Horror##73044 |goto Zaralek Cavern/0 48.86,45.41
stickystart "Kill_Researchers_and_Experiments"
step
use the Cataloging Camera##204698
|tip Use the ability on your action bar to photograph where the Giant Yellow Arrows are pointing.
|tip There should be 2 here.
Take #2# Photographs of the Evidence |q 73044/1 |count 2 |goto Zaralek Cavern/0 49.15,45.09
step
use the Cataloging Camera##204698
|tip Use the ability on your action bar to photograph where the Giant Yellow Arrows are pointing.
Photograph the Evidence |q 73044/1 |count 3 |goto Zaralek Cavern/0 49.90,45.65
step
use the Cataloging Camera##204698
|tip Use the ability on your action bar to photograph where the Giant Yellow Arrows are pointing.
Photograph the Evidence |q 73044/1 |count 4 |goto Zaralek Cavern/0 50.12,43.84
step
click Ritual Anchor Totem
Place the First Ritual Anchor Totem |q 73039/1 |goto Zaralek Cavern/0 50.42,44.00
step
use the Cataloging Camera##204698
|tip Use the ability on your action bar to photograph where the Giant Yellow Arrows are pointing.
Photograph the Evidence |q 73044/1 |count 5 |goto Zaralek Cavern/0 51.12,43.64
step
use the Cataloging Camera##204698
|tip Use the ability on your action bar to photograph where the Giant Yellow Arrows are pointing.
Photograph the Evidence |q 73044/1 |count 6 |goto Zaralek Cavern/0 49.63,42.81
step
click Ritual Anchor Totem
Place the second Ritual Anchor Totem |q 73039/2 |goto Zaralek Cavern/0 50.20,41.14
step
click Ritual Anchor Totem
Place the third Ritual Anchor Totem |q 73039/3 |goto Zaralek Cavern/0 49.99,38.49
step
click Ritual Anchor Totem
Place the fourth Ritual Anchor Totem |q 73039/4 |goto Zaralek Cavern/0 50.22,36.61
step
label "Kill_Researchers_and_Experiments"
Kill enemies around this area
Slay #15# Failed Experiments or Ghastly Researchers |q 73043/1 |goto Zaralek Cavern/0 50.34,37.30
step
_Next to You:_
talk Voraxian##203099
turnin Cataloging Horror##73044 |goto Zaralek Cavern/0 50.34,37.30
step
talk Veritistrasz##200298
turnin A Ghastly Legacy##73043 |goto Zaralek Cavern/0 48.35,32.86
step
talk Earthmender Narvra##200953
turnin Restless Death##73039 |goto Zaralek Cavern/0 48.31,32.79
accept Stain Removal##73045 |goto Zaralek Cavern/0 48.31,32.79
step
extraaction Cleansing Ritual##408146
Start the Ritual |q 73045/1 |goto Zaralek Cavern/0 48.42,32.87
step
Watch the Dialogue
Complete the Ritual |q 73045/2 |goto Zaralek Cavern/0 48.42,32.87
step
kill Lead Researcher Sytorian##203067 |q 73045/3 |goto Zaralek Cavern/0 48.83,28.53
step
talk Earthmender Narvra##200953
turnin Stain Removal##73045 |goto Zaralek Cavern/0 48.31,32.79
step
use the Honorary Explorer's Compass##205254
Consume the Reputation Token |complete itemcount(205254) == 0
step
click TICKET: Glimmerogg Games
accept TICKET: Glimmerogg Games##73707 |goto Zaralek Cavern/0 55.61,54.56
step
talk Myrrit##201426
accept Best Friends##74877 |goto Zaralek Cavern/0 55.62,57.45
step
talk Effervesta##202778
Select _" Myrrit is wondering if you have time to go on a dig with him."_
Talk to Effervesta |q 74877/1 |goto Zaralek Cavern/0 54.61,54.94
step
talk Myrrit##201426
Select _"Effervesta says she will meet with you at your 'spot.'"_
Give Myrrit the Good News |q 74877/2 |goto Zaralek Cavern/0 55.62,57.45
step
talk Marithos##203233
accept Stress Fractures##73081 |goto Zaralek Cavern/0 56.38,57.09
|only if Dracthyr
step
talk Floressa##203293
|tip Inside the building.
buy 1 Squishy Snack##204791 |q 74877/3 |goto Zaralek Cavern/0 56.42,55.84
step
Check on Myrrit at the "Secret Spot" |q 74877/4 |goto Zaralek Cavern/0 52.27,62.87
step
talk Myrrit##202766
turnin Best Friends##74877 |goto Zaralek Cavern/0 52.17,62.80
step
Investigate the Captured Sundered Flame |q 73081/1 |goto Zaralek Cavern/0 55.71,56.98
|only if haveq(73081) or completedq(73081)
step
talk Belligerent Dracthyr##202967
Select _"You can't treat a prisoner like this."_
Belligerent Dracthyr questioned |q 73081/2 |goto Zaralek Cavern/0 55.71,56.98
|only if haveq(73081) or completedq(73081)
step
kill Belligerent Dracthyr##200877
Deter the Belligerent Dracthyr |q 73081/3 |goto Zaralek Cavern/0 55.71,57.39
|only if haveq(73081) or completedq(73081)
step
talk Captured Messenger##200876
turnin Stress Fractures##73081 |goto Zaralek Cavern/0 55.76,57.04 |only if haveq(73081) or completedq(73081)
accept Cold Feet##73085 |goto Zaralek Cavern/0 55.76,57.04 |only if haveq(73081) or completedq(73081)
|only if haveq(73081,73085) or completedq(73081,73085)
step
click Bag of Sundered Flame Contraband
Examine the Bag of Sundered Flame Contraband |q 73085/1 |goto Zaralek Cavern/0 55.74,57.04
|only if haveq(73085) or completedq(73085)
step
click Tarnished Box
Examine the Tarnished Box |q 73085/4 |goto Zaralek Cavern/0 55.65,57.15
|only if haveq(73085) or completedq(73085)
step
click Stolen Tome
Examine the Stolen Tome |q 73085/3 |goto Zaralek Cavern/0 55.68,57.18
|only if haveq(73085) or completedq(73085)
step
click Sundered Flame Missive
Examine the Sundered Flame Missive |q 73085/2 |goto Zaralek Cavern/0 55.71,57.19
|only if haveq(73085) or completedq(73085)
step
talk Marithos##203233
turnin Cold Feet##73085 |goto Zaralek Cavern/0 56.38,57.09
|only if haveq(73081) or completedq(73081)
step
talk Patroclosa##200550
accept This Might Sting##73077 |goto Zaralek Cavern/0 59.39,63.73
|only if Dracthyr
stickystart "Collect-Quartzite_Spore_Bile"
step
click Spongy Loamshroom+
|tip They look like large brown mushrooms on the ground around this area.
collect 8 Spongy Loamshroom##203393 |q 73077/2 |goto Zaralek Cavern/0 58.85,65.26
|only if haveq(73077) or completedq(73077)
step
label "Collect-Quartzite_Spore_Bile"
kill Quartzite Sporebat##201306+
collect 6 Quartzite Spore Bile##204088 |q 73077/1 |goto Zaralek Cavern/0 58.52,64.86
|only if haveq(73077) or completedq(73077)
step
clicknpc Sundered Flame Scout##200870
Apply the Antivenom |q 73077/3 |goto Zaralek Cavern/0 59.36,63.73
|only if haveq(73077) or completedq(73077)
step
talk Patroclosa##200550
turnin This Might Sting##73077 |goto Zaralek Cavern/0 59.39,63.78
|only if haveq(73077) or completedq(73077)
step
talk Yarren##202597
accept Mouse Detective##74857 |goto Zaralek Cavern/0 51.05,74.14
step
Follow the Tracks |q 74857/1 |goto Zaralek Cavern/0 50.40,76.37
step
talk Agrul##202600
Choose  _"<Ask Agrul if he's seen the mouse.>"_
Speak to Agrul |q 74857/2 |goto Zaralek Cavern/0 50.40,76.37
step
talk Agrul##202600
turnin Mouse Detective##74857 |goto Zaralek Cavern/0 50.40,76.37
accept Agrulculture##74858 |goto Zaralek Cavern/0 50.40,76.37
step
_Next to you:_
talk Agrul##202600
accept Sporemoth Exterminator##74859
stickystart "Kill_10_Sporemoths"
step
click Glow Spores+
|tip Look for clouds of smelly dirt around this area.
|tip They look like pillars of yellow smoke.
|tip They appear on your minimap as yellow dots.
|tip Viper enemies may spawn at random instead of a Glow Spore spawning.
Watch the dialogue
collect 6 Glow Spores##204377 |q 74858/1 |goto Zaralek Cavern/0 51.43,76.75
step
label "Kill_10_Sporemoths"
Kill Sporemoth enemies around this area
Slay #10# Sporemoths |q 74859/1 |goto Zaralek Cavern/0 50.23,76.76
step
talk Agrul##202600
turnin Agrulculture##74858 |goto Zaralek Cavern/0 50.40,76.37
turnin Sporemoth Exterminator##74859 |goto Zaralek Cavern/0 50.40,76.37
accept A Friendly Introduction##74860 |goto Zaralek Cavern/0 50.40,76.37
step
click Empty Storage Crate
Deliver the Harvest  |q 74860/1 |goto Zaralek Cavern/0 50.96,74.18
step
talk Yarren##202597
Choose _"<Introduce Agrul.>"_
Watch the Dialogue
Introduce Agrul to Yarren |q 74860/2 |goto Zaralek Cavern/0 51.05,74.14
step
talk Yarren##202597
turnin A Friendly Introduction##74860 |goto Zaralek Cavern/0 51.05,74.14
accept An Unfriendly Confrontation##74861 |goto Zaralek Cavern/0 51.05,74.14
step
Find Agrul |q 74861/1 |goto Zaralek Cavern/0 46.97,79.03
step
talk Agrul##202600
turnin An Unfriendly Confrontation##74861 |goto Zaralek Cavern/0 46.89,79.58
accept Mouse Rescuers##75462 |goto Zaralek Cavern/0 46.89,79.58
step
Enter the cave |goto Zaralek Cavern/0 46.66,79.72 < 10 |walk
kill Malrogg##202606 |q 75462/1 |goto Zaralek Cavern/0 46.38,80.56
|tip Inside the cave.
step
Watch the Dialogue
Find Persii |q 75462/2 |goto Zaralek Cavern/0 46.95,79.57
step
Watch the Dialogue
Follow Agrul |q 75462/3 |goto Zaralek Cavern/0 51.04,73.95
step
talk Yarren##202597
turnin Mouse Rescuers##75462 |goto Zaralek Cavern/0 51.05,74.14
step
use the Farmhand's Abundant Harvest##205253
Consume the Reputation Token |complete itemcount(205253) == 0
step
talk Brogg the Beast##201098
turnin TICKET: Glimmerogg Games##73707 |goto Zaralek Cavern/0 43.79,82.98
accept Pay to Play##73708 |goto Zaralek Cavern/0 43.79,82.98
accept Favor on the Side##73709 |goto Zaralek Cavern/0 43.79,82.98
step
talk Festival Challenger##202571
Select _"You're a party crasher!"_
Find #6# Intruders |q 73709/1 |goto Zaralek Cavern/0 44.27,82.29
step
kill Echoed Lurker##202636+
collect 4 Echoed Lurker Flesh##204803 |q 73708/1 |goto Zaralek Cavern/0 44.20,84.66
step
talk Gudegg##203378
accept Flesh to Bone##75233 |goto Zaralek Cavern/0 43.21,84.09
step
click Glimmer Mushroom##388520
collect 1 Glimmer Mushroom##205169 |q 73708/2 |goto Zaralek Cavern/0 38.12,78.45
step
click Glimmer Mushroom##388520
collect 2 Glimmer Mushroom##205169 |q 73708/2 |goto Zaralek Cavern/0 37.93,77.49
step
click Glimmer Mushroom##388520
collect 3 Glimmer Mushroom##205169 |q 73708/2 |goto Zaralek Cavern/0 37.63,76.63
step
click Glimmer Mushroom##388520
collect 4 Glimmer Mushroom##205169 |q 73708/2 |goto Zaralek Cavern/0 38.28,76.66
step
Find the Cave Entrance |q 75233/1 |goto Zaralek Cavern/0 54.73,65.91
stickystart "Collect_Crawler_Venom"
step
kill Osseous Broodmother##203348
|tip Inside the cave.
collect 1 Broodmother Venom##205031 |q 75233/3 |goto Zaralek Cavern/0 52.63,65.26
step
label "Collect_Crawler_Venom"
kill Calcifying Crawler##203342+
|tip Inside the cave.
collect 6 Crawler Venom##205030 |q 75233/2 |goto Zaralek Cavern/0 53.33,65.31
step
talk Gudegg##203378
turnin Flesh to Bone##75233 |goto Zaralek Cavern/0 43.20,84.08
step
talk Brogg the Beast##201098
turnin Pay to Play##73708 |goto Zaralek Cavern/0 43.79,82.98
turnin Favor on the Side##73709 |goto Zaralek Cavern/0 43.79,82.98
step
talk Storul Heavystone##201100
accept Rock By Rock##73710 |goto Zaralek Cavern/0 44.97,83.29
step
click Starter Rock Bar
Lift the Weight Bars |q 73710/1 |count 1 |goto Zaralek Cavern/0 45.13,83.35
step
click Mid-Weight Rock Bar
Lift the Weight Bars |q 73710/1 |count 2 |goto Zaralek Cavern/0 45.08,83.24
step
click Heavy Rock Bar
Lift the Weight Bars |q 73710/1 |count 3 |goto Zaralek Cavern/0 44.99,83.10
step
talk Storul Heavystone##201100
turnin Rock By Rock##73710 |goto Zaralek Cavern/0 44.98,83.31
accept Marked Champion##73711 |goto Zaralek Cavern/0 44.98,83.30
step
Enter the cave |goto Zaralek Cavern/0 45.40,86.85 < 10 |walk
kill Carcaxas##202836 |q 73711/1 |goto Zaralek Cavern/0 45.59,87.62
|tip Inside the cave.
step
talk Storul Heavystone##201100
turnin Marked Champion##73711 |goto Zaralek Cavern/0 44.98,83.29
step
use the Champion's Rock Bar##205251
Consume the Reputation Token |complete itemcount(205251) == 0
step
talk Briggul##201752
accept Come Snail Away##74787 |goto Zaralek Cavern/0 44.25,79.93
|only if factionrenown(2564) >= 7
step
clicknpc Big Slick in the City##202731
Meet Slick |q 74787/1 |goto Zaralek Cavern/0 44.17,79.98
|only if haveq(74787) or completedq(74787)
step
talk Briggul##201752
turnin Come Snail Away##74787 |goto Zaralek Cavern/0 44.26,79.93
|only if haveq(74787) or completedq(74787)
step
kill Scalecommander Sarkareth |q 75694/1 |goto Aberrus, the Shadowed Crucible/4 48.97,71.21
|tip This is the final boss of the Aberrus, the Shadowed Crucible raid.
step
talk Ebyssian##201727
turnin Aberrus, the Shadowed Crucible: Sarkareth##75694 |goto Zaralek Cavern/0 48.01,11.84
accept A Flame, Extinguished##74521 |goto Zaralek Cavern/0 48.01,11.84
step
Watch the dialogue
talk Wrathion##201730
talk Sabellian##201729
Choose _"I'm ready to enter."_
Speak to Wrathion or Sabellian to Enter Aberrus |q 74521/1 |goto Zaralek Cavern/0 48.33,10.18
step
talk Wrathion##202809
talk Sabellian##202810
|tip It will depend on who you chose to enter with.
Select _"Can you tell me what happened in there?"_
Experience the Retelling of Sarkareth's Fate |q 74521/2 |goto Aberrus, the Shadowed Crucible/5 51.30,91.36
step
_Next to You:_
talk Wrathion##202809
talk Sabellian##202810
|tip It will depend on who you chose to enter with.
turnin A Flame, Extinguished##74521
accept Remnants##74522
step
_Next to You:_
talk Sabellian##202810
accept A Traitor's Due##74523
stickystart "Slay_Neltharions_Loyalist"
step
talk Drained Djaradin##202858
accept Honorbound##74525 |goto Aberrus, the Shadowed Crucible/5 43.25,51.80
step
click Cage Door##388868
Free the Djaradin |q 74525/1 |count 1 |goto Aberrus, the Shadowed Crucible/5 42.03,61.52
step
click Cage Door##388868
Free the Djaradin |q 74525/1 |count 2 |goto Aberrus, the Shadowed Crucible/5 36.68,52.32
step
click Cage Door##388868
Free the Djaradin |q 74525/1 |count 3 |goto Aberrus, the Shadowed Crucible/5 38.40,42.37
step
click Cage Door##388868
Free the Djaradin |q 74525/1 |count 4 |goto Aberrus, the Shadowed Crucible/6 55.38,57.00
step
use Blacktalon Napalm##204271
|tip Throw it at the specimen tank.
Destroy the Specimen Tank |q 74522/1 |count 1 |goto Aberrus, the Shadowed Crucible/6 51.15,70.30
step
use Blacktalon Napalm##204271
|tip Throw it at the specimen tank.
Destroy the Specimen Tank |q 74522/1 |count 2 |goto Aberrus, the Shadowed Crucible/6 48.41,69.50
step
use Blacktalon Napalm##204271
|tip Throw it at the specimen tank.
Destroy the Specimen Tank |q 74522/1 |count 3 |goto Aberrus, the Shadowed Crucible/6 46.00,70.16
step
use Blacktalon Napalm##204271
|tip Throw it at the specimen tank.
Destroy the Specimen Tank |q 74522/1 |count 4 |goto Aberrus, the Shadowed Crucible/6 43.94,67.39
step
click Cage Door##388868
Free the Djaradin |q 74525/1 |count 5 |goto Aberrus, the Shadowed Crucible/6 44.75,59.74
step
use Blacktalon Napalm##204271
|tip Throw it at the specimen tank.
Destroy the Specimen Tank |q 74522/1 |count 5 |goto Aberrus, the Shadowed Crucible/6 43.40,44.05
step
use Blacktalon Napalm##204271
|tip Throw it at the specimen tank.
Destroy the Specimen Tank |q 74522/1 |count 6 |goto Aberrus, the Shadowed Crucible/6 54.37,45.65
step
use Blacktalon Napalm##204271
|tip Throw it at the specimen tank.
Destroy the Specimen Tank |q 74522/1 |count 7 |goto Aberrus, the Shadowed Crucible/6 48.25,26.02
step
label "Slay_Neltharions_Loyalist"
Kill enemies around this area
Defeat Neltharion's Loyalists |q 74523/1 |goto Aberrus, the Shadowed Crucible/6 39.63,50.65
step
_Next to You:_
talk Wrathion##202809
turnin Remnants##74522
step
_Next to You:_
talk Sabellian##202810
turnin A Traitor's Due##74523
turnin Honorbound##74525
step
_Next to You:_
talk Wrathion##202809
accept Into the Dark##75018
step
Reach the Upper Platform of the Onyx Laboratory |q 75018/1 |goto Aberrus, the Shadowed Crucible/6 56.58,19.33
step
clicknpc Slitherdrake##202520
Ride the Slitherdrakes to Neltharion's Sanctum |q 75018/2 |goto Aberrus, the Shadowed Crucible/5 34.99,27.09
step
Watch the dialogue
|tip Run forward into the room when you land.
Enter the Edge of Oblivion |goto Aberrus, the Shadowed Crucible/7 50.73,14.00 < 10 |c |noway
step
Pass Through the Edge of Oblivion |q 75018/3 |goto Aberrus, the Shadowed Crucible/7 50.75,66.71
|tip You will fall safely into a pool below.
step
click Door |goto Aberrus, the Shadowed Crucible/8 49.15,47.31
Meet Up With Ebyssian and Emberthal |q 75018/4 |goto Aberrus, the Shadowed Crucible/8 49.19,62.44
step
talk Ebyssian##202928
turnin Into the Dark##75018 |goto Aberrus, the Shadowed Crucible/8 49.90,70.94
accept All the Broken Pieces##75028 |goto Aberrus, the Shadowed Crucible/8 49.90,70.94
step
click Signet Shard##402565
Collect the Signet Shard  |q 75028/1 |count 1 |goto Aberrus, the Shadowed Crucible/8 47.00,75.14
step
click Signet Shard##402565
Collect the Signet Shard |q 75028/1 |count 2 |goto Aberrus, the Shadowed Crucible/8 45.37,74.45
step
click Signet Shard##402565
Collect the Signet Shard |q 75028/1 |count 3 |goto Aberrus, the Shadowed Crucible/8 45.61,70.78
step
talk Scalecommander Emberthal##202948
turnin All the Broken Pieces##75028 |goto Aberrus, the Shadowed Crucible/8 49.38,70.61
step
talk Ebyssian##202928
accept A Legacy, Reforged##75029 |goto Aberrus, the Shadowed Crucible/8 49.93,70.93
step
click Portal to the Seat of the Aspects
Teleport to the Seat of the Aspects |q 75029/2 |goto Aberrus, the Shadowed Crucible/8 49.14,72.74
step
talk Ebyssian##203011
|tip At the top of the tower.
Select _"Yes, thank you for waiting."_
Speak to Ebyssian |q 75029/3 |goto Valdrakken/0 58.41,39.63
step
Watch the dialogue
|tip At the top of the tower.
Witness the Exchange Between Ebyssian and Alexstrasza |q 75029/4 |goto Valdrakken/0 58.42,39.67
step
talk Ebyssian##202928
|tip At the top of the tower.
turnin A Legacy, Reforged##75029 |goto Valdrakken/0 58.41,39.63
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
accept Symbol of Hope##75417 |goto Valdrakken/0 58.00,34.59
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
Select _"Show me."_
Speak to Alexstrasza |q 75417/1 |goto Valdrakken/0 58.00,34.59
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the tower.
turnin Symbol of Hope##75417 |goto Valdrakken/0 58.00,34.59
step
use the Earth-Warder's Thanks##206006
Consume the Reputation Token |complete itemcount(206006) == 0
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Snail Racing",{
author="support@zygorguides.com",
startlevel=68,
patch='100100',
},[[
step
Reach Renown Level 7 with the Loamm Niffen |complete factionrenown(2564) >= 7
|tip Complete daily quests, weekly quests, and zone quests in Zaralek Caverns to gain renown.
|tip Completing the "Zaralek Cavern" guide awards numerous reputation tokens.
step
click TICKET: Glimmerogg Games
accept TICKET: Glimmerogg Games##73707 |goto Zaralek Cavern/0 55.61,54.56
step
talk Brogg the Beast##201098
turnin TICKET: Glimmerogg Games##73707 |goto Zaralek Cavern/0 43.79,82.98
accept Pay to Play##73708 |goto Zaralek Cavern/0 43.79,82.98
accept Favor on the Side##73709 |goto Zaralek Cavern/0 43.79,82.98
step
talk Festival Challenger##202571
Select _"You're a party crasher!"_
Find #6# Intruders |q 73709/1 |goto Zaralek Cavern/0 44.27,82.29
step
kill Echoed Lurker##202636+
collect 4 Echoed Lurker Flesh##204803 |q 73708/1 |goto Zaralek Cavern/0 44.20,84.66
step
talk Gudegg##203378
accept Flesh to Bone##75233 |goto Zaralek Cavern/0 43.21,84.09
step
click Glimmer Mushroom##388520
collect 1 Glimmer Mushroom##205169 |q 73708/2 |goto Zaralek Cavern/0 38.12,78.45
step
click Glimmer Mushroom##388520
collect 2 Glimmer Mushroom##205169 |q 73708/2 |goto Zaralek Cavern/0 37.93,77.49
step
click Glimmer Mushroom##388520
collect 3 Glimmer Mushroom##205169 |q 73708/2 |goto Zaralek Cavern/0 37.63,76.63
step
click Glimmer Mushroom##388520
collect 4 Glimmer Mushroom##205169 |q 73708/2 |goto Zaralek Cavern/0 38.28,76.66
step
talk Brogg the Beast##201098
turnin Pay to Play##73708 |goto Zaralek Cavern/0 43.79,82.98
turnin Favor on the Side##73709 |goto Zaralek Cavern/0 43.79,82.98
step
talk Storul Heavystone##201100
accept Rock By Rock##73710 |goto Zaralek Cavern/0 44.97,83.29
step
click Starter Rock Bar
Lift the Weight Bars |q 73710/1 |count 1 |goto Zaralek Cavern/0 45.13,83.35
step
click Mid-Weight Rock Bar
Lift the Weight Bars |q 73710/1 |count 2 |goto Zaralek Cavern/0 45.08,83.24
step
click Heavy Rock Bar
Lift the Weight Bars |q 73710/1 |count 3 |goto Zaralek Cavern/0 44.99,83.10
step
talk Storul Heavystone##201100
turnin Rock By Rock##73710 |goto Zaralek Cavern/0 44.98,83.31
accept Marked Champion##73711 |goto Zaralek Cavern/0 44.98,83.30
step
Enter the cave |goto Zaralek Cavern/0 45.40,86.85 < 10 |walk
kill Carcaxas##202836 |q 73711/1 |goto Zaralek Cavern/0 45.59,87.62
|tip Inside the cave.
step
talk Storul Heavystone##201100
turnin Marked Champion##73711 |goto Zaralek Cavern/0 44.98,83.29
step
Reach Renown Level 7 with the Loamm Niffen |complete factionrenown(2564) >= 7
|tip Complete daily quests, weekly quests, and zone quests in Zaralek Caverns to gain renown.
|tip Completing the "Zaralek Cavern" guide awards numerous reputation tokens.
step
_Next to you:_
talk Newsy##205127
accept Off to the Track##75725
|tip You may need to relog to see this quest or leave Zaralek Cavern.
step
talk Briggul##201752
turnin Off to the Track##75725 |goto Zaralek Cavern/0 44.25,79.93
accept Come Snail Away##74787 |goto Zaralek Cavern/0 44.25,79.93
step
clicknpc Big Slick in the City##202731
Meet Slick |q 74787/1 |goto Zaralek Cavern/0 44.17,79.98
step
talk Briggul##201752
turnin Come Snail Away##74787 |goto Zaralek Cavern/0 44.26,79.93
step
label "Begin_Snail_Racing"
talk Grogul##201099
accept A Race to the Finish##75662 |goto Zaralek Cavern/0 44.45,80.40 |only if not completedq(75662) |or
accept A Race to the Finish##75706 |goto Zaralek Cavern/0 44.46,80.40 |only if not completedq(75706) |or
accept A Race to the Finish##75707 |goto Zaralek Cavern/0 44.46,80.40 |only if not completedq(75707) |or
|tip You will only be offered one of these quests occasionally.
|tip If it is not available you will need to wait for it to spawn at a later time.
step
talk Corry##204672
Select _"Is there any other way I can affect the outcome of a race?"_
Select _"I'd like treats to help Bashful win."_
|tip You will only see this dialogue option when the race is starting.
Speak with Corry and Collect Treats for Bashful |q 75662/1 |goto Zaralek Cavern/0 44.40,80.42
|only if haveq(75662) or completedq(75662)
step
clicknpc Bashful##204614
extraaction Bashful Treats##409176
|tip Drop the treat right in front of Bashful.
|tip It's a blue snail on the race track.
Use Treats on the Snail Racer Bashful |q 75662/2 |goto Zaralek Cavern/0 44.80,80.73
|only if haveq(75662) or completedq(75662)
step
clicknpc Bashful##204614
extraaction Bashful Treats##409176
|tip Drop the treat right in front of Bashful.
|tip Continue using "Bashful Treats" as you follow it.
|tip Only kill attacking enemies if they attack your snail.
|tip Otherwise, they will attack and slow the competition.
Help Bashful Win a Race |q 75662/3 |goto Zaralek Cavern/0 44.54,81.21
|only if haveq(75662) or completedq(75662)
step
talk Corry##204672
Select _"Is there any other way I can affect the outcome of a race?"_
Select _"I'd like treats to help Tricky win."_
|tip You will only see this dialogue option when the race is starting.
Speak with Corry and get Tricky's Treats |q 75706/1 |goto Zaralek Cavern/0 44.40,80.42
|only if haveq(75706) or completedq(75706)
step
clicknpc Tricky##204616
extraaction Tricky Treats##409203
|tip Drop the treat right in front of Tricky.
|tip It's a blue snail on the race track.
Use Treats on the Snail Racer Tricky |q 75706/2 |goto Zaralek Cavern/0 44.80,80.73
|only if haveq(75706) or completedq(75706)
step
clicknpc Tricky##204616
extraaction Tricky Treats##409203
|tip Drop the treat right in front of Tricky.
|tip Continue using "Tricky Treats" as you follow it.
|tip Only kill attacking enemies if they attack your snail.
|tip Otherwise, they will attack and slow the competition.
Help Tricky Win a Race |q 75706/3 |goto Zaralek Cavern/0 44.54,81.21
|only if haveq(75706) or completedq(75706)
step
talk Corry##204672
Select _"Is there any other way I can affect the outcome of a race?"_
Select _"I'd like treats to help Brulee win."_
|tip You will only see this dialogue option when the race is starting.
Speak with Corry and get Brulee's Treats |q 75707/1 |goto Zaralek Cavern/0 44.40,80.42
|only if haveq(75707) or completedq(75707)
step
clicknpc Brulee##204615
extraaction Brulee Treats##409200
|tip Drop the treat right in front of Brulee.
|tip It's a blue snail on the race track.
Use Treats on the Snail Racer Brulee |q 75707/2 |goto Zaralek Cavern/0 44.80,80.73
|only if haveq(75707) or completedq(75707)
step
clicknpc Brulee##204615
extraaction Brulee Treats##409200
|tip Drop the treat right in front of Brulee.
|tip Continue using "Brulee Treats" as you follow it.
|tip Only kill attacking enemies if they attack your snail.
|tip Otherwise, they will attack and slow the competition.
Help Brulee Win a Race |q 75707/3 |goto Zaralek Cavern/0 44.54,81.21
|only if haveq(75707) or completedq(75707)
step
talk Grogul##201099
turnin A Race to the Finish##75662 |goto Zaralek Cavern/0 44.46,80.39 |only if readyq(75662)
turnin A Race to the Finish##75706 |goto Zaralek Cavern/0 44.46,80.40 |only if readyq(75706)
turnin A Race to the Finish##75707 |goto Zaralek Cavern/0 44.46,80.40 |only if readyq(75707)
|only if readyq(75662,75706,75707)
step
Click Here When a New Race is Available |confirm  |goto Zaralek Cavern/0 44.46,80.39 |next "Begin_Snail_Racing"
|tip A new race will begin at a future daily reset.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\The Blue Dragonflight's Legacy",{
author="support@zygorguides.com",
description="This guide will help you complete the campaign for the blue dragonflight.",
condition_suggested=function() return level == 70 and not completedq(72951) end,
startlevel=68,
patch='100100',
},[[
step
talk Kalecgos##187676
|tip At the top of the tower.
accept Keeper of the Ossuary##72900 |goto Valdrakken/0 61.69,36.05
step
talk Senegos##199923
Select _"I'm here to help you, Senegos. Can you tell me more of this place?"_
|tip You will receive a warning that the first chapter of The Azure Span questline will be completed.
|tip If you agree to this, click yes to continue this questline.
Speak to Senegos Within the Veiled Ossuary |q 72900/1 |goto Thaldraszus/0 62.23,17.89
step
talk Senegos##199923
turnin Keeper of the Ossuary##72900 |goto Thaldraszus/0 62.23,17.89
accept On the Trail Again##72921 |goto Thaldraszus/0 62.23,17.89
step
talk Senegos##199923
Select _"I'm ready to receive the spell to find your arcane tomes."_
Watch the dialogue
Speak to Senegos |q 72921/1 |goto Thaldraszus/0 62.23,17.89
step
talk Stellagosa##200099
Select _"I'm ready to receive the spell to find Senegos's arcane tomes."_
Speak to Stellagosa |q 72921/2 |goto Thaldraszus/0 62.21,17.88
step
Enter the building |goto Thaldraszus/0 61.21,16.19 < 10 |walk
click Hidden Tome##385562
|tip Inside the building.
collect 1 Tome of Fanciful Spheres##202240 |q 72921/3 |goto Thaldraszus/0 60.86,16.73
step
Enter the building |goto Thaldraszus/0 62.02,13.41 < 10 |walk
click Hidden Tome##385563
|tip Inside the building.
collect 1 Tome of Rolling##202241 |q 72921/4 |goto Thaldraszus/0 61.70,12.73
step
Enter the building |goto Thaldraszus/0 64.05,14.78 < 10 |walk
click Hidden Tome##385564
|tip Inside the building.
collect 1 Tome of Sticking##202242 |q 72921/5 |goto Thaldraszus/0 64.47,15.14
step
talk Senegos##199961
turnin On the Trail Again##72921 |goto Thaldraszus/0 63.95,12.33
accept Rolling Out##72933 |goto Thaldraszus/0 63.95,12.33
step
talk Senegos##199961
Select _"I'm ready to use the Arcane Ball to clean up the Veiled Ossuary."_
Activate the Arcane Ball |q 72933/1 |goto Thaldraszus/0 63.95,12.33
step
Clean Up the Veiled Ossuary |q 72933/2 |goto Thaldraszus/0 65.98,12.36
|tip You will need to fill the Arcane Energy 3 times.
|tip The first time, roll the ball over Skittering Boneborers, avoiding the other bugs.
|tip When the ball grows larger, run it over Skittering Boneborer beetles and Veiled Damselflies all over the area.
|tip When the ball grows the final time, run it over all of the bug types.
|tip Then use the "Launch" ability that appears on your vehicle bar at the large glowing circle.
step
Enter the building |goto Thaldraszus/0 66.37,12.15 < 10 |walk
talk Senegos##199969
|tip Inside the building.
turnin Rolling Out##72933 |goto Thaldraszus/0 66.73,11.97
accept Lest We Forget##72934 |goto Thaldraszus/0 66.73,11.97
step
click Fresh Gravestone
|tip Inside the building.
Place the First Gravestone |q 72934/2 |goto Thaldraszus/0 66.83,11.84 |count 1
step
click Fresh Gravestone
|tip Inside the building.
Place the Second Gravestone |q 72934/2 |goto Thaldraszus/0 66.88,11.69 |count 2
step
click Faded Gravestone
|tip Inside the building.
Choose _<Update gravestone>_
Update the First Gravestone |q 72934/1 |goto Thaldraszus/0 66.93,11.64 |count 1
step
click Fresh Gravestone
|tip Inside the building.
Place the Third Gravestone |q 72934/2 |goto Thaldraszus/0 66.98,12.08 |count 3
step
click Faded Gravestone
|tip Inside the building.
Choose _<Update gravestone>_
Update the Second Gravestone |q 72934/1 |goto Thaldraszus/0 67.03,12.06 |count 2
step
click Fresh Gravestone
|tip Inside the building.
Place the Fourth Gravestone |q 72934/2 |goto Thaldraszus/0 67.08,12.02 |count 4
step
click Faded Gravestone
|tip Inside the building.
Choose _<Update gravestone>_
Update the Second Gravestone |q 72934/1 |goto Thaldraszus/0 67.11,11.79 |count 3
step
talk Senegos##200447
|tip Inside the building.
turnin Lest We Forget##72934 |goto Thaldraszus/0 67.09,11.77
accept Sindragosa and Malygos's Rest##73069 |goto Thaldraszus/0 67.09,11.77
step
talk Senegos##200447
|tip Inside the building.
Choose _"<Await Alexstrasza and Kalecgos's arrival.>"_
Watch the dialogue
Speak with Senegos |q 73069/1 |goto Thaldraszus/0 67.09,11.77
step
talk Kalecgos##200007
|tip Inside the building.
turnin Sindragosa and Malygos's Rest##73069 |goto Thaldraszus/0 67.03,11.81
step
talk Senegos##200447
|tip Inside the building.
accept Memories of Sindragosa and Malygos##75023 |goto Thaldraszus/0 67.09,11.77
step
talk Memory of a Master##202941
|tip Inside the building.
Choose  _"<Swing your weapon to dismiss the image.>"_
Dispel the Memory of a Master |q 75023/2 |goto Thaldraszus/0 67.04,12.02
step
talk Memory of a Betrayer##202943
|tip Inside the building.
Choose _"<Swing your weapon to dismiss the image.>"_
Dispel the Memory of a Betrayer |q 75023/1 |goto Thaldraszus/0 66.85,11.92
step
talk Memory of a Traitorous Sister##202940
|tip Inside the building.
Choose _"<Swing your weapon to dismiss the image.>"_
Dispel the Memory of a Traitorous Sister |q 75023/3 |goto Thaldraszus/0 66.92,11.68
step
talk Senegos##200447
turnin Memories of Sindragosa and Malygos##75023 |goto Thaldraszus/0 67.09,11.77
accept Archives Return##72935 |goto Thaldraszus/0 67.09,11.77
step
talk Kalecgos##190000
turnin Archives Return##72935 |goto The Azure Span/0 39.47,63.05
accept Azuregos's Support##72936 |goto The Azure Span/0 39.47,63.05
step
click Portal to the Nexus##248574 |goto The Azure Span/0 39.40,63.00
Teleport to the Nexus |goto Borean Tundra/0 22.27,23.65 < 50 |noway |c |q 72936
step
Find Azuregos within the Nexus in Northrend |q 72936/1 |goto Borean Tundra/0 22.50,23.83
step
talk Azuregos##199976
turnin Azuregos's Support##72936 |goto Borean Tundra/0 22.50,23.83
accept Unusual Disruptions##72937 |goto Borean Tundra/0 22.50,23.83
step
clicknpc Disruptive Arcana##200524
use Azuregos's Staff##205931
|tip Use it until the memory spawns.
kill Memory of a Defender##200527
Contain the Northern Disruption |q 72937/1 |goto Borean Tundra/0 26.61,24.61
step
clicknpc Disruptive Arcana##200532
use Azuregos's Staff##205931
|tip Use it until the memory spawns.
kill Memory of a Torturer##202555
Contain the Eastern Disruption |q 72937/3 |goto Borean Tundra/0 29.20,26.63
step
clicknpc Disruptive Arcana##205311
use Azuregos's Staff##205931
|tip Use it until the memory spawns.
kill Memory of a Torturer##200529
Contain the Southern Disruption |q 72937/2 |goto Borean Tundra/0 26.76,28.99
step
talk Azuregos##199976
turnin Unusual Disruptions##72937 |goto Borean Tundra/0 22.50,23.83
accept Archival Arrival##72938 |goto Borean Tundra/0 22.50,23.83
step
click Portal to the Azure Archives |goto Borean Tundra/0 22.23,23.62
Teleport to the Azure Archives |goto The Azure Span/0 39.43,62.97 < 50 |noway |c |q 72938
step
talk Kalecgos##190000
turnin Archival Arrival##72938 |goto The Azure Span/0 39.47,63.05
accept Where in the World is a Lost Blue Dragon?##72940 |goto The Azure Span/0 39.47,63.05 |only if not completedq(73090)
step
click Dragon Locator
accept Crystalsong Forest##73091 |goto The Azure Span/0 39.48,63.03 |or
|only if not completedq(73090)
step
talk Kalecgos##190000
turnin Crystalsong Forest##73091 |goto The Azure Span/0 39.47,63.05 |only if not completedq(73090)
accept Regrets in Crystal##73090 |goto The Azure Span/0 39.47,63.05
step
click Portal to Crystalsong Forest |goto The Azure Span/0 39.40,63.01
Teleport to Crystalsong Forest |goto Zul'Drak/0 12.29,66.77 < 50 |c |noway |q 73090
step
talk Lanigosa##199184
turnin Regrets in Crystal##73090 |goto Crystalsong Forest/0 91.33,57.22
accept Those We Left Behind##72670 |goto Crystalsong Forest/0 91.33,57.22
accept A Shattered Legacy##72674 |goto Crystalsong Forest/0 91.33,57.22
stickystart "Sooth_Echoes"
step
click Crystalline Remains##384960+
|tip They look like large piles of purple dust on the ground around this area.
collect 6 Crystal Focus Fragment##202044 |q 72674/1 |goto Crystalsong Forest/0 87.69,60.31
step
label "Sooth_Echoes"
talk Frightened Memory##200171
|tip Choose a dialogue option and kill them if they attack you.
Sooth #6# Echoes |q 72670/1 |goto Crystalsong Forest/0 87.69,60.31
step
talk Lanigosa##199184
turnin Those We Left Behind##72670 |goto Crystalsong Forest/0 91.33,57.22
turnin A Shattered Legacy##72674 |goto Crystalsong Forest/0 91.33,57.22
accept An Arcane Requiem##72679 |goto Crystalsong Forest/0 91.33,57.22
step
click Crystal Focus
|tip Click it and kill the mobs that spawn until the Amalgam appears.
kill Amalgam of Desperation##199423 |q 72679/2 |goto Crystalsong Forest/0 86.49,69.12
step
talk Lanigosa##199184
turnin An Arcane Requiem##72679 |goto Crystalsong Forest/0 91.33,57.22
accept The Sound of Silence##74783 |goto Crystalsong Forest/0 91.33,57.22
step
click Portal to the Azure Archives |goto Crystalsong Forest/0 91.50,56.93
Teleport to the Azure Archives |goto The Azure Span/0 39.47,63.05 < 50 |c |noway |q 74783
step
talk Kalecgos##190000
turnin The Sound of Silence##74783 |goto The Azure Span/0 39.47,63.05
accept The Search for Blue Dragons##73399 |goto The Azure Span/0 39.47,63.05 |only if not completedq(72988)
step
click Dragon Locator
accept Booty Bay##73026 |goto The Azure Span/0 39.49,63.03
|only if not completedq(72988)
step
talk Senegos##186240
turnin Booty Bay##73026 |goto The Azure Span/0 39.47,62.99 |only if not completedq(72988)
accept The Booty Bay Journal##72988 |goto The Azure Span/0 39.47,62.99
step
talk Senegos##186240
Select _"Help me neutralize my reputation in Booty Bay so we can get started."_
Speak to Senegos to Neutralize your Standing with Booty Bay |q 72988/1 |goto The Azure Span/0 39.47,62.99
step
click Portal to Booty Bay
Take the Portal from Azure Archives to Booty Bay |q 72988/3 |goto The Azure Span/0 39.51,62.92
step
talk Zeros##199185
turnin The Booty Bay Journal##72988 |goto The Cape of Stranglethorn/0 41.32,73.06
accept No Such Thing as Bad Luck##72527 |goto The Cape of Stranglethorn/0 41.32,73.06
step
talk Zeros##199185
turnin No Such Thing as Bad Luck##72527 |goto The Cape of Stranglethorn/0 42.77,74.01
step
talk Blixrez Goodstitch##2846
|tip Inside the building.
accept Information is King##72529 |goto The Cape of Stranglethorn/0 42.83,74.13
step
kill Sandy Crocolisk##199196+
|tip You can offer 1,000 gold but this is quick to farm.
collect 3 Crocolisk Skin##201986 |q 72529/2 |goto The Cape of Stranglethorn/0 35.05,63.13
step
talk Blixrez Goodstitch##2846
|tip Inside the building.
Choose _"<Hand over the Crocolisk Skins.>"_
Get information from Blixrez Goodstitch |q 72529/1 |goto The Cape of Stranglethorn/0 42.83,74.13
step
talk Blixrez Goodstitch##2846
|tip Inside the building.
turnin Information is King##72529 |goto The Cape of Stranglethorn/0 42.83,74.13
step
talk Zeros##199185
|tip Inside the building.
accept Anyway, I Started Bribing##72530 |goto The Cape of Stranglethorn/0 42.77,74.02
step
clicknpc Hired Bodyguard##199211
Bribe #6# Hired Bodyguards |q 72530/1 |goto The Cape of Stranglethorn/0 56.43,60.58
step
talk Prospector Arty##199213
Choose _"<Demand information about Zeros' crystals.>"_
Confront Prospector Arty |q 72530/2 |goto The Cape of Stranglethorn/0 56.20,60.10
step
talk Zeros##199185
turnin Anyway, I Started Bribing##72530 |goto The Cape of Stranglethorn/0 42.32,77.36
accept Money, Money, Money!##72532 |goto The Cape of Stranglethorn/0 42.32,77.36
accept Crystals Shmystals##72533 |goto The Cape of Stranglethorn/0 42.32,77.36
stickystart "Collect_1500_Gold_Coins"
step
kill Captain Grub Redcut##199351
collect 1 Worn Brass Key##202284 |q 72533/1 |goto The Cape of Stranglethorn/0 33.67,83.93
step
click Treasure Chest##385765
|tip Downstairs inside the ship.
collect 1 Gold Ingot##202281 |q 72533/2 |goto The Cape of Stranglethorn/0 33.88,84.00
step
label "Collect_1500_Gold_Coins"
Kill enemies on the ship
collect 1500 Gold Coins##204705 |q 72532/1 |goto The Cape of Stranglethorn/0 34.35,84.77
step
talk Zeros##199185
turnin Money, Money, Money!##72532 |goto The Cape of Stranglethorn/0 42.31,77.36
turnin Crystals Shmystals##72533 |goto The Cape of Stranglethorn/0 42.31,77.36
accept Settled with the Baron##72534 |goto The Cape of Stranglethorn/0 42.31,77.36
step
talk Baron Revilgaz##200473
Choose _"<Hand over the treasure.>"_
Give the Treasure to Baron Revilgaz |q 72534/1 |goto The Cape of Stranglethorn/0 42.16,77.41
step
Watch the dialogue
talk Zeros##199185
turnin Settled with the Baron##72534 |goto The Cape of Stranglethorn/0 42.31,77.36
step
talk Senegos##200478
accept Zeroing Debt##73181 |goto The Cape of Stranglethorn/0 42.06,77.58
step
click Portal to Azure Archives
Use the Portal to Return to the Azure Archives |q 73181/1 |goto The Cape of Stranglethorn/0 42.33,77.51
step
talk Senegos##186240
turnin Zeroing Debt##73181 |goto The Azure Span/0 39.47,62.98
step
talk Kalecgos##190000
accept Lost Blue Dragons##73404 |goto The Azure Span/0 39.47,63.05
|only if not completedq(72657)
step
click Dragon Locator
accept Winterspring##72656 |goto The Azure Span/0 39.49,63.03
|only if not completedq(72657)
step
talk Sindragosa##186188
turnin Winterspring##72656 |goto The Azure Span/0 39.48,63.07 |only if not completedq(72657)
accept A Protector of Magic##72657 |goto The Azure Span/0 39.48,63.07
step
click Portal to Winterspring
Use the Portal to Go to Winterspring |q 72657/1 |goto The Azure Span/0 39.51,63.09
step
talk Haleh##199370
turnin A Protector of Magic##72657 |goto Winterspring/0 48.07,59.06
accept Artifacts Abound##74354 |goto Winterspring/0 48.07,59.06
step
click Owlkin Totem
collect 1 Totemic Ruins##203459 |q 74354/1 |goto Winterspring/0 61.62,26.59
step
click Owlkin Totem
collect 2 Totemic Ruins##203459 |q 74354/1 |goto Winterspring/0 62.41,26.56
step
click Owlkin Totem
collect 3 Totemic Ruins##203459 |q 74354/1 |goto Winterspring/0 62.66,25.81
step
click Owlkin Totem
collect 4 Totemic Ruins##203459 |q 74354/1 |goto Winterspring/0 62.64,25.12
step
click Owlkin Totem
collect 5 Totemic Ruins##203459 |q 74354/1 |goto Winterspring/0 61.83,25.17
step
talk Haleh##199370
turnin Artifacts Abound##74354 |goto Winterspring/0 48.07,59.06
accept Test Subject##72659 |goto Winterspring/0 48.07,59.06
step
click Icy Book
Icy Book tested |q 72659/2 |goto Winterspring/0 48.16,58.92
step
click Bottled Spirits
Bottled Spirits tested |q 72659/1 |goto Winterspring/0 48.22,58.93
step
click Left Boot
Left Boot tested |q 72659/3 |goto Winterspring/0 48.24,58.98
step
talk Haleh##199370
turnin Test Subject##72659 |goto Winterspring/0 48.06,59.06
accept Owl of a Sudden##72660 |goto Winterspring/0 48.06,59.06
step
talk Haleh##199370
Select _"I am ready."_
Speak to Haleh to Begin the Test |q 72660/1 |goto Winterspring/0 47.34,60.53
step
click Half-Restored Totem
Test the Half-Restored Totem |q 72660/2 |goto Winterspring/0 47.49,60.75
step
talk Haleh##199370
|tip Use the abilities on your action bar to attack Haleh until she stops.
turnin Owl of a Sudden##72660 |goto Winterspring/0 47.33,60.53
step
talk Sindragosa##199404
accept A Wyrm Rest##72661 |goto Winterspring/0 47.53,60.22
step
Watch the Dialogue
talk Sindragosa##199404
Select _"What is the plan?"_
Speak to Sindragosa |q 72661/1 |goto Winterspring/0 47.53,60.22
step
clicknpc Sindragosa##199404
Go to the Frostfire Hot Springs |q 72661/2 |goto Winterspring/0 32.17,48.96
step
Move Into the Hot Springs Water |q 72661/3 |goto Winterspring/0 32.12,49.32
step
talk Sindragosa##199404
turnin A Wyrm Rest##72661 |goto Winterspring/0 32.30,49.13
accept Back with the Blues##74356 |goto Winterspring/0 32.30,49.13
step
click Portal to Azure Archives
Use the Portal to Return to the Azure Archives |q 74356/1 |goto Winterspring/0 32.33,49.02
step
talk Sindragosa##186188
turnin Back with the Blues##74356 |goto The Azure Span/0 39.48,63.07
step
talk Kalecgos##190000
accept A Pair of Blue Dragons##73405 |goto The Azure Span/0 39.47,63.05
|only if not completedq(73188)
step
click Dragon Locator
accept Theramore##72939 |goto The Azure Span/0 39.48,63.03
|only if not completedq(73188)
step
talk Kalecgos##190000
turnin Theramore##72939 |goto The Azure Span/0 39.47,63.06 |only if not completedq(73188)
accept The Sullied Banner##73188 |goto The Azure Span/0 39.47,63.06
step
click Portal to Theramore |goto The Azure Span/0 39.40,63.04
Teleport to Theramore |goto Dustwallow Marsh/0 57.18,55.51 < 50 |c |noway |q 73188
step
talk Surigosa##199736
turnin The Sullied Banner##73188 |goto Dustwallow Marsh/0 62.93,49.67
accept Aftershocks##72832 |goto Dustwallow Marsh/0 62.93,49.67
step
talk Kalecgos##199737
accept Creative Solutions##72831 |goto Dustwallow Marsh/0 62.79,49.73
stickystart "Kill_Militant_Arcanists"
step
click Prototype Mana Bomb
Teleport #5# Prototype Mana Bombs |q 72832/1 |goto Dustwallow Marsh/0 64.34,48.77
step
label "Kill_Militant_Arcanists"
kill 8 Militant Arcanist##199739 |q 72831/1 |goto Dustwallow Marsh/0 64.34,48.77
step
talk Kalecgos##199737
turnin Creative Solutions##72831 |goto Dustwallow Marsh/0 67.04,55.03
step
talk Surigosa##199736
turnin Aftershocks##72832 |goto Dustwallow Marsh/0 67.03,54.59
accept Breaking the Cycle##72833 |goto Dustwallow Marsh/0 67.03,54.59
step
kill Turi Flickerflame##199740 |q 72833/1 |goto Dustwallow Marsh/0 67.79,51.12
step
talk Surigosa##199736
turnin Breaking the Cycle##72833 |goto Dustwallow Marsh/0 67.04,54.55
accept A Moment of Reflection##74335 |goto Dustwallow Marsh/0 67.04,54.55
step
click Portal to the Azure Span
|tip Inside the building.
Take the Portal to Kalec in the Azure Archives |q 74335/1 |goto Dustwallow Marsh/0 66.84,53.17
step
talk Kalecgos##190000
turnin A Moment of Reflection##74335 |goto The Azure Span/0 39.47,63.05
accept The Last Missing Blue Dragon##73406 |goto The Azure Span/0 39.47,63.05 |only if not completedq(72650)
step
click Dragon Locator
accept Jade Forest##73227 |goto The Azure Span/0 39.48,63.03
|only if not completedq(72650)
step
talk Kalecgos##190000
turnin Jade Forest##73227 |goto The Azure Span/0 39.47,63.05 |only if not completedq(72650)
accept Warm Winds and Water##72650 |goto The Azure Span/0 39.47,63.05
step
click Portal to Jade Forest
|tip Inside the building.
Take the Portal from the Azure Archives to The Jade Forest |q 72650/1 |goto The Azure Span/0 39.42,63.02
step
talk Kirygosa##199361
turnin Warm Winds and Water##72650 |goto The Jade Forest/0 46.51,44.51
accept Carp Care##72651 |goto The Jade Forest/0 46.51,44.51
accept Local Deliveries##72653 |goto The Jade Forest/0 46.51,44.51
stickystart "Feed_Carps_and_Clean_Ponds"
step
talk Yol##56778
Select _"These flowers are from Kirygosa."_
Deliver to Yol the Noodlemonger |q 72653/4 |goto The Jade Forest/0 46.38,45.66
step
talk Ni Gentlepaw##56777
Select _"These flowers are from Kirygosa."_
Deliver to Ni Gentlepaw |q 72653/2 |goto The Jade Forest/0 46.55,46.02
step
talk Kai Wanderbrew##59173
Select _"These flowers are from Kirygosa."_
Deliver to Kai Wanderbrew |q 72653/1 |goto The Jade Forest/0 46.97,46.01
step
talk Old Man Misteye##59383
Select _"These flowers are from Kirygosa."_
Deliver to Old Man Misteye |q 72653/3 |goto The Jade Forest/0 48.32,46.06
step
label "Feed_Carps_and_Clean_Ponds"
clicknpc Veridian Carp##59311+
|tip Use the Fish Food on them.
use the Fish Food##203182
click Pond Scum+
|tip They look like trash floating on the top of the water.
Feed Carps and Clean Ponds |q 72651/1 |goto The Jade Forest/0 46.94,45.23
You can find more around [48.04,48.00]
step
talk Kirygosa##199361
turnin Carp Care##72651 |goto The Jade Forest/0 46.51,44.51
turnin Local Deliveries##72653 |goto The Jade Forest/0 46.51,44.51
accept Up, Up, and Home##72654 |goto The Jade Forest/0 46.51,44.51
step
Watch the dialogue
talk Kirygosa##199361
Select _"I'm ready to visit your home."_
Begin Flying with Kirygosa |goto The Jade Forest/0 46.51,44.51 > 20 |c |q 72654
step
Watch the dialogue
Fly with Kirygosa |q 72654/1 |goto The Jade Forest/0 49.24,43.20
|tip It will take a bit to complete after landing.
step
talk Kirygosa##199361
|tip Inside the building.
turnin Up, Up, and Home##72654 |goto The Jade Forest/0 49.17,42.47
step
talk Kalecgos##201019
|tip Inside the building.
accept Self Care##72652 |goto The Jade Forest/0 49.20,42.50
step
click Dust Clump
|tip Inside the building.
Clean Kirygosa's Home |q 72652/1 |goto The Jade Forest/0 49.24,42.51 |count 1
step
click Fallen Pillow
|tip Inside the building.
Clean Kirygosa's Home |q 72652/1 |goto The Jade Forest/0 49.23,42.57 |count 2
step
click Food Scraps
|tip Inside the building.
Clean Kirygosa's Home |q 72652/1 |goto The Jade Forest/0 49.14,42.54 |count 3
step
click Crooked Painting
|tip Inside the building.
Clean Kirygosa's Home |q 72652/1 |goto The Jade Forest/0 49.09,42.53 |count 4
step
click Dead Flower Bunch
|tip Inside the building.
Clean Kirygosa's Home |q 72652/1 |goto The Jade Forest/0 49.15,42.42 |count 5
step
talk Kalecgos##201019
|tip Inside the building.
turnin Self Care##72652 |goto The Jade Forest/0 49.21,42.50
accept A Drink with Kalecgos##72655 |goto The Jade Forest/0 49.21,42.50
step
click Mug of Roasted Barley Tea
|tip Inside the building.
Drink with Kalecgos in The Drunken Hozen |q 72655/1 |goto The Jade Forest/0 45.90,43.65
step
talk Kalecgos##201019
|tip Inside the building.
turnin A Drink with Kalecgos##72655 |goto The Jade Forest/0 45.87,43.61
accept Blue is My Favorite Color##74291 |goto The Jade Forest/0 45.87,43.61
step
talk Kirygosa##199361
|tip Inside the building.
Select _"Will you return to the Dragon Isles with us?"_
Speak to Kirygosa |q 74291/1 |goto The Jade Forest/0 45.90,43.57
step
Watch the dialogue
talk Kalecgos##201019
|tip Inside the building.
Select _"I'm ready to return to the Azure Archives."_
Speak to Kalecgos |q 74291/2 |goto The Jade Forest/0 45.87,43.60
step
click Portal to the Azure Archives
|tip Inside the building.
Use the Portal to Return to the Azure Archives |q 74291/3 |goto The Jade Forest/0 45.81,43.47
step
talk Kalecgos##190000
turnin Blue is My Favorite Color##74291 |goto The Azure Span/0 39.47,63.05
accept Reunited Again##75244 |goto The Azure Span/0 39.47,63.05
step
talk Kalecgos##190000
Select _"I'm ready to hear your speech to the blue dragons."_
Watch the dialogue
Listen to Kalecgos's speech |q 75244/1 |goto The Azure Span/0 39.47,63.05
step
talk Kalecgos##190000
turnin Reunited Again##75244 |goto The Azure Span/0 39.47,63.05
accept Veiled Trouble##72942 |goto The Azure Span/0 39.47,63.05
step
click Portal to the Veiled Ossuary |goto The Azure Span/0 39.40,63.01
Teleport to the Veiled Ossuary |goto Thaldraszus/0 65.79,12.47 < 50 |c |noway |q 72942
step
talk Azuregos##200019
turnin Veiled Trouble##72942 |goto Thaldraszus/0 66.20,12.26
accept Veiled Ossuary Chaos##72946 |goto Thaldraszus/0 66.20,12.26
accept Memories of Old##72947 |goto Thaldraszus/0 66.20,12.26
stickystart "Weaken_the_Arcane_Invaders"
step
Enter the building |goto Thaldraszus/0 63.46,16.09 < 10 |walk
kill Memory of a Traitorous Sister##200826 |q 72947/1 |goto Thaldraszus/0 64.04,16.30
|tip Inside the building.
step
kill Memory of a Master##200827 |q 72947/2 |goto Thaldraszus/0 59.95,14.95
step
Enter the building |goto Thaldraszus/0 62.04,13.45 < 10 |walk
kill Memory of a Betrayer##200828 |q 72947/3 |goto Thaldraszus/0 61.68,12.72
|tip Inside the building.
step
label "Weaken_the_Arcane_Invaders"
clicknpc Bound Spirit##200866+
|tip They look like stunned dragonkin with blue flames above them.
Kill enemies around this area
Weaken the Arcane Invaders |q 72946/1 |goto Thaldraszus/0 62.70,15.05
step
talk Azuregos##200019
turnin Veiled Ossuary Chaos##72946 |goto Thaldraszus/0 66.20,12.26
turnin Memories of Old##72947 |goto Thaldraszus/0 66.20,12.26
accept What Still Remains##72948 |goto Thaldraszus/0 66.20,12.26
step
talk Azuregos##200019
Select _"I'm ready to go beyond the arcane barrier."_
Watch the dialogue
|tip Follow him into the building.
Speak with Azuregos |q 72948/1 |goto Thaldraszus/0 66.20,12.26
step
click Sindragosa's Lingering Essence##386116
|tip Inside the building.
collect 1 Sindragosa's Lingering Essence##203183 |q 72948/3 |goto Thaldraszus/0 67.10,11.75
step
click Malygos's Lingering Essence##386117
|tip Inside the building.
collect 1 Malygos's Lingering Essence##203184 |q 72948/2 |goto Thaldraszus/0 67.11,11.83
step
talk Azuregos##201061
|tip Inside the building.
turnin What Still Remains##72948 |goto Thaldraszus/0 67.07,11.83
accept Swiftly to the Archives##72949 |goto Thaldraszus/0 67.07,11.83
step
click Portal to the Azure Archives |goto Thaldraszus/0 65.64,12.57
Teleport to the Azure Archives |goto The Azure Span/0 39.43,62.97 < 50 |c |noway |q 72949
step
talk Kalecgos##190000
turnin Swiftly to the Archives##72949 |goto The Azure Span/0 39.47,63.06
step
talk Sindragosa##186188
accept The Last Conflict##72950 |goto The Azure Span/0 39.48,63.07
step
talk Sindragosa##186188
Select _"I'm ready to enter the Azure Vaults to free Malygos and Sindragosa's essences."_
Enter the Azure Vault |goto The Azure Span/0 39.48,63.07 > 50 |c |q 72950
step
talk Kalecgos##201087
Select _"I'm ready."_
|tip Coordinates do not function in this room.
Watch the dialogue
Speak to Kalecgos |scenariogoal 1/57829 |q 72950
step
extraaction Azure Assault##406529
kill Remnants of Sindragosa##201089 |scenariogoal 2/57830 |q 72950
|tip During "Tomb of Tears," run behind an ice block.
|tip Use the "Azure Assault" button on the screen to interrupt "Bound to Her Will."
|tip Run away from spots targeted on the ground.
|tip Run away from "Devastation."
|tip Don't stand in front of her during "Arcane Breath"
step
Watch the dialogue
talk Kalecgos##201087
Select _"I'm ready."_
Speak to Kalecgos |scenarioend |q 72950
step
Complete the Scenario "The Last Conflict" |q 72950/1 |goto The Azure Span/0 0.00,0.00
step
talk Kalecgos##201128
turnin The Last Conflict##72950 |goto The Azure Span/0 39.33,63.88
step
talk Senegos##201125
accept A Peaceful Farewell##72951 |goto The Azure Span/0 39.31,63.59
step
talk Senegos##201125
Select _"Goodbye, Senegos."_
Speak with Senegos One Last Time |q 72951/1 |goto The Azure Span/0 39.31,63.59
step
talk Kalecgos##190000
turnin A Peaceful Farewell##72951 |goto The Azure Span/0 39.47,63.06
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Tyr's Fall",{
author="support@zygorguides.com",
description="This guide will help you complete the continuing story of the \"A Sliver of Silver\" Valdrakken Accord questline.",
condition_suggested=function() return level == 70 and not completedq(72444) end,
startlevel=70,
patch='100100',
},[[
step
Complete "The Silver Purpose" Quest |complete completedq(67084)
|tip Reach renown level 13 with the Valdrakken Accord and complete The Silver Purpose questline.
|tip That will unlock "A Sliver of Silver" questline.
step
talk Nozdormu##198941
|tip Inside the building.
accept Silver Mettle##72440 |goto Thaldraszus/0 60.39,58.83
step
Watch the dialogue
Confirm the plan to restore Tyr |q 72440/1 |goto Thaldraszus/0 60.42,58.74
|tip Inside the building.
step
click Portal to Tomb of Tyr
|tip Inside the building.
Use the Portal to the Tomb of Tyr |q 72440/2 |goto Thaldraszus/0 60.42,58.74
step
Approach Travard |q 72440/3 |goto Tirisfal Glades/25 39.12,41.22
step
Watch the dialogue
talk Watcher Koranos##200077
turnin Silver Mettle##72440 |goto Tirisfal Glades/25 38.26,40.42
step
talk Travard##198947
accept Breaching the Tomb##72441 |goto Tirisfal Glades/25 39.12,41.26
step
click Broken Titan Orb
Inspect the Broken Orb |q 72441/1 |goto Tirisfal Glades/25 39.10,42.56
step
click Titan Orb
Activate the Titan Orb |q 72441/2 |goto Tirisfal Glades/25 35.41,42.71
step
Watch the dialogue
talk Travard##200084
turnin Breaching the Tomb##72441 |goto Tirisfal Glades/25 37.51,55.57
step
talk Watcher Koranos##199114
accept The Remains of Tyr##72442 |goto Tirisfal Glades/25 37.89,54.99
step
Kill enemies around this area
Protect Koranos |q 72442/1 |goto Tirisfal Glades/25 37.39,54.93
step
talk Watcher Koranos##199114
turnin The Remains of Tyr##72442 |goto Tirisfal Glades/25 37.84,54.86
accept Keeper's Rest##72526 |goto Tirisfal Glades/25 37.84,54.86
step
Escape to the Darkwalk |q 72526/1 |goto Tirisfal Glades/25 41.04,82.23
step
Watch the dialogue
talk Watcher Koranos##200078
turnin Keeper's Rest##72526 |goto Tirisfal Glades/25 42.06,85.71
accept Tyr's Fall##72443 |goto Tirisfal Glades/25 42.06,85.71
step
click Titan Console
Select  _"<Place the Silver Scale in the console.>"_
Place the Silver Scale in the Titan Console |q 72443/1 |goto Tirisfal Glades/25 45.85,83.99
step
click Titan Console
Choose  _"<Witness the final memories of Tyr.>  (Start Scenario)"_
Enter the Scenario |scenariostart |goto Tirisfal Glades/25 45.85,84.02 |q 72443
stickystart "Slay_Flesh_Spawns"
step
clicknpc Iron Vrykul##198962+
|tip Use the "Light of Tyr" ability on your vehicle bar next to Iron Vrykul.
Rally #4# Iron Vrykul |scenariogoal 1/58790 |goto The Eastern Glades/0 62.86,78.54 |q 72443
step
label "Slay_Flesh_Spawns"
kill 6 Flesh Spawn##199049 |scenariogoal 1/57819 |goto The Eastern Glades/0 64.72,82.19 |q 72443
|tip Use the abilities on your vehicle bar.
step
Kill enemies around this area
clicknpc Iron Vrykul##198962+
|tip Use the "Light of Tyr" ability on your vehicle bar next to Iron Vrykul.
Defeat the Old God Forces |scenariogoal 2/0 |goto The Eastern Glades/0 56.05,59.69 |q 72443
step
kill Kith'ix##198952 |scenariogoal 3/57821 |goto The Eastern Glades/0 50.16,59.37 |q 72443
|tip Use the abilities on your vehicle bar.
step
Kill enemies around this area
clicknpc Iron Vrykul##198962+
|tip Use the "Light of Tyr" ability on your vehicle bar next to Iron Vrykul.
Defeat the Old God Forces |scenariogoal 4/0 |goto The Eastern Glades/0 41.06,43.75 |q 72443
step
Watch the dialogue
Approach Zakajz |scenariogoal 5/57823 |goto The Eastern Glades/0 35.66,30.72 |q 72443
stickystart "Kill_Neltharion"
stickystart "Kill_Nozdormu"
stickystart "Kill_Ysera"
step
kill Malygos##198974 |scenariogoal 6/58127 |goto The Eastern Glades/0 36.16,29.92 |q 72443
|tip Move out of areas targeted on the ground.
step
label "Kill_Neltharion"
kill Neltharion##198968 |scenariogoal 6/57824 |goto The Eastern Glades/0 36.17,32.45 |q 72443
|tip Move out of the patches of flame left on the ground.
step
label "Kill_Nozdormu"
kill Nozdormu##198971 |scenariogoal 6/58129 |goto The Eastern Glades/0 35.48,31.09 |q 72443
|tip Avoid standing in front of him during his breath attack.
step
label "Kill_Ysera"
kill Ysera##198970 |scenariogoal 6/58128 |goto The Eastern Glades/0 36.23,28.71 |q 72443
|tip Move her out of the green bubble that heals her.
|tip Don't stand in front of her during "Nightmare Breath."
step
kill Zakajz##198953 |scenariogoal 7/57825 |goto The Eastern Glades/0 35.47,29.71 |q 72443
|tip Don't stand in front of him during "Cleansing Flame."
step
Witness Tyr's Fall |q 72443/2
step
talk Watcher Koranos##200078+
|tip Inside the cave.
turnin Tyr's Fall##72443 |goto Tirisfal Glades/25 42.06,85.73
accept A Sliver of Silver##72444 |goto Tirisfal Glades/25 42.06,85.73
step
click Titan Transporter
Use the Titan Transporter to Return to Tyrhold |q 72444/1 |goto Tirisfal Glades/25 43.87,88.72
step
Return to the Aspects |q 72444/2 |goto Thaldraszus/0 60.39,58.82
step
click Forge Console
Choose _"<Activate the Silver Scale.>"_
Activate the Silver Scale |q 72444/3 |goto Thaldraszus/0 60.54,58.74
step
Watch the dialogue
talk Nozdormu##198941
turnin A Sliver of Silver##72444 |goto Thaldraszus/0 60.39,58.82
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Rebel Resurgence",{
author="support@zygorguides.com",
description="This guide will help you complete the \"Rebel Resurgence\" questline.",
condition_suggested=function() return level == 70 and not completedq(75230) end,
startlevel=70,
patch='100100',
},[[
step
Complete "Report on the Rebels" Quest |complete completedq(70879) |or
|tip Complete the Misty Vale questline in the "Thaldraszus (Full Zone)" leveling guide.
|tip That will unlock "Cause Without a Rebel" questline.
Click Here to Load the "Thaldraszus (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Thaldraszus (Full Zone)" |or
step
talk Captain Drine##189842
|tip At the top of the tower.
accept Cause Without a Rebel##72411 |goto Valdrakken/0 55.96,39.96
step
Join Maldra and Alexstrasza |q 72411/2 |goto Valdrakken/0 55.51,33.61
|tip Downstairs inside the building.
step
Watch the dialogue
|tip Downstairs inside the building.
Hear the Discussion |q 72411/3 |goto Valdrakken/0 55.14,34.13
step
talk Investigator Erima##200754
|tip Downstairs inside the building.
turnin Cause Without a Rebel##72411 |goto Valdrakken/0 55.77,33.65
accept Explosive Interruption##72412 |goto Valdrakken/0 55.77,33.65
step
talk Investigator Erima##199397+
turnin Explosive Interruption##72412 |goto Thaldraszus/0 46.42,50.86
accept Irreconcilable Differences##72413 |goto Thaldraszus/0 46.42,50.86
step
talk Maldra Flametongue##199396
accept Know Prisoners!##72414 |goto Thaldraszus/0 46.36,50.71
accept Rebel Rousing Writings##72415 |goto Thaldraszus/0 46.36,50.71
stickystart "Collect_Propaganda"
stickystart "Capture_Rebels
step
kill 1 Agitator Zoralek##199305 |q 72413/1 |goto Thaldraszus/0 43.95,52.66
step
collect 1 Rebel Detonator##204407 |q 72413/2 |goto Thaldraszus/0 43.95,52.66
|tip Loot it from Agitator Zoralek.
step
label "Collect_Propaganda"
click Rebel Writing+
|tip They look like small notes posted on the walls of the cave.
|tip They appear on your minimap as yellow dots.
Collect #5# Propaganda |q 72415/1 |goto Thaldraszus/0 45.02,52.01
step
label "Capture_Rebels
Click Rebel enemies around this area
use Maldra's Ring of Elemental Binding##202855
|tip Use it on rebels for a chance to capture them.
Capture #8# Rebels |q 72414/1 |goto Thaldraszus/0 45.02,52.01
step
talk Investigator Erima##199397
turnin Irreconcilable Differences##72413 |goto Thaldraszus/0 46.42,50.86
step
talk Maldra Flametongue##199396
turnin Know Prisoners!##72414 |goto Thaldraszus/0 46.36,50.72
turnin Rebel Rousing Writings##72415 |goto Thaldraszus/0 46.36,50.72
accept Temporary Accommodations##72416 |goto Thaldraszus/0 46.36,50.72
step
talk Alexstrasza the Life-Binder##199382
turnin Temporary Accommodations##72416 |goto Thaldraszus/0 38.89,52.57
accept Persistent Dissidents##72417 |goto Thaldraszus/0 38.89,52.57
step
talk Steelcliff Dissident##201112
Select _"Why did you rebel against the dragons?"_
Interview the Rebel Dissident |q 72417/1 |goto Thaldraszus/0 38.63,52.58 |count 1
step
talk Steelcliff Dissident##201113
Select _"Why did you rebel against the dragons?"_
Interview the Rebel Dissident |q 72417/1 |goto Thaldraszus/0 38.39,53.70 |count 2
step
talk Steelcliff Dissident##201111
Select _"Why did you rebel against the dragons?"_
Interview the Rebel Dissident |q 72417/1 |goto Thaldraszus/0 38.27,51.38 |count 3
step
talk Steelcliff Dissident##201130
Select _"Why did you rebel against the dragons?"_
Interview the Rebel Dissident |q 72417/1 |goto Thaldraszus/0 37.70,51.46 |count 4
step
talk Steelcliff Dissident##201131
Select _"Why did you rebel against the dragons?"_
Interview the Rebel Dissident |q 72417/1 |goto Thaldraszus/0 37.80,50.47 |count 5
step
Return to Captain Drine |q 72417/2 |goto Thaldraszus/0 38.80,52.60
step
talk Alexstrasza the Life-Binder##201211
turnin Persistent Dissidents##72417 |goto Thaldraszus/0 38.80,52.60
accept Solicited Opinions##72418 |goto Thaldraszus/0 38.80,52.60
step
talk Alexstrasza the Life-Binder##201211
Choose the dialogue options you prefer
Share your Perspective with Alexstrasza |q 72418/1 |goto Thaldraszus/0 38.80,52.60
step
talk Alexstrasza the Life-Binder##201211
turnin Solicited Opinions##72418 |goto Thaldraszus/0 38.80,52.60
step
talk Captain Drine##200788
accept Cleaning up the Cliffraff##72419 |goto Thaldraszus/0 38.85,52.67
step
talk Investigator Erima##199301
turnin Cleaning up the Cliffraff##72419 |goto Thaldraszus/0 46.41,55.91
accept Wreckonciliation##72420 |goto Thaldraszus/0 46.41,55.91
step
talk Maldra Flametongue##199391
accept The Quill to Power##72421 |goto Thaldraszus/0 46.50,55.80
accept Stop the Presses##72422 |goto Thaldraszus/0 46.50,55.80
stickystart "Inform_Rebels_of_Coming_Changes"
stickystart "Apprehend_Quills"
step
kill Instigator Belaphon##199304
|tip Inside the cave.
|tip Reduce him below 50% health.
use Maldra's Ring of Elemental Binding##203390
|tip Use it on Belaphon when he is below 50% health.
Confront Belaphon |q 72422/1 |goto Thaldraszus/0 44.26,55.53
step
label "Inform_Rebels_of_Coming_Changes"
use the Notes on Dragonkin Equality##203383
|tip Use them on various rebel enemies all over the area.
Inform #12# Rebels of Coming Changes |q 72420/1 |goto Thaldraszus/0 45.36,56.60
step
label "Apprehend_Quills"
clicknpc Enchanted Quill##199624+
|tip They look like flying feathers around this area.
Apprehend #6# Quills |q 72421/1 |goto Thaldraszus/0 45.36,56.60
step
talk Investigator Erima##199301
turnin Wreckonciliation##72420 |goto Thaldraszus/0 46.41,55.92
step
talk Maldra Flametongue##199391
turnin The Quill to Power##72421 |goto Thaldraszus/0 46.50,55.81
step
Report Back to Alexstrasza |q 72422/2 |goto Valdrakken/0 76.77,33.50
|tip On top of the tower.
step
talk Alexstrasza the Life-Binder##200839
|tip On top of the tower.
turnin Stop the Presses##72422 |goto Valdrakken/0 76.77,33.50
accept Reconcilable Dissidents##75230 |goto Valdrakken/0 76.77,33.50
step
talk Alexstrasza the Life-Binder##200839
|tip On top of the tower.
Select _"What happens now?"_
Speak to Alexstrasza |q 75230/1 |goto Valdrakken/0 76.77,33.50
step
talk Alexstrasza the Life-Binder##200839
|tip On top of the tower.
turnin Reconcilable Dissidents##75230 |goto Valdrakken/0 76.77,33.50
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Some Wicked Things (Warlock)",{
author="support@zygorguides.com",
description="This guide will help you complete the 10.1.5 Warlock questline.",
condition_suggested=function() return level == 70 and not completedq(75544) end,
condition_valid=function() return raceclass('Warlock') and level >= 70 end,
condition_valid_msg="You must be a Warlock and at least level 70 to complete this guide!",
startlevel=70,
patch='100105',
},[[
step
accept A Dark Summons##76427 |only if Horde
accept A Dark Summons##76410 |only if Alliance
|tip You should accept this quest automatically.
step
talk Assistant Phineas##207051
turnin A Dark Summons##76427 |goto Orgrimmar/2 40.96,52.02
accept Beginning Impositions##76430 |goto Orgrimmar/2 40.96,52.02
|only if Horde
step
click Stagecoach
Take Madam Shadow's Stagecoach to the Darkmoon Faire |q 76430/1 |goto Orgrimmar/2 41.27,53.58
|only if Horde
step
talk Assistant Phineas##204198
turnin A Dark Summons##76410
accept Beginning Impositions##75538 |goto Stormwind City/0 43.70,79.08
|only if Alliance
step
click Stagecoach
Take Madam Shadow's Stagecoach to the Darkmoon Faire |q 75538/1 |goto Stormwind City/0 43.94,78.94
|only if Alliance
step
Watch the dialogue
Arrive at Darkmoon Island |outvehicle |q 76430 |only if Horde
Arrive at Darkmoon Island |outvehicle |q 75538 |only if Alliance
step
talk Madam Shadow##203968
turnin Beginning Impositions##76430 |goto Darkmoon Island/0 47.36,78.93 |only if Horde
turnin Beginning Impositions##75538 |goto Darkmoon Island/0 47.36,78.93 |only if Alliance
accept Some Wicked Things This Way Come##75539 |goto Darkmoon Island/0 47.36,78.93
step
talk Initiate Springtotem##204008
Select _"What brings you to the Faire?"_
Speak to the New Warlock |q 75539/1 |goto Darkmoon Island/0 48.55,81.61 |count 1
step
talk Initiate Gand##203993
Select _"We are about to start."_
Speak to the New Warlock |q 75539/1 |goto Darkmoon Island/0 48.57,81.85 |count 2
step
talk Initiate Oman##204153
Select _"We are about to start."_
Speak to the New Warlock |q 75539/1 |goto Darkmoon Island/0 50.89,81.10 |count 3
step
talk Initiate Jim##205195
Select _"We are about to start."_
Speak to the New Warlock |q 75539/1 |goto Darkmoon Island/0 53.01,80.64 |count 4
step
talk Initiate Undertide##204155
Select _"We are about to start."_
Speak to the New Warlock |q 75539/1 |goto Darkmoon Island/0 52.45,78.88 |count 5
step
talk Initiate Darkleaf##204154
Select _"We are about to start."_
Speak to the New Warlock |q 75539/1 |goto Darkmoon Island/0 52.05,78.64 |count 6
step
talk Initiate Telubi##203996
Select _"We are about to start."_
Speak to the New Warlock |q 75539/1 |goto Darkmoon Island/0 50.75,71.94 |count 7
step
talk Initiate Ko##204151
Select _"We are about to start."_
Speak to the New Warlock |q 75539/1 |goto Darkmoon Island/0 48.46,72.74 |count 8
step
talk Initiate Roland##205194
Select _"We are about to start."_
Speak to the New Warlock |q 75539/1 |goto Darkmoon Island/0 48.39,73.11 |count 9
step
talk Madam Shadow##203968
turnin Some Wicked Things This Way Come##75539 |goto Darkmoon Island/0 47.36,78.93
accept Hermetic Insurance##75540 |goto Darkmoon Island/0 47.36,78.93
step
clicknpc Initiate Springtotem##205273
extraaction Madam Shadow's Soulstone##410940
|tip Use it on Initiate Springtotem.
Initiate Springtotem's Soulstone |q 75540/3 |goto Darkmoon Island/0 48.57,79.91
step
clicknpc Initiate Ko##205274
extraaction Madam Shadow's Soulstone##410940
|tip Use it on Initiate Ko.
Initiate Ko's Soulstone |q 75540/1 |goto Darkmoon Island/0 48.48,79.00
step
clicknpc Initiate Telubi##205272
extraaction Madam Shadow's Soulstone##410940
|tip Use it on Initiate Telubi.
Initiate Telubi's Soulstone |q 75540/2 |goto Darkmoon Island/0 48.53,78.41
step
talk Madam Shadow##203968
turnin Hermetic Insurance##75540 |goto Darkmoon Island/0 47.36,78.93
accept Those Who Hesitate##75541 |goto Darkmoon Island/0 47.36,78.93
step
talk Initiate Oman##205276
Select _"Madam Shadow requests your presence."_
Talk to Initiate Oman |q 75541/1 |goto Darkmoon Island/0 46.17,89.15
step
clicknpc Initiate Oman##205276
extraaction Soulstone##20707
|tip Use it on Initiate Oman.
Cast Soulstone on Initiate Oman |q 75541/2 |goto Darkmoon Island/0 46.17,89.15
step
talk Initiate Oman##205276
turnin Those Who Hesitate##75541 |goto Darkmoon Island/0 46.17,89.15
accept A Wolf Among Sheep##76155 |goto Darkmoon Island/0 46.17,89.15
step
extraaction Madam Shadow's Soulstone##412234
|tip Use it on a critter on the docks.
Create a Dummy Soulstone for Madam Shadow |q 76155/1 |goto Darkmoon Island/0 45.76,88.86
step
talk Madam Shadow##203968
turnin A Wolf Among Sheep##76155 |goto Darkmoon Island/0 47.36,78.93
accept Curses & Cultists##75542 |goto Darkmoon Island/0 47.36,78.93
step
talk Initiate Ko##205399
Select _"Cast "Curse of Tongues"."_
Teach Curse of Tongues |q 75542/3 |goto Darkmoon Island/0 49.22,58.52
step
talk Initiate Telubi##205367
Select _"Shall we try "Curse of Weakness"?"_
Teach Curse of Weakness |q 75542/1 |goto Darkmoon Island/0 50.04,58.47
step
talk Initiate Springtotem##205400
Select _"Look up "Curse of Exhaustion"."_
|tip Accept the summon after this.
Teach Curse of Exhaustion |q 75542/2 |goto Darkmoon Island/0 50.26,57.23
step
talk Initiate Oman##205433
turnin Curses & Cultists##75542 |goto Darkmoon Island/0 58.93,63.17
accept Fel Suspicions##75639 |goto Darkmoon Island/0 58.93,63.17
step
extraaction Eye of Kilrogg##411531
Cast Eye of Kilrogg |q 75639/1 |goto Darkmoon Island/0 59.37,63.53
step
Spy on Madam Shadow and Phineas |q 75639/2 |goto Darkmoon Island/0 62.31,66.77
step
Cancel the "Eye of Kilrogg" Buff |nobuff Eye of Kilrogg##411531
|tip Right-click the buff on your buff bar.
step
click Demonic Gateway
turnin Fel Suspicions##75639 |goto Darkmoon Island/0 59.78,62.22
accept Last Rites By Accident##75543 |goto Darkmoon Island/0 59.78,62.22
step
click Demonic Gateway
Choose _"Step through the portal."_
Go Through the Demonic Gateway |q 75543/1 |goto Darkmoon Island/0 59.78,62.22
step
Find Initiate Oman |q 75543/2 |goto Burning Steppes/0 9.10,30.04
step
kill Vengeful Subjugator##204241
|tip Reduce its health and use Subjugate Demon on it when it appears.
extraaction Subjugate Demon##1098
Subjugate the Vengeful Subjugator |q 75543/3 |goto Burning Steppes/0 9.61,29.81
step
click Initiate Oman
Investigate Oman's Corpse |q 75543/4 |goto Burning Steppes/0 8.79,30.15
step
talk Initiate Oman##205575
turnin Last Rites By Accident##75543 |goto Burning Steppes/0 8.53,36.04
accept When Revenge Burns Green##75544 |goto Burning Steppes/0 8.53,36.04
step
Find Madam Shadow in the Blasted Lands |q 75544/1 |goto Blasted Lands/0 32.47,45.37
step
Watch the dialogue
kill Lord Banehollow##204243 |q 75544/2 |goto Blasted Lands/0 32.56,45.29
|tip Keep moving out of areas targeted on the ground.
|tip Move away from purple orbs.
|tip AoE adds to keep the numbers manageable.
|tip This fight can be tough, so you may want to use buffs.
step
talk Initiate Oman##205818
turnin When Revenge Burns Green##75544 |goto Blasted Lands/0 33.71,45.79
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Augmentation Questline (Evoker)",{
author="support@zygorguides.com",
description="This guide will help you complete the brief Augmentation specialization questline.",
condition_suggested=function() return raceclass('Evoker') and level == 70 and not completedq(72515) end,
condition_valid=function() return raceclass('Evoker') and level >= 70 end,
condition_valid_msg="You must be an Evoker and at least level 70 to complete this guide!",
startlevel=70,
patch='100105',
},[[
step
Switch to Augmentation Specialization |complete Augmentation Evoker |goto Valdrakken/0 51.45,57.55
|tip You must be standing in Valdrakken and switch to Augmenation to get the quest to trigger.
step
accept Our Destiny##72513 |goto Valdrakken/0 51.45,57.55
|tip It may take a few minutes for this quest to accept automatically.
|tip You must be standing in Valdrakken while specialized Augmenation to get the quest to trigger.
step
talk Scalecommander Emberthal##199135
turnin Our Destiny##72513 |goto The Forbidden Reach/5 58.54,68.49
accept The High Creche##72514 |goto The Forbidden Reach/5 58.54,68.49
step
click Essence Collector
|tip Inside the building.
Disrupt the Essence Collector |q 72514/1 |goto The Forbidden Reach/5 58.99,70.95 |count 1
step
click Essence Collector
|tip Inside the building.
Disrupt the Essence Collector |q 72514/1 |goto The Forbidden Reach/5 59.05,71.51 |count 2
step
click Essence Collector
|tip Inside the building.
Disrupt the Essence Collector |q 72514/1 |goto The Forbidden Reach/5 58.71,71.69 |count 3
step
click Essence Collector
|tip Inside the building.
Disrupt the Essence Collector |q 72514/1 |goto The Forbidden Reach/5 58.63,71.14 |count 4
step
talk Scalecommander Emberthal##199141
|tip Inside the building.
turnin The High Creche##72514 |goto The Forbidden Reach/5 58.65,70.39
accept Augmenting a Dragon##72515 |goto The Forbidden Reach/5 58.65,70.39
step
talk Ebyssian##199144
|tip Inside the building.
Select _"Ready. Release her."_
Watch the dialogue
Speak with Ebyssian to Initiate the Ritual |q 72515/1 |goto The Forbidden Reach/5 58.77,70.65
|tip You might need to skip this step if it is bugged and starts without completing.
step
kill Adamanthia##198921 |q 72515/2 |goto The Forbidden Reach/5 58.83,71.23
|tip Inside the building.
|tip Follow the instructions that appear on the screen to buff your group and defeat Adamanthia.
|tip You must use a mix of Augmenation abilities to reduce Adamanthia to around 60% health.
|tip Cast "Blistering Scales" and "Ebon Might" when indicated.
|tip This quest can be completed in another spec with enough damage and healing.
step
talk Scalecommander Emberthal##199141
|tip Inside the building.
turnin Augmenting a Dragon##72515 |goto The Forbidden Reach/5 58.65,70.92
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\The Coalition of Flames",{
author="support@zygorguides.com",
description="This guide will help you complete the Coalition of Flames quest chapter.",
condition_suggested=function() return level == 70 and not completedq(75923) end,
startlevel=70,
patch='100107',
},[[
step
talk Shandris Feathermoon##205067
accept Fire Season##75918 |goto Valdrakken/0 50.27,52.83
_Or_ |only if completedq(77523)
use Shandris's Scouting Report##208181 |only if completedq(77523)
|tip This item is available if you have completed this story on another character. |only if completedq(77523)
|tip Using it will allow you to skip this guide and proceed directly to "The Emerald Dream Campaign" guide. |only if completedq(77523)
Skip "The Coalition of Flames" Chapter |complete completedq(75923) |or |only if completedq(77523)
step
talk Shandris Feathermoon##205068
turnin Fire Season##75918 |goto Ohn'ahran Plains/0 18.62,79.78
accept Eyes of Fire##75920 |goto Ohn'ahran Plains/0 18.62,79.78
step
_Next to you:_
talk Shandris Feathermoon
accept Dousing the Wards##75919 |goto Ohn'ahran Plains/0 18.62,79.78
stickystart "Slay_Fyrakk's_Forces"
step
click Warding Firestone
Destroy the Warding Firestone |q 75919/1 |goto Ohn'ahran Plains/0 19.39,82.16 |count 1
step
click Warding Firestone
Destroy the Warding Firestone |q 75919/1 |goto Ohn'ahran Plains/0 20.39,82.36 |count 2
step
click Warding Firestone
Destroy the Warding Firestone |q 75919/1 |goto Ohn'ahran Plains/0 20.78,81.62 |count 3
step
click Warding Firestone
Destroy the Warding Firestone |q 75919/1 |goto Ohn'ahran Plains/0 20.10,81.33 |count 4
step
label "Slay_Fyrakk's_Forces"
Kill enemies around this area
Slay #8# of Fyrakk's Forces |q 75920/1 |goto Ohn'ahran Plains/0 19.92,81.61
step
_Next to you:_
talk Shandris Feathermoon
turnin Eyes of Fire##75920 |goto Ohn'ahran Plains/0 20.31,80.87
turnin Dousing the Wards##75919 |goto Ohn'ahran Plains/0 20.31,80.87
accept Through the Flames##75921 |goto Ohn'ahran Plains/0 20.31,80.87
step
Approach the Flower |q 75921/1 |goto Ohn'ahran Plains/0 20.45,80.92
step
talk Shandris Feathermoon##205132
Select _"I am ready."_
Speak with Shandris |q 75921/2 |goto Ohn'ahran Plains/0 20.42,80.93
step
click Smoldering Blossom
Collect the Smoldering Blossom |q 75921/3 |goto Ohn'ahran Plains/0 20.46,80.91 |count 1
step
click Smoldering Blossom
|tip Avoid the circles on the ground and the floating rows of orbs on the bridge.
|tip Study the pattern before clicking the blossom so you don't get hit while the cast finishes.
Collect the Smoldering Blossom |q 75921/3 |goto Ohn'ahran Plains/0 20.88,80.05 |count 2
step
click Smoldering Blossom
|tip Avoid the circles on the ground and the floating rows of orbs on the bridge.
|tip Study the pattern before clicking the blossom so you don't get hit while the cast finishes.
Collect the Smoldering Blossom |q 75921/3 |goto Ohn'ahran Plains/0 20.87,79.45 |count 3
step
click Smoldering Blossom
|tip Avoid the circles on the ground and the floating rows of orbs on the bridge.
Collect the Smoldering Blossom |q 75921/3 |goto Ohn'ahran Plains/0 21.30,78.53 |count 4
step
Reach the Hiding Spot |q 75921/4 |goto Ohn'ahran Plains/0 21.85,77.34
|tip Avoid the two circles on the ground.
step
talk Shandris Feathermoon##205134
turnin Through the Flames##75921 |goto Ohn'ahran Plains/0 21.88,77.37
accept Inflammatory Information##75922 |goto Ohn'ahran Plains/0 21.88,77.37
step
click Concealed Shrubbery
Eavesdrop with Shandris |q 75922/1 |goto Ohn'ahran Plains/0 21.81,77.34
step
kill Rupturing Firevine##207699+
|tip Destroy the vines.
Defeat Larodar |q 75922/2 |goto Ohn'ahran Plains/0 21.90,76.08
step
talk Shandris Feathermoon##205142
turnin Inflammatory Information##75922 |goto Ohn'ahran Plains/0 21.69,77.09
accept Raise the Alarm##75923 |goto Ohn'ahran Plains/0 21.69,77.09
step
use Sentinel's Whistle##206353
Use the Sentinel's Whistle to Return to Valdrakken |q 75923/1 |goto Ohn'ahran Plains/0 21.69,77.16
step
talk Captain Drine##206047
Select _"Fyrakk is planning to attack the Emerald Dream. We need to stop him."_
Deliver the Report to Captain Drine |q 75923/2 |goto Valdrakken/0 56.00,40.01
step
Follow the Guards to the Lower Ledge |q 75923/4 |goto Valdrakken/0 54.63,47.49
|tip Use the Grapple or fly down.
step
talk Captain Drine##206041
Select _"What is happening?"_
Speak to Captain Drine |q 75923/5 |goto Valdrakken/0 54.63,47.49
step
talk Captain Drine##206041
turnin Raise the Alarm##75923 |goto Valdrakken/0 54.01,46.38
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Reforging the Tyr's Guard",{
author="support@zygorguides.com",
description="This guide will help you complete the Reforging the Tyr's Guard storyline.",
condition_suggested=function() return level == 70 and not completedq(75638) end,
startlevel=70,
patch='100107',
},[[
step
talk Nozdormu##187669
|tip At the top of the tower.
accept A Dislocated Disc##75632 |goto Valdrakken/0 61.42,39.11
step
talk Eternus##204574
turnin A Dislocated Disc##75632 |goto Thaldraszus/0 60.42,59.02
accept We Have the Technology##75633 |goto Thaldraszus/0 60.42,59.02
step
talk Chromie##204576
Select _"Yes, tell me about the plan."_
Speak to Chromie |q 75633/1 |goto Thaldraszus/0 60.40,59.00
step
talk Travard##204577
turnin We Have the Technology##75633 |goto Thaldraszus/0 60.40,58.91
accept Reforging the Tyr's Guard##75634 |goto Thaldraszus/0 60.40,58.91
step
talk Travard##206221
turnin Reforging the Tyr's Guard##75634 |goto The Azure Span/0 17.59,31.53
accept Walking the Path of Tyr##76171 |goto The Azure Span/0 17.59,31.53
step
talk Talthis##204538
Select _"Here's your tabard and shield, Talthis."_
Watch the dialogue
Equip the Exemplar of Order |q 76171/2 |goto The Azure Span/0 17.56,31.47
step
talk Nolaki##204539
Select _"Here's your tabard and shield, Nolaki."_
Watch the dialogue
Equip the Exemplar of Sacrifice |q 76171/4 |goto The Azure Span/0 17.56,31.38
step
talk Valunei##204540
Select _"Here's your tabard and shield, Valunei."_
Watch the dialogue
Equip the Exemplar of Compassion |q 76171/3 |goto The Azure Span/0 17.63,31.34
step
talk Hadwin##204541
Select _"Here's your tabard and shield, Hadwin."_
Watch the dialogue
Equip the Exemplar of Justice |q 76171/1 |goto The Azure Span/0 17.64,31.44
step
talk Travard##206221
turnin Walking the Path of Tyr##76171 |goto The Azure Span/0 17.59,31.53
step
talk Talthis##204593
accept An Exemplar of Order: Talthis##75951 |goto The Azure Span/0 17.56,31.47
step
talk Nolaki##204592
accept An Exemplar of Sacrifice: Nolaki##75952 |goto The Azure Span/0 17.56,31.38
step
talk Valunei##204591
accept An Exemplar of Compassion: Valunei##75953 |goto The Azure Span/0 17.63,31.34
step
talk Hadwin##204590
accept An Exemplar of Justice: Hadwin##75950 |goto The Azure Span/0 17.65,31.44
step
Find Nolaki |q 75952/1 |goto The Azure Span/0 16.84,30.01
step
kill Massive Decay##205839 |q 75952/2 |goto The Azure Span/0 16.77,30.13
step
click Abandoned Tuskarr Relic##403464+
|tip They look like small Tuskarr-shaped stones on the ground around this area.
collect 5 Recovered Tuskarr Relic##206204 |q 75951/1 |goto The Azure Span/0 18.39,35.66
step
talk Talthis##205878
Select _"<Give Talthis the Recovered Relics.>"_
Return the Tuskarr Relics to Talthis |q 75951/2 |goto The Azure Span/0 18.91,35.01
step
kill Decaymonger Rotpaw##205995 |q 75950/1 |goto The Azure Span/0 17.53,38.79
step
talk Valunei##206124
Select _"I'm ready."_
Speak to Valunei in Brackenhide Hollow |q 75953/1 |goto The Azure Span/0 11.66,37.90
step
Kill enemies that attack
|tip Inside the cave.
Protect Valunei from Gnolls |q 75953/2 |goto The Azure Span/0 11.72,38.57
step
talk Talthis##204593
turnin An Exemplar of Order: Talthis##75951 |goto The Azure Span/0 17.56,31.47
step
talk Nolaki##204592
turnin An Exemplar of Sacrifice: Nolaki##75952 |goto The Azure Span/0 17.56,31.39
step
talk Valunei##204591
turnin An Exemplar of Compassion: Valunei##75953 |goto The Azure Span/0 17.63,31.34
step
talk Hadwin##204590
turnin An Exemplar of Justice: Hadwin##75950 |goto The Azure Span/0 17.64,31.44
step
talk Travard##206221
accept For Tyr!##75635 |goto The Azure Span/0 17.59,31.53
step
talk Travard##204602
Select _"I'm ready."_
Speak to Travard at Tyrhold |q 75635/1 |goto Thaldraszus/0 59.76,58.74
step
talk Travard##208968
turnin For Tyr!##75635 |goto Thaldraszus/0 59.97,58.74
accept First Steps##76176 |goto Thaldraszus/0 59.97,58.74
step
Meet Chromie in Tyrhold |q 76176/1 |goto Thaldraszus/0 60.43,58.94
step
talk Chromie##204668
turnin First Steps##76176 |goto Thaldraszus/0 60.43,58.94
step
talk Eternus##204667
accept Tyrangulation##75636 |goto Thaldraszus/0 60.38,58.78
step
click Temple of Order: Winterskorn War
Take the Portal to the Temple of Order |q 75636/1 |goto Thaldraszus/0 60.44,58.74
step
Kill enemies that attack in waves
Protect Travard |q 75636/2 |goto The Storm Peaks/0 53.49,42.25
step
click Portal to Tyrhold
Take the Portal to Tyrhold |q 75636/3 |goto The Storm Peaks/0 52.68,42.37
step
talk Chromie##206686
turnin Tyrangulation##75636 |goto Thaldraszus/0 60.35,58.74
step
talk Travard##206682
accept The Final Beacon##75637 |goto Thaldraszus/0 60.38,58.68
step
click Black Empire: Primordial Azeroth
Take the portal to Talthis and Valunei's |q 75637/1 |goto Thaldraszus/0 60.49,58.85
step
talk Valunei##204599
Select _"Talthis is right. This can't be your friend. You should resist her!"_
Speak to Valunei |q 75637/2 |goto The Black Empire 2/0 49.50,68.06
step
kill 1 Deceiver Hr'qoth##206784 |q 75637/3 |goto The Black Empire 2/0 48.63,71.17
step
Kill enemies that attack in waves
Protect the Beacon |q 75637/4 |goto The Black Empire 2/0 49.68,44.78
step
click Portal to Tyrhold
Take the Portal to Tyrhold |q 75637/5 |goto The Black Empire 2/0 48.97,37.30
step
talk Travard##204605
turnin The Final Beacon##75637 |goto Thaldraszus/0 60.43,58.92
accept Dislocated Disc Located##75638 |goto Thaldraszus/0 60.43,58.92
step
talk Valunei##204608
Speak with Valunei |q 75638/5 |goto Thaldraszus/0 60.31,58.86
step
talk Travard##204605
turnin Dislocated Disc Located##75638 |goto Thaldraszus/0 60.43,58.92
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Bronze Reconciliation",{
author="support@zygorguides.com",
description="This guide will help you complete the Reforging the Tyr's Guard storyline.",
condition_suggested=function() return level == 70 and not completedq(75638) end,
startlevel=70,
patch='100107',
},[[
step
talk Chromie##208035
accept No Limits##76423 |goto Valdrakken/0 60.99,40.04
step
talk Nozdormu##207106
turnin No Limits##76423 |goto Thaldraszus/0 65.50,80.26
accept What Makes an Infinite##77417 |goto Thaldraszus/0 65.50,80.26
step
Watch the dialogue
talk Eternus##205882
Select _"Who is Moraidormi?"_
Ask About Moraidormi |q 77417/1 |goto Thaldraszus/0 65.53,80.18
step
talk Nozdormu##207106
turnin What Makes an Infinite##77417 |goto Thaldraszus/0 65.50,80.26
accept Not Today, Fate##76407 |goto Thaldraszus/0 65.50,80.26
step
click Time Rift
Use the Time Rift |q 76407/1 |goto Thaldraszus/0 65.55,80.10
step
Watch the dialogue
talk Eternus##207634
Select _"I can't... move..."_
Speak to Eternus |q 76407/2 |goto Tanaris/0 37.48,83.99
step
extraaction Watch History Unfold##416240
Help Eternus Unpause Time |q 76407/3 |goto Tanaris/0 37.49,83.68
step
Watch the dialogue
Observe History |q 76407/4 |goto Tanaris/0 37.49,83.68
step
talk Nozdormu##206971
turnin Not Today, Fate##76407 |goto Tanaris/0 37.59,83.83
step
talk Eternus##207634
accept Violence Will Solve It##76419 |goto Tanaris/0 37.46,83.63
step
extraaction Rewind Time##415562
Reverse Time |q 76419/1 |goto Tanaris/0 37.55,83.80
step
kill Vexemia##206967
Confront Vexemia |q 76419/2 |goto Tanaris/0 37.82,82.75
step
talk Eternus##207634
turnin Violence Will Solve It##76419 |goto Tanaris/0 37.91,83.21
accept Butterfly Effects##76420 |goto Tanaris/0 37.91,83.21
step
extraaction Rewind Time##415562
Reverse Time |q 76420/1 |goto Tanaris/0 37.55,83.79
step
Kill Timeline enemies around this area
collect 6 Quickened Sand##208099 |q 76420/2 |goto Tanaris/0 38.01,84.02
step
click Invulnerable Hourglass
Place the Invulnerable Hourglass |q 76420/3 |goto Tanaris/0 37.94,83.47 |count 1
step
click Invulnerable Hourglass
Place the Invulnerable Hourglass |q 76420/3 |goto Tanaris/0 37.95,83.08 |count 2
step
click Invulnerable Hourglass
Place the Invulnerable Hourglass |q 76420/3 |goto Tanaris/0 37.65,83.10 |count 3
step
click Invulnerable Hourglass
Place the Invulnerable Hourglass |q 76420/3 |goto Tanaris/0 37.67,83.45 |count 4
step
extraaction Watch Events Unfold##417235
Observe the Results |q 76420/4 |goto Tanaris/0 37.49,83.68
step
talk Eternus##207634
turnin Butterfly Effects##76420 |goto Tanaris/0 37.46,83.63
accept The Fate We Make##76421 |goto Tanaris/0 37.46,83.63
step
extraaction Rewind Time##415562
Reverse Time reversed |q 76421/1 |goto Tanaris/0 37.55,83.80
step
talk Eternus##207634
|tip Choose a dialogue option you prefer.
Ask Eternus to Stop Pausing |q 76421/2 |goto Tanaris/0 37.46,83.63
step
Watch the dialogue
Review History |q 76421/3 |goto Tanaris/0 37.46,83.63
step
clicknpc Moraidormi##208002
Investigate Moraidormi |q 76421/4 |goto Tanaris/0 37.79,83.23
step
talk Eternus##207634
turnin The Fate We Make##76421 |goto Tanaris/0 37.46,83.63
step
talk Nozdormu##206971
accept Infinity and Beyond##76422 |goto Tanaris/0 37.74,83.28
step
click Time Rift
Use the Time Rift |q 76422/1 |goto Tanaris/0 37.40,84.17
step
talk Chromie##208035
|tip Choose a dialogue option you prefer.
Speak with Chromie |q 76422/2 |goto Thaldraszus/0 65.40,80.40
step
talk Nozdormu##207106
turnin Infinity and Beyond##76422 |goto Thaldraszus/0 65.50,80.26
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Emerald Dream Campaign",{
author="support@zygorguides.com",
description="This guide will help you complete the Emerald Dream campaign questline.",
startlevel=70,
patch='100200',
},[[
leechsteps "Leveling Guides\\Dragonflight (10-70)\\The Coalition of Flames"
step
accept Call of the Dream##76317 |goto Valdrakken/0 53.20,50.62
|tip You will accept this quest automatically.
step
talk Merithra##187590
turnin Call of the Dream##76317 |goto Ohn'ahran Plains/0 18.66,51.77
accept Emerald Welcome##76318 |goto Ohn'ahran Plains/0 18.66,51.77
step
Cross into the Emerald Dream |q 76318/1 |goto Ohn'ahran Plains/0 18.44,52.41
step
talk Merithra##206425
Select _"What do you want me to see?"_
Speak to Merithra |q 76318/2 |goto The Emerald Dream/0 69.42,54.04
step
talk Merithra##206425
turnin Emerald Welcome##76318 |goto The Emerald Dream/0 69.42,54.04
accept Feast or Flaming##76319 |goto The Emerald Dream/0 69.42,54.04
step
talk Athera##208286
home Verdant Landing |goto The Emerald Dream/0 69.53,53.24 |q 76319
step
talk Occarim##208280
fpath Verdant Landing |goto The Emerald Dream/0 68.81,54.81 |q 76319
step
Eat #12# Flames |q 76319/2 |goto The Emerald Dream/0 66.14,55.73
|tip Fly through the rings in the air on your dragonriding mount.
|tip Green orbs will restore vigor.
step
talk Cenarius##206510
turnin Feast or Flaming##76319 |goto The Emerald Dream/0 64.30,58.23
accept Wild Gods in Our Midst##76320 |goto The Emerald Dream/0 64.30,58.23
step
talk Goldrinn##206527
Select _"Merithra requests your aid in defending the World Tree."_
Request Goldrinn's Aid |q 76320/1 |goto The Emerald Dream/0 62.63,66.23
step
talk Q'onzu##206530
Select _"Merithra requests your aid in defending the World Tree."_
Request Q'onzu's Aid |q 76320/2 |goto The Emerald Dream/0 65.65,70.16
step
talk Elder Cassaphine##206571
|tip Inside the cave.
Select _"Merithra requests your aid in defending the World Tree."_
Request Elder Cassaphine's Aid |q 76320/3 |goto Barrows of Reverie/0 66.62,45.16
step
talk Cenarius##206583
turnin Wild Gods in Our Midst##76320 |goto The Emerald Dream/0 63.28,71.50
accept Burning Assault##76321 |goto The Emerald Dream/0 63.28,71.50
accept The Face of Our Enemies##76322 |goto The Emerald Dream/0 63.28,71.50
stickystart "Slay_Fyrakk's_Forces"
step
kill Apostle Fenarelle##206628 |q 76322/2 |goto The Emerald Dream/0 61.42,68.74
step
kill Stormbrand Ko'mal##206684 |q 76322/1 |goto The Emerald Dream/0 64.35,67.95
step
label "Slay_Fyrakk's_Forces"
Kill enemies around this area
Slay Fyrakk's Forces |q 76321/1 |goto The Emerald Dream/0 62.89,68.30
step
talk Merithra##206688
turnin Burning Assault##76321 |goto The Emerald Dream/0 62.78,68.63
turnin The Face of Our Enemies##76322 |goto The Emerald Dream/0 62.78,68.63
accept The Cruel##77818 |goto The Emerald Dream/0 62.78,68.63
step
clicknpc Flame Portal
|tip Move out of the big swirling area on the ground.
Help Merithra Close the Flame Portal |q 77818/1 |goto The Emerald Dream/0 62.67,68.42
step
clicknpc Dream Portal##206703
Take the Dream Portal |q 77818/2 |goto The Emerald Dream/0 62.91,68.98
step
talk Merithra##206806
turnin The Cruel##77818 |goto The Emerald Dream/0 61.48,60.39
accept Amirdrassil##76323 |goto The Emerald Dream/0 61.48,60.39
step
talk Merithra##206809
|tip She will eventually fly to this location.
turnin Amirdrassil##76323 |goto The Emerald Dream/0 53.83,63.93
accept Lost to the Flame##76324 |goto The Emerald Dream/0 53.83,63.93
step
kill Elder Cassaphine##206818 |q 76324/1 |goto The Emerald Dream/0 50.60,71.86
step
talk Merithra##206979
turnin Lost to the Flame##76324 |goto The Emerald Dream/0 50.96,69.99
accept Between Fyrakk and a Hard Place##76325 |goto The Emerald Dream/0 50.96,69.99
step
talk Merithra##206979
Select _"I'm with you."_
Speak to Merithra |q 76325/1 |goto The Emerald Dream/0 50.96,69.99
step
talk Merithra##206979
turnin Between Fyrakk and a Hard Place##76325 |goto The Emerald Dream/0 50.96,69.99
accept Home in the Dream##76326 |goto The Emerald Dream/0 50.96,69.99
step
talk Merithra##206896
turnin Home in the Dream##76326 |goto The Emerald Dream/0 50.80,62.88
accept A Multi-Front Battle##77283 |goto The Emerald Dream/0 50.80,62.88
step
talk Leora##207636
fpath Central Encampment |goto The Emerald Dream/0 51.09,62.35 |q 77283
step
talk Keeper Amrymn##208143
Find Keeper Amrymn |q 77283/2 |goto The Emerald Dream/0 50.21,61.59
step
talk Keeper Amrymn##208143
accept A Worthy Ally: Dream Wardens##78444 |goto The Emerald Dream/0 50.21,61.59
|only if questactive(78444)
step
talk Saelienne##207627
|tip Inside the tent.
Find Saelienne |q 77283/1 |goto The Emerald Dream/0 49.85,61.64
step
talk Saelienne##207627
|tip Inside the tent.
home Central Encampment |goto The Emerald Dream/0 49.85,61.64 |q 77283
step
talk Vaskarn##211328
Find Vaskarn |q 77283/3 |goto The Emerald Dream/0 49.79,62.95
step
talk Merithra##206896
turnin A Multi-Front Battle##77283 |goto The Emerald Dream/0 50.80,62.88
accept The Burning Barrow##77436 |goto The Emerald Dream/0 50.80,62.88
step
talk Tyrande Whisperwind##206247
|tip On the ground and not up on the cliff.
turnin The Burning Barrow##77436 |goto The Emerald Dream/0 51.40,43.07
accept Ashen Soil##76433 |goto The Emerald Dream/0 51.40,43.07
accept Not Yet Lost##76434 |goto The Emerald Dream/0 51.40,43.07
stickystart "Assist_the_Burning_Barrow"
step
Follow the path down |goto Sor'theril Barrow Den/0 44.88,72.28 < 7 |walk
Continue following the path |goto Sor'theril Barrow Den/0 37.80,44.89 < 7 |walk
Continue following the path |goto Sor'theril Barrow Den/0 60.04,23.31 < 7 |walk
Find the Druid of the Flame |q 76433/1 |goto Sor'theril Barrow Den/0 64.78,58.65
|tip Inside the cave.
step
label "Assist_the_Burning_Barrow"
Kill enemies around this area
clicknpc Harried Dryad##206375+
|tip Inside the cave.
Assist the Burning Barrow |q 76434/1 |goto Sor'theril Barrow Den/0 42.87,30.17
step
talk Tyrande Whisperwind##206247
turnin Ashen Soil##76433 |goto The Emerald Dream/0 51.43,42.71
turnin Not Yet Lost##76434 |goto The Emerald Dream/0 51.43,42.71
accept The Smoldering Copse##76435 |goto The Emerald Dream/0 51.43,42.71
step
talk Tyrande Whisperwind##207160
turnin The Smoldering Copse##76435 |goto The Emerald Dream/0 40.80,47.50
accept Burning Ground##76437 |goto The Emerald Dream/0 40.80,47.50
accept Grim Reprisal##76441 |goto The Emerald Dream/0 40.80,47.50
stickystart "Disrupt_the_Smoldering_Copse"
step
click Smolderbark Cage+
|tip They look like large wooden cages around this area.
Rescue #8# Captured Denizens |q 76437/1 |goto The Emerald Dream/0 34.25,47.46
You can find more around [36.91,49.00]
step
label "Disrupt_the_Smoldering_Copse"
Kill enemies around this area
click Smoldering Supplies
Disrupt the Smoldering Copse |q 76441/1 |goto The Emerald Dream/0 35.64,46.89
step
talk Tyrande Whisperwind##207160
turnin Burning Ground##76437 |goto The Emerald Dream/0 35.99,50.93
turnin Grim Reprisal##76441 |goto The Emerald Dream/0 35.99,50.93
accept Forlorn Hope##76442 |goto The Emerald Dream/0 35.99,50.93
step
talk Tyrande Whisperwind##207160
Select _"I am ready."_
Speak to Tyrande |q 76442/1 |goto The Emerald Dream/0 36.00,50.94
step
kill Sylvanesh the Ascended##207107 |q 76442/2 |goto The Emerald Dream/0 35.37,49.47
step
talk Tyrande Whisperwind##211193
turnin Forlorn Hope##76442 |goto The Emerald Dream/0 36.14,50.87
accept The Looming Cinder##76443 |goto The Emerald Dream/0 36.14,50.87
step
talk Merithra##206896
turnin The Looming Cinder##76443 |goto The Emerald Dream/0 50.80,62.88
step
use the Mark of the Dream Wardens##210730
Consume the Reputation Token |complete itemcount(210730) == 0
step
talk Vyranoth##208506
accept Mayhem Incarnate##76403 |goto The Emerald Dream/0 50.81,62.73
step
talk Keeper Amrymn##208143
turnin A Worthy Ally: Dream Wardens##78444 |goto The Emerald Dream/0 50.21,61.60
|only if readyq(78444) or completedq(78444)
step
talk Vyranoth##206612
turnin Mayhem Incarnate##76403 |goto The Emerald Dream/0 36.83,25.86
accept Best Laid Plans##76343 |goto The Emerald Dream/0 36.83,25.86
step
talk Buri##206619
accept Light 'Em Up!##76342 |goto The Emerald Dream/0 36.85,26.08
stickystart "Hinder_the_Primalist_Forces"
step
click Proto-Dragon Tablet
Find the Clue |q 76343/1 |goto The Emerald Dream/0 37.20,22.94 |count 1
step
click Proto-Dragon Tablet
Find the Clue |q 76343/1 |goto The Emerald Dream/0 36.21,21.04 |count 2
step
click Proto-Dragon Tablet
Find the Clue |q 76343/1 |goto The Emerald Dream/0 36.03,20.20 |count 3
step
click Proto-Dragon Tablet
Find the Clue |q 76343/1 |goto The Emerald Dream/0 34.65,20.08 |count 4
step
label "Hinder_the_Primalist_Forces"
Kill enemies around this area
clicknpc Flamecrested Portalweaver##208418
Hinder the Primalist Forces |q 76342/1 |goto The Emerald Dream/0 36.43,22.06
step
talk Vyranoth##206612
turnin Best Laid Plans##76343 |goto The Emerald Dream/0 36.83,25.86
step
talk Buri##206619
turnin Light 'Em Up!##76342 |goto The Emerald Dream/0 36.85,26.09
accept Primalist Directive##76344 |goto The Emerald Dream/0 36.85,26.09
step
talk Vyranoth##206612
accept Finding Terro##76345 |goto The Emerald Dream/0 36.83,25.86
step
Investigate the Scorching Chasm |q 76345/1 |goto The Emerald Dream/0 39.98,20.09
step
talk Terro##208377
Select _"<Investigate Terro's body.>"_
Investigate Terro's Corpse |q 76345/2 |goto The Emerald Dream/0 39.94,20.06
step
Watch the dialogue
kill 1 Igneous Stonemauler##210043 |q 76345/3 |goto The Emerald Dream/0 40.11,20.08
step
Talk to Dreambreaker NPCs around this area
|tip Some of them will attack you.
Sway #5# Primalists |q 76344/1 |goto The Emerald Dream/0 40.04,21.68
step
talk Buri##210178
turnin Primalist Directive##76344 |goto The Emerald Dream/0 39.61,22.90
turnin Finding Terro##76345 |goto The Emerald Dream/0 39.61,22.90
accept Assault on the Wellspring##76532 |goto The Emerald Dream/0 39.61,22.90
step
talk Buri##208674
Select _"<Look where Buri is indicating.>"_
Observe the Wellspring of Life |q 76532/1 |goto The Emerald Dream/0 33.56,30.53
step
talk Suzska##208378
turnin Assault on the Wellspring##76532 |goto The Emerald Dream/0 27.63,32.19
accept Big Bright Beautiful Barrier##76348 |goto The Emerald Dream/0 27.63,32.19
step
click Barrier Fragment+
|tip They look like green crystals laying on the ground around this area.
Retrieve #6# Barrier Fragments |q 76348/1 |goto The Emerald Dream/0 28.19,31.20
step
extraaction Heal Barrier##423058
Heal the Barrier |q 76348/2 |goto The Emerald Dream/0 28.04,31.23
step
talk Suzska##208378
Select _"The barrier has been repaired."_
Speak with Suzska |q 76348/3 |goto The Emerald Dream/0 27.63,32.19
step
talk Suzska##208725
turnin Big Bright Beautiful Barrier##76348 |goto The Emerald Dream/0 33.51,30.27
accept Power, Eruption, and Lies##76347 |goto The Emerald Dream/0 33.51,30.27
step
kill Lethka##208740 |q 76347/1 |goto The Emerald Dream/0 30.20,22.35
step
talk Vyranoth##210733
turnin Power, Eruption, and Lies##76347 |goto The Emerald Dream/0 33.73,25.25
accept Tactical Withdrawal##77178 |goto The Emerald Dream/0 33.73,25.25
step
talk Thevelo##209427
fpath Wellspring Overlook |goto The Emerald Dream/0 35.65,33.64 |q 77178
step
talk Alexstrasza the Life-Binder##208503
turnin Tactical Withdrawal##77178 |goto The Emerald Dream/0 50.76,62.83
step
use the Scales of Remorse##210757
Consume the Reputation Token |complete itemcount(210757) == 0
step
talk Ysera##206408
accept Eye of Ysera##76327 |goto The Emerald Dream/0 50.85,62.91
step
click Portal to the Eye of Ysera
Take the Portal into the Eye of Ysera |q 76327/1 |goto The Emerald Dream/0 50.96,62.60
step
talk Merithra##206416
turnin Eye of Ysera##76327 |goto The Emerald Dream/0 52.11,29.25
accept A New Brute##76328 |goto The Emerald Dream/0 52.11,29.25
step
clicknpc Emerald Preserver##206480
Imbue the Preserver |q 76328/1 |goto The Emerald Dream/0 52.17,29.61 |count 1
step
clicknpc Emerald Preserver##210701
Imbue the Preserver |q 76328/1 |goto The Emerald Dream/0 52.31,29.90 |count 2
step
clicknpc Emerald Preserver##210702
Imbue the Preserver |q 76328/1 |goto The Emerald Dream/0 51.91,30.39 |count 3
step
clicknpc Emerald Preserver##210703
Imbue the Preserver |q 76328/1 |goto The Emerald Dream/0 51.38,29.73 |count 4
step
clicknpc Emerald Preserver##210704
Imbue the Preserver |q 76328/1 |goto The Emerald Dream/0 51.69,29.06 |count 5
step
talk Ysera##206408
|tip Inside the building.
Check in on Ysera |q 76328/2 |goto The Emerald Dream/0 52.83,27.97
step
talk Merithra##206406
|tip She runs to this location inside the building.
turnin A New Brute##76328 |goto The Emerald Dream/0 52.72,28.17
accept Fire Watch##78646 |goto The Emerald Dream/0 52.72,28.17
step
talk Merithra##206406
turnin Fire Watch##78646 |goto The Emerald Dream/0 52.14,24.23
accept In and Out Scout##76329 |goto The Emerald Dream/0 52.14,24.23
accept Disarm Specialist##76330 |goto The Emerald Dream/0 52.14,24.23
stickystart "Destroy_Suffusion_Supplies"
stickystart "Slay_Suffusion_Shapers"
step
use Somnowl's Shroud##210016
|tip You may need to walk around the area a bit after entering stealth to get credit.
Spy on Moltenbinder |q 76329/1 |goto The Emerald Dream/0 46.03,19.57
step
use Somnowl's Shroud##210016
Spy on The Anvil |q 76329/2 |goto The Emerald Dream/0 44.54,23.97
step
label "Destroy_Suffusion_Supplies"
click Suffusion Supplies
|tip They look like collections of pots around this area.
Destroy #8# Suffusion Supplies |q 76330/2 |goto The Emerald Dream/0 45.71,23.34
step
label "Slay_Suffusion_Shapers"
kill 6 Suffusion Shaper##208676 |q 76330/1 |goto The Emerald Dream/0 45.71,23.34
step
talk Bodwin##209153
Select _"Let's see what Igira the Cruel is up to."_
Spy on Igira the Cruel |q 76329/3 |goto The Emerald Dream/0 48.44,22.39
step
talk Merithra##206406
turnin In and Out Scout##76329 |goto The Emerald Dream/0 52.14,24.23
turnin Disarm Specialist##76330 |goto The Emerald Dream/0 52.14,24.23
step
talk Merithra##206406
|tip Inside the building.
accept Good Counsel##76334 |goto The Emerald Dream/0 53.06,28.20
step
Regroup with Merithra |q 76334/1 |goto The Emerald Dream/0 53.06,28.19
|tip Inside the building.
step
talk Lord Itharius##206411
|tip Inside the building.
Select _"What do you think about Merithra's plan?"_
Speak to the Green Dragon |q 76334/2 |goto The Emerald Dream/0 52.89,28.32 |count 1
step
talk Somnikus##206409
|tip Inside the building.
Select _"What do you think about Merithra's plan?"_
Speak to the Green Dragon |q 76334/2 |goto The Emerald Dream/0 52.99,28.38 |count 2
step
talk Gerithus##206412
|tip Inside the building.
Select _"What do you think about Merithra's plan?"_
Speak to the Green Dragon |q 76334/2 |goto The Emerald Dream/0 53.04,28.28 |count 3
step
talk Ysera##206408
|tip Inside the building.
Select _"What do you think about Merithra's plan?"_
Speak with Ysera |q 76334/3 |goto The Emerald Dream/0 52.83,27.97
step
talk Merithra##206406
|tip Inside the building.
turnin Good Counsel##76334 |goto The Emerald Dream/0 53.06,28.20
accept Putting Roots Down##76332 |goto The Emerald Dream/0 53.06,28.20
step
click Tilled Soil+
|tip They look like mounds of dirt on the ground around this area.
kill Noxious Seedling##211410+
|tip They sometimes attack after clicking the soil.
Plant #8# Noxious Seeds |q 76332/1 |goto The Emerald Dream/0 55.06,26.79
step
talk Kiya Featherpaw##208909
Select _"Merithra said you have a plan to help defeat the djaradin."_
Speak to Kiya Featherpaw |q 76332/2 |goto The Emerald Dream/0 57.52,25.89
step
talk Somnikus##207081
Select _"The traps are prepared. We are ready."_
Speak to Somnikus |q 76332/3 |goto The Emerald Dream/0 56.97,23.18
step
talk Merithra##206406
|tip Inside the building.
turnin Putting Roots Down##76332 |goto The Emerald Dream/0 53.06,28.20
accept Merithra's Gambit##76331 |goto The Emerald Dream/0 53.06,28.20
step
talk Ysera##206408
|tip Inside the building.
Select _"I am ready."_
Ask Ysera to Lower the Eye's Defenses |q 76331/1 |goto The Emerald Dream/0 52.83,27.97
step
Watch the dialogue
talk Merithra##206406
turnin Merithra's Gambit##76331 |goto The Emerald Dream/0 52.89,28.03
accept Triple Threat##76333 |goto The Emerald Dream/0 52.89,28.03
accept Might of the Forest##76335 |goto The Emerald Dream/0 52.89,28.03
stickystart "Slay_Djaradin_Forces_and_Activate_Traps"
step
kill Moltenbinder##206477 |q 76333/2 |goto The Emerald Dream/0 54.27,25.45
step
kill Galok Wingslicer##209047 |q 76333/3 |goto The Emerald Dream/0 56.78,23.51
step
kill The Anvil##206478 |q 76333/1 |goto The Emerald Dream/0 56.85,28.32
step
label "Slay_Djaradin_Forces_and_Activate_Traps"
Kill enemies around this area
Click objects around this area
Slay Djaradin Forces and Activate Traps |q 76335/1 |goto The Emerald Dream/0 54.54,26.72
step
talk Merithra##206416
turnin Triple Threat##76333 |goto The Emerald Dream/0 57.34,26.14
turnin Might of the Forest##76335 |goto The Emerald Dream/0 57.34,26.14
accept Flight and Fight##76336 |goto The Emerald Dream/0 57.34,26.14
step
kill 25 Lava Sporebat##211877 |q 76336/2 |goto The Emerald Dream/0 55.06,29.23
|tip Fly through them in the air on your dragonriding mount.
step
talk Merithra##206416
Select _"I'm ready."_
Speak to Merithra |q 76336/3 |goto The Emerald Dream/0 51.50,30.31
step
talk Merithra##206406
turnin Flight and Fight##76336 |goto The Emerald Dream/0 51.97,29.48
accept The Ember Still Smolders##76337 |goto The Emerald Dream/0 51.97,29.48
step
talk Merithra##206896
turnin The Ember Still Smolders##76337 |goto The Emerald Dream/0 50.80,62.88
accept The Bloom Begins##76384 |goto The Emerald Dream/0 50.80,62.88
|tip This quest may not be available yet.
step
use the Tears of the Eye##210847
Consume the Reputation Token |complete itemcount(210847) == 0
step
talk Merithra##206896
Select _"What can you tell me about the Bloom?"_
Speak to Merithra |q 76384/1 |goto The Emerald Dream/0 50.80,62.88
step
talk Merithra##206896
turnin The Bloom Begins##76384 |goto The Emerald Dream/0 50.80,62.88
step
talk Alexstrasza the Life-Binder##208503
accept Forward Unto Fire##76416 |goto The Emerald Dream/0 50.75,62.83
step
talk Alexstrasza the Life-Binder##208550
turnin Forward Unto Fire##76416 |goto The Emerald Dream/0 38.89,39.13
step
talk Vyranoth##208553
accept A Clash of Ice and Fire##76386 |goto The Emerald Dream/0 38.87,39.18
step
talk Merithra##208551
accept Hazardous Horticulture##76385 |goto The Emerald Dream/0 38.96,39.13
stickystart "Plant_Dream_Seeds"
stickystart "Slay_Wildfire_Forces"
step
use Frozenheart's Wrath##208544
|tip Use it on Calderamor.
kill 1 Calderamor##207136 |q 76386/2 |goto The Emerald Dream/0 35.54,40.27
step
use Frozenheart's Wrath##208544
kill 1 Ignarion##209360 |q 76386/3 |goto The Emerald Dream/0 33.44,41.00
step
label "Plant_Dream_Seeds"
click Dream Seed Dirt Pile+
|tip They look like large piles of dirt on the ground around this area.
Plant #6# Dream Seeds |q 76385/1 |goto The Emerald Dream/0 36.07,39.39
step
label "Slay_Wildfire_Forces"
Kill enemies around this area
Slay #15# Wildfire Forces |q 76386/4 |goto The Emerald Dream/0 35.62,39.76
step
talk Vyranoth##208553
turnin A Clash of Ice and Fire##76386 |goto The Emerald Dream/0 38.84,39.17
step
talk Merithra##208551
turnin Hazardous Horticulture##76385 |goto The Emerald Dream/0 38.63,39.16
step
talk Tyrande Whisperwind##208552
accept Defense of the Ancients##76387 |goto The Emerald Dream/0 38.66,39.15
step
talk Alexstrasza the Life-Binder##208550
accept A Scrap of Hope##76436 |goto The Emerald Dream/0 38.76,39.19
stickystart "Collect_Scraps_of_Parchment"
step
click Restraining Harpoon
Assist Gnarlroot |q 76387/1 |goto The Emerald Dream/0 39.26,36.10 |count 1
step
click Restraining Harpoon
Assist Gnarlroot |q 76387/1 |goto The Emerald Dream/0 39.44,35.10 |count 2
step
click Restraining Harpoon
Assist Gnarlroot |q 76387/1 |goto The Emerald Dream/0 38.67,35.00 |count 3
step
click Restraining Harpoon
|tip Up on the cliff.
Assist Shadebough |q 76387/4 |goto The Emerald Dream/0 39.02,34.63 |count 1
step
click Restraining Harpoon
|tip Up on the cliff.
Assist Shadebough |q 76387/4 |goto The Emerald Dream/0 38.78,34.73 |count 2
step
click Restraining Harpoon
|tip Up on the cliff.
Assist Shadebough |q 76387/4 |goto The Emerald Dream/0 38.63,34.42 |count 3
step
click Restraining Harpoon
Assist Elderbranch |q 76387/2 |goto The Emerald Dream/0 39.63,32.83 |count 1
step
click Restraining Harpoon
Assist Elderbranch |q 76387/2 |goto The Emerald Dream/0 38.81,31.83 |count 2
step
click Restraining Harpoon
Assist Elderbranch |q 76387/2 |goto The Emerald Dream/0 39.46,31.42 |count 3
step
click Restraining Harpoon
Assist Cloudsong |q 76387/3 |goto The Emerald Dream/0 41.09,33.76 |count 1
step
click Restraining Harpoon
Assist Cloudsong |q 76387/3 |goto The Emerald Dream/0 41.59,33.90 |count 2
step
click Restraining Harpoon
Assist Cloudsong |q 76387/3 |goto The Emerald Dream/0 41.01,34.99 |count 3
step
label "Collect_Scraps_of_Parchment"
Kill enemies around this area
collect 8 Scrap of Parchment##210023 |q 76436/1 |goto The Emerald Dream/0 38.82,36.24
step
talk Tyrande Whisperwind##208552
turnin Defense of the Ancients##76387 |goto The Emerald Dream/0 38.81,38.90
step
talk Alexstrasza the Life-Binder##208550
turnin A Scrap of Hope##76436 |goto The Emerald Dream/0 38.60,39.03
accept Fighting Fire With Fire##76388 |goto The Emerald Dream/0 38.60,39.03
step
click Skyfire Turret
Destroy the First Northern Skyfire Turret |q 76388/1 |goto The Emerald Dream/0 26.76,27.54 |count 1
step
click Skyfire Turret
Destroy the Second Northern Skyfire Turret |q 76388/1 |goto The Emerald Dream/0 26.47,28.94 |count 2
step
click Skyfire Turret
Destroy the Third Northern Skyfire Turret |q 76388/1 |goto The Emerald Dream/0 25.56,27.73 |count 3
step
extraaction Call Alexstrasza##420864
Mark the First Flame Ward |q 76388/2 |goto The Emerald Dream/0 25.92,27.52
step
click Skyfire Turret
Destroy the First Western Skyfire Turret |q 76388/3 |goto The Emerald Dream/0 25.14,31.90 |count 1
step
click Skyfire Turret
Destroy the Second Western Skyfire Turret |q 76388/3 |goto The Emerald Dream/0 24.52,31.60 |count 2
step
click Skyfire Turret
Destroy the Third Western Skyfire Turret |q 76388/3 |goto The Emerald Dream/0 23.71,32.50 |count 3
step
extraaction Call Alexstrasza##420864
Mark the Second Flame Ward |q 76388/4 |goto The Emerald Dream/0 24.15,32.30
step
click Skyfire Turret
Destroy the First Southern Skyfire Turret |q 76388/5 |goto The Emerald Dream/0 27.61,35.18 |count 1
step
click Skyfire Turret
Destroy the Second Southern Skyfire Turret |q 76388/5 |goto The Emerald Dream/0 28.26,34.14 |count 2
step
click Skyfire Turret
Destroy the Third Southern Skyfire Turret |q 76388/5 |goto The Emerald Dream/0 29.04,35.14 |count 3
step
extraaction Call Alexstrasza##420864
Mark the Final Flame Ward |q 76388/6 |goto The Emerald Dream/0 28.46,34.88
step
talk Tyrande Whisperwind##208568
turnin Fighting Fire With Fire##76388 |goto The Emerald Dream/0 34.97,35.34
accept The Age of Mortals##76389 |goto The Emerald Dream/0 34.97,35.34
step
talk Merithra##208567
accept Aerial Supremacy##76398 |goto The Emerald Dream/0 34.99,35.43
step
Strike #15# Proto-Drakes |q 76398/2 |goto The Emerald Dream/0 30.76,31.16
|tip Fly through the Proto-Drakes in the air on your dragonriding mount.
|tip Green orbs will restore 1 vigor.
step
use the Horn of Cenarius##208752
|tip Use it on friendly NPCs around this area.
Kill enemies around this area
Empower Heroes and Slay Enemies on the Field of Flames |q 76389/1 |goto The Emerald Dream/0 31.80,31.11
step
talk Tyrande Whisperwind##208574
|tip Up on the platform.
turnin The Age of Mortals##76389 |goto The Emerald Dream/0 35.09,33.43
step
talk Merithra##208573
|tip Up on the platform.
turnin Aerial Supremacy##76398 |goto The Emerald Dream/0 35.07,33.52
step
talk Alexstrasza the Life-Binder##208572
|tip Up on the platform.
accept Echo of the Firelands##76401 |goto The Emerald Dream/0 35.04,33.59
step
kill 1 Prophet of the Flame##207315 |q 76401/1 |goto The Emerald Dream/0 32.47,33.53
|tip Move out of areas targeted on the ground.
step
talk Alexstrasza the Life-Binder##206921
|tip You will be teleported shortly.
turnin Echo of the Firelands##76401 |goto The Emerald Dream/0 27.94,31.15
accept Amirdrassil, the Dream's Hope: Fyrakk##76402 |goto The Emerald Dream/0 27.94,31.15
step
Slay Fyrakk |q 76402/1 |goto Amirdrassil, The Dream's Hope/5 56.49,53.21
|tip This is the final boss of the "Amirdrassil, The Dream's Hope" raid.
step
talk Alexstrasza the Life-Binder##206921
turnin Amirdrassil, the Dream's Hope: Fyrakk##76402 |goto The Emerald Dream/0 50.75,62.83
step
talk Tyrande Whisperwind##211634
accept A Blossom Witnessed##77780 |goto The Emerald Dream/0 27.58,31.45
step
talk Tyrande Whisperwind##211634
Select _"<Witness the Blossom>"_
Speak to Tyrande |q 77780/1 |goto The Emerald Dream/0 27.58,31.45
step
talk Merithra of the Dream##206397
turnin A Blossom Witnessed##77780 |goto Ohn'ahran Plains/0 14.89,55.88
accept A Changed Land##76276 |goto Ohn'ahran Plains/0 14.89,55.88
step
talk Khanam Matra Sarest##206455
|tip On the stone bridge.
Select _"Is everyone all right?"_
Visit the Centaur |q 76276/1 |goto Ohn'ahran Plains/0 34.27,53.07
step
Visit the Catalogers |q 76276/2 |goto Ohn'ahran Plains/0 21.82,62.26
step
click Washed-Up Pack
collect 1 Cataloger's Film##209806 |q 76276/3 |goto Ohn'ahran Plains/0 21.72,61.80
step
talk Cataloger Wulferd##206468
Select _"Here's the film."_
Return the Film to Wulferd |q 76276/4 |goto Ohn'ahran Plains/0 21.71,62.31
step
talk Gnoll Mon-Ark##206428
Select _"Is everyone all right?"_
Visit Gnoll Mon-Ark |q 76276/5 |goto Ohn'ahran Plains/0 28.64,69.95
step
talk Radza Thunderclaw##206438
Select _"Is everyone all right?"_
Visit the Furbolg |q 76276/6 |goto Ohn'ahran Plains/0 10.37,85.69
step
clicknpc Scaps##206418
Visit the Tuskarr |q 76276/7 |goto Ohn'ahran Plains/0 6.61,84.69
step
talk Merithra of the Dream##206397
turnin A Changed Land##76276 |goto Ohn'ahran Plains/0 14.88,55.89
accept Auspicious Gathering##77329 |goto Ohn'ahran Plains/0 14.88,55.89
step
talk Tyrande Whisperwind##208537
turnin Auspicious Gathering##77329 |goto Amirdrassil/0 50.82,61.47
accept Offerings for the Well##77200 |goto Amirdrassil/0 50.82,61.47
step
talk Moon Priestess Lasara##208906
Select _"Thank you for your offering."_
Speak with Moon Priestess Lasara |q 77200/4 |goto Amirdrassil/0 50.82,61.28
step
talk Cerellean Whiteclaw##208900
Select _"Thank you for your offering."_
Speak with Cerellean Whiteclaw |q 77200/2 |goto Amirdrassil/0 50.96,61.07
step
talk Rensar Greathoof##208907
Select _"Thank you for your offering."_
Speak with Rensar Greathoof |q 77200/1 |goto Amirdrassil/0 51.06,61.26
step
talk Delaryn Summermoon##208905
Select _"Thank you for your offering."_
Speak with Delaryn Summermoon |q 77200/3 |goto Amirdrassil/0 51.28,61.96
step
talk Tyrande Whisperwind##208537
turnin Offerings for the Well##77200 |goto Amirdrassil/0 50.82,61.47
accept New Moon##76280 |goto Amirdrassil/0 50.82,61.47
step
talk Tyrande Whisperwind##208537
Speak with Tyrande |q 76280/1 |goto Amirdrassil/0 50.82,61.47
step
talk Tyrande Whisperwind##208537
turnin New Moon##76280 |goto Amirdrassil/0 50.82,61.47
accept Something Worth Celebrating##76281 |goto Amirdrassil/0 50.82,61.47
step
talk Tyrande Whisperwind##208537
Select _"Let's go."_
Speak with Tyrande to Join the Party |q 76281/1 |goto Amirdrassil/0 50.82,61.47
step
click Vibrant Feast
Pick Up the First Meal Order |q 76281/2 |goto Amirdrassil/0 52.40,61.65
step
click Table+
click Vibrant Feast+
|tip Click the tables that are highlighted around the area.
|tip You will need to visit a Vibrant Feast each three tables you serve.
Serve #12# Tables |q 76281/3 |goto Amirdrassil/0 53.33,60.73
step
talk Merithra of the Dream##206849
turnin Something Worth Celebrating##76281 |goto Amirdrassil/0 54.25,57.88
accept A Different Enthusiasm##77781 |goto Amirdrassil/0 54.25,57.88
step
talk Kalecgos##209042
accept A Disquieting Feeling##76282 |goto Amirdrassil/0 54.32,57.88
stickystart "Kill_Spriggan_Pranksters"
step
talk Kritha##206941
Select _"I'd like a drink for Khadgar, please."_
Order a Drink Drink |q 76282/1 |goto Amirdrassil/0 52.86,56.51
|tip Choose any drink.
step
talk Archmage Khadgar##209041
Select _"I have a drink for you from Kalecgos."_
Deliver a Drink to Khadgar |q 76282/2 |goto Amirdrassil/0 54.03,61.97
step
label "Kill_Spriggan_Pranksters"
kill 6 Spriggan Prankster##212007 |q 77781/1 |goto Amirdrassil/0 54.57,59.24
|tip Click objects and NPCs around the area that are highlighted to reveal pranksters.
step
talk Kalecgos##209042
turnin A Disquieting Feeling##76282 |goto Amirdrassil/0 54.32,57.88
step
talk Merithra of the Dream##206849
turnin A Different Enthusiasm##77781 |goto Amirdrassil/0 54.25,57.88
accept Andu-falah-dor##76283 |goto Amirdrassil/0 54.25,57.88
step
talk Merithra of the Dream##206849
Select _"I'm ready to leave the party."_
Speak with Merithra to Leave the Party |q 76283/1 |goto Amirdrassil/0 54.25,57.88
step
talk Merithra of the Dream##209051
Speak with Merithra at the Moonwell |q 76283/2 |goto Amirdrassil/0 51.84,61.28
step
talk Alexstrasza##208763
turnin Andu-falah-dor##76283 |goto Amirdrassil/0 50.88,61.67
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Emerald Dream Campaign + Side Quests",{
author="support@zygorguides.com",
description="This guide will help you complete the Emerald Dream campaign questline and various zone side quests.",
startlevel=70,
patch='100200',
},[[
leechsteps "Leveling Guides\\Dragonflight (10-70)\\The Coalition of Flames"
step
accept Call of the Dream##76317 |goto Valdrakken/0 53.20,50.62
|tip You will accept this quest automatically.
step
talk Merithra##187590
turnin Call of the Dream##76317 |goto Ohn'ahran Plains/0 18.66,51.77
accept Emerald Welcome##76318 |goto Ohn'ahran Plains/0 18.66,51.77
step
Cross into the Emerald Dream |q 76318/1 |goto Ohn'ahran Plains/0 18.44,52.41
step
talk Merithra##206425
Select _"What do you want me to see?"_
Speak to Merithra |q 76318/2 |goto The Emerald Dream/0 69.42,54.04
step
talk Merithra##206425
turnin Emerald Welcome##76318 |goto The Emerald Dream/0 69.42,54.04
accept Feast or Flaming##76319 |goto The Emerald Dream/0 69.42,54.04
step
talk Athera##208286
home Verdant Landing |goto The Emerald Dream/0 69.53,53.24 |q 76319
step
talk Occarim##208280
fpath Verdant Landing |goto The Emerald Dream/0 68.81,54.81 |q 76319
step
Eat #12# Flames |q 76319/2 |goto The Emerald Dream/0 66.14,55.73
|tip Fly through the rings in the air on your dragonriding mount.
|tip Green orbs will restore 1 vigor.
step
talk Cenarius##206510
turnin Feast or Flaming##76319 |goto The Emerald Dream/0 64.30,58.23
accept Wild Gods in Our Midst##76320 |goto The Emerald Dream/0 64.30,58.23
step
talk Goldrinn##206527
Select _"Merithra requests your aid in defending the World Tree."_
Request Goldrinn's Aid |q 76320/1 |goto The Emerald Dream/0 62.63,66.23
step
talk Q'onzu##206530
Select _"Merithra requests your aid in defending the World Tree."_
Request Q'onzu's Aid |q 76320/2 |goto The Emerald Dream/0 65.65,70.16
step
talk Elder Cassaphine##206571
|tip Inside the cave.
Select _"Merithra requests your aid in defending the World Tree."_
Request Elder Cassaphine's Aid |q 76320/3 |goto Barrows of Reverie/0 66.62,45.16
step
talk Cenarius##206583
turnin Wild Gods in Our Midst##76320 |goto The Emerald Dream/0 63.28,71.50
accept Burning Assault##76321 |goto The Emerald Dream/0 63.28,71.50
accept The Face of Our Enemies##76322 |goto The Emerald Dream/0 63.28,71.50
stickystart "Slay_Fyrakk's_Forces"
stickystart "Accept_Mysterious_Seeds"
step
kill Apostle Fenarelle##206628 |q 76322/2 |goto The Emerald Dream/0 61.42,68.74
step
kill Stormbrand Ko'mal##206684 |q 76322/1 |goto The Emerald Dream/0 64.35,67.95
step
label "Slay_Fyrakk's_Forces"
Kill enemies around this area
Slay Fyrakk's Forces |q 76321/1 |goto The Emerald Dream/0 62.89,68.30
step
label "Accept_Mysterious_Seeds"
Kill enemies around this area |notinsticky
accept Mysterious Seeds##78172 |goto The Emerald Dream/0 62.89,68.30
|tip You will eventually accept this automatically after looting.
step
talk Merithra##206688
turnin Burning Assault##76321 |goto The Emerald Dream/0 62.78,68.63
turnin The Face of Our Enemies##76322 |goto The Emerald Dream/0 62.78,68.63
accept The Cruel##77818 |goto The Emerald Dream/0 62.78,68.63
step
clicknpc Flame Portal
|tip Move out of the big swirling area on the ground.
Help Merithra Close the Flame Portal |q 77818/1 |goto The Emerald Dream/0 62.67,68.42
step
clicknpc Dream Portal##206703
Take the Dream Portal |q 77818/2 |goto The Emerald Dream/0 62.91,68.98
step
talk Merithra##206806
turnin The Cruel##77818 |goto The Emerald Dream/0 61.48,60.39
accept Amirdrassil##76323 |goto The Emerald Dream/0 61.48,60.39
step
talk Merithra##206809
|tip She will eventually fly to this location.
turnin Amirdrassil##76323 |goto The Emerald Dream/0 53.83,63.93
accept Lost to the Flame##76324 |goto The Emerald Dream/0 53.83,63.93
step
kill Elder Cassaphine##206818 |q 76324/1 |goto The Emerald Dream/0 50.60,71.86
step
talk Merithra##206979
turnin Lost to the Flame##76324 |goto The Emerald Dream/0 50.96,69.99
|tip Keep the piece of gear you acquire from this quest to use for a later quest.
accept Between Fyrakk and a Hard Place##76325 |goto The Emerald Dream/0 50.96,69.99
step
talk Merithra##206979
Select _"I'm with you."_
Speak to Merithra |q 76325/1 |goto The Emerald Dream/0 50.96,69.99
step
talk Merithra##206979
turnin Between Fyrakk and a Hard Place##76325 |goto The Emerald Dream/0 50.96,69.99
accept Home in the Dream##76326 |goto The Emerald Dream/0 50.96,69.99
step
talk Solarys Thorngale##210196
accept Burning Out##77948 |goto The Emerald Dream/0 52.01,63.63
step
talk Merithra##206896
turnin Home in the Dream##76326 |goto The Emerald Dream/0 50.80,62.88
accept A Multi-Front Battle##77283 |goto The Emerald Dream/0 50.80,62.88
step
talk Leora##207636
fpath Central Encampment |goto The Emerald Dream/0 51.09,62.35 |q 77283
step
talk Keeper Amrymn##208143
Find Keeper Amrymn |q 77283/2 |goto The Emerald Dream/0 50.21,61.59
step
talk Keeper Amrymn##208143
accept A Worthy Ally: Dream Wardens##78444 |goto The Emerald Dream/0 50.21,61.59
|only if questactive(78444)
step
talk Saelienne##207627
|tip Inside the tent.
Find Saelienne |q 77283/1 |goto The Emerald Dream/0 49.85,61.64
step
talk Saelienne##207627
|tip Inside the tent.
home Central Encampment |goto The Emerald Dream/0 49.85,61.64 |q 77283
step
talk Lady Moonberry##208669
accept Dreams Unified##78381 |goto The Emerald Dream/0 49.78,62.49
step
talk Vaskarn##211328
accept It Starts With a Stone##78262 |goto The Emerald Dream/0 49.79,62.94
step
talk Vaskarn##211328
Find Vaskarn |q 77283/3 |goto The Emerald Dream/0 49.79,62.95
step
Collect #50# Flightstones |q 78262/1 |goto The Emerald Dream/0 49.79,62.94
|tip You should have 50 of these from the quests completed so far.
step
talk Cuzolth##211329
|tip You should have a piece of gear by now to upgrade.
|tip Drag it to the window and click the "Upgrade" button.
Upgrade a Piece of Equipment with Flightstones |q 78262/2 |goto The Emerald Dream/0 49.85,62.90
step
talk Vaskarn##211328
turnin It Starts With a Stone##78262 |goto The Emerald Dream/0 49.79,62.95
accept Dreaming of Crests##78271 |goto The Emerald Dream/0 49.79,62.95
step
talk Merithra##206896
turnin A Multi-Front Battle##77283 |goto The Emerald Dream/0 50.80,62.88
accept The Burning Barrow##77436 |goto The Emerald Dream/0 50.80,62.88
step
talk Tyrande Whisperwind##206247
|tip On the ground and not up on the cliff.
turnin The Burning Barrow##77436 |goto The Emerald Dream/0 51.40,43.07
accept Ashen Soil##76433 |goto The Emerald Dream/0 51.40,43.07
accept Not Yet Lost##76434 |goto The Emerald Dream/0 51.40,43.07
stickystart "Assist_the_Burning_Barrow"
step
Follow the path down |goto Sor'theril Barrow Den/0 44.88,72.28 < 7 |walk
Continue following the path |goto Sor'theril Barrow Den/0 37.80,44.89 < 7 |walk
Continue following the path |goto Sor'theril Barrow Den/0 60.04,23.31 < 7 |walk
Find the Druid of the Flame |q 76433/1 |goto Sor'theril Barrow Den/0 64.78,58.65
|tip Inside the cave.
step
label "Assist_the_Burning_Barrow"
Kill enemies around this area
clicknpc Harried Dryad##206375+
|tip Inside the cave.
Assist the Burning Barrow |q 76434/1 |goto Sor'theril Barrow Den/0 42.87,30.17
step
talk Tyrande Whisperwind##206247
turnin Ashen Soil##76433 |goto The Emerald Dream/0 51.43,42.71
turnin Not Yet Lost##76434 |goto The Emerald Dream/0 51.43,42.71
accept The Smoldering Copse##76435 |goto The Emerald Dream/0 51.43,42.71
step
talk Tyrande Whisperwind##207160
turnin The Smoldering Copse##76435 |goto The Emerald Dream/0 40.80,47.50
accept Burning Ground##76437 |goto The Emerald Dream/0 40.80,47.50
accept Grim Reprisal##76441 |goto The Emerald Dream/0 40.80,47.50
stickystart "Disrupt_the_Smoldering_Copse"
step
talk Lyandris Thorngale##210257
Select _"<Take the journal.>"_
Find Lyandris Thorngale |q 77948/1 |goto The Emerald Dream/0 37.99,47.21
step
click Singed Leaflet
accept A Passed Torch##77978 |goto The Emerald Dream/0 38.00,47.21
stickystart "Kill_Smoldering_Enforcer"
stickystart "Rescue_Captured_Denizens"
step
click Singed Leaflet##408809+
|tip They look like small burned pages on the ground around this area.
|tip They appear on your minimap as yellow dots.
collect 6 Singed Leaflet##209048 |q 77978/1 |goto The Emerald Dream/0 35.97,46.61
step
label "Kill_Smoldering_Enforcer"
kill 6 Smoldering Enforcer##206859 |q 77978/2 |goto The Emerald Dream/0 35.72,45.81
step
label "Rescue_Captured_Denizens"
click Smolderbark Cage+
|tip They look like large wooden cages around this area.
Rescue #8# Captured Denizens |q 76437/1 |goto The Emerald Dream/0 34.25,47.46
You can find more around [36.91,49.00]
step
Enter the cave |goto The Emerald Dream/0 34.68,44.88 < 7 |walk
talk Thaeldus Thorngale##210256
|tip Inside the cave.
Select _"Your sister Solarys sent me to find you."_
Find Thaeldus Thorngale |q 77948/2 |goto The Emerald Dream/0 34.35,44.28
step
talk Kery'nael Thorngale##210251
Select _"Your sister Solarys sent me to find you. Are you alright?"_
Find Kery'nael Thorngale |q 77948/3 |goto The Emerald Dream/0 38.79,43.58
step
label "Disrupt_the_Smoldering_Copse"
Kill enemies around this area
click Smoldering Supplies
Disrupt the Smoldering Copse |q 76441/1 |goto The Emerald Dream/0 35.64,46.89
step
talk Tyrande Whisperwind##207160
turnin Burning Ground##76437 |goto The Emerald Dream/0 35.99,50.93
turnin Grim Reprisal##76441 |goto The Emerald Dream/0 35.99,50.93
accept Forlorn Hope##76442 |goto The Emerald Dream/0 35.99,50.93
step
talk Tyrande Whisperwind##207160
Select _"I am ready."_
Speak to Tyrande |q 76442/1 |goto The Emerald Dream/0 36.00,50.94
step
kill Sylvanesh the Ascended##207107 |q 76442/2 |goto The Emerald Dream/0 35.37,49.47
step
talk Tyrande Whisperwind##211193
turnin Forlorn Hope##76442 |goto The Emerald Dream/0 36.14,50.87
accept The Looming Cinder##76443 |goto The Emerald Dream/0 36.14,50.87
step
talk Merithra##206896
turnin The Looming Cinder##76443 |goto The Emerald Dream/0 50.80,62.88
step
use the Mark of the Dream Wardens##210730
Consume the Reputation Token |complete itemcount(210730) == 0
step
talk Vyranoth##208506
accept Mayhem Incarnate##76403 |goto The Emerald Dream/0 50.81,62.73
step
talk Solarys Thorngale##210196
turnin Burning Out##77948 |goto The Emerald Dream/0 50.86,63.62
turnin A Passed Torch##77978 |goto The Emerald Dream/0 50.86,63.62
step
use the Bounty of the Fallen Defector##210921
Consume the Reputation Token |complete itemcount(210921) == 0
step
talk Keeper Amrymn##208143
turnin A Worthy Ally: Dream Wardens##78444 |goto The Emerald Dream/0 50.21,61.60
|only if readyq(78444) or completedq(78444)
step
talk Vyranoth##206612
turnin Mayhem Incarnate##76403 |goto The Emerald Dream/0 36.83,25.86
accept Best Laid Plans##76343 |goto The Emerald Dream/0 36.83,25.86
step
talk Buri##206619
accept Light 'Em Up!##76342 |goto The Emerald Dream/0 36.85,26.08
stickystart "Hinder_the_Primalist_Forces"
step
click Proto-Dragon Tablet
Find the Clue |q 76343/1 |goto The Emerald Dream/0 37.20,22.94 |count 1
step
click Proto-Dragon Tablet
Find the Clue |q 76343/1 |goto The Emerald Dream/0 36.21,21.04 |count 2
step
click Proto-Dragon Tablet
Find the Clue |q 76343/1 |goto The Emerald Dream/0 36.03,20.20 |count 3
step
click Proto-Dragon Tablet
Find the Clue |q 76343/1 |goto The Emerald Dream/0 34.65,20.08 |count 4
step
label "Hinder_the_Primalist_Forces"
Kill enemies around this area
clicknpc Flamecrested Portalweaver##208418+
Hinder the Primalist Forces |q 76342/1 |goto The Emerald Dream/0 36.43,22.06
step
talk Vyranoth##206612
turnin Best Laid Plans##76343 |goto The Emerald Dream/0 36.83,25.86
step
talk Buri##206619
turnin Light 'Em Up!##76342 |goto The Emerald Dream/0 36.85,26.09
accept Primalist Directive##76344 |goto The Emerald Dream/0 36.85,26.09
step
talk Vyranoth##206612
accept Finding Terro##76345 |goto The Emerald Dream/0 36.83,25.86
step
Investigate the Scorching Chasm |q 76345/1 |goto The Emerald Dream/0 39.98,20.09
step
talk Terro##208377
Select _"<Investigate Terro's body.>"_
Investigate Terro's Corpse |q 76345/2 |goto The Emerald Dream/0 39.94,20.06
step
Watch the dialogue
kill 1 Igneous Stonemauler##210043 |q 76345/3 |goto The Emerald Dream/0 40.11,20.08
step
Talk to Dreambreaker NPCs around this area
|tip Some of them will attack you.
Sway #5# Primalists |q 76344/1 |goto The Emerald Dream/0 40.04,21.68
step
talk Buri##210178
turnin Primalist Directive##76344 |goto The Emerald Dream/0 39.61,22.90
turnin Finding Terro##76345 |goto The Emerald Dream/0 39.61,22.90
accept Assault on the Wellspring##76532 |goto The Emerald Dream/0 39.61,22.90
step
talk Buri##208674
Select _"<Look where Buri is indicating.>"_
Observe the Wellspring of Life |q 76532/1 |goto The Emerald Dream/0 33.56,30.53
step
talk Suzska##208378
turnin Assault on the Wellspring##76532 |goto The Emerald Dream/0 27.63,32.19
accept Big Bright Beautiful Barrier##76348 |goto The Emerald Dream/0 27.63,32.19
step
click Barrier Fragment+
|tip They look like green crystals laying on the ground around this area.
Retrieve #6# Barrier Fragments |q 76348/1 |goto The Emerald Dream/0 28.19,31.20
step
extraaction Heal Barrier##423058
Heal the Barrier |q 76348/2 |goto The Emerald Dream/0 28.04,31.23
step
talk Suzska##208378
Select _"The barrier has been repaired."_
Speak with Suzska |q 76348/3 |goto The Emerald Dream/0 27.63,32.19
step
talk Suzska##208725
turnin Big Bright Beautiful Barrier##76348 |goto The Emerald Dream/0 33.51,30.27
accept Power, Eruption, and Lies##76347 |goto The Emerald Dream/0 33.51,30.27
step
kill Lethka##208740 |q 76347/1 |goto The Emerald Dream/0 30.20,22.35
step
talk Vyranoth##210733
turnin Power, Eruption, and Lies##76347 |goto The Emerald Dream/0 33.73,25.25
accept Tactical Withdrawal##77178 |goto The Emerald Dream/0 33.73,25.25
step
talk Thevelo##209427
fpath Wellspring Overlook |goto The Emerald Dream/0 35.65,33.64 |q 77178
step
talk Alexstrasza the Life-Binder##208503
turnin Tactical Withdrawal##77178 |goto The Emerald Dream/0 50.76,62.83
step
use the Scales of Remorse##210757
Consume the Reputation Token |complete itemcount(210757) == 0
step
talk Ysera##206408
accept Eye of Ysera##76327 |goto The Emerald Dream/0 50.85,62.91
step
talk Cenarius##209318
accept The Dryad Garden##76566 |goto The Emerald Dream/0 50.78,62.09
accept The Q'onzu Query##78065 |goto The Emerald Dream/0 50.78,62.09
step
talk Lady Moonberry##208669
accept Trouble at the Tree##77316 |goto The Emerald Dream/0 49.78,62.49
step
kill Scheming Spriggan##208721+
kill Sneaky Spriggan##208718+
collect 6 Very Important Tree Supplies##208977 |q 77316/1 |goto The Emerald Dream/0 50.14,61.39
step
talk Lady Moonberry##208669
turnin Trouble at the Tree##77316 |goto The Emerald Dream/0 49.79,62.49
accept Hatted Hibernation##77317 |goto The Emerald Dream/0 49.79,62.49
step
clicknpc Dreaming Druid with a Hat##210344
|tip Use the hat on the druid in the tent.
use the Silly Hat##208985
kill Manifested Dreamsaber##210320
Place the Silly Hat on the Dreaming Druid |q 77317/1 |goto The Emerald Dream/0 49.94,61.55 |count 1
step
clicknpc Dreaming Druid with a Hat##210315
|tip Use the hat on the druid.
use the Silly Hat##208985
kill Manifested Dreamsaber##210320
Place the Silly Hat on the Dreaming Druid |q 77317/1 |goto The Emerald Dream/0 50.92,62.06 |count 2
step
clicknpc Dreaming Druid with a Hat##210316
|tip Use the hat on the druid.
use the Silly Hat##208985
kill Manifested Dreamsaber##210320
Place the Silly Hat on the Dreaming Druid |q 77317/1 |goto The Emerald Dream/0 51.31,61.93 |count 3
step
clicknpc Dreaming Druid with a Hat##210312
|tip Use the hat on the druid in the tent.
use the Silly Hat##208985
kill Manifested Dreamsaber##210320
Place the Silly Hat on the Dreaming Druid |q 77317/1 |goto The Emerald Dream/0 52.48,62.61 |count 4
step
clicknpc Dreaming Druid with a Hat##210320
|tip Use the hat on the druid.
use the Silly Hat##208985
kill Manifested Dreamsaber##210320
Place the Silly Hat on the Dreaming Druid |q 77317/1 |goto The Emerald Dream/0 51.21,63.48 |count 5
step
clicknpc Dreaming Druid with a Hat##210315
|tip Use the hat on the druid.
use the Silly Hat##208985
kill Manifested Dreamsaber##210320
Place the Silly Hat on the Dreaming Druid |q 77317/1 |goto The Emerald Dream/0 50.47,63.58 |count 6
step
talk Icarius##210133
accept A Sleepy Search##77896 |goto The Emerald Dream/0 50.29,63.36
step
talk Lady Moonberry##208669
turnin Hatted Hibernation##77317 |goto The Emerald Dream/0 49.79,62.49
accept Merithra Says##77318 |goto The Emerald Dream/0 49.79,62.49
step
talk Lady Moonberry##208669
Select _"<Get Merithra costume.>"_
Get Merithra's Disguise from Lady Moonberry |q 77318/1 |goto The Emerald Dream/0 49.79,62.49
step
talk Sian'Shim##210402
Select _"<Tell the druid to make cupcakes.>"_
Give the Instructions to the Druid |q 77318/2 |goto The Emerald Dream/0 50.09,62.47 |count 1
step
talk Malia Pierce##208737
Select _"<Tell the druid to start a dance party.>"_
Give the Instructions to the Druid |q 77318/2 |goto The Emerald Dream/0 50.12,62.50 |count 2
step
talk Yonpak Ambercrest##210400
Select _"<Give the druid a list of instructions to read to others around camp.>"_
Give the Instructions to the Druid |q 77318/2 |goto The Emerald Dream/0 51.00,62.28 |count 3
step
talk Edith Morgan##210401
Select _"<Tell the druid to make flower crowns so that all the volunteers can match.>"_
Give the Instructions to the Druid |q 77318/2 |goto The Emerald Dream/0 50.91,61.88 |count 4
step
talk Dodon Silverwing##210403
Select _"<Tell the druid to collect luminescent redberries.>"_
Give the Instructions to the Druid |q 77318/2 |goto The Emerald Dream/0 50.29,61.18 |count 5
step
talk Lady Moonberry##208669
turnin Merithra Says##77318 |goto The Emerald Dream/0 49.79,62.49
step
use the Spare Party Hat##210997
Consume the Reputation Token |complete itemcount(210997) == 0
step
talk Ethidris Creekward##207779
turnin The Dryad Garden##76566 |goto The Emerald Dream/0 53.73,74.55
accept Grousing Garden##76567 |goto The Emerald Dream/0 53.73,74.55
accept Pineshrew Panic##76568 |goto The Emerald Dream/0 53.73,74.55
stickystart "Tire_Out_Wildlife"
step
Click animals around this area
|tip Click the various small animals to shake seeds.
Shake #20# Pineshrew Seeds |q 76568/1 |goto The Emerald Dream/0 54.40,75.69
step
clicknpc Big Snaggleclaw##209291
Retrieve Big Snaggleclaw |q 76568/2 |goto The Emerald Dream/0 53.95,77.26
step
Watch the dialogue
Retrieve Big Snaggleclaw |q 76568/3 |goto The Emerald Dream/0 53.95,77.26
step
label "Tire_Out_Wildlife"
Kill enemies around this area
Tire Out #20# Wildlife |q 76567/1 |goto The Emerald Dream/0 54.40,75.69
step
talk Ethidris Creekward##207779
Select _"A big pineshrew hopped into a puddle and this dryad appeared."_
Tell Ethidris About the Dryad |q 76568/4 |goto The Emerald Dream/0 53.74,74.55
step
talk Ethidris Creekward##207779
turnin Grousing Garden##76567 |goto The Emerald Dream/0 53.74,74.55
turnin Pineshrew Panic##76568 |goto The Emerald Dream/0 53.74,74.55
accept Druid-Guardian Conference##76569 |goto The Emerald Dream/0 53.74,74.55
step
talk Ethidris Creekward##207779
Answer Ethidris's Questions |q 76569/1 |goto The Emerald Dream/0 53.74,74.55
|tip Choose the reponses you prefer.
step
talk Ethidris Creekward##207779
turnin Druid-Guardian Conference##76569 |goto The Emerald Dream/0 53.74,74.55
accept The Family Business##76570 |goto The Emerald Dream/0 53.74,74.55
step
use the Dryad-Keeper Credentials##211371
Consume the Reputation Token |complete itemcount(211371) == 0
step
talk Melyrine Petalshade##207781
accept Growth Experience##76571 |goto The Emerald Dream/0 53.76,74.51
step
Enter the cave |goto The Emerald Dream/0 58.04,77.77 < 7 |walk
talk Thaalean##210164
|tip Inside the cave.
turnin A Sleepy Search##77896 |goto The Emerald Dream/0 58.13,77.31
accept Build-a-Blanket##77911 |goto The Emerald Dream/0 58.13,77.31
accept Fluffy Filler Retrieval##77922 |goto The Emerald Dream/0 58.13,77.31
stickystart "Collect_Velvety_Lasher_Leaves"
step
click Voluptuous Vines##408130+
|tip They look like large clumps of leaves on the ground around this area.
collect 8 Silky Sage##208931 |q 77922/1 |goto The Emerald Dream/0 59.40,79.75
step
label "Collect_Velvety_Lasher_Leaves"
Kill Velveteen enemies around this area
collect 6 Velvety Lasher Leaves##208930 |q 77911/1 |goto The Emerald Dream/0 59.40,79.75
step
Enter the cave |goto The Emerald Dream/0 58.04,77.78 < 7 |walk
talk Thaalean##210164
|tip Inside the cave.
turnin Build-a-Blanket##77911 |goto The Emerald Dream/0 58.13,77.31
turnin Fluffy Filler Retrieval##77922 |goto The Emerald Dream/0 58.13,77.31
accept Heated Hearthstone Hustle##77955 |goto The Emerald Dream/0 58.13,77.31
stickystart "Collect_Lasher_Hearts"
step
click Prepared Soil+
|tip They look like large mounds of dirt on the ground around this area.
Grow #5# Flowers |q 76571/1 |goto The Emerald Dream/0 58.98,71.86
step
label "Collect_Lasher_Hearts"
kill Sickly Lasher##207809+
collect 6 Lasher Heart##208732 |q 76570/1 |goto The Emerald Dream/0 58.80,72.14
step
_Next to you:_
talk Dionaessa##210813
turnin The Family Business##76570 |goto The Emerald Dream/0 58.80,72.14
turnin Growth Experience##76571 |goto The Emerald Dream/0 58.80,72.14
accept A Poisonous Promotion##76572 |goto The Emerald Dream/0 58.80,72.14
step
kill 1 Sickened Growth##207926 |q 76572/1 |goto The Emerald Dream/0 58.03,72.39
step
kill The Stonewarmer##210235
|tip He walks around the tree.
collect 1 Heated Hearthstone##208949 |q 77955/1 |goto The Emerald Dream/0 59.72,68.95
step
Enter the cave |goto The Emerald Dream/0 58.04,77.78 < 7 |walk
talk Thaalean##210164
|tip Inside the cave.
Select _"<Give Thaalean the Heated Hearthstone.>"_
Give the Heated Hearthstone to Thaalean |q 77955/2 |goto The Emerald Dream/0 58.13,77.31
step
Watch the dialogue
|tip Inside the cave.
Wait for Thaalean |complete readyq(77955) or completedq(77955) |goto The Emerald Dream/0 58.13,77.31
step
talk Thaalean##210164
|tip Inside the cave.
turnin Heated Hearthstone Hustle##77955 |goto The Emerald Dream/0 58.13,77.31
accept Sleepy Druid in Emerald Dream##77958 |goto The Emerald Dream/0 58.13,77.31
step
talk Thaalean##210718
|tip Inside the cave.
Select _"<Sing a lullaby.>"_
|tip Choose whatever you want.
Sing a Lullaby to Thaalean |q 77958/1 |goto The Emerald Dream/0 58.15,77.33
step
talk Dionaessa##209788
turnin A Poisonous Promotion##76572 |goto The Emerald Dream/0 53.77,74.60
accept What Do I Call You?##77802 |goto The Emerald Dream/0 53.77,74.60
step
talk Dionaessa##209788
|tip Choose a title from the available options that you prefer.
Speak with Dionaessa to Choose a Title |q 77802/1 |goto The Emerald Dream/0 53.77,74.60
step
talk Dionaessa##209788
turnin What Do I Call You?##77802 |goto The Emerald Dream/0 53.77,74.60
step
use Crown of the Dryad Daughter##210958
Consume the Reputation Token |complete itemcount(210958) == 0
step
talk Icarius##210133
turnin Sleepy Druid in Emerald Dream##77958 |goto The Emerald Dream/0 50.29,63.36
step
use the Spare Heated Hearthstone##210952
Consume the Reputation Token |complete itemcount(210952) == 0
step
Find Q'onzu's Nest |q 78065/1 |goto The Emerald Dream/0 34.74,68.94
step
talk Dreamkin##210646
turnin The Q'onzu Query##78065 |goto The Emerald Dream/0 34.74,68.94
accept Q'onzu's Qualification##78163 |goto The Emerald Dream/0 34.74,68.94
step
talk Dreamkin##211678
|tip Answer "Powerful. Thriving."
Answer the Question |q 78163/1 |goto The Emerald Dream/0 34.57,68.91 |count 1
step
talk Dreamkin##211663
|tip Answer "A moonkin."
Answer the Question |q 78163/1 |goto The Emerald Dream/0 34.61,68.79 |count 2
step
talk Dreamkin##211511
|tip Answer "A spiral."
Answer the Question |q 78163/1 |goto The Emerald Dream/0 34.67,68.66 |count 3
step
talk Dreamkin##211668
|tip Answer "Stasis."
Answer the Question |q 78163/1 |goto The Emerald Dream/0 34.69,68.55 |count 4
step
Watch the dialogue
talk Q'onzu##210524
turnin Q'onzu's Qualification##78163 |goto The Emerald Dream/0 34.65,69.31
accept Q'onzu's Perception##78064 |goto The Emerald Dream/0 34.65,69.31
step
use the Bag of Many Wonders##211373
Open the Bag |complete itemcount(211373) == 0
step
use Q'onzu's Consolation Prize##211372
Consume the Reputation Token |complete itemcount(211372) == 0
step
Enter the cave |goto The Emerald Dream/0 32.96,67.09 < 7 |walk
Find the Interloper |q 78064/1 |goto The Emerald Dream/0 33.25,67.41
|tip Inside the cave.
step
talk Q'onzu##210524
turnin Q'onzu's Perception##78064 |goto The Emerald Dream/0 34.63,69.33
accept Q'onzu's Distraction##78162 |goto The Emerald Dream/0 34.63,69.33
step
use Q'onzu's Faerie Feather##210227
clicknpc Invasive Podling##211781+
|tip Weaken them to 50% and use the feather on them.
Transmogrify #8# Weakened Podlings |q 78162/1 |goto The Emerald Dream/0 36.91,65.78
step
talk Q'onzu##210524
turnin Q'onzu's Distraction##78162 |goto The Emerald Dream/0 34.61,69.32
accept The Answers You've Earned##78066 |goto The Emerald Dream/0 34.61,69.32
step
talk Q'onzu##210524
Select _"How old are you?"_
Ask Q'onzu Questions |q 78066/1 |goto The Emerald Dream/0 34.61,69.32
step
talk Cenarius##209318
Select _"Q'onzu told me to ask other people about their story."_
Tell Cenarius What Q'onzu Said |q 78066/2 |goto The Emerald Dream/0 50.78,62.09
step
talk Gossiping Dryad##211799
Select _"Do you know anything about Q'onzu?"_
Hear the Dryad's Rumor |q 78066/5 |goto The Emerald Dream/0 53.14,63.12
step
talk Aessina##211814
|tip The blue floating wisp under the tree.
Select _"Do you know anything about Q'onzu?"_
Hear Aessina's Story |q 78066/4 |goto The Emerald Dream/0 52.52,66.62
step
talk Aviana##211808
|tip Up on the root.
Select _"Do you know anything about Q'onzu?"_
Hear Aviana's Story |q 78066/3 |goto The Emerald Dream/0 49.65,65.88
step
talk Cenarius##209318
Select _"<Tell Cenarius of the rumors you heard.>"_
Share Rumors with Cenarius |q 78066/6 |goto The Emerald Dream/0 50.78,62.08
step
Question Q'onzu About the Rumors |q 78066/7 |goto The Emerald Dream/0 34.65,69.25
step
talk Single Feather##211821
turnin The Answers You've Earned##78066 |goto The Emerald Dream/0 34.65,69.25
step
use the Tangled Yarn of Secrets##211374
Consume the Reputation Token |complete itemcount(211374) == 0
step
use the Tangled Yarn of Secrets##211377
Consume the Reputation Token |complete itemcount(211377) == 0
step
use the Tangled Yarn of Secrets##211379
Consume the Reputation Token |complete itemcount(211379) == 0
step
use the Tangled Yarn of Secrets##211380
Consume the Reputation Token |complete itemcount(211380) == 0
step
use the Insight of Q'onzu##210950
Consume the Reputation Token |complete itemcount(210950) == 0
step
talk Cenarius##209318
accept Sky Mother's Ire##78041 |goto The Emerald Dream/0 50.78,62.09
step
talk Delaryn Summermoon##209516
accept A Call to Aid##77662 |goto The Emerald Dream/0 50.14,61.04
step
click Portal to the Eye of Ysera
Take the Portal into the Eye of Ysera |q 76327/1 |goto The Emerald Dream/0 50.96,62.60
step
talk Merithra##206416
turnin Eye of Ysera##76327 |goto The Emerald Dream/0 52.11,29.25
accept A New Brute##76328 |goto The Emerald Dream/0 52.11,29.25
step
clicknpc Emerald Preserver##206480
Imbue the Preserver |q 76328/1 |goto The Emerald Dream/0 52.17,29.61 |count 1
step
clicknpc Emerald Preserver##210701
Imbue the Preserver |q 76328/1 |goto The Emerald Dream/0 52.31,29.90 |count 2
step
clicknpc Emerald Preserver##210702
Imbue the Preserver |q 76328/1 |goto The Emerald Dream/0 51.91,30.39 |count 3
step
clicknpc Emerald Preserver##210703
Imbue the Preserver |q 76328/1 |goto The Emerald Dream/0 51.38,29.73 |count 4
step
clicknpc Emerald Preserver##210704
Imbue the Preserver |q 76328/1 |goto The Emerald Dream/0 51.69,29.06 |count 5
step
talk Ysera##206408
|tip Inside the building.
Check in on Ysera |q 76328/2 |goto The Emerald Dream/0 52.83,27.97
step
talk Merithra##206406
|tip She runs to this location inside the building.
turnin A New Brute##76328 |goto The Emerald Dream/0 52.72,28.17
accept Fire Watch##78646 |goto The Emerald Dream/0 52.72,28.17
step
talk Merithra##206406
turnin Fire Watch##78646 |goto The Emerald Dream/0 52.14,24.23
accept In and Out Scout##76329 |goto The Emerald Dream/0 52.14,24.23
accept Disarm Specialist##76330 |goto The Emerald Dream/0 52.14,24.23
stickystart "Destroy_Suffusion_Supplies"
stickystart "Slay_Suffusion_Shapers"
step
use Somnowl's Shroud##210016
|tip You may need to walk around the area a bit after entering stealth to get credit.
Spy on Moltenbinder |q 76329/1 |goto The Emerald Dream/0 46.39,18.96
step
use Somnowl's Shroud##210016
Spy on The Anvil |q 76329/2 |goto The Emerald Dream/0 44.54,23.97
step
label "Destroy_Suffusion_Supplies"
click Suffusion Supplies
|tip They look like collections of pots around this area.
Destroy #8# Suffusion Supplies |q 76330/2 |goto The Emerald Dream/0 45.71,23.34
step
label "Slay_Suffusion_Shapers"
kill 6 Suffusion Shaper##208676 |q 76330/1 |goto The Emerald Dream/0 45.71,23.34
step
talk Bodwin##209153
Select _"Let's see what Igira the Cruel is up to."_
Spy on Igira the Cruel |q 76329/3 |goto The Emerald Dream/0 48.44,22.39
step
talk Merithra##206406
turnin In and Out Scout##76329 |goto The Emerald Dream/0 52.14,24.23
turnin Disarm Specialist##76330 |goto The Emerald Dream/0 52.14,24.23
step
talk Merithra##206406
|tip Inside the building.
accept Good Counsel##76334 |goto The Emerald Dream/0 53.06,28.20
step
Regroup with Merithra |q 76334/1 |goto The Emerald Dream/0 53.06,28.19
|tip Inside the building.
step
talk Lord Itharius##206411
|tip Inside the building.
Select _"What do you think about Merithra's plan?"_
Speak to the Green Dragon |q 76334/2 |goto The Emerald Dream/0 52.89,28.32 |count 1
step
talk Somnikus##206409
|tip Inside the building.
Select _"What do you think about Merithra's plan?"_
Speak to the Green Dragon |q 76334/2 |goto The Emerald Dream/0 52.99,28.38 |count 2
step
talk Gerithus##206412
|tip Inside the building.
Select _"What do you think about Merithra's plan?"_
Speak to the Green Dragon |q 76334/2 |goto The Emerald Dream/0 53.04,28.28 |count 3
step
talk Ysera##206408
|tip Inside the building.
Select _"What do you think about Merithra's plan?"_
Speak with Ysera |q 76334/3 |goto The Emerald Dream/0 52.83,27.97
step
talk Merithra##206406
|tip Inside the building.
turnin Good Counsel##76334 |goto The Emerald Dream/0 53.06,28.20
accept Putting Roots Down##76332 |goto The Emerald Dream/0 53.06,28.20
step
click Tilled Soil+
|tip They look like mounds of dirt on the ground around this area.
kill Noxious Seedling##211410+
|tip They sometimes attack after clicking the soil.
Plant #8# Noxious Seeds |q 76332/1 |goto The Emerald Dream/0 55.06,26.79
step
talk Kiya Featherpaw##208909
Select _"Merithra said you have a plan to help defeat the djaradin."_
Speak to Kiya Featherpaw |q 76332/2 |goto The Emerald Dream/0 57.52,25.89
step
talk Somnikus##207081
Select _"The traps are prepared. We are ready."_
Speak to Somnikus |q 76332/3 |goto The Emerald Dream/0 56.97,23.18
step
talk Keeper Adranas##210022
accept Memory of the Dreamer##77310 |goto The Emerald Dream/0 58.73,23.92
step
click Comfy Pillow
Watch the dialogue
Rest at the Eye of Ysera |q 77310/1 |goto The Emerald Dream/0 58.55,24.09
step
talk Alexstrasza the Life-Binder##208713
turnin Memory of the Dreamer##77310 |goto The Emerald Dream/0 58.62,23.93
accept Healing Helper##77311 |goto The Emerald Dream/0 58.62,23.93
step
click Root Restoration Fruit##408066
collect 1 Root Restoration Fruit##208884 |q 77311/1 |goto The Emerald Dream/0 58.58,24.36
step
click Gracus
Apply the Fruit Juice |q 77311/2 |goto The Emerald Dream/0 58.80,23.84
step
talk Alexstrasza the Life-Binder##208713
turnin Healing Helper##77311 |goto The Emerald Dream/0 58.61,23.93
accept Nature Persists##77312 |goto The Emerald Dream/0 58.61,23.93
step
talk Ysera##208714
accept A Solemn Summons##77313 |goto The Emerald Dream/0 58.62,23.78
step
talk Somnikus##207081
Select _"The traps are prepared. We are ready."_
Speak to Somnikus |q 76332/3 |goto The Emerald Dream/0 56.97,23.18
stickystart "Collect_Sprouted_Seedlings"
step
talk Talathar Brightsong##208730
Select _"<Tell them about Gracus.>"_
Inform the Dream Denizen |q 77313/1 |goto The Emerald Dream/0 57.01,26.22 |count 1
step
talk Keeper Adranas##209398
Select _"<Tell them about Gracus.>"_
Inform the Dream Denizen |q 77313/1 |goto The Emerald Dream/0 57.65,28.10 |count 2
step
talk Alfie Turner##209407
Select _"<Tell them about Gracus.>"_
Inform the Dream Denizen |q 77313/1 |goto The Emerald Dream/0 56.91,29.36 |count 3
step
talk Eladriel##211353
fpath Eye of Ysera |goto The Emerald Dream/0 55.29,29.57 |q 77313
step
talk Admiral Peppers##209390
Select _"<Tell them about Gracus.>"_
Inform the Dream Denizen |q 77313/1 |goto The Emerald Dream/0 55.31,28.46 |count 4
step
talk Rani##209405
Select _"<Tell them about Gracus.>"_
Inform the Dream Denizen |q 77313/1 |goto The Emerald Dream/0 52.79,25.35 |count 5
step
talk Sprucecrown##209394
Select _"<Tell them about Gracus.>"_
Inform the Dream Denizen |q 77313/1 |goto The Emerald Dream/0 52.35,24.44 |count 6
step
label "Collect_Sprouted_Seedlings"
click Violet Forget-Me-Not+
|tip They look like clumps of purple flowers on the ground around this area.
kill Sneaky Podling##209835+
|tip They spawn after clicking the flowers.
collect 6 Sprouted Seedling##208676 |q 77312/1 |goto The Emerald Dream/0 55.88,26.93
step
talk Merithra##206406
|tip Inside the building.
turnin Putting Roots Down##76332 |goto The Emerald Dream/0 53.06,28.20
accept Merithra's Gambit##76331 |goto The Emerald Dream/0 53.06,28.20
step
talk Ysera##206408
|tip Inside the building.
Select _"I am ready."_
Ask Ysera to Lower the Eye's Defenses |q 76331/1 |goto The Emerald Dream/0 52.83,27.97
step
Watch the dialogue
talk Merithra##206406
turnin Merithra's Gambit##76331 |goto The Emerald Dream/0 52.89,28.03
accept Triple Threat##76333 |goto The Emerald Dream/0 52.89,28.03
accept Might of the Forest##76335 |goto The Emerald Dream/0 52.89,28.03
stickystart "Slay_Djaradin_Forces_and_Activate_Traps"
step
kill Moltenbinder##206477 |q 76333/2 |goto The Emerald Dream/0 54.27,25.45
step
kill Galok Wingslicer##209047 |q 76333/3 |goto The Emerald Dream/0 56.78,23.51
step
kill The Anvil##206478 |q 76333/1 |goto The Emerald Dream/0 56.85,28.32
step
label "Slay_Djaradin_Forces_and_Activate_Traps"
Kill enemies around this area
Click objects around this area
Slay Djaradin Forces and Activate Traps |q 76335/1 |goto The Emerald Dream/0 54.54,26.72
step
talk Merithra##206416
turnin Triple Threat##76333 |goto The Emerald Dream/0 57.34,26.14
turnin Might of the Forest##76335 |goto The Emerald Dream/0 57.34,26.14
accept Flight and Fight##76336 |goto The Emerald Dream/0 57.34,26.14
step
kill 25 Lava Sporebat##211877 |q 76336/2 |goto The Emerald Dream/0 55.06,29.23
|tip Fly through them in the air on your dragonriding mount.
step
talk Merithra##206416
Select _"I'm ready."_
Speak to Merithra |q 76336/3 |goto The Emerald Dream/0 51.50,30.31
step
talk Merithra##206406
turnin Flight and Fight##76336 |goto The Emerald Dream/0 51.97,29.48
accept The Ember Still Smolders##76337 |goto The Emerald Dream/0 51.97,29.48
step
talk Alexstrasza the Life-Binder##208713
turnin Nature Persists##77312 |goto The Emerald Dream/0 58.61,23.93
step
talk Ysera##208714
turnin A Solemn Summons##77313 |goto The Emerald Dream/0 58.62,23.77
accept Requiem in a Dream##77314 |goto The Emerald Dream/0 58.62,23.77
step
click Tilled Earth
Plant the First Sprout |q 77314/1 |goto The Emerald Dream/0 58.76,23.72 |count 1
step
click Tilled Earth
Plant the Second Sprout |q 77314/1 |goto The Emerald Dream/0 58.84,23.68 |count 2
step
click Tilled Earth
Plant the Third Sprout |q 77314/1 |goto The Emerald Dream/0 58.89,23.77 |count 3
step
click Tilled Earth
Plant the Fourth Sprout |q 77314/1 |goto The Emerald Dream/0 58.89,23.91 |count 4
step
click Tilled Earth
Plant the Fifth Sprout |q 77314/1 |goto The Emerald Dream/0 58.84,24.00 |count 5
step
click Tilled Earth
Plant the Sixth Sprout |q 77314/1 |goto The Emerald Dream/0 58.75,23.96 |count 6
step
talk Gracus##208671
Select _"<Ask Gracus how you can help.>"_
Talk to Gracus |q 77314/2 |goto The Emerald Dream/0 58.81,23.84
step
talk Ysera##208714
turnin Requiem in a Dream##77314 |goto The Emerald Dream/0 58.62,23.77
accept Ancient Memories##77315 |goto The Emerald Dream/0 58.62,23.77
step
use the Sprout of Rebirth##210954
Consume the Reputation Token |complete itemcount(210954) == 0
step
kill Lingering Torment##209564 |q 77315/1 |goto The Emerald Dream/0 54.77,18.24
step
talk Ysera##208714
turnin Ancient Memories##77315 |goto The Emerald Dream/0 58.62,23.77
step
use the Branch of Gracus##211370
Consume the Reputation Token |complete itemcount(211370) == 0
step
talk Sylvia Whisperbloom##211265
turnin Mysterious Seeds##78172 |goto The Emerald Dream/0 59.75,16.89
accept Seed Legacy##77209 |goto The Emerald Dream/0 59.75,16.89
step
use the Mysterious Ageless Seeds##210014
Plant the Small Seed |q 77209/1 |goto The Emerald Dream/0 59.73,15.85
step
use the Mysterious Ageless Seeds##210014
Plant the Plump Seed |q 77209/2 |goto The Emerald Dream/0 59.20,17.37
step
use the Mysterious Ageless Seeds##210014
Plant the Gigantic Seed |q 77209/3 |goto The Emerald Dream/0 60.11,18.19
step
talk Sylvia Whisperbloom##211265
turnin Seed Legacy##77209 |goto The Emerald Dream/0 59.75,16.89
accept Nurturing Ageless Seeds##78170 |goto The Emerald Dream/0 59.75,16.89
step
kill Encroaching Lashling##211235+
collect 15 Ageless Dewdrops##211406 |q 78170/1 |goto The Emerald Dream/0 59.50,17.20
step
click Ageless Dreamseed Bloom
|tip Click the "Ageless Dewdrops" button five times.
Nurture the Small Ageless Bloom #5# Times |q 78170/2 |goto The Emerald Dream/0 59.72,15.84
step
click Ageless Dreamseed Bloom
|tip Click the "Emeral Dewdrops" button five times.
Nurture the Plump Ageless Bloom #5# Times |q 78170/3 |goto The Emerald Dream/0 59.20,17.37
step
click Ageless Dreamseed Bloom
|tip Click the "Ageless Dewdrops" button five times.
Nurture the Gigantic Ageless Bloom #5# Times |q 78170/4 |goto The Emerald Dream/0 60.11,18.19
step
talk Sylvia Whisperbloom##211265
turnin Nurturing Ageless Seeds##78170 |goto The Emerald Dream/0 59.75,16.89
accept Blossoms of the Past##78171 |goto The Emerald Dream/0 59.75,16.89
step
click Ageless Blossom##410045
collect 1 Ageless Blossom##210052 |q 78171/1 |goto The Emerald Dream/0 59.64,15.80
step
click Ageless Blossom##410045
collect 2 Ageless Blossom##210052 |q 78171/1 |goto The Emerald Dream/0 59.20,17.37
step
click Ageless Blossom##410045
collect 3 Ageless Blossom##210052 |q 78171/1 |goto The Emerald Dream/0 60.16,18.07
step
talk Sylvia Whisperbloom##211265
turnin Blossoms of the Past##78171 |goto The Emerald Dream/0 59.75,16.89
accept Emerald Bounty##78206 |goto The Emerald Dream/0 59.75,16.89
step
talk Aviana##210587
|tip High up on the floating island.
turnin Sky Mother's Ire##78041 |goto The Emerald Dream/0 65.83,37.68
accept Aviana's Assessment##78042 |goto The Emerald Dream/0 65.83,37.68
step
talk Q'onzu##210585
|tip High up on the floating island.
accept Q'onzu's Quandary##78043 |goto The Emerald Dream/0 65.83,37.81
stickystart "Gather_Dreamkin_Intel"
stickystart "Collect_Bloodied_Armor_Scraps"
step
Kill enemies around this area
accept Ashphodel Research Notes##77788 |goto The Emerald Dream/0 61.60,42.48
|tip You will eventually accept this automatically after looting.
step
click Sample of Cinder Pollen##410764
collect 1 Sample of Cinder Pollen##210453 |q 77788/1 |goto The Emerald Dream/0 60.82,44.90
|only if haveq(77788)
step
label "Gather_Dreamkin_Intel"
talk Flame-Disguised Dreamkin##210679+
|tip They look like owlkin all over this area.
Select _"Q'onzu is interested in what you have learned about the Druids of the Flame."_
Gather #5# Dreamkin Intel |q 78043/1 |goto The Emerald Dream/0 61.19,45.13
step
label "Collect_Bloodied_Armor_Scraps"
Kill enemies around this area
collect 20 Bloodied Armor Scrap##209875 |q 78042/1 |goto The Emerald Dream/0 61.60,42.48
step
talk Q'onzu##210585
|tip High up on the floating island.
Select _"I found this bundle of flame pollen and these research notes with the Druids of the Flame."_
Watch the dialogue
Show Q'onzu the Pollen and the Research Notes |q 77788/2 |goto The Emerald Dream/0 65.83,37.81
step
Watch the dialogue
talk Q'onzu##210585
|tip High up on the floating island.
turnin Ashphodel Research Notes##77788 |goto The Emerald Dream/0 65.83,37.81
turnin Q'onzu's Quandary##78043 |goto The Emerald Dream/0 65.83,37.81
step
talk Aviana##210587
|tip High up on the floating island.
turnin Aviana's Assessment##78042 |goto The Emerald Dream/0 65.84,37.68
accept Uproot the Cause##78045 |goto The Emerald Dream/0 65.84,37.68
step
talk Q'onzu##210585
|tip High up on the floating island.
accept Appalling Pollen##78044 |goto The Emerald Dream/0 65.84,37.80
step
use the Treacherous Research Notes##210951
Consume the Reputation Token |complete itemcount(210951) == 0
stickystart "Collect_Uprooted_Ashphodel"
step
use Q'onzu's Vision Charm##210176
Use Q'onzu's Vision Charm |q 78044/1 |goto The Emerald Dream/0 57.68,37.03
step
use Q'onzu's Vision Charm##210176
|tip Use this to reveal nearby Cinderpollen Beasts.
|tip They will glow red.
Slay #10# Cinderpollen Beasts |q 78044/2 |goto The Emerald Dream/0 57.68,37.03
step
label "Collect_Uprooted_Ashphodel"
click Burning Ashphodel##410244+
|tip They look like large flaming flowers on the ground around this area.
collect 8 Uprooted Ashphodel##210136 |q 78045/1 |goto The Emerald Dream/0 57.68,37.03
step
talk Q'onzu##210585
turnin Appalling Pollen##78044 |goto The Emerald Dream/0 65.83,37.80
step
talk Aviana##210587
turnin Uproot the Cause##78045 |goto The Emerald Dream/0 65.83,37.68
accept Overseer Oversight##78046 |goto The Emerald Dream/0 65.83,37.68
step
kill Overseer Chardryn##210912 |q 78046/1 |goto The Emerald Dream/0 62.77,38.83
|tip He walks all over the camp.
step
talk Aviana##210587
|tip High up on the floating island.
turnin Overseer Oversight##78046 |goto The Emerald Dream/0 65.83,37.68
step
use the Charred Staff of the Overseer##211369
Consume the Reputation Token |complete itemcount(211369) == 0
step
talk Shandris Feathermoon##209083
turnin A Call to Aid##77662 |goto The Emerald Dream/0 49.60,46.16
accept Smother the Flames##77739 |goto The Emerald Dream/0 49.60,46.16
step
kill Sister Fae'da##210640
collect 1 Bear Spirit Stone##209430 |q 77739/3 |goto The Emerald Dream/0 49.29,43.93
step
kill Sister Eydlin##210643
collect 1 Wolf Spirit Stone##209428 |q 77739/1 |goto The Emerald Dream/0 49.12,42.86
step
kill Sister Jodnar##210641
collect 1 Leaf Spirit Stone##208770 |q 77739/2 |goto The Emerald Dream/0 50.61,43.54
step
kill Sister Sylasta##210642
collect 1 Moon Spirit Stone##209429 |q 77739/4 |goto The Emerald Dream/0 51.29,44.10
step
_Next to you:_
talk Shandris Feathermoon##209677
turnin Smother the Flames##77739 |goto The Emerald Dream/0 51.29,44.10
accept One Last Step##77664 |goto The Emerald Dream/0 51.29,44.10
step
kill Raelas Firewind##209152 |q 77664/1 |goto The Emerald Dream/0 49.88,42.71
step
talk Shandris Feathermoon##209799
turnin One Last Step##77664 |goto The Emerald Dream/0 55.23,42.36
step
use the Rune of the Fire Druids##210957
Consume the Reputation Token |complete itemcount(210957) == 0
step
talk Lilian Voss##209082
accept Bound to You##77665 |goto The Emerald Dream/0 55.20,42.35
step
talk Shae'lune##209159
Select _"Can you help us purify these stones?"_
Ask Shae'lune About the Stones |q 77665/1 |goto The Emerald Dream/0 55.19,42.22
step
talk Cyanthesa##209241
Select _"Let's start the ritual."_
Ask Cyanthesa to Cleanse the Stones |q 77665/2 |goto The Emerald Dream/0 51.58,42.13
step
click Vial of Moonwell Water
Retrieve the Vial of Moonwell Water |q 77665/3 |goto The Emerald Dream/0 51.69,42.17
step
extraaction Vial of Moonwell Water##421612
Watch the dialogue
Release the First Spirit |q 77665/4 |goto The Emerald Dream/0 51.65,42.15
step
extraaction Vial of Moonwell Water##422282
Watch the dialogue
Release the Second Spirit |q 77665/5 |goto The Emerald Dream/0 51.63,42.22
step
extraaction Vial of Moonwell Water##422298
Watch the dialogue
Release the Third Spirit |q 77665/6 |goto The Emerald Dream/0 51.56,42.25
step
kill Angered Dream Spirit##210454 |q 77665/7 |goto The Emerald Dream/0 51.57,42.25
step
extraaction Vial of  Moonwell Water##422314
Watch the dialogue
Release the Fourth Spirit |q 77665/8 |goto The Emerald Dream/0 51.53,42.19
step
talk Lilian Voss##209328
turnin Bound to You##77665 |goto The Emerald Dream/0 55.26,42.27
accept Under the Surface##77673 |goto The Emerald Dream/0 55.26,42.27
step
click Shandris's Mission Journal
Find Clues |q 77673/1 |goto The Emerald Dream/0 55.40,42.10
step
talk Keeper Sillas##209161
Select _"Have you seen Shandris?"_
Watch the dialogue
Ask Keeper Sillas if He Saw Shandris |q 77673/2 |goto The Emerald Dream/0 55.22,42.20
step
click Hasty Tracks
Search for More Clues |q 77673/3 |goto The Emerald Dream/0 56.25,45.19
step
click Confusing Tracks
Follow the Tracks |q 77673/4 |goto The Emerald Dream/0 53.96,47.15
step
click Heavy Tracks
Find More Tracks |q 77673/5 |goto The Emerald Dream/0 51.89,46.60
step
Enter the cave |goto The Emerald Dream/0 50.58,47.51 < 10 |walk
talk Lilian Voss##209323
|tip She runs to this location inside the cave.
turnin Under the Surface##77673 |goto The Emerald Dream/0 50.29,47.96
accept Wounds of the Past##77674 |goto The Emerald Dream/0 50.29,47.96
step
talk Shandris Feathermoon##209287
|tip Inside the cave.
Select _"Come with us. We will explain back at camp."_
Watch the dialogue
Speak to Shandris |q 77674/1 |goto The Emerald Dream/0 50.19,48.20
step
kill Anguished Dream Spirit##210304 |q 77674/2 |goto The Emerald Dream/0 50.20,48.18
|tip Inside the cave.
step
talk Lilian Voss##209328
turnin Wounds of the Past##77674 |goto The Emerald Dream/0 55.26,42.27
accept A Better Future, Together##77675 |goto The Emerald Dream/0 55.26,42.27
step
talk Shae'lune##209159
Select _"I am ready."_
Talk to Shae'lune About the Ritual |q 77675/1 |goto The Emerald Dream/0 55.19,42.22
stickystart "Collect_Somnium_Bark"
step
click Sleeping Glory+
|tip They look like small clumps of flowers on the ground around this area.
collect 5 Sleeping Glory##209051 |q 77675/3 |goto The Emerald Dream/0 56.37,45.47
step
label "Collect_Somnium_Bark"
click Somnium Bark+
|tip They look like small sticks on the ground around this area.
collect 2 Somnium Bark##209050 |q 77675/2 |goto The Emerald Dream/0 56.37,45.47
step
click Moon Water Ritual Bowl
Mix the Ingredients in the Bowl of Moon Water |q 77675/4 |goto The Emerald Dream/0 55.16,42.24
step
talk Shandris Feathermoon##209324
Select _"Here, try and drink this remedy."_
Watch the dialogue
Help Shandris Drink the Remedy |q 77675/5 |goto The Emerald Dream/0 55.23,42.25
step
talk Lilian Voss##209328
turnin A Better Future, Together##77675 |goto The Emerald Dream/0 55.26,42.27
step
use the Drops of Moon Water##211366
Consume the Reputation Token |complete itemcount(211366) == 0
step
talk Merithra##206896
turnin The Ember Still Smolders##76337 |goto The Emerald Dream/0 50.80,62.88
accept The Bloom Begins##76384 |goto The Emerald Dream/0 50.80,62.88
|tip This quest may not be available yet.
step
use the Tears of the Eye##210847
Consume the Reputation Token |complete itemcount(210847) == 0
step
talk Merithra##206896
Select _"(Play Movie) What can you tell me about the Bloom?"_
Speak to Merithra |q 76384/1 |goto The Emerald Dream/0 50.80,62.88
step
talk Merithra##206896
turnin The Bloom Begins##76384 |goto The Emerald Dream/0 50.80,62.88
step
talk Alexstrasza the Life-Binder##208503
accept Forward Unto Fire##76416 |goto The Emerald Dream/0 50.75,62.83
step
talk Alexstrasza the Life-Binder##208550
turnin Forward Unto Fire##76416 |goto The Emerald Dream/0 38.89,39.13
step
talk Vyranoth##208553
accept A Clash of Ice and Fire##76386 |goto The Emerald Dream/0 38.87,39.18
step
talk Merithra##208551
accept Hazardous Horticulture##76385 |goto The Emerald Dream/0 38.96,39.13
stickystart "Plant_Dream_Seeds"
stickystart "Slay_Wildfire_Forces"
step
use Frozenheart's Wrath##208544
|tip Use it on Calderamor.
kill 1 Calderamor##207136 |q 76386/2 |goto The Emerald Dream/0 35.54,40.27
step
use Frozenheart's Wrath##208544
kill 1 Ignarion##209360 |q 76386/3 |goto The Emerald Dream/0 33.44,41.00
step
label "Plant_Dream_Seeds"
click Dream Seed Dirt Pile+
|tip They look like large piles of dirt on the ground around this area.
Plant #6# Dream Seeds |q 76385/1 |goto The Emerald Dream/0 36.07,39.39
step
label "Slay_Wildfire_Forces"
Kill enemies around this area
Slay #15# Wildfire Forces |q 76386/4 |goto The Emerald Dream/0 35.62,39.76
step
talk Vyranoth##208553
turnin A Clash of Ice and Fire##76386 |goto The Emerald Dream/0 38.84,39.17
step
talk Merithra##208551
turnin Hazardous Horticulture##76385 |goto The Emerald Dream/0 38.63,39.16
step
talk Tyrande Whisperwind##208552
accept Defense of the Ancients##76387 |goto The Emerald Dream/0 38.66,39.15
step
talk Alexstrasza the Life-Binder##208550
accept A Scrap of Hope##76436 |goto The Emerald Dream/0 38.76,39.19
stickystart "Collect_Scraps_of_Parchment"
step
click Restraining Harpoon
Assist Gnarlroot |q 76387/1 |goto The Emerald Dream/0 39.26,36.10 |count 1
step
click Restraining Harpoon
Assist Gnarlroot |q 76387/1 |goto The Emerald Dream/0 39.44,35.10 |count 2
step
click Restraining Harpoon
Assist Gnarlroot |q 76387/1 |goto The Emerald Dream/0 38.67,35.00 |count 3
step
click Restraining Harpoon
|tip Up on the cliff.
Assist Shadebough |q 76387/4 |goto The Emerald Dream/0 39.02,34.63 |count 1
step
click Restraining Harpoon
|tip Up on the cliff.
Assist Shadebough |q 76387/4 |goto The Emerald Dream/0 38.78,34.73 |count 2
step
click Restraining Harpoon
|tip Up on the cliff.
Assist Shadebough |q 76387/4 |goto The Emerald Dream/0 38.63,34.42 |count 3
step
click Restraining Harpoon
Assist Elderbranch |q 76387/2 |goto The Emerald Dream/0 39.63,32.83 |count 1
step
click Restraining Harpoon
Assist Elderbranch |q 76387/2 |goto The Emerald Dream/0 38.81,31.83 |count 2
step
click Restraining Harpoon
Assist Elderbranch |q 76387/2 |goto The Emerald Dream/0 39.46,31.42 |count 3
step
click Restraining Harpoon
Assist Cloudsong |q 76387/3 |goto The Emerald Dream/0 41.09,33.76 |count 1
step
click Restraining Harpoon
Assist Cloudsong |q 76387/3 |goto The Emerald Dream/0 41.59,33.90 |count 2
step
click Restraining Harpoon
Assist Cloudsong |q 76387/3 |goto The Emerald Dream/0 41.01,34.99 |count 3
step
label "Collect_Scraps_of_Parchment"
Kill enemies around this area
collect 8 Scrap of Parchment##210023 |q 76436/1 |goto The Emerald Dream/0 38.82,36.24
step
talk Tyrande Whisperwind##208552
turnin Defense of the Ancients##76387 |goto The Emerald Dream/0 38.81,38.90
step
talk Alexstrasza the Life-Binder##208550
turnin A Scrap of Hope##76436 |goto The Emerald Dream/0 38.60,39.03
accept Fighting Fire With Fire##76388 |goto The Emerald Dream/0 38.60,39.03
step
click Skyfire Turret
Destroy the First Northern Skyfire Turret |q 76388/1 |goto The Emerald Dream/0 26.76,27.54 |count 1
step
click Skyfire Turret
Destroy the Second Northern Skyfire Turret |q 76388/1 |goto The Emerald Dream/0 26.47,28.94 |count 2
step
click Skyfire Turret
Destroy the Third Northern Skyfire Turret |q 76388/1 |goto The Emerald Dream/0 25.56,27.73 |count 3
step
extraaction Call Alexstrasza##420864
Mark the First Flame Ward |q 76388/2 |goto The Emerald Dream/0 25.92,27.52
step
click Skyfire Turret
Destroy the First Western Skyfire Turret |q 76388/3 |goto The Emerald Dream/0 25.14,31.90 |count 1
step
click Skyfire Turret
Destroy the Second Western Skyfire Turret |q 76388/3 |goto The Emerald Dream/0 24.52,31.60 |count 2
step
click Skyfire Turret
Destroy the Third Western Skyfire Turret |q 76388/3 |goto The Emerald Dream/0 23.71,32.50 |count 3
step
extraaction Call Alexstrasza##420864
Mark the Second Flame Ward |q 76388/4 |goto The Emerald Dream/0 24.15,32.30
step
click Skyfire Turret
Destroy the First Southern Skyfire Turret |q 76388/5 |goto The Emerald Dream/0 27.61,35.18 |count 1
step
click Skyfire Turret
Destroy the Second Southern Skyfire Turret |q 76388/5 |goto The Emerald Dream/0 28.26,34.14 |count 2
step
click Skyfire Turret
Destroy the Third Southern Skyfire Turret |q 76388/5 |goto The Emerald Dream/0 29.04,35.14 |count 3
step
extraaction Call Alexstrasza##420864
Mark the Final Flame Ward |q 76388/6 |goto The Emerald Dream/0 28.46,34.88
step
talk Tyrande Whisperwind##208568
turnin Fighting Fire With Fire##76388 |goto The Emerald Dream/0 34.97,35.34
accept The Age of Mortals##76389 |goto The Emerald Dream/0 34.97,35.34
step
talk Merithra##208567
accept Aerial Supremacy##76398 |goto The Emerald Dream/0 34.99,35.43
step
Strike #15# Proto-Drakes |q 76398/2 |goto The Emerald Dream/0 30.76,31.16
|tip Fly through the Proto-Drakes in the air on your dragonriding mount.
|tip Green orbs will restore 1 vigor.
step
use the Horn of Cenarius##208752
|tip Use it on friendly NPCs around this area.
Kill enemies around this area
Empower Heroes and Slay Enemies on the Field of Flames |q 76389/1 |goto The Emerald Dream/0 31.80,31.11
step
talk Tyrande Whisperwind##208574
|tip Up on the platform.
turnin The Age of Mortals##76389 |goto The Emerald Dream/0 35.09,33.43
step
talk Merithra##208573
|tip Up on the platform.
turnin Aerial Supremacy##76398 |goto The Emerald Dream/0 35.07,33.52
step
talk Alexstrasza the Life-Binder##208572
|tip Up on the platform.
accept Echo of the Firelands##76401 |goto The Emerald Dream/0 35.04,33.59
step
kill 1 Prophet of the Flame##207315 |q 76401/1 |goto The Emerald Dream/0 32.47,33.53
|tip Move out of areas targeted on the ground.
step
talk Alexstrasza the Life-Binder##206921
|tip You will be teleported shortly.
turnin Echo of the Firelands##76401 |goto The Emerald Dream/0 27.94,31.15
accept Amirdrassil, the Dream's Hope: Fyrakk##76402 |goto The Emerald Dream/0 27.94,31.15
step
talk Eran'nda##211240
|tip Inside the tent.
accept Great Crates!##78427 |goto The Emerald Dream/0 52.51,62.47
step
talk Vashonir##211236
|tip Inside the tent.
|tip Look at the various shipments and make one if you already have the materials using the "Package" button.
|tip If not, search through the list and choose one to make with materials you can purchase or farm.
|tip Use available guides to farm the materials required for your shipment.
Package a Shipment of Goods |q 78427/1 |goto The Emerald Dream/0 52.51,62.54
step
talk Eran'nda##211240
|tip Inside the tent.
turnin Great Crates!##78427 |goto The Emerald Dream/0 52.51,62.47
accept Crate of the Art##78428 |goto The Emerald Dream/0 52.51,62.47
step
talk Vashonir##211236
|tip Inside the tent.
|tip Look at the various shipments and make one if you already have the materials using the "Package" button.
|tip If not, search through the list and choose one to make with materials you can purchase or farm.
|tip Use available guides to farm the materials required for your shipments.
Package #5# Shipment of Goods |q 78428/1 |goto The Emerald Dream/0 52.51,62.54
step
talk Eran'nda##211240
turnin Crate of the Art##78428 |goto The Emerald Dream/0 52.51,62.47
step
Contribute a Dreamseed to an Emerald Bounty |q 78206/1 |goto The Emerald Dream/0 49.17,48.07
|tip Emerald bounties require you to plant a Dreamseed and tend to it for 3 minutes.
|tip You can earn Dreamseeds of various qualities by completing activities in The Emerald Dream.
|tip Use a Dreamseed near an Emerald Bounty node to start the event.
|tip Click on various objects around the event and kill event creatures to increase the quality of your reward.
[46.38,40.48]
[40.67,24.78]
[40.03,52.69]
[38.45,59.20]
[42.64,74.04]
[48.73,80.46]
[54.59,67.63]
[63.95,64.83]
[51.15,58.64]
[56.66,44.89]
[56.51,37.67]
[63.50,47.10]
step
Wait for an Emerald Frenzy to Begin |complete vignette(5859) or completedq(78206)
|tip Emerald Frenzy events appear on the map as crossed swords.
|tip When active, you can proceed to the event area and kill mobs to complete it.
step
Complete an Emerald Frenzy to Earn Emerald Dewdrops |q 78206/2 |goto The Emerald Dream/0 63.77,64.89
|tip Fly to the nearest Emerald Frenzy and kill mobs until the objective completes.
|tip These spawn in various areas all over The Emerald Dream.
step
Click the Complete Quest Box
turnin Emerald Bounty##78206 |goto The Emerald Dream/0 63.77,64.89
step
talk Wrathion##207350
accept A Dragon in Hand is Worth Two in the Roost##76460 |goto The Emerald Dream/0 50.88,62.81
step
talk Wrathion##207350
Select _" Tell me of the netherwing."_
Talk to Wrathion About the Netherwing |q 76460/1 |goto The Emerald Dream/0 50.88,62.81
step
talk Wrathion##207350
turnin A Dragon in Hand is Worth Two in the Roost##76460 |goto The Emerald Dream/0 50.88,62.81
accept Draconic Diplomacy##76461 |goto The Emerald Dream/0 50.88,62.81
step
Locate Mordenaku in Valdrakken |q 76461/1 |goto Thaldraszus/0 33.70,62.09
step
talk Wrathion##207350
Select _" What are you offering the netherwing?"_
Watch the dialogue
Talk to Wrathion |q 76461/2 |goto Thaldraszus/0 33.70,62.09
step
talk Mordenaku##207352
Select _" The mountains of Thaldraszus would make excellent roosts."_
Talk to Mordenaku |q 76461/3 |goto Thaldraszus/0 33.68,62.03
step
talk Wrathion##207350
turnin Draconic Diplomacy##76461 |goto Thaldraszus/0 33.70,62.09
accept A Dragon's Eye View##77195 |goto Thaldraszus/0 33.70,62.09
step
Locate the Potential Roost |q 77195/1 |goto Thaldraszus/0 61.22,73.18
|tip High up on the hidden cliff.
step
talk Wrathion##207350
|tip High up on the hidden cliff.
turnin A Dragon's Eye View##77195 |goto Thaldraszus/0 61.22,73.18
step
talk Vyranoth##207351
|tip High up on the hidden cliff.
accept Cavern Cleaning##76462 |goto Thaldraszus/0 61.21,73.22
stickystart "Freeze_Cave_Scuttlers"
stickystart "Destroy_Tarantula_Eggs"
step
kill Hecutta##207300 |q 76462/2 |goto Thaldraszus/0 62.15,72.88
|tip Inside the cave high up on the mountain.
step
label "Freeze_Cave_Scuttlers"
kill Cave Scuttler##207298+
|tip Walk over them to freeze them inside the cave high up on the mountain.
Freeze #100# Cave Scuttlers |q 76462/1 |goto Thaldraszus/0 62.17,73.57
step
label "Destroy_Tarantula_Eggs"
click Tarantula Egg+
|tip They look like large clusters of white eggs inside the cave high up on the mountain.
Destroy #5# Tarantula Eggs |q 76462/3 |goto Thaldraszus/0 62.17,73.57
step
talk Vyranoth##207351
|tip High up on the hidden cliff.
turnin Cavern Cleaning##76462 |goto Thaldraszus/0 61.21,73.22
step
talk Wrathion##207350
|tip High up on the hidden cliff.
accept A Whelping Hand##77197 |goto Thaldraszus/0 61.22,73.18
step
talk Mother Elion##185904
turnin A Whelping Hand##77197 |goto The Waking Shores/0 61.60,68.71
accept Delectable Delicacies##76463 |goto The Waking Shores/0 61.60,68.71
step
kill Juicy Beetle##207567+
collect 10 Juicy Beetle Bits##208060 |q 76463/1 |goto The Waking Shores/0 56.80,69.97
step
talk Mother Elion##185904
turnin Delectable Delicacies##76463 |goto The Waking Shores/0 61.60,68.71
step
talk Mordenaku##207352
accept Home in Time for Tea##77198 |goto The Waking Shores/0 61.54,68.75
step
Retire to the Roasted Ram |q 77198/1 |goto Valdrakken/0 48.43,49.64
step
talk Mordenaku##207352
|tip Inside the building.
turnin Home in Time for Tea##77198 |goto Valdrakken/0 46.93,47.90
step
talk Vyranoth##207351
|tip Inside the building.
accept The Thorignir##76464 |goto Valdrakken/0 46.72,47.77
step
click Portal to Stormheim
|tip Inside the building.
Take the Portal in the Roasted Ram Inn |q 76464/1 |goto Valdrakken/0 46.64,47.21
step
talk Thrymjaris##207570
Select _"Why haven't you gone to the Dragon Isles?"_
Speak with Thrymjaris |q 76464/2 |goto Stormheim/0 50.86,83.94
step
talk Vyranoth##207351
Select _"If you're certain..."_
Speak with Vyranoth |q 76464/3 |goto Stormheim/0 51.09,83.85
step
talk Vyranoth##207351
turnin The Thorignir##76464 |goto Stormheim/0 51.09,83.85
accept Dragon Keeping##76465 |goto Stormheim/0 51.09,83.85
step
talk Vyranoth##207351
Select _"I am ready to go."_
Speak with Vyranoth to Go to the Halls of Valor |q 76465/1 |goto Stormheim/0 51.09,83.85
step
Enter the scenario |scenariostart |q 76465
step
kill Hymdall##206644 |scenariogoal 1/60773 |goto Halls of Valor D/0 47.63,44.51
step
kill Valarjar Shieldmaiden##207027+
|tip Three waves of them will attack inside.
Get Past Eyir's Shield Maidens |scenariogoal 2/60969 |goto Halls of Valor D/0 47.80,67.89
step
Enter Odyn's Arena |scenariogoal 3/63440 |goto Halls of Valor D/1 51.40,80.21
step
extraaction Confront Odyn##419454
Watch the dialogue
kill Odyn##207287
|tip Move out of areas targeted on the ground.
|tip Fight Odyn until you are teleported.
Confront Odyn |scenariogoal 4/61202 |goto Halls of Valor D/1 51.50,88.64
step
talk Vyranoth##208506
turnin Dragon Keeping##76465 |goto The Emerald Dream/0 50.81,62.73
step
Slay Fyrakk |q 76402/1 |goto Amirdrassil, The Dream's Hope/5 56.49,53.21
|tip This is the final boss of the "Amirdrassil, The Dream's Hope" raid.
step
talk Alexstrasza the Life-Binder##206921
turnin Amirdrassil, the Dream's Hope: Fyrakk##76402 |goto The Emerald Dream/0 50.75,62.83
step
talk Tyrande Whisperwind##211634
accept A Blossom Witnessed##77780 |goto The Emerald Dream/0 27.58,31.45
step
talk Tyrande Whisperwind##211634
Select _"<Witness the Blossom>"_
Speak to Tyrande |q 77780/1 |goto The Emerald Dream/0 27.58,31.45
step
talk Merithra of the Dream##206397
turnin A Blossom Witnessed##77780 |goto Ohn'ahran Plains/0 14.89,55.88
accept A Changed Land##76276 |goto Ohn'ahran Plains/0 14.89,55.88
step
talk Khanam Matra Sarest##206455
|tip On the stone bridge.
Select _"Is everyone all right?"_
Visit the Centaur |q 76276/1 |goto Ohn'ahran Plains/0 34.27,53.07
step
Visit the Catalogers |q 76276/2 |goto Ohn'ahran Plains/0 21.82,62.26
step
click Washed-Up Pack
collect 1 Cataloger's Film##209806 |q 76276/3 |goto Ohn'ahran Plains/0 21.72,61.80
step
talk Cataloger Wulferd##206468
Select _"Here's the film."_
Return the Film to Wulferd |q 76276/4 |goto Ohn'ahran Plains/0 21.71,62.31
step
talk Gnoll Mon-Ark##206428
Select _"Is everyone all right?"_
Visit Gnoll Mon-Ark |q 76276/5 |goto Ohn'ahran Plains/0 28.64,69.95
step
talk Radza Thunderclaw##206438
Select _"Is everyone all right?"_
Visit the Furbolg |q 76276/6 |goto Ohn'ahran Plains/0 10.37,85.69
step
clicknpc Scaps##206418
Visit the Tuskarr |q 76276/7 |goto Ohn'ahran Plains/0 6.61,84.69
step
talk Merithra of the Dream##206397
turnin A Changed Land##76276 |goto Ohn'ahran Plains/0 14.88,55.89
accept Auspicious Gathering##77329 |goto Ohn'ahran Plains/0 14.88,55.89
step
talk Tyrande Whisperwind##208537
turnin Auspicious Gathering##77329 |goto Amirdrassil/0 50.82,61.47
accept Offerings for the Well##77200 |goto Amirdrassil/0 50.82,61.47
step
talk Moon Priestess Lasara##208906
Select _"Thank you for your offering."_
Speak with Moon Priestess Lasara |q 77200/4 |goto Amirdrassil/0 50.82,61.28
step
talk Cerellean Whiteclaw##208900
Select _"Thank you for your offering."_
Speak with Cerellean Whiteclaw |q 77200/2 |goto Amirdrassil/0 50.96,61.07
step
talk Rensar Greathoof##208907
Select _"Thank you for your offering."_
Speak with Rensar Greathoof |q 77200/1 |goto Amirdrassil/0 51.06,61.26
step
talk Delaryn Summermoon##208905
Select _"Thank you for your offering."_
Speak with Delaryn Summermoon |q 77200/3 |goto Amirdrassil/0 51.28,61.96
step
talk Tyrande Whisperwind##208537
turnin Offerings for the Well##77200 |goto Amirdrassil/0 50.82,61.47
accept New Moon##76280 |goto Amirdrassil/0 50.82,61.47
step
talk Tyrande Whisperwind##208537
Speak with Tyrande |q 76280/1 |goto Amirdrassil/0 50.82,61.47
step
talk Tyrande Whisperwind##208537
turnin New Moon##76280 |goto Amirdrassil/0 50.82,61.47
accept Something Worth Celebrating##76281 |goto Amirdrassil/0 50.82,61.47
step
talk Tyrande Whisperwind##208537
Select _"Let's go."_
Speak with Tyrande to Join the Party |q 76281/1 |goto Amirdrassil/0 50.82,61.47
step
click Vibrant Feast
Pick Up the First Meal Order |q 76281/2 |goto Amirdrassil/0 52.40,61.65
step
click Table+
click Vibrant Feast+
|tip Click the tables that are highlighted around the area.
|tip You will need to visit a Vibrant Feast each three tables you serve.
Serve #12# Tables |q 76281/3 |goto Amirdrassil/0 53.33,60.73
step
talk Merithra of the Dream##206849
turnin Something Worth Celebrating##76281 |goto Amirdrassil/0 54.25,57.88
accept A Different Enthusiasm##77781 |goto Amirdrassil/0 54.25,57.88
step
talk Kalecgos##209042
accept A Disquieting Feeling##76282 |goto Amirdrassil/0 54.32,57.88
stickystart "Kill_Spriggan_Pranksters"
step
talk Kritha##206941
Select _"I'd like a drink for Khadgar, please."_
Order a Drink Drink |q 76282/1 |goto Amirdrassil/0 52.86,56.51
|tip Choose any drink.
step
talk Archmage Khadgar##209041
Select _"I have a drink for you from Kalecgos."_
Deliver a Drink to Khadgar |q 76282/2 |goto Amirdrassil/0 54.03,61.97
step
label "Kill_Spriggan_Pranksters"
kill 6 Spriggan Prankster##212007 |q 77781/1 |goto Amirdrassil/0 54.57,59.24
|tip Click objects and NPCs around the area that are highlighted to reveal pranksters.
step
talk Kalecgos##209042
turnin A Disquieting Feeling##76282 |goto Amirdrassil/0 54.32,57.88
step
talk Merithra of the Dream##206849
turnin A Different Enthusiasm##77781 |goto Amirdrassil/0 54.25,57.88
accept Andu-falah-dor##76283 |goto Amirdrassil/0 54.25,57.88
step
talk Merithra of the Dream##206849
Select _"I'm ready to leave the party."_
Speak with Merithra to Leave the Party |q 76283/1 |goto Amirdrassil/0 54.25,57.88
step
talk Merithra of the Dream##209051
Speak with Merithra at the Moonwell |q 76283/2 |goto Amirdrassil/0 51.84,61.28
step
talk Alexstrasza##208763
turnin Andu-falah-dor##76283 |goto Amirdrassil/0 50.88,61.67
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Wrathion's Questline",{
author="support@zygorguides.com",
description="This guide will help you complete Wrathion's questline from The Emerald Dream.",
startlevel=70,
patch='100200',
},[[
leechsteps "Leveling Guides\\Dragonflight (10-70)\\The Coalition of Flames"
step
accept Call of the Dream##76317 |goto Valdrakken/0 53.20,50.62
|tip You will accept this quest automatically.
step
talk Merithra##187590
turnin Call of the Dream##76317 |goto Ohn'ahran Plains/0 18.66,51.77
accept Emerald Welcome##76318 |goto Ohn'ahran Plains/0 18.66,51.77
step
Cross into the Emerald Dream |q 76318/1 |goto Ohn'ahran Plains/0 18.44,52.41
step
talk Merithra##206425
Select _"What do you want me to see?"_
Speak to Merithra |q 76318/2 |goto The Emerald Dream/0 69.42,54.04 |or
_Or_
Click Here to Skip Ahead |confirm |next "Begin_Wrathion_Questline" |or
|tip Only use this option if you have completed the first chapter of The Emerald Dream campaign on another character.
|tip You can skip the first chapter and go directly to Wrathion if so.
step
talk Merithra##206425
turnin Emerald Welcome##76318 |goto The Emerald Dream/0 69.42,54.04
accept Feast or Flaming##76319 |goto The Emerald Dream/0 69.42,54.04
step
talk Athera##208286
home Verdant Landing |goto The Emerald Dream/0 69.53,53.24
step
talk Occarim##208280
fpath Verdant Landing |goto The Emerald Dream/0 68.81,54.81
step
Eat #12# Flames |q 76319/2 |goto The Emerald Dream/0 66.14,55.73
|tip Fly through the rings in the air on your dragonriding mount.
|tip Green orbs will restore vigor.
step
talk Cenarius##206510
turnin Feast or Flaming##76319 |goto The Emerald Dream/0 64.30,58.23
accept Wild Gods in Our Midst##76320 |goto The Emerald Dream/0 64.30,58.23
step
talk Goldrinn##206527
Select _"Merithra requests your aid in defending the World Tree."_
Request Goldrinn's Aid |q 76320/1 |goto The Emerald Dream/0 62.63,66.23
step
talk Q'onzu##206530
Select _"Merithra requests your aid in defending the World Tree."_
Request Q'onzu's Aid |q 76320/2 |goto The Emerald Dream/0 65.65,70.16
step
talk Elder Cassaphine##206571
|tip Inside the cave.
Select _"Merithra requests your aid in defending the World Tree."_
Request Elder Cassaphine's Aid |q 76320/3 |goto Barrows of Reverie/0 66.62,45.16
step
talk Cenarius##206583
turnin Wild Gods in Our Midst##76320 |goto The Emerald Dream/0 63.28,71.50
accept Burning Assault##76321 |goto The Emerald Dream/0 63.28,71.50
accept The Face of Our Enemies##76322 |goto The Emerald Dream/0 63.28,71.50
stickystart "Slay_Fyrakk's_Forces"
step
kill Apostle Fenarelle##206628 |q 76322/2 |goto The Emerald Dream/0 61.42,68.74
step
kill Stormbrand Ko'mal##206684 |q 76322/1 |goto The Emerald Dream/0 64.35,67.95
step
label "Slay_Fyrakk's_Forces"
Kill enemies around this area
Slay Fyrakk's Forces |q 76321/1 |goto The Emerald Dream/0 62.89,68.30
step
talk Merithra##206688
turnin Burning Assault##76321 |goto The Emerald Dream/0 62.78,68.63
turnin The Face of Our Enemies##76322 |goto The Emerald Dream/0 62.78,68.63
accept The Cruel##77818 |goto The Emerald Dream/0 62.78,68.63
step
clicknpc Flame Portal
|tip Move out of the big swirling area on the ground.
Help Merithra Close the Flame Portal |q 77818/1 |goto The Emerald Dream/0 62.67,68.42
step
clicknpc Dream Portal##206703
Take the Dream Portal |q 77818/2 |goto The Emerald Dream/0 62.91,68.98
step
talk Merithra##206806
turnin The Cruel##77818 |goto The Emerald Dream/0 61.48,60.39
accept Amirdrassil##76323 |goto The Emerald Dream/0 61.48,60.39
step
talk Merithra##206809
|tip She will eventually fly to this location.
turnin Amirdrassil##76323 |goto The Emerald Dream/0 53.83,63.93
accept Lost to the Flame##76324 |goto The Emerald Dream/0 53.83,63.93
step
kill Elder Cassaphine##206818 |q 76324/1 |goto The Emerald Dream/0 50.60,71.86
step
talk Merithra##206979
turnin Lost to the Flame##76324 |goto The Emerald Dream/0 50.96,69.99
accept Between Fyrakk and a Hard Place##76325 |goto The Emerald Dream/0 50.96,69.99
step
talk Merithra##206979
Select _"I'm with you."_
Speak to Merithra |q 76325/1 |goto The Emerald Dream/0 50.96,69.99
step
talk Merithra##206979
turnin Between Fyrakk and a Hard Place##76325 |goto The Emerald Dream/0 50.96,69.99
accept Home in the Dream##76326 |goto The Emerald Dream/0 50.96,69.99
step
talk Merithra##206896
turnin Home in the Dream##76326 |goto The Emerald Dream/0 50.80,62.88
accept A Multi-Front Battle##77283 |goto The Emerald Dream/0 50.80,62.88
step
talk Leora##207636
fpath Central Encampment |goto The Emerald Dream/0 51.09,62.35 |q 77283
step
label "Begin_Wrathion_Questline"
talk Wrathion##207350
accept A Dragon in Hand is Worth Two in the Roost##76460 |goto The Emerald Dream/0 50.88,62.81
step
talk Wrathion##207350
Select _" Tell me of the netherwing."_
Talk to Wrathion About the Netherwing |q 76460/1 |goto The Emerald Dream/0 50.88,62.81
step
talk Wrathion##207350
turnin A Dragon in Hand is Worth Two in the Roost##76460 |goto The Emerald Dream/0 50.88,62.81
accept Draconic Diplomacy##76461 |goto The Emerald Dream/0 50.88,62.81
step
Locate Mordenaku in Valdrakken |q 76461/1 |goto Thaldraszus/0 33.70,62.09
step
talk Wrathion##207350
Select _" What are you offering the netherwing?"_
Watch the dialogue
Talk to Wrathion |q 76461/2 |goto Thaldraszus/0 33.70,62.09
step
talk Mordenaku##207352
Select _" The mountains of Thaldraszus would make excellent roosts."_
Talk to Mordenaku |q 76461/3 |goto Thaldraszus/0 33.68,62.03
step
talk Wrathion##207350
turnin Draconic Diplomacy##76461 |goto Thaldraszus/0 33.70,62.09
accept A Dragon's Eye View##77195 |goto Thaldraszus/0 33.70,62.09
step
Locate the Potential Roost |q 77195/1 |goto Thaldraszus/0 61.22,73.18
|tip High up on the hidden cliff.
step
talk Wrathion##207350
|tip High up on the hidden cliff.
turnin A Dragon's Eye View##77195 |goto Thaldraszus/0 61.22,73.18
step
talk Vyranoth##207351
|tip High up on the hidden cliff.
accept Cavern Cleaning##76462 |goto Thaldraszus/0 61.21,73.22
stickystart "Freeze_Cave_Scuttlers"
stickystart "Destroy_Tarantula_Eggs"
step
kill Hecutta##207300 |q 76462/2 |goto Thaldraszus/0 62.15,72.88
|tip Inside the cave high up on the mountain.
step
label "Freeze_Cave_Scuttlers"
kill Cave Scuttler##207298+
|tip Walk over them to freeze them inside the cave high up on the mountain.
Freeze #100# Cave Scuttlers |q 76462/1 |goto Thaldraszus/0 62.17,73.57
step
label "Destroy_Tarantula_Eggs"
click Tarantula Egg+
|tip They look like large clusters of white eggs inside the cave high up on the mountain.
Destroy #5# Tarantula Eggs |q 76462/3 |goto Thaldraszus/0 62.17,73.57
step
talk Vyranoth##207351
|tip High up on the hidden cliff.
turnin Cavern Cleaning##76462 |goto Thaldraszus/0 61.21,73.22
step
talk Wrathion##207350
|tip High up on the hidden cliff.
accept A Whelping Hand##77197 |goto Thaldraszus/0 61.22,73.18
step
talk Mother Elion##185904
turnin A Whelping Hand##77197 |goto The Waking Shores/0 61.60,68.71
accept Delectable Delicacies##76463 |goto The Waking Shores/0 61.60,68.71
step
kill Juicy Beetle##207567+
collect 10 Juicy Beetle Bits##208060 |q 76463/1 |goto The Waking Shores/0 56.80,69.97
step
talk Mother Elion##185904
turnin Delectable Delicacies##76463 |goto The Waking Shores/0 61.60,68.71
step
talk Mordenaku##207352
accept Home in Time for Tea##77198 |goto The Waking Shores/0 61.54,68.75
step
Retire to the Roasted Ram |q 77198/1 |goto Valdrakken/0 48.43,49.64
step
talk Mordenaku##207352
|tip Inside the building.
turnin Home in Time for Tea##77198 |goto Valdrakken/0 46.93,47.90
step
talk Vyranoth##207351
|tip Inside the building.
accept The Thorignir##76464 |goto Valdrakken/0 46.72,47.77
step
click Portal to Stormheim
|tip Inside the building.
Take the Portal in the Roasted Ram Inn |q 76464/1 |goto Valdrakken/0 46.64,47.21
step
talk Thrymjaris##207570
Select _"Why haven't you gone to the Dragon Isles?"_
Speak with Thrymjaris |q 76464/2 |goto Stormheim/0 50.86,83.94
step
talk Vyranoth##207351
Select _"If you're certain..."_
Speak with Vyranoth |q 76464/3 |goto Stormheim/0 51.09,83.85
step
talk Vyranoth##207351
turnin The Thorignir##76464 |goto Stormheim/0 51.09,83.85
accept Dragon Keeping##76465 |goto Stormheim/0 51.09,83.85
step
talk Vyranoth##207351
Select _"I am ready to go."_
Speak with Vyranoth to go to the Halls of Valor |q 76465/1 |goto Stormheim/0 51.09,83.85
step
Enter the scenario |scenariostart |q 76465
step
kill Hymdall##206644 |scenariogoal 1/60773 |goto Halls of Valor D/0 47.63,44.51
step
kill Valarjar Shieldmaiden##207027+
|tip Three waves of them will attack inside.
Get Past Eyir's Shield Maidens |scenariogoal 2/60969 |goto Halls of Valor D/0 47.80,67.89
step
Enter Odyn's Arena |scenariogoal 3/63440 |goto Halls of Valor D/1 51.40,80.21
step
extraaction Confront Odyn##419454
Watch the dialogue
kill Odyn##207287
|tip Move out of areas targeted on the ground.
|tip Fight Odyn until you are teleported.
Confront Odyn |scenariogoal 4/61202 |goto Halls of Valor D/1 51.50,88.64
step
talk Vyranoth##208506
turnin Dragon Keeping##76465 |goto The Emerald Dream/0 50.81,62.73
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Tyr's Return",{
author="support@zygorguides.com",
description="This guide will help you complete the Tyr's Return questline continuing from Tyr's Fall.",
startlevel=70,
patch='100200',
},[[
leechsteps "Leveling Guides\\Dragonflight (10-70)\\Tyr's Fall"
step
talk Valunei##208703
accept Data Recovery##77339 |goto Valdrakken/0 53.90,61.11
step
Enter the building |goto Thaldraszus/0 59.86,63.78 < 10 |walk
talk Travard##208701
|tip Inside the building.
turnin Data Recovery##77339 |goto Thaldraszus/0 60.60,63.64
accept To Tyrhold! For Tyr!##77377 |goto Thaldraszus/0 60.60,63.64
step
talk Eternus##208832
|tip Inside the middle ring.
turnin To Tyrhold! For Tyr!##77377 |goto Thaldraszus/0 60.43,59.03
accept Infiltrating the Nighthold##77340 |goto Thaldraszus/0 60.43,59.03
step
click Portal to Nighthold
Teleport to the Nighthold |q 77340/1 |goto Thaldraszus/0 60.49,58.93
step
Begin the Scenario |scenariostart |q 77340
step
talk Travard##208707
Select _"I'm ready."_
Tell Travard You are Ready |scenariogoal 1/61498 |goto The Nighthold T/0 69.14,28.88 |q 77340
step
Kill enemies around this area
Defeat the Astromancer's Guards |scenariogoal 2/61543 |goto The Nighthold T/0 45.05,64.50 |q 77340
step
click Observatory Doors |goto The Nighthold T/0 55.67,62.74 < 4 |walk
kill Senior Researcher Alydrus##208734 |scenariogoal 3/61876 |goto The Nighthold T/1 51.95,52.17 |q 77340
step
Kill enemies around this area
Defeat the Guards on the Stairs |scenariogoal 4/61880 |goto The Nighthold T/1 53.35,45.13 |q 77340
step
kill Guardian Ordan##208727 |scenariogoal 5/61878 |goto The Nighthold T/1 48.68,37.96 |q 77340
step
talk Travard##208707
|tip He will eventually run to this location.
Select _"I'm ready."_
Tell Travard You are Ready |scenariogoal 6/61883 |goto The Nighthold T/1 42.98,29.83 |q 77340
step
kill Elisande##208668
|tip Avoid areas on targeted on the ground.
|tip You will eventually be teleported away.
Confront Elisande |scenariogoal 7/61893 |goto The Nighthold T/1 34.15,17.77 |q 77340
step
talk Talthis##208705
Select _"I'm ready."_
Hear Talthis' Plan |scenariogoal 8/61894 |goto The Nighthold T/1 42.58,27.99 |q 77340
step
kill Elisande##208668
|tip Avoid areas on targeted on the ground.
|tip You will eventually be teleported away.
Confront Elisande |scenariogoal 9/61893 |goto The Nighthold T/1 36.10,16.56 |q 77340
step
talk Nolaki##208706
Select _"What's your plan, Nolaki?"_
Hear Nolaki's Plan |scenariogoal 10/61896 |goto The Nighthold T/1 41.74,29.41 |q 77340
step
talk Valunei##208709
Select _"Let's go!"_
Tell Valunei You are Ready |scenariogoal 11/61917 |goto The Nighthold T/1 42.14,29.65 |q 77340
step
click Portal to Tyrhold
Take the Portal to Tyrhold |scenariogoal 12/62716 |goto The Nighthold T/1 42.66,27.99 |q 77340
step
talk Chromie##208835
|tip Inside the middle ring.
turnin Infiltrating the Nighthold##77340 |goto Thaldraszus/0 60.39,58.82
step
talk Nozdormu##208834
|tip Inside the middle ring.
accept Disc Delivery##77342 |goto Thaldraszus/0 60.46,58.74
step
click Disc of Tyr
|tip Inside the middle ring.
Place the Disc |q 77342/1 |goto Thaldraszus/0 60.53,58.74
step
Watch the dialogue
Restore Tyr |q 77342/2 |goto Thaldraszus/0 60.53,58.74
step
talk Nozdormu##208834
|tip Inside the middle ring.
turnin Disc Delivery##77342 |goto Thaldraszus/0 60.46,58.74
step
talk Alexstrasza the Life-Binder##208833
|tip Inside the middle ring.
accept A Tyrful Reunion##77343 |goto Thaldraszus/0 60.48,58.69
step
Watch the dialogue
Hear Tyr's Conversation with the Aspects |q 77343/1 |goto Thaldraszus/0 60.48,58.80
step
talk Travard##208800
|tip Inside the middle ring.
turnin A Tyrful Reunion##77343 |goto Thaldraszus/0 60.48,58.80
accept Time to Process##77344 |goto Thaldraszus/0 60.48,58.80
step
talk Keeper Tyr##208796
|tip Inside the middle ring.
Select _"The Tyr's Guard would be honored if you would join them at their headquarters."_
Speak to Tyr |q 77344/1 |goto Thaldraszus/0 60.63,58.74
step
Enter the building |goto Thaldraszus/0 59.86,63.78 < 10 |walk
talk Travard##208839
|tip Inside the building.
Select _"You're welcome, Travard."_
Speak with Travard |q 77344/2 |goto Thaldraszus/0 60.84,63.77
step
talk Travard##208839
|tip Inside the building.
turnin Time to Process##77344 |goto Thaldraszus/0 60.84,63.77
step
collect Letter from Valunei##208826 |q 77341 |future
|tip You will find this in your mailbox.
step
use the Letter from Valunei##208826
accept Logotyrapy##77341
step
Enter the building |goto Thaldraszus/0 59.88,63.78 < 10 |walk
talk Keeper Tyr##209890
|tip Inside the building.
Select _"Is something the matter, Tyr?"_
Speak with Tyr |q 77341/1 |goto Thaldraszus/0 61.00,63.78
step
talk Travard##208839
turnin Logotyrapy##77341 |goto Thaldraszus/0 60.84,63.77
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Seeing Red",{
author="support@zygorguides.com",
description="This guide will help you complete the Seeing Red questline.",
startlevel=70,
patch='100105',
},[[
step
talk Virtos##209790 |only if Alliance
accept Prophecy Stirs##77408 |goto Stormwind City/0 77.95,37.26 |only if Alliance
talk Knight-Lord Dranarus##209803 |only if Horde
accept Prophecy Stirs##77408 |goto Orgrimmar/1 72.03,44.55 |only if Horde
step
use Teleportation Crystal##208206
Use the Teleportation Crystal |q 77408/1 |goto Stormwind City/0 77.95,37.27 |only if Alliance
Use the Teleportation Crystal |q 77408/1 |goto Orgrimmar/1 72.03,44.55 |only if Horde
step
talk Prophet Velen##208815
turnin Prophecy Stirs##77408 |goto Vindicaar Scenario/1 43.20,24.94
accept Uncertainty##77409 |goto Vindicaar Scenario/1 43.20,24.94
step
talk Grand Artificer Romuul##208816
Select _"Please teleport me to Krokuun."_
Ask Romuul to Teleport You to Krokuun |q 77409/1 |goto Vindicaar Scenario/1 42.08,23.84
step
click Lightforged Beacon
fpath Krokul Hovel |goto Krokuun/0 55.49,67.36
step
Enter the cave |goto Krokuun/0 55.45,68.31 < 7 |walk
talk Chieftain Hatuun##208830
Select _"What did you want to discuss?"_
Speak to Chieftain Hatuun |q 77409/2 |goto Krokuun/0 53.75,68.11
step
Watch the dialogue
talk Chieftain Hatuun##208830
turnin Uncertainty##77409 |goto Krokuun/0 53.74,68.10
accept Opening Wounds##77410 |goto Krokuun/0 53.74,68.10
step
talk Arzal'kal##208831
Select _"You don't need to explain yourself. <Skip conversation and complete quest.>"_
Speak to Arzal'kal |q 77410/1 |goto Krokuun/0 53.79,68.22
step
Watch the dialogue
Listen to Arzal'kal |q 77410/2 |goto Krokuun/0 53.79,68.22
step
talk Prophet Velen##208837
turnin Opening Wounds##77410 |goto Krokuun/0 53.61,68.28
step
talk Arzal'kal##208831
accept Contrition##77411 |goto Krokuun/0 53.79,68.23
step
click Lightforged Beacon
fpath Destiny Point |goto Krokuun/0 62.70,49.10
step
talk Arzal'kal##208858
accept Severing Ties##77789 |goto Krokuun/0 63.49,42.48
step
talk Arzal'kal##208858
Select _"I am ready."_
Regroup with Arzal'kal |q 77411/1 |goto Krokuun/0 63.49,42.48
stickystart "Slay_Man'ari_Cultists"
step
click Sargerei Conduit
Overload the Sargerei Conduit |q 77789/2 |goto Krokuun/0 66.54,37.98 |count 1
step
click Sargerei Conduit
Overload the Sargerei Conduit |q 77789/2 |goto Krokuun/0 68.90,34.75 |count 2
step
click Sargerei Conduit
Overload the Sargerei Conduit |q 77789/2 |goto Krokuun/0 70.25,34.97 |count 3
step
click Sargerei Conduit
Overload the Sargerei Conduit |q 77789/2 |goto Krokuun/0 70.12,32.48 |count 4
step
click Sargerei Conduit
Overload the Sargerei Conduit |q 77789/2 |goto Krokuun/0 72.30,34.88 |count 5
step
label "Slay_Man'ari_Cultists"
kill Man'ari Acolyte##208855+
kill Man'ari Sycophant##208856+
Slay #10# Man'ari Cultists |q 77789/1 |goto Krokuun/0 72.33,34.36
step
kill 1 Speaker Nalridun##208862 |q 77411/2 |goto Krokuun/0 73.13,33.66
step
click Ancient Draenic Relic##405948
Retrieve the Relic |q 77411/3 |goto Krokuun/0 73.43,33.85
step
talk Arzal'kal
turnin Contrition##77411 |goto Krokuun/0 73.27,33.56
turnin Severing Ties##77789 |goto Krokuun/0 73.27,33.56
accept Proof and Promise##77412 |goto Krokuun/0 73.27,33.56
step
Locate the Legion Teleporter |q 77412/2 |goto Krokuun/0 71.77,31.57
step
click Legion Teleporter
Use the Legion Teleporter |q 77412/3 |goto Krokuun/0 71.77,31.57
step
Return to Velen |q 77412/4 |goto Krokuun/0 53.63,68.30
step
talk Prophet Velen##208893
turnin Proof and Promise##77412 |goto Krokuun/0 53.63,68.30
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\The Reclaiming of Gilneas",{
author="support@zygorguides.com",
description="This guide will help you complete the Reclaiming of Gilneas questline.",
startlevel=70,
patch='100205',
},[[
step
talk Deathguard Elite##212916
|tip Inside the building.
accept Clandestine Movements##78597 |goto Valdrakken/0 56.13,39.41
|tip You can also pick this up in Orgrimmar.
|only if Horde
step
talk Calia Menethil##210965
|tip Inside the building.
Meet with Lilian and Calia in Pyrewood Village |q 78597/1 |goto Silverpine Forest/0 43.59,73.27
|only if Horde
step
talk Lilian Voss##210964
|tip Inside the building.
turnin Clandestine Movements##78597 |goto Silverpine Forest/0 43.66,73.28
|only if Horde
step
talk Calia Menethil##210965
|tip Inside the building.
accept To Gilneas##78178 |goto Silverpine Forest/0 43.59,73.27
|only if Horde
step
talk Princess Tess Greymane##210905
Select _" I'm ready to go to Gilneas."_
Talk to Tess to Go to Gilneas |q 78178/1 |goto Silverpine Forest/0 41.68,72.22
|only if Horde
step
Watch the dialogue
Arrive in Gilneas |q 78178/2
|only if Horde
step
talk Princess Tess Greymane##210905
Select _" What is your plan?"_
|tip This option will require you to watch a conversation between NPCs.
_Or_
Select _" (Skip Conversation) I don't have time for this."_
|tip This option will skip the dialogue and allow you to continue.
Talk to Tess |q 78178/3 |goto Ruins of Gilneas/0 41.51,36.07
|only if Horde
step
talk Princess Tess Greymane##210905
turnin To Gilneas##78178 |goto Ruins of Gilneas/0 41.51,36.07
accept A Crusade of Red##78180 |goto Ruins of Gilneas/0 41.51,36.07
|only if Horde
step
talk Greyguard Elite##212899
|tip Inside the building.
accept Summons to Lord Greymane##78596 |goto Valdrakken/0 59.25,42.65
|tip You can also pick this up in Stormwind.
|only if Alliance
step
talk Genn Greymane##214538
Meet with Genn Greymane at Stormwind Harbor |q 78596/1 |goto Stormwind City/0 35.76,28.29
|only if Alliance
step
talk Genn Greymane##214538
turnin Summons to Lord Greymane##78596 |goto Stormwind City/0 35.76,28.29
accept To Gilneas##78177 |goto Stormwind City/0 35.76,28.29
|only if Alliance
step
talk Genn Greymane##214538
Select _" I'm ready to go to Gilneas."_
Let Genn Know You Are Ready |q 78177/1 |goto Stormwind City/0 35.66,28.94
|only if Alliance
step
Watch the dialogue
Arrive in Gilneas |q 78177/2
|only if Alliance
step
talk Princess Tess Greymane##210905
Select _" What is your plan?"_
|tip This option will require you to watch a conversation between NPCs.
_Or_
Select _" (Skip Conversation) I don't have time for this."_
|tip This option will skip the dialogue and allow you to continue.
Talk to Tess |q 78177/3 |goto Ruins of Gilneas/0 41.51,36.07
|only if Alliance
step
talk Princess Tess Greymane##210905
turnin To Gilneas##78177 |goto Ruins of Gilneas/0 41.51,36.07
accept A Crusade of Red##78180 |goto Ruins of Gilneas/0 41.51,36.07
|only if Alliance
step
talk Genn Greymane##210904
accept Aderic's Retort##78181 |goto Ruins of Gilneas/0 41.64,36.12
stickystart "Slay_Members_of_the_Scarlet_Crusade"
step
kill Consecrator Hennas##211231 |q 78181/1 |goto Ruins of Gilneas/0 48.80,52.88
step
label "Slay_Members_of_the_Scarlet_Crusade"
Kill Scarlet enemies around this area
Slay #10# Members of the Scarlet Crusade |q 78180/1 |goto Ruins of Gilneas/0 48.47,52.16
step
talk Genn Greymane##212187
turnin A Crusade of Red##78180 |goto Ruins of Gilneas/0 49.60,57.11
turnin Aderic's Retort##78181 |goto Ruins of Gilneas/0 49.60,57.11
accept Knee-High##78182 |goto Ruins of Gilneas/0 49.60,57.11
step
Run down the stairs |goto Ruins of Gilneas/0 49.86,57.80 < 7 |walk
extraaction Swing Torch##424546
|tip Run through the tunnel spamming the ability on the screen to scare the vermin.
Clear the Tunnel of Vermin |q 78182/1 |goto Ruins of Gilneas/0 52.18,55.67
step
Run down the stairs |goto Ruins of Gilneas/0 57.25,52.90 < 7 |walk
extraaction Swing Torch##424546
|tip Continue spamming the ability to clear the vermin until you reach the end of the tunnel.
talk Princess Tess Greymane##210905
|tip Inside the building.
turnin Knee-High##78182 |goto Ruins of Gilneas/0 57.10,53.18
accept Smokepowder and Mirrors##78184 |goto Ruins of Gilneas/0 57.10,53.18
step
talk Lilian Voss##210964
|tip Inside the building.
accept Scarlet Blood##78183 |goto Ruins of Gilneas/0 57.11,53.02
stickystart "Slay_Scarlet_Forces"
step
extraaction Call Lilian##428190
|tip Use the ability on the screen while targeting an elite enemy to Signal Lilian to strike, dealing massive damage.
click Scarlet Munitions##410877
collect 1 Scarlet Explosives##211248 |q 78184/1 |goto Ruins of Gilneas/0 55.97,54.03
step
extraaction Call Lilian##428190
|tip Use the ability on the screen while targeting an elite enemy to Signal Lilian to strike, dealing massive damage.
click Scarlet Munitions##410877
collect 2 Scarlet Explosives##211248 |q 78184/1 |goto Ruins of Gilneas/0 55.64,56.88
step
extraaction Call Lilian##428190
|tip Use the ability on the screen while targeting an elite enemy to Signal Lilian to strike, dealing massive damage.
click Scarlet Munitions##410877
collect 3 Scarlet Explosives##211248 |q 78184/1 |goto Ruins of Gilneas/0 56.67,58.91
step
extraaction Call Lilian##428190
|tip Use the ability on the screen while targeting an elite enemy to Signal Lilian to strike, dealing massive damage.
click Scarlet Munitions##410877
collect 4 Scarlet Explosives##211248 |q 78184/1 |goto Ruins of Gilneas/0 57.63,57.64
step
extraaction Call Lilian##428190
|tip Use the ability on the screen while targeting an elite enemy to Signal Lilian to strike, dealing massive damage.
click Scarlet Munitions##410877
collect 5 Scarlet Explosives##211248 |q 78184/1 |goto Ruins of Gilneas/0 58.66,57.61
step
extraaction Call Lilian##428190
|tip Use the ability on the screen while targeting an elite enemy to Signal Lilian to strike, dealing massive damage.
click Scarlet Munitions##410877
collect 6 Scarlet Explosives##211248 |q 78184/1 |goto Ruins of Gilneas/0 58.41,56.02
step
extraaction Call Lilian##428190
|tip Use the ability on the screen while targeting an elite enemy to Signal Lilian to strike, dealing massive damage.
click Scarlet Munitions##410877
collect 7 Scarlet Explosives##211248 |q 78184/1 |goto Ruins of Gilneas/0 58.96,55.27
step
extraaction Call Lilian##428190
|tip Use the ability on the screen while targeting an elite enemy to Signal Lilian to strike, dealing massive damage.
click Scarlet Munitions##410877
collect 8 Scarlet Explosives##211248 |q 78184/1 |goto Ruins of Gilneas/0 58.30,53.87
step
label "Slay_Scarlet_Forces"
Kill Scarlet enemies around this area
extraaction Call Lilian##428190 |notinsticky
|tip Use the ability on the screen while targeting an elite enemy to Signal Lilian to strike, dealing massive damage. |notinsticky
Slay #12# Scarlet Forces |q 78183/1 |goto Ruins of Gilneas/0 57.14,55.42
step
_Next to you:_
talk Princess Tess Greymane##213995
turnin Smokepowder and Mirrors##78184 |goto Ruins of Gilneas/0 56.92,53.59
turnin Scarlet Blood##78183 |goto Ruins of Gilneas/0 56.92,53.59
accept Hounds of War##78185 |goto Ruins of Gilneas/0 56.92,53.59
step
click Gilneas Gate
Open the Gate to Gilneas |q 78185/1 |goto Ruins of Gilneas/0 55.87,58.69
step
_Next to you:_
talk Princess Tess Greymane##213995
turnin Hounds of War##78185 |goto Ruins of Gilneas/0 55.88,58.70
accept Artillerist Arsonist##78187 |goto Ruins of Gilneas/0 55.88,58.70
step
talk Lilian Voss##210964
accept Crushing the Crusade##78186 |goto Ruins of Gilneas/0 55.87,58.13
stickystart "Slay_Scarlet_Elite"
step
extraaction Call Lilian##428190
|tip Use the ability on the screen while targeting an elite enemy to Signal Lilian to strike, dealing massive damage.
click Bomb Location
Set the First Explosive |q 78187/1 |goto Ruins of Gilneas/0 56.42,48.69 |count 1
step
extraaction Call Lilian##428190
|tip Use the ability on the screen while targeting an elite enemy to Signal Lilian to strike, dealing massive damage.
click Bomb Location
Set the Second Explosive |q 78187/1 |goto Ruins of Gilneas/0 55.88,48.39 |count 2
step
extraaction Call Lilian##428190
|tip Use the ability on the screen while targeting an elite enemy to Signal Lilian to strike, dealing massive damage.
click Bomb Location
Set the Third Explosive |q 78187/1 |goto Ruins of Gilneas/0 56.63,44.05 |count 3
step
extraaction Call Lilian##428190
|tip Use the ability on the screen while targeting an elite enemy to Signal Lilian to strike, dealing massive damage.
click Bomb Location
Set the Fourth Explosive |q 78187/1 |goto Ruins of Gilneas/0 56.89,46.42 |count 4
step
extraaction Call Lilian##428190
|tip Use the ability on the screen while targeting an elite enemy to Signal Lilian to strike, dealing massive damage.
click Bomb Location
Set the Fifth Explosive |q 78187/1 |goto Ruins of Gilneas/0 58.04,44.64 |count 5
step
extraaction Call Lilian##428190
|tip Use the ability on the screen while targeting an elite enemy to Signal Lilian to strike, dealing massive damage.
click Bomb Location
Set the Final Explosive |q 78187/1 |goto Ruins of Gilneas/0 58.46,46.78
step
label "Slay_Scarlet_Elite"
Kill Scarlet enemies around this area
extraaction Call Lilian##428190 |notinsticky
|tip Use the ability on the screen while targeting an elite enemy to Signal Lilian to strike, dealing massive damage. |notinsticky
Slay #12# Scarlet Elite |q 78186/1 |goto Ruins of Gilneas/0 58.16,46.63
step
talk Princess Tess Greymane##210905
|tip Inside the building.
turnin Artillerist Arsonist##78187 |goto Ruins of Gilneas/0 59.50,48.71
turnin Crushing the Crusade##78186 |goto Ruins of Gilneas/0 59.50,48.71
accept Righteous Fire, Righteous Fury##78188 |goto Ruins of Gilneas/0 59.50,48.71
step
kill Inquisitor Fairbell##211930 |q 78188/1 |goto Ruins of Gilneas/0 61.30,51.14
|tip Inside the building.
|tip Run away from "Radiant Nova."
step
kill Hallowed Monstrosity##211933 |q 78188/2 |goto Ruins of Gilneas/0 61.33,51.17
|tip Inside the building.
|tip Run away from "Radiant Nova."
|tip Move out of yellow areas on the ground.
step
talk Princess Tess Greymane##210905
turnin Righteous Fire, Righteous Fury##78188 |goto Ruins of Gilneas/0 58.73,47.84
step
talk Genn Greymane##210904
accept Beginning a New Dawn##78189 |goto Ruins of Gilneas/0 58.86,47.89
step
talk Princess Tess Greymane##210905
turnin Beginning a New Dawn##78189 |goto Ruins of Gilneas/0 58.72,47.84
step
talk Princess Tess Greymane##210905
accept What We Left Behind##78190 |goto Ruins of Gilneas/0 58.72,47.84
|only if Alliance
step
talk Genn Greymane##210904
turnin What We Left Behind##78190 |goto Ruins of Gilneas/0 48.80,52.95
|only if Alliance
step
talk Calia Menethil##210965
accept The Wall Between Us##79137 |goto Ruins of Gilneas/0 58.89,48.49
|only if Horde
step
talk Lilian Voss##210964
|tip Inside the building.
turnin The Wall Between Us##79137 |goto Silverpine Forest/0 43.65,73.23
|only if Horde
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Sins of the Sister",{
author="support@zygorguides.com",
description="This guide will help you complete the Sins of the Sister questline.",
startlevel=70,
patch='100207',
},[[
leechsteps "Leveling Guides\\Dragonflight (10-70)\\Champion of the Dragonflights"
step
talk Malfurion Stormrage##216069
|tip Malfurion may be near Bel'Ameth for a few minutes until dialogue from The Returning is completed.
accept An Uncommon Request##82229 |goto Amirdrassil/0 48.35,70.61
step
talk Kelestra##218623
turnin An Uncommon Request##82229 |goto Amirdrassil/0 72.43,72.21
accept Tears of Teldrassil##80069 |goto Amirdrassil/0 72.43,72.21
step
talk Kelestra##218623
Select  _"<Tell Kelestra you are ready to go.>"_ |gossip  121061
Speak to Kelestra |q 80069/1 |goto Amirdrassil/0 72.43,72.21
step
Enter the cave |goto Amirdrassil/0 72.47,72.57 < 7 |walk
Walk with Kelestra |q 80069/2 |goto Amirdrassil/0 72.88,74.11
|tip Inside the cave.
step
clicknpc Barrowstone##222914
|tip Inside the cave.
Collect the First Barrowstone |q 80069/3 |goto Amirdrassil/0 72.90,74.15
step
talk Kelestra##222914 |goto Amirdrassil/0 72.88,74.11
|tip Inside the cave.
Select _"<Tell Kelestra you are ready to go.>"_ |gossip  122334
Walk with Kelestra |q 80069/4 |goto Amirdrassil/0 72.66,75.39
step
clicknpc Barrowstone##223217
|tip Inside the cave.
Collect the Second Barrowstone |q 80069/5 |goto Amirdrassil/0 72.63,75.42
step
Watch the dialogue
|tip Inside the cave.
Walk with Kelestra |q 80069/6 |goto Amirdrassil/0 73.05,76.94
step
clicknpc Barrowstone##223217
|tip Inside the cave.
Collect the Third Barrowstone |q 80069/7 |goto Amirdrassil/0 73.03,77.01
step
Watch the dialogue
|tip Inside the cave.
Walk with Kelestra |q 80069/8 |goto Amirdrassil/0 72.94,78.40
step
clicknpc Barrowstone##223217
|tip Inside the cave.
Collect the Fourth Barrowstone |q 80069/9 |goto Amirdrassil/0 72.90,78.40
step
Watch the dialogue
|tip Inside the cave.
Walk with Kelestra |q 80069/10 |goto Amirdrassil/0 72.96,79.51
step
clicknpc Burial Stones
|tip Inside the cave.
Place the Barrowstones |q 80069/11 |goto Amirdrassil/0 72.97,79.57
step
Watch the dialogue
|tip Inside the cave.
Listen to the Discussion |q 80069/12 |goto Amirdrassil/0 72.96,79.52
step
talk Kelestra##218697
|tip Inside the cave.
Select _"<Say that Koroleth was a Primalist.>"_ |gossip 121071
Select _"<Say that Koroleth was a Primalist and she fell in battle.>"_ |gossip 121070
Select _"<Say that Koroleth was a Primalist and you killed her in battle.>"_ |gossip 121069
Select _"<Say you don't know anything.>"_ |gossip 121068
Talk to Kelestra |q 80069/13 |goto Amirdrassil/0 72.96,79.52
step
talk Kelestra##218697
|tip Inside the cave.
turnin Tears of Teldrassil##80069 |goto Amirdrassil/0 72.96,79.52
accept Fact Finding##80071 |goto Amirdrassil/0 72.96,79.52
step
Follow the path |goto Amirdrassil/0 72.63,75.69 < 7 |walk
Leave the cave |goto Amirdrassil/0 72.47,72.51 < 7 |walk
talk Kelestra##218698
turnin Fact Finding##80071 |goto Amirdrassil/0 33.69,18.80
accept A Primalist Point of View##80072 |goto Amirdrassil/0 33.69,18.80
step
talk Ereria Galesinger##218788
Select _"<Tell me what you know about Koroleth.>"_ |gossip 121116
Speak to Ereria Galesinger |q 80072/1 |goto Amirdrassil/0 34.06,18.08
step
talk Idoral Starstrike##218789
Select _"<Tell me what you know about Koroleth.>"_ |gossip 121117
Speak to Idoral Starstrike |q 80072/2 |goto Amirdrassil/0 35.28,20.40
step
talk Kotori Lightningstride##218790
Select _"<Tell me what you know about Koroleth.>"_ |gossip 121118
Speak to Kotori Lightningstride |q 80072/3 |goto Amirdrassil/0 34.10,22.67
step
talk Shalrinar Shimmersong##218791
Select _"<Tell me what you know about Koroleth.>"_ |gossip 121119
Speak to Shalrinar Shimmersong |q 80072/4 |goto Amirdrassil/0 32.20,21.39
step
talk Kelestra##218698
turnin A Primalist Point of View##80072 |goto Amirdrassil/0 33.69,18.80
accept Bones of a Bygone Battle##80073 |goto Amirdrassil/0 33.69,18.80
step
click Unidentified Remains
|tip You will be attacked shortly after by a few minor elementals.
Select _"<Investigate the remains.>"_ |gossip 121120
Inspect the First Set of Remains |q 80073/1 |goto Amirdrassil/0 81.15,38.69
step
click Unidentified Remains
|tip You will be attacked shortly after by an elemental.
Select _"<Investigate the remains.>"_ |gossip 121121
Inspect the Second Set of Remains |q 80073/2 |goto Amirdrassil/0 83.58,26.43
step
click Unidentified Remains
Select _"<Investigate the remains.>"_ |gossip 121122
Inspect the Third Set of Remains |q 80073/3 |goto Amirdrassil/0 88.91,20.92
step
extraaction Signal Kelestra##438580
|tip It appears as a button on your screen.
Signal Kelestra |q 80073/4 |goto Amirdrassil/0 88.91,20.92
step
Watch the dialogue
talk Kelestra##218701
|tip She walks to this location.
turnin Bones of a Bygone Battle##80073 |goto Amirdrassil/0 88.94,20.95
accept A Barrow Den Burial##80075 |goto Amirdrassil/0 88.94,20.95
step
talk Kelestra##218785
turnin A Barrow Den Burial##80075 |goto Amirdrassil/0 72.29,72.00
accept Sins of the Sister##80077 |goto Amirdrassil/0 72.29,72.00
step
talk Malfurion Stormrage##218629
Select _"<Try to persuade Malfurion that Koroleth should be allowed to rest within the barrow den.>"_ |gossip 121123
Select _"<Try to persuade Malfurion that Koroleth was a traitor and does not deserve to rest here.>"_ |gossip 121125
Select _"<Don't try to persuade Malfurion either way and let him make his own decision.>"_ |gossip 121124
|tip The dialogue option you choose will determine the story outcome so choose your preference.
|tip This may have an affect on future content.
Speak with Malfurion |q 80077/1 |goto Amirdrassil/0 72.30,72.19
step
Watch the dialogue
Listen to Malfurion's Decision |q 80077/2 |goto Amirdrassil/0 72.30,72.19
step
talk Malfurion Stormrage##218629
turnin Sins of the Sister##80077 |goto Amirdrassil/0 72.30,72.19
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Champion of the Dragonflights",{
author="support@zygorguides.com",
description="This guide will help you complete the Champion of the Dragonflights questline.",
startlevel=70,
patch='100205',
next="Leveling Guides\\Dragonflight (10-70)\\Sins of the Sister",
},[[
step
talk Alexstrasza##216309
accept Fair Skies and Strong Winds##78643 |goto Amirdrassil/0 50.89,61.67
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the large tower.
Select _"<Speak with Alexstrasza.>"_ |gossip 120503
Speak with Alexstrasza at the Seat of the Aspects |q 78643/1 |goto Valdrakken/0 58.14,34.91
step
talk Alexstrasza the Life-Binder##187678
|tip At the top of the large tower.
turnin Fair Skies and Strong Winds##78643 |goto Valdrakken/0 58.14,34.91
accept A Place Beneath the Boughs##78863 |goto Valdrakken/0 58.14,34.91
step
talk Vyranoth##214051
|tip At the top of the large tower.
accept Siblings Until the End##78865 |goto Valdrakken/0 55.94,36.72
step
talk Vyranoth##214051
|tip At the top of the large tower.
Select _"Tell me of your meeting with Iridikron."_ |gossip 120505
Speak with Vyranoth |q 78865/1 |goto Valdrakken/0 55.84,36.74
step
talk Vyranoth##214051
|tip At the top of the large tower.
turnin Siblings Until the End##78865 |goto Valdrakken/0 55.84,36.74
step
talk Shandris Feathermoon##216067
turnin A Place Beneath the Boughs##78863 |goto Amirdrassil/0 51.09,60.52
accept The Returning##78864 |goto Amirdrassil/0 51.09,60.52
step
talk Shandris Feathermoon##216067
Select _"<Speak with Shandris and Tyrande.>"_ |gossip 120504
Speak with Shandris Feathermoon |q 78864/1 |goto Amirdrassil/0 51.09,60.52
step
talk Shandris Feathermoon##216067
turnin The Returning##78864 |goto Amirdrassil/0 51.96,60.95
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Dragonflight (10-70)\\Hunt for the Harbinger",{
author="support@zygorguides.com",
description="This guide will help you complete the Hunt for the Harbinger questline.",
patch='100207',
},[[
step
talk Khadgar's Summons##221491
|tip Inside the building.
accept The Harbinger##81654 |goto Stormwind City/0 84.88,25.17 |or |only if Alliance
accept The Harbinger##81654 |goto Orgrimmar/1 41.30,75.49 |or |only if Horde
'|accept The Harbinger##79009 |or
|tip You will accept this quest automatically.
step
use the Dalaran Hearthstone##223988
Arrive in Dalaran
step
use the Dalaran Hearthstone##223988
Approach the Chamber of the Guardian |q 81654/1 |goto Dalaran L/12 36.10,48.80 |only if haveq(81654) or completedq(81654)
Approach the Chamber of the Guardian |q 79009/1 |goto Dalaran L/12 36.10,48.80 |only if haveq(79009) or completedq(79009)
|tip Step onto the teleporter and enter the inner chamber.
|tip If you have {o}The War WIthin{} quest, you will need to complete part of that chain first to proceed.
|tip After you complete {o}The Bronzebeard Family{} quest, Alleria will appear in the proper place to complete this.
step
talk Alleria Windrunner##214615
|tip Down in the Chamber of the Guardian.
Select _"Very well. Let's speak with Khadgar."_ |gossip 120217
Speak to Alleria |q 81654/2 |goto Dalaran L/12 36.10,48.80 |only if haveq(81654) or completedq(81654)
Speak to Alleria |q 79009/2 |goto Dalaran L/12 36.10,48.80 |only if haveq(79009) or completedq(79009)
step
talk Archmage Khadgar##214972
|tip Down in the Chamber of the Guardian.
turnin The Harbinger##81654 |goto Dalaran L/12 28.34,36.87 |only if haveq(81654) or completedq(81654)
turnin The Harbinger##79009 |goto Dalaran L/12 28.34,36.87 |only if haveq(79009) or completedq(79009)
step
talk Alleria Windrunner##215013
|tip Down in the Chamber of the Guardian.
accept Door to the Ren'dorei##79010 |goto Dalaran L/12 31.45,41.68
step
Follow Alleria |q 79010/1 |goto Dalaran L/12 35.77,74.92
|tip Down in the Chamber of the Guardian.
|tip If this does not complete, try relogging.
|tip A purple and black portal should appear.
step
click Rift to Telogrus
|tip Down in the Chamber of the Guardian.
Use the Void Rift to Enter Telogrus Rift |q 79010/2 |goto Dalaran L/12 33.61,78.90
step
talk Alleria Windrunner##214701
turnin Door to the Ren'dorei##79010 |goto Telogrus Rift/0 27.26,27.86
step
talk Magister Umbric##214702
accept Riftwalker Reports##79011 |goto Telogrus Rift/0 27.22,27.70
accept Cracks in the Void##79012 |goto Telogrus Rift/0 27.22,27.70
step
click Rift to Fathom's Edge
Take the Rift to Fathom's Edge |invehicle |goto Telogrus Rift/0 27.90,28.63 |q 79011
step
Watch the dialogue
Arrive at Fathom's Edge |outvehicle |goto Telogrus Rift/0 29.27,38.29 |q 79011
step
click Unstable Void Rift
|tip Run away once you are tethered to it to close it.
|tip Avoid the areas on the ground where the orbs land or you will take damage.
Close the Unstable Void Rift |q 79012/1 |goto Telogrus Rift/0 29.54,41.35 |count 1
step
talk Riftwalker Dellyn##215142
Select _"What news do you have to report?"_ |gossip 120247
Hear the Report from Aberrus |q 79011/1 |goto Telogrus Rift/0 30.10,43.36
step
click Void Rift
Take the Rift to the Cosmic Horizon |invehicle |goto Telogrus Rift/0 30.05,44.14 |q 79011
step
Watch the dialogue
Arrive at the Cosmic Horizon |outvehicle |goto Telogrus Rift/0 39.62,49.25 |q 79011
step
click Unstable Void Rift
|tip Run away once you are tethered to it to close it.
|tip Avoid the areas on the ground where the orbs land or you will take damage.
Close the Unstable Void Rift |q 79012/1 |goto Telogrus Rift/0 37.80,50.03 |count 2
step
talk Riftwalker Soran##215157
Select _"What news do you have to report?"_ |gossip 120248
Hear the Report from Kalimdor |q 79011/2 |goto Telogrus Rift/0 37.70,51.73
step
click Unstable Void Rift
|tip Run away once you are tethered to it to close it.
|tip Avoid the areas on the ground where the orbs land or you will take damage.
Close the Unstable Void Rift |q 79012/1 |goto Telogrus Rift/0 38.40,52.93 |count 3
step
talk Riftwalker Orlis##215158
Select _"What news do you have to report?"_ |gossip 120249
Hear the Report from Eastern Kingdoms |q 79011/3 |goto Telogrus Rift/0 39.93,53.72
step
click Unstable Void Rift
|tip Run away once you are tethered to it to close it.
|tip Avoid the areas on the ground where the orbs land or you will take damage.
Close the Unstable Void Rift |q 79012/1 |goto Telogrus Rift/0 40.71,57.22 |count 4
step
click Unstable Void Rift
|tip Run away once you are tethered to it to close it.
|tip Avoid the areas on the ground where the orbs land or you will take damage.
Close the Unstable Void Rift |q 79012/1 |goto Telogrus Rift/0 42.03,59.88 |count 5
step
talk Magister Umbric##214699
turnin Riftwalker Reports##79011 |goto Telogrus Rift/0 40.84,60.90
turnin Cracks in the Void##79012 |goto Telogrus Rift/0 40.84,60.90
step
talk Alleria Windrunner##214698
accept Galakrond's Unrest##79013 |goto Telogrus Rift/0 40.67,60.87
step
click Rift to Northrend
Take the Rift from Telogrus Rift to Northrend |q 79013/1 |goto Telogrus Rift/0 39.66,60.62
step
talk Alleria Windrunner##214634
turnin Galakrond's Unrest##79013 |goto Dragonblight/0 56.68,39.00
accept Walk a Mile in Her Shadows##79014 |goto Dragonblight/0 56.68,39.00
step
extraaction Voidflare##434210
|tip It appears as a button on your screen.
Inspect the Void Presence |q 79014/1 |goto Dragonblight/0 55.97,37.43
step
extraaction Voidflare##431240
|tip It appears as a button on your screen after Alleria runs up.
Clear the Shadow |q 79014/2 |goto Dragonblight/0 56.21,35.35 |count 1
step
extraaction Voidflare##431240
|tip It appears as a button on your screen.
Clear the Shadow |q 79014/2 |goto Dragonblight/0 55.69,35.16 |count 2
step
extraaction Voidflare##431240
|tip It appears as a button on your screen.
Clear the Shadow |q 79014/2 |goto Dragonblight/0 54.91,34.78 |count 3
step
extraaction Voidflare##431240
|tip It appears as a button on your screen.
Clear the Shadow |q 79014/2 |goto Dragonblight/0 54.83,33.18 |count 4
step
talk Alleria Windrunner##214759
turnin Walk a Mile in Her Shadows##79014 |goto The Storm Peaks/0 41.50,22.70
accept Dark Descension##79015 |goto The Storm Peaks/0 41.50,22.70
step
kill Riftwalker Nilara##214644 |q 79015/1 |goto The Storm Peaks/0 41.52,21.31
step
_Next to you:_
talk Alleria Windrunner##221539
turnin Dark Descension##79015 |goto The Storm Peaks/0 41.52,21.31
accept Legacy of the Void##79016 |goto The Storm Peaks/0 41.52,21.31
step
click Void Portal to Eredath
Use the Void Portal to Eredath |q 79016/1 |goto The Storm Peaks/0 41.54,20.29
step
talk Alleria Windrunner##214645
turnin Legacy of the Void##79016 |goto Eredath/0 22.51,53.46
accept The Path Taken##79017 |goto Eredath/0 22.51,53.46
step
Kill enemies around this area
|tip Spam any AoE attacks you can or group to tag mobs in this spot.
|tip You will get credit when you tag them.
Confront the Memory |q 79017/2 |goto Eredath/0 21.06,52.59 |count 1
step
extraaction Witness Memory##431507
Observe the Memory |q 79017/1 |goto Eredath/0 20.91,50.49 |count 1
step
Kill enemies around this area
|tip Spam any AoE attacks you can or group to tag mobs in this spot.
|tip You will get credit when you tag them.
Confront the Memory |q 79017/2 |goto Eredath/0 21.92,48.32 |count 2
step
extraaction Witness Memory##431507
Observe the Memory |q 79017/1 |goto Eredath/0 23.19,50.14 |count 2
step
Kill enemies around this area
|tip Spam any AoE attacks you can or group to tag mobs in this spot.
|tip You will get credit when you tag them.
Confront the Memory |q 79017/2 |goto Eredath/0 24.66,49.05 |count 3
step
extraaction Witness Memory##431507
Observe the Memory |q 79017/1 |goto Eredath/0 24.84,52.06 |count 3
step
_Next to you:_
talk Alleria Windrunner##215597
|tip She will run up to you.
turnin The Path Taken##79017 |goto Eredath/0 23.05,50.56
accept And Be One Traveler, Long I Stood##79018 |goto Eredath/0 23.05,50.56
step
Watch the dialogue
|tip Inside the building.
Confront the Memory of Turalyon |q 79018/1 |goto Eredath/0 24.23,42.99
step
click Call of the Void
|tip Inside the building.
Follow Turalyon to Telogrus |q 79018/2 |goto Eredath/0 24.24,42.74
step
talk Alleria Windrunner##214660
turnin And Be One Traveler, Long I Stood##79018 |goto Telogrus Rift/0 28.64,23.97
accept Defend Telogrus Rift##79019 |goto Telogrus Rift/0 28.64,23.97
stickystart "Defend_Telogrus_Rift"
step
click Rift to Fathom's Edge
Take the Rift to the Fathom's Edge |invehicle |goto Telogrus Rift/0 27.90,28.62 |q 79019
step
Watch the dialogue
Arrive at the Fathom's Edge |outvehicle |goto Telogrus Rift/0 29.27,38.29 |q 79019
step
click Void Rift
Take the Rift to the Cosmic Horizon |invehicle |goto Telogrus Rift/0 30.05,44.13 |q 79019
step
Watch the dialogue
Arrive at the Cosmic Horizon |outvehicle |goto Telogrus Rift/0 39.62,49.25 |q 79019
step
label "Defend_Telogrus_Rift"
Kill enemies around this area
click Unstable Void Rift+
|tip They look like shadowy clouds with orbs striking the ground around them.
|tip Run away once you are tethered to them to close them.
|tip Avoid the areas on the ground where the orbs land or you will take damage.
clicknpc Trapped Void Elf##214659+
|tip They look like kneeling void elves on the ground around this area.
Defend Telogrus Rift |q 79019/1 |goto Telogrus Rift/0 40.49,59.03
step
talk Alleria Windrunner##216264
turnin Defend Telogrus Rift##79019 |goto Telogrus Rift/0 43.55,63.79
accept Null and Void##79020 |goto Telogrus Rift/0 43.55,63.79
step
click Void Rift
Take the Rift to Equinox Reach |q 79020/1 |goto Telogrus Rift/0 43.95,63.74
step
Watch the dialogue
Arrive at Equinox Reach |outvehicle |goto Telogrus Rift/0 49.07,72.53 |q 79020
step
kill Corrupted Memory of Turalyon##214616 |q 79020/2 |goto Telogrus Rift/0 49.10,76.87
|tip Weaken it enough for it to flee.
step
talk Alleria Windrunner##216618
turnin Null and Void##79020 |goto Telogrus Rift/0 50.18,75.24
step
talk Locus-Walker##214657
accept Radiant Warnings##79021 |goto Telogrus Rift/0 50.40,75.29
step
talk Locus-Walker##214657
Select _"I'm ready."_ |gossip 120568
Listen to Locus-Walker |q 79021/1 |goto Telogrus Rift/0 50.40,75.29
step
click Void Rift
Take the Rift to the Cosmic Horizon |invehicle |goto Telogrus Rift/0 48.94,72.01 |q 79021
step
Watch the dialogue
Arrive at the Cosmic Horizon |outvehicle |goto Telogrus Rift/0 43.67,63.28 |q 79021
step
click Void Rift
Take the Rift to Fathom's Edge |invehicle |goto Telogrus Rift/0 40.04,49.32 |q 79021
step
Watch the dialogue
Arrive at Fathom's Edge |outvehicle |goto Telogrus Rift/0 29.82,43.68 |q 79021
step
click Rift to Telogrus
Take the Rift to Telogrus Rift |invehicle |goto Telogrus Rift/0 29.45,37.79 |q 79021
step
Watch the dialogue
Arrive at Telogrus Rift |outvehicle |goto Telogrus Rift/0 27.87,28.11 |q 79021
step
click Rift to Dalaran |goto Telogrus Rift/0 24.95,27.90
Return to Dalaran |goto Dalaran L/12 |c |noway |q 79021
step
Return to Khadgar in Dalaran |q 79021/2 |goto Dalaran L/12 28.38,36.91
|tip Down in the Chamber of the Guardian.
step
talk Archmage Khadgar##214972
|tip Down in the Chamber of the Guardian.
turnin Radiant Warnings##79021 |goto Dalaran L/12 28.38,36.91
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The War Within (70-80)\\Warbands",{
author="support@zygorguides.com",
description="This guide will assist you in familiarizing yourself with the Warband feature.",
startlevel=20,
patch='110000',
},[[
step
accept Warbands: Warbanding Together##83492 |goto Stormwind City/0 63.35,72.36 |only if Alliance
accept Warbands: Warbanding Together##83492 |goto Orgrimmar/1 51.23,79.11 |only if Horde
|tip You will accept this quest automatically.
step
talk Blue##226658
|tip Inside the building.
turnin Warbands: Warbanding Together##83492 |goto Tanaris/0 52.51,26.86
accept Warbands: Rift Reader##83493 |goto Tanaris/0 52.51,26.86
accept Warbands: Space Ghosts by the Coast##83494 |goto Tanaris/0 52.51,26.86
stickystart "Scan_Transpositional_Anomaly"
step
Kill Partially Teleported enemies around this area |kill Partially Teleported Gnoll##226667, Partially Teleported Kobold##226669, Partially Teleported Trogg##226668
|tip Use the various abilities that alternate on the screen to deal extra damage.
Collect #8# Spatial Residue |q 83494/1 |goto Tanaris/0 51.45,34.25
step
label "Scan_Transpositional_Anomaly"
clicknpc Transpositional Anomaly##226674+
Scan #6# Transpositional Anomalies |q 83493/1 |goto Tanaris/0 51.45,34.25
step
talk Blue##226658
|tip Inside the building.
turnin Warbands: Rift Reader##83493 |goto Tanaris/0 52.51,26.86
turnin Warbands: Space Ghosts by the Coast##83494 |goto Tanaris/0 52.51,26.86
accept Warbands: Twinsposition##83495 |goto Tanaris/0 52.51,26.86
step
click Transpositional Signal Recombobulatron
Activate the Transpositional Signal Recombobulatron |q 83495/1 |goto Tanaris/0 48.22,31.86
step
Slay Your Evil Twin |q 83495/2 |goto Tanaris/0 48.22,31.87
|tip A copy of yourself will attack you that you must defeat.
step
talk Blue##226658
turnin Warbands: Twinsposition##83495 |goto Tanaris/0 48.47,31.64
accept Warbands: Spacetime is Money##83496 |goto Tanaris/0 48.47,31.64
step
clicknpc De-Recombobulatron Matrix##226981
|tip Inside the building.
Place the De-Recombobulatron Matrix |q 83496/1 |goto Tanaris/0 52.27,29.70
step
talk Blue##226658
|tip Inside the building.
turnin Warbands: Spacetime is Money##83496 |goto Tanaris/0 52.50,26.86
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The War Within (70-80)\\Visions of Azeroth",{
author="support@zygorguides.com",
description="This guide will assist you in completing the Visions of Azeroth campaign.",
startlevel=70,
patch='110000',
},[[
step
Complete the "Andu-falah-dor" Quest |complete completedq(76283)
|tip You must complete the final chapter of the Dragonflight Campaign before beginning this campaign.
|loadguide "Leveling Guides\\Dragonflight (10-70)\\Emerald Dream Campaign"
step
accept The War Within##81930 |goto Stormwind City/0 63.19,72.02
|tip You will automatically accept this quest.
|only if Alliance
step
Meet Jaina in Silithus |q 81930/2 |goto Silithus/0 41.96,45.04
|only if Alliance
step
talk Lady Jaina Proudmoore##213625
turnin The War Within##81930 |goto Silithus/0 41.96,45.04
|only if Alliance
step
accept The War Within##78713 |goto Orgrimmar/1 50.96,78.44
|tip You will automatically accept this quest.
|only if Horde
step
Meet Jaina in Silithus |q 78713/2 |goto Silithus/0 41.96,45.04
|only if Horde
step
talk Lady Jaina Proudmoore##213625
turnin The War Within##78713 |goto Silithus/0 41.96,45.04
|only if Horde
step
talk Thrall##213620
accept Oh, THAT Sword##78714 |goto Silithus/0 41.96,45.05
step
click Titan Translocator
Enter the Heart Chamber |q 78714/1 |goto Silithus/0 43.20,44.49
step
talk Magni Bronzebeard##213624
turnin Oh, THAT Sword##78714 |goto Chamber of Heart/2 50.06,65.19
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
]])
