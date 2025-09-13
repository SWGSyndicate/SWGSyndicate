lx_466_missions =
{
	{
		missionType = "assassinate", 
		primarySpawns = 
		{ 
			{ npcTemplate = "lx_466_rebel_commander", npcName = "Ivo (a Stranded Rebel Commander)" } 
		}, 
		secondarySpawns = 
		{
				{ npcTemplate = "lx_466_rebel_scout", npcName = "Casa (a Stranded Rebel Scout)" },
				{ npcTemplate = "lx_466_rebel_scout", npcName = "Parana (a Stranded Rebel Scout)" }
		},
		itemSpawns = {}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 480 },		
			{ rewardType = "faction", faction = "imperial", amount = 300 },
		}
	},
	{ 
		missionType = "deliver",
		primarySpawns = 
		{ 
			{ npcTemplate = "lx_466_dantari", npcName = "Drak (a Dantari tribesman)" } 
		}, 
		secondarySpawns = 
		{
				{ npcTemplate = "huurton_huntress", npcName = "(a huurton huntress)" },
				{ npcTemplate = "huurton_bloodhunter", npcName = "(a huurton bloodhunter)" }
		},
		itemSpawns = 
		{
			{ itemTemplate = "object/tangible/mission/quest_item/lx466_q2_needed.iff", itemName = "Rations" }
		}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 620 },		
			{ rewardType = "faction", faction = "imperial", amount = 400 },
		}
	},	
	{ 
		missionType = "deliver",
		primarySpawns = 
		{ 
			{ npcTemplate = "lx_466_imperial_courier", npcName = "Re (an Imperial Courier)" } 
		}, 
		secondarySpawns = 
		{
				{ npcTemplate = "mercenary_aggro", npcName = "random" },				
				{ npcTemplate = "mercenary_aggro", npcName = "random" },
				{ npcTemplate = "mercenary_aggro", npcName = "random" }
		},
		itemSpawns = 
		{
			{ itemTemplate = "object/tangible/mission/quest_item/lx466_q3_needed.iff", itemName = "recording rod" }
		}, 
		rewards = 
		{ 
			{ rewardType = "credits", amount = 745 },		
			{ rewardType = "faction", faction = "imperial", amount = 500 },
		}
	}	
}

npcMapLX466 = 
{ 
	{ 
		spawnData = { npcTemplate = "lx_466", x = -4181.94, z = 3, y = -2385.99, direction = 345.343, cellID = 0, position = STAND }, 
		npcNumber = 1,   
		stfFile = "@static_npc/dantooine/lx_466", 
		missions = lx_466_missions 
	},
}

LX466 = ThemeParkLogic:new {
	npcMap = npcMapLX466,
	className = "LX466",
	screenPlayState = "lx_466_quest",
	planetName = "dantooine",
	distance = 1000,
	faction = FACTIONIMPERIAL
}

registerScreenPlay("LX466", true)

lx_466_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = LX466
}
lx_466_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = LX466
}

-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not LX466) then LX466 = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not LX466.start) then
  function LX466:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'LX466' ====
if not LX466 then LX466 = ScreenPlay:new{ numberOfActs = 0 } end
if type(LX466.start) ~= "function" and type(start) ~= "function" then
  function LX466:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
