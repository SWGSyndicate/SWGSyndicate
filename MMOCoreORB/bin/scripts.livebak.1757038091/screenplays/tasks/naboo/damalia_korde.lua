damalia_korde_missions =
{
	{ 
		missionType = "retrieve",
		primarySpawns = 
		{ 
			{ npcTemplate = "bor_ting", npcName = "Bor Ting" } 
		}, 
		secondarySpawns = {},
		itemSpawns =
		{
			{ itemTemplate = "object/tangible/mission/quest_item/damalia_korde_q1_needed.iff", itemName = "" }
		}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 25 } 
		}
	}
}

npcMapDamaliaKorde = 
{ 
	{ 
		spawnData = { npcTemplate = "damalia_korde", x = 5137.6, z = 346.5, y = -1531.5, direction = 34, cellID = 0, position = STAND }, 
		npcNumber = 1,   
		stfFile = "@static_npc/naboo/damalia_korde", 
		missions = damalia_korde_missions 
	},
}

DamaliaKorde = ThemeParkLogic:new {
	npcMap = npcMapDamaliaKorde,
	className = "DamaliaKorde",
	screenPlayState = "damalia_korde_task",
	planetName = "naboo",
	distance = 800,
}

registerScreenPlay("DamaliaKorde", true)

damalia_korde_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = DamaliaKorde
}
damalia_korde_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = DamaliaKorde
}

-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not DamaliaKorde) then DamaliaKorde = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not DamaliaKorde.start) then
  function DamaliaKorde:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'DamaliaKorde' ====
if not DamaliaKorde then DamaliaKorde = ScreenPlay:new{ numberOfActs = 0 } end
if type(DamaliaKorde.start) ~= "function" and type(start) ~= "function" then
  function DamaliaKorde:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
