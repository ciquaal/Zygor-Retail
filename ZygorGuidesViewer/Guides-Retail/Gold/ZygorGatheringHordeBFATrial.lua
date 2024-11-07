local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
ZygorGuidesViewer.Gold.guides_loaded=true
if ZGV:DoMutex("GoldGatherHBFA") then return end
if UnitFactionGroup("player")~="Horde" then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Aromatic Fish Oil")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Frenzied Fangtooth")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Great Sea Catfish")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Lane Snapper")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Mauve Stinger")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Midnight Salmon")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Redtail Loach")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Sand Shifter")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Slimy Mackerel")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Tiragarde Perch")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Viper Fish")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Akunda's Bite")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Anchor Weed")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Riverbud")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Sea Stalk")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Siren's Pollen")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Star Moss")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Winter's Kiss")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Zin'anthid")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Monelite Ore")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Osmenite Ore")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Platinum Ore")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Storm Silver Ore")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Blood-Stained Bone")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Calcified Bone")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Coarse Leather")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Dredged Leather")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Mistscale")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Shimmerscale")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Stringy Loins")
ZygorGuidesViewer:RegisterGuidePlaceholder("GOLD\\Gathering\\Tempest Hide")