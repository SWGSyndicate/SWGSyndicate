sloan_rusper_missions =
{
	{ 
		missionType = "assassinate",
		primarySpawns = 
		{ 
			{ npcTemplate = "deadly_forest_mite_guardian", npcName = "" } 
		}, 
		secondarySpawns =
		{
		
		},
		itemSpawns =
		{

		}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 75 },
			{ rewardType = "faction", faction = "naboo", amount = 10 }
		}
	},
	{
		missionType = "escort", 
		primarySpawns = 
		{ 
			{ npcTemplate = "ablest", npcName = "Ablest" }	
		}, 
		secondarySpawns =
		{
			{ npcTemplate = "nightspider_aggressor", npcName = "" },
			{ npcTemplate = "nightspider_aggressor", npcName = "" }
		}, 
		itemSpawns = 
		{

		}, 
		rewards = 
		{
			{ rewardType = "credits", amount = 75 },
			{ rewardType = "faction", faction = "naboo", amount = 10 }
		}
	},
}

npcMapSloanRusper = 
{ 
	{ 
		spawnData = { npcTemplate = "lord_sloan_rusper", x = 5065, z = 80, y = 5715, direction = 0, cellID = 0, position = STAND },
		npcNumber = 1,
		stfFile = "@static_npc/rori/rori_restuss_sloan_rusper",
		missions = sloan_rusper_missions
	},
}

SloanRusper = ThemeParkLogic:new {
	npcMap = npcMapSloanRusper,
	className = "SloanRusper",
	screenPlayState = "sloan_rusper_quest",
	planetName = "rori",
	distance = 600
}

registerScreenPlay("SloanRusper", true)

sloan_rusper_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = SloanRusper
}
sloan_rusper_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = SloanRusper
}

-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not SloanRusper) then SloanRusper = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not SloanRusper.start) then
  function SloanRusper:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'SloanRusper' ====
if not SloanRusper then SloanRusper = ScreenPlay:new{ numberOfActs = 0 } end
if type(SloanRusper.start) ~= "function" and type(start) ~= "function" then
  function SloanRusper:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
