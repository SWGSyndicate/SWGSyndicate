generic_noble_missions =
	{
		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "noble_target_heirloom", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/loot/misc/glass_heirloom_s01.iff", itemName = "An Heirloom Drinking Glass" }
			},
			rewards =
			{
				{ rewardType = "item", itemTemplate = "object/tangible/loot/misc/basket_expensive_s01.iff" }
			}
		},
		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "noble_target_ledger", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/loot/misc/ledger_s01.iff", itemName = "A Ledger" }
			},
			rewards =
			{
				{ rewardType = "item", itemTemplate = "object/tangible/loot/misc/proclamation_s01.iff" }
			}
		},
		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "noble_target_hyperdrive", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/loot/misc/hyperdrive_part_s01.iff", itemName = "Hyperdrive Part" }
			},
			rewards =
			{
				{ rewardType = "item", itemTemplate = "object/tangible/loot/misc/picture_handheld_s02.iff" }
			}
		},
		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "noble_target_bowl", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/loot/misc/bowl_s01.iff", itemName = "A Decorative Bowl" }
			},
			rewards =
			{
				{ rewardType = "item", itemTemplate = "object/tangible/loot/misc/recording_rod_s01.iff" }
			}
		},
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "noble_target", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "item", itemTemplate = "object/tangible/loot/misc/basket_expensive_s01.iff" }
			}
		},
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "noble_target", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "item", itemTemplate = "object/tangible/loot/misc/proclamation_s01.iff" }
			}
		},
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "noble_target", npcName = "random" }
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
				{ npcTemplate = "noble_target", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "item", itemTemplate = "object/tangible/loot/misc/recording_rod_s01.iff" }
			}
		},
		{
			missionType = "deliver",
			primarySpawns =
			{
				{ npcTemplate = "noble_target", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/loot/misc/camera_s01.iff", itemName = "A Camera" }
			},
			rewards =
			{
				{ rewardType = "item", itemTemplate = "object/tangible/loot/misc/firework_dud_s1.iff" }
			}
		},
		{
			missionType = "deliver",
			primarySpawns =
			{
				{ npcTemplate = "noble_target", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/loot/misc/briefcase_s01.iff", itemName = "A Locked Briefcase" }
			},
			rewards =
			{
				{ rewardType = "item", itemTemplate = "object/tangible/loot/misc/firework_dud_s2.iff" }
			}
		},
		{
			missionType = "deliver",
			primarySpawns =
			{
				{ npcTemplate = "noble_target", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/loot/misc/hyperdrive_part_s01.iff", itemName = "Hyperdrive Part" }
			},
			rewards =
			{
				{ rewardType = "item", itemTemplate = "object/tangible/loot/misc/picture_handheld_s01.iff" }
			}
		},
		{
			missionType = "deliver",
			primarySpawns =
			{
				{ npcTemplate = "noble_target", npcName = "random" }
			},
			secondarySpawns = {},
			itemSpawns =
			{
				{ itemTemplate = "object/tangible/loot/misc/bowl_s01.iff", itemName = "A Decorative Bowl" }
			},
			rewards =
			{
				{ rewardType = "item", itemTemplate = "object/tangible/loot/misc/recording_rod_s01.iff" }
			}
		}
	}

npcMapGenericNoble =
	{
		{
			npcNumber = 1,
			stfFile = "@random_quest/noble",
			missions = generic_noble_missions
		}
	}

GenericNoble = ThemeParkLogic:new {
	genericGiver = true,
	npcMap = npcMapGenericNoble,
	className = "GenericNoble",
	screenPlayState = "generic_noble_quest",
	distance = 1000,
}

registerScreenPlay("GenericNoble", true)

generic_noble_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = GenericNoble
}
generic_noble_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = GenericNoble
}

-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not GenericNoble) then GenericNoble = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not GenericNoble.start) then
  function GenericNoble:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'GenericNoble' ====
if not GenericNoble then GenericNoble = ScreenPlay:new{ numberOfActs = 0 } end
if type(GenericNoble.start) ~= "function" and type(start) ~= "function" then
  function GenericNoble:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
