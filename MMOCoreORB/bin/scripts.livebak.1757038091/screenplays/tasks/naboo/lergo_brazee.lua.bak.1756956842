lergo_brazee_missions =
	{
		{
			missionType = "deliver",
			primarySpawns =
			{
				{ npcTemplate = "breggs_kertani", npcName = "Breggs Ker'tani" }
			},
			secondarySpawns = {},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/mission/quest_item/lergo_brazee_q1_needed.iff", itemName = "Pilot's Passcodes" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 50 },
			}
		},
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "slym_shudee", npcName = "Slym Shu'dee" }
			},
			secondarySpawns = {},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 50 },
			}
		},
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "linay_sindir", npcName = "Linay Sind'ir" }
			},
			secondarySpawns =
			{
				{ npcTemplate = "gungan_thug", npcName = "Gungan Thug" },
				{ npcTemplate = "gungan_thug", npcName = "Gungan Thug" },
				{ npcTemplate = "gungan_thug", npcName = "Gungan Thug" },
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 50 },
			}
		},
		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "big_blismo", npcName = "Big Blismo" }
			},
			secondarySpawns =
			{
				{ npcTemplate = "gungan_thug", npcName = "Gungan Thug" },
				{ npcTemplate = "gungan_thug", npcName = "Gungan Thug" },
				{ npcTemplate = "gungan_thug", npcName = "Gungan Thug" }
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 100 },
			}
		},
	}

npcMapLergoBrazee =
	{
		{
			spawnData = { npcTemplate = "lergo_brazee", x = 4.0, z = -0.9, y = -4.8, direction = -7, cellID = 5, position = STAND },
			worldPosition = { x = 2103, y = 2531 },
			npcNumber = 1,
			stfFile = "@static_npc/naboo/lergo_brazee",
			missions = lergo_brazee_missions
		}
	}

LergoBrazee = ThemeParkLogic:new {
	npcMap = npcMapLergoBrazee,
	className = "LergoBrazee",
	screenPlayState = "lergo_brazee_quest",
	planetName = "naboo",
	distance = 600,
}

registerScreenPlay("LergoBrazee", true)

lergo_brazee_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = LergoBrazee
}
lergo_brazee_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = LergoBrazee
}

-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not LergoBrazee) then LergoBrazee = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not LergoBrazee.start) then
  function LergoBrazee:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'LergoBrazee' ====
if not LergoBrazee then LergoBrazee = ScreenPlay:new{ numberOfActs = 0 } end
if type(LergoBrazee.start) ~= "function" and type(start) ~= "function" then
  function LergoBrazee:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
