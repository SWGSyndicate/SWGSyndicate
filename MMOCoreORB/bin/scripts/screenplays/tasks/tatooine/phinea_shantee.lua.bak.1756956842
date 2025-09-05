phinea_shantee_missions =
	{
		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "wookiee_brawler", npcName = "Chalurrekk" }
			},
			secondarySpawns =	{},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 30 },
				{ rewardType = "loot",  lootGroup = "task_reward_phinea_shantee_q1" }
			}
		},
		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "korrkoressk", npcName = "Korrkoressk" }
			},
			secondarySpawns =	{},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 30 },
				{ rewardType = "loot",  lootGroup = "task_reward_phinea_shantee_q2" }
			}
		}
	}

npcMapPhineaShantee =
	{
		{
			spawnData = { npcTemplate = "phinea_shantee", x = -10.3, z = -0.9, y = -18.7, direction = 27, cellID = 1028652, position = STAND },
			worldPosition = { x = -1420, y = -3682 },
			npcNumber = 1,
			stfFile = "@static_npc/tatooine/phinea_shantee",
			missions = phinea_shantee_missions
		},
	}

PhineaShantee = ThemeParkLogic:new {
	npcMap = npcMapPhineaShantee,
	className = "PhineaShantee",
	screenPlayState = "phinea_shantee_quest",
	planetName = "tatooine",
	distance = 800
}

registerScreenPlay("PhineaShantee", true)

phinea_shantee_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = PhineaShantee
}
phinea_shantee_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = PhineaShantee
}
-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not PhineaShantee) then PhineaShantee = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not PhineaShantee.start) then
  function PhineaShantee:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'PhineaShantee' ====
if not PhineaShantee then PhineaShantee = ScreenPlay:new{ numberOfActs = 0 } end
if type(PhineaShantee.start) ~= "function" and type(start) ~= "function" then
  function PhineaShantee:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
