StaffTools = {
	toolsMenu = {
		{ "Shuttle Dropoff", "openShuttleConfig" },
		{ "Firework Event", "openFireworkConfig" },
		{ "Delete Object by OID", "openDeleteObjectConfig" },
	}
}

function StaffTools:openToolsSUI(pCreature)
	if (pCreature == nil) then
		return
	end

	self:openSUI(pCreature)
end

function StaffTools:openSUI(pCreature)
	local sui = SuiListBox.new("StaffTools", "mainSuiCallback")

	sui.setTargetNetworkId(SceneObject(pCreature):getObjectID())

	sui.setTitle("Staff Tools")
	sui.setPrompt("Select a tool below to open it.")

	for i = 1, #self.toolsMenu, 1 do
		sui.add(self.toolsMenu[i][1], "")
	end

	sui.sendTo(pCreature)
end

function StaffTools:mainSuiCallback(pPlayer, pSui, eventIndex, args)
	local cancelPressed = (eventIndex == 1)

	if (cancelPressed) then
		return
	end

	local chosenTool = args + 1

	self[self.toolsMenu[chosenTool][2]](pPlayer)
end

function StaffTools.openShuttleConfig(pPlayer)
	ShuttleDropoff:showMainUI(pPlayer)
end

function StaffTools.openFireworkConfig(pPlayer)
	FireworkEvent:showMainUI(pPlayer)
end

function StaffTools.openDeleteObjectConfig(pPlayer)
	local sui = SuiInputBox.new("StaffTools", "deleteObjectCallback")
	
	sui.setTitle("Delete Object by OID")
	sui.setPrompt("Enter the Object ID (OID) of the object you wish to delete:")
	
	sui.sendTo(pPlayer)
end

function StaffTools:deleteObjectCallback(pPlayer, pSui, eventIndex, args)
	local cancelPressed = (eventIndex == 1)

	if (cancelPressed) then
		return
	end
	
	if (args == nil or args == "") then
		CreatureObject(pPlayer):sendSystemMessage("You must enter a valid Object ID.")
		return
	end
	
	local objectID = tonumber(args)
	
	if (objectID == nil) then
		CreatureObject(pPlayer):sendSystemMessage("Invalid Object ID format. Please enter a numeric value.")
		return
	end
	
	local pObject = getSceneObject(objectID)
	
	if (pObject == nil) then
		CreatureObject(pPlayer):sendSystemMessage("No object found with Object ID: " .. objectID)
		return
	end
	
	SceneObject(pObject):destroyObjectFromWorld()
	SceneObject(pObject):destroyObjectFromDatabase()
	
	CreatureObject(pPlayer):sendSystemMessage("Object with ID " .. objectID .. " has been deleted.")
end

function StaffTools:suiShuttleDropoffCallback(pPlayer, pSui, eventIndex, args)
end

return StaffTools
