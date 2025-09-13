bab_esrus_missions =
	{
	-- Missing quest text strings. Placeholder screenplay for future (npc will spawn and say "notyet" string for now
	}

npcMapBabEsrus =
	{
		{
			spawnData = { npcTemplate = "bab_esrus", x = 4836.8, z = 3.8, y = -4836.3, direction = -124, cellID = 0, position = STAND },
			npcNumber = 1,
			stfFile = "@static_npc/naboo/bab_esrus",
			missions = bab_esrus_missions
		}
	}

BabEsrus = ThemeParkLogic:new {
	npcMap = npcMapBabEsrus,
	className = "BabEsrus",
	screenPlayState = "bab_esrus_quest",
	planetName = "naboo"
}

registerScreenPlay("BabEsrus", true)

bab_esrus_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = BabEsrus
}

-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not BabEsrus) then BabEsrus = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not BabEsrus.start) then
  function BabEsrus:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'BabEsrus' ====
if not BabEsrus then BabEsrus = ScreenPlay:new{ numberOfActs = 0 } end
if type(BabEsrus.start) ~= "function" and type(start) ~= "function" then
  function BabEsrus:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
