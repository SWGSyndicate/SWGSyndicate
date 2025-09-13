local ObjectManager = require("managers.object.object_manager")
local QuestManager = require("managers.quest.quest_manager")
require("utils.helpers")

GoToDathomir = GoToLocation:new {
	-- Task properties
	taskName = "GoToDathomir",
	-- GoToLocation properties
	waypointDescription = "@quest/force_sensitive/intro:goto_dath_sum",
	spawnPoint = { x = 5306, y = -4145 },
	spawnPlanet = "dathomir",
	spawnRadius = 128,
	onFailedSpawn = nil,
	onSuccessfulSpawn = nil,
	onEnteredActiveArea = nil
}

-- Event handler for the enter active area event.
-- The event will complete the task.
-- @param pPlayer pointer to the creature object of the player.
function GoToDathomir:onEnteredActiveArea(pPlayer)
	if (pPlayer == nil) then
		return
	end

	QuestManager.completeQuest(pPlayer, QuestManager.quests.FS_VILLAGE_ELDER)
	
	-- Unlock the Force Sensitive branches (needed to properly register branch completion)
	local fsBranches = VillageJediManagerCommon.forceSensitiveBranches
	for i = 1, #fsBranches do
		VillageJediManagerCommon.unlockBranch(pPlayer, fsBranches[i])
	end
	
	-- Award all Force Sensitive skill boxes
	local fsSkills = {
		-- Combat Prowess Branch
		"force_sensitive_combat_prowess_novice",
		"force_sensitive_combat_prowess_ranged_accuracy_01",
		"force_sensitive_combat_prowess_ranged_accuracy_02",
		"force_sensitive_combat_prowess_ranged_accuracy_03",
		"force_sensitive_combat_prowess_ranged_accuracy_04",
		"force_sensitive_combat_prowess_ranged_speed_01",
		"force_sensitive_combat_prowess_ranged_speed_02",
		"force_sensitive_combat_prowess_ranged_speed_03",
		"force_sensitive_combat_prowess_ranged_speed_04",
		"force_sensitive_combat_prowess_melee_accuracy_01",
		"force_sensitive_combat_prowess_melee_accuracy_02",
		"force_sensitive_combat_prowess_melee_accuracy_03",
		"force_sensitive_combat_prowess_melee_accuracy_04",
		"force_sensitive_combat_prowess_melee_speed_01",
		"force_sensitive_combat_prowess_melee_speed_02",
		"force_sensitive_combat_prowess_melee_speed_03",
		"force_sensitive_combat_prowess_melee_speed_04",
		
		-- Enhanced Reflexes Branch
		"force_sensitive_enhanced_reflexes_novice",
		"force_sensitive_enhanced_reflexes_ranged_defense_01",
		"force_sensitive_enhanced_reflexes_ranged_defense_02",
		"force_sensitive_enhanced_reflexes_ranged_defense_03",
		"force_sensitive_enhanced_reflexes_ranged_defense_04",
		"force_sensitive_enhanced_reflexes_melee_defense_01",
		"force_sensitive_enhanced_reflexes_melee_defense_02",
		"force_sensitive_enhanced_reflexes_melee_defense_03",
		"force_sensitive_enhanced_reflexes_melee_defense_04",
		"force_sensitive_enhanced_reflexes_vehicle_control_01",
		"force_sensitive_enhanced_reflexes_vehicle_control_02",
		"force_sensitive_enhanced_reflexes_vehicle_control_03",
		"force_sensitive_enhanced_reflexes_vehicle_control_04",
		"force_sensitive_enhanced_reflexes_survival_01",
		"force_sensitive_enhanced_reflexes_survival_02",
		"force_sensitive_enhanced_reflexes_survival_03",
		"force_sensitive_enhanced_reflexes_survival_04",
		
		-- Heightened Senses Branch
		"force_sensitive_heightened_senses_novice",
		"force_sensitive_heightened_senses_healing_01",
		"force_sensitive_heightened_senses_healing_02",
		"force_sensitive_heightened_senses_healing_03",
		"force_sensitive_heightened_senses_healing_04",
		"force_sensitive_heightened_senses_surveying_01",
		"force_sensitive_heightened_senses_surveying_02",
		"force_sensitive_heightened_senses_surveying_03",
		"force_sensitive_heightened_senses_surveying_04",
		"force_sensitive_heightened_senses_persuasion_01",
		"force_sensitive_heightened_senses_persuasion_02",
		"force_sensitive_heightened_senses_persuasion_03",
		"force_sensitive_heightened_senses_persuasion_04",
		"force_sensitive_heightened_senses_luck_01",
		"force_sensitive_heightened_senses_luck_02",
		"force_sensitive_heightened_senses_luck_03",
		"force_sensitive_heightened_senses_luck_04",
		
		-- Crafting Mastery Branch
		"force_sensitive_crafting_mastery_novice",
		"force_sensitive_crafting_mastery_experimentation_01",
		"force_sensitive_crafting_mastery_experimentation_02",
		"force_sensitive_crafting_mastery_experimentation_03",
		"force_sensitive_crafting_mastery_experimentation_04",
		"force_sensitive_crafting_mastery_assembly_01",
		"force_sensitive_crafting_mastery_assembly_02",
		"force_sensitive_crafting_mastery_assembly_03",
		"force_sensitive_crafting_mastery_assembly_04",
		"force_sensitive_crafting_mastery_repair_01",
		"force_sensitive_crafting_mastery_repair_02",
		"force_sensitive_crafting_mastery_repair_03",
		"force_sensitive_crafting_mastery_repair_04",
		"force_sensitive_crafting_mastery_technique_01",
		"force_sensitive_crafting_mastery_technique_02",
		"force_sensitive_crafting_mastery_technique_03",
		"force_sensitive_crafting_mastery_technique_04",
		
		-- Branch Master Skills
		"force_sensitive_combat_prowess_master",
		"force_sensitive_enhanced_reflexes_master",
		"force_sensitive_heightened_senses_master",
		"force_sensitive_crafting_mastery_master"
	}
	
	-- Grant all FS skills
	for i = 1, #fsSkills do
		if not CreatureObject(pPlayer):hasSkill(fsSkills[i]) then
			awardSkill(pPlayer, fsSkills[i])
		end
	end
	
	-- Set their progression to completed village
	VillageJediManagerCommon.setJediProgressionScreenPlayState(pPlayer, VILLAGE_JEDI_PROGRESSION_COMPLETED_VILLAGE)
	
	-- Start the Mellichae quest (Old Man spawns)
	FsOutro:startOldMan(pPlayer)
	
	-- Notify the player
	CreatureObject(pPlayer):sendSystemMessage("You have completed all Force Sensitive skill trees and are now ready to face Mellichae.")
	
	self:finish(pPlayer)
end

-- Event handler for the onSuccessfulSpawn.
-- The event will activate the quest.
-- @param pPlayer pointer to the creature object of the player.
function GoToDathomir:onSuccessfulSpawn(pPlayer)
	if (pPlayer == nil) then
		return
	end

	if (not QuestManager.hasActiveQuest(pPlayer, QuestManager.quests.FS_VILLAGE_ELDER)) then
		local pGhost = CreatureObject(pPlayer):getPlayerObject()

		if (pGhost == nil) then
			return
		end

		QuestManager.activateQuest(pPlayer, QuestManager.quests.FS_VILLAGE_ELDER)
		VillageJediManagerCommon.setJediProgressionScreenPlayState(pPlayer, VILLAGE_JEDI_PROGRESSION_HAS_VILLAGE_ACCESS)
		CreatureObject(pPlayer):sendSystemMessage("@quest/force_sensitive/intro:force_sensitive")

		if (not PlayerObject(pGhost):isJedi()) then
			PlayerObject(pGhost):setJediState(1)
		end

		awardSkill(pPlayer, "force_title_jedi_novice")
	end
end

return GoToDathomir
