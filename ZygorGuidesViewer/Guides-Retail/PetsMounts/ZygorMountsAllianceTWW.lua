local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetsMountsATWW") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
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
This Mount, Associated Currency, and Vendor may only be Available during The War Within Pre-Patch Event
Click Here to Continue |confirm |next
step
Complete the "Hunt for the Harbinger" Quest Chain
|tip Use the "Hunt for the Harbinger" Leveling Guide to accomplish this.
Click Here to Load the _Hunt for the Harbinger_ Leveling Guide |confirm |loadguide "Leveling Guides\\Dragonflight (10-70)\\Hunt for the Harbinger"
step
earn 20000 Residual Memories##3089 |or
|tip You can no longer acquire this currency.
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
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\PVP Mounts\\Vicious Skyflayer",{
author="support@zygorguides.com",
description="This guide will help you acquire the 'Vicious Skyflayer' mount.",
mounts={449325},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","PVP","Achievement"},
patch='110002',
},[[
step
achieve 40396
|tip Win Rated PvP matches during The War Within Season 1 while at 1000 rating or higher.
collect Vicious Skyflayer##223511 |or
'|complete hasmount(449325) |or
step
use Vicious Skyflayer##223511
learnmount Vicious Skyflayer##449325
]])
