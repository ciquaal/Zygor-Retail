local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("TitlesHWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Dungeons & Raids\\Defiler's End")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Dungeons & Raids\\Dockmaster")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Dungeons & Raids\\Empire's Twilight")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Dungeons & Raids\\Grimrail Suplexer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Dungeons & Raids\\The Indomitable")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Dungeons & Raids\\Ironbane")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Dungeons & Raids\\Lord/Lady of Blackrock")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Dungeons & Raids\\The Mine Master")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Dungeons & Raids\\Savage Hero")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Dungeons & Raids\\Scion of Rukhmar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Dungeons & Raids\\Soul Preserver")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Dungeons & Raids\\Spiritwalker")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Dungeons & Raids\\Violet Guardian")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Garrisons\\Architect")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Garrisons\\Captain")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Garrisons\\Draenei Destroyer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Garrisons\\Dwarfstalker")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Garrisons\\Gnomebane")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Garrisons\\Lord/Lady of War")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Garrisons\\Lumberjack")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Garrisons\\Manslayer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Garrisons\\Scourge of the Kaldorei")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Garrisons\\Stable Master")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Garrisons\\Terror of the Tushui")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Garrisons\\Timber Lord")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Garrisons\\Warlord of Draenor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Garrisons\\Worgen Hunter")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\General\\Field Photographer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\General\\Jenkins")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\General\\Predator")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Player versus Player\\Defender of the Horde")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Player versus Player\\Guardian of the Horde")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Player versus Player\\Primal Gladiator")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Player versus Player\\Soldier of the Horde")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Player versus Player\\Warmongering Gladiator")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Player versus Player\\Wild Gladiator")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Professions\\Artisan")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Quests\\Blood Champion")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Quests\\of the Jungle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Reputations\\Conservationist")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Reputations\\of the Frostwolves")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Reputations\\Masked Chuckler")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Reputations\\Spear of Vol'jin")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\Reputations\\Talon King/Queen")
ZygorGuidesViewer:RegisterGuidePlaceholder("Title Guides\\Warlords of Draenor Titles\\World Events\\Southshore Slayer")
