melios_purl_missions =
	{
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "maikeen_storn", npcName = "Maikeen Storn" }
			},
			secondarySpawns =	{},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 1000 },
			}
		},
		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "melios_womp_rat", npcName = "Mutant Womp Rat" }
			},
			secondarySpawns = {},
			itemSpawns = {
				{ itemTemplate = "object/tangible/mission/quest_item/melios_purl_q2_needed.iff", itemName = "" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 1000 }
			}
		},
		{
			missionType = "deliver",
			primarySpawns =
			{
				{ npcTemplate = "aroy_sekun", npcName = "Aroy Sekun" }
			},
			secondarySpawns = {},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/mission/quest_item/melios_purl_q3_needed.iff", itemName = "" }
			},
			rewards =
			{
				{ rewardType = "item", itemTemplate = "object/tangible/loot/quest/quest_stimpack_a_schematic.iff" },
				{ rewardType = "credits", amount = 1000 }
			}
		},
	}

npcMapMeliosPurl =
	{
		{
			spawnData = { npcTemplate = "melios_purl", x = -1.4, z = -0.2, y = 0.6, direction = 315, cellID = 4005383, position = STAND },
			worldPosition = { x = -1314, y = -3489 },
			npcNumber = 1,
			stfFile = "@static_npc/tatooine/melios_purl",
			missions = melios_purl_missions
		},
	}

MeliosPurl = ThemeParkLogic:new {
	npcMap = npcMapMeliosPurl,
	className = "MeliosPurl",
	screenPlayState = "melios_purl_quest",
	planetName = "tatooine",
	distance = 800
}

registerScreenPlay("MeliosPurl", true)

melios_purl_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = MeliosPurl
}
melios_purl_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = MeliosPurl
}

-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not MeliosPurl) then MeliosPurl = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not MeliosPurl.start) then
  function MeliosPurl:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'MeliosPurl' ====
if not MeliosPurl then MeliosPurl = ScreenPlay:new{ numberOfActs = 0 } end
if type(MeliosPurl.start) ~= "function" and type(start) ~= "function" then
  function MeliosPurl:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
