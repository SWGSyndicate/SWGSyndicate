lob_dizz_missions =
	{
	-- Missing quest text strings. Placeholder screenplay for future (npc will spawn and say "notyet" string for now
	}

npcMapLobDizz =
	{
		{
			spawnData = { npcTemplate = "lob_dizz", x = -1965.5, z = 6.2, y = -5391.6, direction = -109, cellID = 0, position = STAND },
			npcNumber = 1,
			stfFile = "@static_npc/naboo/lob_dizz",
			missions = lob_dizz_missions
		}
	}

LobDizz = ThemeParkLogic:new {
	npcMap = npcMapLobDizz,
	className = "LobDizz",
	screenPlayState = "lob_dizz_quest",
	planetName = "naboo"
}

registerScreenPlay("LobDizz", true)

lob_dizz_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = LobDizz
}

-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not LobDizz) then LobDizz = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not LobDizz.start) then
  function LobDizz:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'LobDizz' ====
if not LobDizz then LobDizz = ScreenPlay:new{ numberOfActs = 0 } end
if type(LobDizz.start) ~= "function" and type(start) ~= "function" then
  function LobDizz:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
