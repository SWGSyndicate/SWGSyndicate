dalla_solo_missions =
	{
		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "yensi_kolyin", npcName = "Yensi Kolyin" }
			},
			secondarySpawns =
			{
			},
			itemSpawns =
			{
			},
			rewards =
			{
				{ rewardType = "credits", amount = 75 }
			}
		}
	}

npcMapDallaSolo =
	{
		{
			spawnData = { npcTemplate = "dalla_solo", x = 861.6, z = 31.1, y = 3838.4, direction = 175, cellID = 0, position = STAND },
			npcNumber = 1,
			stfFile = "@static_npc/corellia/dalla_solo",
			missions = dalla_solo_missions
		},
	}

DallaSolo = ThemeParkLogic:new {
	npcMap = npcMapDallaSolo,
	className = "DallaSolo",
	screenPlayState = "dalla_solo_task",
	planetName = "corellia",
	distance = 700,
}

registerScreenPlay("DallaSolo", true)

dalla_solo_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = DallaSolo
}
dalla_solo_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = DallaSolo
}

-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not DallaSolo) then DallaSolo = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not DallaSolo.start) then
  function DallaSolo:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'DallaSolo' ====
if not DallaSolo then DallaSolo = ScreenPlay:new{ numberOfActs = 0 } end
if type(DallaSolo.start) ~= "function" and type(start) ~= "function" then
  function DallaSolo:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
