-- Self-contained screenplay for Boba Fett world boss
-- One-at-a-time spawn, clean despawn, 4-hour respawn-after-death

BobaFettWanderScreenplay = ScreenPlay:new {
    numberOfActs = 1
}

local KEY_BOSS_ID = "BobaFettWanderScreenplay:bossId"

-- get ground Z safely (some forks want planet,x,y; others x,y)
local function getGroundZ(planet, x, y)
    local ok, z = pcall(getTerrainHeight, planet, x, y)
    if ok and type(z) == "number" then return z end
    ok, z = pcall(getTerrainHeight, x, y)
    if ok and type(z) == "number" then return z end
    return 0
end

function BobaFettWanderScreenplay:start()
    if not isZoneEnabled("tatooine") then
        return
    end
    self:ensureSingleBoss()
end

function BobaFettWanderScreenplay:ensureSingleBoss()
    local existingId = readData(KEY_BOSS_ID)
    if existingId and existingId ~= 0 then
        local pExisting = getSceneObject(existingId)
        if pExisting ~= nil then
            return
        else
            deleteData(KEY_BOSS_ID)
        end
    end
    self:spawnBobaFettBoss()
end

function BobaFettWanderScreenplay:despawnIfAlive()
    local existingId = readData(KEY_BOSS_ID)
    if existingId and existingId ~= 0 then
        local pExisting = getSceneObject(existingId)
        if pExisting ~= nil then
            SceneObject(pExisting):destroyObjectFromWorld()
        end
        deleteData(KEY_BOSS_ID)
    end
end

function BobaFettWanderScreenplay:spawnBobaFettBoss()
    self:despawnIfAlive()

    local planet = "tatooine"
    local spawnLocations = {
        {x =  2500, y = -2000, z = 142},
        {x = -3500, y = -1000, z =  37},
        {x =  4200, y =   500, z =  13},
        {x =   800, y = -4200, z = 180},
    }

    local i   = math.random(1, #spawnLocations)
    local loc = spawnLocations[i]

    -- If z looks bogus, recalc from terrain:
    local z = loc.z
    if not z or z < -1000 or z > 1000 then
        z = getGroundZ(planet, loc.x, loc.y)
    end

    local pBoss = spawnMobile(planet, "boba_fett_boss", 0, loc.x, z, loc.y, 0, 0)
    if pBoss == nil then
        print("BobaFettWanderScreenplay: spawn failed; retry in 5 minutes.")
        createEvent(5 * 60 * 1000, "BobaFettWanderScreenplay", "spawnBobaFettBoss", nil, "")
        return
    end

    writeData(KEY_BOSS_ID, SceneObject(pBoss):getObjectID())
    print(string.format("Boba Fett spawned at (x=%d, z=%.2f, y=%d) on %s", loc.x, z, loc.y, planet))

    createObserver(OBJECTDESTRUCTION, "BobaFettWanderScreenplay", "onBobaDestroyed", pBoss)
end

function BobaFettWanderScreenplay:onBobaDestroyed(pBoss, pKiller)
    deleteData(KEY_BOSS_ID)
    print("Boba Fett defeated. Respawning in 4 hours.")
    createEvent(60 * 60 * 4 * 1000, "BobaFettWanderScreenplay", "spawnBobaFettBoss", nil, "")
    return 0
end

registerScreenPlay("BobaFettWanderScreenplay", true)
