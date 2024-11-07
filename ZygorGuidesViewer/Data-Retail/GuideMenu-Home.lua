local name,ZGV = ...

-- #GLOBALS ZygorGuidesViewer

local GuideMenu = ZGV.GuideMenu


GuideMenu.Messages = {}
-- Notification messages
GuideMenu.Messages.welcome = { 
	action = function() ZGV.GuideMenu:Show("Featured") end,
	title = "Welcome to Zygor Guides",
	text = [[See the guides for **The War Within**]],
	--displaytime = 5,
}



GuideMenu.Messages.guides = { 
	action = function() ZGV.GuideMenu:Show("Home") ZGV.Widgets.Registered.zygormessage:ShowPopup() end,
	title = "New in this update",
	text = [[Added **20th Anniversary Event** guide]],
	--	displaytime = 5
}

GuideMenu.Bulletin={
	{"title", text=[[Latest Zygor Updates:]]},

	{"section", text=[[20th Anniversary Event]] },

	{"text", text=[[WoW's 20th Anniversary event is underway. We're in the process of creating guides for it. You can access our work in progress guide below: |n
]]},
	{"list", text=[[Click here to load the **20th Anniversary Event (Beta)** guide]], guide="EVENTS\\The War Within (70-80)\\20th Anniversary Event"},

}


--[=[
GuideMenu.Messages.features = { 
	action = function() print("features") end,
	title = "New features have been added.",
	text = [[]],
	displaytime = 99999,
}
--]=]

-- ZygorMessage widget
GuideMenu.ZygorMessage = [[
Welcome to Zygor's Dragonflight Guides

Known issues:
* We suggest using the Starlight theme as the Stealth theme currently has some display issues with the new Notification system.

Key Updates:
* Updated the Spark of Ingenuity guide to Dragonflight Campaign
* Updated World Quests
* The Silver Purpose chapter committed for Valdrakken Accord rep guide

Please contact Customer Support if you encounter any issues.
]]


