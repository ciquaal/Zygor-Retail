local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsMountsHTWW") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
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
This Mount, Associated Currency, and Vendor may only be Available during The War Within Pre-Patch Event
Click Here to Continue |confirm |next
step
earn 20000 Residual Memories##3089 |or
|tip You can no longer acquire this currency.
'|complete hasmount(441325) |or
step
talk Remembrancer Amuul <Residual Memories Vendor>##223710
|tip Inside the Chamber of the Guardian, through the portal in the middle of Legion Dalaran, and all the way down the stairs.
buy Remembered Wind Rider##217987 |goto Dalaran L/12 33.33,84.51 |or
'|complete hasmount(441325) |or
step
use Remembered Wind Rider##217987
Learn the "Remembered Wind Rider" Mount |learnmount Remembered Wind Rider##441325
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\PVP Mounts\\Vicious Skyflayer",{
author="support@zygorguides.com",
description="This guide will help you acquire the 'Vicious Skyflayer' mount.",
mounts={447405},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","PVP","Achievement"},
patch='110002',
},[[
step
achieve 40396
|tip Win Rated PvP matches during The War Within Season 1 while at 1000 rating or higher.
collect Vicious Skyflayer##221813 |or
'|complete hasmount(447405) |or
step
use Vicious Skyflayer##221813
learnmount Vicious Skyflayer##447405
]])
