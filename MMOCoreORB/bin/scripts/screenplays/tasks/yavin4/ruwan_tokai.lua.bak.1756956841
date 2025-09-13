ruwan_tokai_missions =
	{
		{
			missionType = "deliver",
			primarySpawns =
			{
				{ npcTemplate = "ruwan_warrant_officer", npcName = "" }
			},
			secondarySpawns =
			{
				{ npcTemplate = "ruwan_thug", npcName = "" },
				{ npcTemplate = "ruwan_thug", npcName = "" }
			},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/mission/quest_item/ruwan_tokai_q1_needed.iff", itemName = "" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 40 },
				{ rewardType = "faction", faction = "imperial", amount = 10 },
			}
		},
		{
			missionType = "retrieve",
			primarySpawns =
			{
				{ npcTemplate = "ruwan_lieutenant_colonel", npcName = "" }
			},
			secondarySpawns =
			{
				{ npcTemplate = "rebel_first_lieutenant", npcName = "" },
				{ npcTemplate = "rebel_commando", npcName = "" },
				{ npcTemplate = "rebel_commando", npcName = "" }
			},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/mission/quest_item/ruwan_tokai_q2_needed.iff", itemName = "" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 50 },
				{ rewardType = "faction", faction = "imperial", amount = 10 },
			}
		}
	}

npcMapRuwanTokai =
	{
		{
			spawnData = { npcTemplate = "ruwan_tokai", x = -11.7, z = 2.0, y = 71.1, direction = -179, cellID = 3465355, position = STAND },
			worldPosition = { x = -3108, y = -2976 },
			npcNumber = 1,
			stfFile = "@static_npc/yavin/yavin_massassi_ruwan_tokai",
			missions = ruwan_tokai_missions
		},

	}

RuwanTokai = ThemeParkLogic:new {
	npcMap = npcMapRuwanTokai,
	className = "RuwanTokai",
	screenPlayState = "ruwan_tokai_quest",
	planetName = "yavin4",
	distance = 500,
	faction = FACTIONIMPERIAL
}

registerScreenPlay("RuwanTokai", true)

ruwan_tokai_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = RuwanTokai
}
ruwan_tokai_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = RuwanTokai
}

-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not RuwanTokai) then RuwanTokai = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not RuwanTokai.start) then
  function RuwanTokai:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'RuwanTokai' ====
if not RuwanTokai then RuwanTokai = ScreenPlay:new{ numberOfActs = 0 } end
if type(RuwanTokai.start) ~= "function" and type(start) ~= "function" then
  function RuwanTokai:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
