sg_567_missions =
{
	{ 
		missionType = "assassinate",
		primarySpawns = 
		{ 
			{ npcTemplate = "sg_567_droideka", npcName = "(a Malfunctioning Droideka)" } 
		}, 
		secondarySpawns = {},
		itemSpawns = 
		{}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 5000 },		
			{ rewardType = "faction", faction = "imperial", amount = 400 },
		}
	},
	{
		missionType = "escort", 
		primarySpawns = 
		{ 
			{ npcTemplate = "sg_619", npcName = "SG-619" } 
		}, 
		secondarySpawns = 
		{				
				{ npcTemplate = "rebel_specforce_sergeant", npcName = "random" },
				{ npcTemplate = "specforce_major", npcName = "random" }
		},
		itemSpawns = {}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 3000 },		
			{ rewardType = "faction", faction = "imperial", amount = 600 },
		}
	}
}

npcMapSG567 = 
{ 
	{ 
		spawnData = { npcTemplate = "sg_567", x = -4216.85, z = 3, y = -2434.33, direction = 312.817, cellID = 0, position = STAND }, 
		npcNumber = 1,   
		stfFile = "@static_npc/dantooine/sg_567", 
		missions = sg_567_missions 
	},
}

SG567 = ThemeParkLogic:new {
	npcMap = npcMapSG567,
	className = "SG567",
	screenPlayState = "sg_567_quest",
	planetName = "dantooine",
	distance = 1000,
	faction = FACTIONIMPERIAL
}

registerScreenPlay("SG567", true)

sg_567_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = SG567
}
sg_567_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = SG567
}

-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not SG567) then SG567 = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not SG567.start) then
  function SG567:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'SG567' ====
if not SG567 then SG567 = ScreenPlay:new{ numberOfActs = 0 } end
if type(SG567.start) ~= "function" and type(start) ~= "function" then
  function SG567:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
