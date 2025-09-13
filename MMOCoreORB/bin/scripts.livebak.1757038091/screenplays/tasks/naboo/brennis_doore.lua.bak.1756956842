brennis_doore_missions =
	{
		{
			missionType = "deliver",
			primarySpawns =
			{
				{ npcTemplate = "grandmother_quest_brennis", npcName = "Mia Magansitty" }
			},
			secondarySpawns =
			{

			},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/mission/quest_item/brennis_doore_q1_needed.iff", itemName = "" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 50 }
			}
		},
		{
			missionType = "deliver",
			primarySpawns =
			{
				{ npcTemplate = "ole_friend_quest_brennis", npcName = "Temir Tonnalo" }
			},
			secondarySpawns =
			{

			},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/mission/quest_item/brennis_doore_q2_needed.iff", itemName = "" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 75 }
			}
		},
		{
			missionType = "deliver",
			primarySpawns =
			{
				{ npcTemplate = "imperial_rep_quest_brennis", npcName = "Rille Nuder" }
			},
			secondarySpawns =
			{

			},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/mission/quest_item/brennis_doore_q3_needed.iff", itemName = "" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 100 }
			}
		}
	}

npcMapBrennisDoore =
	{
		{
			spawnData = { npcTemplate = "brennis_doore", x = 1740.0, z = 12.0, y = 2657.0, direction = 138, cellID = 0, position = STAND },
			npcNumber = 1,
			stfFile = "@static_npc/naboo/brennis_doore",
			missions = brennis_doore_missions
		},
	}

BrennisDoore = ThemeParkLogic:new {
	npcMap = npcMapBrennisDoore,
	className = "BrennisDoore",
	screenPlayState = "brennis_doore_task",
	planetName = "naboo",
	distance = 1000,
}

registerScreenPlay("BrennisDoore", true)

brennis_doore_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = BrennisDoore
}
brennis_doore_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = BrennisDoore
}

-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not BrennisDoore) then BrennisDoore = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not BrennisDoore.start) then
  function BrennisDoore:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'BrennisDoore' ====
if not BrennisDoore then BrennisDoore = ScreenPlay:new{ numberOfActs = 0 } end
if type(BrennisDoore.start) ~= "function" and type(start) ~= "function" then
  function BrennisDoore:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
