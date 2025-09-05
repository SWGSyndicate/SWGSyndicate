tolan_nokkar_missions =
	{
		{
			missionType = "hunt",
			huntTarget = { npcTemplate = "tusken_king_quest", npcName = "A Tusken King", waypointX = -5320, waypointY = -4442 },
			rewards =
			{
				{ rewardType = "credits", amount = 20000 },
			}
		},

	}

npcMapTolanNokkar =
	{
		{
			spawnData = { npcTemplate = "tolan_nokkar", x = -5477, z = 30.0, y = -3881, direction = 118, cellID = 0, position = STAND },
			worldPosition = { x = -5477, y = -3881 },
			npcNumber = 1,
			stfFile = "@spawning/static_npc/tusken_village_quest_npc",
			missions = tolan_nokkar_missions
		},
	}

TolanNokkar = ThemeParkLogic:new {
	npcMap = npcMapTolanNokkar,
	className = "TolanNokkar",
	screenPlayState = "tolan_nokkar_quest",
	planetName = "tatooine"
}

registerScreenPlay("TolanNokkar", true)

tolan_nokkar_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = TolanNokkar
}
tolan_nokkar_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = TolanNokkar
}
-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not TolanNokkar) then TolanNokkar = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not TolanNokkar.start) then
  function TolanNokkar:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'TolanNokkar' ====
if not TolanNokkar then TolanNokkar = ScreenPlay:new{ numberOfActs = 0 } end
if type(TolanNokkar.start) ~= "function" and type(start) ~= "function" then
  function TolanNokkar:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
