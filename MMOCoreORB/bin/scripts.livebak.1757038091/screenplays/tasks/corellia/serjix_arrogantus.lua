serjix_arrogantus_missions =
	{
		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "gleeb_tchotle", npcName = "Gleeb Tchotle" }
			},
			secondarySpawns =
			{
			},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/mission/quest_item/serjix_arrogantus_q1_needed.iff", itemName = "" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 50 }
			}
		}
	}

npcMapSerjixArrogantus =
	{
		{
			spawnData = { npcTemplate = "serji_x_arrogantus", x = -201.4, z = 45.5, y = 4576.9, direction = -87, cellID = 0, position = STAND },
			npcNumber = 1,
			stfFile = "@static_npc/corellia/serji_x_arrogantus",
			missions = serjix_arrogantus_missions
		},
	}

SerjixArrogantus = ThemeParkLogic:new {
	npcMap = npcMapSerjixArrogantus,
	className = "SerjixArrogantus",
	screenPlayState = "serjix_arrogantus_task",
	planetName = "corellia",
	distance = 700,
}

registerScreenPlay("SerjixArrogantus", true)

serjix_arrogantus_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = SerjixArrogantus
}
serjix_arrogantus_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = SerjixArrogantus
}

-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not SerjixArrogantus) then SerjixArrogantus = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not SerjixArrogantus.start) then
  function SerjixArrogantus:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'SerjixArrogantus' ====
if not SerjixArrogantus then SerjixArrogantus = ScreenPlay:new{ numberOfActs = 0 } end
if type(SerjixArrogantus.start) ~= "function" and type(start) ~= "function" then
  function SerjixArrogantus:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
