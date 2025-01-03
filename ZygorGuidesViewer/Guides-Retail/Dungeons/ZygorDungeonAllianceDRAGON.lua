local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("DungeonABFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Battle for Azeroth Dungeons\\Atal'Dazar",{
mapid=934,
achieveid={12824},
patch='80001',
condition_suggested=function() return level>=47 and level <= 50 end,
keywords={"battle","for","azeroth","priestess","alun'za","Vol'kaal","rezan","yazma","zuldazar","Atal'Dazar"},
author="support@zygorguides.com",
description="To complete this dungeon, you will need to kill the following bosses:\n\nPriestess Alun'za\nVol'kaal\nRezan\nYazma",
image=ZGV.IMAGESDIR.."AtalDazar",
},[[
step
Press _I_ and Queue for Atal'Dazar or Enter the Dungeon with your Group |goto Atal'Dazar/0 0.00,0.00 < 1000
step
kill Priestess Alun'za##129614
_EVERYONE:_ |grouprole EVERYONE
|tip Stand near pools of "Tanted Blood". |grouprole EVERYONE
|tip When Priestess Alun'za casts "Transfusion", step into the "Tainted Blood". |grouprole EVERYONE
|tip "Spirits of Gold" ignore combat unless there are no pools of Tainted Blood. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Dispel "Molten Gold" which will be cast on random players. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Use damage mitigation abilities for "Gilded Claws". |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Avoid cauldrons during the encounter or you will be afflicted with "Corrupted Gold", which lowers your damage. |grouprole DAMAGE
Defeat Priestess Alun'za |scenariogoal Priestess Alun'za defeated##1/37074
step
kill Vol'kaal##129399
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid "Toxic Leap". |grouprole EVERYONE
|tip Avoid standing in "Toxic Pool". |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Prepare an AoE heal for "Noxious Stench" casts. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Interrupt "Noxious Stench" when possible. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt "Noxious Stench" when possible. |grouprole DAMAGE
|tip DPS all three Reanimation Totems equally, and kill them quickly at the same time. |grouprole DAMAGE
Defeat Vol'kaal |scenariogoal Vol'kaal defeated##1/37075
step
kill Rezan##139590
_EVERYONE:_ |grouprole EVERYONE
|tip Run away if Rezan uses "Pursue" on you. |grouprole EVERYONE
|tip Be sure to also avoid the "Pile of Bones" on the ground, as they will cause you to move slower. |grouprole EVERYONE
|tip Move out of line of sight when Rezan uses "Terrifying Visage". |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip The tank will take massive damage during "Serrated Teeth". |grouprole HEALER
|tip You will need to use big heals to help keep them up. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Use damage mitigation abilities for "Serrated Teeth". |grouprole TANK
|tip Pick up Reanimated Raptors that spawn from piles of bones during the fight. |grouprole TANK
Defeat Rezan |scenariogoal Rezan defeated##1/37076
step
kill Yazma##129412
_HEALER:_ |grouprole HEALER
|tip Move away from Yazma while afflicted with "Soulrend". |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Use damage mitigation abilities for "Skewer". |grouprole TANK
|tip Move away from "Echoes of Shadra" |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Kill "Soulspawns" before they reach Yazma. |grouprole DAMAGE
|tip Move away from Yazma while afflicted with "Soulrend". |grouprole DAMAGE
|tip |grouprole DAMAGE
Defeat Yazma |scenariogoal Yazma defeated##1/37077
step
_Congratulations!_
You Completed the "Atal'Dazar" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Battle for Azeroth Raids\\Uldir - Halls of Containment",{
mapid=1148,
achieveid={12521},
patch='80001',
condition_suggested=function() return level >= 50 and level <= 50 end,
keywords={"battle","for","azeroth","nazmir","zandalar","taloc","remnant","of","corruption","zek'voz"},
author="support@zygorguides.com",
description="To complete Uldir - Halls of Containment, you will need to kill the following bosses:\n\nTaloc\nRemnant of Corruption\nZek'voz",
},[[
step
Press _I_ and Queue for Uldir - Halls of Containment or Enter the Raid with your Group |goto Uldir/0 0.00,0.00 < 1000
step
kill Taloc##122276
_EVERYONE:_ |grouprole EVERYONE
|tip Move away from allies afflicted with "Cudgel of Gore". |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Allies afflicted with "Plasma Discharge" will take heavy damage. |grouprole HEALER
|tip Avoid standing in front of Taloc when he begins casting "Sanguine Static". |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Face Taloc towards "Blood Storms" when he casts "Cudgel of Gore". |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Focus damage on "Volatile Droplets" when they appear. |grouprole DAMAGE
|tip Avoid standing in front of Taloc when he begins casting "Sanguine Static". |grouprole DAMAGE
Defeat Taloc |confirm
step
kill MOTHER##135452
_EVERYONE:_ |grouprole EVERYONE
|tip Have everyone move through "Defense Grids" as they appear. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Avoid standing in front of MOTHER when she casts "Sanitizing Strike". |grouprole HEALER
|tip Prepare AoE heals for allies passing through the "Defense Grids". |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Quickly pick up "Remnants of Corruption" as they appear. |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Avoid standing in front of MOTHER when she casts "Sanitizing Strike". |grouprole DAMAGE
|tip Make it a priority to interrupt "Clinging Corruption". |grouprole DAMAGE
Defeat MOTHER |confirm
step
kill Zek'voz##134445
_HEALER:_ |grouprole HEALER
|tip Be prepared for "Titan Sparks" as they will deal significant damage to random allies. |grouprole HEALER
|tip If "Orb of Corruption" isn't properly intercepted, be prepared for AoE heals. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Move away from Zek'voz during "Void Lash" while it's affected by "Might of the Void". |grouprole TANK
|tip Interrupt allies afflicted by "Will of the Corruptor". |grouprole TANK
_DAMAGE:_ |grouprole DAMAGE
|tip Make it a priority to intercept "Orbs of Corruption". |grouprole DAMAGE
|tip Move away from allies when "Eye Beam" is about to be cast. |grouprole DAMAGE
|tip Interrupt allies afflicted by "Will of the Corruptor". |grouprole DAMAGE
Defeat Zek'voz |confirm
step
_Congratulations!_
You Completed the "Uldir - Halls of Containment" Raid.
]])
