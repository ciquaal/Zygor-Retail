local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("TitlesALEGION") then return end
ZygorGuidesViewer.GuideMenuTier = "LEG"
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\Class Halls\\Archdruid",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning the Archdruid title.",
},[[
step
This title can only be earned on a _Druid_ character
|tip This title is earned by completing the final Druid Order Hall quest.
Click here to load the "Druid Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-60)\\Druid\\Druid Order Hall Quests" |only Druid
|tip The quest you must complete is "The Demi-God's Return."
Earn the _Archdruid_ title |complete completedq(42055)
step
Congratulations!
You have earned the _Archdruid_ title!
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\Class Halls\\Archmage",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning the Archmage title.",
},[[
step
This title can only be earned on a _Mage_ character
|tip This title is earned by completing the final Mage Order Hall quest.
Click here to load the "Mage Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-60)\\Mage\\Mage Order Hall Quests" |only Mage
|tip The quest you must complete is "Into the Oculus."
Earn the _Archmage_ title |complete completedq(42734)
step
Congratulations!
You have earned the _Archmage_ title!
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\Class Halls\\Battlelord",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning the Battlelord title.",
},[[
step
This title can only be earned on a _Warrior_ character
|tip This title is earned by completing the final Warrior Order Hall quest.
Click here to load the "Warrior Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-60)\\Warrior\\Warrior Order Hall Quests" |only Warrior
|tip The quest you must complete is "The Fate of Hodir."
Earn the _Battlelord_ title |complete completedq(42974)
step
Congratulations!
You have earned the _Battlelord_ title!
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\Class Halls\\Deathlord",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning the Deathlord title.",
},[[
step
This title can only be earned on a _Death Knight_ character
|tip This title is earned by completing the final Death Knight Order Hall quest.
Click here to load the "Death Knight Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-60)\\Death Knight\\Death Knight Order Hall Quests" |only DeathKnight
|tip The quest you must complete is "The Fourth Horseman."
Earn the _Deathlord_ title |complete completedq(43686)
step
Congratulations!
You have earned the _Deathlord_ title!
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\Class Halls\\Farseer",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning the Farseer title.",
},[[
step
This title can only be earned on a _Shaman_ character
|tip This title is earned by completing the final Shaman Order Hall quest.
Click here to load the "Shaman Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-60)\\Shaman\\Shaman Order Hall Quests" |only Shaman
|tip The quest you must complete is "Allegiance of Flame."
Earn the _Farseer_ title |complete completedq(41888)
step
Congratulations!
You have earned the _Farseer_ title!
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\Class Halls\\Grandmaster",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning the Grandmaster title.",
},[[
step
This title can only be earned on a _Monk_ character
|tip This title is earned by completing the final Monk Order Hall quest.
Click here to load the "Monk Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-60)\\Monk\\Monk Order Hall Quests" |only Monk
|tip The quest you must complete is "Storm Brew."
Earn the _Grandmaster_ title |complete completedq(41087)
step
Congratulations!
You have earned the _Grandmaster_ title!
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\Class Halls\\Guardian of G'Hanir",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning the Guardian of G'Hanir title.",
},[[
step
This title can only be earned on a _Druid_ character with the _Restoration_ spec
|tip This title is earned by completing an Order Hall quest.
Click here to load the "Druid Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-60)\\Druid\\Druid Order Hall Quests" |only Druid
|tip The quest you must complete is "Cleansing the Mother Tree."
Earn the _Guardian of G'Hanir_ title |complete completedq(41689)
step
Congratulations!
You have earned the _Guardian of G'Hanir_ title!
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\Class Halls\\High Priest",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning the High Priest title.",
},[[
step
This title can only be earned on a _Priest_ character
|tip This title is earned by completing the final Priest Order Hall quest.
Click here to load the "Priest Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-60)\\Priest\\Priest Order Hall Quests" |only Priest
|tip The quest you must complete is "High Priest of Netherlight."
Earn the _High Priest_ title |complete completedq(43402)
step
Congratulations!
You have earned the _High Priest_ title!
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\Class Halls\\Highlord",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning the Highlord title.",
},[[
step
This title can only be earned on a _Paladin_ character
|tip This title is earned by completing the final Paladin Order Hall quest.
Click here to load the "Paladin Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-60)\\Paladin\\Paladin Order Hall Quests" |only Paladin
|tip The quest you must complete is "Warriors of Light."
Earn the _Highlord_ title |complete completedq(43697)
step
Congratulations!
You have earned the _Highlord_ title!
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\Class Halls\\Huntmaster",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning the Huntmaster title.",
},[[
step
This title can only be earned on a _Hunter_ character
|tip This title is earned by completing the final Hunter Order Hall quest.
Click here to load the "Hunter Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-60)\\Hunter\\Hunter Order Hall Quests" |only Hunter
|tip The quest you must complete is "In Defense of Dalaran."
Earn the _Huntmaster_ title |complete completedq(42659)
step
Congratulations!
You have earned the _Huntmaster_ title!
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\Class Halls\\The Illidari",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning The Illidari title.",
},[[
step
This title is earned by creating a Demon Hunter character
Create a Demon Hunter character |confirm
step
Congratulations!
You have earned _The Illidari_ title!
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\Class Halls\\Netherlord",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning the Shadowblade title.",
},[[
step
This title can only be earned on a _Warlock_ character
|tip This title is earned by completing the final Warlock Order Hall quest.
Click here to load the "Warlock Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-60)\\Warlock\\Warlock Order Hall Quests" |only Warlock
|tip The quest you must complete is "Selecting a Sixth."
Earn the _Netherlord_ title |complete completedq(41796)
step
Congratulations!
You have earned the _Netherlord_ title!
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\Class Halls\\Shadowblade",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning the Shadowblade title.",
},[[
step
This title can only be earned on a _Rogue_ character
|tip This title is earned by completing the final Rogue Order Hall quest.
Click here to load the "Rogue Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-60)\\Rogue\\Rogue Order Hall Quests" |only Rogue
|tip The quest you must complete is "The Imposter."
Earn the _Shadowblade_ title |complete completedq(37689)
step
Congratulations!
You have earned the _Shadowblade_ title!
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\Class Halls\\Slayer",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning the Slayer title.",
},[[
step
This title can only be earned on a _Demon Hunter_ character
|tip This title is earned by completing the final Demon Hunter Order Hall quest.
Click here to load the "Demon Hunter Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-60)\\Demon Hunter\\Demon Hunter Order Hall Quests" |only DemonHunter
|tip The quest you must complete is "I Am the Slayer!"
Earn the _Slayer_ title |complete completedq(43186)
step
Congratulations!
You have earned the _Slayer_ title!
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\Dungeons & Raids\\The Chosen",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning the Chosen title.",
},[[
step
This title is a reward for defeating each boss in the Trial of Valor raid on _Mythic difficulty without dying_
|tip Upon entering, you will get the _Test of the Chosen_ buff.
|tip If you don't have the buff, you won't get the achievement/title. You must defeat each raid boss without dying and maintain the buff.
|achieve 11387
step
Congratulations!
You have earned _The Chosen_ title!
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\Dungeons & Raids\\The Darkener",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning The Darkener title.",
},[[
step
This title is a reward for defeating Kil'jaeden on _Mythic_ difficulty
|tip Kil'jaeden is the last boss in the raid instance _Tomb of Sargeras_.
This part of the raid does not become available until _Tuesday, Aug. 8, 2017_!
confirm |only if not achieved(11781)
step
Enter the Tomb of Sargeras |goto Broken Shore/0 64.56,20.78
kill Kil'jaeden##117269 |achieve 11781
step
Congratulations!
You have earned _The Darkener_ title!
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\Dungeons & Raids\\The Dreamer",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning The Dreamer title.",
},[[
step
This title is earned by defeating Xavius on _Mythic_ difficulty
|tip Xavius is the last boss of the Emerald Nightmare raid
confirm |only if not achieved(10827)
step
Enter the _Emerald Nightmare_ raid |goto Val'sharah/0 56.27,36.79
kill Xavius##103769 |achieve 10827
step
Congratulations!
You have earned _The Dreamer_ title!
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\Dungeons & Raids\\The Tomb Raider",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning The Tomb Raider title.",
},[[
step
This title is a reward for completing the _Glory of the Tomb Raider_ achievement
This raid does not become fully available until _Tuesday, Aug. 8, 2017_!
confirm |only if not achieved(11763)
step
Complete the following objectives to earn this title:
achieve 11763/1
achieve 11763/2
achieve 11763/3
achieve 11763/4
achieve 11763/5
achieve 11763/6
achieve 11763/7
achieve 11763/8
achieve 11763/9
step
Congratulations!
You have earned _The Tomb Raider_ title!
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\Dungeons & Raids\\Vengeance Incarnate",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning the Vengeance Incarnate title.",
},[[
step
This title is a reward for defeating Gul'dan on _Mythic_ difficulty
|tip Gul'dan is the last boss in the raid instance _The Nighthold_
confirm
step
Enter The Nighthold |goto Suramar/0 44.16,59.71
kill Gul'dan##105503 |achieve 10850
step
Congratulations!
You have earned the _Vengeance Incarnate_ title!
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\General\\Crashin' Thrashin'",{
author="support@zygorguides.com",
description="\nTo earn this title, you will be required to collect 200 toys.",
},[[
step
This title is earned by completing the "Crashin' Thrashin' Commander" achievement
Collect 200 Toys |achieve 10354
step
_Congratulations!_
You Earned the "Crashin' Thrashin'" Title.
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\General\\The Fabulous",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning The Fabulous title.",
},[[
step
This title is gained by completing the _Fabulous_ achievement
|tip To complete this achievement, you must collect many different appearances for your gear.
confirm |only if not achieved(10694)
step
Complete the following objectives to earn this title:
Collect 100 hand slot appearances |achieve 10694/1
Collect 100 shoulder slot apperances |achieve 10694/2
Collect 15 shirt slot appearances |achieve 10694/3
Collect 15 tabard slot appearances |achieve 10694/4
Collect 100 weapon and/or off-hand slot appearances |achieve 10694/5
Collect 100 wrist slot appearances |achieve 10694/6
Collect 200 back slot appearances |achieve 10694/7
Collect 100 waist slot appearances |achieve 10694/8
Collect 100 feet slot appearances |achieve 10694/9
Collect 100 leg slot appearances |achieve 10694/10
Collect 100 chest slot appearances |achieve 10694/11
Collect 100 head slot appearances |achieve 10694/12
step
Congratulations!
You have earned _The Fabulous_ title!
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\General\\The Gullible",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning The Gullible title.",
},[[
step
In order to earn this title, you will need to have completed the _What a Ripoff!_ achievement
Click here to load the What a Ripoff! guide |confirm |next "Achievement Guides\\Quests\\Legion\\What a Ripoff!"
|tip You may need a group of 2 or 3 in order to kill the objective enemies.
Earn the _What a Ripoff!_ achievement |achieve 10793
step
talk Gazrix Gearlock##110018
accept Time to Collect##43331 |goto Dalaran L/10 50.16,22.67
step
Use the Grapple Points to climb the rocks
clicknpc Grapple Point##110334
Point 1 |goto Stormheim/0 68.68,20.18 < 20
Point 2 |goto Stormheim/0 69.96,22.38 < 10
Point 3 |goto Stormheim/0 69.78,23.09 < 5
Point 4 |goto Stormheim/0 69.42,23.08 < 5
Point 5 |goto Stormheim/0 69.26,28.13
kill Rax Sixtrigger, Snaggle Sixtrigger
collect Sixtriggers' Key##139276 |q 43331/1 |goto Stormheim/0 68.83,27.90
step
click The Sixtriggers' Premium Stash##251870
turnin Time to Collect##43331 |goto Stormheim/0 68.84,26.07
Earn _The Gullible_ title |achieve 11232
step
Congratulations!
You have earned _The Gullible_ title!
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\General\\Legionary",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning the Legionary title.",
},[[
step
Complete the following Order Hall campaigns:
Death Knight |achieve 11137/1
Demon Hunter |achieve 11137/2
Druid |achieve 11137/3
Hunter |achieve 11137/4
Mage |achieve 11137/5
Monk |achieve 11137/6
Paladin |achieve 11137/7
Priest |achieve 11137/8
Rogue |achieve 11137/9
Shaman |achieve 11137/10
Warlock |achieve 11137/11
Warrior |achieve 11137/12
|tip You can use the Order Hall Quest Guide to accomplish this.
Earn the _Legionary_ title |achieve 11137
step
Congratulations!
You have earned the _Legionary_ title!
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\General\\Lord of the Reins",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning the Lord of the Reins title.",
},[[
step
This title is a reward from the _Lord of the Reins_ achievement
|tip You must collect 300 different mounts for this achievement.
|tip Use our Mount guides to complete this.
Collect #300# unique mounts |achieve 10355
step
Congratulations!
You have earned the _Lord of the Reins_ title!
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\General\\Postmaster",{
author="support@zygorguides.com",
description="\nSort 30 partially addressed letters within 60 seconds in the Postmaster's Office to earn this title.",
},[[
step
click Lost Mail##247797
|tip Lost Mail is found near mailboxes in Dalaran.
|tip It spawns randomly and periodically.
|tip In your minimap tracking menu, enable Mailbox under the Townsfolk category.
|tip Go from mailbox to mailbox searching for a tiny letter at the base.
|tip You can also purchase it from the Auction House.
collect Lost Mail##134859 |n
Read the Lost Mail |use Lost Mail##135479 |only if itemcount(135479) >= 1
accept Lost Mail##41368 |goto Dalaran L/10 58.98,48.70 |only if itemcount(135479) == 0
accept Lost Mail##41411 |goto Dalaran L/10 58.98,48.70 |only if itemcount(135479) >= 1
|tip Only one of these will be available.
step
Enter the tunnel |goto Dalaran L/10 60.41,48.57 < 7 |walk
Go down the stairs |goto Dalaran L/11 76.95,67.93 < 7 |walk
Go down the stairs |goto Dalaran L/11 73.02,64.98 < 7 |walk
Go down the stairs |goto Dalaran L/11 70.11,62.34 < 7 |walk
Follow the path |goto Dalaran L/11 64.82,55.80 < 7 |walk
Follow the path |goto Dalaran L/11 60.23,49.36 < 10 |walk
Enter the tunnel |goto Dalaran L/11 59.70,39.41 < 7 |walk
Leave the tunnel |goto Dalaran L/11 67.27,25.33 < 7 |walk
talk Madam Goya##100986
|tip During periods without guards, The Underbelly is a PvP zone.
|tip Along the path as you reach the bottom of the stairs, talk to Raethan to hire a guard if you desire protection.
|tip Guards last for five minutes.
turnin Lost Mail##41368 |goto Dalaran L/11 71.41,17.92 |only if haveq(41368)
turnin Lost Mail##41411 |goto Dalaran L/11 71.41,17.92 |only if haveq(41411)
step
Enter the tunnel |goto Dalaran L/11 67.39,25.13 < 7 |walk
Leave the tunnel |goto Dalaran L/11 59.70,39.38 < 7 |walk
Enter the tunnel |goto Dalaran L/11 55.70,46.98 < 7 |walk
Leave the tunnel |goto Dalaran L/11 52.95,51.95 < 7 |walk
Follow the path |goto Dalaran L/11 40.99,42.02 < 7 |walk
Enter the tunnel |goto Dalaran L/11 34.74,43.60 < 7 |walk
Leave the tunnel |goto Dalaran L/11 31.30,43.23 < 7 |walk |c |q 41397
step
Enter the tunnel |goto Dalaran L/11 29.42,49.60 < 7 |walk
Go up the ramp |goto Dalaran L/11 27.36,53.52 < 7 |walk
Go up the ramp |goto Dalaran L/11 23.52,55.13 < 7 |walk
Go up the stairs |goto Dalaran L/11 20.26,57.31 < 7 |walk
Go up the stairs |goto Dalaran L/11 24.84,57.31 < 7 |walk
Leave the tunnel |goto Dalaran L/10 34.61,45.56 < 7 |walk |c |q 41397
step
Follow the path |goto Dalaran L/10 33.91,39.18 < 7 |walk
Follow the path |goto Dalaran L/10 32.05,34.54 < 10 |walk
click Mail Tube##280797 |goto Dalaran L/10 33.46,31.60 < 7 |walk
Enter The Postmaster's Office |goto Dalaran L/10 39.46,41.83 < 7 |noway |c |q 41397
step
talk The Postmaster##103976
accept Return to Sender##46278 |goto Dalaran L/10 37.62,40.15
step
Return #9# letters |q 46278/1 |goto Dalaran L/10 38.98,40.71
|tip Click letters floating in the air around the room.
|tip Each one you click will return one letter.
step
talk The Postmaster##103976
turnin Return to Sender##46278 |goto Dalaran L/10 37.62,40.15
accept A Huge Package##41397 |goto Dalaran L/10 37.62,40.15
step
click Sack of Solid Stone
Heft the Solid Stone |q 41397/1 |goto Dalaran L/10 39.75,39.07
step
click Mail Tube##280797 |goto Dalaran L/10 37.87,42.14
Leave The Postmaster's Office |goto Dalaran L/10 32.99,31.62 |noway |c |q 41397
step
Follow the path |goto Dalaran L/10 32.12,35.47 < 10 |walk
Follow the path |goto Dalaran L/10 38.93,44.80 < 10 |walk
Follow the path |goto Dalaran L/10 48.51,26.70 < 10 |walk
Deliver 1,362 pieces of solid stone |q 41397/2 |goto Dalaran L/10 44.34,17.78
|tip Use the extra action button that appears on-screen.
step
Follow the path |goto Dalaran L/10 48.53,26.98 < 10 |only if walking
Follow the path |goto Dalaran L/10 39.21,45.21 < 10 |only if walking
Follow the path |goto Dalaran L/10 31.91,35.16 < 10 |only if walking
click Mail Tube##280797 |goto Dalaran L/10 33.47,31.62 < 7
Enter The Postmaster's Office |goto Dalaran L/10 39.46,41.83 < 7 |noway |c |q 41397
step
talk The Postmaster##103976
turnin A Huge Package##41397 |goto Dalaran L/10 37.61,40.15
accept Priority Delivery##41367 |goto Dalaran L/10 37.61,40.15
step
click Portal to the Frozen Throne
Take the portal to the Frozen Throne |q 41367/1 |goto Dalaran L/10 38.67,40.17
step
clicknpc The Lich King##103996
Retrieve the Forgotten Loot |q 41367/2 |goto Icecrown Citadel L/4 49.35,70.79
step
kill Nexus-Lord Ashaal##132999
Slay Nexus-Lord Ashaal |q 41367/3 |goto Icecrown Citadel L/4 49.35,70.79
step
click Portal to Dalaran##251123 |goto Icecrown Citadel L/4 49.86,38.98
Return to Dalaran |goto Dalaran L/10 60.92,44.72 < 10 |noway |c |q 41367
step
Locate the Stalwart Adventurer |q 41367/4 |goto Feralas/0 68.69,73.06
step
talk Johnny Awesome##52562
turnin Priority Delivery##41367 |goto Feralas/0 68.69,73.06
accept Service with a Smile##41394 |goto Feralas/0 68.69,73.06
step
Follow the path |goto Feralas/0 70.24,72.59 < 10 |only if walking
Follow the path |goto Feralas/0 70.64,72.70 < 7 |only if walking
talk Gott Weedlespan##51735
Select _"I.... have to sell this horse to you."_
Invincible's Reins sold |q 41394/1 |goto Feralas/0 70.76,73.08
step
Follow the path |goto Feralas/0 70.58,72.64 < 10 |only if walking
Follow the path |goto Feralas/0 70.11,72.67 < 10 |only if walking
talk Johnny Awesome##52562
turnin Service with a Smile##41394 |goto Feralas/0 68.69,73.07
accept Due Reward##41395 |goto Feralas/0 68.69,73.07
step
clicknpc Wilson##104110
Honor Twinkles' memory |q 41395/1 |goto Hillsbrad Foothills/0 38.72,59.99
step
Click the Quest Complete Box:
turnin Due Reward##41395
step
click Mail Tube##280797 |goto Dalaran L/10 33.47,31.62 < 7
Enter The Postmaster's Office |goto Dalaran L/10 39.46,41.83 < 7 |noway |c |q 50247
step
talk The Postmaster##103976
accept The Mail Must Flow##50247 |goto Dalaran L/10 37.61,40.13
step
talk The Postmaster##103976 |goto Dalaran L/10 37.61,40.13
Select _"I want to sort letters!"_
|tip Each letter will have an address.
|tip Click the portal for the zone that corresponds to the address.
Sort at Least 15 Letters |q 50247/1 |goto Dalaran L/10 37.59,40.53
step
talk The Postmaster##103976
turnin The Mail Must Flow##50247 |goto Dalaran L/10 37.61,40.13
step
To earn this achievement, you will need to sort 30 partially addressed letters within 60 seconds
talk The Postmaster##103976 |goto Dalaran L/10 37.61,40.13
Select _"Give me a challenge! I want to sort the letters with partial addresses."_
|tip Each letter will have an address.
|tip Click the portal for the zone that corresponds to the address.
|tip Partially addressed letters are more difficult to sort because they do not have a zone name associated with them.
Earn the _Postmaster_ title |achieve 12439 |goto Dalaran L/10 37.59,40.53
step
Congratulations!
You have earned the _Postmaster_ title!
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\General\\Stylist",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning the Stylist title.",
},[[
step
This title is gained by unlocking 10 class armor sets from different raid tiers or PvP seasons
|tip Use our various appearance guides to acquire the sets that interest you.
Unlock #10# Class Armor Sets |achieve 11761
step
Congratulations!
You have earned the _Stylist_ title!
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\General\\Timelord",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning the Timelord title.",
},[[
step
This title is a reward for completing the _Chromie Homie_ achievement
Reach the "Timelord" friendship rank with Chromie |achieve 11941
|tip Use the Deaths of Chromie guides to accomplish this.
step
Congratulations!
You have earned the _Timelord_ title!
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\Player versus Player\\Fearless Gladiator",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning the Fearless Gladiator title.",
},[[
step
This title is gained by finishing Legion arena PvP Season 2 in the top 0.1%
|tip You must also win at least 50 games.
Earn the _Fearless Gladiator_ title |achieve 11014
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\Player versus Player\\Patron of War",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning the Patron of War title.",
},[[
step
This title was a reward for watching the Twitch streams of the World of Warcraft Championship that was held on September 30th - October 2nd 2016
This title could also be earned if players watched the North American Regionals on October 8th - October 9th 2016
Players that watched these Twitch streams had to have their Battle.net account connected to their Twitch account
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\Player versus Player\\Vindictive Gladiator",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning the Vindictive Gladiator title.",
},[[
step
This title is gained by finishing Legion arena PvP Season 1 in the top 0.1%
|tip You must also win at least 50 games.
Earn the _Vindictive Gladiator_ title |achieve 11012
]])
ZygorGuidesViewer:RegisterGuide("Title Guides\\Legion Titles\\Professions\\Archaeology\\The Groundbreaker",{
author="support@zygorguides.com",
description="\nThis guide will assist you in earning The Groundbreaker title.",
},[[
step
This title is earned by completing the _No Stone Unturned_ achievement
|tip You must have the Archaeology skill and complete 250 Legion digsites.
confirm |only if not achieved(10609)
step
Look for red areas on the map while in the Broken Isles
Use your Survey ability while in the digsite |cast Survey##80451
|tip Follow the direction the telescope points to. A shovel icon will appear over your head when you are standing in the right spot.
Complete #250# digsites in Legion |achieve 10609
step
Congratulations!
You have earned _The Groundbreaker_ title!
]])
