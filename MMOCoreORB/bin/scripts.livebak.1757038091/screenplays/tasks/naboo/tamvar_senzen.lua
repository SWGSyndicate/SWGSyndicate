tamvar_senzen_missions =
	{
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "shandara", npcName = "Shandara" }
			},
			secondarySpawns = {},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 50 },
			}
		},
	}

npcMapTamvarSenzen =
	{
		{
			spawnData = { npcTemplate = "tamvar_senzen", x = 20.9, z = 1.3, y = 10.4, direction = 173, cellID = 1741478, position = STAND },
			worldPosition = { x = 5188, y = 6819 },
			npcNumber = 1,
			stfFile = "@static_npc/naboo/tamvar_senzen",
			missions = tamvar_senzen_missions
		},

	}

TamvarSenzen = ThemeParkLogic:new {
	npcMap = npcMapTamvarSenzen,
	className = "TamvarSenzen",
	screenPlayState = "tamvar_senzen_quest",
	planetName = "naboo",
	distance = 600
}

registerScreenPlay("TamvarSenzen", true)

tamvar_senzen_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = TamvarSenzen
}
tamvar_senzen_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = TamvarSenzen
}

-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not TamvarSenzen) then TamvarSenzen = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not TamvarSenzen.start) then
  function TamvarSenzen:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'TamvarSenzen' ====
if not TamvarSenzen then TamvarSenzen = ScreenPlay:new{ numberOfActs = 0 } end
if type(TamvarSenzen.start) ~= "function" and type(start) ~= "function" then
  function TamvarSenzen:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
