local ObjectManager = require("managers.object.object_manager")

-----------------------------------------------------------------------
-- Stub so world snapshot objects stop erroring on startup.
-- Only define if not already present elsewhere.
-----------------------------------------------------------------------
if sabolIntelSearchMenuComponent == nil then
    sabolIntelSearchMenuComponent = ObjectMenuComponent:new {}

    function sabolIntelSearchMenuComponent:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
        return 0
    end

    function sabolIntelSearchMenuComponent:handleObjectMenuSelect(pSceneObject, pPlayer, selectedID)
        return 0
    end
end
-----------------------------------------------------------------------

CorvetteRoomPanelMenuComponent = { }

function CorvetteRoomPanelMenuComponent:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
end

function CorvetteRoomPanelMenuComponent:handleObjectMenuSelect(pSceneObject, pPlayer, selectedID)
    if (pPlayer == nil or selectedID ~= 20) then return end
    if (SceneObject(pPlayer):getParentID() ~= SceneObject(pSceneObject):getParentID() or not CreatureObject(pPlayer):isInRangeWithObject(pSceneObject, 4)) then return end

    local panelID = SceneObject(pSceneObject):getObjectID()

    if (readData(panelID .. ":roomUnlocked") == 1) then
        CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:already_open")
        return
    end

    local corvetteID = readData(SceneObject(pPlayer):getObjectID() .. "corvetteID")
    local pCorvette = getSceneObject(corvetteID)
    if (pCorvette == nil) then return end

    local roomName = readStringSharedMemory(panelID .. ":panelRoom")

    if (roomName == "meetingroom38") then
        CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:unlock_meeting")
        CorellianCorvette:unlockRoom(pCorvette, "meetingroom38")
        writeData(SceneObject(pPlayer):getObjectID() .. ":unlocked:meetingroom38", 1)
    elseif (roomName == "elevator57") then
        CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:unlock_elevator")
        CorellianCorvette:unlockRoom(pCorvette, "elevator57")
        writeData(SceneObject(pPlayer):getObjectID() .. ":unlocked:elevator57", 1)
    end

    writeData(panelID .. ":roomUnlocked", 1)
end

CorvetteDestroyTerminalMenuComponent = { }

function CorvetteDestroyTerminalMenuComponent:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
end

function CorvetteDestroyTerminalMenuComponent:handleObjectMenuSelect(pSceneObject, pPlayer, selectedID)
    if (pPlayer == nil or selectedID ~= 20) then return end
    if (SceneObject(pPlayer):getParentID() ~= SceneObject(pSceneObject):getParentID() or not CreatureObject(pPlayer):isInRangeWithObject(pSceneObject, 4)) then return end

    local corvetteID = readData(SceneObject(pPlayer):getObjectID() .. "corvetteID")
    local questType = readStringData("corvetteQuestType:" .. corvetteID)

    if (questType ~= "destroy") then
        CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:does_nothing")
        return
    end

    local terminalType = readStringSharedMemory(SceneObject(pSceneObject):getObjectID() .. ":terminalType")

    if (terminalType == "engine") then
        CorvetteSui:sendEngineSui(pPlayer, pSceneObject)
    elseif (terminalType == "fuel") then
        CorvetteSui:sendFuelSui(pPlayer, pSceneObject)
    elseif (terminalType == "hyperdrive") then
        CorvetteSui:sendHyperdriveSui(pPlayer, pSceneObject)
    end
end

CorvetteKeypadMenuComponent = { }

function CorvetteKeypadMenuComponent:fillObjectMenuResponse(pKeypad, pMenuResponse, pPlayer)
end

function CorvetteKeypadMenuComponent:handleObjectMenuSelect(pKeypad, pPlayer, selectedID)
    if (pKeypad == nil or pPlayer == nil or selectedID ~= 20) then return end
    if (SceneObject(pKeypad):getParentID() ~= SceneObject(pPlayer):getParentID() or not CreatureObject(pPlayer):isInRangeWithObject(pKeypad, 4)) then return end

    local corvetteID = readData(SceneObject(pPlayer):getObjectID() .. "corvetteID")
    local pCorvette = getSceneObject(corvetteID)
    if (pCorvette == nil) then return end

    local keypadRoom = readStringSharedMemory(SceneObject(pKeypad):getObjectID() .. ":keypadRoom")

    if (keypadRoom == "elevator57") then
        if (CorellianCorvette:readDataFromGroup(pCorvette, ":unlocked:elevator57") == 1) then
            CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:open")
            CorellianCorvette:unlockRoom(pCorvette, "elevator57")
            CorellianCorvette:writeDataToGroup(pCorvette, ":unlocked:elevator57", 1)
        else
            CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:elevator_locked")
        end
    elseif (keypadRoom == "meetingroom38") then
        if (CorellianCorvette:readDataFromGroup(pCorvette, ":unlocked:meetingroom38") == 1) then
            CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:open")
            CorellianCorvette:unlockRoom(pCorvette, "meetingroom38")
            CorellianCorvette:writeDataToGroup(pCorvette, ":unlocked:meetingroom38", 1)
        else
            CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:meeting_room_locked")
        end
    elseif (keypadRoom ~= "") then
        CorvetteSui:sendKeypadSui(pKeypad, pPlayer)
    end
end

CorvetteComputerMenuComponent = { }

function CorvetteComputerMenuComponent:fillObjectMenuResponse(pComputer, pMenuResponse, pPlayer)
end

function CorvetteComputerMenuComponent:handleObjectMenuSelect(pComputer, pPlayer, selectedID)
    if (pComputer == nil or pPlayer == nil or selectedID ~= 20) then return end
    if (SceneObject(pPlayer):getParentID() ~= SceneObject(pComputer):getParentID() or not CreatureObject(pPlayer):isInRangeWithObject(pComputer, 4)) then return end

    local corvetteID = readData(SceneObject(pPlayer):getObjectID() .. "corvetteID")
    local pCorvette = getSceneObject(corvetteID)
    if (pCorvette == nil) then return end

    local computerID = SceneObject(pComputer):getObjectID()

    if (readData(computerID .. ":spawnedEnemies") ~= 1) then
        CorellianCorvette:spawnComputerEnemies(pCorvette, pComputer)
        writeData(computerID .. ":spawnedEnemies", 1)
    end

    local computerLabel = readStringSharedMemory(computerID .. ":computerLabel")

    if (computerLabel == "") then
        CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:loading")
    elseif (computerLabel == "one") then
        CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:computer_one")
    elseif (computerLabel == "two") then
        CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:armory_code")
        local accessCode = readData(computerID .. ":accessCode")
        if (accessCode == 0) then
            accessCode = getRandomNumber(10000, 99999)
            CorellianCorvette:writeDataToGroup(pCorvette, ":code:armorybackroom55", accessCode)
            writeData(computerID .. ":accessCode", accessCode)
        end
        CreatureObject(pPlayer):sendSystemMessage(accessCode)
    elseif (computerLabel == "three") then
        CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:computer_three")
    elseif (computerLabel == "four") then
        if (readData(computerID .. ":terminalRebooted") == 1) then
            local accessCode = readData(computerID .. ":accessCode")
            if (accessCode == 0) then
                accessCode = getRandomNumber(10000, 99999)
                CorellianCorvette:writeDataToGroup(pCorvette, ":code:bridge66", accessCode)
                writeData(computerID .. ":accessCode", accessCode)
            end
            CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:bridge_code")
            CreatureObject(pPlayer):sendSystemMessage(accessCode)
        else
            local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")
            if (pInventory ~= nil) then
                local pBootDisk = getContainerObjectByTemplate(pInventory, "object/tangible/loot/dungeon/corellian_corvette/bootdisk.iff", true)
                if (pBootDisk ~= nil) then
                    SceneObject(pBootDisk):destroyObjectFromWorld()
                    SceneObject(pBootDisk):destroyObjectFromDatabase()
                    writeData(computerID .. ":terminalRebooted", 1)
                    CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:insert_disk")
                else
                    local slicingSkill = CorellianCorvette:checkSlicingSkill(pPlayer)
                    local sliceChance = getRandomNumber(1, 8)
                    if (sliceChance > slicingSkill or readData(computerID .. ":sliceAttempted") == 1) then
                        CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:reboot")
                        if (slicingSkill > 0) then writeData(computerID .. ":sliceAttempted", 1) end
                    else
                        writeData(computerID .. ":terminalRebooted", 1)
                        CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:sliced")
                    end
                end
            end
        end
    elseif (computerLabel == "five") then
        CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:journal")
    elseif (computerLabel == "six") then
        CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:officer_starboard")
        local accessCode = readData(computerID .. ":accessCode")
        if (accessCode == 0) then
            accessCode = getRandomNumber(10000, 99999)
            CorellianCorvette:writeDataToGroup(pCorvette, ":code:officerquarters64", accessCode)
            writeData(computerID .. ":accessCode", accessCode)
        end
        CreatureObject(pPlayer):sendSystemMessage(accessCode)
    elseif (computerLabel == "seven") then
        CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:officer_port")
        local accessCode = readData(computerID .. ":accessCode")
        if (accessCode == 0) then
            accessCode = getRandomNumber(10000, 99999)
            CorellianCorvette:writeDataToGroup(pCorvette, ":code:officerquarters65", accessCode)
            writeData(computerID .. ":accessCode", accessCode)
        end
        CreatureObject(pPlayer):sendSystemMessage(accessCode)
    elseif (computerLabel == "eight") then
        CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:prison_code")
        local accessCode = readData(computerID .. ":accessCode")
        if (accessCode == 0) then
            accessCode = getRandomNumber(10000, 99999)
            CorellianCorvette:writeDataToGroup(pCorvette, ":code:officerquarters63", accessCode)
            writeData(computerID .. ":accessCode", accessCode)
        end
        CreatureObject(pPlayer):sendSystemMessage(accessCode)
    elseif (computerLabel == "nine") then
        CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:droid_explanation_rebel")
    elseif (computerLabel == "ten") then
        CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:droid_explanation_imperial")
    end
end
