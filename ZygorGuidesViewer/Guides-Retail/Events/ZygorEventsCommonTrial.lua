local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("EventsC") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\The War Within (70-80)\\Radiant Echoes")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Dragonflight (10-70)\\Azerothian Archives!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Dragonflight (10-70)\\The Big Dig: Traitor's Rest")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Dragonflight (10-70)\\Emerald Dreamsurge (Thaldraszus)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Dragonflight (10-70)\\Emerald Dreamsurge (The Waking Shores)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Dragonflight (10-70)\\Emerald Dreamsurge (Ohn'ahran Plains)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Dragonflight (10-70)\\Emerald Dreamsurge (The Azure Span)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Secrets of Azeroth\\Secrets of Azeroth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Secrets of Azeroth\\Community Rumors")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Secrets of Azeroth\\Secrets of Azeroth Mimiron's Jumpjets Mount")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Dragonflight (10-70)\\The Emerald Dream Superbloom")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\The War Within (70-80)\\20th Anniversary Event")
ZygorGuidesViewer:RegisterGuide("Events Guides\\Dragonflight (10-70)\\Hearthstone 10th Anniversary Event",{
author="support@zygorguides.com",
description="This guide will help you complete the Hearthstone 10th Anniversary event activities.",
startlevel=1,
patch='100205',
achieveid={20033,19724},
mounts={212522,278966},
pet=432486,
},[[
step
learnmount Fiery Hearthsteed##278966
|tip Log in between March 11th and March 18th to receive this mount.
|tip You must install Hearthstone and log in at least once to unlock this mount.
|tip You will see a popup for this mount in Hearthstone.
step
collect Hearthstone Invitation Letter##212154 |q 79184 |future
|tip Collect this from the nearest mailbox.
step
use the Hearthstone Invitation Letter##212154
accept It's Hearthstone's Anniversary!##79184
step
talk MC Farala##215409
|tip Up on the platform.
turnin It's Hearthstone's Anniversary!##79184| goto Valdrakken/0 62.75,64.87
accept Play Hearthstone!##79178| goto Valdrakken/0 62.75,64.87
step
talk Shady Dealer##215385
|tip Up on the bridge.
buy 5 Hearthstone Wild Card##211965 |goto Valdrakken/0 60.55,59.28 |q 79178
step
use the Hearthstone Wild Card##211965
|tip Use them on cooldown next to the table up on the platform.
Play #5# Cards |q 79178/1 |goto Valdrakken/0 62.33,67.66
step
talk MC Farala##215409
|tip Up on the platform.
turnin Play Hearthstone!##79178| goto Valdrakken/0 62.75,64.81
step
Every Hour a Portal Will Spawn
|tip The location where the portal spawns follows a cycle.
|tip The portals spawn in Stormwind, then Durotar, then Valdrakken.
|tip Ask around to see where the last portal spawned.
|tip Then head to the next portal location in the cycle.
|tip The remaining rewards from the event have a random chance to drop from the rares that spawn from the portals.
|tip Open Hearthstone Starter Packs to collect cards and other rewards.
|tip You have not collected the Compass Rose mount. |only if not hasmount(212522)
|tip You have not collected the Sarge pet. |only if not haspet(432486)
The poral locations are as follows:
Stormwind [Stormwind City/0 33.99,20.52]
Durotar [Durotar/0 53.10,16.17]
Valdrakken [Valdrakken/0 62.24,66.97]
'|complete false
]])
