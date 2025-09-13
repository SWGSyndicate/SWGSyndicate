-- Boba Fett (World Boss) — pistol variant, passive until attacked, BH + Pistoleer
-- 7 rare rolls + 1 guaranteed common (8 total drops). Softer base damage; resists mostly 70, lightsaber 40.

local GROUP_ACKLAY            = "acklay"
local GROUP_KRAYT_PEARLS      = "krayt_pearls"
local GROUP_KRAYT_TISSUE_RARE = "krayt_tissue_rare"
local GROUP_KRAYT_TISSUE_COMM = "krayt_tissue_common"
local GROUP_AXKVA             = "axkva_min"
local GROUP_WRAITH            = "death_watch_bunker_lieutenants"

local function fettBossLootGroups()
    return {
        {group = GROUP_ACKLAY,            chance = 2000000},
        {group = GROUP_KRAYT_PEARLS,      chance = 2000000},
        {group = GROUP_KRAYT_TISSUE_RARE, chance = 2000000},
        {group = GROUP_AXKVA,             chance = 2000000},
        {group = GROUP_WRAITH,            chance = 2000000}
    }
end

local function fettCommonLoot()
    return {
        {group = "power_crystals",        chance = 4000000},
        {group = "armor_attachments",     chance = 3000000},
        {group = "clothing_attachments",  chance = 3000000}
        -- {group = GROUP_KRAYT_TISSUE_COMM, chance = 1000000}, -- optional
    }
end

BobaFettBoss = Creature:new {
    objectName = "@mob/creature_names:boba_fett",
    socialGroup = "bounty_hunter",
    faction = "bounty_hunter",
    level = 500,

    chanceHit = 10.0,
    damageMin = 300,
    damageMax = 800,

    baseXp = 500000,
    baseHAM = 5000000,
    baseHAMmax = 7000000,
    armor = 3,

    -- Resist order: kinetic, energy, blast, heat, cold, electricity, acid, stun, lightsaber
    resists = {70,70,70,70,70,70,70,70,40},

    -- Passive until attacked (no AGGRESSIVE bit)
    pvpBitmask = ATTACKABLE + ENEMY,
    creatureBitmask = PACK + KILLER + HERD,
    optionsBitmask  = AIENABLED,

    randomMovement  = true,
    diet = NONE,

    templates = {"object/mobile/boba_fett.iff"},

    -- Ensure he always has a pistol loaded:
    defaultWeapon = "object/weapon/ranged/pistol/pistol_scatter.iff",
    defaultAttack = "pistolermultipleshot",

    -- 7 rare rolls + 1 guaranteed common
    lootGroups = {
        { groups = fettBossLootGroups(), lootChance = 10000000 },
        { groups = fettBossLootGroups(), lootChance = 10000000 },
        { groups = fettBossLootGroups(), lootChance = 10000000 },
        { groups = fettBossLootGroups(), lootChance = 10000000 },
        { groups = fettBossLootGroups(), lootChance = 10000000 },
        { groups = fettBossLootGroups(), lootChance = 10000000 },
        { groups = fettBossLootGroups(), lootChance = 10000000 },
        { groups = fettCommonLoot(),      lootChance = 10000000 }
    },

    weapons = {"boba_fett_weapons"},
    conversationTemplate = "",

    -- Ranged pistol kit: Master Bounty Hunter + Master Pistoleer
    attacks = merge(bountyhuntermaster, pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(BobaFettBoss, "boba_fett_boss")
