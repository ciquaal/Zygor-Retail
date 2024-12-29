local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("PetsMountsCTWW") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Coldflame Tempest",{
author="support@zygorguides.com",
description="This guide will help you earn the Coldflame Tempest mount.",
mounts={463133},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","Achievement Mounts","Flying","Achievement","A Cool Twenty Years","Celebration Event"},
patch='110002',
},[[
step
Join _Mount Mania_ at the 20th Anniversary Celebration Event
|tip Stay within range of the event stage.
|tip Mount up with the same mount as Mount Mania Rep Abigail Cyrildotr during the active event.
|tip The name of the mount will be floating above Abigail's head.
Match one mount during _Mount Mania_ |achieve 40976/1 |goto Tanaris/0 63.00,51.34 |or
'|complete hasmount(463133) |or
step
Join _Fashion Frenzy_ at the 20th Anniversary Celebration Event
|tip Stay within range of the circular event stage.
|tip Watch above Althaea's head for the theme of the fashion competition.
|tip Use the Visiting Warpweaver NPCs around the edge of the circular stage, or a transmogrification mount to create your outfit.
|tip Once instructed to do so, go to the small oval table and click a ribbon to gain the voting interface.
|tip Target and vote for 5 players with the transmogrifications that you like.
|tip Repeat the event 4 times, for a total of 20 votes at the Fashion Frenzy.
Cast 20 votes during _Fashion Frenzy_ |achieve 40976/2 |goto Tanaris/0 63.43,48.95 |or
'|complete hasmount(463133) |or
step
click Pet Box##455795
|tip If the Pet Box isn't at this location, you may already have a Pet Mirror in your inventory or bank.
collect Pet Mirror##224157 |goto Tanaris/0 62.02,50.11 |or
'|complete hasmount(463133) |or
step
Summon a Pet of Your Choice
use Pet Mirror##224157
|tip Use it on your pet.
|tip Explore the different celebration areas.
Use a Pet Disguiser to Look Like Your Pet and Explore the Celebration Area |achieve 40976/3 |or
'|complete hasmount(463133) |or
step
Click a Floating Celebration Balloon
|tip Ride the balloon until you get the achievement.
Ride One of the Celebration Balloons |achieve 40976/4 |goto Tanaris/0 64.16,50.18 |or
'|complete hasmount(463133) |or
step
Join _Story Time_ at the 20th Anniversary Celebration Event
|tip Stay within range of the event stage.
|tip As Lorewalker Cho tells his story, look for the extra action button to pop up to react.
|tip Repeat the event as many times as you need to have reacted 50 times.
React to Lorewalker Cho's stories |achieve 40976/5 |goto Tanaris/0 64.07,51.75 |or
'|complete hasmount(463133) |or
step
Kill a World Boss
|tip Kill Azuregos, Lord Kazzak, Lethon, Emeriss, Taerar, or Ysondre.
|tip You will need help with this.
|tip Look on your map to find these bosses.
|tip They are not in Tanaris.
Defeat at least one of the world bosses Listed Above |achieve 40976/6 |or
'|complete hasmount(463133) |or
step
Kill Doomwalker, Sha of Anger, and Archavon the Stonewatcher
|tip Find them all in Tanaris.
|tip You may need help with this.
|tip Press 'I' ind a group in the Group Finder, or join a group at the boss's locations.
Defeat all the Gatecrasher world bosses |achieve 40976/7 |or
'|complete hasmount(463133) |or
step
talk Chromie##226368
Select _"Count me in! <Queue for The Codex of Chromie.>"_ |gossip 122968 |noautogossip
Enter "The Codex of Chromie" Scenario |scenariostart The Codex of Chromie##2555 |goto Tanaris/0 62.56,50.03 |n
|tip This will queue you for the scenario and start forming a group.
|tip It may take some time, especially if you are DPS.
|tip Join the scenario and complete it.
Complete "The Codex of Chromie" Scenario |achieve 40976/8 |or
'|complete hasmount(463133) |or
step
collect Reins of the Coldflame Tempest##228760 |or
'|complete hasmount(463133) |or
step
use Reins of the Coldflame Tempest##228760
learnmount Coldflame Tempest##463133
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Diamond Mechsuit",{
author="support@zygorguides.com",
description="These crystal-powered mechsuits are the epitome of Earthen Federation technology.",
mounts={458335},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","Achievement Mounts","Flying","Achievement","Keystone Master: Season One"},
patch='110002',
},[[
step
Earn the The War Within Keystone Master: Season One Achievement |achieve 20525 |n
|tip Attain a Mythic+ Rating of at least 2000 during The War Within Season One.
collect the Diamond Mechsuit##226357 |or
'|complete hasmount(458335) |or
step
use the Diamond Mechsuit##226357
learnmount Diamond Mechsuit##458335
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Ivory Goliathus",{
author="support@zygorguides.com",
description="Giant beetles that spend their lives in the darkest tunnels of Khaz Algar. Though they are deprived even of the faintest glimmer of artificial sunlight, they still thrive.",
mounts={452779},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","Achievement Mounts"},
patch='110002',
},[[
step
Earn the "Glory of the Delver" Achievement |achieve 40438 |n
|tip Go solo, or form a group, and complete the Achievement "Glory of the Delver".
collect Ivory Goliathus##224415 |or
'|complete hasmount(452779) |or
step
use Ivory Goliathus##224415
learnmount Ivory Goliathus##452779
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Shadowed Swarmite",{
author="support@zygorguides.com",
description="Swarmites are a common sight both in the wilds of Azj-Kahet and among the nerubians who have long domesticated them, but that doesn't make them any less dangerous to incautious adventurers.",
mounts={448188},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","Achievement Mounts","Flying","Achievement","Shadowed Swarmite","Glory of the Nerub-ar Raider",},
patch='110002',
},[[
step
Earn the "Glory of the Nerub-ar Raider" Achievement |achieve 40232 |n
|tip Form a raid group and complete the Achievement "Glory of the Nerub-ar Raider".
collect Reins of the Shadowed Swarmite##223269 |or
'|complete hasmount(448188) |or
step
use Reins of the Shadowed Swarmite##223269
learnmount Shadowed Swarmite##448188
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Swarmite Skyhunter",{
author="support@zygorguides.com",
description="Typically found in the smallest nooks and crannies of rock ceilings, the swarmite skyhunter is more at home in the air than at rest.",
mounts={447195},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","Achievement Mounts","Flying","Achievement","Swarmite","Khaz Algar Glyph Hunter",},
patch='110002',
},[[
step
Earn the "Khaz Algar Glyph Hunter" Achievement |achieve 40702 |n
|tip Discover the Skyriding Glyphs in Khaz Algar.
|tip Use the "Khaz Algar Glyph Hunter" Achievement Guide to accomplish this.
|loadguide "Achievement Guides\\The War Within Achievements\\Hallowfall\\Exploration\\Khaz Algar Glyph Hunter"
collect Swarmite Skyhunter##223267 |or
'|complete hasmount(447195) |or
step
use Shadowed Swarmite##223267
learnmount Shadowed Swarmite##447195
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Blizzard Store Mounts\\Gigantic Grrloc",{
author="support@zygorguides.com",
description="It's the third biggest murloc you've ever seen!",
mounts={463025},
mounttype='Ground',
startlevel=1,
keywords={"TWW","The War Within"},
patch='110002',
},[[
step
Reward for Purchasing a 12 Month Subscription in the Blizzard Online Store
|tip Once purchased and awarded, you may need to unwrap in your mount inventory.
learnmount Gigantic Grrloc##463025
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Blizzard Store Mounts\\Grizzly Hills Packmaster",{
author="support@zygorguides.com",
description="Traders quickly found them a very capable ally when facing the dangers of Northrend and beyond. They also learned that the bears of the Grizzly Hills were fiercely loyal. Especially to those who keep Emperor salmon at hand.",
mounts={457485},
mounttype='Ground',
startlevel=1,
keywords={"TWW","The War Within"},
patch='110020',
},[[
step
Available for Purchase in the Blizzard Online Store
|tip Once purchased or awarded, you may need to unwrap in your mount inventory.
|tip This mount sports a Field Repair Anvil, and a transmogrifying Travel Duffel.
learnmount Grizzly Hills Packmaster##457485
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Blizzard Store Mounts\\Trader's Gilded Brutosaur",{
author="support@zygorguides.com",
description="Morten and Killia never realized how much their new trading partnership across faction lines would pay off. That is until the day they were able to purchase this fine creature to aid them in their travels. And of course do it in gilded style.",
mounts={465235},
mounttype='Ground',
startlevel=1,
keywords={"TWW","The War Within"},
patch='110020',
},[[
step
Available for Purchase in the Blizzard Online Store
|tip Once purchased or awarded, you may need to unwrap in your mount inventory.
|tip This mount sports an Auctioneer, and a Mail Courier.
learnmount Trader's Gilded Brutosaur##465235
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Achievement Mounts\\Slatestone Ramolith",{
author="support@zygorguides.com",
description="",
mounts={449415},
mounttype='Ground',
startlevel=80,
keywords={"TWW","The War Within"},
patch='110000',
},[[
step
Unlock the Earthen race |achieve 40307
|tip Use the Full Zone versions of the "War Within" Leveling guides to accomplish this.
loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
step
collect Reins of the Slatestone Ramolith##223572 |or
'|complete hasmount(449415) |or
step
use Reins of the Slatestone Ramolith##223572
learnmount Slatestone Ramolith##449415
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Alunira",{
author="support@zygorguides.com",
description="For so long, the very embodiment of the clouds laid trapped atop a mountain of lightning. And at last, I can feel the wind at my back once again.",
mounts={447213},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within","Flying","Dropped","Alunira","Isle of Dorn","Elemental"},
patch='110002',
},[[
step
collect 10 Crackling Shard##224025
|tip Killing mobs on the Isle of Dorn to gather these.
step
collect Storm Vessel##224026
|tip Combine 10 Crackling Shards to create a Storm Vessel.
step
use Storm Vessel##224026
|tip Use it on Alunira to break her shield and make her vulnerable to attacks.
kill Alunira##219281 |n
collect Alunira##223270 |goto Isle of Dorn/0 16.60,61.20
You can also find her at [Isle of Dorn/0 23.20,58.40]
step
use Alunira##223270
learnmount Alunira##447213
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Ascendant Skyrazor",{
author="support@zygorguides.com",
description="Intended for the most devoted of the Sureki elite, these skyrazors were favored by Queen Ansurek for both their cunning and brutality.",
mounts={451491},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","Raid","Flying","Dropped","Ascendant Skyrazor","Nerub-ar Palace","Mythic"},
patch='110002',
},[[
step
kill Queen Ansurek##219778
|tip Form a raid group and enter the "Nerub-ar Palace" Raid on Mythic difficulty.
|tip She is the last boss in the raid.
collect Reins of the Ascendant Skyrazor##223270 |goto Isle of Dorn/0 16.60,61.20 |or
'|complete hasmount(451491) |or
step
use Reins of the Ascendant Skyrazor##223270
learnmount Ascendant Skyrazor##451491
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Beledar's Spawn",{
author="support@zygorguides.com",
description="Through the Sacred Flame, whispers of dark carry you to battle.",
mounts={448941},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within","Dropped Mounts","Hallowfall","Flying"},
patch='110002',
},[[
step
kill Beledar's Spawn##207802
|tip It's a large, purple, elemental, rare, elite mob that can spawn in several places during a void phase.
collect Beledar's Spawn##223315 |goto Hallowfall/0 16.60,61.20 |or
'|complete hasmount(448941) |or
step
use Beledar's Spawn##223315
learnmount Beledar's Spawn##448941
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Dauntless Imperial Lynx",{
author="support@zygorguides.com",
description="This lynx's barding has had most of its insignia ripped off. The one remaining tag reads, 'Dauntless'.",
mounts={448979},
mounttype='Ground',
startlevel=80,
keywords={"TWW","The War Within","Dropped Mounts","Hallowfall","Lynx"},
patch='110002',
},[[
step
Complete the Khaz Algar Main Story and The War Within Campaign
|tip Complete this using the Khaz Algar Leveling Guides.
|loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete achieved(20118) and achieved(19560) and achieved(20598) and achieved(19559) and achieved(20597)
step
ding 80
step
label "DAUNTLESS_IMPERIAL_LYNX_RETURN"
Complete the Weekly Quests in Hallowfall
|tip The mount item is looted from _Lamplighter Supply Satchels_ and possibly from Delve chests.
|tip Use the Spreading the Light Keyflame Weekly Quests guide to acquire these satchels.
|tip You can only do this once a week.
loadguide "Daily Guides\\The War Within (70-80)\\Spreading the Light Keyflame Weekly Quests" |or
'|complete hasmount(448941) |or
step
use Lamplighter Supply Satchel##228741
collect Dauntless Imperial Lynx##223318 |goto Hallowfall/0 16.60,61.20 |or
Click Here to Return to the Beginning of the Guide |confirm |next "DAUNTLESS_IMPERIAL_LYNX_RETURN"
'|complete hasmount(448941) |or
step
use Dauntless Imperial Lynx##223318
learnmount Dauntless Imperial Lynx##448979
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Machine Defense Unit 1-11",{
author="support@zygorguides.com",
description="One of many such mechsuits designed to guard the Machine. After years of faithful service it is no longer suited for combat. It does make for an impressive conveyance, though.",
mounts={448188},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","Achievement Mounts"},
patch='110002',
},[[
step
talk Gnawbles##216164
|tip Inside the building.
accept Gearing Up for Trouble##83333 |goto The Ringing Deeps/0 47.66,35.29 |or
'|complete hasmount(448188) |or
step
Complete the Scenario
|tip Complete this using the _Awakening the Machine_ Daily Guide.
|tip You may have to complete the scenario more than once to obtain the mount.
|tip You can only complete this once per week.
|loadguide "Daily Guides\\The War Within (70-80)\\Awakening the Machine" |or
'|complete hasmount(448188) |or
step
click the Awakened Cache##464938
|tip This is the chest near Speaker Kuldas, reward for completing the scenario.
collect Machine Defense Unit 1-11##223269
step
use Machine Defense Unit 1-11##223269
learnmount Machine Defense Unit 1-11##448188
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Ol' Mole Rufus",{
author="support@zygorguides.com",
description="Wiser than words can say and still quick on his feet. He just gets a lil' tired sometimes.",
mounts={449258},
mounttype='Ground',
startlevel=80,
keywords={"TWW","The War Within"},
patch='110002',
},[[
step
kill Lurker of the Deeps <Displaced Sea Horror>##220285 |or
|tip You may have to kill this rare elite more than once to obtain the mount item.
'|complete hasmount(449258) |or
step
collect Regurgitated Mole Reins##223501 |goto The Ringing Deeps/0 60.80,76.60 |or
'|complete hasmount(449258) |or
step
use Regurgitated Mole Reins##223501
learnmount Ol' Mole Rufus##449258
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Sureki Skyrazor",{
author="support@zygorguides.com",
description="The skyrazor was one of the most vicious abominations to emerge from Queen Ansurek's experiments with the Black Blood of the Old Gods.",
mounts={451486},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","Raid","Flying","Dropped","Ascendant Skyrazor","Nerub-ar Palace","Mythic"},
patch='110002',
},[[
step
kill Queen Ansurek##219778
|tip Form a raid group and enter the "Nerub-ar Palace" Raid on Mythic difficulty.
|tip She is the last boss in the raid at any difficulty.
collect Reins of the Ascendant Skyrazor##223270 |goto Isle of Dorn/0 16.60,61.20 |or
'|complete hasmount(451486) |or
step
use Reins of the Ascendant Skyrazor##223270
learnmount Sureki Skyrazor##451486
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Wick",{
author="support@zygorguides.com",
description="Rescued from the ruthless charge of Ol' Waxbeard and the looming threat of The Darkness, now able to nibble on loose wax in peace.",
mounts={449264},
mounttype='Ground',
startlevel=80,
keywords={"TWW","The War Within","Darkflame Cleft"},
patch='110000',
},[[
step
Enter Mythic or Mythic+ Darkflame Cleft with your group |goto The Ringing Deeps/0 59.64,21.57 < 20
kill The Darkness##210797 |or
|tip He will be the boss in the Lightless Depths of the dungeon.
|tip You may have to kill this boss more than once to receive the mount.
'|complete hasmount(449264) |or
step
Loot the boss or the Challenger's Cache
collect Wick's Lead##225548 |or
'|complete hasmount(449264) |or
step
use Wick's Lead##225548
learnmount Wick##449264
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Hand of Reshkigaal",{
author="support@zygorguides.com",
description="Reshkigaal bided her time as her kin each tried their hand at usurping the Banished One. She sought to attack when he was distracted, but the Jailer's spies had been tracking her. With their warning and aid, the Jailer prevailed.",
mounts={459193},
startlevel=1,
keywords={"TWW","The War Within","Trading Post"},
patch='110002',
},[[
step
earn 750 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(459193) |or
step
collect Hand of Reshkigaal##226506 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(459193) |or
step
use Hand of Reshkigaal##226506
|learnmount Hand of Reshkigaal##459193
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Keg Leg's Radiant Crocolisk",{
author="support@zygorguides.com",
description="The pirate captain later known as Keg Leg knew the risks when he rode a hungry crocolisk into battle.",
mounts={457654},
startlevel=1,
keywords={"TWW","The War Within","Trading Post"},
patch='110002',
},[[
step
earn 600 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(457654) |or
step
collect Keg Leg's Radiant Crocolisk##226041 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(457654) |or
step
use Keg Leg's Radiant Crocolisk##226041
learnmount Keg Leg's Radiant Crocolisk##457654
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Plunderlord's Golden Crocolisk",{
author="support@zygorguides.com",
description="What is a Plunderlord without a proper display of plunder?",
mounts={457650},
startlevel=1,
keywords={"TWW","The War Within","Trading Post"},
patch='110002',
},[[
step
earn 600 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
-		'|complete hasmount(457650) |or
step
collect Plunderlord's Golden Crocolisk##226040 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(457650) |or
step
use Plunderlord's Golden Crocolisk##226040
learnmount Plunderlord's Golden Crocolisk##457650
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Plunderlord's Midnight Crocolisk",{
author="support@zygorguides.com",
description="What is a Plunderlord without a proper display of plunder?",
mounts={457656},
startlevel=1,
keywords={"TWW","The War Within","Trading Post"},
patch='110002',
},[[
step
step
collect Plunderlord's Midnight Crocolisk##226042 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(457656) |or
step
use Plunderlord's Midnight Crocolisk##226042
learnmount Plunderlord's Midnight Crocolisk##457656
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Plunderlord's Weathered Crocolisk",{
author="support@zygorguides.com",
description="What is a Plunderlord without a proper display of plunder?",
mounts={457659},
startlevel=1,
keywords={"TWW","The War Within","Trading Post"},
patch='110002',
},[[
step
step
collect Plunderlord's Weathered Crocolisk##226044 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(457659) |or
step
use Plunderlord's Weathered Crocolisk##226044
learnmount Plunderlord's Weathered Crocolisk##457659
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Savage Ebony Battle Turtle",{
author="support@zygorguides.com",
description="What is a Plunderlord without a proper display of plunder?",
mounts={453255},
startlevel=1,
keywords={"TWW","The War Within","Trading Post"},
patch='110002',
},[[
step
earn 000 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
-		'|complete hasmount(453255) |or
step
collect Savage Ebony Battle Turtle##224574 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(453255) |or
step
use Savage Ebony Battle Turtle##224574
learnmount Savage Ebony Battle Turtle##457650
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Profession Mounts\\Crowd Pummeler 2-30",{
author="support@zygorguides.com",
description="Guaranteed to knock the teeth out from your enemies with a single punch!",
mounts={448186},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within","Engineering","Khaz Algar","Flying"},
patch='110002',
},[[
step
collect Crowd Pummeler 2-30##221967 |or
|tip This can be crafted with Khaz Algar Engineering at skill 101, or purchased at the auction house.
'|complete hasmount(448186) |or
step
use Crowd Pummeler 2-30##221967
learnmount Crowd Pummeler 2-30##448186
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Achievement Mounts\\Ebonhide Ramolith",{
author="support@zygorguides.com",
description="",
mounts={449416},
mounttype='Ground',
startlevel=80,
keywords={"TWW","The War Within"},
patch='110002',
},[[
step
collect Reins of the Ebonhide Ramolith##223570 |or
'|complete hasmount(449416) |or
step
use Reins of the Ebonhide Ramolith##223570
learnmount Ebonhide Ramolith##449416
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Quest Mounts\\Stonevault Mechsuit",{
author="support@zygorguides.com",
description="Metal once ruined, restored to life by scrap and song.",
mounts={442358},
mounttype='Flying',
startlevel=72,
keywords={"TWW","The War Within","Dungeon","Stonevault","Flying"},
patch='110002',
},[[
step
kill High Speaker Eirich##219440
|tip This is the last boss in The Stonevault dungeon on Mythic difficulty.
|tip The quest item only drops on any Mythic difficulty.
|tip You may have to run this instance more than once to acquire the quest item drop.
collect Malfunctioning Mechsuit##226683 |or
'|complete hasmount(442358) |or
step
use Malfunctioning Mechsuit##226683
accept A Mech in Need##84020 |or
|tip The quest is account-wide.
'|complete hasmount(442358) |or
step
talk Speaker Jurlax##213875
turnin A Mech in Need##84020 |goto The Ringing Deeps/0 46.94,32.41
accept Machine Without Cogs##84021 |goto The Ringing Deeps/0 46.94,32.41
accept Orienting Ourselves##84023 |goto The Ringing Deeps/0 46.94,32.41
accept Clutching Control##84024 |goto The Ringing Deeps/0 46.94,32.41
|tip These quests are account-wide.
'|complete hasmount(442358)
step
kill Speaker Dorita##213216
|tip Check this boss's loot table to see if the trinket will drop for your class.
|tip Press "I" and queue for The Stonevault, or join a group and enter on any difficulty.
|tip This is the second boss in The Stonevault dungeon.
|tip The quest item trinket drops on any difficulty.
|tip You may have to run this instance more than once to acquire the trinket.
collect Overclocked Gear-a-Rang Launcher##219301 |or
'|complete hasmount(442358) |or
step
kill Goldie Baronbottom##218523
|tip Check this boss's loot table to see if the trinket will drop for your class.
|tip Press "I" and queue for Cinderbrew Meadery, or join a group and enter on any difficulty.
|tip This is one of four bosses in Cinderbrew Meadery dungeon.
|tip The quest item trinket drops on any difficulty.
|tip You may have to run this instance more than once to acquire the trinket.
collect Synergistic Brewterializer##219299 |or
'|complete hasmount(442358) |or
step
kill The Candle King##222096
|tip Check this boss's loot table to see if the trinket will drop for your class.
|tip Press "I" and queue for Darkflame Cleft, or join a group and enter on any difficulty.
|tip This is one of the bosses in Darkflame Cleft dungeon.
|tip The quest item trinket drops on any difficulty.
|tip You may have to run this instance more than once to acquire the trinket.
collect Burin of the Candle King##219306 |or
'|complete hasmount(442358) |or
step
talk Speaker Jurlax##213875
turnin Machine Without Cogs##84021 |goto The Ringing Deeps/0 46.94,32.41
turnin Orienting Ourselves##84023 |goto The Ringing Deeps/0 46.94,32.41
turnin Clutching Control##84024 |goto The Ringing Deeps/0 46.94,32.41
accept Repurposed, Restored##84025 |goto The Ringing Deeps/0 46.94,32.41
'|complete hasmount(442358)
step
talk Speaker Jurlax##213875
turnin Repurposed, Restored##84025 |goto The Ringing Deeps/0 46.94,32.41 |n
collect Stonevault Mechsuit##221765
'|complete hasmount(442358) |or
step
use Stonevault Mechsuit##221765
learnmount Stonevault Mechsuit##442358
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Quest Mounts\\Siesbarg",{
author="support@zygorguides.com",
description="Poor guy.",
mounts={451489},
mounttype='Undead',
startlevel=78,
keywords={"TWW","The War Within","Quest Mount","Tka'ktath","Azj-Kahet"},
patch='110002',
},[[
step
Reach Level 78 |ding 78 |or
'|complete hasmount(451489) |or
step
Complete the Storyline Quests in Azj-Kahet
|tip Complete up through "Rewriting the Rewritten" and "Like a Spider on the Wall".
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)" |or
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)" |or
'|complete completedq(78232,78231) |or
'|complete hasmount(451489) |or
step
kill Tka'ktath##216046
|tip You may need help with this.
|tip Watch for the zone message "The shadow of a hungering beast moves over the city" that indicates the creature has spawned.
collect Vial of Tka'ktath's Blood##225952 |n
|tip You have one chance per day to get the quest item drop.
accept The Beginning of Something Beautiful##83627 |goto Azj-Kahet/0 63.22,66.42 |or
'|complete hasmount(451489) |or
step
talk Shalba <Alchemy Trainer>##218171
|tip Inside the building.
turnin The Beginning of Something Beautiful##83627 |goto City of Threads/0 45.42,13.55 |or
accept Those Are Chitin Words##83719 |goto City of Threads/0 45.42,13.55
'|complete hasmount(451489) |or
step
label "RETURN_TO_NERUBIAN_CHITIN_FARM_CHOICES"
_Choose What to Do Next_
|tip Click the area where you would like to farm Nerubian Chitin.
|tip
Click Here to go to Ara Kara Dungeon |confirm |next "FARM_NERUBIAN_BLOOD_ARAKARA_DUNGEON"
|tip You can queue for the dungeon or enter with a group.
_Or_
Click Here to go to Isle of Dorn |confirm |next "FARM_NERUBIAN_BLOOD_ISLE_OF_DORN"
|tip Lower level, quickly re-spawning mobs, but a lower drop rate.
_Or_
Click Here to go to Azj-Kahet Areas |confirm |next "FARM_NERUBIAN_BLOOD_AZJ-KAHET"
|tip Higher level mobs, possibly higher drop rate.
collect 500 Nerubian Blood##226136 |q 83721/1 |or
'|complete hasmount(451489) |or
step
label "FARM_NERUBIAN_CHITIN_ARAKARA_DUNGEON"
Press _I_ and queue for Ara Kara Dungeon or enter the dungeon with your group
|tip The entrance is on the ground.
|tip Complete at any difficulty.
|tip Recommend killing through the second boss and reset.
|tip
Click Here to Return to Farming Choices |confirm |next "RETURN_TO_NERUBIAN_CHITIN_FARM_CHOICES"
collect 1500 Nerubian Chitin## |goto Nerub'ar/0 52.15,45.89 |q 83719/1 |or
'|complete hasmount(451489) |or
step
label "FARM_NERUBIAN_CHITIN_ISLE_OF_DORN"
Kill Nerubian enemies around this area
|tip Kill above ground and inside the cave.
|tip Watch out for elite mobs.
|tip
Click Here to Return to Farming Choices |confirm |next "RETURN_TO_NERUBIAN_CHITIN_FARM_CHOICES"
collect 1500 Nerubian Chitin## |goto Isle of Dorn/0 76.22,36.74 |q 83719/1 |or
You can find more in this cave [Isle of Dorn/0 75.14,38.60]
'|complete hasmount(451489) |or
step
label "FARM_NERUBIAN_CHITIN_AZJ-KAHET"
Kill Nerubian enemies around this area
|tip
Click Here to Return to Farming Choices |confirm |next "RETURN_TO_NERUBIAN_CHITIN_FARM_CHOICES"
collect 1500 Nerubian Chitin## |goto Azj-Kahet/0 61.53,27.26 |q 83719/1 |or
'|complete hasmount(451489) |or
step
talk Shalba <Alchemy Trainer>##218171
|tip Inside the building.
turnin Those Are Chitin Words##83719 |goto City of Threads/0 45.42,13.55
accept Venom? More Like Get 'Em##83720 |goto City of Threads/0 45.42,13.55 |or
'|complete hasmount(451489) |or
step
label "RETURN_TO_NERUBIAN_VENOM_FARM_CHOICES"
_Choose What to Do Next_
Click Here to go to Isle of Dorn |confirm |next "FARM_NERUBIAN_VENOM_ISLE_OF_DORN"
|tip Lower level, quickly re-spawning mobs.
_Or_
Click Here to go to Azj-Kahet Areas |confirm |next "FARM_NERUBIAN_VENOM_AZJ-KAHET"
|tip Higher level mobs, possibly higher drop rate.
collect 1000 Nerubian Venom##226135 |q 83720/1 |or
'|complete hasmount(451489) |or
step
label "FARM_NERUBIAN_VENOM_ARAKARA_DUNGEON"
Press _I_ and queue for Ara Kara Dungeon or enter the dungeon with your group
|tip The entrance is on the ground.
|tip Complete at any difficulty.
|tip Recommend killing through the second boss and reset.
|tip
Click Here to Return to Farming Choices |confirm |next "RETURN_TO_NERUBIAN_VENOM_FARM_CHOICES"
collect 1000 Nerubian Venom##226135 |goto Nerub'ar/0 52.15,45.89 |q 83720/1 |or
'|complete hasmount(451489) |or
step
label "FARM_NERUBIAN_VENOM_ISLE_OF_DORN"
Kill Nerubian enemies around this area
|tip Kill above ground and inside the cave.
|tip Watch out for elite mobs.
|tip
Click Here to Return to Farming Choices |confirm |next "RETURN_TO_NERUBIAN_VENOM_FARM_CHOICES"
collect 1000 Nerubian Venom##226135 |goto Isle of Dorn/0 76.22,36.74 |q 83720/1 |or
You can find more in this cave [Isle of Dorn/0 75.14,38.60]
'|complete hasmount(451489) |or
step
label "FARM_NERUBIAN_VENOM_AZJ-KAHET"
Kill Nerubian enemies around this area
|tip
Click Here to Return to Farming Choices |confirm |next "RETURN_TO_NERUBIAN_VENOM_FARM_CHOICES"
collect 1000 Nerubian Venom##226135 |goto Azj-Kahet/0 61.53,27.26 |q 83720/1 |or
Find more Nerubian mobs around these areas:
Rak'Ahat Nerubians [Azj-Kahet/0 73.52,49.57]
Noth Venomsprayers [Azj-Kahet/0 72.31,59.10]
Kaheti Nerubians [Azj-Kahet/0 31.09,42.28]
'|complete hasmount(451489) |or
step
talk Shalba <Alchemy Trainer>##218171
|tip Inside the building.
turnin Venom? More Like Get 'Em##83720 |goto City of Threads/0 45.42,13.55
accept A Small Ocean's Worth of Blood##83721 |goto City of Threads/0 45.42,13.55 |or
'|complete hasmount(451489) |or
step
label "RETURN_TO_NERUBIAN_BLOOD_FARM_CHOICES"
_Choose What to Do Next_
|tip Click the area where you would like to farm Nerubian Blood.
|tip
Click Here to Farm Ara Kara Dungeon |confirm |next "FARM_NERUBIAN_BLOOD_ARAKARA_DUNGEON"
|tip You can queue for the dungeon or enter with a group.
_Or_
Click Here to Farm the Isle of Dorn |confirm |next "FARM_NERUBIAN_BLOOD_ISLE_OF_DORN"
|tip Lower level, quickly re-spawning mobs, but a lower drop rate.
_Or_
Click Here to Farm Azj-Kahet |confirm |next "FARM_NERUBIAN_BLOOD_AZJ-KAHET"
|tip Higher level mobs, possibly higher drop rate.
collect 500 Nerubian Blood##226136 |q 83721/1 |or
'|complete hasmount(451489) |or
step
label "FARM_NERUBIAN_BLOOD_ARAKARA_DUNGEON"
Press _I_ and queue for Ara Kara Dungeon or enter the dungeon with your group
|tip The entrance is on the ground.
|tip Complete at any difficulty.
|tip Recommend killing through the second boss and resetting if possible.
|tip
Click Here to Return to Farming Choices |confirm |next "RETURN_TO_NERUBIAN_BLOOD_FARM_CHOICES"
collect 500 Nerubian Blood##226136 |goto Nerub'ar/0 52.15,45.89 |q 83721/1 |or
'|complete hasmount(451489) |or
step
label "FARM_NERUBIAN_BLOOD_ISLE_OF_DORN"
Kill Nerubian enemies around this area
|tip Kill above ground and inside the cave.
|tip Watch out for elite mobs.
|tip
Click Here to Return to Farming Choices |confirm |next "RETURN_TO_NERUBIAN_BLOOD_FARM_CHOICES"
collect 500 Nerubian Blood##226136 |goto Isle of Dorn/0 76.22,36.74 |q 83721/1 |or
You can find more in this cave [Isle of Dorn/0 75.14,38.60]
'|complete hasmount(451489) |or
step
label "FARM_NERUBIAN_BLOOD_AZJ-KAHET"
Kill Nerubian enemies around this area
|tip
Click Here to Return to Farming Choices |confirm |next "RETURN_TO_NERUBIAN_BLOOD_FARM_CHOICES"
collect 500 Nerubian Blood##226136 |goto Azj-Kahet/0 61.53,27.26 |q 83721/1 |or
Find more Nerubian mobs around these areas:
Rak'Ahat Nerubians [Azj-Kahet/0 73.52,49.57]
Leechwing Swarmites [Azj-Kahet/0 65.00,31.40]
Noth Venomsprayers [Azj-Kahet/0 72.31,59.10]
Kaheti Nerubians [Azj-Kahet/0 31.09,42.28]
'|complete hasmount(451489) |or
step
talk Shalba <Alchemy Trainer>##218171
|tip Inside the building.
turnin A Small Ocean's Worth of Blood##83721 |goto City of Threads/0 45.42,13.55
step
accept Consolation Flies##83722 |goto City of Threads/0 45.42,13.55
|tip Follow Shalba to obtain your mount.
turnin Consolation Flies##83722 |goto City of Threads/0 44.22,13.62 |or
'|complete hasmount(451489) |or
step
collect Siesbarg##224150 |goto City of Threads/0 44.22,13.62 |or
'|complete hasmount(451489) |or
step
use Siesbarg##224150
learnmount Siesbarg##451489
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Aquamarine Swarmite",{
author="support@zygorguides.com",
description="While it's not exactly common, the representatives of the Severed Threads assure you that swarmites are more than capable of carrying your weight if you choose to ride it.",
mounts={447185},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within","Flying",},
patch='110002',
},[[
step
earn 3940 Kej##3056 |or
|tip Loot these off mobs you kill in Azj-Kahet.
'|complete hasmount(447185) |or
step
buy Aquamarine Swarmite##223264
'|complete hasmount(447185) |or
step
use Aquamarine Swarmite##223264
learnmount Aquamarine Swarmite##447185
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Crimson Mudnose",{
author="support@zygorguides.com",
description="Frequently used by kobolds as mounts, the Assembly of the Deeps has decided to allow you access to one of their most loyal mudnoses.",
mounts={449269},
mounttype='Ground',
startlevel=70,
keywords={"TWW","The War Within","Ground","Ringing Deeps"},
patch='110002',
},[[
step
Reach Renown Rank 19 with The Assembly of the Deeps |complete factionrenown(2594) >= 19 |or
'|complete hasmount(449269) |or
step
earn 8125 Resonance Crystals##2815 |or
|tip Loot these off rare mobs you kill, and treasure boxes you loot, in The Ringing Deeps. |or
'|complete hasmount(449269) |or
step
talk Waxmonger Squick##221390
buy Crimson Mudnose##223505 |goto The Ringing Deeps/0 47.30,32.93
'|complete hasmount(449269) |or
step
use Crimson Mudnose##223505
learnmount Crimson Mudnose##449269
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Cyan Glowmite",{
author="support@zygorguides.com",
description="Glowmites are well-known in the Ringing Deeps for making surprisingly sturdy mounts. This specimen produces a soft cyan glow that kobolds find especially relaxing.",
mounts={447176},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within","Flying","Ringing Deeps"},
patch='110002',
},[[
step
Reach Renown Rank 23 with The Assembly of the Deeps |complete factionrenown(2594) >= 23 |or
'|complete hasmount(449269) |or
step
earn 11375 Resonance Crystals##2815
|tip Loot these off rare mobs you kill, and treasure boxes you loot, in The Ringing Deeps. |or
'|complete hasmount(447176) |or
step
talk Waxmonger Squick <Quartermaster>##221390
buy Cyan Glowmite##222989 |goto The Ringing Deeps/0 47.30,32.93 |or
'|complete hasmount(447176) |or
step
use Cyan Glowmite##222989
learnmount Cyan Glowmite##447176
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Ferocious Jawcrawler",{
author="support@zygorguides.com",
description="This particularly large jawcrawler is the perfect size to make a mount... just keep your hands and feet clear of its mouth.",
mounts={447957},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within","Flying"},
patch='110002',
},[[
step
earn 2815 Kej##3056 |or
|tip Loot these off mobs you kill in Azj-Kahet.
'|complete hasmount(447957) |or
step
step
use Ferocious Jawcrawler##223274
learnmount Ferocious Jawcrawler##447957
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Heritage Undercrawler",{
author="support@zygorguides.com",
description="Arachnid husbandry is a time-honored tradition amongst the Heritage Forces. Though most specimens are used for transport labor or raised to serve as shock troops, the finest examples of their brood are occasionally trained as parade mounts.",
mounts={448685},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within","Flying",},
patch='110002',
},[[
step
earn 2020 Kej##3056 |or
|tip Loot these off mobs you kill in Azj-Kahet.
'|complete hasmount(448685) |or
step
buy Heritage Undercrawler##223278
'|complete hasmount(448685) |or
step
use Heritage Undercrawler##223278
learnmount Heritage Undercrawler##448685
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Royal Court Undercrawler",{
author="support@zygorguides.com",
description="Patents of lineage are used to demarcate the history and value of thoroughbred undercrawlers in Kaheti high society. This practice can prove somewhat difficult when said undercrawlers are prone to the sudden consumption of their record-keepers.",
mounts={463393},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within","Flying",},
patch='110002',
},[[
step
Reach Conspirator Rank with The Vizier |complete rep("The Vizier") >= Conspirator |or
'|complete hasmount(463393) |or
step
earn 2020 Kej##3056 |or
|tip Loot these from killing mobs, and opening treasures in Azj-Kahet.
'|complete hasmount(463393) |or
step
talk Yamas the Provider##223750
talk Y'tekhi <Severed Threads Quartermaster>##220867
buy Royal Court Undercrawler##223279 |goto Azj-Kahet/0 56.80,47.60 |or
'|complete hasmount(463393) |or
step
use Royal Court Undercrawler##223279
learnmount Royal Court Undercrawler##463393
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Shackled Shadow",{
author="support@zygorguides.com",
description="Who would have guessed that a shadow elemental would make for such a comfortable ride?",
mounts={448939},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within"},
patch='110002',
},[[
step
Reach Renown Rank 23 with the Hallowfall Arathi |complete factionrenown(2570) >= 23 |or
'|complete hasmount(448939) |or
step
earn 11375 Resonance Crystals##2815 |or
|tip Loot these off mobs you kill in Hallowfall.
'|complete hasmount(448939) |or
step
talk Auralia Steelstrike##213145
|tip Inside the building.
buy Shackled Shadow##223314 |goto Hallowfall/0 41.27,53.05 |or
'|complete hasmount(448939) |or
step
use Shackled Shadow##223314
learnmount Shackled Shadow##448939
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Shale Ramolith",{
author="support@zygorguides.com",
description="Earthen have long used ramoliths as beasts of burden due to their hardy nature. Shale ramoliths are considered to be friendlier than most others, though that isn't saying much.",
mounts={449418},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within"},
patch='110002',
},[[
step
Reach Renown Rank 18 with The Council of Dornogal |complete factionrenown(2590) >= 18 |or
'|complete hasmount(449418) |or
step
earn 8125 Resonance Crystals##2815 |or
|tip Loot these off mobs you kill and treasures you loot.
'|complete hasmount(449418) |or
step
talk Auditor Balwurz##223728
|tip Upstairs inside the building.
buy Shale Ramolith##223571 |goto Dornogal/0 39.10,24.17 |or
'|complete hasmount(449418) |or
step
use Shale Ramolith##223571
learnmount Shale Ramolith##449418
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Smoldering Cinderbee",{
author="support@zygorguides.com",
description="Earthen have long used ramoliths as beasts of burden due to their hardy nature. Shale ramoliths are considered to be friendlier than most others, though that isn't saying much.",
mounts={447057},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within"},
patch='110002',
},[[
step
Reach Renown Rank 18 with The Council of Dornogal |complete factionrenown(2590) >= 18 |or
'|complete hasmount(447057) |or
step
earn 8125 Resonance Crystals##2815 |or
|tip Loot these off mobs you kill and treasures you loot.
'|complete hasmount(447057) |or
step
talk Auditor Balwurz##223728
|tip Upstairs inside the building.
buy Smoldering Cinderbee##221753 |goto Dornogal/0 39.10,24.17 |or
'|complete hasmount(447057) |or
step
use Smoldering Cinderbee##221753
learnmount Smoldering Cinderbee##447057
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Soaring Meaderbee",{
author="support@zygorguides.com",
description="This humble bee dreams of open skies. Whether or not an adventurer is along for the ride is of no consequence to it.",
mounts={447151},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within"},
patch='110002',
},[[
step
collect 900 Sizzling Cinderpollen##225557 |or
|tip Loot these off elite mobs you kill and treasures you loot.
'|complete hasmount(447151) |or
step
talk Cendvin##226205
|tip Under the canopy.
buy Reins of the Soaring Meaderbee##223153 goto Isle of Dorn/0 74.33,45.31 |or
'|complete hasmount(447151) |or
step
use Reins of the Soaring Meaderbee##223153
learnmount Soaring Meaderbee##447151
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Vermillion Imperial Lynx",{
author="support@zygorguides.com",
description="Imperial lynxes are considered to be an Arathi's greatest companion, both on and off the battlefield. Sadly, this lynx's previous owner died in battle.",
mounts={448978},
mounttype='Ground',
startlevel=70,
keywords={"TWW","The War Within"},
patch='110002',
},[[
step
Reach Renown Rank 21 with the Hallowfall Arathi |complete factionrenown(2570) >= 21 |or
'|complete hasmount(448978) |or
step
earn 8125 Resonance Crystals##2815 |or
|tip Loot these off mobs you kill in Hallowfall.
'|complete hasmount(448978) |or
step
talk Auralia Steelstrike##213145
|tip Inside the building.
buy Vermillion Imperial Lynx##223317 |goto Hallowfall/0 41.27,53.05 |or
'|complete hasmount(448978) |or
step
use Vermillion Imperial Lynx##223317
learnmount Vermillion Imperial Lynx##448978
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Amani Hunting Bear",{
author="support@zygorguides.com",
description="The Amani trolls ride this fierce creature on ceremonial hunts in honor of the bear god Nalorakk.",
mounts={452645},
mounttype='Ground',
startlevel=10,
keywords={"TWW","The War Within","Timewalking"},
patch='110050',
},[[
step
earn 5000 Timewarped Badges##1166 |or
|tip Earn these in any Timewalking Dungeons, Timewalking quests, missions, or caches.
|tip You can transfer Timewarped Badges from other characters by opening the Character Info interface (press C), click the Currency tab, click Timewarped Badges in the list, click the Transfer button, then choose which characters to tranfer from and the amount to transfer.
'|complete hasmount(452645) |or
step
Wait for the Burning Crusade _Outland Timewalking Event_
Click Here to Proceed |confirm |next |or
'|complete hasmount(452645) |or
step
talk Cupri##98685
buy Reins of the Amani Hunting Bear##224399 |goto Shattrath City/0 54.65,39.45 |or
'|complete hasmount(452645) |or
step
use Reins of the Amani Hunting Bear##224399
learnmount Amani Hunting Bear##452645
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Vendor Mounts\\Thundering Ruby Cloud Serpent",{
author="support@zygorguides.com",
description="From their infancy, Thundering Cloud Serpents are drawn to storms. They have been known to chase lightning through the blackened, roiling clouds, and to bathe in the pouring rain.",
mounts={448978},
mounttype='Flying',
startlevel=70,
keywords={"MOP Remix","Mists of Pandaria Remix"},
patch='100207',
},[[
step
This Mount, Associated Currency, and Vendor may only be Available during The MOP Remix Event
Click Here to Continue |confirm |next
step
earn 38500 Bronze##2778
|tip You earn these by completing quests, killing rares, and opening caches in MOP Remix.
|tip You must be on an MOP Remix created character to earn the Bronze currency and purchase this mount.
step
talk Hemet Nesingwary XVII <Beastmaster>##219032
buy Reins of the Thundering Ruby Cloud Serpent##224374 |goto The Jade Forest/0 42.60,27.00
step
use Reins of the Thundering Ruby Cloud Serpent##224374
learnmount Thundering Ruby Cloud Serpent##132036
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Vendor Mounts\\Remembered Golden Gryphon",{
author="support@zygorguides.com",
description="They love lions in Stormwind, and the gryphon is half lion. This is why these creatures are an air travel staple throughout the Alliance.",
mounts={441324},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within","Pre-Patch Event"},
patch='110002',
},[[
step
This Mount and Associated Currency and Vendor may only be Available during The War Within Pre-Patch Event
Click Here to Continue |confirm |next
step
Complete the "Hunt for the Harbinger" Quest Chain
|tip Use the "Hunt for the Harbinger" Leveling Guide to accomplish this.
|loadguide "Leveling Guides\\Dragonflight (10-70)\\Hunt for the Harbinger"
step
earn 20000 Residual Memories##3089 |or
|tip Loot these from completing Radiant Echoes pre-patch activities.
'|complete hasmount(441324) |or
step
talk Remembrancer Amuul <Residual Memories Vendor>##223710
|tip Inside the Chamber of the Guardian, through the portal in the middle of Legion Dalaran, and all the way down the stairs.
buy Remembered Golden Gryphon##217985 |goto Dalaran L/12 33.33,84.51 |or
'|complete hasmount(441324) |or
step
use Remembered Golden Gryphon##217985
learnmount Remembered Golden Gryphon##441324
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Vendor Mounts\\Remembered Wind Rider",{
author="support@zygorguides.com",
description="They love lions in Stormwind, and the gryphon is half lion. This is why these creatures are an air travel staple throughout the Alliance.",
mounts={441325},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within","Pre-Patch Event"},
patch='110002',
},[[
step
This Mount and Associated Currency and Vendor may only be Available during The War Within Pre-Patch Event
Click Here to Continue |confirm |next
step
earn 20000 Residual Memories##3089 |or
|tip Loot these from completing pre-patch activities.
'|complete hasmount(441325) |or
step
talk Remembrancer Amuul <Residual Memories Vendor>##223710
|tip Inside the Chamber of the Guardian, through the portal in the middle of Legion Dalaran, and all the way down the stairs.
buy Remembered Wind Rider##217987 |goto Dalaran L/12 33.33,84.51 |or
'|complete hasmount(441325) |or
step
use Remembered Wind Rider##217987
learnmount Remembered Wind Rider##441325
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\PVP Mounts\\Forged Gladiator's Fel Bat",{
author="support@zygorguides.com",
description="Awakened from caves in the battlefield, and armored to the fray.",
mounts={449466},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","PVP","Achievement"},
patch='110002',
},[[
step
achieve 40393 |n
|tip Win 50 Games as a Gladiator in The War Within Season One in 3v3.
collect Forged Gladiator's Fel Bat##223586 |or
'|complete hasmount(449466) |or
step
use Forged Gladiator's Fel Bat##223270
learnmount Forged Gladiator's Fel Bat##449466
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\PVP Mounts\\Raging Cinderbee",{
author="support@zygorguides.com",
description="UNKNOWN.",
mounts={451491},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","PVP","Achievement"},
patch='110002',
},[[
step
achieve 40097 |n
|tip Complete the PVP Achievements.
collect Raging Cinderbee##223586 |or
'|complete hasmount(451491) |or
step
use Raging Cinderbee##223270
learnmount Raging Cinderbee##451491
]])
ZGV.BETAEND()
