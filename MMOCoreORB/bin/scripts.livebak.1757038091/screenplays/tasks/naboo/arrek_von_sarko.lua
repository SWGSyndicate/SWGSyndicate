arrek_von_sarko_missions =
	{
	-- Missing quest text strings. Placeholder screenplay for future (npc will spawn and say "notyet" string for now
	}

npcMapArrekVonSarko =
	{
		{
			spawnData = { npcTemplate = "arrek_von_sarko", x = 10.3, z = -0.9, y = 3.9, direction = -137, cellID = 111, position = STAND },
			worldPosition = { x = 4878.2, y = -4631 },
			npcNumber = 1,
			stfFile = "@static_npc/naboo/arrek_von_sarko",
			missions = arrek_von_sarko_missions
		}
	}

ArrekVonSarko = ThemeParkLogic:new {
	npcMap = npcMapArrekVonSarko,
	className = "ArrekVonSarko",
	screenPlayState = "arrek_von_sarko_quest",
	planetName = "naboo"
}

registerScreenPlay("ArrekVonSarko", true)

arrek_von_sarko_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = ArrekVonSarko
}

-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not ArrekVonSarko) then ArrekVonSarko = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not ArrekVonSarko.start) then
  function ArrekVonSarko:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'ArrekVonSarko' ====
if not ArrekVonSarko then ArrekVonSarko = ScreenPlay:new{ numberOfActs = 0 } end
if type(ArrekVonSarko.start) ~= "function" and type(start) ~= "function" then
  function ArrekVonSarko:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
