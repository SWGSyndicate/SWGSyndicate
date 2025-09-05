aaph_koden_missions =
{
	{
		missionType = "deliver",
		primarySpawns = 
		{ 
			{ npcTemplate = "talia_reede", npcName = "Talia Reede" }
		}, 
		secondarySpawns =
		{

		},
		itemSpawns =
		{
			{ itemTemplate = "object/tangible/mission/quest_item/aaph_koden_q1_needed.iff", itemName = "" }
		}, 
		rewards = 
		{ 
			{ rewardType = "faction", faction = "rebel", amount = 150 },
		}
	},
	{
		missionType = "assassinate", 
		primarySpawns = 
		{ 
			{ npcTemplate = "stormtrooper_groupleader", npcName = "GK-72" } 
		}, 
		secondarySpawns = 
		{
			{ npcTemplate = "stormtrooper", npcName = "Imperial Storm Trooper" },
			{ npcTemplate = "stormtrooper", npcName = "Imperial Storm Trooper" }
		},
		itemSpawns = {}, 
		rewards = 
		{ 
			{ rewardType = "faction", faction = "rebel", amount = 400 },
		}
	},
	{
		missionType = "escort", 
		primarySpawns = 
		{ 
			{ npcTemplate = "talia_reede", npcName = "Talia Reede" } 
		}, 
		secondarySpawns = {
			{ npcTemplate = "stormtrooper", npcName = "Imperial Storm Trooper" },
			{ npcTemplate = "stormtrooper", npcName = "Imperial Storm Trooper" },
			{ npcTemplate = "stormtrooper", npcName = "Imperial Storm Trooper" },
		}, 
		itemSpawns = {}, 
		rewards = 
		{ 
			{ rewardType = "faction", faction = "rebel", amount = 600 }
		}
	}

}

npcMapAaphKoden = 
{ 
	{ 
		spawnData = { npcTemplate = "aaph_koden", x = 130.0, z = 52.0, y = -5399.6, direction = -67, cellID = 0, position = STAND },
		npcNumber = 1,
		stfFile = "@static_npc/tatooine/aaph_koden",
		missions = aaph_koden_missions
	},
}

AaphKoden = ThemeParkLogic:new {
	npcMap = npcMapAaphKoden,
	className = "AaphKoden",
	screenPlayState = "aaph_koden_quest",
	planetName = "tatooine",
	distance = 600,
	faction = FACTIONREBEL

}

registerScreenPlay("AaphKoden", true)

aaph_koden_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = AaphKoden
}
aaph_koden_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = AaphKoden
}

-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not AaphKoden) then AaphKoden = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not AaphKoden.start) then
  function AaphKoden:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'AaphKoden' ====
if not AaphKoden then AaphKoden = ScreenPlay:new{ numberOfActs = 0 } end
if type(AaphKoden.start) ~= "function" and type(start) ~= "function" then
  function AaphKoden:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
