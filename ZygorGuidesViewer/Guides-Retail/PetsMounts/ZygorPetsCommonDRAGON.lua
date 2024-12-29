local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("PetsCDRAGON") then return end
if not ZGV.CommonPets then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Azure Frillfish",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="Oddly enough, you met this fish drifting through the air.",
keywords={"Aquatic"},
pet=3269,
},[[
step
talk Cataloger Jakes##189226
|tip Inside the tent.
|tip Turn in Dragon Isles Artifacts from treasures and supply packs all over The Waking Shores.
'|turnin Multiple Dragon Isles Artifacts##72876 |n
'|turnin Multiple Dragon Isles Artifacts##71035 |n
'|turnin Dragon Isles Artifacts##71034 |n
Reach Renown Level 5 with the Dragonscale Expedition |complete factionrenown(2507) >= 5 or haspet(3269) |goto The Waking Shores/0 47.11,82.58 |or
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
'|complete haspet(3269) |or
step
talk Cataloger Jakes##189226
|tip Inside the tent.
buy Small Expedition Shovel##191294 |goto The Waking Shores/0 47.11,82.58 |or
'|complete haspet(3269) |or
step
Loot Disturbed Dirt or Expedition Scout's Packs
|tip These can be found anywhere all over The Dragon Isles.
collect A Guide to Rare Fish##199061 |or
'|complete haspet(3269) |or
step
use A Guide to Rare Fish##199061
Use the Guide to Rare Fish |complete completedq(70527) or haspet(3269)
step
click Fragrant Plant##381399
Gain the "Fragrant Plant Scent" Buff |complete hasbuff(388331) or haspet(3269) |goto The Waking Shores/0 40.93,41.46
step
clicknpc Bubble Drifter##195939
|tip It looks like a tiny fish swimming in a circle in the water around this area.
collect Azure Frillfish##193852 |goto The Waking Shores/0 40.27,41.33 |or
'|complete haspet(3269) |or
step
use the Azure Frillfish##193852
learnpet Azure Frillfish##3269
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Bugbiter Tortoise",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="This turtle eats bugs, as you'd expect from its name, but you wouldn't believe how large the bugs are.",
keywords={"Aquatic"},
pet=3360,
},[[
step
Complete the "Loremaster of the Dragon Isles" Achievement |complete achieved(16585) or haspet(3360)
|tip You must unlock world quests to have access to the purveyor of this pet.
|tip Use the "Full Zones (Story + Side Quests)" to accomplish this.
|tip This pet can also be purchased in the auction house.
Click Here to Load the "Full Zones (Story + Side Quests)" Leveling Guide |confirm |loadguide "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)" |or
'|complete haspet(3360) |or
step
Reach Level 70 |ding 70 |or
'|complete haspet(3360) |or
step
talk Cataloger Jakes##189226 |goto The Waking Shores/0 47.11,82.58
|tip Inside the tent.
|tip Turn in Dragon Isles Artifacts from treasures and supply packs all over The Waking Shores.
'|turnin Multiple Dragon Isles Artifacts##72876 |n
'|turnin Multiple Dragon Isles Artifacts##71035 |n
'|turnin Dragon Isles Artifacts##71034 |n
Reach Renown Level 6 with the Dragonscale Expedition |complete factionrenown(2507) >= 6 or haspet(3360)
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
click Petrified Dragon Egg##385021
|tip It looks like a spiky, black egg.
|tip This can be found in caves all over The Waking Shores.
collect Petrified Dragon Egg##202082 |or
You can find cave entrances at:
[32.80,73.62]
[36.12,89.79]
[36.18,83.93]
[22.58,95.12]
[24.60,94.96]
[36.11,89.83]
[40.93,93.37]
[23.25,90.91]
[25.64,95.90]
[36.06,91.97]
'|complete haspet(3360) |or
step
click Eroded Fossil##385022
|tip It looks like a dinosaur skull.
|tip This can be found in the water under waterfalls.
collect Eroded Fossil##202084 |goto The Waking Shores/0 21.56,92.14 |or
Can also be found at:
[26.07,94.56]
[24.70,91.10]
[21.77,94.47]
[23.34,94.20]
[21.70,92.12]
[21.78,94.50]
[22.06,95.66]
[23.05,95.46]
[23.38,96.73]
'|complete haspet(3360) |or
step
Wait for the "Brightblade's Bones" World Quest |complete questactive(66070) or haspet(3360)
|tip The NPC you need to speak to is only available when this world quest is active.
|tip World quests reset twice per week.
step
talk Cymre Brightblade##187077
Select _"I'm ready to trade."_
|tip She is only available when the "Brightblade's Bones" world quest is active.
collect Bugbiter Tortoise##202085 |goto The Waking Shores/0 22.80,95.11 |or
'|complete haspet(3360) |or
step
use the Bugbiter Tortoise##202085
learnpet Bugbiter Tortoise##3360
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Chalkshell Turtle",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="Despite its name, its shell is actually much tougher than chalk.",
keywords={"Aquatic"},
pet=3356,
},[[
step
talk Lani##199255
Select _"I would like some turtle bait."_
Gain the "Turtle Bait" Buff |complete hasbuff(396095) or haspet(3356) |goto The Azure Span/0 10.77,48.02
step
extraaction Use Turtle Bait##396095
|tip A Chalkshell Turtle will appear near you on the beach.
Summon the Chalkshell Turtle |complete not hasbuff(396095) or haspet(3356) |goto The Azure Span/0 10.77,48.02
step
clicknpc Chalkshell Turtle##192260
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
|tip You can repeat these steps to battle another Chalkshell Turtle.
learnpet Chalkshell Turtle##3356 |goto The Azure Span/0 10.82,48.01
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Emmah",{
patch='100007',
source='Drop',
author="support@zygorguides.com",
description="Is it normal for a fish to have fangs?",
keywords={"Aquatic"},
pet=3331,
},[[
step
collect Emmah##193853 |or
|tip You can also purchase it from the auction house.
'|learnpet Emmah##3331 |or
step
use Emmah##193853
learnpet Emmah##3331
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Jean's Lucky Fish",{
patch='100005',
source='Vendor',
author="support@zygorguides.com",
description="Jean's Lucky Fish was the pick of the yard when he went to go get a new pet. The swift and clean way he reached into the pond to grab hold of the fish and put it into a magic bubble became known as the Pick Yard maneuver.",
keywords={"Aquatic","Iskaara Tuskarr","Patchu"},
pet=3270,
},[[
step
collect 300 Polished Pet Charm##163036 |or
|tip Acquire them from winning pet battle world quests that award Polished Pet Charms in BFA, Shadowlands, and Dragon Isles areas.
'|complete haspet(3270) |or
step
talk Patchu##196069
Select _"Want to trade some pet charms?"_
buy Jean's Lucky Fish##192459 |goto The Azure Span/0 13.89,49.85 |or
'|complete haspet(3270) |or
step
use Jean's Lucky Fish##192459
learnpet Jean's Lucky Fish##3270
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Luvvy",{
patch='100007',
source='Drop',
author="support@zygorguides.com",
description="In its big eyes you can see your own reflection. You also see everything else because its eyes are so big.",
keywords={"Aquatic"},
pet=3285,
},[[
step
kill Luttrock##200742
|tip This rare mob is summoned using a Sparkly Spice Pouch at this location.
|tip You can craft Sparkly Spice Pouch using Dragon Isles Cooking, or you can purchase it from the auction house.
|tip You can also join the fight when someone else summons the mob.
|tip You may have to kill the rare several times to collect the pet.
|tip You can also purchase it from the auction house.
collect Luvvy##193235 |goto The Forbidden Reach/5 55.69,51.52 |or
'|learnpet Luvvy##3285 |or
step
use Luvvy##193235
learnpet Luvvy##3285
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Mallard Duckling",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="What do you feed a cute little duckling? What? No, not cheese and quackers! Quackers aren't healthy for ducks.",
keywords={"Aquatic","Pakak"},
pet=3303,
},[[
step
collect 1 Braised Bruffalon Brisket##197788 |or
|tip Craft this using Dragon Isles Cooking, or purchase it from the auction house.
|tip It requires 1 Aileron Seamoth, 4 Bruffalon Flanks, and 1 Assorted Exotic Spices to create.
'|complete haspet(3303) |or
step
collect 1 Riverside Picnic##197789 |or
|tip Craft this using Dragon Isles Cooking, or purchase it from the auction house.
|tip It requires 1 Cerulean Spinefish, 4 Burly Bear Haunches, and 1 Assorted Exotic Spices to create.
'|complete haspet(3303) |or
step
collect 3 Fated Fortune Cookie##197792 |or
|tip Craft this using Dragon Isles Cooking, or purchase it from the auction house.
|tip Each one requires 1 Fated Fortune Card, 3 Thaldraszian Cocoa Powder, and 5 Pastry Packets to create.
'|complete haspet(3303) |or
step
talk Pakak##187783
|tip He walks around this area.
buy Mallard Duckling##193571 |goto Valdrakken/0 43.98,74.87 |or
'|complete haspet(3303) |or
step
use the Mallard Duckling##193571
learnpet Mallard Duckling##3303
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Palamanther",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="This salamanther wants to be your best friend.",
keywords={"Aquatic"},
pet=3296,
},[[
step
clicknpc Palamanther##189122
|tip This wild pet is usually found near water.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Palamanther##3296 |goto The Waking Shores/0 69.19,43.18
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Patos",{
patch='100007',
source='Drop',
author="support@zygorguides.com",
description="This frillfish is a no-frills kind of frillfish.",
keywords={"Aquatic"},
pet=3332,
},[[
step
collect Patos##193851 |or
|tip You can also purchase it from the auction house.
'|learnpet Patos##3332 |or
step
use Patos##193851
learnpet Patos##3332
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Pilot",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="Still learning how to fly.",
keywords={"Aquatic"},
pet=3302,
},[[
step
Reach Level 62 |ding 62 |or
'|complete haspet(3302) |or
step
talk Gracus##186503
|tip He looks like a large tree.
|tip He walks around this area.
accept Some Call Me Bug Catcher##70062 |goto Ohn'ahran Plains/0 29.91,58.42
step
kill Flyspawn Beetle##193996+
|tip They look like insects flying in the air around this area.
Gather #6# Flyspawn Beetle Parts |q 70062/1 |goto Ohn'ahran Plains/0 29.73,58.08
step
talk Gracus##186503
|tip He looks like a large tree.
|tip He walks around this area.
turnin Some Call Me Bug Catcher##70062 |goto Ohn'ahran Plains/0 29.91,58.42
accept Others Call Me Duck Herder##70069 |goto Ohn'ahran Plains/0 29.91,58.42
step
click Duck+
|tip They look like small birds with various names.
|tip They walk around this area.
Feed #4# Ducklings |q 70069/1 |goto Ohn'ahran Plains/0 30.96,56.14
step
talk Gracus##186503
|tip He looks like a large tree.
|tip He walks around this area.
turnin Others Call Me Duck Herder##70069 |goto Ohn'ahran Plains/0 29.91,58.42
accept But... I Am the Hero of Ducks##70070 |goto Ohn'ahran Plains/0 29.91,58.42
step
Search for Firequackers |q 70070/1 |goto Ohn'ahran Plains/0 27.19,56.43
step
kill Queasy Hornswog##194003
|tip It looks like a large grey frog with horns.
|tip Reduce it's health to 20%, and it will throw up.
Make the Queasy Hornswog Throw Up |q 70070/2 |goto Ohn'ahran Plains/0 27.19,56.43
step
talk Gracus##186503
|tip He looks like a large tree.
|tip He walks around this area.
turnin But... I Am the Hero of Ducks##70070
step
use Pilot##193484
learnpet Pilot##3302
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Polliswog",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="These critters often leave their spawning groups as soon as they can move around on land.",
keywords={"Aquatic"},
pet=3404,
},[[
step
clicknpc Polliswog##197637
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Polliswog##3404 |goto Thaldraszus/0 53.48,41.74
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Quack-E",{
patch='100005',
source='Crafted',
author="support@zygorguides.com",
description="Beep. Beep. Beep. Quack.",
keywords={"Aquatic","Crafted","Engineering"},
pet=3306,
},[[
step
collect Quack-E##193572 |or
|tip This can be crafted with Dragon Isles Engineering at skill 50.
|tip You can also purchase it from the auction house.
'|complete haspet(3306) |or
step
use Quack-E##193572
learnpet Quack-E##3306
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Roseate Hopper",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="Most brightly colored frogs are incredibly poisonous. The Roseate Hoppers are different because they are only credibly poisonous.",
keywords={"Aquatic"},
pet=3365,
},[[
step
click Marmoni's Prize##381483
|tip Inside the open box on a stack of boxes here.
collect Marmoni's Prize##200064 |goto The Waking Shores/0 47.72,83.60 |or
'|complete haspet(3365) |or
step
click Adventurer's Lost Soap Bar##381485
|tip Inside the barrel of water.
collect Adventurer's Lost Soap Bar##200065 |goto The Waking Shores/0 39.64,84.68 |or
'|complete haspet(3365) |or
step
click Well-Preserved Bone##381484
|tip At the top of the tower.
collect Well-Preserved Bone##200066 |goto The Waking Shores/0 66.17,55.29 |or
'|complete haspet(3365) |or
step
use Marmoni's Prize##200064
|tip This will combine them into a treat for the Possessive Hornswog.
|tip You need to be at this location to combine them.
collect Observant Riddle 'Treat'##200063 |goto The Waking Shores/0 64.50,69.33 |or
'|complete haspet(3365) |or
step
use the Observant Riddle 'Treat'##200063
|tip Place the circle target on the Protective Hornswog.
Throw the Treat at the Protective Hornswog |complete completedq(70864) or haspet(3365)
step
click Hidden Hornswog Hostage##377899
|tip Inside the cave.
collect Roseate Hopper##199916 |goto The Waking Shores/0 64.95,69.61 |or
'|complete haspet(3365) |or
step
use Roseate Hopper##199916
|tip This item will be in your bag.
learnpet Roseate Hopper##3365
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Scruffy Ottuk",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="Between battling, bathing, and playing, these ottuks have very busy schedules.",
keywords={"Aquatic"},
pet=3281,
},[[
step
clicknpc Scruffy Ottuk##189103
|tip This wild pet is usually found near water.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Scruffy Ottuk##3281 |goto The Waking Shores/0 47.79,29.67
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Secretive Frogduck",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="It looks like a duck and it smells like a duck and it quacks like a duck... what's a duck?",
keywords={"Aquatic","Achievement"},
pet=3263,
},[[
step
Complete the "Proven Pet Parent" Achievement |achieve 15642 |or
|tip Collect 1400 unique pets.
'|complete haspet(3263) |or
step
learnpet Secretive Frogduck##3263
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Stoneshell",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="These creatures' shells are not literally made of stone, but they're strong enough that they might as well be.",
keywords={"Aquatic"},
pet=3353,
},[[
step
clicknpc Stoneshell##192254
|tip This wild pet is usually found near water.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Stoneshell##3353 |goto Ohn'ahran Plains/0 72.25,28.03
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Storm-Touched Ottuk",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="A playful splash from this otter will give you quite a shock.",
keywords={"Aquatic"},
pet=3354,
},[[
step
clicknpc Storm-Touched Ottuk##192256
|tip This pet only spawns during an elemental storm event.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Storm-Touched Ottuk##3354 |goto The Azure Span/0 14.80,34.40
You can also find these during elemental storms at:
[15.80,35.80]
[44.20,32.20]
[60.20,66.20]
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Swoglet",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="The reverberating sound of an adult hornswog's belch can be heard for leagues. Less far-reaching, but far more musical, is the dainty sound of a swoglet belching.",
keywords={"Aquatic"},
pet=3282,
},[[
step
clicknpc Swoglet##189104
|tip This wild pet is usually found near water.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Swoglet##3282 |goto The Azure Span/0 12.51,44.72
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Wild Duckling",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="Quack.",
keywords={"Aquatic"},
pet=3301,
},[[
step
clicknpc Wild Duckling##189136
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Wild Duckling##3301 |goto Valdrakken/0 60.62,57.39
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Backswimmer Timbertooth",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="When not lazily floating down a river, this Timbertooth is fond of snacks and snuggles.",
keywords={"Beast","Iskaara"},
pet=3326,
},[[
step
talk Elder Poa##186448 |goto The Azure Span/0 12.41,49.34
|tip Inside the building.
|tip Turn in Stolen Totems from treasures in The Azure Span for rep.
'|turnin More Stolen Totems##70927 |repeatable |n
'|turnin Stolen Totems##70926 |repeatable |n
'|turnin Story of a Memorable Victory##72291 |n
Reach Renown Level 9 with the Iskaara Tuskarr |complete factionrenown(2511) >= 9 or haspet(3326)
|tip Complete daily quests, weekly quests, and zone quests in The Azure Span to gain renown.
step
map The Azure Span/0
path follow smart; loop on; ants curved; dist 20
path	13.23,48.97	12.93,49.40	12.96,49.99	13.38,50.08	13.73,49.87
path	13.74,49.48	13.39,48.94
talk Jiq##186564
|tip He runs in a large circle around Iskaara.
accept Cute and Cuddly##70959
|tip Choose the Backswimmer Timbertooth from this quest.
|tip Backswimmer Timbertooth requires an expensive material to purchase.
step
collect 1 Runed Writhebark##194863 |or
|tip These are crafted by level 20 Dragon Isles Inscription.
|tip You can also purchase these from the Auction House.
'|complete haspet(3326) |or
step
Kill enemies around this area
|tip Kill ostrich-type animals, such as Hornstriders, Tallstriders, and Runner birds.
collect 5 Tallstrider Sinew##201404 |goto Thaldraszus/0 51.00,47,20 |or
|tip You can also purchase these from the Auction House.
'|complete haspet(3326) |or
step
earn 150 Dragon Isles Supplies##2003 |or
|tip Collect these by completing world quests, weekly quests, and daily quests.
|tip You can also collect them by killing rares or opening treasures.
'|complete haspet(3326) |or
step
talk Murik##193006
|tip He is a Tuskaar standing outside the building.
buy Backswimmer Timbertooth##193837 |goto The Azure Span/0 13.14,49.26 |or
|tip This battle pet is also available from the quest, Cute and Cuddly in The Azure Span.
'|complete haspet(3326) |or
step
use Backswimmer Timbertooth##193837
learnpet Backswimmer Timbertooth##3326
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Bakar Companion",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="Faithful and ferocious, this bakar is a hero's best friend.",
keywords={"Beast","Grand Hunt Spoils","Maruuk Centaur"},
pet=3325,
},[[
step
use Grand Hunt Spoils##200468
use Grand Hunt Spoils##200513
use Grand Hunt Spoils##200515
|tip The first Grand Hunt completion of the week drops the epic Grand Hunt Spoils that has the highest chance of containing the pet.
|tip When you're inside a zone with an active Grand Hunt, click the icon and then click the popup to load the guide.
collect Bakar Companion##200290 |or
'|complete haspet(3325) |or
step
use the Bakar Companion##200290
learnpet Bakar Companion##3325
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Berylmane",{
patch='100007',
source='Drop',
author="support@zygorguides.com",
description="The vorquin of the dragon isles have manes that come in a variety of stunning colors.",
keywords={"Beast"},
pet=3333,
},[[
step
collect Berylmane##193854 |or
|tip You can also purchase it from the auction house.
'|learnpet Berylmane##3333 |or
step
use Berylmane##193854
learnpet Berylmane##3333
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Briarhorn Hatchling",{
patch='100105',
source='Vendor',
author="support@zygorguides.com",
description="Loves: Broccoli, playing, and smashing things. Hates: Meat, sleeping, and mean Titan Keepers who won't let you smash things.",
keywords={"Mechanical"},
pet=4255,
},[[
step
Earn #2750# Paracausal Flakes |earn 2750 Paracausal Flakes##2594 |or
|tip Earn these by completing time rifts.
|tip Use the "Time Rifts" guide to accomplish this.
Click Here to Load the "Time Rifts" Guide |confirm |loadguide "Daily Guides\\Dragonflight (10-70)\\Time Rifts" |or
step
talk Sorotis##208343
buy 1 Briarhorn Hatchling##208012 |goto Thaldraszus/0 51.09,56.58 |or
'|learnpet Briarhorn Hatchling##4255 |or
step
use the Briarhorn Hatchling##208012
learnpet Briarhorn Hatchling##4255
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Buckie",{
patch='100007',
source='Drop',
author="support@zygorguides.com",
description="Gnawing at the roots of magic trees have given this creature the ability to transcend time itself.",
keywords={"Beast"},
pet=3330,
},[[
step
earn 25000 Elemental Overflow##2118 |or
|tip Kill rares, elites, complete quests and world quests, and open treasure containers in The Forbidden Reach.
|tip You can also purchase this pet from the auction house.
'|learnpet Buckie##3330 |or
step
talk Turik##200562
buy Buckie##193850 |goto The Forbidden Reach/5 34.20,60.03 |or
'|learnpet Buckie##3330 |or
step
use Buckie##193850
learnpet Buckie##3330
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Bunbo",{
patch='100007',
source='Drop',
author="support@zygorguides.com",
description="It sits anywhere it wants to, but it prefers to sit on laps.",
keywords={"Beast"},
pet=3290,
},[[
step
collect Bunbo##193363 |or
|tip You can also purchase this pet from the auction house.
'|learnpet Bunbo##3290 |or
step
use Bunbo##193363
learnpet Bunbo##3290
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Cubbly",{
patch='100005',
source='Puzzle',
author="support@zygorguides.com",
description="Cubbly's extended proximity to time magic has given him powers far beyond the average bear.",
keywords={"Beast"},
pet=3415,
},[[
'|complete haspet(3415) |or
step
Enter the cave |goto Thaldraszus/0 52.71,83.30 < 10
|tip You will need to know Dragon Isles Mining or have acquired Renown 20 with Dragonscale Expedition to purchase Expedition Explosives to clear the barrier.
|tip Expedition Explosives are sold by Cataloger Jakes and Pathfinder Jeb at Dragonscale Basecamp.
clicknpc Strange Bear Cub##198604
|tip This looks like a tiny bear cub inside the cave.
collect Cubbly##201463 |goto Thaldraszus/0 52.46,83.61 |or
'|complete haspet(3415) |or
step
use Cubbly##201463
learnpet Cubbly##3415
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Dusky Timbertooth",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="Hunters value these critters more for their companionship than their pelts.",
keywords={"Beast"},
pet=3327,
},[[
step
clicknpc Dusky Timbertooth##189657
|tip The Riverbend Chompers need to build the clickable Beaver Dam before this battle pet becomes active.
|tip There will be tiny branches on the large birch tree.
|tip Waiting until there are 4-5 piles of tiny branches to clear seems to be the best chance of spawning the pet.
|tip Once you can click the Beaver Dam sticks, you can either kill or avoid the Riverbend Chompers.
|tip Click the branches to clear them away one at a time.
|tip Don't accidentally kill the battle pet when clicking the sticks or fighting the Riverbend Chompers.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Dusky Timbertooth##3327 |goto Ohn'ahran Plains/0 71.66,74.18
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Flooftalon",{
patch='100200',
source='PetBattle',
author="support@zygorguides.com",
description="The first thing you might notice about this creature is its huge expressive eyes. This is a mistake. Instead focus on its razor-sharp claws.",
keywords={"Beast"},
pet=4275,
},[[
step
clicknpc Flooftalon##211110
|tip You may need to kill the critter version of these to get the battle pet version to appear.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Capture the "Flooftalon" Battle Pet |learnpet Flooftalon##4275 |goto The Emerald Dream/0 47.04,73.84
You Can Find More Around:
[48.80,74.51]
[48.85,76.55]
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Grassland Stomper",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="Each of this creature's steps shakes the ground. When enough of them run together it sounds like a raging thunderstorm.",
keywords={"Beast"},
pet=3313,
},[[
step
clicknpc Grassland Stomper##189153
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Grassland Stomper##3313 |goto Ohn'ahran Plains/0 55.42,49.01
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Grizzlefur Cub",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="These small bears will not normally attack people, but they have been known to steal the occasional picnic basket.",
keywords={"Beast"},
pet=3351,
},[[
step
clicknpc Grizzlefur Cub##194720
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Grizzlefur Cub##3351 |goto The Azure Span/0 42.97,38.41
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Hoofhelper",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="Though it's rare, thunder lizards have been known to bond with centaurs. And their close allies. Lucky you!",
keywords={"Beast","Maruuk Centaur","renown"},
pet=3317,
},[[
step
talk Hunt Instructor Basku##195454 |goto Ohn'ahran Plains/0 64.01,41.00
|tip Turn in hunting trophies from grand hunts for rep.
'|turnin More Hunting Trophies##72868 |repeatable |n
'|turnin More Hunting Trophies##70929 |repeatable |n
'|turnin More Hunting Trophies##70928 |repeatable |n
Reach Renown Level 8 with the Maruuk Centaur |complete factionrenown(2503) >= 8 or haspet(3317)
|tip Complete daily quests, weekly quests, and zone quests in Ohn'ahran Plains to gain renown.
|tip You can also complete quests at the Aylaag Outpost each time they set up camp at a new location.
step
collect 20 Resilient Leather##193210 |or
|tip This needs to be the tier two quality crafting reagent.
|tip Farm them with Dragon Isles Skinning or purchase them from the auction house.
'|complete haspet(3317) |or
step
Kill enemies around this area
|tip Kill ostrich-type animals, such as Hornstriders, Tallstriders, and Runner birds.
collect 5 Tallstrider Sinew##201404 |goto Thaldraszus/0 51.00,47,20 |or
|tip You can also purchase these from the Auction House.
'|complete haspet(3317) |or
step
talk Quartermaster Huseng##196707
|tip Inside the building.
buy Hoofhelper##193618 |goto Ohn'ahran Plains/0 60.39,37.72 |or
'|complete haspet(3317) |or
step
use Hoofhelper##3317
learnpet Hoofhelper##3317
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Mister Toots",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="His name is Mister Toots because of the melodious sounds he can make with his trunk.",
keywords={"Beast"},
pet=3286,
},[[
step
achieve Just Don't Ask Me To Spell It##16363 |or
|tip Complete all the story quests in Thaldraszus.
|tip This achievement is included in the "Full Zones (Story + Side Quests)" Leveling Guide.
Click Here to Load the "Full Zones (Story + Side Quests)" Leveling Guide |confirm |loadguide "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)" |or
'|complete haspet(3286) |or
step
talk Jyhanna##185563
|tip She is a Dracthyr in the center of this platform.
accept Oh Where, Oh Where Can He Be?##70647 |goto Valdrakken/0 10.43,58.29
step
Find Lubbins |q 70647/1 |goto Thaldraszus/0 34.80,63.75
|tip He is a tiny, injured proto-drake on the ground.
step
talk Jyhanna##185563
|tip She is a Dracthyr in the center of this platform.
turnin Oh Where, Oh Where Can He Be?##70647 |goto Valdrakken/0 10.43,58.29
accept An Expert Opinion##70697 |goto Valdrakken/0 10.43,58.29
step
talk Patchu##196069
turnin An Expert Opinion##70697 |goto The Azure Span/0 13.88,49.85
accept What Lubbins Needs##70722 |goto The Azure Span/0 13.88,49.85
step
talk Patchu##196069
Select _"Thank you. I believe I understand."_
turnin What Lubbins Needs##70722 |goto The Azure Span/0 13.88,49.85
accept A Practice Bout##70732 |goto The Azure Span/0 13.88,49.85
step
clicknpc Gwosh##196206
|tip He is a horned toad sitting by a couple of big rocks.
|tip Try defeating him with Lubbins.
|tip You earned Lubbins in a previous step.
Defeat Gwosh in a pet battle |q 70732/1 |goto The Azure Span/0 14.26,47.60
step
talk Patchu##196069
turnin A Practice Bout##70732 |goto The Azure Span/0 13.88,49.85
accept This Calls for a Specialist##70849 |goto The Azure Span/0 13.88,49.85
step
talk Haniko##196264
|tip She is a Vulpera with a hat on.
turnin This Calls for a Specialist##70849 |goto The Waking Shores/0 38.91,83.27
accept Born to Be Wilder##70851 |goto The Waking Shores/0 38.91,83.27
step
talk Haniko##196264
|tip She is a Vulpera with a hat on.
Select _"How do I do that?"_
Select _"I understand."_
turnin Born to Be Wilder##70851 |goto The Waking Shores/0 38.91,83.27
accept A Friend for Lubbins##70853 |goto The Waking Shores/0 38.91,83.27
step
clicknpc Shyfly##189102
|tip The Shyfly battle pet should be close by.
|tip Level 25 magic battle pets will work best.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Learn the "Shyfly" Battle Pet |learnpet Shyfly##3280 |goto The Waking Shores/0 44.00,78.80
step
talk Haniko##196264
|tip She is a Vulpera with a hat on.
turnin A Friend for Lubbins##70853 |goto The Waking Shores/0 38.91,83.27
accept So How Did It Go?##70854 |goto The Waking Shores/0 38.91,83.27
step
talk Jyhanna##185563
|tip She is a Dracthyr in the center of this platform.
turnin So How Did It Go?##70854 |goto Valdrakken/0 10.43,58.29
collect Mister Toots##200519 |goto Valdrakken/0 10.43,58.29
step
use Mister Toots##200519
learnpet Mister Toots##3286
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Pale Baby Vorquin",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="Behold! A pale vorquin.",
keywords={"Beast"},
pet=3335,
},[[
step
click Magical Creature Manual##384843
|tip Inside the building.
Get the "Sight of Elusive Vorquin" Buff |complete hasbuff(396118) or haspet(3335) |goto The Azure Span/0 45.86,38.31
step
clicknpc Pale Baby Vorquin##191316
|tip While you have the 5 minute buff, you will find these all around Camp Antonidas.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Pale Baby Vorquin##3335 |goto The Azure Span/0 45.32,39.35
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Pale Slumbertooth",{
patch='100200',
source='PetBattle',
author="support@zygorguides.com",
description="These creatures live in bushes and near trees, but they sleep so soundly they're practically invisible. If you want to interrupt their dreaming, you'd best bring friends.",
keywords={"Beast"},
pet=4302,
},[[
step
talk Celestine of the Harvest##210608
|tip She moves with the Dreamsurge Camp.
buy Friendsurge Defenders##209944 |or
|tip This costs 500 Dreamsurge Coalescence.
|tip Complete the Weekly Dreamsurge Quest, Rares, closing portals, some world quests, Dragon Isles Supply Nodes and Fly through Green Orbs that may appear to farm them.
'|achieve 19401/5 |or
step
use the Friendsurge Defenders##209944
Gain the Friendsurge Defenders Buff |complete hasbuff(423865) |or
|tip This lasts for 30 minutes.
'|achieve 19401/5 |or
step
map The Emerald Dream/0
path loop off; bounce
path	58.47,35.07	53.61,65.31	48.36,69.42	35.75,62.29	34.60,62.26
path	34.31,67.65
Follow the path
clicknpc Pale Slumbertooth##212437
|tip They will be in bushes.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Pale Slumbertooth##4302
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Pinkie",{
patch='100005',
source='Vendor',
author="support@zygorguides.com",
description="With her distinctive coloration and impeccable work ethic, Pinkie has propelled herself to the top of the tallstrider fashion world.",
keywords={"Beast","Iskaara Tuskarr","Patchu"},
pet=3417,
},[[
step
collect 500 Polished Pet Charm##163036 |or
|tip Acquire them from winning pet battle world quests that award Polished Pet Charms in BFA, Shadowlands, and Dragon Isles areas.
'|complete haspet(3417) |or
step
talk Patchu##196069
Select _"Want to trade some pet charms?"_
buy Pinkie##201703 |goto The Azure Span/0 13.89,49.85 |or
'|complete haspet(3417) |or
step
use Pinkie##201703
learnpet Pinkie##3417
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Razortooth Bear Cub",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="It's not easy having red fur during the winter, but in the autumn it's very fashionable.",
keywords={"Beast"},
pet=3352,
},[[
step
clicknpc Razortooth Bear Cub##192251
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Razortooth Bear Cub##3352 |goto Thaldraszus/0 48.80,55.80
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Scout",{
patch='100005',
source='Vendor',
author="support@zygorguides.com",
description="Scout came to the Dragon Isles for adventure and excitement. After finding you, he got both.",
keywords={"Beast","Iskaara Tuskarr","Patchu"},
pet=3407,
},[[
step
collect 5000 Polished Pet Charm##163036 |or
|tip Acquire them from winning pet battle world quests that award Polished Pet Charms in BFA, Shadowlands, and Dragon Isles areas.
'|complete haspet(3407) |or
step
talk Patchu##196069
Select _"Want to trade some pet charms?"_
buy Scout##201441 |goto The Azure Span/0 13.89,49.85 |or
'|complete haspet(3407) |or
step
use Scout##201441
learnpet Scout##3407
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Scruffles",{
patch='100007',
source='Drop',
author="support@zygorguides.com",
description="Scruffles' lust for battle runs deep.",
keywords={"Beast"},
pet=3293,
},[[
step
kill Vraken the Hunter##200584
|tip Inside the cave.
|tip You may have to kill the rare several times to collect the pet.
|tip You can also purchase it from the auction house.
collect Scruffles##193364 |goto The Forbidden Reach/5 58.39,48.64 |or
'|learnpet Scruffles##3293 |or
step
use Scruffles##193364
learnpet Scruffles##3293
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Slumbertooth",{
patch='100200',
source='PetBattle',
author="support@zygorguides.com",
description="As younglings, these critters need a lot of naps. Fortunately, adventurers' backpacks make good napping spots.",
keywords={"Beast"},
pet=4279,
},[[
step
clicknpc Slumbertooth##211295
|tip This pet appears more often during a Superbloom.
|tip Kill the critter version of Slumbertooth around here.
|tip Eventually a captuarable one will spawn.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Slumbertooth##4279 |goto The Emerald Dream/0 44.41,72.20
You Can Find More Around Here:
[50.13,78.04]
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Snaggletoof",{
patch='100200',
source='PetBattle',
author="support@zygorguides.com",
description="Such toof. Such snaggle.",
keywords={"Beast"},
pet=4303,
},[[
step
map The Emerald Dream/0
path loop off; bounce
path	25.53,22.90	57.71,26.31	49.74,47.80	37.46,57.65
path	33.58,68.88
Follow the path
|tip You may need to kill the critter version of these to get the battle pet version to appear.
clicknpc Snaggletoof##212459
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Snaggletoof##4303
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Snowclaw Cub",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="An adult Snowclaw can rattle the very trees with its roar. A cub can rattle one of the smaller branches.",
keywords={"Beast"},
pet=3359,
},[[
step
This Quest Chain is Complete |only if completedq(67606)
|tip You have already completed this quest chain. |only if completedq(67606)
|tip You must complete this guide on a different character, unless you still have the "Honorary Dryad" title. |only if completedq(67606)
Click Here to Confirm  |confirm |only if completedq(67606)
step
Reach Level 68 |ding 68
step
talk Thalendra##192522
|tip She looks like a dryad standing in front of a fountain.
accept A Dryadic Remedy##67606 |goto Valdrakken/0 72.78,66.17
step
collect Tasty Hatchling's Treat##197769 |q 67606/1
|tip You can craft this with level 35 Dragon Isles Cooking, or purchase it from the auction house.
step
talk Despondent Duckling##192970
|tip This is a tiny, yellow duckling sleeping on the bank near other ducklings.
Choose _"Carefully administer Thalendra's recommended remedy."_
Treat the Despondent Duckling |q 67606/2 |goto Valdrakken/0 66.46,58.29
step
talk Thalendra##192522
|tip She looks like a dryad standing in front of a fountain.
|tip Do not log out before finishing this guide, or you will lose the temporary title you need.
turnin A Dryadic Remedy##67606 |goto Valdrakken/0 72.78,66.17
step
kill River Hornswog##191618
|tip They look like large frogs with horns and fins in The Waking Shores.
|tip These can also be purchased from the auction house.
collect 3 Hornswog Hunk##197744 |goto The Waking Shores/0 66.20,42.80 |or
'|complete haspet(3359) |or
step
Click here to unlock Dealer Vexil in order to purchase a Honey Snack |confirm |next |or
|tip This will require a fair amount of farming time.
Click Here to Purchase a Honey Snack from the Auction House |confirm |next "Purchase_Honey_Snack_From_Auction_House" |or
'|havebuff Worldbreaker Membership##386848 |next "Dealer_Vexil_Already_Unlocked" |or
'|complete haspet(3359) |or
step
Reach Level 70 |ding 70 |or
'|complete haspet(3359) |or
step
Complete "The Shadow of His Wings" Quest |complete completedq(65691) or haspet(3359) |or
|tip Use the Full Zone leveling guide for The Waking Shores to accomplish this.
Click Here to Load the "Full Zones (Story + Side Quests)" Leveling Guide |confirm |loadguide "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)" |or
step
accept Allegiance to One##66419 |goto The Waking Shores/0 24.51,55.83 |or
|tip It doesn't matter which one you choose.
|tip You will be locked in to the one you choose for a week.
'|complete haspet(3359) |or
step
talk Sabellian##185894
_Or_
talk Wrathion##187495
Select _"I swear to support your current efforts._"
|tip On the balcony.
|tip You will unlock an additional quest to gain reputation with whichever one you choose for the week.
Show Support to Wrathion or Sabellian |q 66419/1 |goto The Waking Shores/0 24.38,55.69 |or
'|complete haspet(3359) |or
step
accept Keys of Loyalty##66133 |or
accept Keys of Loyalty##66805 |or
|tip You will automatically accept one of these quests depending on which allegiance you chose.
'|complete haspet(3359) |or
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
'|complete haspet(3359) |or
step
use the Worldbreaker Membership##199215
|tip When you use the item, it is comsumed and grants "The Worldbreaker" title and "Worldbreaker Membership" buff for 2 days.
Gain the "Worldbreaker Membership" Buff |havebuff Worldbreaker Membership##386848 |or
'|complete haspet(3359) |or
step
label "Dealer_Vexil_Already_Unlocked"
talk Dealer Vexil##193310
|tip Inside the cave.
buy Honey Snack##198356 |goto The Waking Shores/0 34.74,46.73 |or
|tip Do not use the Honey Snack, as Dealer Vexil may not allow you to buy another one for the quest.
'|complete haspet(3359) |or
step
label "Purchase_Honey_Snack_From_Auction_House"
buy Honey Snack##198356 |or
|tip Purchase it from the Auction House.
'|complete haspet(3359) |or
step
Set the "Honorary Dryad" title
|tip In your character panel, set your title to Honorary Dryad.
|tip If you do not do this, the NPC on the following step will run from you.
Set the "Honorary Dryad" Title |complete hastitle(728) |or
'|complete haspet(3359) |or
step
talk Primal Bear Cub##196768
|tip He is a tiny bear cub with a yellow name running around this area.
|tip It can take up to 60 minutes for the cub to respawn if it is not here.
|tip You must equip the title "Honorary Dryad" or the bear cub will run from you.
Choose _<Offer the cub some hornswog meat and honey>_
collect Snowclaw Cub##201838 |goto The Azure Span/0 67.60,18.60 |or
'|complete haspet(3359) |or
step
use the Snowclaw Cub##201838
learnpet Snowclaw Cub##3359
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Storm-Touched Stomper",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="This what your mother always warned you would happen if you ate grass that was struck by lightning.",
keywords={"Beast"},
pet=3385,
},[[
step
clicknpc Storm-Touched Stomper##192029
|tip This pet only spawns during an elemental storm event.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Storm-Touched Stomper##3385 |goto The Waking Shores/0 63.86,29.95
You can also find these during elemental storms at:
[32.00,51.40]
[30.20,57.20]
[30.60,69.60]
[27.00,73.80]
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Storm-Touched Timbertooth",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="A timbertooth with lighting inside? Shocking!",
keywords={"Beast"},
pet=3329,
},[[
step
clicknpc Storm-Touched Timbertooth##189660
|tip This pet only spawns during an elemental storm event.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Storm-Touched Timbertooth##3329 |goto Ohn'ahran Plains/0 35.60,34.80
You can also find these during elemental storms at:
[35.80,42.80]
[32.60,39.60]
[34.60,44.60]
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Thunderfoot Calf",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="When these creatures stampede, they sound like a thunderstorm. When these creatures stampede in a thunderstorm, they sound like a cataclysm.",
keywords={"Beast"},
pet=3318,
},[[
step
clicknpc Thunderfoot Calf##189155
|tip Inside the cave.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Thunderfoot Calf##3318 |goto The Waking Shores/0 45.82,35.26
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Tiny Timbertooth",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="As good as good and better. These little guys are quite frail but exceedingly brave. - Bob Bigheart",
keywords={"Beast"},
pet=3328,
},[[
step
clicknpc Tiny Timbertooth##189658
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Tiny Timbertooth##3328 |goto The Azure Span/0 20.17,47.42
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Trunkalumpf",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="While their tiny tusks may not help much in a fight, the trunkalumpfs make up for it in sheer weight.",
keywords={"Beast"},
pet=3288,
},[[
step
clicknpc Trunkalumpf##189110
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Trunkalumpf##3288 |goto Ohn'ahran Plains/0 76.60,27.20
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Violet Violence",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="Some very clever wizard or dragon or other magical being thought they were being clever when they decided to color an ice elemental purple for a very elaborate bit of wordplay. They were probably right.",
keywords={"Beast","Achievement"},
pet=3262,
},[[
step
Complete the "What Can I Say? They Love Me." Achievement |achieve 15643 |or
|tip Collect 1600 unique pets.
'|complete haspet(3262) |or
step
learnpet Violet Violence##3262
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Vorquin Runt",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="It will probably grow bigger. Probably.",
keywords={"Beast"},
pet=3336,
},[[
step
clicknpc Vorquin Runt##191323
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Vorquin Runt##3336 |goto The Waking Shores/0 62.78,48.06
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Chestnut",{
patch='100005',
source='Puzzle',
author="support@zygorguides.com",
description="Chestnut once found an acorn larger than he was, ate the whole thing, and doubled in size. It's a good thing he didn't eat a Trunkalumpf.",
keywords={"Critter"},
pet=3275,
},[[
step
click Acorn##381424
|tip Its a tiny acorn on the ground by a large tree.
Get the Acorn buff |complete hasbuff(388485) or haspet(3275) |goto Thaldraszus/0 49.38,62.66 |or
You can find more around [49.37,63.06]
step
clicknpc Acorn Harvester##196172
collect Chestnut##193066 |goto Thaldraszus/0 49.43,62.89 |or
'|complete haspet(3275) |or
step
use the Chestnut##193066
learnpet Chestnut##3275
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Fol'ya Pup",{
patch='100200',
source='PetBattle',
author="support@zygorguides.com",
description="Keep it out of your backpack or it will eat all your food and then take a nap.",
keywords={"Critter"},
pet=4276,
},[[
step
clicknpc Fol'ya Pup##211177
|tip They can be found as frontliners throughout the zone.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Catch the "Fol'ya Pup" Battle Pet |achieve 19401/3 |goto The Emerald Dream/0 50.96,62.13
Capture the "Fol'ya Pup" Battle Pet |learnpet Fol'ya Pup##4276
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Leyhart",{
patch='100200',
source='PetBattle',
author="support@zygorguides.com",
description="This little one likes cheese, but most fawn do.",
keywords={"Critter"},
pet=4278,
},[[
step
clicknpc Leyhart##211288
|tip These are common throughout the zone.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Capture the "Leyhart" Battle Pet |learnpet Leyhart##4278 |goto The Emerald Dream/0 52.79,65.58
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Pewling",{
patch='100200',
source='PetBattle',
author="support@zygorguides.com",
description="If you think the skunks of the Emerald Dream smell bad, pray that you never smell the skunks of the Emerald Nightmare.",
keywords={"Critter"},
pet=4280,
},[[
step
clicknpc Pewling##211302
|tip These are common throughout the zone.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Capture the "Pewling" Battle Pet |learnpet Pewling##4280 |goto The Emerald Dream/0 52.35,64.44
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Pistachio",{
patch='100005',
source='Vendor',
author="support@zygorguides.com",
description="Pistachio got her name in exactly the way you would expect.",
keywords={"Critter","Iskaara Tuskarr","Patchu"},
pet=3278,
},[[
step
collect 50 Polished Pet Charm##163036 |or
|tip Acquire them from winning pet battle world quests that award Polished Pet Charms in BFA, Shadowlands, and Dragon Isles areas.
'|complete haspet(3278) |or
step
talk Patchu##196069
Select _"Want to trade some pet charms?"_
buy Pistachio##193071 |goto The Azure Span/0 13.89,49.85 |or
'|complete haspet(3278) |or
step
use Pistachio##193071
learnpet Pistachio##3278
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Pricklefury Hare",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="This is the most pettable pointy creature you will ever meet.",
keywords={"Critter"},
pet=3272,
},[[
step
clicknpc Pricklefury Hare##189093
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Pricklefury Hare##3272 |goto The Waking Shores/0 78.08,33.54
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Sapnibbler",{
patch='100200',
source='PetBattle',
author="support@zygorguides.com",
description="Sapnibblers are always up for a game of hide and squeak.",
keywords={"Critter"},
pet=4277,
},[[
step
clicknpc Sapnibbler##211182
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
Capture the "Sapnibbler" Battle Pet |learnpet Sapnibbler##4277 |goto The Emerald Dream/0 55.25,72.32
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Shaggy",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="This little rabbit is cute from the tip of her button nose to the tips of her deadly claws.",
keywords={"Critter"},
pet=3259,
},[[
step
Complete the achievment _"Waking Hope"_. |confirm |complete achieved(16334) or haspet(3259)
|tip Complete all of the main story questlines.
|tip Use the Full Zone leveling guide to accomplish this.
|tip You can also purchase this pet from the auction house.
Click Here to Load the "Full Zones (Story + Side Quests)" Leveling Guide |confirm |loadguide "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)"
step
Reach Level 70 |ding 70 |or
'|complete haspet(3259) |or
step
Unlock the The Forbidden Reach Envoys in Morut Village. |confirm |complete completedq(73157) or haspet(3259)
|tip Complete The Forbidden Reach quest chain.
|tip Use the Forbidden Reach Leveling Guide to accomplish this.
Click Here to Load the "Forbidden Reach Quests" Leveling Guide |confirm |loadguide "Leveling Guides\\Dragonflight (10-70)\\The Forbidden Reach"
step
earn 2000 Elemental Overflow##2118 |or
|tip These drop from mobs, treasures, and daily quests in The Forbidden Reach, and areas affected by the Elemental Storm.
'|complete haspet(3259) |or
step
talk Cataloger Daela##200566
|tip She is a Dark Iron Dwarf inside the building
buy Sack of Oddities##204383 |goto The Forbidden Reach/5 34.32,59.98 |or
'|complete haspet(3259) |or
step
use Sack of Oddities##204383
|tip The pet has a small chance to drop from this container.
|tip You may have to purchase and open several of these to obtain the pet.
collect Shaggy##191915 |or
'|complete haspet(3259) |or
step
use Shaggy##191915
learnpet Shaggy##3259
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Snowy Treeflitter",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="Nearly invisible, this creature leaps from tree to snow-covered tree.",
keywords={"Critter"},
pet=3260,
},[[
step
clicknpc Snowy Treeflitter##188792
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Snowy Treeflitter##3260 |goto The Azure Span/0 69.09,29.93
You can find more around [72.32,28.31]
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Treeflitter",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="Many have tried to boop the cute little noses of creatures like this. Most have lost fingers.",
keywords={"Critter"},
pet=3276,
},[[
step
clicknpc Treeflitter##189097
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Treeflitter##3276 |goto Ohn'ahran Plains/0 55.58,42.26
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Bronze Racing Enthusiast",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="This little racing enthusiast has never missed a race and has never met a racer she didn't like.",
keywords={"Dragonkin","Achievement"},
pet=3279,
},[[
step
Complete the "Dragon Racing Completionist: Silver" Achievement |achieve 15940 |or
|tip Complete all dragon races in all Dragon Isles areas with Silver time or better.
|tip You can use the "Dragonriding World Tour" guide to locate each race.
'|complete haspet(3279) |or
step
use the Bronze Racing Enthusiast##199688
learnpet Bronze Racing Enthusiast##3279
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Crimson Proto-Whelp",{
patch='100005',
source='Vendor',
author="support@zygorguides.com",
description="This proto-whelp's distinctive coloration is highly prized by pet trainers.",
keywords={"Dragonkin","Groundskeeper Kama"},
pet=3379,
},[[
step
talk Sorotis##195768 |goto Valdrakken/0 26.08,40.03
|tip Inside the building.
|tip Turn in Titan Relics from titan, dragon, and primalist treasures.
'|turnin More Titan Relics##70841 |n
'|turnin A Titan Relic##70840 |n
Reach Renown Level 18 with the Valdrakken Accord |complete factionrenown(2510) >= 18 or haspet(3379)
|tip Complete daily quests, weekly quests, and zone quests in The Azure Span to gain renown.
step
talk Groundskeeper Kama##189197
accept A Collection of Creatures##70901 |goto Valdrakken/0 74.51,63.04
|tip Choose the "Crimson Proto-Whelp" pet if you have not completed this yet.
step
kill Shortcoat Bear##193627
|tip They are brown bears that live around this area.
|tip You can also purchase these from the auction house.
collect 3 Primal Bear Spine##201399 |goto The Azure Span/0 49.00 14.60 |or
'|complete haspet(3379) |or
step
Kill enemies around these areas
|tip Kill buffalo-type or deer-type animals, such as Bruffalon, Broadhoof, Bull, Cow, Doe, and Stag beasts.
|tip You can also purchase this from the Auction House.
collect 1 Large Sturdy Femur##201402 |goto Ohn'ahran Plains/0 73.46,45.01 |or
You can find more around [82.42,58.99]
'|complete haspet(3379) |or
step
earn 150 Dragon Isles Supplies##2003 |or
|tip Collect these by completing world quests, weekly quests, and daily quests.
|tip You can also collect them by killing rares or opening treasures.
'|complete haspet(3379) |or
step
talk Groundskeeper Kama##189197
|tip He is a large, green Dragonkin sitting on the grass.
buy Crimson Proto-Whelp##199758 |goto Valdrakken/0 74.50,63.15 |or
'|complete haspet(3379) |or
step
use Crimson Proto-Whelp##199758
learnpet Crimson Proto-Whelp##3379
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Kal'andu",{
patch='100200',
source='Quest',
author="support@zygorguides.com",
description="Rescued from the Druids of the Flame's onslaught upon the Emerald Dream, this juvenile faerie dragon has taken a liking to you... and to your food. Don't leave your snacks unattended!",
keywords={"Dragonkin","Burning Out","Solarys Thorngale","Emerald Dream"},
pet=4297,
},[[
step
Complete the quest "Burning Out"
|tip Use the "Emerald Dream Campaign" Leveling Guide to accomplish this.
Click Here to Load "The Emerald Dream Campaign + Side Quests" |confirm |next "Leveling Guides\\Dragonflight (10-70)\\Emerald Dream Campaign + Side Quests" |or
|tip
Click Here to Load "The Emerald Dream Campaign" |confirm |next "Leveling Guides\\Dragonflight (10-70)\\Emerald Dream Campaign" |or
'|complete haspet(4297) |or
step
collect Kal'andu##210633 |or
'|complete haspet(4297) |or
step
use Kal'andu##210633
learnpet Kal'andu##4297
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Lubbins",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="Who's the cutest little monster? You are!",
keywords={"Dragonkin"},
pet=3316,
},[[
step
Earn the "Just Don't Ask Me To Spell It" Achievement |achieve 16363 |or
|tip Refer to the "Thaldraszus (Full Zone)" leveling guide to accomplish this.
Click Here to Load the "Thaldraszus (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Thaldraszus (Full Zone)" |or
'|complete haspet(386575) |or
step
talk Jyhanna##185563
|tip She is a Dracthyr in the center of this platform.
accept Oh Where, Oh Where Can He Be?##70647 |goto Valdrakken/0 10.43,58.29
step
clicknpc Injured Lubbins##195911
|tip He is a tiny, injured proto-drake on the ground.
Find and help Lubbins |q 70647/1 |goto Thaldraszus/0 34.80,63.75
step
talk Jyhanna##185563
|tip She is a Dracthyr in the center of this platform.
turnin Oh Where, Oh Where Can He Be?##70647 |goto Valdrakken/0 10.41,58.27
step
use Lubbins##199175
learnpet Lubbins##3316
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Magic Nibbler",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="It's tried to cut down, but magic is just so tasty.",
keywords={"Dragonkin","Groundskeeper Kama"},
pet=3378,
},[[
step
talk Sorotis##195768 |goto Valdrakken/0 26.08,40.03
|tip Inside the building.
|tip Turn in Titan Relics from titan, dragon, and primalist treasures.
'|turnin More Titan Relics##70841 |n
'|turnin A Titan Relic##70840 |n
Reach Renown Level 18 with the Valdrakken Accord |complete factionrenown(2510) >= 18 or haspet(3378)
|tip Complete daily quests, weekly quests, and zone quests in The Azure Span to gain renown.
step
talk Groundskeeper Kama##189197
accept A Collection of Creatures##70901 |goto Valdrakken/0 74.51,63.04
|tip Choose the "Magic Nibbler" pet if you have not completed this yet.
step
kill Shortcoat Bear##193627
|tip They are brown bears that live around this area.
|tip You can also purchase these from the auction house.
collect 3 Primal Bear Spine##201399 |goto The Azure Span/0 49.00 14.60 |or
'|complete haspet(3378) |or
step
Kill enemies around these areas
|tip Kill buffalo-type or deer-type animals, such as Bruffalon, Broadhoof, Bull, Cow, Doe, and Stag beasts.
|tip You can also purchase this from the Auction House.
collect 1 Large Sturdy Femur##201402 |goto Ohn'ahran Plains/0 73.46,45.01 |or
You can find more around [82.42,58.99]
'|complete haspet(3378) |or
step
earn 150 Dragon Isles Supplies##2003 |or
|tip Collect these by completing world quests, weekly quests, and daily quests.
|tip You can also collect them by killing rares or opening treasures.
'|complete haspet(3378) |or
step
talk Groundskeeper Kama##189197
|tip He is a large, green Dragonkin sitting on the grass.
buy Magic Nibbler##199757 |goto Valdrakken/0 74.50,63.15 |or
'|complete haspet(3378) |or
step
use Magic Nibbler##199757
learnpet Magic Nibbler##3378
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Obsidian Proto-Whelp",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="After finding a clutch of black proto-whelps, Wrathion took them under his wing.",
keywords={"Dragonkin","Wrathion","Lorena Belle","Obsidian Citadel"},
pet=3414,
},[[
step
kill Shortcoat Bear##193627+
collect 3 Primal Bear Spine##201399 |goto The Azure Span/0 49.00 14.60 |or
|tip You can also purchase these from the auction house.
'|complete haspet(3414) |or
step
Kill enemies around these areas
|tip Kill buffalo-type or deer-type animals, such as Bruffalon, Broadhoof, Bull, Cow, Doe, and Stag beasts.
|tip You can also purchase this from the Auction House.
collect 1 Large Sturdy Femur##201402 |goto Ohn'ahran Plains/0 73.46,45.01 |or
You can find more around [82.42,58.99]
'|complete haspet(3414) |or
step
earn 150 Dragon Isles Supplies##2003 |or
|tip Collect these by completing world quests, weekly quests, and daily quests.
|tip You can also collect them by killing rares or opening treasures.
'|complete haspet(3414) |or
step
talk Lorena Belle##188625
Select _"May I see your wares?"_
buy Obsidian Proto-Whelp##200930 |goto The Waking Shores/0 25.16,55.80 |or
'|complete haspet(3414) |or
step
use the Obsidian Proto-Whelp##200930
learnpet Obsidian Proto-Whelp##3414
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Obsidian Warwhelp",{
patch='100105',
source='Vendor',
author="support@zygorguides.com",
description="A war-obsessed world turned her into a weapon... but they couldn't break her spirit.",
keywords={"Dragonkin"},
pet=4261,
},[[
step
Earn #2750# Paracausal Flakes |earn 2750 Paracausal Flakes##2594 |or
|tip Earn these by completing time rifts.
|tip Use the "Time Rifts" guide to accomplish this.
Click Here to Load the "Time Rifts" Guide |confirm |loadguide "Daily Guides\\Dragonflight (10-70)\\Time Rifts" |or
'|complete haspet(4261) |or
step
talk Warden Krizzik##208346
buy 1 Obsidian Warwhelp##208011 |goto Thaldraszus/0 51.05,56.68 |or
'|complete haspet(4261) |or
step
use the Obsidian Warwhelp##208011
learnpet Obsidian Warwhelp##4261
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Spyragos",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="This little dragon is all fired up! It looks like he's got some things to do.",
keywords={"Dragonkin"},
pet=3342,
},[[
step
Reach Level 60 |ding 60 |or
'|complete haspet(3342) |or
step
Complete the "Restoring the Faith" Quest |complete completedq(66057) or haspet(3342) |or
|tip This requires you to complete up to the Obisdian Citadel in The Waking Shores.
|tip Use the Full Zone leveling guide for The Waking Shores to accomplish this and "The Shadow of His Wings" quest.
Click Here to Load the "Full Zones (Story + Side Quests)" Leveling Guide |confirm |loadguide "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)"
step
talk Vazallia##192662
|tip She will eventually land in this sheltered cove, and transform into her human form.
Select _"What are you doing here?"_
Watch the dialogue
accept A Dragon's Day Off##65875 |goto The Waking Shores/0 20.14,39.54 |or
|tip This quest does not have a marker until you have accepted it.
'|complete haspet(3342) |or
step
Reach Level 70 |ding 70 |or
'|complete haspet(3342) |or
step
Complete "The Shadow of His Wings" Quest |complete completedq(65691) or haspet(3342) |or
|tip Use the Full Zone leveling guide for The Waking Shores to accomplish this.
Click Here to Load the "Full Zones (Story + Side Quests)" Leveling Guide |confirm |loadguide "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)" |or
step
accept Allegiance to One##66419 |goto The Waking Shores/0 24.51,55.83 |or
|tip It doesn't matter which one you choose.
|tip You will be locked in to the one you choose for a week.
'|complete haspet(3342) |or
step
talk Sabellian##185894
_Or_
talk Wrathion##187495
Select _"I swear to support your current efforts."_
|tip On the balcony.
|tip You will unlock an additional quest to gain reputation with whichever one you choose for the week.
Show Support to Wrathion or Sabellian |q 66419/1 |goto The Waking Shores/0 24.38,55.69 |or
'|complete haspet(3342) |or
step
accept Keys of Loyalty##66133 |or
accept Keys of Loyalty##66805 |or
|tip You will automatically accept one of these quests depending on which allegiance you chose.
'|learnpet Spyragos##3342 |or
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
'|complete haspet(3342) |or
step
use the Worldbreaker Membership##199215
|tip When you use the item, it is comsumed and grants "The Worldbreaker" title and "Worldbreaker Membership" buff for 2 days.
Gain the "Worldbreaker Membership" Buff |havebuff Worldbreaker Membership##386848 |or
'|complete haspet(3342) |or
step
talk Dealer Vexil##193310
|tip Inside the cave.
buy Flameslinger Rum##197738 |q 65875/1 |goto The Waking Shores/0 34.74,46.73 |or
|tip Do not use the Flameslinger Rum, as Dealer Vexil may not allow you to buy another one for the quest.
'|complete haspet(3342) |or
step
click Popfizz Punch##378820
|tip It looks like a small bottle on the deck of the partially submerged sunken ship.
collect Popfizz Punch##197737 |q 65875/3 |goto The Waking Shores/0 39.29,38.33 |or
'|complete haspet(3342) |or
step
click Slam Bam Swill##379297
|tip It looks like a small bottle on the top platform of the treehouse that is on top of the mountain.
collect Slam Bam Swill##198045 |q 65875/5 |goto The Waking Shores/0 46.92,30.71 |or
'|complete haspet(3342) |or
step
clicknpc Rampaging Wind##187494
use Kul Tiran Red##198047 |n
|tip Target the Rampaging Wind and click the Kul Tiran Red to throw it.
collect Whirlwind Wine##198044 |q 65875/6 |goto The Waking Shores/0 76.35,46.54 |or
You can find more at: [74.16,44.05]
'|complete haspet(3342) |or
step
talk Kora Fullsails##186454
|tip She is a Kul Tiran lady standing near Firstmate Kaleson at The Obsidian Bulwark.
buy Kul Tiran Red##198047 |goto The Waking Shores/0 43.13,67.36 |or
'|complete haspet(3342) |or
step
talk Firstmate Kaleson##186752
|tip He walks around this area at The Obsidian Bulwark.
buy Happy Trigger Sour##197739 |q 65875/4 |goto The Waking Shores/0 43.12,67.41 |or
'|complete haspet(3342) |or
step
talk Outfitter Tipech##188349
|tip He is on Wrathion's side of the Obsidian Throne platform.
buy Stealthy Elven Port##198043 |q 65875/7 |goto The Waking Shores/0 25.70,55.18 |or
'|complete haspet(3342) |or
step
click Riptide Brew##378054
|tip It looks like a cask inside the cave.
|tip You may have to kill Lago the Drowned inside the cave.
collect Riptide Brew##195543 |q 65875/2 |goto The Waking Shores/0 62.95,79.72 |or
'|complete haspet(3342) |or
step
talk Vazallia##192662
turnin A Dragon's Day Off##65875 |goto The Waking Shores/0 20.14,39.55 |or
'|complete haspet(3342) |or
step
use Spyragos##198622
learnpet Spyragos##3342
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Stormie",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="As an egg, this proto-drake was struck by a freak bolt of lightning. Years later, the lightning still lives inside.",
keywords={"Dragonkin"},
pet=3382,
},[[
step
Complete the achievment _"Waking Hope"_. |confirm |complete achieved(16334) or haspet(3382) |or
|tip Complete all of the main story questlines.
|tip Use the Full Zone leveling guide to accomplish this.
Click Here to Load the "Full Zones (Story + Side Quests)" Leveling Guide |confirm |loadguide "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)" |or
'|complete haspet(3382) |or
step
Reach Level 70 |ding 70 |or
'|complete haspet(3382) |or
step
earn 1000 Elemental Overflow##2118 |or
|tip These drop from mobs in areas affected by the Elemental Storm.
'|complete haspet(3382) |or
step
talk Mythressa##196516
|tip She is a Dracthyr inside the building
buy Stormie##200173 |goto Valdrakken/0 38.10,37.72 |or
'|complete haspet(3382) |or
step
use Stormie##200173
learnpet Stormie##3382
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Blaze Spirit",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="This is the soul of a forest fire. Though its armor keeps its flames under control, you sometimes notice it gazing longingly at dead trees and dry underbrush.",
keywords={"Elemental"},
pet=3411,
},[[
step
Complete the "Waking Hope" Achievment |complete achieved(16334) or haspet(3411) |or
|tip Complete all of the main story questlines in the Dragon Isles.
|tip Use the Full Zone leveling guide for the Dragon Isles to accomplish this.
Click Here to Load the "Full Zones (Story + Side Quests)" Leveling Guide |confirm |loadguide "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)" |or
step
Reach Level 70 |ding 70 |or
'|complete haspet(3411) |or
step
collect 20 Empty Soul Cage##200938 |or
|tip Create it with Dragon Isles Jewelcrafting or purchasing it from the auction house.
|tip You may need to buy more of these later.
'|complete haspet(3411) |or
step
collect Zapthrottle Soul Inhaler##199414 |or
|tip Create it with Dragon Isles Engineering or purchasing it from the auction house.
'|complete haspet(3411) |or
step
kill Fire Elemental##189843
|tip This is an elite elemental.
use the Zapthrottle Soul Inhaler##199414
|tip Use it on the elemental as it dies.
|tip It must die while you are channeling.
collect Encaged Fiery Soul##200931 |n
|tip This will consume 1 Empty Soul Cage.
collect Docile Fiery Soul##201298 |n
|tip After 15 minutes, the Engaged soul will turn Docile.
use Docile Fiery Soul##201298
|tip There is a small chance for you to receive the battle pet.
|tip You may have to repeat the process of capturing the elemental soul several times.
collect Blaze Spirit##201261 |goto The Azure Span/0 77.56,39.25 |or
'|complete haspet(3411) |or
step
use Blaze Spirit##201261
learnpet Blaze Spirit##3411
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Chip",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="Born of living stone. Reforged by the hands of Wrathion's agents. Sadly much too tiny to make a difference in the black dragons' war against the djaradin.",
keywords={"Elemental"},
pet=3376,
},[[
step
kill Molded Boulder##190213+
|tip These are stone elementals around The Obsidian Throne and inside the Vault of the Incarnates.
|tip You can also purchase these from the auction house.
collect 2 Pre-Sentient Rock Cluster##198082 |goto Thaldraszus/0 39.00,85.60 |or
'|complete haspet(3376) |or
step
kill Stonescale Proto-Dragon##198200+
|tip These are stony proto-Dragons that fly around this area.
|tip You can also purchase these from the auction house.
collect 5 Element-Infused Blood##199219 |goto The Waking Shores/0 42.50,52.28 |or
'|complete haspet(3376) |or
step
Kill Qalashi enemies around this area
|tip These are elite elemental humanoids that patrol around The Obsidian Throne and inside the Vault of the Incarnates.
collect Rock of Aegis##198357 |goto The Waking Shores/0 28.41,58.67 |or
'|complete haspet(3376) |or
step
talk Yries Lightfingers##191135
|tip He is on the top platform at The Obsidian Throne.
buy Chip##199326 |goto The Waking Shores/0 26.43,55.44 |or
'|complete haspet(3376) |or
step
use Chip##199326
learnpet Chip##3376
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Driftling",{
patch='100007',
source='Drop',
author="support@zygorguides.com",
description="This creature is usually known to be quite docile, but try to stick a carrot in its face and YOU WILL lose feeling in your fingers.",
keywords={"Elemental"},
pet=3427,
},[[
step
Reach Exalted reputation with the Winterpelt Furlbog |complete rep("Winterpelt Furbolg") >= Exalted |or
|tip You can use the Winterpelt Furlbog Reuptation Guide to complete this.
Click here to load the Winterpelt Furlbog Reputation Guide |confirm |next "Reputation Guides\\Dragonflight Reputations\\Winterpelt Furbolg"
'|learnpet Driftling##3427 |or
step
earn 150 Dragon Isles Supplies##2003 |or
|tip Acquire these from completing quests and world quests, killing rares, running dungeons, and from consumable items like chests, satchels, and treasures.
'|learnpet Driftling##3427 |or
step
talk Kazzi##201105
buy Driftling##202255 |goto The Azure Span/0 65.81,12.69 |or
'|learnpet Driftling##3427 |or
step
use Driftling##202255
learnpet Driftling##3427
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Dust Spirit",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="When it was captured and bound to a cage made of enchanted metal, this spirit managed to twist and reshape the metal into the suit of armor it now wears.",
keywords={"Elemental"},
pet=3410,
},[[
step
Complete the "Waking Hope" Achievment |complete achieved(16334) or haspet(3410) |or
|tip Complete all of the main story questlines in the Dragon Isles.
|tip Use the Full Zone leveling guide for the Dragon Isles to accomplish this.
|tip You can also purchase this battle pet on the auction house.
Click Here to Load the "Full Zones (Story + Side Quests)" Leveling Guide |confirm |loadguide "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)" |or
step
Reach Level 70 |ding 70 |or
'|complete haspet(3410) |or
step
collect 20 Empty Soul Cage##200938 |or
|tip Create it with Dragon Isles Jewelcrafting or purchasing it from the auction house.
|tip You may need to buy more of these later.
'|complete haspet(3410) |or
step
collect Zapthrottle Soul Inhaler##199414 |or
|tip Create it with Dragon Isles Engineering or purchasing it from the auction house.
'|complete haspet(3410) |or
step
kill Earthshatter Elemental##194524
|tip This is an elite elemental.
use the Zapthrottle Soul Inhaler##199414
|tip Use it on the elemental as it dies.
|tip It must die while you are channeling.
collect Encaged Earthen Soul##200936 |n
|tip This will consume 1 Empty Soul Cage.
collect Docile Earthen Soul##201297 |n
|tip After 15 minutes, the Engaged soul will turn Docile.
use the Docile Earthen Soul##201297
|tip There is a small chance for you to receive the battle pet from these.
|tip You may have to repeat the process of capturing the elemental soul several times.
collect Dust Spirit##201261 |goto The Waking Shores/0 52.80,30.60 |or
You can find more around [47.60,36.20]
'|complete haspet(3410) |or
step
use the Dust Spirit##201261
learnpet Dust Spirit##3410
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Echo of the Cave",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="Formed by the reckless use of elemental magic, the slumbering earth awakens. It is angry.",
keywords={"Elemental"},
pet=3355,
},[[
step
Kill enemies around an elemental storm event
|tip Press M to use your in-game map to locate an Elemental Storm.
|tip This pet has a chance to drop from mobs in any Dragon Isles zone in an area that has an Elemental Storm event active.
collect Echo of the Cave##200183 |or
'|complete haspet(3355) |or
step
use the Echo of the Cave##200183
learnpet Echo of the Cave##3355
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Echo of the Depths",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="What the deep claims, none can reclaim.",
keywords={"Elemental"},
pet=3299,
},[[
step
Kill enemies around an elemental storm event
|tip Press M to use your in-game map to locate an Elemental Storm.
|tip This pet has a chance to drop from mobs in any Dragon Isles zone in an area that has an Elemental Storm event active.
collect Echo of the Depths##200260 |or
'|complete haspet(3299) |or
step
use the Echo of the Depths##200260
learnpet Echo of the Depths##3299
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Echo of the Heights",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="In the mountain air, frost lingers upon the grass as a storm rolls in.",
keywords={"Elemental"},
pet=3310,
},[[
step
Kill enemies around an elemental storm event
|tip Press M to use your in-game map to locate an Elemental Storm.
|tip This pet has a chance to drop from mobs in any Dragon Isles zone in an area that has an Elemental Storm event active.
collect Echo of the Heights##200263 |or
'|complete haspet(3310) |or
step
use the Echo of the Heights##200263
learnpet Echo of the Heights##3310
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Echo of the Inferno",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="A spark can become an ember. An ember can become a raging fire. This creature was never a spark or an ember, it has only ever been a raging fire.",
keywords={"Elemental"},
pet=3289,
},[[
step
Kill enemies around an elemental storm event
|tip Press M to use your in-game map to locate an Elemental Storm.
|tip This pet has a chance to drop from mobs in any Dragon Isles zone in an area that has an Elemental Storm event active.
collect Echo of the Inferno##200255 |or
'|complete haspet(3289) |or
step
use the Echo of the Inferno##200255
learnpet Echo of the Inferno##3289
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Emberling",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="The core temperature of an Emberling is hot enough to dissolve anything organic, so make sure to wear gloves if you want to pet it.",
keywords={"Elemental"},
pet=3367,
},[[
step
clicknpc Emberling##193024
|tip This wild pet is found near lava flows.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Emberling##3367 |goto The Waking Shores/0 83.90,34.62
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Gale Spirit",{
patch='100005',
source='Drop',
author="support@zygorguides.com",
description="When it was the wind, this spirit carried scents to every corner of Azeroth. Sometimes you can still smell on it the barest hint of food, smoke, or the carnage of battle.",
keywords={"Elemental"},
pet=3412,
},[[
step
Complete the "Waking Hope" Achievment |complete achieved(16334) or haspet(3412) |or
|tip Complete all of the main story questlines in the Dragon Isles.
|tip Use the Full Zone leveling guide for the Dragon Isles to accomplish this.
|tip You can also purchase this battle pet on the auction house.
Click Here to Load the "Full Zones (Story + Side Quests)" Leveling Guide |confirm |loadguide "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)" |or
step
Reach Level 70 |ding 70 |or
'|complete haspet(3412) |or
step
collect 20 Empty Soul Cage##200938 |or
|tip Create it with Dragon Isles Jewelcrafting or purchasing it from the auction house.
|tip You may need to buy more of these later.
'|complete haspet(3412) |or
step
collect Zapthrottle Soul Inhaler##199414 |or
|tip Create it with Dragon Isles Engineering or purchasing it from the auction house.
'|complete haspet(3412) |or
step
kill Stormbound Colossus##187843
|tip This is an elite elemental.
use the Zapthrottle Soul Inhaler##199414
|tip Use it on the elemental as it dies.
|tip It must die while you are channeling.
collect Encaged Airy Soul##200932 |n
|tip This will consume 1 Empty Soul Cage.
collect Docile Airy Soul##201296 |n
|tip After 15 minutes, the Encaged soul will turn Docile.
use Docile Airy Soul##201296
|tip There is a small chance for you to receive the battle pet.
|tip You may have to repeat the process of capturing the elemental soul several times.
collect Gale Spirit##201262 |goto Ohn'ahran Plains/0 23.11,37.39 |or
You can find more around:
[23.93,39.34]
[24.30,33.65]
[21.30,38.05]
'|complete haspet(3412) |or
step
use the Gale Spirit##201262
learnpet Gale Spirit##3412
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Igneoid",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="An Igneoid is formed when magma makes it to Azeroth's surface and is infused with dark elemental magic. The resulting creature is tiny, fierce, and very cute.",
keywords={"Elemental"},
pet=3295,
},[[
step
clicknpc Igneoid##189121
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Igneoid##3295 |goto Thaldraszus/0 46.56,64.01
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Kindlet",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="A troublesome mage named McGwire decided to start a small fire. He summoned a flame which caused him to exclaim: 'This is much more alive than required!'",
keywords={"Elemental"},
pet=3366,
},[[
step
clicknpc Kindlet##193000
|tip This wild pet is found near lava flows.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Kindlet##3366 |goto The Waking Shores/0 73.99,34.84
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Magma Slug",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="Somehow this creature manages to be hot, rocky, and slimy all at the same time.",
keywords={"Elemental"},
pet=3273,
},[[
step
clicknpc Magma Slug##189094
|tip This wild pet is found near lava flows.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Magma Slug##3273 |goto The Waking Shores/0 83.68,33.12
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Mote of Nasz'uro",{
author="support@zygorguides.com",
description="This guide will help you acquire the Mote of Nasz'uro pet.",
startlevel=70,
source='Treasures',
pet=3581,
patch='100105',
},[[
step
click Mote of Nasz'uro
Collect the Mote |q 76184 |future |goto The Waking Shores/0 22.84,88.41
step
click Mote of Nasz'uro
|tip Next to the Obsidain Throne behind Sabellian and Wrathion.
Collect the Mote |q 76185 |future |goto The Waking Shores/0 24.15,55.56
step
click Mote of Nasz'uro
|tip Behind the claw of the dragon statue.
Collect the Mote |q 76186 |future |goto The Waking Shores/0 58.50,67.65
step
click Mote of Nasz'uro
|tip In the branches of the tree under the leaves.
Collect the Mote |q 76187 |future |goto The Waking Shores/0 63.89,44.81
step
click Mote of Nasz'uro
|tip On top of the stone pillar.
Collect the Mote |q 76182 |future |goto Ohn'ahran Plains/0 61.23,64.36
step
click Mote of Nasz'uro
Collect the Mote |q 76183 |future |goto Ohn'ahran Plains/0 34.33,58.74
step
click Mote of Nasz'uro
|tip In the broken tower.
Collect the Mote |q 76178 |future |goto The Azure Span/0 78.84,34.13
step
click Mote of Nasz'uro
|tip On top of the tree stump.
Collect the Mote |q 76179 |future |goto The Azure Span/0 61.57,71.43
step
click Mote of Nasz'uro
Collect the Mote |q 76180 |future |goto The Azure Span/0 36.40,56.46
step
click Mote of Nasz'uro
Collect the Mote |q 76181 |future |goto The Azure Span/0 8.23,53.08
step
click Mote of Nasz'uro
Collect the Mote |q 76189 |future |goto Thaldraszus/0 62.67,13.23
step
click Mote of Nasz'uro
|tip On the edge of the tower.
Collect the Mote |q 76190 |future |goto Thaldraszus/0 61.24,40.71
step
click Mote of Nasz'uro
|tip At the foot of the statue.
Collect the Mote |q 76191 |future |goto Thaldraszus/0 72.88,55.05
step
click Mote of Nasz'uro
|tip High up on top of the mountain.
Collect the Mote |q 76192 |future |goto Thaldraszus/0 70.87,69.85
step
click Mote of Nasz'uro
|tip Between the horns of the statue.
Collect the Mote |q 76193 |future |goto Thaldraszus/0 62.61,85.07
step
click Mote of Nasz'uro
|tip Inside the top of the tower.
Collect the Mote |q 76188 |future |goto The Forbidden Reach/5 36.01,34.23
step
use the Mote of Nasz'uro##206040
learnpet Mote of Nasz'uro##3581
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Shiverweb Broodling",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="Ironically, she has a warm personality.",
keywords={"Elemental","Kill the Queen"},
pet=3368,
},[[
step
Reach Level 65 |ding 65 |or
|tip This pet is awarded from an optional side quest that is included in the "Full Zones (Story + Side Quests)" Leveling Guide.
|tip If you prefer to complete all the story and side quests in The Azure Span, open the full guide.
Click Here to Load the "Full Zones (Story + Side Quests)" Leveling Guide |confirm |loadguide "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)" |or
'|complete haspet(3368) |or
step
talk Lilial Dawnburst##185778
|tip On the ground.
accept Eight-Legged Menace##65750 |goto The Azure Span/0 51.73,61.98
accept Icy Webs##65769 |goto The Azure Span/0 51.73,61.98
stickystart "Free_Cocooned_Survivors"
stickystart "Slay_Shiverweb_Creepers_Or_Shiverweb_Crawlers"
step
kill 3 Primalist Tender##186111 |q 65750/2 |goto The Azure Span/0 50.58,60.58
|tip They look like humanoids.
step
label "Free_Cocooned_Survivors"
clicknpc Cocooned Survivor##186222+
|tip They look like large white squirming cocoons on the ground around this area.
Free #6# Cocooned Survivors |q 65769/1 |goto The Azure Span/0 50.58,60.58
step
label "Slay_Shiverweb_Creepers_Or_Shiverweb_Crawlers"
Kill Shiverweb enemies around this area
|tip They look like spiders.
Slay #10# Shiverweb Creepers or Shiverweb Crawlers |q 65750/1 |goto The Azure Span/0 50.58,60.58
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
|tip The ice elementals will not drop the quest item.
collect 6 Flask of Dwarven Antifreeze##191042 |q 65832/1 |goto The Azure Span/0 49.08,63.73
step
talk Grungir Ironspout##185806
turnin Dwarven Antifreeze##65832 |goto The Azure Span/0 48.99,64.22
turnin Primalist Tampering##65833 |goto The Azure Span/0 48.99,64.22
accept Kill the Queen##65834 |goto The Azure Span/0 48.99,64.22
step
use the Spider Squasher##191044
|tip Use it on the Shiverweb Queen, it will damage her greatly.
|tip She looks like a large blue spider.
|tip Upstairs inside the cavern.
|tip She is elite, but you should be able to kill her pretty easily with the help of the quest item.
|tip The quest item will only damage her one time, so you can't use it repeatedly.
kill Shiverweb Queen##186064 |q 65834/1 |goto The Azure Span/0 47.23,65.57
step
talk Grungir Ironspout##185806
turnin Kill the Queen##65834 |goto The Azure Span/0 48.99,64.22
step
use the Shiverweb Broodling##194004
learnpet Shiverweb Broodling##3368
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Snowlemental",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="When you feel a chill run down your spine, don't be afraid. It's probably just your pet snowlemental.",
keywords={"Elemental"},
pet=3283,
},[[
step
clicknpc Snowlemental##189107
|tip This wild pet is usually found near ice and snow.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Snowlemental##3283 |goto The Azure Span/0 72.55,25.63
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Sophic Amalgamation",{
patch='100005',
source='Crafted',
author="support@zygorguides.com",
description="A small fraction of the titans' power, an even smaller fraction of their size.",
keywords={"Elemental","Crafted","Enchanting"},
pet=3390,
},[[
step
collect Sophic Amalgamation##200479 |or
|tip This can be crafted with Dragon Isles Enchanting at skill 50.
|tip You can also purchase it from the auction house.
'|complete haspet(3390) |or
step
use the Sophic Amalgamation##200479
learnpet Sophic Amalgamation##3390
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Tide Spirit",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="I wish that I could bind the tides and bend them to my will. But in its depths the sea abides and waits for no one still.",
keywords={"Elemental"},
pet=3409,
},[[
step
Complete the "Waking Hope" Achievment |complete achieved(16334) or haspet(3409) |or
|tip Complete all of the main story questlines in the Dragon Isles.
|tip Use the Full Zone leveling guide for the Dragon Isles to accomplish this.
|tip You can also purchase this battle pet on the auction house.
Click Here to Load the "Full Zones (Story + Side Quests)" Leveling Guide |confirm |loadguide "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)" |or
step
Reach Level 70 |ding 70 |or
'|complete haspet(3409) |or
step
collect 20 Empty Soul Cage##200938 |or
|tip Create it with Dragon Isles Jewelcrafting or purchasing it from the auction house.
|tip You may need to buy more of these later.
'|complete haspet(3409) |or
step
collect Zapthrottle Soul Inhaler##199414 |or
|tip Create it with Dragon Isles Engineering or purchasing it from the auction house.
'|complete haspet(3409) |or
step
kill Force of the Springs##197008
|tip This is an elite elemental.
use the Zapthrottle Soul Inhaler##199414
|tip Use it on the elemental as it dies.
|tip It must die while you are channeling.
collect Encaged Frosty Soul##200934 |n
|tip This will consume 1 Empty Soul Cage.
collect Docile Frosty Soul##201299 |n
|tip After 15 minutes, the Engaged soul will turn Docile.
use Docile Frosty Soul##201299
|tip There is a small chance for you to receive the battle pet.
|tip You may have to repeat the process of capturing the elemental soul several times.
collect Tide Spirit##201265 |goto Ohn'ahran Plains/0 55.80,78.20 |or
You can find more around [55.20,76.60]
'|complete haspet(3409) |or
step
use Tide Spirit##201265
learnpet Tide Spirit##3409
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Blackfeather Nester",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="There is no fury quite like that of a mother Blackfeather defending her nest.",
keywords={"Flying"},
pet=3321,
},[[
step
Reach Level 63 |ding 63 |or
'|complete haspet(3321) |or
step
click Tree Sap##380895
|tip This is inside the hollow tree trunk.
Get the "Tree Sap" Buff |complete hasbuff(385908) or haspet(3321) |goto The Azure Span/0 26.29,46.32
step
click Stick##380899
|tip This looks like a tiny stick also lying inside the hollow tree truck, but higher up, near the broken off end.
Lose the "Tree Sap" Buff |complete not hasbuff(385908) or haspet(3321) |goto The Azure Span/0 26.55,46.27
step
clicknpc Pepper Hammer##195373
|tip In a few seconds, this bird will fly to your location.
|tip Click the bird to receive the pet.
collect Blackfeather Nester##193834 |goto The Azure Span/0 26.55,46.27 |or
'|complete haspet(3321) |or
step
use the Blackfeather Nester##193834
learnpet Blackfeather Nester##3321
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Black Slyvern Pup",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="Above the vast green plains and rolling hills the slyvern fly, leaving only tiny shadows on the ground to mark their path through the sky.",
keywords={"Flying"},
pet=3266,
},[[
step
clicknpc Black Slyvern Pup##189160
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Black Slyvern Pup##3266 |goto Ohn'ahran Plains/0 55.42,49.01
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Black Skitterbug",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="After pestering the Dragonscale Basecamp for weeks, Granpap Whiskers discovered a way to catch them and use them to get rid of other more annoying insects.",
keywords={"Flying","Dragonscale Expedition","Granpap Whiskers"," Dragonscale Basecamp"},
pet=3380,
},[[
step
talk Cataloger Jakes##189226 |goto The Waking Shores/0 47.11,82.58
|tip Inside the tent.
|tip Turn in Dragon Isles Artifacts from treasures and supply packs all over The Waking Shores.
'|turnin Multiple Dragon Isles Artifacts##72876 |n
'|turnin Multiple Dragon Isles Artifacts##71035 |n
'|turnin Dragon Isles Artifacts##71034 |n
Reach Renown Level 11 with the Dragonscale Expedition |complete factionrenown(2507) >= 11 or haspet(3380)
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
talk Granpap Whiskers##187408
accept The Basecamp 'Pets'##70820 |goto The Waking Shores/0 47.73,83.23
|tip Choose the "Black Skitterbug" bet if you have not completed this already.
step
Kill Skyfeather enemies around this area
|tip You can kill any flying birds in any area of the Dragon Isles as well.
collect 3 Iridescent Plume##201401 |goto Thaldraszus/0 52.50,60.60 |or
|tip You can also purchase these from the Auction House.
More can be found at [52.00,57.30]
'|complete haspet(3380) |or
step
Kill enemies around this area
|tip Kill ostrich-type animals, such as Hornstriders, Tallstriders, and Runner birds.
collect 5 Tallstrider Sinew##201404 |goto Thaldraszus/0 51.00,47,20 |or
|tip You can also purchase these from the Auction House.
'|complete haspet(3380) |or
step
earn 150 Dragon Isles Supplies##2003 |or
|tip Collect these by completing world quests, weekly quests, and daily quests.
|tip You can also collect them by killing rares or opening treasures.
'|complete haspet(3380) |or
step
talk Cataloger Jakes##189226
|tip Inside the tent.
buy Black Skitterbug##198726 |goto Thaldraszus/0 47.11,82.58 |or
'|complete haspet(3380) |or
step
use the Black Skitterbug##198726
learnpet Black Skitterbug##3380
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Blue Dasher",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="The bad news is that these bugs are carnivorous. The good news is that they usually just eat other bugs.",
keywords={"Flying"},
pet=3403,
},[[
step
clicknpc Blue Dasher##197629
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Blue Dasher##3403 |goto Thaldraszus/0 36.44,65.34
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Brightfeather",{
patch='100007',
source='Drop',
author="support@zygorguides.com",
description="It has bright feathers. What else is there to say?",
keywords={"Flying"},
pet=3323,
},[[
step
collect Brightfeather##193835 |or
|tip You can also purchase it from the auction house.
'|learnpet Brightfeather##3323 |or
step
use Brightfeather##193835
learnpet Brightfeather##3323
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Ironbeak Duck",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="Though many creatures of the Dragon Isles are mysterious, the ducks are perhaps the most so. Where did they come from? Where are they going? What are they planning? We may never know.",
keywords={"Flying"},
pet=3300,
},[[
step
clicknpc Ironbeak Duck##189131
|tip This wild pet is usually found near water.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Ironbeak Duck##3300 |goto Ohn'ahran Plains/0 70.06,37.83
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Jeepers",{
patch='100105',
source='Vendor',
author="support@zygorguides.com",
description="This eye has witnessed untold horrors, and these fangs may be responsible for a few of their own.",
keywords={"Flying"},
pet=4258,
},[[
step
Earn #2750# Paracausal Flakes |earn 2750 Paracausal Flakes##2594 |or
|tip Earn these by completing time rifts.
|tip Use the "Time Rifts" guide to accomplish this.
Click Here to Load the "Time Rifts" Guide |confirm |loadguide "Daily Guides\\Dragonflight (10-70)\\Time Rifts" |or
step
talk Provisioner Qorra##208347
buy 1 Jeepers##208010 |goto Thaldraszus/0 51.06,56.70 |or
'|complete haspet(4258) |or
step
use Jeepers##208010
learnpet Jeepers##4258
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Ohuna Companion",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="Its eyes can see the flick of a mouse tail from leagues away.",
keywords={"Flying","Grand Hunt Spoils","Maruuk Centaur"},
pet=3311,
},[[
step
use Grand Hunt Spoils##200468
use Grand Hunt Spoils##200513
use Grand Hunt Spoils##200515
|tip The first Grand Hunt completion of the week drops the epic Grand Hunt Spoils that has the highest chance of containing the pet.
|tip When you're inside a zone with an active Grand Hunt, click the icon and then click the popup to load the guide.
collect Ohuna Companion##200276 |or
'|complete haspet(3311) |or
step
use the Ohuna Companion##200276
learnpet Ohuna Companion##3311
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Plucky Duckling",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="This is the terror that flaps o'er the dragon isles. This is the winged nightmare that pecks at your emerald dreams. What? No its not Deathwing, its a duck!",
keywords={"Flying"},
pet=3307,
},[[
step
clicknpc Plucky Duckling##189144
|tip This wild pet is usually found near the Ruby Life Pools.
|tip You may need to kill Wild Ducklings for a Plucky Duckling to spawn.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Plucky Duckling##3307 |goto Valdrakken/0 60.62,57.39
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Shyfly",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="These elusive creatures are famous for being hard to find unless you already know where to look. Fortunately, Haniko told you where to look.",
keywords={"Flying"},
pet=3280,
},[[
step
clicknpc Shyfly##189102
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Shyfly##3280 |goto The Waking Shores/0 44.00,78.80
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Storm-Touched Bluefeather",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="Peck. Peck. Zap!",
keywords={"Flying","The Primalist Future"},
pet=3384,
},[[
step
clicknpc Storm-Touched Bluefeather##192259
|tip This pet only spawns during an elemental storm event.
|tip You can also find these pets in The Primalist Future.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Storm-Touched Bluefeather##3384 |goto Primalist Tomorrow/0 53.00,40.60
You can also find these during elemental storms at:
[53.20,39.80]
[47.60,13.60]
[38.60,53.80]
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Viridescent Duck",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="These beautiful, elusive birds have very erratic migratory patterns, which can be difficult to track, leading some explorers to erroneously believe ducks simply didn't exist.",
keywords={"Flying"},
pet=3309,
},[[
step
clicknpc Ludo##192997
|tip He is a brown dog that runs around Maruukai.
collect Ludo's Stash Map##195453 |goto Ohn'ahran Plains/0 61.77,41.86 |or
You can find him walking around this area: 61.16,41.74
'|complete haspet(3309) |or
step
use Ludo's Stash Map##195453
Learn Ludo's Treasure Location |complete completedq(67718) or haspet(3309)
step
click Dirt Mound##380991
collect Slightly Chewed Duck Egg##199171 |goto Ohn'ahran Plains/0 70.59,35.46 |or
'|complete haspet(3309) |or
step
collect Viridescent Duck##199172 |or
|tip Wait 3 days for the "Slightly Chewed Duck Egg" to hatch.
'|complete haspet(3309) |or
step
use the Viridescent Duck##199172
learnpet Viridescent Duck##3309
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Wakyn",{
patch='100007',
source='Drop',
author="support@zygorguides.com",
description="Hope, like this phoenix, rises from the ashes of shattered dreams.",
keywords={"Flying"},
pet=3261,
},[[
step
kill Warden Entrix##200960
|tip Inside the cave.
|tip You may have to kill the rare several times to collect the pet.
|tip You can also purchase it from the auction house.
collect Wakyn##191930 |goto The Forbidden Reach/5 58.39,48.64 |or
'|learnpet Wakyn##3261 |or
step
use Wakyn##191930
learnpet Wakyn##3261
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Whitewhisker",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="These critters' white coats help them hide in the snow when predators are around.",
keywords={"Flying"},
pet=3320,
},[[
step
talk Nuptuk##199180
|tip He is a young Tuskarr standing between a tent and rack with hanging hooks.
Select _"I would like snow glare sunglasses."_
Gain the "Wearing Snow Glare Sunglasses" Buff |complete hasbuff(395978) or haspet(3320) |goto The Azure Span/0 50.88,54.75
step
clicknpc Whitewhisker##189209
|tip While you have the buff, you will find these all around Camp Nowhere.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Whitewhisker##3320 |goto The Azure Span/0 45.32,39.35
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Woodbiter Piculet",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="These birds use their sharp beaks and dragon-like talons to forage for prey on tree trunks and branches. They communicate with each other by drumming on the trees with their beaks, which makes a sound that can be heard over great distances.",
keywords={"Flying"},
pet=3322,
},[[
step
clicknpc Woodbiter Piculet##189157
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Woodbiter Piculet##3322 |goto Ohn'ahran Plains/0 61.01,52.00
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Yipper",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="Soon after you put down this slyvern's decay-twisted mother, you learned the hard way both how it got its name and why Zon'Wogi asked you to care for it.",
keywords={"Flying","The Great Shokhari"},
pet=3319,
},[[
step
Reach Level 65 |ding 65 |or
|tip This pet is rewarded from an optional side quest, "The Great Shokhari" that is included in the "Full Zones (Story + Side Quests)" Leveling Guide.
Click Here to Load the "Full Zones (Story + Side Quests)" Leveling Guide |confirm |loadguide "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)"
'|complete haspet(3319) |or
step
talk Zon'Wogi##190892
accept The Great Shokhari##66844 |goto The Azure Span/0 19.05,23.97
step
kill Sky Vixen Shokhari##190761 |q 66844/1 |goto The Azure Span/0 13.33,26.37
|tip She looks like a large brown wolf dragon.
|tip She runs around this area.
step
talk Zon'Wogi##190892
turnin The Great Shokhari##6684
step
use Yipper##193619
learnpet Yipper##3319
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Gill'dan",{
patch='100105',
source='Vendor',
author="support@zygorguides.com",
description="Gill'dan earned his great power by drinking the blood of a demon, which would also have turned his scales green had they not already been that color.",
keywords={"Humanoid"},
pet=4257,
},[[
step
Earn #2750# Paracausal Flakes |earn 2750 Paracausal Flakes##2594 |or
|tip Earn these by completing time rifts.
|tip Use the "Time Rifts" guide to accomplish this.
Click Here to Load the "Time Rifts" Guide |confirm |loadguide "Daily Guides\\Dragonflight (10-70)\\Time Rifts" |or
step
talk Sir Finley Mrrgglton##208345
|tip He walks around this area.
buy 1 Gill'dan##208009 |goto Thaldraszus/0 51.06,56.62 |or
'|learnpet Gill'dan##4257 |or
step
use Gill'dan##208009
learnpet Gill'dan##4257
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Gray Marmoni",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="Under the invitation and tutelage of Doc Nanners many Gray Marmoni have become common, but not always desired guests at the Dragonscale Expedition Basecamp.",
keywords={"Humanoid","Dragonscale Expedition","Granpap Whiskers"," Dragonscale Basecamp"},
pet=3381,
},[[
step
talk Cataloger Jakes##189226 |goto The Waking Shores/0 47.11,82.58
|tip Inside the tent.
|tip Turn in Dragon Isles Artifacts from treasures and supply packs all over The Waking Shores.
'|turnin Multiple Dragon Isles Artifacts##72876 |n
'|turnin Multiple Dragon Isles Artifacts##71035 |n
'|turnin Dragon Isles Artifacts##71034 |n
Reach Renown Level 11 with the Dragonscale Expedition |complete factionrenown(2507) >= 11 or haspet(3381)
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
talk Granpap Whiskers##187408
accept The Basecamp 'Pets'##70820 |goto The Waking Shores/0 47.73,83.23
|tip Choose the "Gray Marmoni" bet if you have not completed this already.
step
Kill Skyfeather enemies around this area
|tip You can kill any flying birds in any area of the Dragon Isles as well.
collect 3 Iridescent Plume##201401 |goto Thaldraszus/0 52.50,60.60 |or
|tip You can also purchase these from the Auction House.
More can be found at [52.00,57.30]
'|complete haspet(3381) |or
step
Kill enemies around this area
|tip Kill ostrich-type animals, such as Hornstriders, Tallstriders, and Runner birds.
collect 5 Tallstrider Sinew##201404 |goto Thaldraszus/0 51.00,47,20 |or
|tip You can also purchase these from the Auction House.
'|complete haspet(3381) |or
step
earn 150 Dragon Isles Supplies##2003 |or
|tip Collect these by completing world quests, weekly quests, and daily quests.
|tip You can also collect them by killing rares or opening treasures.
'|complete haspet(3381) |or
step
talk Cataloger Jakes##189226
|tip Inside the tent.
buy Gray Marmoni##198725 |goto Thaldraszus/0 47.11,82.58 |or
'|complete haspet(3381) |or
step
use the Gray Marmoni##198725
learnpet Gray Marmoni##3381
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Ashenwing",{
patch='100007',
source='Drop',
author="support@zygorguides.com",
description="Red for the fires in which it was born.",
keywords={"Magic"},
pet=3293,
},[[
step
kill Bonesifter Marwak##200681
|tip Inside the cave.
|tip You may have to kill the rare several times to obtain the pet.
|tip You can also purchase it from the auction house.
collect Ashenwing##193374 |goto The Forbidden Reach/5 29.17,52.94 |or
'|learnpet Ashenwing##3293 |or
step
use Ashenwing##193374
learnpet Ashenwing##3293
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Azure Crystalspine",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="These creatures are highly sought after by hunters looking to make weapons from the sharp crystals on its back.",
keywords={"Magic"},
pet=3357,
},[[
step
clicknpc Azure Crystalspine##192265
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Azure Crystalspine##3357 |goto The Azure Span/0 48.63,49.14
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Blueloo",{
patch='100200',
source='World Quest',
author="support@zygorguides.com",
description="If you ever have an outdoor feast in the Emerald Dream, look out for wild blueloos. A blueloo won't steal your picinic basket, but it will politely ask for some snacks.",
keywords={"Magic"},
pet=4288,
},[[
step
ding 70 |or
'|complete haspet(4288) |or
step
Complete "The Coalition of Flame" Quest Chain in the Ohn'ahran Plains
|tip Use "The Coalition of Flame" Leveling Guide to achieve this.
Click Here to Open "The Coalition of Flame" Leveling Guide |confirm |loadguide "Leveling Guides\\Dragonflight (10-70)\\The Coalition of Flames" |or
'|complete haspet(4288) |or
'|complete completedq(75923) |or
step
Enter the Emerald Dream
|tip Use the "Emerald Dream Campaign" or the "Emerald Dream Campaign + Side Quests" Leveling Guides to accomplish this.
Click Here to Open the "Emerald Dream Campaign" Leveling Guide |confirm |loadguide "Leveling Guides\\Dragonflight (10-70)\\Emerald Dream Campaign"
|tip
Click Here to Open the "Emerald Dream Campaign + Side Quests" Leveling Guide |confirm |loadguide "Leveling Guides\\Dragonflight (10-70)\\Emerald Dream Campaign + Side Quests"
'|complete haspet(4288) |or
'|complete completedq(76318) |or
step
Wait for the "Claws for Concern" World Quest to Become Available in The Emerald Dream
|tip You may need to be inside the Emerald Dream for this world quest to become visible.
'|complete haspet(4288) |or
'|complete questactive(78370) |or
step
Rescue all the Moonkin Hatchlings in the "Claws for Concern" World Quest in The Emerald Dream
|tip Use the "Friends In Feathers" Achievement Guide to achieve this.
Click Here to Open the "Friends In Feathers" Achievement Guide |confirm |loadguide "Achievement Guides\\Quests\\Friends In Feathers"
'|complete haspet(4288) |or
'|complete achieved(19293) |or
step
collect Blueloo##210522 |n
use Blueloo##210522
learnpet Blueloo##4288 |goto The Azure Span/0 48.63,49.14
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Crimsonspine",{
patch='100005',
source='PetBattle',
author="support@zygorguides.com",
description="The blood of a crimsonspine flows through the clear crystal structures that make up its body, which causes its unique coloration.",
keywords={"Magic"},
pet=3358,
},[[
step
clicknpc Crimsonspine##192268
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Crimsonspine##3358 |goto Thaldraszus/0 50.80,64.77
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Crystalline Mini-Monster",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="A shard of a fragment of a piece of a sliver of a piece of crystal, but walking around like it owns the place. Good thing it likes you.",
keywords={"Magic","Achievement"},
pet=3264,
},[[
step
Complete the "Many More Mini Minions" Achievement |achieve 15641 |or
|tip Collect 1200 unique pets.
'|complete haspet(3264) |or
step
learnpet Crystalline Mini-Monster##3264
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Doomrubble",{
patch='100105',
source='Vendor',
author="support@zygorguides.com",
description="He seems to be very angry, but it's possible he's just hungry.",
keywords={"Magic"},
pet=4259,
},[[
step
Earn #2750# Paracausal Flakes |earn 2750 Paracausal Flakes##2594 |or
|tip Earn these by completing time rifts.
|tip Use the "Time Rifts" guide to accomplish this.
Click Here to Load the "Time Rifts" Guide |confirm |loadguide "Daily Guides\\Dragonflight (10-70)\\Time Rifts" |or
'|complete haspet(4259) |or
step
talk Falara Nightsong##208341
buy 1 Doomrubble##208008 |goto Thaldraszus/0 51.05,56.72 |or
'|complete haspet(4259) |or
step
use Doomrubble##208008
learnpet Doomrubble##4259
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Dream Badger",{
patch='100200',
source='PetBattle',
author="support@zygorguides.com",
description="A brown dream badger is a rare sight. Not so rare a smell though.",
keywords={"Critter"},
pet=4304,
},[[
step
map The Emerald Dream/0
path	48.86,57.94	49.98,54.53	51.40,57.75	53.70,59.48	52.69,77.74
Follow the path
|tip Search for a Dream Badger along the path.
clicknpc Dream Badger##212557
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Dream Badger##4304
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Kobaldt",{
patch='100007',
source='Drop',
author="support@zygorguides.com",
description="Sharp crystal needles protrude from this creature's back, and yet it still wants you to pet it somehow.",
keywords={"Magic"},
pet=3338,
},[[
step
collect Kobaldt##193908 |or
|tip You can also purchase it from the auction house.
'|learnpet Kobaldt##3338 |or
step
use Kobaldt##193908
learnpet Kobaldt##3338
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Lady Feathersworth",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="Though she may be fashionably late, Lady Feathersworth will always show up for a party.",
keywords={"Magic","Achievement"},
pet=3406,
},[[
step
Complete the "Family Battler of the Dragon Isles" Achievement |achieve 16512 |or
|tip Defeat all 8 of the elite pets and trainers of the Dragon Isles with a full team of each pet type family's level 25 pets.
|tip Go to each trainer and defeat them 10 times, each time with a full team consisting of a single pet type.
|tip The pets must also be level 25.
Trainers can be found at:
Patchu [The Azure Span/0 13.89,49.85]
Arcantus [The Azure Span/0 40.98,59.41]
Bakhushek [Ohn'ahran Plains/0 61.96,41.59]
Stormamu [Ohn'ahran Plains/0 24.41,42.36]
Enyobon [Thaldraszus/0 39.46,73.54]
Setimothes [Thaldraszus/0 56.27,49.26]
Haniko [The Waking Shores/0 38.91,83.27]
Swog [The Waking Shores/0 26.17,92.39]
|tip Swog is inside a cave.
'|complete haspet(3406) |or
step
learnpet Lady Feathersworth##3406
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Living Mud Mask",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="The greatest souvenir available in a dragon's spa in the clouds. Not so good at facials any more, though.",
keywords={"Magic"},
pet=3405,
},[[
step
kill Mudgatu##197346
|tip This is a level 68 elite slime in the pools.
|tip You may need help with this.
collect Derelict Sunglasses##200586 |goto Thaldraszus/0 40.47,45.32 |or
'|complete haspet(3405) |or
step
use the Derelict Sunglasses##200586
accept Derelict Fashion##70377 |goto Thaldraszus/0 40.48,45.32
step
talk Zeldis##198062
|tip On a cliff above the pools.
turnin Derelict Fashion##70377 |goto Thaldraszus/0 39.50,48.47
step
talk Zeldis##198062
|tip Talk to him again.
Select _"Or maybe another reward?"_
Follow Zeldis |q 72270 |goto Thaldraszus/0 39.50,48.47 |future
step
talk Zeldis##198062
|tip He is lying on the ground on the floating platform.
Select _"You look dead, Zeldis."_
Wake Zeldis |q 72351 |future |goto Thaldraszus/0 39.33,46.79
step
talk Sneaky Mud Mask##198590
|tip The quest appears when you approach the Sneaky Mud Mask.
|tip Carefully step out onto the branch to accept it.
accept Special Treatment##72060 |goto Thaldraszus/0 38.59,46.42
step
talk Zeldis##198062
turnin Special Treatment##72060 |goto Thaldraszus/0 39.14,47.00
step
use the Living Mud Mask##200872
learnpet Living Mud Mask##3405
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Lord Basilton",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="A brilliant executive assistant and apprentice, Lord Basilton also loves to stick his nose into piles of anything interesting.",
keywords={"Magic","Carry On, Basilton"},
pet=3350,
},[[
step
Reach Level 68 |ding 68 |or
|tip This pet is rewarded from an optional side quest that is included in the "Full Zones (Story + Side Quests)" Leveling Guide.
|tip If you prefer to complete all the story and side quests in The Azure Span, open the full guide.
Click Here to Load the "Full Zones (Story + Side Quests)" Leveling Guide |confirm |loadguide "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)" |or
'|complete haspet(3350) |or
step
talk Tender Xina##189364
|tip He walks around this area.
accept Garden Variety##72189 |goto Valdrakken/0 77.48,66.85 |or
'|complete haspet(3350) |or
step
talk Gryrmpech##187300
|tip Inside the pavillion.
turnin Garden Variety##72189 |goto Thaldraszus/0 37.86,75.46
accept Azeroth Pest Control##66134 |goto Thaldraszus/0 37.86,75.46 |or
'|complete haspet(3350) |or
step
kill 8 Agitated Seedling##187687 |q 66134/1 |goto Thaldraszus/0 37.77,75.26 |or
'|complete haspet(3350) |or
step
talk Gryrmpech##187300
|tip Inside the pavillion.
turnin Azeroth Pest Control##66134 |goto Thaldraszus/0 37.86,75.47
accept The Gardener's Apprentice##66135 |goto Thaldraszus/0 37.86,75.47 |or
'|complete haspet(3350) |or
step
click Garden Junk
|tip Inside the building.
accept One Drakonid's Junk##66278 |goto Thaldraszus/0 38.91,74.25 |or
'|complete haspet(3350) |or
step
Locate Lord Basilton |q 66135/1 |goto Thaldraszus/0 38.87,74.17 |or
|tip Click the various objects inside the building.
|tip You will find him in the last object you click, after searching them all.
'|complete haspet(3350) |or
step
talk Gryrmpech##187300
|tip Inside the pavillion.
turnin The Gardener's Apprentice##66135 |goto Thaldraszus/0 37.86,75.46
turnin One Drakonid's Junk##66278 |goto Thaldraszus/0 37.86,75.46
accept Elemental Extract##66136 |goto Thaldraszus/0 37.86,75.46
accept Lashing Out##66137 |goto Thaldraszus/0 37.86,75.46
accept New Kid on the Clock##66279 |goto Thaldraszus/0 37.86,75.46 |or
'|complete haspet(3350) |or
step
clicknpc Lord Basilton##187400
|tip Inside the pavillion.
Let Basilton Sniff Your Hand |q 66279/1 |goto Thaldraszus/0 37.88,75.44 |or
'|complete haspet(3350) |or
step
Kill enemies around this area
|tip They look like water elementals.
collect 5 Watery Essence##191473 |q 66136/1 |goto Thaldraszus/0 37.11,71.19 |or
'|complete haspet(3350) |or
step
talk Orizmu##187310
Take the Pocket Watch to Orizmu in the Gardens |q 66279/2 |goto Thaldraszus/0 35.24,72.64 |or
'|complete haspet(3350) |or
step
talk Orizmu##187310
turnin New Kid on the Clock##66279 |goto Thaldraszus/0 35.24,72.64
accept Like Sands Through the Hourglass##66138 |goto Thaldraszus/0 35.24,72.64 |or
'|complete haspet(3350) |or
step
click Pile of Windswept Time Sand+
|tip They look like piles of tan dirt on the ground around this area.
|tip You may be attacked.
Gather #8# Piles of Windswept Time Sand |q 66138/1 |goto Thaldraszus/0 36.02,72.73
step
talk Orizmu##187310
turnin Like Sands Through the Hourglass##66138 |goto Thaldraszus/0 35.24,72.64 |or
'|complete haspet(3350) |or
step
Kill enemies around this area
|tip They look like walking plants.
Slay #10# Lashers |q 66137/1 |goto Thaldraszus/0 34.45,72.41 |or
'|complete haspet(3350) |or
step
talk Gryrmpech##187300
|tip Inside the pavillion.
turnin Elemental Extract##66136 |goto Thaldraszus/0 37.86,75.46
turnin Lashing Out##66137 |goto Thaldraszus/0 37.86,75.46
accept Flame at Last##66139 |goto Thaldraszus/0 37.86,75.46 |or
'|complete haspet(3350) |or
step
use the Concentrated Essence of Water##191676
|tip Use it on Blazing Inferno.
|tip It looks like a large fire elemental.
|tip It will become weakened and easier to kill.
kill Blazing Inferno##189043 |q 66139/2 |goto Thaldraszus/0 35.63,75.23 |or
'|complete haspet(3350) |or
step
talk Gryrmpech##187300
|tip Inside the pavillion.
turnin Flame at Last##66139 |goto Thaldraszus/0 37.86,75.46
accept Carry On, Basilton##66412 |goto Thaldraszus/0 37.86,75.46 |or
'|complete haspet(3350) |or
step
clicknpc Lord Basilton##187400
|tip Inside the pavillion.
Speak with Lord Basilton |q 66412/1 |goto Thaldraszus/0 37.88,75.44 |or
'|complete haspet(3350) |or
step
talk Gryrmpech##187300
|tip Inside the pavillion.
turnin Carry On, Basilton##66412 |goto Thaldraszus/0 37.86,75.46 |or
'|complete haspet(3350) |or
step
use Lord Basilton##194098
learnpet Lord Basilton##3350
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\N'Ruby",{
patch='100105',
source='Vendor',
author="support@zygorguides.com",
description="A lifetime of servitude to Anub'arak, then the Lich King, and now... you!",
keywords={"Magic"},
pet=4262,
},[[
step
Earn #2750# Paracausal Flakes |earn 2750 Paracausal Flakes##2594 |or
|tip Earn these by completing time rifts.
|tip Use the "Time Rifts" guide to accomplish this.
Click Here to Load the "Time Rifts" Guide |confirm |loadguide "Daily Guides\\Dragonflight (10-70)\\Time Rifts" |or
step
talk Baron Sliver##208338
buy 1 N'Ruby##208138 |goto Thaldraszus/0 51.00,56.65 |or
'|complete haspet(4262) |or
step
use N'Ruby##208138
learnpet N'Ruby##4262
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Petal",{
patch='100005',
source='Vendor',
author="support@zygorguides.com",
description="When the Bushbeard clan decided they were going to have a wedding, they chose Petal to be the flower girl. She was spectacular.",
keywords={"Magic","Iskaara Tuskarr","Patchu"},
pet=3408,
},[[
step
collect 100 Polished Pet Charm##163036 |or
|tip Acquire them from winning pet battle world quests that award Polished Pet Charms in BFA, Shadowlands, and Dragon Isles areas.
'|complete haspet(3408) |or
step
talk Patchu##196069
Select _"Want to trade some pet charms?"_
buy Petal##200927 |goto The Azure Span/0 13.89,49.85 |or
'|complete haspet(3408) |or
step
use Petal##200927
learnpet Petal##3408
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Phoenix Wishwing",{
patch='100007',
source='Drop',
author="support@zygorguides.com",
description="Some think this creature is smoldering because it is on fire. In truth it's because of its burning gaze.",
keywords={"Magic","Secret","Cataclysm","Timewalking"},
pet=3292,
},[[
step
collect Phoenix Wishwing##193373 |or
'|learnpet Phoenix Wishwing##3292 |or
step
use Phoenix Wishwing##193373
learnpet Phoenix Wishwing##3292
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Troubled Tome",{
patch='100005',
source='Vendor',
author="support@zygorguides.com",
description="Do you dare to open this book of draconic secrets?",
keywords={"Magic","Iskaara Tuskarr","Patchu"},
pet=3416,
},[[
step
collect 200 Polished Pet Charm##163036 |or
|tip Acquire them from winning pet battle world quests that award Polished Pet Charms in BFA, Shadowlands, and Dragon Isles areas.
'|complete haspet(3416) |or
step
talk Patchu##196069
Select _"Want to trade some pet charms?"_
buy Troubled Tome##201707 |goto The Azure Span/0 13.89,49.85 |or
'|complete haspet(3416) |or
step
use Troubled Tome##201707
learnpet Troubled Tome##3416
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Whiskuk",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="Baby ottuks spend their days swimming, chasing butterflies, and practicing their intimidating roars.",
keywords={"Magic","Iskaara"},
pet=3284,
},[[
step
talk Elder Poa##186448 |goto The Azure Span/0 12.41,49.34
|tip Inside the building.
|tip Turn in Stolen Totems from treasures in The Azure Span for rep.
'|turnin More Stolen Totems##70927 |repeatable |n
'|turnin Stolen Totems##70926 |repeatable |n
'|turnin Story of a Memorable Victory##72291 |repeatable |n
Reach Renown Level 9 with the Iskaara Tuskarr |complete factionrenown(2511) >= 9 or haspet(3284)
|tip Complete daily quests, weekly quests, and zone quests in The Azure Span to gain renown.
step
map The Azure Span/0
path follow smart; loop on; ants curved; dist 20
path	13.23,48.97	12.93,49.40	12.96,49.99	13.38,50.08	13.73,49.87
path	13.74,49.48	13.39,48.94
talk Jiq##186564
|tip He runs in a large circle around Iskaara.
accept Cute and Cuddly##70959
|tip Choose the Backswimmer Timbertooth from this quest.
|tip Backswimmer Timbertooth requires an expensive material to purchase.
step
Kill enemies around these areas
|tip Kill buffalo-type or deer-type animals, such as Bruffalon, Broadhoof, Bull, Cow, Doe, and Stag beasts.
|tip You can also purchase this from the Auction House.
collect 1 Large Sturdy Femur##201402 |goto Ohn'ahran Plains/0 73.46,45.01 |or
You can find more around [82.42,58.99]
'|complete haspet(3284) |or
step
Kill enemies around this area
|tip Kill ostrich-type animals, such as Hornstriders, Tallstriders, and Runner birds.
collect 5 Tallstrider Sinew##201404 |goto Thaldraszus/0 51.00,47,20 |or
|tip You can also purchase these from the Auction House.
'|complete haspet(3284) |or
step
earn 150 Dragon Isles Supplies##2003 |or
|tip Collect these by completing world quests, weekly quests, and daily quests.
|tip You can also collect them by killing rares or opening treasures.
'|complete haspet(3284) |or
step
talk Murik##193006
buy Whiskuk##193225 |goto The Azure Span/0 13.14,49.26 |or
|tip This battle pet is also available from the quest, Cute and Cuddly in The Azure Span.
'|complete haspet(3284) |or
step
use Whiskuk##193225
learnpet Whiskuk##3284
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Alvin the Anvil",{
patch='100005',
source='Crafted',
author="support@zygorguides.com",
description="When Alvin said he wanted to be the best anvil ever, everyone doubted him. If anvils could laugh, he'd be the one laughing now.",
keywords={"Mechanical","Dragon Isles","Blacksmithing","Crafted"},
pet=3274,
},[[
step
collect Alvin the Anvil##191886 |or
|tip This can be crafted with Dragon Isles Blacksmithing at skill 50.
|tip You can also purchase it from the auction house.
'|complete haspet(3274) |or
step
use Alvin the Anvil##191886
learnpet Alvin the Anvil##3274
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Gilded Mechafrog",{
patch='100007',
source='Drop',
author="support@zygorguides.com",
description="An old and dangerous discarded toy.",
keywords={"Mechanical"},
pet=3476,
},[[
step
collect Gilded Mechafrog##204079 |or
|tip You can also purchase it from the auction house.
'|learnpet Gilded Mechafrog##3476 |or
step
use Gilded Mechafrog##204079
learnpet Gilded Mechafrog##3476
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Ghostflame",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="A dream of the memory of fire.",
keywords={"Undead"},
pet=3287,
},[[
step
Complete the achievment _"Waking Hope"_. |confirm |complete achieved(16334) or haspet(3287)
|tip Complete all of the main story questlines.
|tip Use the Full Zone leveling guide to accomplish this.
Click Here to Load the "Full Zones (Story + Side Quests)" Leveling Guide |confirm |loadguide "Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)"
step
Reach Level 70 |ding 70
step
earn 1000 Elemental Overflow##2118 |or
|tip These drop from mobs in areas affected by the Elemental Storm.
'|complete haspet(3287) |or
step
talk Mythressa##196516
|tip Inside the building
buy Ghostflame##200173 |goto Valdrakken/0 38.10,37.72 |or
'|complete haspet(3287) |or
step
use Ghostflame##200173
learnpet Ghostflame##3287
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\The Quackcestor",{
patch='100005',
source='Quest',
author="support@zygorguides.com",
description="This is not your grandfather's duck! Or.. maybe it is?",
keywords={"Undead"},
pet=3389,
},[[
step
Complete the quest "Good at Doings, Not Understandings" in the Maruuk Centaur Renown Storyline |complete completedq(72363)
|tip Use the "Maruuk Centaur" Reputation guide to complete this.
Click Here to Open the "Maruuk Centaur" Reputation guide |next |loadguide "Reputation Guides\\Dragonflight Reputations\\Maruuk Centaur\\Maruuk Centaur"
step
talk Hunt Instructor Basku##195454 |goto Ohn'ahran Plains/0 64.01,41.00
|tip Turn in hunting trophies from grand hunts for rep.
'|turnin More Hunting Trophies##72868 |repeatable |n
'|turnin More Hunting Trophies##70929 |repeatable |n
'|turnin More Hunting Trophies##70928 |repeatable |n
Reach Renown Level 7 with the Maruuk Centaur |complete factionrenown(2503) >= 7 or haspet(3389)
|tip Complete daily quests, weekly quests, and zone quests in Ohn'ahran Plains to gain renown.
|tip You can also complete quests at the Aylaag Outpost each time they set up camp at a new location.
step
kill Eternal Sand##187475+
collect 1 Occasional Sand##194562 |goto Thaldraszus/0 57.60,82.60 |or
|tip You can also purchase these from the auction house.
'|complete haspet(3389) |or
step
earn 50 Dragon Isles Supplies##2003 |or
|tip Collect these by completing world quests, weekly quests, and daily quests.
|tip You can also collect them by killing rares or opening treasures.
'|complete haspet(3389) |or
step
talk Quartermaster Huseng##196707
|tip Inside the building.
buy Essence of Awakening##201323 |goto Ohn'ahran Plains/0 60.40,37.60 |or
'|complete haspet(3389) |or
step
use the Essence of Awakening##201323
|tip Use it at this location.
Gain the "Essence of Awakening" Buff |complete hasbuff(369277) or haspet(3389) |goto Ohn'ahran Plains/0 43.05,46.91
|tip You will get a buff for an hour that will make it possible for you to see and battle The Quackcestor battle pet.
step
clicknpc The Quackcestor##197063
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet The Quackcestor##3389 |goto Ohn'ahran Plains/0 42.43,47.84
]])
