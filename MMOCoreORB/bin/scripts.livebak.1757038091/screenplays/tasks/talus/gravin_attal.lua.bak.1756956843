gravin_attal_missions =
	{
		{
			missionType = "retrieve",
			primarySpawns =
			{
				{ npcTemplate = "smuggler_quest_gravin", npcName = "a Smuggler" }
			},
			secondarySpawns =
			{
			},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/mission/quest_item/gravin_attal_q1_needed.iff", itemName = "" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 75 },
				{ rewardType = "faction", faction = "imperial", amount = 25 }
			}
		},
		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "rebel_sgt_quest_gravin", npcName = "a Rebel Supply Sergeant" }
			},
			secondarySpawns =
			{
				{ npcTemplate = "rebel_trooper", npcName = "" },
				{ npcTemplate = "rebel_trooper", npcName = "" }
			},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/mission/quest_item/gravin_attal_q2_needed.iff", itemName = "" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 125 },
				{ rewardType = "faction", faction = "imperial", amount = 50 }
			}
		}
	}

npcMapGravinAttal =
	{
		{
			spawnData = { npcTemplate = "gravin_attal", x = -2151.1, z = 20.0, y = 2308.1, direction = 82, cellID = 0, position = STAND },
			npcNumber = 1,
			stfFile = "@static_npc/talus/talus_imperialoutpost_gravin_attal",
			missions = gravin_attal_missions
		},
	}

GravinAttal = ThemeParkLogic:new {
	npcMap = npcMapGravinAttal,
	className = "GravinAttal",
	screenPlayState = "gravin_attal_tasks",
	planetName = "talus",
	distance = 800,
	faction = FACTIONIMPERIAL,
}

registerScreenPlay("GravinAttal", true)

gravin_attal_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = GravinAttal
}
gravin_attal_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = GravinAttal
}

-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not GravinAttal) then GravinAttal = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not GravinAttal.start) then
  function GravinAttal:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'GravinAttal' ====
if not GravinAttal then GravinAttal = ScreenPlay:new{ numberOfActs = 0 } end
if type(GravinAttal.start) ~= "function" and type(start) ~= "function" then
  function GravinAttal:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
