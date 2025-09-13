draya_korbinari_missions =
{
	{
		missionType = "assassinate",
		primarySpawns =
		{ 
			{ npcTemplate = "tusk_cat", npcName = "a Tusk Cat" }
		},
		secondarySpawns =
		{

		},
		itemSpawns =
		{

		}, 
		rewards =
		{ 
			{ rewardType = "credits", amount = 50 },
			{ rewardType = "faction", faction = "naboo", amount = 5 }
		}
	},
	{
		missionType = "escort",
		primarySpawns =
		{
			{ npcTemplate = "draya_korbinari_thief", npcName = "a Thief" }
		},
		secondarySpawns =
		{

		}, 
		itemSpawns = 
		{

		}, 
		rewards = 
		{
			{ rewardType = "credits", amount = 30 },
			{ rewardType = "faction", faction = "naboo", amount = 5 }
		}
	},
	{
		missionType = "confiscate", 
		primarySpawns = 
		{ 
			{ npcTemplate = "draya_korbinari_smuggler", npcName = "a Smuggler" }	
		},
		secondarySpawns =
		{

		}, 
		itemSpawns = 
		{
			{ itemTemplate = "object/tangible/mission/quest_item/draya_korbinari_q3_needed.iff", itemName = "" }
		},
		rewards = 
		{
			{ rewardType = "credits", amount = 30 },
			{ rewardType = "faction", faction = "naboo", amount = 5 }
		}
	},
	{
		missionType = "assassinate", 
		primarySpawns = 
		{ 
			{ npcTemplate = "draya_korbinari_bounty_hunter", npcName = "a Bounty Hunter" }	
		}, 
		secondarySpawns =
		{

		}, 
		itemSpawns = 
		{

		}, 
		rewards = 
		{
			{ rewardType = "credits", amount = 40 },
			{ rewardType = "faction", faction = "naboo", amount = 5 }
		}
	}
}

npcMapDrayaKorbinari = 
{ 
	{ 
		spawnData = { npcTemplate = "draya_korbinari", x = -18, z = 0, y = 18, direction = 120, cellID = 4635705, position = STAND },
		worldPosition = { x = 5305, y = 5859 }, 
		npcNumber = 1,
		stfFile = "@static_npc/rori/rori_restuss_draya_korbinari",
		missions = draya_korbinari_missions
	},
}

DrayaKorbinari = ThemeParkLogic:new {
	npcMap = npcMapDrayaKorbinari,
	className = "DrayaKorbinari",
	screenPlayState = "draya_korbinari_quest",
	planetName = "rori",
	distance = 500,
}

registerScreenPlay("DrayaKorbinari", true)

draya_korbinari_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = DrayaKorbinari
}
draya_korbinari_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = DrayaKorbinari
}

-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not DrayaKorbinari) then DrayaKorbinari = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not DrayaKorbinari.start) then
  function DrayaKorbinari:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====

-- ==== SAFETY: auto-added guard for autostarted screenplay 'DrayaKorbinari' ====
if not DrayaKorbinari then DrayaKorbinari = ScreenPlay:new{ numberOfActs = 0 } end
if type(DrayaKorbinari.start) ~= "function" and type(start) ~= "function" then
  function DrayaKorbinari:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
