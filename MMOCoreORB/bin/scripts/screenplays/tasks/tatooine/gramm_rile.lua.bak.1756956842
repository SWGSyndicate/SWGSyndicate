gramm_rile_missions =
	{
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "gramm_surveyor", npcName = "a Surveyor" }
			},
			secondarySpawns = {},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 200 },
			}
		},
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "gramm_surveyor", npcName = "a Farmer" }
			},
			secondarySpawns =	{},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 500 },
			}
		},
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "gramm_businessman", npcName = "a Businessman" }
			},
			secondarySpawns =	{},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 750 },
			}
		},
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "chastina_rile", npcName = "Chastina Rile" }
			},
			secondarySpawns =
			{
				{ npcTemplate = "tusken_raider", npcName = "", dead = "true" },
				{ npcTemplate = "tusken_raider", npcName = "", dead = "true" },
				{ npcTemplate = "tusken_raider", npcName = "", dead = "true" },
				{ npcTemplate = "tusken_raider", npcName = "", dead = "true" },
				{ npcTemplate = "tusken_raider", npcName = "", dead = "true" },
				{ npcTemplate = "tusken_raider", npcName = "", dead = "true" },
				{ npcTemplate = "tusken_raider", npcName = "", dead = "true" },
				{ npcTemplate = "tusken_raider", npcName = "", dead = "true" },
				{ npcTemplate = "tusken_raider", npcName = "", dead = "true" },
				{ npcTemplate = "tusken_raider", npcName = "", dead = "true" },
				{ npcTemplate = "tusken_raider", npcName = "", dead = "true" },
				{ npcTemplate = "tusken_raider", npcName = "", dead = "true" }
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 1200 },
			}
		}
	}

npcMapGrammRile =
	{
		{
			spawnData = { npcTemplate = "gramm_rile", x = 3887.3, z = 33, y = 2348.6, direction = 300, cellID = 0, position = STAND },
			worldPosition = { x = 3887, y = 2347 },
			npcNumber = 1,
			stfFile = "@static_npc/tatooine/gramm_rile",
			missions = gramm_rile_missions
		},
	}

GrammRile = ThemeParkLogic:new {
	npcMap = npcMapGrammRile,
	className = "GrammRile",
	screenPlayState = "gramm_rile_quest",
	planetName = "tatooine",
	distance = 600
}

registerScreenPlay("GrammRile", true)

gramm_rile_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = GrammRile
}
gramm_rile_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = GrammRile
}
-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not GrammRile) then GrammRile = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not GrammRile.start) then
  function GrammRile:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'GrammRile' ====
if not GrammRile then GrammRile = ScreenPlay:new{ numberOfActs = 0 } end
if type(GrammRile.start) ~= "function" and type(start) ~= "function" then
  function GrammRile:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
