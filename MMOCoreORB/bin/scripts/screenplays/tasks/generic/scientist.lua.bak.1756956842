generic_scientist_missions =
	{
		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "scientist_target_robber", npcName = "random" }
			},
			secondarySpawns = 
			{
				{ npcTemplate = "thug", npcName = "a Thug" }
			},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/loot/misc/artifact_rare_s01.iff", itemName = "A Rare Artifact" }
			},
			rewards =
			{
				{ rewardType = "item", itemTemplate = "object/tangible/loot/misc/insects_rare_s01.iff" }
			}
		},
		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "scientist_target_spy", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/loot/misc/cage_s01.iff", itemName = "An Empty Cage" }
			},
			rewards =
			{
				{ rewardType = "item", itemTemplate = "object/tangible/loot/misc/picture_handheld_s01.iff" }
			}
		},
		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "criminal", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "item", itemTemplate = "object/tangible/loot/misc/insects_rare_s01.iff" }
			}
		},
		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "scientist_target_crazed_scientist", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "item", itemTemplate = "object/tangible/loot/misc/picture_handheld_s01.iff" }
			}
		},
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "scientist_target_scientist", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "item", itemTemplate = "object/tangible/loot/misc/insects_rare_s01.iff" }
			}
		},
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "scientist_target_scientist", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "item", itemTemplate = "object/tangible/loot/misc/picture_handheld_s01.iff" }
			}
		}
	}

npcMapGenericScientist =
	{
		{
			npcNumber = 1,
			stfFile = "@random_quest/scientist",
			missions = generic_scientist_missions
		}
	}

GenericScientist = ThemeParkLogic:new {
	genericGiver = true,
	npcMap = npcMapGenericScientist,
	className = "GenericScientist",
	screenPlayState = "generic_scientist_quest",
	distance = 1000,
}

registerScreenPlay("GenericScientist", true)

generic_scientist_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = GenericScientist
}
generic_scientist_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = GenericScientist
}

-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not GenericScientist) then GenericScientist = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not GenericScientist.start) then
  function GenericScientist:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'GenericScientist' ====
if not GenericScientist then GenericScientist = ScreenPlay:new{ numberOfActs = 0 } end
if type(GenericScientist.start) ~= "function" and type(start) ~= "function" then
  function GenericScientist:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
