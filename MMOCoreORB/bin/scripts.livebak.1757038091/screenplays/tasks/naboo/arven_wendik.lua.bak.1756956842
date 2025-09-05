arven_wendik_missions =
	{
		{
			missionType = "deliver",
			primarySpawns =
			{
				{ npcTemplate = "alowi_fintz", npcName = "Alowi Fintz" }
			},
			secondarySpawns = {},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/mission/quest_item/arven_wendik_q1_needed.iff", itemName = "Forged Permits" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 25 },
			}
		},
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "grel_rommo", npcName = "Grel Rommo" }
			},
			secondarySpawns =
			{
				{ npcTemplate = "stormtrooper", npcName = "" },
				{ npcTemplate = "stormtrooper", npcName = "" },
				{ npcTemplate = "stormtrooper", npcName = "" },
			},
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
				{ npcTemplate = "needia_solum", npcName = "Needia Solum" }
			},
			secondarySpawns =
			{
				{ npcTemplate = "imperial_warrant_officer_i", npcName = "" },
				{ npcTemplate = "stormtrooper", npcName = "" },
				{ npcTemplate = "stormtrooper", npcName = "" },
				{ npcTemplate = "stormtrooper", npcName = "" },
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 100 },
			}
		}
	}

npcMapArvenWendik =
	{
		{
			spawnData = { npcTemplate = "arven_wendik", x = 4713.5, z = 330, y = -1432.5, direction = -99, cellID = 0, position = STAND },
			worldPosition = { x = 4712, y = -1432 },
			npcNumber = 1,
			stfFile = "@static_npc/naboo/arven_wendik",
			missions = arven_wendik_missions
		}
	}

ArvenWendik = ThemeParkLogic:new {
	npcMap = npcMapArvenWendik,
	className = "ArvenWendik",
	screenPlayState = "arven_wendik_quest",
	planetName = "naboo",
	distance = 600,
	faction = FACTIONREBEL
}

registerScreenPlay("ArvenWendik", true)

arven_wendik_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = ArvenWendik
}
arven_wendik_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = ArvenWendik
}

-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not ArvenWendik) then ArvenWendik = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not ArvenWendik.start) then
  function ArvenWendik:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'ArvenWendik' ====
if not ArvenWendik then ArvenWendik = ScreenPlay:new{ numberOfActs = 0 } end
if type(ArvenWendik.start) ~= "function" and type(start) ~= "function" then
  function ArvenWendik:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
