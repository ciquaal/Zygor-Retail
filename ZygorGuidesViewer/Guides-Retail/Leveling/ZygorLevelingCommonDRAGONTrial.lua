local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("LevelingCDRAGON") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Starter Guides\\Dracthyr Starter (10-15)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Intro & The Waking Shores (Full Zone)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Ohn'ahran Plains (Full Zone)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\The Azure Span (Full Zone)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Full Zones (Story + Side Quests)\\Thaldraszus (Full Zone)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Story Campaigns\\Intro & The Waking Shores (Story Only)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Story Campaigns\\Ohn'ahran Plains (Story Only)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Story Campaigns\\The Azure Span (Story Only)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Story Campaigns\\Thaldraszus (Story Only)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Dragon Glyphs\\Dragon Glyphs (All Zones)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Dragonriding World Tour")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Dragonflight Campaign")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\The Forbidden Reach")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Old Hatreds Questline")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\The Forbidden Reach Side Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Dragon Glyphs\\Dragon Glyphs (Zaralek Cavern)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Zaralek Cavern")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Snail Racing")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\The Blue Dragonflight's Legacy")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Tyr's Fall")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Rebel Resurgence")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Some Wicked Things (Warlock)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Augmentation Questline (Evoker)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\The Coalition of Flames")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Reforging the Tyr's Guard")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Bronze Reconciliation")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Emerald Dream Campaign")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Emerald Dream Campaign + Side Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Wrathion's Questline")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Tyr's Return")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Seeing Red")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\The Reclaiming of Gilneas")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Sins of the Sister")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Champion of the Dragonflights")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Dragonflight (10-70)\\Hunt for the Harbinger")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The War Within (70-80)\\Warbands")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The War Within (70-80)\\Visions of Azeroth")
