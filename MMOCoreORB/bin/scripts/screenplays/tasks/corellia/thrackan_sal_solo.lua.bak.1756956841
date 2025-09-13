thrackan_sal_solo_missions =
	{
		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "selonian_separatist", npcName = "a Selonian terrorist" }
			},
			secondarySpawns =	{},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 100 }
			}
		},
		{
			missionType = "escort",
			primarySpawns =
			{
				{ npcTemplate = "jermo_tharrn", npcName = "Jermo Tharrn" }
			},
			secondarySpawns =	
			{
				{ npcTemplate = "selonian_sentinel", npcName = "a Selonian sentinel" },
				{ npcTemplate = "selonian_sentinel", npcName = "a Selonian sentinel" }
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 200 }
			}
		},
		{
			missionType = "confiscate",
			primarySpawns =
			{
				{ npcTemplate = "tormyll_fassoola", npcName = "Tormyll Fassoola" }
			},
			secondarySpawns =	{},
			itemSpawns = 
			{
				{ itemTemplate = "object/tangible/mission/quest_item/thrackan_salsolo_q3_needed.iff", itemName = "Diktat's Death Squad" }
			},
			rewards =
			{
				{ rewardType = "credits", amount = 400 }
			}
		},
		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "selonian_champion", npcName = "a Selonian leader" }
			},
			secondarySpawns =	
			{
				{ npcTemplate = "selonian_sentinel", npcName = "a Selonian sentinel" },
				{ npcTemplate = "selonian_sentinel", npcName = "a Selonian sentinel" },
				{ npcTemplate = "selonian_sentinel", npcName = "a Selonian sentinel" }
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 800 }
			}
		}
	}

npcMapThrackanSalSolo =
	{
		{
			spawnData = { npcTemplate = "thrackan_sal_solo", x = 0.4, z = 1.2, y = 0.8, direction = 0, cellID = 1855483, position = STAND },
			worldPosition = { x = -275, y = -4720 },
			npcNumber = 1,
			stfFile = "@static_npc/corellia/thrackan_sal_solo",
			missions = thrackan_sal_solo_missions
		}
	}

ThrackanSalSolo = ThemeParkLogic:new {
	npcMap = npcMapThrackanSalSolo,
	className = "ThrackanSalSolo",
	screenPlayState = "thrackan_sal_solo_quest",
	planetName = "corellia",
	distance = 800
}

registerScreenPlay("ThrackanSalSolo", true)

thrackan_sal_solo_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = ThrackanSalSolo
}

thrackan_sal_solo_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = ThrackanSalSolo
}
-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not ThrackanSalSolo) then ThrackanSalSolo = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not ThrackanSalSolo.start) then
  function ThrackanSalSolo:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'ThrackanSalSolo' ====
if not ThrackanSalSolo then ThrackanSalSolo = ScreenPlay:new{ numberOfActs = 0 } end
if type(ThrackanSalSolo.start) ~= "function" and type(start) ~= "function" then
  function ThrackanSalSolo:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
