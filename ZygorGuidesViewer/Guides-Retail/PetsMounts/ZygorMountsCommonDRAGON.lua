local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("PetsMountsCDRAGON") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Achievement Mounts\\Hailstorm Armoredon",{
author="support@zygorguides.com",
description="Born in the middle of an ice storm, this armoredon prefers its meals partially frozen.",
mounts={387231},
mounttype='Ground',
startlevel=60,
keywords={"Dragonflight"},
patch='100002',
},[[
step
achieve 16649
step
collect Hailstorm Armoredon##199412 |or
|tip This may be an item in your bags, in your mailbox, or in your Mounts collection as a gift to right click and unwrap.
'|learnmount Hailstorm Armoredon##387231 |or
step
use the Hailstorm Armoredon##199412
learnmount Hailstorm Armoredon##387231
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Otterworldly Ottuk Carrier",{
author="support@zygorguides.com",
description="Some ottuks get into the spirit of carrying people around more than others.",
mounts={376912},
mounttype='Flying',
startlevel=60,
keywords={"Dragonflight"},
patch='100002',
},[[
step
achieve 15834 |only if Alliance
achieve 15833 |only if Horde
|tip This requires you to obtain 500 mounts usable by a single character.
step
collect Otterworldly Ottuk Carrier##198654 |or
|tip This may be an item in your bags, in your mailbox, or in your Mounts collection as a gift to right click and unwrap.
'|learnmount Otterworldly Ottuk Carrier##376912 |or
step
use the Otterworldly Ottuk Carrier##198654
learnmount Otterworldly Ottuk Carrier##376912
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Achievement Mounts\\Pattie",{
author="support@zygorguides.com",
description="Preservationist Kathos encountered Pattie on her first assignment to Vol'dun. Pattie developed an affinity to Preservationist work but is eager to delve deeper, helping adventurers in their sleuthing.",
mounts={418078},
mounttype='Ground',
startlevel=1,
keywords={"Dragonflight","Whodunnit","Secrets of Azeroth"},
patch='101050',
},[[
step
achieve 18646
|tip This achievement was available during the Secrets of Azeroth event.
step
collect Pattie's Cap##208152
|tip It will be in your bag once you complete the achievement.
step
use Pattie's Cap##208152
learnmount Pattie##418078
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Achievement Mounts\\Raging Magmammoth",{
author="support@zygorguides.com",
description="Most lava flows. This lava charges.",
mounts={374275},
mounttype='Ground',
startlevel=60,
keywords={"Dragonflight"},
patch='100000',
},[[
step
achieve 16355
step
collect Raging Magmammoth##192806 |or
|tip This may be an item in your bags, in your mailbox, or in your Mounts collection as a gift to right click and unwrap.
'|learnmount Raging Magmammoth##374275 |or
step
use the Raging Magmammoth##192806
learnmount Raging Magmammoth##374275
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Achievement Mounts\\Shellack",{
author="support@zygorguides.com",
description="Fed by victory and hardened by glory, this snail is nothing less than a tribute to mastery.",
mounts={374155},
mounttype='Ground',
startlevel=60,
keywords={"Dragonflight"},
patch='100002',
},[[
step
achieve 16295
step
collect Shellack##192784 |or
|tip This may be an item in your bags, in your mailbox, or in your Mounts collection as a gift to right click and unwrap.
'|complete hasmount(374155) |or
step
use Shellack##192784
learnmount Shellack##374155
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Achievement Mounts\\Taivan",{
author="support@zygorguides.com",
description="You don't have to be what the world expects you to be. Be who Taivan knows you *can* be.",
mounts={210142},
mounttype='Ground',
startlevel=60,
keywords={"Dragonflight"},
patch='100002',
},[[
step
achieve 19458 |or
|tip This achievement may no longer be possible.
'|complete hasmount(210142) |or
step
collect Good Boy's Leash##210142 |or
|tip This may be an item in your bags, in your mailbox, or in your Mounts collection as a gift to right click and unwrap.
'|learnmount Taivan##210142 |or
step
use Good Boy's Leash##210142
learnmount Taivan##210142
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Charming Courier",{
author="support@zygorguides.com",
description="Neither snow nor rain nor heat nor gloom of night stays these charming couriers from the swift completion of their appointed rounds.",
mounts={443660},
mounttype='Flying',
startlevel=1,
keywords={"TWW","The War Within"},
patch='110002',
},[[
step
Reward for Purchasing a 12 Month Subscription in the Blizzard Online Store
|tip Once purchased and awarded, you may need to unwrap in your mount inventory.
learnmount Charming Courier##443660
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Gilded Ravasaur",{
author="support@zygorguides.com",
description="Horses in the Kul Tiran military are bred from an early age not to fear the sea, and revel in galloping along the shoreline and through the spray.",
mounts={255696},
model={80358},
mounttype='Flying',
startlevel=1,
keywords={"BFA"},
patch='100002',
},[[
step
No Longer Available for Purchase in the Blizzard Online Store
|tip You may obtain this mount by purchasing "Battle for Azeroth Collector's Edition".
learnmount Gilded Ravasaur##255696
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Jade, Bright Foreseer",{
author="support@zygorguides.com",
description="The presence of this majestic Pandaren rabbit spirit brings joy and happiness and is heralded as a wonderful omen. Legend says that in its eyes, you can glimpse the greatest happiness of your life, even if it is yet to come.",
mounts={369451},
mounttype='Ground',
startlevel=1,
keywords={"Dragonflight"},
patch='100002',
},[[
step
Available for Purchase in the Blizzard Online Store
|tip Open the Blizzard Store by clicking the "Shop" button on the character login screen, or the in-game menu bar.
|tip Once purchased, you may need to unwrap it in your mount inventory.
learnmount Jade, Bright Foreseer##369451
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Sapphire Skyblazer",{
author="support@zygorguides.com",
description="These birds burn hotter and brighter than than any avian to ever soar across the skies.",
mounts={347812},
mounttype='Flying',
startlevel=1,
keywords={"Dragonflight"},
patch='100002',
},[[
step
Available for Purchase in the Blizzard Online Store
|tip This mount can be purchased in the Blizzard Store.
|tip Open the Blizzard Store by clicking the "Shop" button on the character login screen, or the in-game menu bar.
|tip Once purchased, you may need to unwrap it in your mount inventory.
learnmount Sapphire Skyblazer##347812
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Soaring Sky Fox",{
author="support@zygorguides.com",
description="Traders quickly found them a very capable ally when facing the dangers of Northrend and beyond. They also learned that the bears of the Grizzly Hills were fiercely loyal. Especially to those who keep Emperor salmon at hand.",
mounts={431359},
mounttype='Ground',
startlevel=1,
keywords={"TWW","The War Within"},
patch='102050',
},[[
step
Available for Purchase in the Blizzard Online Store
|tip Open the Blizzard Store by clicking the "Shop" button on the character login screen, or the in-game menu bar.
|tip Once purchased or awarded, you may need to unwrap in your mount inventory.
|tip The Sky Witch Attire transmog set accompanies this mount purchase.
learnmount Soaring Sky Fox##431359
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Sunwarmed Furline",{
author="support@zygorguides.com",
description="The fuzziest mount Azeroth has ever seen.",
mounts={317177},
model={95057},
mounttype='Flying',
startlevel=1,
keywords={"Dragonflight"},
patch='100002',
},[[
step
Available for Purchase in the Blizzard Online Store
|tip This mount can be purchased in the Blizzard Store.
|tip Open the Blizzard Store by clicking the "Shop" button on the character login screen, or the in-game menu bar.
|tip Once purchased, you may need to unwrap it in your mount inventory.
learnmount Sunwarmed Furline##317177
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Sylverian Dreamer",{
author="support@zygorguides.com",
description="A beautiful feathered dragon, born of an artist's dream in the magical city of Dalaran.",
mounts={290132},
model={90396},
mounttype='Flying',
startlevel=1,
keywords={"Dragonflight"},
patch='100002',
},[[
step
Available for Purchase in the Blizzard Online Store
|tip This mount can be purchased in the Blizzard Store.
|tip Open the Blizzard Store by clicking the "Shop" button on the character login screen, or the in-game menu bar.
|tip Once purchased, you may need to unwrap it in your mount inventory.
learnmount Sylverian Dreamer##290132
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Blizzard Store Mounts\\Viridian Phase-Hunter",{
author="support@zygorguides.com",
description="The otherworldly energies that transformed Draenor gave these creatures the ability to shift through space.",
mounts={346136},
mounttype='Ground',
startlevel=60,
keywords={"Shadowlands"},
patch='100002',
},[[
step
Available for Purchase in the Blizzard Online Store
|tip Open the Blizzard Store by clicking the "Shop" button on the character login screen, or the in-game menu bar.
|tip Once purchased, you may need to unwrap it in your mount inventory.
learnmount Viridian Phase-Hunter##346136
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Wen Lo, the River's Edge",{
author="support@zygorguides.com",
description="The rivers of Pandaria, like Wen Lo, are unpredictable in nature. They may remain calm, bringing water to the crops, or flood, bringing ruin. Wen Lo reminds us that we must adapt to the challenges of life.",
mounts={359317},
mounttype='Flying',
startlevel=60,
keywords={"Dragonflight"},
patch='100002',
},[[
step
Available for Purchase in the Blizzard Online Store
|tip This mount can be purchased in the Blizzard Store.
|tip Open the Blizzard Store by clicking the "Shop" button on the character login screen, or the in-game menu bar.
|tip Once purchased, you may need to unwrap it in your mount inventory.
|tip You can also obtain this mount by purchasing "Burning Crusade Classic Deluxe Edition".
learnmount Wen Lo, the River's Edge##359317
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Anu'relos, Flame's Guidance",{
author="support@zygorguides.com",
description="Though her feathers flicker with flame's destructive potential, they do not scorch, but simply radiate a comfortable heat.",
mounts={424484},
mounttype='Flying',
startlevel=60,
keywords={"Dragonflight","Fryakk","Amirdrassil"},
patch='100200',
},[[
step
Reach Level 70 |ding 70
step
Unlock the _Emerald Dream_
|tip Use the "Emerald Dream Campaign" Leveling Guide to achieve this.
Click Here to load the "Emerald Dream Campaign" Leveling Guide |confirm |loadguide "Leveling Guides\\Dragonflight (10-70)\\Emerald Dream Campaign" |or
-OR-
Click Here to load the "Emerald Dream Campaign + Side Quests" Leveling Guide |confirm |loadguide "Leveling Guides\\Dragonflight (10-70)\\Emerald Dream Campaign + Side Quests" |or
'|complete hasmount(424484) |or
'|complete completedq(75923) |or
step
Enter the _Amirdrassil, the Dream's Hope_ Raid in the Emerald Dream on Mythic difficulty
kill Fryakk##204931
|tip Join a Mythic Amirdrassill raid group, and kill the last boss, Fryakk <The Blazing>.
|tip You may have to kill this boss more than once to receive the mount drop.
collect Reins of Anu'relos, Flame's Guidance##210061 |goto The Emerald Dream/0 27.33,31.04 |or
'|complete hasmount(424484) |or
step
use Reins of Anu'relos, Flame's Guidance##210061
learnmount Anu'relos##424484
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Liberated Slyvern",{
author="support@zygorguides.com",
description="It's difficult to tell because it's far too angry, but this slyvern is actually glad it's not owned by gnolls anymore.",
mounts={359622},
mounttype='Flying',
startlevel=60,
keywords={"Dragonflight"},
patch='100002',
},[[
step
kill Breezebiter##195353 |goto The Azure Span/0 29.80,46.31
|tip This elite mob spawns from this cave and flies around this area.
|tip It looks like a wyvern being ridden by a hyena person.
|tip You can kill him over and over to try for the drop.
collect Reins of the Liberated Slyvern##201440 |or
|tip This item is a rare drop.
'|learnmount Liberated Slyvern##359622 |or
step
use the Reins of the Liberated Slyvern##201440
learnmount Liberated Slyvern##359622
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Zenet Hatchling",{
author="support@zygorguides.com",
description="The hardest winds begin with a gust and a flap.",
mounts={385266},
mounttype='Flying',
startlevel=60,
keywords={"Dragonflight"},
patch='100002',
},[[
step
kill Zenet Avis##193209
|tip This rare spawn flies around the mountain ridge in this area.
|tip She looks like a large, red bird of prey.
collect Zenet Egg##200879 |goto Ohn'ahran Plains/0 30.52,65.73 |or
You can also find her around [31.50,62.08]
'|learnmount Zenet Hatchling##385266 |or
step
learnmount Zenet Hatchling##385266
|tip After 7 days, the Zenet Egg should hatch automatically.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Hateforged Blazecycle",{
author="support@zygorguides.com",
description="This sweet deathcyle let's you go on your very own burning rubber crusade!",
mounts={428067},
mounttype='Ground',
startlevel=60,
keywords={"Dragonflight"},
patch='102000',
},[[
step
This Mount is Part of a Promotion
|tip US Promotional event mount - A colaboration with Xbox and Mountain Dew, Doritos, and Rockstar.
|tip You buy products and redeem codes for points which can be redeemed for stuff including this mount.
learnmount Hateforged Blazecycle##428067
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\MoP Remix Mounts\\Amber Primordial Direhorn",{
author="support@zygorguides.com",
description="There is an old Zandalari saying about wild direhorns: 'Run!'",
mounts={138424},
mounttype='Ground',
startlevel=60,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Direhorn"},
patch='052000',
},[[
step
earn 18700 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(138424) |or
step
talk Hemet Nesingwary##219032
buy Reins of the Primordial Direhorn##94230 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(138424) |or
step
learnmount Primordial Direhorn##138424
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\MoP Remix Mounts\\Amber Pterrordax",{
author="support@zygorguides.com",
description="The Pterrordax could and would eat you in seconds. Are you sure sitting on its back is a good idea?",
mounts={441794},
mounttype='Flying',
startlevel=60,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Pterrordax"},
patch='102070',
},[[
step
earn 4400 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(441794) |or
step
talk Hemet Nesingwary##219032
buy Reins of the Amber Pterrordax##218111 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(441794) |or
step
learnmount Amber Pterrordax##441794
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\MoP Remix Mounts\\Astral Emperor's Serpent",{
author="support@zygorguides.com",
description="After the unburdened Emperor Shaohao gave his final breath to protect his people, a golden serpent descended from the heavens to alight the emperor's spirit to the peaks of Kun-Lai Summit.",
mounts={446022},
mounttype='Flying',
startlevel=60,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Astral"},
patch='102070',
},[[
step
achieve 19876 |or
|tip This achievement is only available during MoP REMIX event.
|tip Use the "Vale of Eternal Blossoms" Achievement Guide while on a Timewalker character to earn this achievement.
Click Here to Open the "Vale of Eternal Blossoms" Achievement Guide |confirm |loadguide "Achievement Guides\\Character Achievements\\Pandaria Remix\\Vale of Eternal Blossoms" |or
'|complete hasmount(446022) |or
step
collect Reins of the Astral Emperor's Serpent##220768 |or
|tip This is an item in your bag.
'|complete hasmount(446022) |or
step
use Reins of the Astral Emperor's Serpent##220768
learnmount Astral Emperor's Serpent##446022
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\MoP Remix Mounts\\August Phoenix",{
author="support@zygorguides.com",
description="The magnificent August Phoenixes are blessed by Chi-Ji to fill the hearts of riders with wonder and hope for the future.",
mounts={446017},
mounttype='Flying',
startlevel=60,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Time Trial"},
patch='102070',
},[[
step
achieve 20593 |or
|tip This achievement is only available during MoP REMIX event.
|tip Use the "Time Trial" Achievement Guide while on a Timewalker character to earn this achievement.
Click Here to Open the "Time Trial" Achievement Guide |confirm |loadguide "Achievement Guides\\Character Achievements\\Pandaria Remix\\Time Trial" |or
'|complete hasmount(446017) |or
step
collect Reins of the August Phoenix##220766 |or
|tip This may be an item in your bag.
'|complete hasmount(446017) |or
step
use Reins of the August Phoenix##220766
learnmount August Phoenix##446017
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\MoP Remix Mounts\\Black Riding Yak",{
author="support@zygorguides.com",
description="Grummles traveling Kun-Lai Summit by night prefer to ride this dark-haired yak to remain unseen, though they remove the bells from its caparison first.",
mounts={127209},
mounttype='Ground',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='050040',
},[[
step
earn 2200 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(127209) |or
step
talk Hemet Nesingwary##219032
buy Black Riding Yak##127209 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(127209) |or
step
learnmount Black Riding Yak##127209
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\MoP Remix Mounts\\Bloody Skyscreamer",{
author="support@zygorguides.com",
description="This dinosaur still harbors the rage of its ancestors from the Zandalari Invasion.",
mounts={435145},
mounttype='Flying',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='102070',
},[[
step
earn 4400 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(435145) |or
step
talk Hemet Nesingwary##219032
buy Reins of the Bloody Skyscreamer##213623 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(435145) |or
step
use Reins of the Bloody Skyscreamer##213623
learnmount Bloody Skyscreamer##435145
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\MoP Remix Mounts\\Cobalt Juggernaut",{
author="support@zygorguides.com",
description="What started as a rideable mining and logging machine devolved quickly into chaos when engineers asked themselves if they could make it any cooler.",
mounts={435149},
mounttype='Ground',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='102070',
},[[
step
earn 4400 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(435149) |or
step
talk Hemet Nesingwary##219032
buy Reins of the Cobalt Juggernaut##213624 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(435149) |or
step
use Reins of the Cobalt Juggernaut##213624
learnmount Cobalt Juggernaut##435149
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\MoP Remix Mounts\\Dashing Windsteed",{
author="support@zygorguides.com",
description="Windsteeds are incredibly gentle and easy to train... if you can catch one.",
mounts={435103},
mounttype='Flying',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='102070',
pandariaremix=true,
},[[
step
earn 4400 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(435103) |or
step
talk Hemet Nesingwary##219032
buy Reins of the Dashing Windsteed##213624 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(435103) |or
step
use Reins of the Dashing Windsteed##213624
learnmount Dashing Windsteed##435103
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\MoP Remix Mounts\\Daystorm Windsteed",{
author="support@zygorguides.com",
description="It is said that when lightning strikes the sun, a gleaming beast in red armor would emerge from the heavens. The Daystorm Windsteed has never heard of these legends and has been here the entire time.",
mounts={435108},
mounttype='Flying',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='102070',
},[[
step
earn 4400 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(435108) |or
step
talk Hemet Nesingwary##219032
buy Reins of the Daystorm Windsteed##213596 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(435108) |or
step
use Reins of the Daystorm Windsteed##213596
learnmount Daystorm Windsteed##435108
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\MoP Remix Mounts\\Feathered Windsurfer",{
author="support@zygorguides.com",
description="Check the current windspeed and elevation before mounting. Avoid trees and other tall objects. Damaged kites are ineligible for return or refund.",
mounts={435108},
mounttype='Flying',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='102070',
},[[
step
earn 2200 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(435109) |or
step
talk Hemet Nesingwary##219032
buy Feathered Windsurfer String##213595 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(435109) |or
step
use Feathered Windsurfer String##213595
learnmount Feathered Windsurfer##435109
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\MoP Remix Mounts\\Fel Iron Juggernaut",{
author="support@zygorguides.com",
description="This war machine was stolen from a timeline in which Garrosh Hellscream joined the Burning Legion. Suffice it to say, there is not much left of that timeline.",
mounts={435109},
mounttype='Ground',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='102070',
},[[
step
earn 2200 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(435109) |or
step
talk Hemet Nesingwary##219032
buy Feathered Windsurfer String##213595 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(435109) |or
step
use Feathered Windsurfer String##213595
learnmount Feathered Windsurfer##435109
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\MoP Remix Mounts\\Forest Windsteed",{
author="support@zygorguides.com",
description="The fur of this Windsteed is not only colored to match its woodland home, but also usually contains bits of bark and leaves.",
mounts={435107},
mounttype='Ground',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='102070',
},[[
step
earn 6600 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(435107) |or
step
talk Hemet Nesingwary##219032
buy Reins of the Forest Windsteed##213597 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(435107) |or
step
use Reins of the Forest Windsteed##213597
learnmount Forest Windsteed##435107
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\MoP Remix Mounts\\Gilded Riding Crane",{
author="support@zygorguides.com",
description="It is said that an emperor once paid a large sum for a golden crane. Upon discovering that the crane was only colored like that of the precious metal, he hid with shame in his bedchambers for a week.",
mounts={435123},
mounttype='Ground',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='102070',
},[[
step
earn 6600 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(435123) |or
step
talk Hemet Nesingwary##219032
buy Reins of the Gilded Riding Crane##213602 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(435123) |or
step
use Reins of the Gilded Riding Crane##213602
learnmount Gilded Riding Crane##435123
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\MoP Remix Mounts\\Golden Discus",{
author="support@zygorguides.com",
description="An ancient mogu artifact awarded to those who are deeply committed to forms of currency.",
mounts={435044},
mounttype='Flying',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='102070',
},[[
step
earn 2200 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(435044) |or
step
talk Hemet Nesingwary##219032
buy Reins of the Golden Discus##213576 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(435044) |or
step
use Reins of the Golden Discus##213576
learnmount Golden Discus##435044
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\MoP Remix Mounts\\Guardian Quilen",{
author="support@zygorguides.com",
description="When Quan the Relentless fell in battle, his loyal hounds waited for his return. Millenia later, they remain patient.",
mounts={435115},
mounttype='Flying',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='102070',
},[[
step
earn 6600 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(435115) |or
step
talk Hemet Nesingwary##219032
buy Reins of the Guardian Quilen##213601 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(435115) |or
step
use Reins of the Guardian Quilen##213601
learnmount Guardian Quilen##435115
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\MoP Remix Mounts\\Jade Primordial Direhorn",{
author="support@zygorguides.com",
description="The festive coloring belies deadly intent.",
mounts={138426},
mounttype='Ground',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='102070',
},[[
step
earn 18700 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(138426) |or
step
talk Hemet Nesingwary##219032
buy Reins of the Jade Primordial Direhorn##94231 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(138426) |or
step
use Reins of the Jade Primordial Direhorn##94231
learnmount Jade Primordial Direhorn##138426
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\MoP Remix Mounts\\Jade Pterrordax",{
author="support@zygorguides.com",
description="This favored mount of the Zandalari is a great singer, or so it thinks.",
mounts={435147},
mounttype='Flying',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='102070',
},[[
step
earn 6600 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(435147) |or
step
talk Hemet Nesingwary##219032
buy Reins of the Jade Pterrordax##213621 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(435147) |or
step
use Reins of the Jade Pterrordax##213621
learnmount Jade Pterrordax##435147
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\MoP Remix Mounts\\Jungle Riding Crane",{
author="support@zygorguides.com",
description="A beloved mount in southern Pandaria, the jungle crane is known for its speed and agility honed over a lifetime of avoiding Krasari tigers.",
mounts={127178},
mounttype='Ground',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='050040',
},[[
step
earn 2200 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(127178) |or
step
talk Hemet Nesingwary##219032
buy Reins of the Jungle Riding Crane##87784 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(127178) |or
step
use Reins of the Jungle Riding Crane##87784
learnmount Jungle Riding Crane##127178
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\MoP Remix Mounts\\Kafa Yak",{
author="support@zygorguides.com",
description="It's unclear whether grummles named this yak after its color or purpose.",
mounts={123182},
mounttype='Ground',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='050040',
},[[
step
earn 2200 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(123182) |or
step
talk Hemet Nesingwary##219032
buy Reins of the Kafa Yak##84753 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(123182) |or
step
use Reins of the Kafa Yak##84753
learnmount Kafa Yak##123182
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\MoP Remix Mounts\\Little Red Riding Goat",{
author="support@zygorguides.com",
description="What this goat lacks in size, it makes up for in stubbornness.",
mounts={435133},
mounttype='Ground',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='050040',
},[[
step
earn 2200 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(435133) |or
step
talk Hemet Nesingwary##219032
buy Reins of the Little Red Riding Goat##213609 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(435133) |or
step
use Reins of the Little Red Riding Goat##213609
learnmount Little Red Riding Goat##435133
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\MoP Remix Mounts\\Luxurious Riding Crane",{
author="support@zygorguides.com",
description="What this goat lacks in size, it makes up for in stubbornness.",
mounts={435124},
mounttype='Ground',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='102070',
},[[
step
earn 2200 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(435124) |or
step
talk Hemet Nesingwary##219032
buy Reins of the Luxurious Riding Crane##213607 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(435124) |or
step
use Reins of the Luxurious Riding Crane##213607
learnmount Luxurious Riding Crane##435124
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\MoP Remix Mounts\\Marble Quilen",{
author="support@zygorguides.com",
description="Created by a mogu sorcerer who breathed life into their favorite pet rock.",
mounts={435118},
mounttype='Flying',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='102070',
},[[
step
earn 6600 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(435118) |or
step
talk Hemet Nesingwary##219032
buy Reins of the Marble Quilen##213600 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(435118) |or
step
use Reins of the Marble Quilen##213600
learnmount Marble Quilen##435118
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\MoP Remix Mounts\\Modest Expedition Yak",{
author="support@zygorguides.com",
description="Unlike its burden-bearing kin, this yak prefers to travel light and go no more than a mile at a time.",
mounts={127213},
mounttype='Ground',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='102070',
},[[
step
earn 6600 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(127213) |or
step
talk Hemet Nesingwary##219032
buy Reins of the Modest Expedition Yak##87787 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(127213) |or
step
use Reins of the Modest Expedition Yak##87787
learnmount Modest Expedition Yak##127213
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\MoP Remix Mounts\\Mogu Hazeblazer",{
author="support@zygorguides.com",
description="This ancient mogu artifact controls ambient fog to enable levitation.",
mounts={435082},
mounttype='Flying',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='102070',
},[[
step
earn 6600 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(435082) |or
step
talk Hemet Nesingwary##219032
buy Mogu Hazeblazer##213584 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(435082) |or
step
use Mogu Hazeblazer##213584
learnmount Mogu Hazeblazer##435082
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\MoP Remix Mounts\\Night Pterrorwing",{
author="support@zygorguides.com",
description="Scholars interpret this creature's awful screeching as 'fear me, I am the night!'",
mounts={127213},
mounttype='Flying',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='102070',
},[[
step
earn 4400 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(127213) |or
step
talk Hemet Nesingwary##219032
buy Reins of the Night Pterrorwing##87787 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(127213) |or
step
use Reins of the Night Pterrorwing##87787
learnmount Night Pterrorwing##127213
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\MoP Remix Mounts\\Palehide Mushan Beast",{
author="support@zygorguides.com",
description="The Palehide Mushan is the tastiest of Mushan beasts, but it hates being reminded of that fact.",
mounts={435161},
mounttype='Ground',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='102070',
},[[
step
earn 2200 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(435161) |or
step
talk Hemet Nesingwary##219032
buy Reins of the Palehide Mushan Beast##213627 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(435161) |or
step
use Reins of the Palehide Mushan Beast##213627
learnmount Palehide Mushan Beast##435161
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\MoP Remix Mounts\\Pale Riding Crane",{
author="support@zygorguides.com",
description="I looked, and behold, a pale... crane?",
mounts={435128},
mounttype='Ground',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='102070',
},[[
step
earn 2200 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(435128) |or
step
talk Hemet Nesingwary##219032
buy Reins of the Pale Riding Crane##213603 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(435128) |or
step
use Reins of the Pale Riding Crane##213603
learnmount Pale Riding Crane##435128
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\MoP Remix Mounts\\Purple Shado-Pan Riding Tiger",{
author="support@zygorguides.com",
description="'When waking a tiger, use a long stick. Better yet, tell your friend to wake the tiger instead.' -Pandaren Proverb",
mounts={435153},
mounttype='Flying',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='102070',
},[[
step
earn 4400 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(435153) |or
step
talk Hemet Nesingwary##219032
buy Reins of the Purple Shado-Pan Riding Tiger##213626 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(435153) |or
step
use Reins of the Purple Shado-Pan Riding Tiger##213626
learnmount Purple Shado-Pan Riding Tiger##435153
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\MoP Remix Mounts\\Riverwalker Mushan",{
author="support@zygorguides.com",
description="The Mushan is a voracious beast. Though it can be tamed, it will demand a second, third, and even fourth breakfast every day.",
mounts={435160},
mounttype='Ground',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='102070',
},[[
step
earn 2200 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(435160) |or
step
talk Hemet Nesingwary##219032
buy Reins of the Riverwalker Mushan##213628 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(435160) |or
step
use Reins of the Riverwalker Mushan##213628
learnmount Riverwalker Mushan##435160
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\MoP Remix Mounts\\Rose Riding Crane",{
author="support@zygorguides.com",
description="This brightly-colored bird is often confused with a flamingo or marabou.",
mounts={435127},
mounttype='Ground',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='102070',
},[[
step
earn 2200 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(435127) |or
step
talk Hemet Nesingwary##219032
buy Reins of the Rose Riding Crane##213605 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(435127) |or
step
use Reins of the Rose Riding Crane##213605
learnmount Rose Riding Crane##435127
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\MoP Remix Mounts\\Silver Riding Crane",{
author="support@zygorguides.com",
description="This tall bird is one of the most graceful and elegant cranes, slightly moreso than the Bronze Crane but less than the Golden Crane.",
mounts={435126},
mounttype='Ground',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='102070',
},[[
step
earn 2200 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(435126) |or
step
talk Hemet Nesingwary##219032
buy Reins of the Silver Riding Crane##213606 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(435126) |or
step
use Reins of the Silver Riding Crane##213606
learnmount Silver Riding Crane##435126
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\MoP Remix Mounts\\Sky Surfer",{
author="support@zygorguides.com",
description="An ancient mogu artifact awarded to those who are deeply committed to the skies.",
mounts={435084},
mounttype='Flying',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='102070',
},[[
step
earn 2200 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches and treasures, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(435084) |or
step
talk Hemet Nesingwary##219032
buy Sky Surfer##213582 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(435084) |or
step
use Sky Surfer##213582
learnmount Sky Surfer##435084
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\MoP Remix Mounts\\Snowy Riding Goat",{
author="support@zygorguides.com",
description="The Kun-Lai Summit mountain goats are known for climbing even the highest peaks in search of kafa beans and salt licks.",
mounts={435131},
mounttype='Ground',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='102070',
},[[
step
earn 2200 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches and treasures, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(435131) |or
step
talk Hemet Nesingwary##219032
buy Reins of the Snowy Riding Goat##213608 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(435131) |or
step
use Reins of the Snowy Riding Goat##213608
learnmount Snowy Riding Goat##435131
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\MoP Remix Mounts\\Tropical Riding Crane",{
author="support@zygorguides.com",
description="This Jade Forest native uses its coloration as camouflage.",
mounts={435125},
mounttype='Ground',
startlevel=10,
keywords={"Remix","Mists of Pandaria","MoP Remix","Timerunner","Bronze"},
patch='102070',
},[[
step
earn 2200 Bronze##2778 |or
|tip This is the currency for MoP remix that you can get from caches and treasures, killing mobs and rares, completing quests and daily quests, joining Looking For Group dungeons and raids, or flying through Bronze orbs.
|tip Use to purchase items, including mounts, pets, appearances, etc..., at Infinite Bazaars all around MoP Remix Pandaria.
'|complete hasmount(435125) |or
step
talk Hemet Nesingwary##219032
buy Reins of the Tropical Riding Crane##213604 |goto The Jade Forest/0 42.69,27.07 |or
'|complete hasmount(435125) |or
step
use Reins of the Tropical Riding Crane##213604
learnmount Tropical Riding Crane##435125
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Puzzle Mounts\\Divine Kiss of Ohn'ahra",{
author="support@zygorguides.com",
description="...as though welcomed by the wind itself.",
mounts={359408},
mounttype='Flying',
startlevel=60,
keywords={"Dragonflight"},
patch='100002',
},[[
step
ding 63
step
talk Hunt Instructor Basku##195454 |goto Ohn'ahran Plains/0 64.01,41.00
|tip Turn in hunting trophies from grand hunts for rep.
'|turnin More Hunting Trophies##72868 |repeatable |n
'|turnin More Hunting Trophies##70929 |repeatable |n
'|turnin More Hunting Trophies##70928 |repeatable |n
Reach Renown Level 9 with the Maruuk Centaur |complete factionrenown(2503) >= 9
|tip Complete daily quests, weekly quests, and zone quests in Ohn'ahran Plains to gain renown.
|tip You can also complete quests at the Aylaag Outpost each time they set up camp at a new location.
step
talk Windsage Ordven##195302
accept A Disgruntled Initiate##65906 |goto Ohn'ahran Plains/0 63.12,34.04
step
talk Initiate Radiya##190014
turnin A Disgruntled Initiate##65906 |goto Ohn'ahran Plains/0 56.26,75.96
accept Sneaking Out##65901 |goto Ohn'ahran Plains/0 56.26,75.96
step
click Wind Totem
Place the Wind Totem |q 65901/1 |goto Ohn'ahran Plains/0 56.65,76.27 |count 1
step
click Wind Totem
Place the Wind Totem |q 65901/1 |goto Ohn'ahran Plains/0 57.36,76.33 |count 2
step
click Wind Totem
Place the Wind Totem |q 65901/1 |goto Ohn'ahran Plains/0 57.01,75.48 |count 3
step
talk Initiate Radiya##190014
Select _"The totems are placed."_
Inform Radiya |q 65901/2 |goto Ohn'ahran Plains/0 56.25,75.95
step
talk Initiate Radiya##190014
turnin Sneaking Out##65901 |goto Ohn'ahran Plains/0 54.79,66.40
accept Favorite Fruit##65907 |goto Ohn'ahran Plains/0 54.79,66.40
step
click Wildsprings Shrub+
|tip They look like green bushes on the ground around this area.
collect 6 Wild Bushfruit##192743 |q 65907/1 |goto Ohn'ahran Plains/0 53.53,71.02
step
use the Wild Bushfruit##192743+
|tip Use it on Mudstompers.
|tip They look like small and large hippos around this area.
Feed #6# Mudstompers |q 65907/2 |goto Ohn'ahran Plains/0 54.28,66.61
step
talk Initiate Radiya##190014
turnin Favorite Fruit##65907 |goto Ohn'ahran Plains/0 54.79,66.40
accept A Promise Is A Promise##65770 |goto Ohn'ahran Plains/0 54.79,66.40
step
talk Initiate Radiya##190014
Select _"I promise to keep your secret."_
Promise Radiya |q 65770/1 |goto Ohn'ahran Plains/0 54.79,66.40
step
Meet Radiya Further North |q 65770/2 |goto Ohn'ahran Plains/0 53.11,64.01
step
talk Godoloto##190022
|tip He flies down onto the rock.
turnin A Promise Is A Promise##65770 |goto Ohn'ahran Plains/0 52.05,63.24
accept More Adventure Than Expected##65761 |goto Ohn'ahran Plains/0 52.05,63.24
step
Enter the building |goto Ohn'ahran Plains/0 47.49,54.23 < 10 |walk
talk Initiate Radiya##190014
|tip Inside the building.
Find Radiya |q 65761/3 |goto Ohn'ahran Plains/0 47.51,54.12
step
talk Initiate Radiya##190014
|tip Inside the building.
turnin More Adventure Than Expected##65761 |goto Ohn'ahran Plains/0 47.51,54.12
accept Stealing Its Thunder##65711 |goto Ohn'ahran Plains/0 47.51,54.12
step
Enter the cave |goto Ohn'ahran Plains/0 47.54,56.07 < 15 |walk
kill Storm Extractor##190011 |q 65711/1 |goto Ohn'ahran Plains/0 47.29,56.72
|tip They look like centaurs channeling a blue lightning spell on a dinosaur.
|tip Inside the cave.
step
Leave the cave |goto Ohn'ahran Plains/0 47.54,56.07 < 15 |walk |only if subzone("Kaighan Camp") and _G.IsIndoors()
talk Lizi##190009
Choose _"<Gently offer the bushfruit.>"_
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
kill Balakar Khan##186151
|tip Form a group and enter the dungeon or queue for it in the dungeon finder.
|tip This is the final boss in the dungeon.
collect 3 Stolen Breath of Ohn'ahra##201929 |goto The Nokhud Offensive/0 34.84,38.81 |q 72512 |future |or
|tip You will have to kill this boss three or more times to acquire these items.
'|learnmount Divine Kiss of Ohn'ahra##359408 |or
step
Reach Level 70 |ding 70
step
talk Hunt Instructor Basku##195454 |goto Ohn'ahran Plains/0 64.01,41.00
|tip Turn in hunting trophies from grand hunts for rep.
'|turnin More Hunting Trophies##72868 |repeatable |n
'|turnin More Hunting Trophies##70929 |repeatable |n
'|turnin More Hunting Trophies##70928 |repeatable |n
Reach Renown Level 25 with the Maruuk Centaur |complete factionrenown(2503) >= 25
|tip Complete daily quests, weekly quests, and zone quests in Ohn'ahran Plains to gain renown.
|tip You can also complete quests at the Aylaag Outpost each time they set up camp at a new location.
step
talk Godoloto##190022
accept A Whispering Breeze##72512 |goto Ohn'ahran Plains/0 51.00,62.20
step
collect Exultant Incense##191507 |or
|tip This item must be Tier 3 quality.
|tip You can craft this item with Alchemy, trade with another player, or purchase it from the Auction House.
|tip This item is consumable, so do not right click it.
'|learnmount Divine Kiss of Ohn'ahra##359408 |or
step
kill Eternal Sand##187475+
collect Occasional Sand##194562 |goto Thaldraszus/0 59.80,82.40 |or
'|learnmount Divine Kiss of Ohn'ahra##359408 |or
step
earn 50 Dragon Isles Supplies##2003 |or
|tip You obtain these from quests, chests, packs, caches, and killing mobs and rares.
'|learnmount Divine Kiss of Ohn'ahra##359408 |or
step
talk Quartermaster Huseng##196707
|tip Inside the building.
buy Essence of Awakening##201323 |goto Ohn'ahran Plains/0 60.40,37.60 |or
|tip This item is consumable, so do not right click it.
'|learnmount Divine Kiss of Ohn'ahra##359408 |or
step
talk Ohn'ahra##191248
|tip She is sitting on a nest at this location.
turnin A Whispering Breeze##72512 |goto Ohn'ahran Plains/0 57.60,31.80
|tip She will transform you into the white wind eagle.
step
learnmount Divine Kiss of Ohn'ahra##359408
|tip This mount is automatically added to your account-wide mount list.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Quest Mounts\\Flourishing Whimsydrake",{
author="support@zygorguides.com",
description="These playful protectors of the Emerald Dream may be larger than their faerie dragon relatives, but they are no less mischievous.",
condition_suggested=function() return level == 60 and not achieved(16584) end,
mounts={425338},
mounttype='Flying',
startlevel=60,
keywords={"Dragonflight"},
patch='100200',
},[[
step
Complete the "Emerald Welcome" Quest.
|tip Use the "Emerald Dream Campaign" Leveling Guide to accomplish this.
Click Here to Load "The Emerald Dream Campaign + Side Quests" |confirm |next "Leveling Guides\\Dragonflight (10-70)\\Emerald Dream Campaign + Side Quests" |or
|tip -OR-
Click Here to Load "The Emerald Dream Campaign" |confirm |next "Leveling Guides\\Dragonflight (10-70)\\Emerald Dream Campaign" |or
'|complete hasmount(425338) |or
step
collect Flourishing Whimsydrake##210412 |or
'|complete hasmount(425338) |or
step
use Flourishing Whimsydrake##210412
|learnmount Flourishing Whimsydrake##425338
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Quest Mounts\\Lizi, Thunderspine Tramper",{
author="support@zygorguides.com",
description="Raise your very own Thuderspine mount.",
condition_suggested=function() return level == 60 and not achieved(16584) end,
mounts={374247},
mounttype='Ground',
startlevel=60,
keywords={"Dragonflight"},
patch='100002',
},[[
step
talk Hunt Instructor Basku##195454 |goto Ohn'ahran Plains/0 64.01,41.00
|tip Turn in hunting trophies from grand hunts for rep.
'|turnin More Hunting Trophies##72868 |repeatable |n
'|turnin More Hunting Trophies##70929 |repeatable |n
'|turnin More Hunting Trophies##70928 |repeatable |n
Reach Renown Level 9 with the Maruuk Centaur |complete factionrenown(2503) >= 9
|tip Complete daily quests, weekly quests, and zone quests in Ohn'ahran Plains to gain renown.
|tip You can also complete quests at the Aylaag Outpost each time they set up camp at a new location.
step
talk Windsage Ordven##195302
accept A Disgruntled Initiate##65906 |goto Ohn'ahran Plains/0 63.12,34.04
step
talk Initiate Radiya##190014
turnin A Disgruntled Initiate##65906 |goto Ohn'ahran Plains/0 56.26,75.96
accept Sneaking Out##65901 |goto Ohn'ahran Plains/0 56.26,75.96
step
click Wind Totem
Place the Wind Totem |q 65901/1 |goto Ohn'ahran Plains/0 56.65,76.27 |count 1
step
click Wind Totem
Place the Wind Totem |q 65901/1 |goto Ohn'ahran Plains/0 57.36,76.33 |count 2
step
click Wind Totem
Place the Wind Totem |q 65901/1 |goto Ohn'ahran Plains/0 57.01,75.48 |count 3
step
talk Initiate Radiya##190014
Select _"The totems are placed."_
Inform Radiya |q 65901/2 |goto Ohn'ahran Plains/0 56.25,75.95
step
talk Initiate Radiya##190014
turnin Sneaking Out##65901 |goto Ohn'ahran Plains/0 54.79,66.40
accept Favorite Fruit##65907 |goto Ohn'ahran Plains/0 54.79,66.40
step
click Wildsprings Shrub+
|tip They look like green bushes on the ground around this area.
collect 6 Wild Bushfruit##192743 |q 65907/1 |goto Ohn'ahran Plains/0 53.53,71.02
step
use the Wild Bushfruit##192743+
|tip Use it on Mudstompers.
|tip They look like small and large hippos around this area.
Feed #6# Mudstompers |q 65907/2 |goto Ohn'ahran Plains/0 54.28,66.61
step
talk Initiate Radiya##190014
turnin Favorite Fruit##65907 |goto Ohn'ahran Plains/0 54.79,66.40
accept A Promise Is A Promise##65770 |goto Ohn'ahran Plains/0 54.79,66.40
step
talk Initiate Radiya##190014
Select _"I promise to keep your secret."_
Promise Radiya |q 65770/1 |goto Ohn'ahran Plains/0 54.79,66.40
step
Meet Radiya Further North |q 65770/2 |goto Ohn'ahran Plains/0 53.11,64.01
step
talk Godoloto##190022
|tip He flies down onto the rock.
turnin A Promise Is A Promise##65770 |goto Ohn'ahran Plains/0 52.05,63.24
accept More Adventure Than Expected##65761 |goto Ohn'ahran Plains/0 52.05,63.24
step
Enter the building |goto Ohn'ahran Plains/0 47.49,54.23 < 10 |walk
talk Initiate Radiya##190014
|tip Inside the building.
Find Radiya |q 65761/3 |goto Ohn'ahran Plains/0 47.51,54.12
step
talk Initiate Radiya##190014
|tip Inside the building.
turnin More Adventure Than Expected##65761 |goto Ohn'ahran Plains/0 47.51,54.12
accept Stealing Its Thunder##65711 |goto Ohn'ahran Plains/0 47.51,54.12
step
Enter the cave |goto Ohn'ahran Plains/0 47.54,56.07 < 15 |walk
kill Storm Extractor##190011 |q 65711/1 |goto Ohn'ahran Plains/0 47.29,56.72
|tip They look like centaurs channeling a blue lightning spell on a dinosaur.
|tip Inside the cave.
step
Leave the cave |goto Ohn'ahran Plains/0 47.54,56.07 < 15 |walk |only if subzone("Kaighan Camp") and _G.IsIndoors()
talk Lizi##190009
Choose _"<Gently offer the bushfruit.>"_
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
|tip Turning in this guide quest will unlock the 5-day quest chain to create Lizi's Reins.
|tip This is a thunderlizard mount.
step
talk Initiate Radiya##190014
accept To Tame A Thunderspine##71196 |goto Ohn'ahran Plains/0 56.20,77.10
stickystart "Collect_Dragon_Isles_Supplies_71196"
step
kill Frenzied Pollenstag##190611+
collect 20 Fluorescent Fluid##192615 |q 71196/1 |goto Ohn'ahran Plains/0 82.30,25.12
|tip You can also purchase them from the auction house.
step
label "Collect_Dragon_Isles_Supplies_71196"
earn 150 Dragon Isles Supplies##2003 |q 71196/2
|tip Collect these by completing world quests, weekly quests, and daily quests.
|tip You can also collect them by killing rares or opening treasures.
step
talk Initiate Radiya##190014
turnin To Tame A Thunderspine##71196 |goto Ohn'ahran Plains/0 56.20,77.10
stickystart "Collect_Dragon_Isles_Supplies_71197"
step
Kill Lasher enemies around this area
collect 20 High-Fiber Leaf##192658 |q 71197 |goto Ohn'ahran Plains/0 30.76,52.56 |future
|tip You can also purchase them from the auction house.
|tip Save these, you will need them tomorrow.
step
label "Collect_Dragon_Isles_Supplies_71197"
earn 150 Dragon Isles Supplies##2003 |q 71197 |future
|tip Collect these by completing world quests, weekly quests, and daily quests.
|tip You can also collect them by killing rares or opening treasures.
|tip Save these, you will need them tomorrow.
step
Wait for the Next Quest to Become Available |complete not completedq(71203) or completedq(71197)
|tip Each daily reset a new quest will be complete.
|tip You will need to complete 5 quests total, 1 each day.
|tip You have 4 quests remaining.
step
talk Initiate Radiya##190014
accept To Tame A Thunderspine##71197 |goto Ohn'ahran Plains/0 56.20,77.10
stickystart "Collect_Dragon_Isles_Supplies_71198"
step
cast Fishing##131474
collect 10 Thousandbite Piranha##194966 |q 71198 |goto Ohn'ahran Plains/0 56.29,78.28 |future
|tip These can be fished up anywhere in the Dragon Isles.
|tip You can also purchase them from the auction house.
|tip Save these, you will need them tomorrow.
step
label "Collect_Dragon_Isles_Supplies_71198"
earn 150 Dragon Isles Supplies##2003 |q 71198 |future
|tip Collect these by completing world quests, weekly quests, and daily quests.
|tip You can also collect them by killing rares or opening treasures.
|tip Save these, you will need them tomorrow.
step
Wait for the Next Quest to Become Available |complete not completedq(71203) or completedq(71198)
|tip Each daily reset a new quest will be complete.
|tip You will need to complete 5 quests total, 1 each day.
|tip You have 3 quests remaining.
step
talk Initiate Radiya##190014
accept To Tame A Thunderspine##71198 |goto Ohn'ahran Plains/0 57.09,77.65
stickystart "Collect_Dragon_Isles_Supplies_71199"
step
Kill Musken and Goat enemies around this area
collect 20 Woolly Mountain Pelt##192636 |q 71199 |goto Ohn'ahran Plains/0 49.44,36.91 |future
|tip You can also purchase them from the auction house.
|tip Save these, you will need them tomorrow.
step
label "Collect_Dragon_Isles_Supplies_71199"
earn 150 Dragon Isles Supplies##2003 |q 71199 |future
|tip Collect these by completing world quests, weekly quests, and daily quests.
|tip You can also collect them by killing rares or opening treasures.
|tip Save these, you will need them tomorrow.
step
Wait for the Next Quest to Become Available |complete not completedq(71203) or completedq(71199)
|tip Each daily reset a new quest will be complete.
|tip You will need to complete 5 quests total, 1 each day.
|tip You have 2 quests remaining.
step
talk Initiate Radiya##190014
accept To Tame A Thunderspine##71199 |goto Ohn'ahran Plains/0 56.73,76.32
step
Wait for the Next Quest to Become Available |complete not completedq(71203) or completedq(71195)
|tip Each daily reset a new quest will be complete.
|tip You will need to complete 5 quests total, 1 each day.
|tip You have 1 quest remaining.
step
talk Initiate Radiya##190014
accept To Tame A Thunderspine##71195 |goto Ohn'ahran Plains/0 57.66,72.32
stickystart "Collect_Dragon_Isles_Supplies_71195"
step
talk Ohn Meluun##190015
|tip Inside the tent.
Select _"Radiya told me about your green curry."_
Collect Meluun's Green Curry |q 71195/1 |goto Ohn'ahran Plains/0 53.50,79.02
step
label "Collect_Dragon_Isles_Supplies_71195"
earn 150 Dragon Isles Supplies##2003 |q 71195/2
|tip Collect these by completing world quests, weekly quests, and daily quests.
|tip You can also collect them by killing rares or opening treasures.
step
talk Initiate Radiya##190014
turnin To Tame A Thunderspine##71195 |goto Ohn'ahran Plains/0 57.66,72.32
step
talk Initiate Radiya##190014
accept Beast of the Plains##71209 |goto Ohn'ahran Plains/0 57.66,72.32
step
talk Initiate Radiya##190014
turnin Beast of the Plains##71209 |goto Ohn'ahran Plains/0 57.66,72.32
step
use Lizi's Reins##192799
Learn the "Lizi, Thunderspine Tramper" Mount |learnmount Lizi, Thunderspine Tramper##374247
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Quest Mounts\\Ochre Dreamtalon",{
author="support@zygorguides.com",
description="Playful dreamtalons often decorate themselves in a myriad of colors that only autumn offers.",
mounts={427041},
mounttype='Ground',
startlevel=70,
keywords={"Dragonflight"},
patch='100200',
},[[
step
clicknpc Smoldering Sprout##209253
Select _"<Put out the flames.>"_
|tip You must dismount first.
Extinguish the Flames |q 77712 |goto The Emerald Dream/0 48.67,67.90 |future
step
clicknpc Blackened Sprout##209468
Select _"<Clean the plant.>"_
|tip You must dismount first.
Clean the Plant |q 77713 |goto The Emerald Dream/0 48.67,67.90 |future
step
clicknpc Sprout##209292
accept Some Water...##77677 |goto The Emerald Dream/0 48.67,67.90
step
talk Professor Ash##208337
Select _"Professor, what do you recommend for a plant suffering from burns and severe dehydration?"_
Consult with an Expert in the Central Encampment |q 77677/1 |goto The Emerald Dream/0 49.57,62.81
step
clicknpc Empty Gardening Bucket
Pick Up the Bucket |q 77677/2 |goto The Emerald Dream/0 49.59,62.87
step
use the Unfilled Bucket##208779
Fill the Bucket |q 77677/3 |goto The Emerald Dream/0 51.14,65.77
step
clicknpc Sprout##209292
Select _"<Water the plant with the moonwell water.>"_
Water the Plant |q 77677/4 |goto The Emerald Dream/0 48.67,67.90
step
talk Sprout##209292
Select _"<Tell a joke.>"_
|tip Choose either dialogue option.
Speak to the Plant |q 77677/5 |goto The Emerald Dream/0 48.67,67.90
step
talk Sprout##209292
turnin Some Water...##77677 |goto The Emerald Dream/0 48.67,67.90
step
Wait for the Plant to Grow |complete not completedq(77717) or completedq(78398)
|tip Check back after 5 days to nurture the sprout again.
step
talk Professor Ash##209571
accept A Dash of Minerals...##78398 |goto The Emerald Dream/0 48.69,68.06
step
kill Fathomless Lurker##209580+
|tip Under the water.
collect 5 Fish Bones##210457 |q 78398/1 |goto The Emerald Dream/0 50.92,31.98
step
talk Professor Ash##209571
turnin A Dash of Minerals...##78398 |goto The Emerald Dream/0 48.69,68.06
step
Wait for the Plant to Grow |complete not completedq(77717) or completedq(77697)
|tip Check back after another 5 days to nurture the sprout again.
step
talk Dewy Sapling##209458
accept The Right Food...##77697 |goto The Emerald Dream/0 48.68,67.90
step
talk Professor Ash##209571
Select _"Professor, what do you know about feeding plants?"_
Ask Professor Ash for Advice |q 77697/1 |goto The Emerald Dream/0 48.69,68.06
step
click Turtle Egg##408997+
|tip They look like small eggs on the ground around this area.
collect 3 Turtle Eggshell Shards##209416 |goto The Emerald Dream/0 41.63,76.48 |q 77697
step
Kill Lasher enemies around this area
collect 5 Lasher Plant Matter##208644 |goto The Emerald Dream/0 59.46,79.81 |q 77697
step
talk Saelienne##207627
|tip Inside the tent.
buy 5 Tel'Abim Banana##4537 |q 77697 |goto The Emerald Dream/0 49.85,61.64
step
use the Lasher Plant Matter##208644
collect Combined Fertilizer Ingredients##208646 |q 77697
step
collect Primed Emerald Dream Fertilizer##208647 |q 77697/4
|tip You will receive this after 3 days of waiting.
step
talk Dewy Sapling##209458
Select  _"<Spread the fertilizer underneath the plant.>"_
clicknpc Dewy Sapling##209458
Spread the completed fertilizer around the sapling |q 77697/5 |goto The Emerald Dream/0 48.68,67.89
step
talk Dewy Sapling##209458
Select  _"<Tell a joke.>"_
Entertain the plant with a few words |q 77697/6 |goto The Emerald Dream/0 48.68,67.89
step
talk Dewy Sapling##209458
turnin The Right Food...##77697 |goto The Emerald Dream/0 48.68,67.90
step
Wait for the Plant to Grow |complete not completedq(77717) or completedq(77711)
|tip Check back after another 5 days to nurture the sprout again.
step
talk Professor Ash##209571
accept And a Pinch of Magic##77711 |goto The Emerald Dream/0 48.69,68.06
step
use the Druidic Totem##208705
Kill Roottender enemies around this area
|tip Kill them inside the green area on the ground.
|tip Keep using the totem to maintain the green area.
|tip Don't kill them too fast or the energy will not be drained.
Drain Energy from Flame-Corrupted Roottender Creatures |q 77711/1 |goto The Emerald Dream/0 63.24,53.48
step
talk Professor Ash##209571
turnin And a Pinch of Magic##77711 |goto The Emerald Dream/0 48.69,68.06
step
Wait for the Plant to Grow |complete not completedq(77717) or completedq(77762)
|tip Check back after another 5 days to nurture the sprout again.
step
talk Professor Ash##209571
accept A Little Hope is Never without Worth##77762 |goto The Emerald Dream/0 48.69,68.06
step
talk Professor Ash##209571
turnin A Little Hope is Never without Worth##77762 |goto The Emerald Dream/0 48.69,68.06
step
use the Reins of the Ochre Dreamtalon##210774
Learn the "Ochre Dreamtalon" Mount |learnmount Ochre Dreamtalon##427041
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Quest Mounts\\Otto",{
author="support@zygorguides.com",
description="Relax. The future will unfold as it was meant to, one way or an otter.",
mounts={376873},
mounttype='Ground',
startlevel=60,
keywords={"Dragonflight"},
patch='100002',
},[[
step
talk Toklo##185359
Train Fishing |skillmax Fishing,300 |goto Valdrakken/0 44.84,74.72
step
talk Toklo##185359
Train Dragon Isles Fishing |skillmax Dragon Isles Fishing,100 |goto Valdrakken/0 44.84,74.72
step
cast Fishing##131474
collect Rusted Coin of the Isles##202105 |q 72729 |future
|tip This can be fished anywhere in the Dragon Isles with Dragon Isles Fishing.
step
talk The Great Swog##191608
turnin The Great Swog##72729 |goto Ohn'ahran Plains/0 82.31,73.21
step
collect Gold Coin of the Isles##199340 |or
|tip This is a very rare drop from fishing in the Dragon Isles, opening Tuskaar Tackleboxes, or killing "Lunkers" with your Iskaaran Harpoon.
|tip You can purchase the Gold Coin of the Isles from The Great Swog with 5 Silver Coins of the Isles.
|tip You can purchase the Silver Coin of the Isles from The Great Swog with 15 Copper Coins of the Isles.
|tip All of the coins can be fished up or looted from fishing reward caches and lunkers.
|tip Fishing holes on the map are a good spot to share lunker kills with other players.
|tip Use the "Fishing Gear Crafting" Reputation Guide to unlock the ways to achieve this.
Click Here to Open the "Fishing Gear Crafting" Reputation Guide |confirm |loadguide "Reputation Guides\\Dragonflight Reputations\\Iskaara Tuskarr\\Fishing Gear Crafting"
|tip This might take some time.
'|complete hasmount(376873) |or
step
talk The Great Swog##191608
|tip Inside the cave.
buy Immaculate Sac of Swog Treasures##202102 |goto Ohn'ahran Plains/0 82.31,73.21 |or
|tip It costs 1 Gold Coin of the Isles.
'|complete hasmount(376873) |or
step
use the Immaculate Sac of Swog Treasures##202102
collect Aquatic Shades##202042 |or
'|complete hasmount(376873) |or
step
use the Aquatic Shades##202042
Obtain the "Aquatic Shades" Toy |toy Aquatic Shades##202042
step
use the Aquatic Shades##202042
|tip Use it underwater at the disco pad in The Bubble Bath bar.
Gain the "Cooler Than You" Buff |havebuff Cooler Than You##396358 |goto The Waking Shores/0 19.62,36.50 |or
'|complete hasmount(376873) |or
step
'|script DoEmote("Dance")
Begin Dancing |havebuff Dance, Dance 'Til You're Dead##396539 |goto The Waking Shores/0 19.62,36.50 |or
|tip You will need to stand still and dance for five minutes.
|tip At the end of the five minutes, the "Dance, Dance 'Til You're Dead" buff will wear off and you will be teleported.
|tip If you don't get credit, move away from the pad, use the Aquatic Shades again, and then step on the pad again.
'|complete hasmount(376873) |or
step
Dance for Five Minutes Uninterrupted |nobuff Dance, Dance 'Til You're Dead##396539 |goto The Waking Shores/0 19.62,36.50
|tip You will need to stand still and dance for five minutes.
|tip At the end of the five minutes, the "Dance, Dance 'Til You're Dead" debuff will wear off and you will be teleported.
step
click Empty Fish Barrel##385001
collect Empty Fish Barrel##202061 |or
'|complete hasmount(376873) |or
step
cast Fishing##131474
|tip Fish them from open water around Iskaara.
|tip It may take a while to catch these.
collect 100 Frigid Floe Fish##202072 |goto The Azure Span/0 13.20,48.02 |or
'|complete hasmount(376873) |or
step
use the Empty Fish Barrel##202061
collect Half-Filled Fish Barrel##202066 |or
'|complete hasmount(376873) |or
step
cast Fishing##131474
|tip Fish them from the lava.
|tip It may take a while to catch these.
collect 25 Calamitous Carp##202073 |goto The Waking Shores/0 33.16,61.20 |or
'|complete hasmount(376873) |or
step
use the Half-Filled Fish Barrel##202066
collect Brimming Fish Barrel##202068 |or
'|complete hasmount(376873) |or
step
cast Fishing##131474
|tip Fish them from the the waters around Algeth'ar Academy.
|tip It may take a while to catch these.
collect Kingfin, the Wise Whiskerfish##202074 |goto Thaldraszus/0 57.84,44.23 |or
'|complete hasmount(376873) |or
step
use the Brimming Fish Barrel##202068
collect Overflowing Fish Barrel##202069 |or
'|complete hasmount(376873) |or
step
use the Overflowing Fish Barrel##202069
|tip Use the barrel at this spot in the Hissing Grotto.
talk Otto##199563
|tip It will appear after using the barrel in this spot.
accept The Way to an Otto's Heart##72738 |goto The Waking Shores/0 20.39,39.69
step
use Otto##198870
Learn the "Otto" Mount |learnmount Otto##376873
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Quest Mounts\\Scrappy Worldsnail",{
author="support@zygorguides.com",
description="For the Worldbreakers, a portable footstool. For you, a hardy mount.",
mounts={374162},
mounttype='Ground',
startlevel=60,
keywords={"Dragonflight"},
patch='100002',
},[[
step
Reach Level 70 |ding 70
step
Complete "The Shadow of His Wings" Quest |complete completedq(65691) or hasmount(374162) |or
|tip Use the Full Zone leveling guide for The Waking Shores to accomplish this.
Click Here to Load the "Full Zones (Story + Side Quests)" Leveling Guide |confirm |loadguide "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)" |or
step
accept Allegiance to One##66419 |goto The Waking Shores/0 24.51,55.83 |or
|tip It doesn't matter which one you choose.
|tip You will be locked in to the one you choose for a week.
'|learnmount Scrappy Worldsnail##374162 |or
step
talk Sabellian##185894
_Or_
talk Wrathion##187495
Select _"I swear to support your current efforts._"
|tip On the balcony.
|tip You will unlock an additional quest to gain reputation with whichever one you choose for the week.
Show Support to Wrathion or Sabellian |q 66419/1 |goto The Waking Shores/0 24.38,55.69 |or
'|learnmount Scrappy Worldsnail##374162 |or
step
accept Keys of Loyalty##66133 |or
accept Keys of Loyalty##66805 |or
|tip You will automatically accept one of these quests depending on which allegiance you chose.
'|learnmount Scrappy Worldsnail##374162 |or
step
collect Restored Obsidian Key##191264 |n
|tip Combine 30 Key Fragments and 3 Key Framing fragments into 1 Restored Obsidian Key.
|tip These fragments drop from mobs and rares around the Obsidian Citidel.
talk Igys the Believer##187275
accept Unlocking Our Past##66129 |n |repeatable
use the Obsidian Cache##200069
|tip Each time you turn the quest in, you will receive one.
collect Twilight Cache##201817 |n
|tip This has a chance to drop from the cache.
use Twilight Cache##201817
collect Worldbreaker Membership##199215 |goto The Waking Shores/0 32.28,52.49 |or
|tip This item is a rare drop.
|tip You may have to open several Twilight Caches to obtain this item.
'|learnmount Scrappy Worldsnail##374162 |or
step
_READ THE FOLLOWING STEP CAREFULLY!_
|tip There is important information to be aware of before using the item.
Click Here to Continue |confirm |or
'|learnmount Scrappy Worldsnail##374162 |or
step
use Worldbreaker Membership##199215
|tip Don't use the item until you are ready to begin farming Magmotes in the next step.
|tip When you use the item, it is comsumed and grants "The Worldbreaker" title and "Worldbreaker Membership" buff for 2 days.
|tip You can purchase a "Worldbreaker Membership" from Dealer Vexil to extend your membership once you have the active buff.
|tip If you die during the 2 days, you will lose the title and the membership buff along with the ability to collect Magmotes and to interact with Dealer Vexil
|tip You will then need to collect another Worldbreaker Membership from a Twilight Cache.
Gain the "Worldbreaker Membership" Buff |havebuff Worldbreaker Membership##386848 |or
'|learnmount Scrappy Worldsnail##374162 |or
step
Kill enemies around The Obsidian Throne
collect 1000 Magmote##202173 |goto The Waking Shores/0 28.76,58.40 |or
|tip Do not die as this will remove your buff and the ability to collect Magmotes from mobs.
|tip Turning in Restored Obsidian Keys to Igys the Believer may grant Magmotes inside the Twilight Caches.
|tip You can also complete the weekly quest "Same as the Old Boss" near Igys for 25 extra.
'|learnmount Scrappy Worldsnail##374162 |or
step
Enter the cave |goto The Waking Shores/0 35.79,47.96 < 10 |walk
talk Dealer Vexil##193310
|tip Inside the cave.
buy Slumbering Worldsnail Shell##192786 |goto The Waking Shores/0 34.73,46.73
'|learnmount Scrappy Worldsnail##374162 |or
step
use Slumbering Worldsnail Shell##192786
Learn the Scrappy Worldsnail Mount |learnmount Scrappy Worldsnail##374162
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Quest Mounts\\Temperamental Skyclaw",{
author="support@zygorguides.com",
description=" Slyverns are rarely comfortable acting as mounts. Only those willing to feed their gluttonous appetites and keep a careful eye on them should attempt to ride.",
mounts={385738},
mounttype='Flying',
startlevel=60,
keywords={"Dragonflight"},
patch='100002',
},[[
step
Reach Level 70 |ding 70
step
Kill Snowhide enemies around this area
collect 20 Flash Frozen Meat##201422 |goto The Azure Span/0 58.14,41.77 |or
|tip You can also purchase these from the Auction House.
You can find more around [57.05,42.90]
'|complete hasmount(385738) |or
step
Kill Stormfang enemies around this area
collect 20 Gnolan's House Special##201420 |goto The Azure Span/0 23.00,43.60 |or
|tip You can also purchase these from the Auction House.
'|complete hasmount(385738) |or
step
Kill Darktooth enemies around this area
collect 20 Tuskarr Jerky##201421 |goto The Azure Span/0 34.40,44.40 |or
|tip You can also purchase these from the Auction House.
'|complete hasmount(385738) |or
step
talk Zon'Wogi##190892
Choose _"<Ask about the saddled slyvern.>"_
|tip Present the food dishes to Zon'Wogi.
collect Temperamental Skyclaw##201454 |goto The Azure Span/0 19.04,23.98 |or
'|complete hasmount(385738) |or
step
use Temperamental Skyclaw##201454
|tip This item will now be in your inventory.
Learn the Temperamental Skyclaw Mount |learnmount Temperamental Skyclaw##385738
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Azure Skitterfly",{
author="support@zygorguides.com",
description="Once Granpap Whiskers finally taught them how to take riders, the azure skitterflies proved to bond closely and loyally to their riders.",
mounts={374034},
mounttype='Flying',
startlevel=60,
keywords={"Dragonflight"},
patch='100002',
},[[
step
Reach Level 70 |ding 70
step
talk Cataloger Jakes##189226 |goto The Waking Shores/0 47.11,82.58
|tip Inside the tent.
|tip Turn in Dragon Isles Artifacts from treasures and supply packs all over The Waking Shores.
'|turnin Multiple Dragon Isles Artifacts##72876
'|turnin Multiple Dragon Isles Artifacts##71035
'|turnin Dragon Isles Artifacts##71034
Reach Renown Level 25 with the Dragonscale Expedition |complete factionrenown(2507) >= 25 |or
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
'|learnmount Azure Skitterfly##374034 |or
step
talk Granpap Whiskers##187408
accept Skitterfly Riding##70821 |goto The Waking Shores/0 47.73,83.23
|tip Choose the "Azure Skitterfly" if you have not already completed this quest.
stickystart "Collect_5_Iridescent_Plumes"
stickystart "Collect_20_Contoured_Fowlfeathers"
step
earn 750 Dragon Isles Supplies##2003 |or
|tip Acquire these from completing quests and world quests, killing rares, running dungeons, and consumable items like chests, satchels, and treasures.
'|learnmount Azure Skitterfly##374034 |or
step
label "Collect_5_Iridescent_Plumes"
collect 5 Iridescent Plume##201401 |or
|tip Acquire these by killing harpies and large birds in the Dragon Isle, or buy them from the Auction House.
'|learnmount Azure Skitterfly##374034 |or
step
label "Collect_20_Contoured_Fowlfeathers"
collect 20 Contoured Fowlfeather##193053 |or
|tip Acquire these by killing ducks near rivers and ponds in the Dragon Isles, or buy them from the Auction House.
'|learnmount Azure Skitterfly##374034 |or
step
talk Granpap Whiskers##187408
buy Azure Skitterfly##192762 |goto The Waking Shores/0 47.73,83.24 |or
'|learnmount Azure Skitterfly##374034 |or
step
use the Azure Skitterfly##192762
Learn the "Azure Skitterfly" Mount |learnmount Azure Skitterfly##374034
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Verdant Skitterfly",{
author="support@zygorguides.com",
description="Verdant skitterflies are the perfect mount for the scouts of the Dragonscale Expedition scouts, as they are fast and blend into the foliage of the Dragon Isles.",
mounts={374048},
mounttype='Flying',
startlevel=60,
keywords={"Dragonflight"},
patch='100002',
},[[
step
Reach Level 70 |ding 70
step
talk Cataloger Jakes##189226 |goto The Waking Shores/0 47.11,82.58
|tip Inside the tent.
|tip Turn in Dragon Isles Artifacts from treasures and supply packs all over The Waking Shores.
'|turnin Multiple Dragon Isles Artifacts##72876
'|turnin Multiple Dragon Isles Artifacts##71035
'|turnin Dragon Isles Artifacts##71034
Reach Renown Level 25 with the Dragonscale Expedition |complete factionrenown(2507) >= 25 |or
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
'|learnmount Verdant Skitterfly##374048 |or
step
click Expedition Scout's Pack##376587+
|tip This object can be found all over The Waking Shores, Ohn'ahran Plains, The Azure Span, Thaldraszus, and Valdrakken.
|tip You may have to loot a lot of Expedition Scout's Pack to find this mount.
collect Verdant Skitterfly##192764 |or
|tip This is a rare drop.
'|learnmount Verdant Skitterfly##374048 |or
step
use the Verdant Skitterfly##192764
Learn the "Verdant Skitterfly" Mount |learnmount Verdant Skitterfly##374048
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Tamed Skitterfly",{
author="support@zygorguides.com",
description="It didn't take long for Grandpap Whiskers to tame the skitterflies around the Dragonscale Basecamp and set them to helping move Expedition personnel and cargo.",
mounts={374032},
mounttype='Flying',
startlevel=60,
keywords={"Dragonflight"},
patch='100002',
},[[
step
Reach Level 70 |ding 70
step
talk Cataloger Jakes##189226 |goto The Waking Shores/0 47.11,82.58
|tip Inside the tent.
|tip Turn in Dragon Isles Artifacts from treasures and supply packs all over The Waking Shores.
'|turnin Multiple Dragon Isles Artifacts##72876
'|turnin Multiple Dragon Isles Artifacts##71035
'|turnin Dragon Isles Artifacts##71034
Reach Renown Level 25 with the Dragonscale Expedition |complete factionrenown(2507) >= 25 |or
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
'|learnmount Tamed Skitterfly##374032 |or
step
talk Granpap Whiskers##187408
accept Skitterfly Riding##70821 |goto The Waking Shores/0 47.73,83.23
|tip Choose the "Tamed Skitterfly" if you have not already completed this quest.
stickystart "Collect_5_Iridescent_Plumes"
stickystart "Collect_20_Contoured_Fowlfeathers"
step
earn 750 Dragon Isles Supplies##2003 |or
|tip Acquire these from completing quests and world quests, killing rares, running dungeons, and consumable items like chests, satchels, and treasures.
'|learnmount Tamed Skitterfly##374032 |or
step
label "Collect_5_Iridescent_Plumes"
collect 5 Iridescent Plume##201401 |or
|tip Acquire these by killing harpies and large birds in the Dragon Isle, or buy them from the Auction House.
'|learnmount Tamed Skitterfly##374032 |or
step
label "Collect_20_Contoured_Fowlfeathers"
collect 20 Contoured Fowlfeather##193053 |or
|tip Acquire these by killing ducks near rivers and ponds in the Dragon Isles, or buy them from the Auction House.
'|learnmount Tamed Skitterfly##374032 |or
step
talk Granpap Whiskers##187408
buy Tamed Skitterfly##192761 |goto The Waking Shores/0 47.73,83.24
'|learnmount Tamed Skitterfly##374032 |or
step
use the Tamed Skitterfly##192761
Learn the "Tamed Skitterfly" Mount |learnmount Tamed Skitterfly##374032
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Loyal Magmammoth",{
author="support@zygorguides.com",
description="Liberated from the Qalashi and harnessed by your ingenuity (and your harness) this magmammoth is ready to lava stomp wherever you want to go.",
mounts={373859},
mounttype='Ground',
startlevel=60,
keywords={"Dragonflight"},
patch='100002',
},[[
step
Reach Level 70 |ding 70
step
Reach "True Friend" Reputation with Wrathion |complete rep("Wrathion") >= TrueFriend |or
|tip Use the Obsidian Citadel guide to accomplish this.
|tip Click the Obisidian Citadel icon on the map, then click the popup to load the guide.
'|learnmount Loyal Magmammoth##373859 |or
step
Reach "True Friend" Reputation with Sabellian |complete rep("Sabellian") >= TrueFriend |or
|tip Use the Obsidian Citadel guide to accomplish this.
|tip Click the Obisidian Citadel icon on the map, then click the popup to load the guide.
'|learnmount Loyal Magmammoth##373859 |or
step
talk Lorena Belle##188625
buy Sturdy Obsidian Glasses##201840 |goto The Waking Shores/0 25.16,55.80 |or
|tip These cost 800 gold.
'|learnmount Loyal Magmammoth##373859 |or
step
talk Samia Inkling##188623
buy Netherforged Lavaproof Boots##201839 |goto The Waking Shores/0 24.69,56.78 |or
|tip These cost 800 gold.
'|learnmount Loyal Magmammoth##373859 |or
step
talk Yries Lightfingers##191135
buy Magmammoth Harness##201837 |goto The Waking Shores/0 26.43,55.44 |or
|tip He is a male Draenai on the top balcony.
'|learnmount Loyal Magmammoth##373859 |or
step
clicknpc Tame Magmammoth##198150
Mount The Tame Magmammoth |invehicle |goto The Waking Shores/0 33.43,72.08 |or
You can also find them around:
[23.66,71.44]
[37.10,44.52]
'|learnmount Loyal Magmammoth##373859 |or
step
use the Magmammoth Harness##201837
Learn the "Loyal Magmammoth" Mount |learnmount Loyal Magmammoth##373859
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Brown Scouting Ottuk",{
author="support@zygorguides.com",
description="Wily and playful in their natural habitat, ottuks possess keen eyes that can scout far afield as ably as they watch for predators.",
mounts={376875},
mounttype='Ground',
startlevel=60,
keywords={"Dragonflight"},
patch='100002',
},[[
step
Reach Level 70 |ding 70
|tip Use the leveling guides to accomplish this.
step
talk Elder Poa##186448 |goto The Azure Span/0 12.41,49.34
|tip Inside the building.
|tip Turn in Stolen Totems from treasures in The Azure Span for rep.
'|turnin More Stolen Totems##70927 |repeatable |n
'|turnin Stolen Totems##70926 |repeatable |n
'|turnin Story of a Memorable Victory##72291 |n
Reach Renown Level 25 with the Iskaara Tuskarr |complete factionrenown(2511) >= 25 |or
|tip Complete daily quests, weekly quests, and zone quests in The Azure Span to gain renown.
'|learnmount Brown Scouting Ottuk##376875 |or
stickystart "Collect_2_Aquatic_Maws"
stickystart "Collect_2_Mastodon_Tusks"
step
earn 750 Dragon Isles Supplies##2003 |or
|tip Acquire these from completing quests and world quests, killing rares, running dungeons, and consumable items like chests, satchels, and treasures.
'|learnmount Brown Scouting Ottuk##376875 |or
step
label "Collect_2_Aquatic_Maws"
collect 2 Aquatic Maw##201400 |or
|tip Acquire these by killing and looting large fish native to the Dragon Isles or buy them from the Auction House.
'|learnmount Brown Scouting Ottuk##376875 |or
step
label "Collect_2_Mastodon_Tusks"
collect 2 Mastodon Tusk##201403 |or
|tip Acquire these by killing and looting any elephant-type beasts in the Dragon Isles or buy them from the Auction House.
'|learnmount Brown Scouting Ottuk##376875 |or
step
talk Tatto##186462
buy Brown Scouting Ottuk##198872 |goto The Azure Span/0 13.80,49.73 |or
'|learnmount Brown Scouting Ottuk##376875 |or
step
use the Brown Scouting Ottuk##198872
Learn the "Brown Scouting Ottuk" Mount |learnmount Brown Scouting Ottuk##376875
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Brown War Ottuk",{
author="support@zygorguides.com",
description="The tuskarr of Iskaara are loathe to war against anyone, but many tuskarr and their allies have nonetheless taken up the spear with a war ottuk beside them.",
mounts={376910},
mounttype='Ground',
startlevel=60,
keywords={"Dragonflight"},
patch='100002',
},[[
step
Reach Level 70 |ding 70
step
talk Elder Poa##186448 |goto The Azure Span/0 12.41,49.34
|tip Inside the building.
|tip Turn in Stolen Totems from treasures in The Azure Span for rep.
'|turnin More Stolen Totems##70927 |repeatable |n
'|turnin Stolen Totems##70926 |repeatable |n
'|turnin Story of a Memorable Victory##72291 |n
Reach Renown Level 30 with the Iskaara Tuskarr |complete factionrenown(2511) >= 30 |or
|tip Complete daily quests, weekly quests, and zone quests in The Azure Span to gain renown.
'|learnmount Brown War Ottuk##376910 |or
stickystart "Collect_5_Aquatic_Maws"
stickystart "Collect_5_Mastodon_Tusks"
step
earn 1000 Dragon Isles Supplies##2003 |or
|tip Acquire these from completing quests and world quests, killing rares, running dungeons, and consumable items like chests, satchels, and treasures.
'|learnmount Brown War Ottuk##376910 |or
step
label "Collect_5_Aquatic_Maws"
collect 5 Aquatic Maw##201400 |or
|tip Acquire these by killing and looting large fish native to the Dragon Isles or buy them from the Auction House.
'|learnmount Brown War Ottuk##376910 |or
step
label "Collect_5_Mastodon_Tusks"
collect 5 Mastodon Tusk##201403 |or
|tip Acquire these by killing and looting any elephant-type beasts in the Dragon Isles or buy them from the Auction House.
'|learnmount Brown War Ottuk##376910 |or
step
talk Tatto##186462
buy Brown War Ottuk##201426 |goto The Azure Span/0 13.80,49.73 |or
'|learnmount Brown War Ottuk##376910 |or
step
use the Brown War Ottuk##201426
Learn the "Brown War Ottuk" Mount |learnmount Brown War Ottuk##376910
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Vendor Mounts\\Felstorm Dragon",{
author="support@zygorguides.com",
description="The Burning Legion defeated dragons in a distant timeway. These foul fel wyrms chose corruption and servitude over destruction.",
mounts={414326},
mounttype='Flying',
startlevel=70,
keywords={"Dragonflight"},
patch='100105',
},[[
step
Earn #3000# Paracausal Flakes |earn 3000 Paracausal Flakes##2594 |or
|tip Earn these by completing time rifts.
|tip Use the "Time Rifts" guide to accomplish this.
Click Here to Load the "Time Rifts" Guide |confirm |loadguide "Daily Guides\\Dragonflight (10-70)\\Time Rifts" |or
step
talk Falara Nightsong##208341
buy 1 Felstorm Dragon##206676 |goto Thaldraszus/0 51.05,56.72 |or
'|learnmount Felstorm Dragon##414326 |or
step
use the Felstorm Dragon##206676
Learn the "Felstorm Dragon" Mount |learnmount Felstorm Dragon##414326
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Vendor Mounts\\Gold-Toed Albatross",{
author="support@zygorguides.com",
description="Soaring from a distant timeway, this never-before-seen avian variant was born in a world of order",
mounts={414324},
mounttype='Flying',
startlevel=70,
keywords={"Dragonflight"},
patch='100105',
},[[
step
Earn #3000# Paracausal Flakes |earn 3000 Paracausal Flakes##2594 |or
|tip Earn these by completing time rifts.
|tip Use the "Time Rifts" guide to accomplish this.
Click Here to Load the "Time Rifts" Guide |confirm |loadguide "Daily Guides\\Dragonflight (10-70)\\Time Rifts" |or
step
talk Sorotis##208343
buy 1 Gold-Toed Albatross##206675 |goto Thaldraszus/0 51.09,56.58 |or
'|learnmount Gold-Toed Albatross##414324 |or
step
use the Gold-Toed Albatross##206675
Learn the "Gold-Toed Albatross" Mount |learnmount Gold-Toed Albatross##414324
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Ivory Trader's Ottuk",{
author="support@zygorguides.com",
description="No adult knows why some ottuks are white, but any tuskarr child can tell you: it's because they eat too much snow.",
mounts={376879},
mounttype='Ground',
startlevel=60,
keywords={"Dragonflight"},
patch='100002',
},[[
step
kill The Raging Tempest##186615
|tip Form a group and enter the dungeon or queue for it in the dungeon finder.
|tip This is the 2nd boss in the dungeon.
|tip You may have to kill this boss several times to acquire the ring.
collect Thunderous Downburst Ring##193696 |goto The Nokhud Offensive/0 53.13,76.83 |or
'|learnmount Ivory Trader's Ottuk##376879 |or
step
kill Leymor##186644
|tip Form a group and enter the dungeon or queue for it in the dungeon finder.
|tip This is the 1st boss in the dungeon.
|tip You may have to kill this boss several times to acquire the ring.
collect Unstable Arcane Loop##193633 |goto The Azure Vault/4 37.11,54.16 |or
'|learnmount Ivory Trader's Ottuk##376879 |or
step
talk Kalecgos##187676
|tip At the top of the tower.
accept The Algeth'ar Academy##72193 |goto Valdrakken/0 61.69,36.03
|only if level >= 70 and not (itemcount(193708) >= 1 and hasmount(376879))
step
kill Echo of Doragosa##190609 |q 72193/1 |goto Algeth'ar Academy/0 61.38,60.62
|only if level >= 70 and not (itemcount(193708) >= 1 and hasmount(376879))
step
_Choose the Platinum Star Band Quest Reward!_
|tip You will need this item to purchase the mount.
|tip You can also farm it from the first boss if it didn't drop this run if you want another quest reward.
talk Kalecgos##187676
|tip At the top of the tower.
turnin The Algeth'ar Academy##72193 |goto Valdrakken/0 61.69,36.03
|only if level >= 70 and not (itemcount(193708) >= 1 and hasmount(376879))
step
kill Vexamus##194181
|tip Form a group and enter the dungeon or queue for it in the dungeon finder.
|tip This is the 1st boss in the dungeon.
|tip You may have to kill this boss several times to acquire the ring.
|tip You may possibly be able to acquire this ring as a quest reward from The Algeth'ar Academy quest.
collect Platinum Star Band##193708 |goto Algeth'ar Academy/1 30.42,35.51 |or
'|learnmount Ivory Trader's Ottuk##376879 |or
step
talk Tattukiaka##199448
|tip She takes the rings you collected in exchange for this mount.
|tip The rings are lost upon purchasing the mount.
buy Ivory Trader's Ottuk##198873 |goto The Azure Span/0 14.03,49.71 |or
'|learnmount Ivory Trader's Ottuk##376879 |or
step
use the Ivory Trader's Ottuk##198873
Learn the "Ivory Trader's Ottuk" Mount |learnmount Ivory Trader's Ottuk##376879
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Iskaara Trader's Ottuk",{
author="support@zygorguides.com",
description="No adult knows why some ottuks are white, but any tuskarr child can tell you: it's because they eat too much snow.",
mounts={376879},
mounttype='Ground',
startlevel=60,
keywords={"Dragonflight"},
patch='100002',
},[[
step
kill Terros##190496
|tip Form a group and enter the raid or queue for it in the raid finder.
|tip This is the 2nd boss in the raid.
|tip You may have to kill this boss several times to acquire this necklace.
|tip You can also acquire this necklace in a timewalking chest, or as a Great Vault reward.
collect Terros's Captive Core##195502 |goto Vault of the Incarnates/2 21.62,75.78 |or
'|learnmount Iskaara Trader's Ottuk##376879 |or
step
kill Dathea, Ascended##189813
|tip Form a group and enter the raid or queue for it in the raid finder.
|tip This is the 5th boss in the raid.
|tip You may have to kill this boss several times to acquire this necklace.
collect Eye of the Vengeful Hurricane##195496 |goto Vault of the Incarnates/6 55.93,51.33 |or
'|learnmount Iskaara Trader's Ottuk##376879 |or
step
talk Tattukiaka##199448
|tip She takes the necklaces you collected in exchange for this mount.
|tip The necklaces are lost upon purchasing the mount.
buy Iskaara Trader's Ottuk##198873 |goto The Azure Span/0 14.03,49.71 |or
'|learnmount Iskaara Trader's Ottuk##376879 |or
step
use the Iskaara Trader's Ottuk##198873
Learn the "Iskaara Trader's Ottuk" Mount |learnmount Iskaara Trader's Ottuk##376879
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Mammyth",{
author="support@zygorguides.com",
description="In the Dream, sometimes the myth is more real than its basis.",
mounts={427546},
mounttype='Ground',
startlevel=60,
keywords={"Dragonflight"},
patch='102000',
},[[
step
Reach Renown Rank 5 with the Dream Wardens |complete factionrenown(2574) >= 5 |or
|tip Use the Dream Wardens Reputation Guide to achieve this.
Click Here to Open the Dream Wardens Reputation Guide |confirm |next "Reputation Guides\\Dragonflight Reputations\\Dream Wardens" |or
'|complete hasmount(427546) |or
step
earn 1 Dream Infusion##2777 |or
|tip You earn these by collecting Dream Energy in the Emerald Dream.
|tip Collect Dream Energy for the bar above Elianna by completing objectives in the Emerald Dream, such as quests, world quests and daily quests, weekly quests, and Superbloom events in the Emerald Dream instance.
|tip You can only earn one Dream Infusion per day, per character.
'|complete hasmount(427546) |or
step
Obtain a Magmammoth Mount
|tip Use one of the Magmammoth Mount Guides to achieve this.
Click Here to Open the Loyal Magmammoth Mount Guide |confirm |loadguide "Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Loyal Magmammoth" |or
|tip
Click Here to Open the Raging Magmammoth Mount Guide |confirm |loadguide "Pets & Mounts Guides\\Mounts\\Ground Mounts\\Achievement Mounts\\Raging Magmammoth" |or
'|complete hasmount(427546) or hasmount(373859) or hasmount(374275) or hasmount(374275) or hasmount(371176) |or
step
talk Elianna##211209
Select _"I'd like to view your Dream Infusions."_ |gossip 119717
|tip You have to open the dialogue from a Magmammoth mount.
|tip You can summon a Loyal Magmammoth, a Raging Magmammoth, a Renewed Magmammoth, or a Subterranian Magmammoth.
|tip Another kind of Magmammoth may work, too.
buy Mammyth##210946 |or
'|complete hasmount(427546) |or
step
use Mammyth##210946 |or
learnmount Mammyth##427546
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Morsel Sniffer",{
author="support@zygorguides.com",
description="A breed of shalewings trained by the niffen to find the deepest of morsels.",
mounts={408655},
mounttype='Ground',
startlevel=60,
keywords={"Dragonflight"},
patch='101000',
},[[
step
Reach Renown Rank 18 with Loamm Niffen |complete factionrenown(2564) >= 18 |or
'|complete hasmount(408655) |or
step
earn 800 Dragon Isles Supplies##2003 |or
|tip Acquire these from completing quests and world quests, killing rares, running dungeons, and consumable items like chests, satchels, and treasures.
'|complete hasmount(408655) |or
step
talk Harlowe Marl <Loamm Niffen Quartermaster>##202468
buy Morsel Sniffer Reins##205207 |goto Zaralek Cavern/0 56.40,55.60 |or
'|complete hasmount(408655) |or
step
use Morsel Sniffer Reins##205207
Learn the "Morsel Sniffer" Mount |learnmount Morsel Sniffer##408655
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Twilight Sky Prowler",{
author="support@zygorguides.com",
description="Dubbed the midnight trickster by some, many a couple point to him as the reason their paths crossed in the night.",
mounts={431360},
mounttype='Flying',
startlevel=60,
keywords={"Dragonflight"},
patch='102050',
},[[
step
earn 750 Trader's Tender##2032 |or
|tip Press SHIFT+J and complete requirements for Trader's Tender from the Adventure Guide.
'|complete hasmount(431360) |or
step
Talk to the Trading Post Official in your Capital City
|tip If the mount isn't available for purchase, it may likely return in the future.
buy Twilight Sky Prowler##212227 |or
'|complete hasmount(431360) |or
step
Unwrap the Twilight Sky Prowler in your
|tip Press SHIFT+P and click the Mounts tab to view your mounts list.
|tip Right click to unwrap.
learnmount Twilight Sky Prowler##431360
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Yellow Scouting Ottuk",{
author="support@zygorguides.com",
description="The yellow scouting ottuk love to hide and they blend in well to their surroundings. When not 'playing' hide and seek with their riders, they are perfect companions when scouting enemy encampments.",
mounts={376880},
mounttype='Ground',
startlevel=60,
keywords={"Dragonflight"},
patch='100002',
},[[
step
Reach Level 70 |ding 70
step
talk Elder Poa##186448 |goto The Azure Span/0 12.41,49.34
|tip Inside the building.
|tip Turn in Stolen Totems from treasures in The Azure Span for rep.
'|turnin More Stolen Totems##70927 |repeatable |n
'|turnin Stolen Totems##70926 |repeatable |n
'|turnin Story of a Memorable Victory##72291 |n
Reach Renown Level 25 with the Iskaara Tuskarr |complete factionrenown(2511) >= 25 |or
|tip Complete daily quests, weekly quests, and zone quests in The Azure Span to gain renown.
'|learnmount Yellow Scouting Ottuk##376880 |or
stickystart "Collect_2_Aquatic_Maws"
stickystart "Collect_2_Mastodon_Tusks"
step
earn 750 Dragon Isles Supplies##2003 |or
|tip Acquire these from completing quests and world quests, killing rares, running dungeons, and consumable items like chests, satchels, and treasures.
'|learnmount Yellow Scouting Ottuk##376880 |or
step
label "Collect_2_Aquatic_Maws"
collect 2 Aquatic Maw##201400 |or
|tip Acquire these by killing and looting large fish native to the Dragon Isles, or buy them from the Auction House.
'|learnmount Yellow Scouting Ottuk##376880 |or
step
label "Collect_2_Mastodon_Tusks"
collect 2 Mastodon Tusk##201403 |or
|tip Acquire these by killing and looting any elephant-type beasts in the Dragon Isles, or buy them from the Auction House.
'|learnmount Yellow Scouting Ottuk##376880 |or
step
talk Tatto##186462
buy Yellow Scouting Ottuk##200118 |goto The Azure Span/0 13.80,49.73 |or
'|learnmount Yellow Scouting Ottuk##376880 |or
step
use the Yellow Scouting Ottuk##200118
learnmount Yellow Scouting Ottuk##376880
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Yellow War Ottuk",{
author="support@zygorguides.com",
description="The yellow ottuks of the Azure Span are sleek, sneaky, and smart. Those trained for war are the finest tuskarr cavalry mounts, equally capable on the ground and in the waters.",
mounts={376913},
mounttype='Ground',
startlevel=60,
keywords={"Dragonflight"},
patch='100002',
},[[
step
Reach Level 70 |ding 70
step
talk Elder Poa##186448 |goto The Azure Span/0 12.41,49.34
|tip Inside the building.
|tip Turn in Stolen Totems from treasures in The Azure Span for rep.
'|turnin More Stolen Totems##70927 |repeatable |n
'|turnin Stolen Totems##70926 |repeatable |n
'|turnin Story of a Memorable Victory##72291 |n
Reach Renown Level 30 with the Iskaara Tuskarr |complete factionrenown(2511) >= 30 |or
|tip Complete daily quests, weekly quests, and zone quests in The Azure Span to gain renown.
'|learnmount Yellow War Ottuk##201425 |or
stickystart "Collect_5_Aquatic_Maws"
stickystart "Collect_5_Mastodon_Tusks"
step
earn 1000 Dragon Isles Supplies##2003 |or
|tip Acquire these from completing quests and world quests, killing rares, running dungeons, and consumable items like chests, satchels, and treasures.
'|learnmount Yellow War Ottuk##201425 |or
step
label "Collect_5_Aquatic_Maws"
collect 5 Aquatic Maw##201400 |or
|tip Acquire these by killing and looting large fish native to the Dragon Isles, or buy them from the Auction House.
'|learnmount Yellow War Ottuk##201425 |or
step
label "Collect_5_Mastodon_Tusks"
collect 5 Mastodon Tusk##201403 |or
|tip Acquire these by killing and looting any elephant-type beasts in the Dragon Isles, or buy them from the Auction House.
'|learnmount Yellow War Ottuk##201425 |or
step
talk Tatto##186462
buy Yellow War Ottuk##201425 |goto The Azure Span/0 13.80,49.73 |or
'|learnmount Yellow War Ottuk##201425 |or
step
use the Yellow War Ottuk##201425
Learn the "Yellow War Ottuk" Mount |learnmount Yellow War Ottuk##376913
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Perfected Juggernaut",{
author="support@zygorguides.com",
description="Perfection, like beauty, is in the eye of the beholder. But eyesight can be surgically enhanced.",
mounts={414328},
mounttype='Ground',
startlevel=70,
keywords={"Dragonflight"},
patch='100105',
},[[
step
Earn #3000# Paracausal Flakes |earn 3000 Paracausal Flakes##2594 |or
|tip Earn these by completing time rifts.
|tip Use the "Time Rifts" guide to accomplish this.
Click Here to Load the "Time Rifts" Guide |confirm |loadguide "Daily Guides\\Dragonflight (10-70)\\Time Rifts" |or
step
talk Gill the Drill##208342
buy 1 Perfected Juggernaut##206679 |goto Thaldraszus/0 50.99,56.70 |or
'|learnmount Perfected Juggernaut##414328 |or
step
use the Perfected Juggernaut##206679
Learn the "Perfected Juggernaut" Mount |learnmount Perfected Juggernaut##414328
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Sulfur Hound",{
author="support@zygorguides.com",
description="The Black Empire subjugated these humbled and hateful hounds. Utterly obedient, they still serve the strong.",
mounts={414327},
mounttype='Ground',
startlevel=70,
keywords={"Dragonflight"},
patch='100105',
},[[
step
Earn #3000# Paracausal Flakes |earn 3000 Paracausal Flakes##2594 |or
|tip Earn these by completing time rifts.
|tip Use the "Time Rifts" guide to accomplish this.
Click Here to Load the "Time Rifts" Guide |confirm |loadguide "Daily Guides\\Dragonflight (10-70)\\Time Rifts" |or
step
talk Provisioner Qorra##208347
buy 1 Sulfur Hound's Leash##206678 |goto Thaldraszus/0 51.06,56.70 |or
'|learnmount Sulfur Hound##414327 |or
step
use the Sulfur Hound's Leash##206678
Learn the "Sulfur Hound" Mount |learnmount Sulfur Hound##414327
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Vendor Mounts\\Scourgebound Vanquisher",{
author="support@zygorguides.com",
description="Once bound in service to the Scourge, these undead dragons exist only to spread death, disease, and destruction.",
mounts={414334},
mounttype='Flying',
startlevel=70,
keywords={"Dragonflight"},
patch='100105',
},[[
step
Earn #3000# Paracausal Flakes |earn 3000 Paracausal Flakes##2594 |or
|tip Earn these by completing time rifts.
|tip Use the "Time Rifts" guide to accomplish this.
Click Here to Load the "Time Rifts" Guide |confirm |loadguide "Daily Guides\\Dragonflight (10-70)\\Time Rifts" |or
step
talk Baron Sliver##208338
buy 1 Reigns of the Scourgebound Vanquisher##206680 |goto Thaldraszus/0 51.00,56.65 |or
'|learnmount Scourgebound Vanquisher##414334 |or
step
use the Reigns of the Scourgebound Vanquisher##206680
Learn the "Scourgebound Vanquisher" Mount |learnmount Scourgebound Vanquisher##414334
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\World Event Mounts\\Plainswalker Bearer",{
author="support@zygorguides.com",
description="The mammoths of the Ohn'ahran Plains are unaccustomed to carrying people, as their centaur neighbors do not typically ride mounts. They can learn to bear riders, however. Some even do so enthusiastically.",
mounts={374196},
mounttype='Ground',
startlevel=60,
keywords={"Dragonflight"},
patch='100002',
},[[
step
Reach Level 70 |ding 70
step
talk Hunt Instructor Basku##195454 |goto Ohn'ahran Plains/0 64.01,41.00
|tip Turn in hunting trophies from grand hunts for rep.
'|turnin More Hunting Trophies##72868 |repeatable |n
'|turnin More Hunting Trophies##70929 |repeatable |n
'|turnin More Hunting Trophies##70928 |repeatable |n
Reach Renown Level 5 with the Maruuk Centaur |complete factionrenown(2503) >= 5 |or
|tip Complete daily quests, weekly quests, and zone quests in Ohn'ahran Plains to gain renown.
'|learnmount Plainswalker Bearer##374196 |or
step
collect Grand Hunt Spoils##200468 |n
|tip Locate a Grand Hunt using the various Grand Hunt guides and complete your first each week.
|tip This mount only drops from the first epic version of Grand Hunt Spoils of the week.
|tip You can click a Grand Hunt icon from the zone map it's currently in, then click the popup to load the guide for it.
use Grand Hunt Spoils##200468
collect Plainswalker Bearer##192791 |or
|tip This is a rare drop that only comes in the first Grand Hunt Spoils of each week.
|tip You may have to try again next week to receive this item.
'|learnmount Plainswalker Bearer##374196 |or
step
use the Plainswalker Bearer##192791
Learn the "Plainswalker Bearer" Mount |learnmount Plainswalker Bearer##374196
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\World Event Mounts\\Stormhide Salamanther",{
author="support@zygorguides.com",
description="Sometimes when storm energies infuse a creature, it simply... becomes larger and more placid. Few salamanthers are willing to be ridden, but these children of the storm are a notable exception.",
mounts={374098},
mounttype='Ground',
startlevel=60,
keywords={"Dragonflight"},
patch='100002',
},[[
step
earn 2000 Elemental Overflow##2118 |or
|tip Acquire these from killing mobs in 4 active areas during an "Elemental Storm".
|tip You can also acquire these by participating in Primalist Invasions.
|tip You can locate these areas on your in-game Dragon Isles map.
'|learnmount Stormhide Salamanther##374098 |or
step
talk Mythressa##196516
|tip Inside the building.
buy Stormhide Salamanther##192775 |goto Valdrakken/0 38.10,37.73 |or
'|learnmount Stormhide Salamanther##374098 |or
step
use the Stormhide Salamanther##192775
Learn the "Stormhide Salamanther" Mount |learnmount Stormhide Salamanther##374098
]])
