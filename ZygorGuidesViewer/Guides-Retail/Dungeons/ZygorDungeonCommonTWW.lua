local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("DungeonsCTWW") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\The War Within Dungeons\\Ara-kara, City of Echoes",{
author="support@zygorguides.com",
description="To complete this dungeon, you will need to kill the following bosses:\n\nAvanoxx\n"..
"Anub'zekt\nKi'katal the Harvester",
keywords={"TWW","War","Within","Avanoxx","Anub'zekt","Ki'katal","Harvester"},
condition_suggested=function() return level >= 77 end,
achieveid={40370},
mapid=2357,
patch='110002',
},[[
step
kill Avanoxx##213179 |goto City of Echoes/1 67.48,28.05
_EVERYONE_ |grouprole EVERYONE
|tip Stay out of webbing on ground, it applies a stacking debuff that will web you if it reached 10 stacks.	|grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Adds fixate on random players. Focus them and kill them quickly. They buff the boss if they get near her.	|grouprole DPS
_HEALER_ |grouprole HEALER
|tip The boss casts Alerting Shrill and Gossamer Onsalught, both cause ticking party wide damage. |grouprole HEALER
|tip The boss will occasionally do three quick attacks on the tank and then cause them to take increased damage for 10 seconds. Use heavy healing and cooldowns to keep the tank alive. |grouprole HEALER
_TANK_ |grouprole TANK
|tip The boss will occasionally do three quick attacks on you causing you to take increased damage for 10 seconds after. Use defensive cooldowns to survive this. |grouprole TANK
|tip The adds fixate random targets and cannot be tanked, however the boss is temporarily buffed if adds get near the boss. Keep boss away from adds at all cost, and use a defensive cooldowns if the boss consumes an add |grouprole TANK
confirm
step
kill Anub'zekt##215405 |goto City of Echoes/1 16.67,39.17
_EVERYONE_ |grouprole EVERYONE
|tip Stay away from the swarms that move around the arena, they inflict a stacking dot to nearby players |grouprole EVERYONE
|tip Dodge the impale, a frontal cone that ripples out from the boss. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Ranged dps can be targeted by the Burrowing Charge. Stay at max range from the boss and be prepared to dodge this attack. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Random players will be targeted by infestation, causing damage over time that will need to healed. The swarm that spawns after will apply a stacking dot to nearby players. |grouprole HEALER
|tip Try to not be the furthest away player from the boss so you aren't targeted by Burrowing Charge |grouprole HEALER
_TANK_ |grouprole TANK
|tip Face the boss away from the group to keep the group from being hit by impale, a frontal cone attack. This attack will knock you back. |grouprole TANK
confirm
step
kill Ki'katal the Harvester##215407 |goto City of Echoes/0 46.68,55.95
_EVERYONE_ |grouprole EVERYONE
|tip When the boss casts Cosmic Singularity, it will pull all players toward it and eventually explode dealing heavy damage. Use movement abilities and run away from it. |grouprole EVERYONE
|tip Avoid stepping in the black blood pools on the ground that the adds drop. It will root you in place. |grouprole EVERYONE
|tip Avoid the erupting webs. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip You can free players caught in the black blood pool immobilization by killing the grasping blood. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip The boss will inflict a poison on the party. Dispel this if you can and heal players affected. |grouprole HEALER
confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\The War Within Dungeons\\City of Threads",{
author="support@zygorguides.com",
description="To complete this dungeon, you will need to kill the following bosses:\n\nOrator Krix'vizk\n"..
"Fangs of the Queen\nThe Coaglamation\nIzo, the Grand Splicer",
keywords={"TWW","War","Within","Orator","Krix'vizk","Fangs","Queen","Nx","Vx","Kx","Coaglamation","Izo","Grand","Splicer"},
condition_suggested=function() return level >= 80 end,
achieveid={40376},
mapid=2343,
patch='110002',
},[[
step
kill Orator Krix'vizk##216619 |goto City of Threads/1 59.85,26.79
_EVERYONE_ |grouprole EVERYONE
|tip Stay within ten yards of the boss at all times to avoid ticking damage. |grouprole EVERYONE
|tip When the boss casts Vociferous Indoctrination, keep moving to avoid the pools on the ground. |grouprole EVERYONE
|tip Spread out around the boss to better avoid his frontal cone attack. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip The party will take heavy damage during Vociferous Indoctrination, especially if people take damage from the pools. |grouprole HEALER
|tip The boss places a magic dot on a random player. When this expires or is dispelled, there will be an explosion outward from the player that does heavy damage and stuns anyone hit.  |grouprole HEALER
_TANK_ |grouprole TANK
|tip Subjugate causes heavy damage and applies a slow to you. This damage is half magical, half physical. |grouprole TANK
confirm
step
kill Nx##216648
kill Vx##216649
kill Kx##216582 |goto City of Threads/1 70.38,48.87
_EVERYONE_ |grouprole EVERYONE
|tip In the first phase, avoid the frontal cone from Nx, and the ice daggers from Vx. |grouprole EVERYONE
|tip Both bosses will charge at a random player. Everyone should stay clear of both paths. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Health is shared between the bosses. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip In the first phase, most damage is avoidable. In the second phase, the boss will occasionally do a heavy attack on the tank and the group. Nx will also do damage to a random player periodically. |grouprole HEALER
_TANK_ |grouprole TANK
|tip In the first phase, when Nx does a frontal cone, it will leave a shadow that will echo the attack later. Move the boss away from the shade. |grouprole TANK
|tip In the second phase, stack with at least one other player with the Freezing Blood debuff to prevent damage and being frozen. |grouprole TANK
confirm
step
kill The Coaglamation##216320 |goto City of Threads/0 49.91,47.01
_EVERYONE_ |grouprole EVERYONE
|tip Players will need to intercept the orbs that move towards the boss to prevent them from empowering it. They will apply a debuff that absorbs healing, so players should avoid grabbing too many without defensive cooldowns or heavy healing.	|grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip When the boss reaches max energy, it will do heavy group wide damage. |grouprole HEALER
|tip Players that pick up orbs will need to be pumped heals to remove the debuff. |grouprole HEALER
_TANK_ |grouprole TANK
|tip The boss has a heavy attack that will reduce healing received for 10 seconds. Use defensive abilities to mitigate this period. |grouprole TANK
confirm
step
kill Izo, the Grand Splicer##216658 |goto City of Threads/0 49.91,78.60
_EVERYONE_ |grouprole EVERYONE
|tip Avoid the spheres around the room, they deal heavy damage and knockback when touched. |grouprole EVERYONE
|tip Move away from the boss during the Tremor Slam. This will spawn adds that need to be killed as well. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Switch to the webs to free party members when the boss webs the group. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip The boss will cast Splice to deal heavy damage to the whole party. |grouprole HEALER
_TANK_ |grouprole TANK
|tip The boss will channel a heavy attack on you that pulses three times and damage those near you. Stay away from the group and use defensive cooldowns to survive. |grouprole TANK
confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\The War Within Dungeons\\The Dawnbreaker",{
author="support@zygorguides.com",
description="To complete this dungeon, you will need to kill the following bosses:\n\nSpeaker Shadowcrown\n"..
"Anub'ikkaj\nRasha'nan",
keywords={"TWW","War","Within","Speaker","Shadowcrown","Anub'ikkaj","Rasha'nan"},
condition_suggested=function() return level >= 80 end,
achieveid={40599},
mapid=2359,
patch='110002',
},[[
step
kill Speaker Shadowcrown##211087 |goto The Dawnbreaker/0 44.29,23.67
_EVERYONE_ |grouprole EVERYONE
|tip Pick up orbs in the sky to extend the duration of the Radiant Light buff that protects you from the Enroaching Shadows. |grouprole EVERYONE
|tip When the boss hits 50% and 1% health she will become immune to damage and channel a spell to kill anyone on the Dawnbreaker ship. |grouprole EVERYONE
|tip Avoid Collapsing Darkness zones on the ground. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Interrupt shadow bolts as often as possible. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip A player will be afflicted by a magic DOT that applies another debuff to others when dispelled. |grouprole HEALER
_TANK_ |grouprole TANK
|tip When the boss casts Obsidian Blast, prepare for heavy damage. |grouprole TANK
confirm
step
kill Anub'ikkaj##211089 |goto The Dawnbreaker/0 39.30,41.06
_EVERYONE_ |grouprole EVERYONE
|tip Kill the nerubian lieutenants prior to fighting the boss to remove the buffs that empower the boss. |grouprole EVERYONE
|tip The dark orb inflicts less damage to the party the further it is allowed to travel. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip When the boss casts shadowy decay, it does heavy group damage that cannot be avoided. |grouprole HEALER
_TANK_ |grouprole TANK
|tip The boss does a heavy attack the damages and knocks you back, and the same to anyone near you. Use a defensive ability to mitigate this and stay away from the group. |grouprole TANK
confirm
step
kill Rasha'nan##224552 |goto The Dawnbreaker/0 39.69,46.51
_EVERYONE_ |grouprole EVERYONE
|tip Players need to pick up the bombs on the ship and throw them at the boss by moving near him and using the extra action button. |grouprole EVERYONE
|tip The boss will fly away, players need to mount up and chase the boss down and interrupt its cast. Pick up the light orbs along the way and stay near the zeppelin.	|grouprole EVERYONE
|tip If targeted by the acid wave, move it to the sides of the area. The wave will move in the direction from the thin light green line to the wide darker green area. |grouprole EVERYONE
|tip In the final phase, if tethered to a webbed victim, move away to break the tether. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip Heal through the group wide damage of the Erosive Spray |grouprole HEALER
_TANK_ |grouprole TANK
|tip The boss will do heavy damage if no one is in melee range at all times.|grouprole TANK
confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\The War Within Dungeons\\Cinderbrew Meadery",{
author="support@zygorguides.com",
description="To complete this dungeon, you will need to kill the following bosses:\n\nBrew Master Aldryr\n"..
"I'pa\nBenk Buzzbee\nGoldie Baronbottom",
keywords={"TWW","War","Within","Brew","Master","Aldryr","I'pa","Benk","Buzzbee","Goldie","Baronbottom"},
condition_suggested=function() return level >= 80 end,
achieveid={40361},
mapid=2335,
patch='110002',
},[[
step
kill Brew Master Aldryr##210271 |goto Cinderbrew Meadery/0 44.38,52.12
_EVERYONE_ |grouprole EVERYONE
|tip During happy hour, players need to bring mugs of cinderbrew from the table near the boss to roudy patrons around the room |grouprole EVERYONE
|tip Avoid pools of hot honey on the ground. |grouprole EVERYONE
|tip Avoid the frontal cone |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip Players will randomly be afflicted by a DOT that drops a pool. |grouprole HEALER
_TANK_ |grouprole TANK
|tip The boss has a heavy attack that knocks you back and leaves a pool on the ground. |grouprole TANK
confirm
step
kill I'pa##210267 |goto Cinderbrew Meadery/0 41.37,23.74
_DPS_ |grouprole DPS
|tip Kill the Brew Drops on the ground to turn them back into pools before they reach the boss.	|grouprole DPS
_HEALER_ |grouprole HEALER
|tip The boss applies a heawvy fire damage DoT to random players periodically. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Move the boss away from Brew Drops and the brew pools to keep them from reaching the boss. |grouprole TANK
|tip The boss has heavy Uppercut attack that will knock you back. |grouprole TANK
confirm
step
kill Benk Buzzbee##218000 |goto Cinderbrew Meadery/0 52.55,76.23
_EVERYONE_ |grouprole EVERYONE
|tip The boss drops barrels that need to be avoided. The barrels spawn bee adds that can be mounted when they reach 1 hp, and subsequently launched towards the barrels to destroy them. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip DPS the bee adds and help launch them at barrels. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip The boss has a gust that pushes all players back and deals group wide damage. |grouprole HEALER
_TANK_ |grouprole TANK
|tip The boss will do a heavy attack on the tank that apply a debuff that explodes on nearby players and leaves pool when it expires. |grouprole TANK
confirm
step
kill Goldie Baronbottom##218523 |goto Cinderbrew Meadery/0 54.67,52.85
_EVERYONE_ |grouprole EVERYONE
|tip The boss spawns explosive barrels that do group wide damage when detonated. |grouprole EVERYONE
|tip When the boss reaches full energy, she will detonate all remaining barrels at once. It is critical to ignite some barrels by standing near them to stagger the damage throughout the fight and prevent them from all exploding at once. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip The group will need heavy healing whenever a barrel explodes. If multiple barrels explode at once the damage will be significant. |grouprole HEALER
_TANK_ |grouprole TANK
|tip The boss has a frontal cone that deals heavy damage and can ignite barrels. |grouprole TANK
confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\The War Within Dungeons\\Darkflame Cleft",{
author="support@zygorguides.com",
description="To complete this dungeon, you will need to kill the following bosses:\n\nOl' Waxbeard\n"..
"Blazikon\nThe Candle King\nThe Darkness",
keywords={"TWW","War","Within","Ol'","Waxbeard","Blazikon","Candle","King","Darkness"},
condition_suggested=function() return level >= 80 end,
achieveid={40427},
mapid=2303,
patch='110002',
},[[
step
kill Ol' Waxbeard##210149 |goto Darkflame Cleft/0 22.57,20.36
_EVERYONE_ |grouprole EVERYONE
|tip Most of Waxbeard's abilities will kill the kobolds they collide with. Avoid the minecarts and charges and guide kobolds into their paths. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Adds will fixate on a ranged player targeted by Luring Candleflame. Keep away from them and lure them into the boss's abilities. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Priority heal target's marked with Luring Candleflame. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Use a defensive ability when the boss uses rock buster. |grouprole TANK
confirm
step
kill Blazikon##208743 |goto Darkflame Cleft/0 41.40,41.14
_EVERYONE_ |grouprole EVERYONE
|tip Keep candles lit with by moving near them during Wicklighter Barrage in order to leave safe space for Enkindling Inferno. |grouprole EVERYONE
|tip Move near a lit candle when the boss casts Enkindling Inferno. |grouprole EVERYONE
_TANK_ |grouprole TANK
|tip The boss will do a deadly attack if no one is in melee range. |grouprole TANK
confirm
step
kill The Candle King##222096 |goto Darkflame Cleft/0 41.37,86.49
_EVERYONE_ |grouprole EVERYONE
|tip If targeted by Darkflame Pickaxe or Throw Darkflame, hide behind a wax statue to destroy it instead. Don't go within 2 yards of the statues or you will be stunned. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Interrupt Paranoid Mind to prevent the group from being feared. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip The group will take increased periodic damage to the whole group for each was statue that is still alive. |grouprole HEALER
confirm
step
kill The Darkness##210797 |goto Darkflame Cleft/0 81.62,74.76
_EVERYONE_ |grouprole EVERYONE
|tip The key to this fight is to stay near the candle at all times and keep it lit as long as possible. The candle lose heat the longer players are near them, and can be moved around. |grouprole EVERYONE
|tip Avoid baiting the boss's abilities on to the candles as they will remove their heat. Pick up the candle and move it to avoid it being hit. |grouprole EVERYONE
|tip Use lumps of wax from dead candlebearers to add heat to candles. |grouprole EVERYONE
|tip Avoid letting the candle reach 0 heat. It can be relit with wax, but each time it reaches 0 it will cause group wide damage and increase damage taken and reduce haste for the remainder of the fight. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Kill the Darkspawn before they can reduce the heat from the candles. |grouprole DPS
confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\The War Within Dungeons\\Priory of the Sacred Flame",{
author="support@zygorguides.com",
description="To complete this dungeon, you will need to kill the following bosses:\n\nCaptain Dailcry\n"..
"Baron Braunpyke\nPrioress Murrpray",
keywords={"TWW","War","Within","Captain","Dailcry","Baron","Braunpyke","Prioress","Murrpray"},
condition_suggested=function() return level >= 75 end,
achieveid={40590},
mapid=2308,
patch='110002',
},[[
step
kill Captain Dailcry##207946 |goto Priory of the Sacred Flame/0 36.75,54.59
_EVERYONE_ |grouprole EVERYONE
|tip The boss's guards deal increased damage for each other nearby guard. |grouprole EVERYONE
|tip Avoid the boss's spear throw attack. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip When the boss's mount mauls a player, it can be interrupted by doing sufficient damage to it. |grouprole DPS
|tip Interrupt the boss's battle cry is essential or the fight will become progressively more dangerous.  |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Dispel the Cinderblast debuff if the add does not get interrtupted. |grouprole HEALER
_TANK_ |grouprole TANK
|tip The boss applies a stacking bleed on to the tank. It may be necessary to try to let the stacks fall off before they get too high. |grouprole TANK
|tip The paladin add's divine judgement causes you to take 25% increased damage for 6 seconds, be prepared to mitigate the increased damage. |grouprole TANK
confirm
step
kill Baron Braunpyke##207939 |goto Priory of the Sacred Flame/1 83.98,48.60
_EVERYONE_ |grouprole EVERYONE
|tip Once the boss reaches full energy, he will cast vindictive wrath and gain 25% increased damage and his spells will target more players. |grouprole EVERYONE
|tip If his shield attack bounces to you, move out of the subsequent explosion on the ground underneath you. |grouprole EVERYONE
|tip Avoid the hammers of purity. There will be many more of these to avoid after the bosses use vindictive wrath. |grouprole EVERYONE
|tip Players need to the need the Sacred Pyres to drain them of all of their stacks before they expire. This causes stacking holy damage so be careful not to take too many stacks at once.|grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip Players that take stacks from the sacred pyres will need extra healing. |grouprole HEALER
confirm
step
kill Prioress Murrpray##207940 |goto Priory of the Sacred Flame/1 25.27,56.85
_EVERYONE_ |grouprole EVERYONE
|tip When she cast's Blinding Light, turn your character away from the boss to prevent being blinded |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Interrupt the boss's Holy Smite as often as possible. |grouprole DPS
|tip When the boss cast's barrier of light, get to her and damage her shield quickly and interrupt her cast when the shield is down. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip The group will take heavy damage when the boss gets to 50% health and casts Inner Fire |grouprole HEALER
|tip Cleanse Holy Flame to reduce damage |grouprole HEALER
confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\The War Within Dungeons\\The Rookery",{
author="support@zygorguides.com",
description="To complete this dungeon, you will need to kill the following bosses:\n\nKyrioss\n"..
"Stormguard Gorren\nVoidstone Monstrosity",
keywords={"TWW","War","Within","Kyrioss","Stormguard","Gorren","Voidstone","Monstrosity"},
condition_suggested=function() return level >= 71 end,
achieveid={40621},
mapid=2315,
patch='110002',
},[[
step
kill Kyrioss##209230 |goto The Rookery/4 49.55,50.39
_EVERYONE_ |grouprole EVERYONE
|tip Break line of sight with your group if targeted by unstable charge. You can drop into the hole in the middle of the room for this. |grouprole EVERYONE
|tip Dodge The Lightning Dash and Lightning Torrent abilities. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip The boss casts a chain lightning that will deal heavy damage if the group is not spread out. |grouprole HEALER
confirm
step
kill Stormguard Gorren##207205 |goto The Rookery/2 55.64,62.84
_EVERYONE_ |grouprole EVERYONE
|tip The Chaotic Corruption debuff will bounce to the nearest party member when it expires. This also causes an explosion if other players are too close when the effect expires. |grouprole EVERYONE
|tip Move away when the boss tries to pull everyone in. |grouprole EVERYONE
|tip Avoid the Crush Reality and the subsequent pools of void and tornadoes that shoot from it. |grouprole EVERYONE
confirm
step
kill Voidstone Monstrosity##207207 |goto The Rookery/1 56.96,54.88
_EVERYONE_ |grouprole EVERYONE
|tip Players empowered by Stormrider's charge can shatter Seeping Fragments by standing near them. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Destroy Void Chunks before their finish casting Reshape |grouprole DPS
_TANK_ |grouprole TANK
|tip The boss does a heavy attack in a line targeting the tank, avoid hitting other players. |grouprole TANK
|tip The boss deals heavy damage to all players if no one is in melee range. |grouprole TANK
confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\The War Within Dungeons\\The Stonevault",{
author="support@zygorguides.com",
description="To complete this dungeon, you will need to kill the following bosses:\n\nE.D.N.A\n"..
"Skarmorak\nSpeaker Dorlita\nSpeaker Brokk\nVoid Speaker Eirich",
keywords={"TWW","War","Within","E.D.N.A","Skarmorak","Speaker","Dorlita","Brokk","Void","Eirich"},
condition_suggested=function() return level >= 73 end,
achieveid={40643},
mapid=2341,
patch='110002',
},[[
step
kill E.D.N.A##210108 |goto Darkflame Cleft/0 56.35,35.58
_EVERYONE_ |grouprole EVERYONE
|tip When targeted by the Refracting Beam, stand behind a Volatile Spike to destroy it. |grouprole EVERYONE
|tip Volatile Spikes will also detonate if anyone comes to close to them, causing group wide damage. |grouprole EVERYONE
_HEALER_ |grouprole HEALER
|tip Dispel Seismic Reverberation from the tank to remove the DoT and give them a temporary earth shield, reducing further damage for 3 seconds. |grouprole HEALER
_TANK_ |grouprole TANK
|tip The boss's Seismic Smash causes a heavy burst of damage to the tank and leaves a heavy DoT as well. |grouprole TANK
confirm
step
kill Skarmorak##210156 |goto Darkflame Cleft/0 79.09,36.42
_EVERYONE_ |grouprole EVERYONE
|tip Avoid Crystal Shards as they land around the room. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Destroy the crystal shards to create void fragments that you will need to pick up. |grouprole DPS
|tip Pick up Void Fragments to deal additional damage to Crumbling Shell. The buff stacks, but deals more damage to you with each stack. |grouprole DPS
|tip Destroy the crumbling shell before the damage overwhelms the group. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip The boss does a heavy party wide attack that does progressively more damage over the course of the fight. |grouprole HEALER
|tip Picking up void fragments to increase your healing. Don't take too many because the dps need them to destroy the shell quickly. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Crystalline Smash deals heavy damage to the tank. |grouprole TANK
confirm
step
kill Speaker Dorlita##221586
kill Speaker Brokk##213217 |goto Darkflame Cleft/0 31.88,64.67
_EVERYONE_ |grouprole EVERYONE
|tip The remaining boss pulses heavy group damage and deals 75% increased damage if the other is killed. |grouprole EVERYONE
|tip Avoid the flame vents while they are activated. |grouprole EVERYONE
|tip Avoid the path of the scrap cube. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Interrupt Molten Metal as often as possible. |grouprole DPS
|tip Kill bosses evenly to prevent the remaining boss from being buffed. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip When the Scrap Cube is detonated, the group takes heavy damage even when splinters are avoided. |grouprole HEALER
|tip Dispel molten metal to mitigate damage coming in. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Mitigate the Molten Hammer attack, which deals heavy volcanic damage. |grouprole TANK
confirm
step
kill Void Speaker Eirich##219440 |goto Darkflame Cleft/0 56.41,66.01
_EVERYONE_ |grouprole EVERYONE
|tip Players infected by Void Corruption will take a progressively increasing DOT until they move near a void rift. |grouprole EVERYONE
|tip Moving to the center of the void rift will instead kill the player. |grouprole EVERYONE
|tip When the boss casts Entropic Reckoning, all players need to move to the edge of the room to drop pools where they wont be in the way. |grouprole EVERYONE
|tip Avoid the boss's cone attack. |grouprole EVERYONE
confirm
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\The War Within Dungeons\\Nerub-Ar Palace",{
},[[
step
kill Ulgrax the Devourer##228713
_EVERYONE_ |grouprole EVERYONE
|tip Split your raid for soaking Carnivorous Contest and run against the pull.
|tip Dodge Stalker’s Webbing or you will need to be broken out of your webbing.
|tip Watch out for Juggernaut Charge in the intermission, the boss will charge through a large section of the room indicated by dark portals on the edge of the arena
_DPS_ |grouprole DPS
|tip Help raid members trapped in webbing and avoid getting webbed. During the intermission let tanks get threat and help feed the boss. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Spot heal players with Digestive Acid, be ready to heal the entire group during the intermission. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Face the boss away from the group for Brutal Crush. |grouprole TANK
|tip Taunt swap to reset stacks of Tenderized as needed. |grouprole TANK
|tip The adds have a stacking debuff they apply on melee you must watch for. Group the adds without endangering your raid in the intermission. |grouprole TANK
step
kill The Bloodbound Horror##214502
_EVERYONE_ |grouprole EVERYONE
|tip Split your group for Gruesome Disgorge, have half your raid stand in the frontal cone each time to be able to kill the adds. |grouprole EVERYONE
|tip Run away for Goresplatter, you will take some damage crossing the blood pool. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip After being hit with Gruesome Disgorge focus the Forgotten Harbingers and make sure the Blood Horrors they spawn do not reach the boss. |grouprole DPS
|tip Be mindful of where you are placing your Grasp From Beyond tentacles to not cut off or kill other players. |grouprole DPS
|tip Kick the Lost Watcher’s Black Bulwark cast which shields the boss. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Crimson Rain applies a healing absorb to players, make sure your UI clearly displays when a healing absorb is present and be ready to heal it off. |grouprole HEALER
|tip After Gruesome Disgorge you will find yourself in a small group healing environment. Identify the tank and players you are responsible for and focus healing on them. |grouprole HEALER
|tip After being hit with Gruesome Disgorge help prevent the Blood Horrors from reaching the boss with crowd control. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Gruesome Disgorge is positioned by the tank. Position the Disgorge for players to stack inside. Spewing Hemorrhage spawn from both 90 degree angles from the tank then spin counterclockwise. |grouprole TANK
|tip After being hit with Gruesome Disgorge you are responsible for tanking the Lost Watcher. Have a defensive ready for its Spectral Slam and position it on top of Forgotten Harbingers to help the group’s DPS. |grouprole TANK
|tip Kick the Lost Watcher’s Black Bulwark cast which shields the boss. |grouprole TANK
step
kill Sikran##219853
_EVERYONE_ |grouprole EVERYONE
|tip This encounter revolves around Phase Blades and the mechanics that interact with it. Make sure you know your raid’s strategy for this fight. |grouprole EVERYONE
|tip Dodge the Rain of Arrows and be ready for the Arrows to overlap with other mechanics. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Pre-positioning for Phase Blades and Decimate will help decrease the chaos on this fight, use your defensives liberally when targeted by these mechanics. |grouprole DPS
_HEALER_  |grouprole HEALER
|tip The group will take increasing rot damage as Cosmic Simulacrums accumulate. This damage will spike as the Simulacrums are destroyed. |grouprole HEALER
|tip Shattering Sweep will happen a few times throughout the fight and the group will require a large amount of healing. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Captain’s Flourish is the tank swap mechanic on this fight and has a specific timing element to successfully doing it. |grouprole TANK
|tip Sikran will cast 2 Exposes followed by a Phase Lunge. You should be taunting during the Phase Lunge cast and holding the boss until the next Captain’s Flourish.|grouprole TANK
step
kill Rasha’nan##224552
_EVERYONE_ |grouprole EVERYONE
|tip Because the boss starts at 60% health, executes talents and abilities are very good on this fight. |grouprole EVERYONE
|tip Rasha’nan will transition into different parts of the room during the fight, be ready to chase her down and interrupt Acid Eruption. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip When targeted by Infested Spawn move near the tanks to spawn your adds in range of them. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Erosive Spray will deal heavy group damage throughout the fight, this damage will linger because of Lingering Erosion. |grouprole HEALER
|tip Players that get targeted by Spinneret’s Strands, Rolling Acid and Infested Spawn will require extra healing. |grouprole HEALER
_TANK_ |grouprole TANK
|tip When Infested Spawn go out on the raid be ready to pick up the adds these players will spawn. |grouprole TANK
|tip Be prepared to use any mitigation abilities against Savage Assault.  |grouprole TANK
step
kill Broodtwister Ovi’nax##214506
_EVERYONE_ |grouprole EVERYONE
|tip Similar to Sikran your group’s specific strategy for this encounter will be very important so make sure you are familiar with how your raid wants to handle this fight. |grouprole EVERYONE
|tip Avoid the Blood Parasites when they fixate you, letting them reach you will spawn an additional Parasite after a DoT. |grouprole EVERYONE
_DPS_ |grouprole DPS
|tip Voracious Worms will cast Poison Burst which should be kicked. |grouprole DPS
|tip Help crowd control the Blood Parasites so they can be quickly killed. |grouprole DPS
_HEALER_ |grouprole HEALER
|tip Players targeted by Experimental Dosage will need extra healing to remove the heal absorb. |grouprole HEALER
|tip The entire raid will take damage and have a heal absorb applied to them when Ovi’nax reaches full energy and ingests Black Blood. |grouprole HEALER
|tip Volatile Concoction is a potentially lethal tank mechanic you should watch for. When the primary tank has the DoT make sure they are healthy when it expires. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Gathering the Blood Parasites, positioning the boss and Colossal Spiders on top of Voracious Worms for efficient cleave are important on this fight. |grouprole TANK
|tip The boss as a whole is very positioning intensive. Positioning the boss with what eggs your raid are about to break in mind or forced movement the boss may be doing will go a long way. |grouprole TANK
|tip Volatile Concoction deals heavy Magic damage over the course of 8 seconds. At the end of the debuff you will take more damage based on your missing health, use defensives to stay healthy through the DoT until the end. |grouprole TANK
step
kill Nexus-Princess Ky’veza##228470
_EVERYONE_ |grouprole EVERYONE
|tip Falling below 10% health on this boss causes her to attempt to execute you. |grouprole EVERYONE
|tip Minimize your movement with Regicide during the Intermissions to let your raid position around you. |grouprole EVERYONE
|tip Follow your raid’s plan for where to go when you are targeted by Assassination. Assassination deals a large amount of damage and leaves a heavy DoT, use a defensive for this damage. |grouprole EVERYONE
|tip
_HEALER_ |grouprole HEALER
|tip The raid will take heavy damage during Starless Night. |grouprole HEALER
|tip Players targeted with the Queensbane debuff will require extra healing to stay alive, there is a large burst of damage at the end of the DoT they must be healthy enough to live through. |grouprole HEALER
_TANK_ |grouprole TANK
|tip Keep track of you and your co-tanks Chasmal Gash stacks from the bosses Void Shredder to determine who should be tanking the boss. |grouprole TANK
step
kill Anub'arash##223779
_EVERYONE_ |grouprole _EVERYONE_
|tip Help crowd control and group up the Shattershell Scarabs throughout Phase 1 and 2. |grouprole _EVERYONE_
|tip Avoid Impaling Eruption from Anub’arash and help break anyone free who does get Impaled. |grouprole _EVERYONE_
|tip Be ready to spread from players with Venomous Rain. |grouprole _EVERYONE_
_DPS_ |grouprole _DPS_
|tip In Phase 1 when Anub’arash’s Reckless Charge is successfully stopped he takes 100% increased damage for 7 seconds. |grouprole _DPS_
|tip In Phase 2 Takazj takes 150% increased damage for 5 seconds after successfully having the 3 Stinging Swarms dispelled onto her. |grouprole _DPS_
|tip In Phase 3 both these mechanics will happen. |grouprole _DPS_
|tip Both Intermissions end when the shield on the center boss is broken. |grouprole _DPS_
_HEALER_ |grouprole _HEALER_
|tip Both Intermissions will do consistent rot damage to the entire raid. |grouprole _HEALER_
|tip Players that get Entangled will take continuous damage and must be kept alive. |grouprole _HEALER_
|tip Stinging Swarm which starts in Phase 2 is a very important healer mechanic. The Swarms must be dispelled onto Takazj once she has jumped to the middle and begun casting Cataclysmic Entropy. |grouprole _HEALER_
|tip Each debuff dispelled will deal damage to the whole raid. The players with Stinging Swarm will take increased damage from all mechanics and must be kept alive. |grouprole _HEALER_
|tip Unleashed Swarm which occurs only in the final phase will deal a heavy ramping amount of raid damage. |grouprole _HEALER_
_TANK_ |grouprole _TANK_
|tip Both bosses have forced movement moments you should be ready to adapt to. |grouprole _TANK_
|tip Both bosses have a frontal cast that will aim at the largest clump of players. |grouprole _TANK_
|tip Keep track of you and your co-tanks Piercing Strike stacks to determine who should be tanking Anub’arash. |grouprole _TANK_
]])
