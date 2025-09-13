palo_missions =
	{
	-- Missing quest text strings. Placeholder screenplay for future (npc will spawn and say "notyet" string for now
	}

npcMapPalo =
	{
		{
			spawnData = { npcTemplate = "palo", x = 4762.9, z = 6.1, y = -4796.0, direction = -12, cellID = 0, position = STAND },
			npcNumber = 1,
			stfFile = "@static_npc/naboo/palo",
			missions = palo_missions
		}
	}

Palo = ThemeParkLogic:new {
	npcMap = npcMapPalo,
	className = "Palo",
	screenPlayState = "palo_quest",
	planetName = "naboo"
}

registerScreenPlay("Palo", true)

palo_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = Palo
}

-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not Palo) then Palo = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not Palo.start) then
  function Palo:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'Palo' ====
if not Palo then Palo = ScreenPlay:new{ numberOfActs = 0 } end
if type(Palo.start) ~= "function" and type(start) ~= "function" then
  function Palo:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
