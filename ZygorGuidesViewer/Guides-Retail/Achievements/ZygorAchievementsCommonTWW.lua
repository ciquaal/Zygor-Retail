local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("AchievementsCTWW") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\The War Within Achievements\\Hallowfall\\Exploration\\Biblo Archivist",{
author="support@zygorguides.com",
description="Locate all the hidden lore books in Hallowfall.",
achieveid={40622},
patch='110002',
startlevel=70,
keywords={"The War Within", "Exploration"},
},[[
step
Click the Lore Book
Collect _500 Dishes Using Cave Fish and Mushrooms_ |achieve 40622/2 |goto Hallowfall/0 43.90,49.97
|tip On the table, bottom floor.
step
Click the Lore Book
Collect _The Big Book of Arathi Idioms_ |achieve 40622/1 |goto Hallowfall/0 48.11,39.56
|tip On the side table, back left corner.
step
Click the Lore Book
Collect _Palawltar's Codex of Dimensional Structure_ |achieve 40622/6 |goto Hallowfall/0 48.75,64.71
|tip In the bookshelf on the back wall.
step
Click the Lore Book
Collect _Lightspark Sky Academy Gradebook_ |achieve 40622/11 |goto Hallowfall/0 52.63,59.99
|tip On the desk, bottom floor.
step
Click the Lore Book
Collect _Beledar - The Emperor's Vision_ |achieve 40622/10 |goto Hallowfall/0 56.56,65.18
|tip In the Captain's cabin, on his desk, on the ship.
step
Click the Lore Book
Collect _From the Depths They Come_ |achieve 40622/5 |goto Hallowfall/0 57.79,51.77
|tip On the ground, at the water line.
step
Click the Lore Book
Collect _The Song of Renilash_ |achieve 40622/9 |goto Hallowfall/0 70.21,56.85
|tip Inside the pavilion tent, upon the altar.
step
Click the Lore Book
Collect _Care and Feeding of the Imperial Lynx_ |achieve 40622/3 |goto Hallowfall/0 69.36,43.98
|tip Inside the house, on the floor directly to the right as you enter.
step
Click the Lore Book
Collect _Light's Gambit Playbook_ |achieve 40622/4 |goto Hallowfall/0 68.69,41.42
|tip On the bridge.
step
Click the Lore Book
Collect _Shadow Curfew Guidelines_ |achieve 40622/7 |goto Hallowfall/0 64.21,28.09
|tip In the house, on the table against the back wall.
step
Click the Lore Book
Collect _Shadow Curfew Journal_ |achieve 40622/8 |goto Hallowfall/0 59.81,22.11
|tip Inside the ruins of the cabin.
step
Enter the building |goto Hallowfall/0 40.12,51.37
talk Ryfus Sacredpyr##221630 |goto Hallowfall/0 40.00,51.00
|tip Inside the building.
Select _"Ask your question."
Select _"That the Cosmos consisted of monopole elemental phase spaces."
Select _"Patience and respect."
Select _"Seek shelter and light. Have plans, have backup plans. Find joy while sheltering."
Select _"The third fleet."
Select _"The remains of gods."
Select _"From the letters of Mereldar."
Click Here to Continue |confirm |next |or
'|complete hastoy(225659) |or
step
click Small Chest
|tip Its a tiny chest on the table next to Ryfus.
collect Arathi Book Collection##225659 |goto Hallowfall/0 40.02,51.17 |or
'|complete hastoy(225659) |or
step
use Arathi Book Collection##225659
toy Arathi Book Collection##225659
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\The War Within Achievements\\Hallowfall\\Exploration\\Khaz Algar Glyph Hunter",{
author="support@zygorguides.com",
description="Complete the Glyph Hunter achievements in Khaz Algar.",
achieveid={40702},
patch='110002',
startlevel=70,
keywords={"The War Within", "Exploration"},
},[[
step
Fly Through the Skyriding Glyph: Storm's Watch |goto Isle of Dorn/0 38.11,40.79
|tip Just under the tree canopy, on the West side of the tree.
Click Here to Continue |confirm |next |or
'|achieve 40166/3 |or
step
Fly Through the Skyriding Glyph: Dhar Oztan |goto Isle of Dorn/0 23.15,58.52
|tip At the tip top of the Dhaz Oztan mountain.
Click Here to Continue |confirm |next |or
'|achieve 40166/2 |or
step
Fly Through the Skyriding Glyph: Dhar Durgaz |goto Isle of Dorn/0 44.55,79.95
|tip Near the top level of the Dhar Durgaz tower.
Click Here to Continue |confirm |next |or
'|achieve 40166/4 |or
step
Fly Through the Skyriding Glyph: Sunken Shield |goto Isle of Dorn/0 68.22,71.74
|tip Above the stone pillar.
Click Here to Continue |confirm |next |or
'|achieve 40166/5 |or
step
Fly Through the Skyriding Glyph: Mourning Rise |goto Isle of Dorn/0 62.09,44.83
|tip At the top of a rock.
Click Here to Continue |confirm |next |or
'|achieve 40166/9 |or
step
Fly Through the Skyriding Glyph: Ironwold |goto Isle of Dorn/0 71.95,47.22
|tip Under the bridge.
Click Here to Continue |confirm |next |or
'|achieve 40166/10 |or
step
Fly Through the Skyriding Glyph: Cinderbrew Meadery |goto Isle of Dorn/0 78.19,42.74
|tip Above the mountain peak.
Click Here to Continue |confirm |next |or
'|achieve 40166/8 |or
step
Fly Through the Skyriding Glyph: The Three Shields |goto Isle of Dorn/0 75.76,22.22
|tip Middle of the three islands off Northeast coast.
Click Here to Continue |confirm |next |or
'|achieve 40166/1 |or
step
Fly Through the Skyriding Glyph: Thunderhead Peak |goto Isle of Dorn/0 56.37,17.65
|tip On the northwest side of the mountain, between the stone obelisks.
Click Here to Continue |confirm |next |or
'|achieve 40166/7 |or
step
Fly Through the Skyriding Glyph: Thul Medran |goto Isle of Dorn/0 47.79,27.22
|tip Above the mountain peak.
Click Here to Continue |confirm |next |or
'|achieve 40166/6 |or
step
Fly Through the Skyriding Glyph: Gundargaz |goto The Ringing Deeps/0 48.73,31.85
|tip High up between large pipes.
Click Here to Continue |confirm |next |or
'|achieve 40703/1 |or
step
Fly Through the Skyriding Glyph: The Waterworks |goto The Ringing Deeps/0 46.43,51.77
|tip Above the waterfall.
Click Here to Continue |confirm |next |or
'|achieve 40703/9 |or
step
Fly Through the Skyriding Glyph: The Rumbling Wastes |goto The Ringing Deeps/0 56.12,56.08
|tip At the top of a mountain overlooking the rail tracks.
Click Here to Continue |confirm |next |or
'|achieve 40703/5 |or
step
Fly Through the Skyriding Glyph: The Living Grotto |goto The Ringing Deeps/0 49.88,66.11
|tip Near the ceiling, just above the waterfall.
Click Here to Continue |confirm |next |or
'|achieve 40703/6 |or
step
Fly Through the Skyriding Glyph: Abyssal Excavation |goto The Ringing Deeps/0 63.78,95.38
|tip Near the ceiling, by some stalagmites.
Click Here to Continue |confirm |next |or
'|achieve 40703/7 |or
step
Fly Through the Skyriding Glyph: Taelloch Mine |goto The Ringing Deeps/0 62.93,66.14
|tip Above the structures near the ceiling.
Click Here to Continue |confirm |next |or
'|achieve 40703/8 |or
step
Fly Through the Skyriding Glyph: Chittering Den |goto The Ringing Deeps/0 69.37,34.23
|tip At the very top of the middle waterfall.
Click Here to Continue |confirm |next |or
'|achieve 40703/4 |or
step
Fly Through the Skyriding Glyph: Lost Mines |goto The Ringing Deeps/0 57.16,31.31
|tip At the top of a ridge.
Click Here to Continue |confirm |next |or
'|achieve 40703/3 |or
step
Fly Through the Skyriding Glyph: The Stonevault Exterior |goto The Ringing Deeps/0 46.86,09.87
|tip Above the structure, near the ceiling.
Click Here to Continue |confirm |next |or
'|achieve 40703/2 |or
step
Fly Through the Skyriding Glyph: Dunelle's Kindness |goto Hallowfall/0 69.95,44.24
|tip High up, next to the tower.
Click Here to Continue |confirm |next |or
'|achieve 40704/4 |or
step
Fly Through the Skyriding Glyph: The Fangs |goto Hallowfall/0 62.87,51.84
|tip Above a stone outcrop.
Click Here to Continue |confirm |next |or
'|achieve 40704/1 |or
step
Fly Through the Skyriding Glyph: Sanguine Grasps |goto Hallowfall/0 63.67,65.47
|tip Near the low ceiling, between the stalagtites.
Click Here to Continue |confirm |next |or
'|achieve 40704/3 |or
step
Fly Through the Skyriding Glyph: Tenir's Ascent |goto Hallowfall/0 57.57,64.89
|tip Under the docks, in between the air ship and the building.
Click Here to Continue |confirm |next |or
'|achieve 40704/10 |or
step
Fly Through the Skyriding Glyph: Sina's Yearning |goto Hallowfall/0 57.22,32.43
|tip Near the ceiling, by the stalagtites.
Click Here to Continue |confirm |next |or
'|achieve 40704/2 |or
step
Fly Through the Skyriding Glyph: Bleak Sand |goto Hallowfall/0 62.80,07.20
|tip Above the peak of a small mountain.
Click Here to Continue |confirm |next |or
'|achieve 40704/5 |or
step
Fly Through the Skyriding Glyph: Velhan's Claim |goto Hallowfall/0 45.72,12.37
|tip Under the arch of the house bridge.
Click Here to Continue |confirm |next |or
'|achieve 40704/9 |or
step
Fly Through the Skyriding Glyph: Priory of the Sacred Flame |goto Hallowfall/0 35.54,34.02
|tip At the top of one of the towers.
Click Here to Continue |confirm |next |or
'|achieve 40704/7 |or
step
Fly Through the Skyriding Glyph: Fortune's Fall |goto Hallowfall/0 30.89,51.60
|tip Above the wreckage of a boat.
Click Here to Continue |confirm |next |or
'|achieve 40704/8 |or
step
Fly Through the Skyriding Glyph: Mereldar |goto Hallowfall/0 43.40,52.89
|tip At the top of a house.
Click Here to Continue |confirm |next |or
'|achieve 40704/6 |or
step
Fly Through the Skyriding Glyph: Ruptured Lake |goto Azj-Kahet/0 24.73,41.57
|tip Up high, through the large hole in the ceiling, among some hanging roots.
Click Here to Continue |confirm |next |or
'|achieve 40705/3 |or
step
Fly Through the Skyriding Glyph: Eye of Ansurek |goto Azj-Kahet/0 43.04,57.25
|tip Under the docks.
Click Here to Continue |confirm |next |or
'|achieve 40705/4 |or
step
Fly Through the Skyriding Glyph: Old Sacrificial Pit |goto Azj-Kahet/0 13.85,33.94
|tip Inside a cave near the ceiling to the west over the City of Threads.
Click Here to Continue |confirm |next |or
'|achieve 40705/5 |or
step
Fly Through the Skyriding Glyph: Deepwalker Pass |goto Azj-Kahet/0 58.53,89.72
|tip Under the supports of a hanging platform.
Click Here to Continue |confirm |next |or
'|achieve 40705/6 |or
step
Fly Through the Skyriding Glyph: The Maddening Deep |goto Azj-Kahet/0 66.37,84.62
|tip Under a bridge.
Click Here to Continue |confirm |next |or
'|achieve 40705/7 |or
step
Fly Through the Skyriding Glyph: Rak-Ush |goto Azj-Kahet/0 73.26,84.38
|tip Against the wall behind some fungus.
Click Here to Continue |confirm |next |or
'|achieve 40705/8 |or
step
Fly Through the Skyriding Glyph: Silken Ward |goto Azj-Kahet/0 57.59,57.49
|tip Under the platform.
Click Here to Continue |confirm |next |or
'|achieve 40705/9 |or
step
Fly Through the Skyriding Glyph: Untamed Valley |goto Azj-Kahet/0 65.45,51.79
|tip Near the ceiling, among stalagtites.
Click Here to Continue |confirm |next |or
'|achieve 40705/11 |or
step
Fly Through the Skyriding Glyph: Trickling Abyss |goto Azj-Kahet/0 70.47,25.45
|tip Near the ceiling, next to a pillar, as you head down the tunnel.
Click Here to Continue |confirm |next |or
'|achieve 40705/10 |or
step
Fly Through the Skyriding Glyph: Arathi's End |goto Azj-Kahet/0 63.48,13.91
|tip Up inside the tunnel, next to some hanging moss and stalagtites.
Click Here to Continue |confirm |next |or
'|achieve 40705/1 |or
step
Fly Through the Skyriding Glyph: Siegehold |goto Azj-Kahet/0 46.65,21.33
|tip High above Seigehold, on a rocky ledge.
Click Here to Continue |confirm |next |or
'|achieve 40705/2 |or
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\The War Within Achievements\\Hallowfall\\Exploration\\The Missing Lynx",{
author="support@zygorguides.com",
description="Pet the ferocious warcats around Hallowfall.",
achieveid={40625},
patch='110002',
startlevel=70,
keywords={"The War Within", "Exploration"},
},[[
step
Complete The War Within Storyline
|tip You must complete the The War Within storyline and unlock world quests in Hallowfall to reveal all of the tasks required to complete this achievement.
|tip Most of the tasks are available before completing the storyline.
|tip Use "The War Within Leveling Guides" to complete this.
Click Here to Load the "Intro & Isle of Dorn (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the "Intro & Isle of Dorn (Full Zones" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
|tip
Click Here to Continue with this Guide |confirm |next
'|complete achieved(20597)
step
clicknpc Evan##227336 |goto Hallowfall/0 42.69,53.84
|tip Inside the building.
Click Here to Continue |confirm |next |or
'|achieve 40625/2 |or
step
clicknpc Emery##227335 |goto Hallowfall/0 42.73,53.84
|tip Inside the building.
Click Here to Continue |confirm |next |or
'|achieve 40625/3 |or
step
clicknpc Jinx##227411 |goto Hallowfall/0 42.30,53.81
|tip He walks around inside the building.
Click Here to Continue |confirm |next |or
'|achieve 40625/4 |or
step
clicknpc Gobbo##227442 |goto Hallowfall/0 42.14,53.71
|tip On the bed, inside the house.
Click Here to Continue |confirm |next |or
'|achieve 40625/14 |or
step
clicknpc Moog##225421 |goto Hallowfall/0 69.27,43.72
|tip Inside the building.
Click Here to Continue |confirm |next |or
'|achieve 40625/5 |or
step
clicknpc Iggy##225420 |goto Hallowfall/0 69.29,43.68
|tip Inside the building.
Click Here to Continue |confirm |next |or
'|achieve 40625/6 |or
step
clicknpc Fuzzy##219412 |goto Hallowfall/0 64.44,18.57
Click Here to Continue |confirm |next |or
'|achieve 40625/11 |or
step
clicknpc Furball##218887 |goto Hallowfall/0 64.44,18.57
|tip Near Fuzzy.
Click Here to Continue |confirm |next |or
'|achieve 40625/12 |or
step
clicknpc Dander##221106 |goto Hallowfall/0 61.91,20.80
Click Here to Continue |confirm |next |or
'|achieve 40625/13 |or
step
click Lesser Keyflame##00000 |goto Hallowfall/0 63.30,29.40
|tip If it's already lit, you should find Nightclaw nearby.
Click Here to Continue |confirm |next |or
'|achieve 40625/7 |or
step
clicknpc Nightclaw##216549 |goto Hallowfall/0 42.14,53.71
|tip Use the /pet emote.
|tip The Lesser Keyflame must be lit for this lynx to appear.
Click Here to Continue |confirm |next |or
'|achieve 40625/7 |or
step
click Light's Blooming Keyflame##415734 |goto Hallowfall/0 63.50,28.50
|tip If it's already lit, you should find Puurlock and Shadowpouncer nearby.
Click Here to Continue |confirm |next |or
'|achieve 40625/9 |or
step
clicknpc Puurlock##215606 |goto Hallowfall/0 63.79,29.32
|tip Next to a wagon when the rare isn't at this location.
Click Here to Continue |confirm |next |or
'|achieve 40625/9 |or
step
clicknpc Shadowpouncer##215590 |goto Hallowfall/0 63.27,28.07
|tip In front of a tower, next to a lady NPC, when the rare isn't at this location.
Click Here to Continue |confirm |next |or
'|achieve 40625/8 |or
step
clicknpc Miral Murder-Mittens##215041 |goto Hallowfall/0 61.20,30.51
Click Here to Continue |confirm |next |or
'|achieve 40625/10 |or
step
clicknpc Magpie##220720 |goto Hallowfall/0 60.42,60.22
|tip Use the /pet emote.
Click Here to Continue |confirm |next |or
'|achieve 40625/1 |or
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\The War Within Achievements\\Hallowfall\\Exploration\\Khaz Algar Safari",{
author="support@zygorguides.com",
description="Catch every battle pet on Khaz Algar.",
achieveid={40194},
patch='110002',
startlevel=70,
keywords={"The War Within", "Exploration"},
},[[
step
Reach Level 70 |ding 70
|tip You must be level 70 and have The War Within expansion active.
step
clicknpc Magmashell Crawler##222713
This battle pet can be found in The Ringing Deeps and Dornogal.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Magmashell Crawler##4518 |goto Dornogal/0 50.63,42.25
Can also be found around:
[Dornogal/0 45.78,59.61]
[Dornogal/0 45.79,59.20]
[Dornogal/0 50.81,65.19]
[The Ringing Deeps/0 43.03,07.59]
[The Ringing Deeps/0 48.39,11.21]
[The Ringing Deeps/0 42.20,19.76]
[The Ringing Deeps/0 50.61,18.06]
step
clicknpc Sandstone Mosswool##222775
|tip This battle pet can be found in Dornogal and on Isle of Dorn.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
|tip This pet can also be captured as a backup pet on the Isle of Dorn.
learnpet Sandstone Mosswool##4526 |goto Dornogal/0 53.11,23.94
Can also be found around:
[Dornogal/0 63.78,27.21]
[Dornogal/0 73.59,32.20]
[Dornogal/0 35.20,32.39]
[Dornogal/0 36.62,72.39]
[Isle of Dorn/0 42.61,73.18]
[Isle of Dorn/0 57.39,29.19]
[Isle of Dorn/0 61.59,27.59]
step
clicknpc Fallowspark Glowfly##222613
|tip This battle pet can be found, usually around light sources, in Dornogal, Isle of Dorn, Hallowfall, The Ringing Deeps, and Azj-Kahet.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Fallowspark Glowfly##4514 |goto Dornogal/0 54.60,18.00
Can also be found around:
[Isle of Dorn/0 59.80,30.60]
[Isle of Dorn/0 53.60,68.40]
[Isle of Dorn/0 57.80,61.20]
[Isle of Dorn/0 65.60,56.20]
[The Ringing Deeps/0 54.00,32.40]
[The Ringing Deeps/0 49.00,30.40]
[The Ringing Deeps/0 56.20,73.00]
[Hallowfall/0 70.80,45.40]
[Hallowfall/0 70.46,46.08]
[Azj-Kahet/0 54.00,51.80]
[Azj-Kahet/0 77.80,61.40]
step
clicknpc Meek Bloodlasher##222875
|tip You can find this battle pet in The Ringing Deeps, Isle of Dorn, and Hallowfall.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Meek Bloodlasher##4533 |goto Isle of Dorn/0 53.85,66.74
Can also be found around:
[Isle of Dorn/0 51.60,67.38]
[Isle of Dorn/0 72.80,39.00]
[Isle of Dorn/0 73.20,37.79]
[The Ringing Deeps/0 53.40,30.19]
[The Ringing Deeps/0 43.59,35.21]
[The Ringing Deeps/0 50.40,39.20]
[The Ringing Deeps/0 57.19,35.21]
[The Ringing Deeps/0 55.20,63.21]
[Hallowfall/0 62.60,45.20]
[Hallowfall/0 55.79,37.59]
step
clicknpc Ghostcap Menace##222877
|tip This battle pet can be found in Hallowfall, The Ringing Deeps, and Isle of Dorn.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Ghostcap Menace##4535 |goto Isle of Dorn/0 53.85,66.74
Can also be found around:
[Isle of Dorn/0 51.60,70.38]
[Isle of Dorn/0 70.80,43.00]
[Isle of Dorn/0 66.20,48.79]
[The Ringing Deeps/0 51.60,30.59]
[The Ringing Deeps/0 56.59,34.01]
[The Ringing Deeps/0 44.20,35.40]
[The Ringing Deeps/0 50.59,43.59]
[The Ringing Deeps/0 56.60,63.41]
[Hallowfall/0 58.80,28.38]
[Hallowfall/0 58.79,36.59]
step
clicknpc Mossy Snail##222499
|tip This battle pet can be found in Isle of Dorn and Dornogal.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Mossy Snail##4485 |goto Dornogal/0 75.61,32.04
Can also be found around:
[Isle of Dorn/0 44.60,59.38]
[Isle of Dorn/0 33.56,63.00]
[Isle of Dorn/0 24.60,68.99]
[Isle of Dorn/0 40.20,74.58]
[Isle of Dorn/0 49.60,75.00]
[Isle of Dorn/0 63.38,67.79]
[Isle of Dorn/0 54.20,60.18]
[Isle of Dorn/0 68.80,54.80]
[Isle of Dorn/0 72.80,29.79]
step
clicknpc Subterranean Dartswog##222736
|tip This battle pet can be found in Hallowfall, The Ringing Deeps, Isle of Dorn, and Azj-Kahet.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Subterranean Dartswog##4521 |goto Isle of Dorn/0 57.60,44.58
Can also be found around:
[Isle of Dorn/0 53.36,67.00]
[Isle of Dorn/0 67.00,47.19]
[Isle of Dorn/0 63.00,31.19]
[The Ringing Deeps/0 54.63,34.22]
[The Ringing Deeps/0 57.63,34.80]
[The Ringing Deeps/0 71.80,35.76]
[The Ringing Deeps/0 53.21,58.42]
[Hallowfall/0 45.80,32.78]
[Hallowfall/0 49.79,64.01]
[Azj-Kahet/0 53.01,32.62]
[Azj-Kahet/0 59.22,47.38]
[Azj-Kahet/0 59.80,67.20]
step
clicknpc Troglofrog##222739
|tip This battle pet can be found in Hallowfall, The Ringing Deeps, Isle of Dorn, and Azj-Kahet.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Troglofrog##4522 |goto Isle of Dorn/0 53.77,66.59
Can also be found around:
[Isle of Dorn/0 61.61,60.18]
[Isle of Dorn/0 57.59,69.19]
[Isle of Dorn/0 66.19,32.39]
[The Ringing Deeps/0 45.01,31.42]
[The Ringing Deeps/0 48.03,46.60]
[The Ringing Deeps/0 70.00,40.00]
[The Ringing Deeps/0 60.41,70.02]
[Hallowfall/0 76.58,39.98]
[Hallowfall/0 56.59,31.41]
[Azj-Kahet/0 38.01,58.02]
[Azj-Kahet/0 41.22,52.00]
[Azj-Kahet/0 58.80,63.60]
step
clicknpc Fragrant Stonelamb##222774
|tip This battle pet can be found on the Isle of Dorn.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Fragrant Stonelamb##4525 |goto Isle of Dorn/0 57.21,42.19
Can also be found around:
[Isle of Dorn/0 58.81,26.81]
[Isle of Dorn/0 69.79,31.19]
[Isle of Dorn/0 69.39,46.19]
[Isle of Dorn/0 53.41,53.79]
[Isle of Dorn/0 53.59,74.79]
[Isle of Dorn/0 38.21,73.19]
[Isle of Dorn/0 30.60,64.59]
step
clicknpc Shale Mosswool##222778
|tip This battle pet can be found on the Isle of Dorn.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Shale Mosswool##4529 |goto Isle of Dorn/0 38.02,38.81
Can also be found around:
[Isle of Dorn/0 55.58,60.21]
[Isle of Dorn/0 60.79,59.59]
[Isle of Dorn/0 57.20,26.41]
[Isle of Dorn/0 61.41,27.00]
step
clicknpc Bedrock Stonecharger##223090
|tip This battle pet can be found on the Isle of Dorn and in Dornogal.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Bedrock Stonecharger##4541 |goto Dornogal/0 53.11,23.94
Can also be found around:
[Dornogal/0 59.18,55.61]
[Isle of Dorn/0 45.20,52.58]
[Isle of Dorn/0 50.39,72.39]
[Isle of Dorn/0 60.59,44.59]
[Isle of Dorn/0 34.47,81.61]
step
clicknpc Cobalt Ramolith##223094
|tip This battle pet can be found on the Isle of Dorn.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Cobalt Ramolith##4538 |goto Isle of Dorn/0 45.60,60.80
Can also be found around:
[Isle of Dorn/0 53.49,20.12]
[Isle of Dorn/0 44.60,66.58]
[Isle of Dorn/0 32.59,64.00]
[Isle of Dorn/0 25.59,54.39]
[Isle of Dorn/0 66.17,44.61]
[Isle of Dorn/0 53.62,31.62]
[Isle of Dorn/0 44.60,24.18]
[Isle of Dorn/0 56.01,16.60]
step
clicknpc Granite Ramolith##223093
|tip This battle pet can be found in Isle of Dorn.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Granite Ramolith##4539 |goto Isle of Dorn/0 39.41,43.22
Can also be found around:
[Isle of Dorn/0 37.28,44.20]
[Isle of Dorn/0 39.62,41.79]
[Isle of Dorn/0 46.00,57.61]
[Isle of Dorn/0 43.62,69.79]
[Isle of Dorn/0 24.22,51.59]
[Isle of Dorn/0 35.80,74.21]
[Isle of Dorn/0 45.02,77.21]
step
clicknpc Alabaster Stonecharger##223092
|tip This battle pet can be found on the Isle of Dorn.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Alabaster Stonecharger##4540 |goto Isle of Dorn/0 46.99,29.54
Can also be found around:
[Isle of Dorn/0 45.58,25.60]
[Isle of Dorn/0 51.22,27.59]
[Isle of Dorn/0 58.00,18.61]
step
clicknpc Cinderhoney Emberstinger##223698
|tip This battle pet can be found on the Isle of Dorn.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Cinderhoney Emberstinger##4577 |goto Isle of Dorn/0 68.37,41.63
Can also be found around:
[Isle of Dorn/0 71.58,36.02]
[Isle of Dorn/0 75.20,43.39]
[Isle of Dorn/0 75.22,47.81]
step
clicknpc Azure Flickerfly##222614
|tip This battle pet can be found, usually around light sources, in The Ringing Deeps and Hallowfall.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Azure Flickerfly##4515 |goto The Ringing Deeps/0 40.80,18.20
Can also be found around:
[The Ringing Deeps/0 43.20,24.00]
[The Ringing Deeps/0 42.60,28.60]
[Hallowfall/0 55.40,40.20]
[Hallowfall/0 55.80,43.40]
[Hallowfall/0 63.60,46.00]
step
clicknpc Common Ploughworm##222584
|tip This battle pet can be found in The Ringing Deeps and Hallowfall.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Common Ploughworm##4499 |goto The Ringing Deeps/0 42.40,16.20
Can also be found around:
[The Ringing Deeps/0 40.40,19.80]
[The Ringing Deeps/0 43.00,21.80]
[The Ringing Deeps/0 44.60,27.80]
[The Ringing Deeps/0 48.00,34.60]
[The Ringing Deeps/0 57.60,29.20]
[Hallowfall/0 47.60,42.00]
[Hallowfall/0 64.40,30.00]
step
clicknpc Ebon Ploughworm##222582
|tip This battle pet can be found in The Ringing Deeps and Hallowfall.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Ebon Ploughworm##4498 |goto The Ringing Deeps/0 42.62,22.23
Can also be found around:
[The Ringing Deeps/0 45.20,25.80]
[The Ringing Deeps/0 43.60,27.60]
[The Ringing Deeps/0 55.20,30.60]
[Hallowfall/0 40.80,54.20]
step
clicknpc Chitin Burrower##222071
|tip This battle pet can be found in Hallowfall, The Ringing Deeps, and Azj-Kahet.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Chitin Burrower##4457 |goto The Ringing Deeps/0 54.40,38.80
Can also be found around:
[The Ringing Deeps/0 78.00,60.20]
[The Ringing Deeps/0 76.80,64.40]
[Hallowfall/0 55.80,43.00]
[Hallowfall/0 69.80,52.60]
[Hallowfall/0 72.60,59.60]
[Hallowfall/0 78.40,42.60]
[Azj-Kahet/0 76.80,64.40]
[Azj-Kahet/0 78.00,60.20]
step
clicknpc Arachnoid Hatchling##222066
|tip This battle pet can be found in Hallowfall, The Ringing Deeps, and Azj-Kahet.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Arachnoid Hatchling##4456 |goto The Ringing Deeps/0 55.40,45.20
Can also be found around:
[The Ringing Deeps/0 62.60,44.60]
[The Ringing Deeps/0 72.20,38.00]
[Azj-Kahet/0 54.00,51.80]
[Azj-Kahet/0 77.80,61.40]
step
clicknpc Vibrant Glowfly##222615
|tip This battle pet can be found, usually around light sources, in The Ringing Deeps, Azj-Kahet, and Hallowfall.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Vibrant Glowfly##4516 |goto The Ringing Deeps/0 45.60,14.00
Can also be found around:
[The Ringing Deeps/0 40.20,19.80]
[The Ringing Deeps/0 51.00,20.00]
[The Ringing Deeps/0 65.80,30.80]
[The Ringing Deeps/0 48.00,34.60]
[The Ringing Deeps/0 62.60,47.60]
[Hallowfall/0 50.00,40.00]
[Hallowfall/0 41.40,55.00]
[Azj-Kahet/0 61.20,51.20]
[Azj-Kahet/0 75.00,78.00]
step
clicknpc Snuffling##223715
|tip This battle pet can be found in The Ringing Deeps.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Snuffling##4574 |goto The Ringing Deeps/0 67.01,47.39
Can also be found around:
[The Ringing Deeps/0 45.01,31.42]
[The Ringing Deeps/0 48.03,46.60]
[The Ringing Deeps/0 70.00,40.00]
[The Ringing Deeps/0 60.41,70.02]
step
clicknpc Greenlands Chicken##222194
|tip This battle pet can be found in Hallowfall.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Greenlands Chicken##4461 |goto Hallowfall/0 61.21,29.84
Can also be found around:
[Hallowfall/0 48.80,40.00]
[Hallowfall/0 47.80,63.60]
step
clicknpc Arathi Chicken##222195
|tip This battle pet can be found in Hallowfall.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Arathi Chicken##4460 |goto Hallowfall/0 63.15,28.12
Can also be found around:
[Hallowfall/0 66.00,28.00]
[Hallowfall/0 62.20,38.00]
[Hallowfall/0 50.00,37.00]
[Hallowfall/0 47.00,64.80]
step
clicknpc Winged Arachnoid##222608
|tip This battle pet can be found in Hallowfall and Azj-Kahet.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Winged Arachnoid##4510 |goto Hallowfall/0 65.86,39.39
Can also be found around:
[Hallowfall/0 68.80,32.22]
[Hallowfall/0 69.79,53.79]
[Hallowfall/0 72.20,62.98]
[Hallowfall/0 65.59,64.02]
[Azj-Kahet/0 69.00,74.60]
[Azj-Kahet/0 78.40,75.40]
[Azj-Kahet/0 78.20,80.60]
step
clicknpc Umbral Amalgam##223136
|tip This battle pet can be found in Hallowfall.
|tip It can also be a backline pet.
|tip Beware of it's self-destruct spell, as the pet may kill itself and avoid capture.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Umbral Amalgam##4544 |goto Hallowfall/0 46.19,31.82
Can also be found around:
[Hallowfall/0 76.58,39.98]
[Hallowfall/0 58.79,54.21]
[Hallowfall/0 61.78,44.18]
[Hallowfall/0 63.19,49.01]
[Hallowfall/0 72.00,45.81]
[Hallowfall/0 58.80,49.21]
[Hallowfall/0 48.38,59.00]
[Hallowfall/0 54.19,52.01]
step
clicknpc Aubergine Scootlefish##222325
|tip This battle pet can be found in Azj-Kahet.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Aubergine Scootlefish##4471 |goto Azj-Kahet/0 36.56,55.02
Can also be found around:
[Azj-Kahet/0 59.60,47.40]
[Azj-Kahet/0 77.20,42.60]
[Azj-Kahet/0 54.80,67.20]
[Azj-Kahet/0 70.60,74.80]
step
clicknpc Verdant Scootlefish##222344
|tip This battle pet can be found in Azj-Kahet.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Verdant Scootlefish##4477 |goto Azj-Kahet/1 35.20,53.00
Can also be found around:
[Azj-Kahet/0 40.00,61.20]
[Azj-Kahet/0 54.20,41.00]
[Azj-Kahet/0 61.60,47.60]
[Azj-Kahet/0 71.20,45.80]
[Azj-Kahet/0 73.60,38.80]
step
clicknpc Vile Bloodtick##222421
|tip This battle pet can be found in Azj-Kahet.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Vile Bloodtick##4483 |goto Azj-Kahet/0 47.19,56.63
Can also be found around:
[Azj-Kahet/0 47.41,51.20]
[Azj-Kahet/0 53.60,68.20]
[Azj-Kahet/0 57.20,63.60]
step
clicknpc Voidling Ooze##222354
|tip This battle pet can be found in Azj-Kahet.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Voidling Ooze##4481 |goto Azj-Kahet/0 60.80,74.80
Can also be found around:
[Azj-Kahet/0 61.00,81.60]
[Azj-Kahet/0 63.60,89.00]
[Azj-Kahet/0 67.00,84.60]
step
clicknpc Shadowy Oozeling##222351
|tip This battle pet can be found in Azj-Kahet.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Shadowy Oozeling##4480 |goto Azj-Kahet/1 63.85,87.34
Can also be found around:
[Azj-Kahet/0 61.00,80.60]
[Azj-Kahet/0 63.60,87.60]
[Azj-Kahet/0 66.60,77.60]
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Lost and Found",{
author="support@zygorguides.com",
description="Return every lost Hallowfall memento found with Maera Ashyld.",
achieveid={40618},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
talk Maera Ashyld##220718
accept Runway Scare-a-way##80673 |goto Hallowfall/0 60.49,60.21
accept Torching Lights##80677 |goto Hallowfall/0 60.49,60.21
stickystart "Kill_Flickering_Glowmoths"
step
use the Lamplighter Firearm##219943
|tip Use it on {o}Moth Eggs{}.
|tip They look like {o}clusters of brown eggs{}.
|tip They are {o}up on the huge tall plants{}.
Torch #15# Moth Egg Bunches |q 80677/1 |goto Hallowfall/0 61.14,62.53
step
label "Kill_Flickering_Glowmoths"
kill 25 Flickering Glowmoth##220691 |q 80673/1 |goto Hallowfall/0 61.14,62.53
|tip They are flying up {o}above the huge tall plants{}.
|tip {o}Fly through them (skyriding){} to kill them.
step
talk Maera Ashyld##220718
turnin Runway Scare-a-way##80673 |goto Hallowfall/0 60.49,60.21
turnin Torching Lights##80677 |goto Hallowfall/0 60.49,60.21
accept Time Lost##80678 |goto Hallowfall/0 60.49,60.21
step
Kill enemies around this area
click Sludge Pile+
|tip They look like {o}small mounds of junk{}.
Collect #6# Mementos |q 80678/1 |goto Hallowfall/0 60.39,61.79
'|kill Sludgeborn Shambler##220734, Mirehat Fungalmancer##221362, Mirehat Sporedancer##221363, Cultivated Mireshroom##221366
step
talk Maera Ashyld##220718
turnin Time Lost##80678 |goto Hallowfall/0 60.49,60.21
step
talk Phillip Taversil##218486
accept Stuffed Lynx Toy##80679 |goto Hallowfall/0 43.28,55.44 |instant
step
click Grave Offering Location##439890
accept Tarnished Compass##80680 |goto Hallowfall/0 43.48,51.73 |instant
step
talk Keyrra Flamestonge##215527
accept Broken Bracelet##80681 |goto Hallowfall/0 65.45,32.23 |instant
step
Wait for the Next Weekly Reset |complete not completedq(82749) or completedq(82810)
|tip To continue, you must wait for the next Tuesday reset.
step
talk Maera Ashyld##220718
|tip This quest is only available after the weekly reset following the completion of {o}Time Lost{} quest.
|tip It should be available now. |only if not completedq(82749)
accept Time Found##82810 |goto Hallowfall/0 60.49,60.21
step
Kill enemies around this area
click Sludge Pile+
|tip They look like {o}small mounds of junk{}.
Collect #6# Mementos |q 82810/1 |goto Hallowfall/0 60.39,61.79
'|kill Sludgeborn Shambler##220734, Mirehat Fungalmancer##221362, Mirehat Sporedancer##221363, Cultivated Mireshroom##221366
step
talk Maera Ashyld##220718
turnin Time Found##82810 |goto Hallowfall/0 60.49,60.21
step
talk Auralia Steelstrike##213145
accept Dented Spearhead##82846 |goto Hallowfall/0 42.35,55.00 |instant
step
talk Kiera Horth##217813
|tip Inside the building.
accept Filigreed Cleric##82849 |goto Hallowfall/0 43.97,49.71 |instant
step
talk Haverd Sunhart##226051
|tip Up on the platform.
accept Ivory Tinderbox##82845 |goto Hallowfall/0 41.64,34.76 |instant
step
Wait for the Next Weekly Reset |complete not completedq(82749) or completedq(82813)
|tip To continue, you must wait for the next Tuesday reset.
step
talk Maera Ashyld##220718
|tip This quest is only available after the weekly reset following the completion of {o}Time Found{} quest.
|tip It should be available now. |only if not completedq(82749)
accept Time Borrowed##82813 |goto Hallowfall/0 60.49,60.21
step
Kill enemies around this area
click Sludge Pile+
|tip They look like {o}small mounds of junk{}.
Collect #6# Mementos |q 82813/1 |goto Hallowfall/0 60.39,61.79
'|kill Sludgeborn Shambler##220734, Mirehat Fungalmancer##221362, Mirehat Sporedancer##221363, Cultivated Mireshroom##221366
step
talk Maera Ashyld##220718
turnin Time Borrowed##82813 |goto Hallowfall/0 60.49,60.21
step
talk Barahl Lynflayme##217609
|tip Inside the building.
accept Wooden Figure##82832 |goto Hallowfall/0 69.25,43.83 |instant
step
talk Lorel Ironglen##222813
accept Calcified Journal##82835 |goto Hallowfall/0 48.42,38.89 |instant
step
talk Amy Lychenstone##220859
|tip She walks all over this area of town.
|tip Check along the roads and inside the buildings at the two locations.
accept Sturdy Locket##82815 |goto Hallowfall/0 43.19,49.79 |instant
Also check around [Hallowfall/0 42.07,49.39]
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\TWW Raids\\Glory of the Nerub-ar Raider",{
author="support@zygorguides.com",
description="Return every lost Hallowfall memento found with Maera Ashyld.",
achieveid={40618},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
_Defeat Ulgrax while keeping the Spider Silk Grub alive in Nerub-ar Palace at Normal difficulty or higher._
|tip You can move the Spider Silk Grub by walking up to him.
|tip The Spider Silk Grub can not be healed, and despawns if it is hit by any damage.
|tip Position your raid team so the Spider Silk Grub doesn't get hit by Ulgrax's attacks or charges.
|tip Ads during the intermission phase are the most likely to hit him, so zerg Ulgrax down in the first phase to skip.
|tip The achievement is earned once Ulgrax is defeated and the Spider Silk Grub is still alive.
achieve 40232/1
step
_Defeat The Bloodbound Horror after all players are Slimed! and then defeat a Volatile Ooze in Nerub-ar Palace on Normal difficulty or higher._
|tip After being hit by the frontal cone attack, Gruesome Disgorge, each player must step on a slime in the shadow realm to gain the Slimed! debuff.
|tip Players, be sure to defeat the ads before running for slimes to avoid unnecessary raid damage.
|tip Once all players are Slimed! and phased out, stack the raid to spawn, and defeat, the Volatile Ooze.
|tip If a player dies, the Volatile Ooze will not spawn, and you must reset and try again.
|tip The achievement is earned once The Bloodbound Horror is defeated after following the steps.
achieve 40232/2
step
_Defeat Sikran after all players are affected by Riposte in Nerub-ar Palace on Normal difficulty or higher._
|tip Four players click one of the weapon racks that are outside the boss area.
|tip When Sikran is at around 20% health, these players should use the extra action button on Sikran, which will drop the weapon for another player to pick up.
|tip The weapons might be difficult to see on the floor, so move the boss around to reveal them to players that need the debuff.
|tip Once all players have used their extra action button on Sikran, and have the Riposte debuff, then kill Sikran.
|tip If a player dies after getting the Riposte debuff, they can still get the achievement once Sikran is dead.
|tip The achievement is earned once Sikran is defeated after all players have the Riposte debuff.
achieve 40232/3
step
_Defeat Rasha'nan after all players ride a single wave per cast of Rolling Acid in Nerub-ar Palace on Normal difficulty or higher._
|tip The raid team should remain in the middle of the platform, as in the regular fight.
|tip Players that get the wave, position themselves either to the right or the left, both on the same side of the raid team.
|tip These two players should ride the wave they spawn, each going in the opposite direction without overlapping.
|tip The player placing the wave on the outside edge rides his wave alone, while the player placing the wave nearest the raid team rides the wave moving the opposite way, along with the rest of the raid team.
|tip All players need to ride a single green wave each time it is cast or the achievement will fail, and you must reset and try again.
|tip If any player gets hit by both waves, you must reset and try again.
|tip The achievement is earned once Rasha'nan is defeated, and every raid member has ridden a single wave each time Rolling Acid was cast.
achieve 40232/4
step
_Defeat Broodtwister Ovi'nax after everyone proves their /love to a Disheartened Worm in Nerub-ar Palace on Normal difficulty or higher._
|tip In the small chamber before the the boss room, The Narthex, one player needs to pick up the Mysterious Glowing Egg.
|tip The egg carrier will have a reduced movement speed, and should stack on an agreed upon set of eggs during the battle.
|tip Players who get the Experimental Dosage debuff (swirling blue circles) should overlap on the egg carrier to crack the egg, and also spawn the ads.
|tip The egg being carried will break, and a Disheartened Worm will spawn.
|tip All players needing the achievement should /love the Disheartened Worm to get the Affectionate debuff.
|tip The Disheartened Worm can be damaged, so do not defeat it before everyone has gotten the debuff.
|tip The achievement is earned once players have defeated Broodtwister Ovi'nax after using /love on the Disheartened Worm.
achieve 40232/5
step
_Defeat Nexus-Princess Ky'veza while she has an active Kill Streak in Nerub-ar Palace on Normal difficulty or higher._
|tip The player who pulls Ky'vesa by clicking the burning diary will be one-shotted, giving her Kill Streak for approximately one minute.
|tip To maintain Kill Streak, designate a player to die before Kill Streak expires.
|tip Players designated to die can allow themselves either to be pulled into a Nether Rift, or to get hit by Regicide or Eclipse during the intermission phase.
|tip Be ready to have a back up player die if the first player death does not trigger Kill Streak.
|tip The duration of Kill Streak may actually vary with raid size.
|tip The achievement is earned once Ky'vesa is defeated with Kill Streak active.
achieve 40232/6
step
_Defeat the Silken Court after Anub'arash and Takazj have gained the Bond of Friendship in Nerub-ar Palace on Normal difficulty or higher._
|tip One player must collect the Anub'arash Plushy, located on the left side, on the wall ledge, at the entrance to the to the corridor leading to Ky'vesa's room.
|tip A different player must collect the Box of Candy on the bannister at the bottom of the stairwell leading out of Ky'vesa's room.
|tip The players that loot these will have extra-action buttons that allow them to throw the items to the bosses BEFORE the pull: the plushy should go to Anub'arash, and the candy to Takazj.
|tip Together, the bosses will then receive the Bond of Friendship buff, which allows them to heal each when they are close together, so they must be tanked away from each other whenever possible.
|tip The achievement is earned once Anub'arash and Takazj are defeated with the Bond of Friendship active.
achieve 40232/7
step
_Defeat Queen Ansurek after all players use Abyssal Conduits to travel underneath her during Frothing Gluttony in Nerub-ar Palace on Normal difficulty or higher._
|tip In the third phase, Queen Ansurek will cast Abyssal Conduit on two players which will eventually drop portals where they are standing.
|tip Players with the portals need to drop them on either side of the hole in the platform from each other so that, when used, players will cross over the hole in the middle of the platform under the boss, thus avoiding boss mechanic, Frothing Gluttony, and at the same time cross underneath the boss.
|tip When Frothing Gluttony is cast, all players need to cross over when the circle is just about to reach them, exiting the circle safely, and the boss will gain stacks of the Missed 'Em by That Much debuff equal to the number of players in the raid.
|tip Players that were dead before this phase will also give the boss the debuff.
|tip The achievement is earned once Queen Ansurek is defeated with stacks of the Missed 'Em by That Much debuff equal to the number of players in your raid team.
achieve 40232/8
]])
