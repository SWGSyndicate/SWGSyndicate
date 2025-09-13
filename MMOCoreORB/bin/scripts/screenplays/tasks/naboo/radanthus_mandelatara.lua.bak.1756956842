radanthus_mandelatara_missions =
	{
	-- Missing quest text strings. Placeholder screenplay for future (npc will spawn and say "notyet" string for now
	}

npcMapRadanthusMandelatara =
	{
		{
			spawnData = { npcTemplate = "radanthus_mandelatara", x = -4.0, z = 1.6, y = -10.7, direction = -82, cellID = 1717473, position = STAND },
			worldPosition = { x = 4645.5, y = -4890 },
			npcNumber = 1,
			stfFile = "@static_npc/naboo/radanthus_mandelatara",
			missions = radanthus_mandelatara_missions
		}
	}

RadanthusMandelatara = ThemeParkLogic:new {
	npcMap = npcMapRadanthusMandelatara,
	className = "RadanthusMandelatara",
	screenPlayState = "radanthus_mandelatara_quest",
	planetName = "naboo"
}

registerScreenPlay("RadanthusMandelatara", true)

radanthus_mandelatara_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = RadanthusMandelatara
}

-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not RadanthusMandelatara) then RadanthusMandelatara = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not RadanthusMandelatara.start) then
  function RadanthusMandelatara:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'RadanthusMandelatara' ====
if not RadanthusMandelatara then RadanthusMandelatara = ScreenPlay:new{ numberOfActs = 0 } end
if type(RadanthusMandelatara.start) ~= "function" and type(start) ~= "function" then
  function RadanthusMandelatara:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
