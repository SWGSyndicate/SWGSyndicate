fixer_missions =
	{
		{
			missionType = "deliver",
			primarySpawns =
			{
				{ npcTemplate = "vezz_kommani", npcName = "Vezz Kommani" }
			},
			secondarySpawns =	{},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/mission/quest_item/fixer_q1_needed.iff", itemName = "Power Coupling" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 1000 }
			}
		},
		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "tusken_raider", npcName = "a Tusken Raider" }
			},
			secondarySpawns =	{},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 2000 }
			}
		},
		{
			missionType = "deliver",
			primarySpawns =
			{
				{ npcTemplate = "camie", npcName = "Camie" }
			},
			secondarySpawns =	
			{
				{ npcTemplate = "dewback", npcName = "a Dewback" }
			},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/mission/quest_item/fixer_q3_needed.iff", itemName = "Converter coil" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 3000 }
			}
		}
	}

npcMapFixer =
	{
		{
			spawnData = { npcTemplate = "fixer", x = 1.9, z = 0.4, y = -9.1, direction = 90, cellID = 3355387, position = STAND },
			worldPosition = { x = -170, y = -5300 },
			npcNumber = 1,
			stfFile = "@static_npc/tatooine/fixer",
			missions = fixer_missions
		},
	}

Fixer = ThemeParkLogic:new {
	npcMap = npcMapFixer,
	className = "Fixer",
	screenPlayState = "fixer_quest",
	planetName = "tatooine",
	distance = 600
}

registerScreenPlay("Fixer", true)

fixer_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = Fixer
}
fixer_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = Fixer
}

-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not Fixer) then Fixer = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not Fixer.start) then
  function Fixer:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'Fixer' ====
if not Fixer then Fixer = ScreenPlay:new{ numberOfActs = 0 } end
if type(Fixer.start) ~= "function" and type(start) ~= "function" then
  function Fixer:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
