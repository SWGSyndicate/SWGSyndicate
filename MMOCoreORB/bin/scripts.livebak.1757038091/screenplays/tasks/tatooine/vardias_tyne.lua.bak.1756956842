vardias_tyne_missions =
{
	{ 
		missionType = "assassinate",
		primarySpawns = 
		{ 
			{ npcTemplate = "rhalia_jinsari", npcName = "Rhalia Jinsari" } 
		}, 
		secondarySpawns = {},
		itemSpawns = {}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 4000 } 
		}
	},
	{
		missionType = "deliver", 
		primarySpawns = 
		{ 
			{ npcTemplate = "chonar", npcName = "Brother Chonar" } 
		}, 
		secondarySpawns = {}, 
		itemSpawns = 
		{
			{ itemTemplate = "object/tangible/mission/quest_item/vardias_tyne_q2_needed.iff", itemName = "Bantha Statue" }
		}, 
		rewards = 
		{ 
			{ rewardType = "loot", lootGroup = "task_reward_vardias_tyne" },
		}
	}
}

npcMapVardiasTyne = 
{ 
	{ 
		spawnData = { npcTemplate = "vardias_tyne", x = 104, z = 44.1, y = -5382, direction = 96, cellID = 0, position = STAND },
		npcNumber = 1,
		stfFile = "@static_npc/tatooine/vardias_tyne",
		missions = vardias_tyne_missions 
	},
}

VardiasTyne = ThemeParkLogic:new {
	npcMap = npcMapVardiasTyne,
	className = "VardiasTyne",
	screenPlayState = "vardias_tyne_quest",
	planetName = "tatooine",
	distance = 600
}

registerScreenPlay("VardiasTyne", true)

vardias_tyne_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = VardiasTyne
}
vardias_tyne_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = VardiasTyne
}

-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not VardiasTyne) then VardiasTyne = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not VardiasTyne.start) then
  function VardiasTyne:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'VardiasTyne' ====
if not VardiasTyne then VardiasTyne = ScreenPlay:new{ numberOfActs = 0 } end
if type(VardiasTyne.start) ~= "function" and type(start) ~= "function" then
  function VardiasTyne:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
