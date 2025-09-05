boss_nass_missions =
	{
		{
			missionType = "deliver",
			primarySpawns =
			{
				{ npcTemplate = "pol_revver", npcName = "Pol Revver" }
			},
			secondarySpawns =
			{
				{ npcTemplate = "stormtrooper", npcName = "" },
				{ npcTemplate = "stormtrooper", npcName = "" },
			},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/mission/quest_item/nass_q1_needed.iff", itemName = "Datadisc" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 50 },
			}
		},
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "jaanie", npcName = "Jaanie" }
			},
			secondarySpawns = {},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 50 },
			}
		},
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "fassa", npcName = "Fassa" }
			},
			secondarySpawns =
			{
				{ npcTemplate = "stormtrooper", npcName = "" },
				{ npcTemplate = "stormtrooper", npcName = "" },
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 150 },
			}
		},
		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "stormtrooper_squad_leader", npcName = "Stormtrooper Squad Leader" }
			},
			secondarySpawns =
			{
				{ npcTemplate = "stormtrooper", npcName = "" },
				{ npcTemplate = "stormtrooper", npcName = "" },
				{ npcTemplate = "stormtrooper", npcName = "" },
				{ npcTemplate = "stormtrooper", npcName = "" },
				{ npcTemplate = "stormtrooper", npcName = "" }
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 500 },
			}
		},
	}

npcMapBossNass =
	{
		{
			spawnData = { npcTemplate = "boss_nass", x = -1991, z = 5.3, y = -5422, direction = -114, cellID = 0, position = STAND },
			worldPosition = { x = -1991, y = -5422 },
			npcNumber = 1,
			stfFile = "@static_npc/naboo/boss_nass",
			missions = boss_nass_missions
		}
	}

BossNass = ThemeParkLogic:new {
	npcMap = npcMapBossNass,
	className = "BossNass",
	screenPlayState = "boss_nass_quest",
	planetName = "naboo",
	distance = 1000,
	faction = FACTIONREBEL
}

registerScreenPlay("BossNass", true)

boss_nass_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = BossNass
}
boss_nass_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = BossNass
}

-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not BossNass) then BossNass = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not BossNass.start) then
  function BossNass:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'BossNass' ====
if not BossNass then BossNass = ScreenPlay:new{ numberOfActs = 0 } end
if type(BossNass.start) ~= "function" and type(start) ~= "function" then
  function BossNass:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
