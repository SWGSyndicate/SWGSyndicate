-- Boba Fett (Tatooine) — 8 drops total: 7 rare rolls (equal weight) + 1 guaranteed common
-- Tuned for ranged-only combat, lowered base damage, resists 70 across the board except lightsaber 40.

local GROUP_ACKLAY            = "acklay"
local GROUP_KRAYT_PEARLS      = "krayt_pearls"
local GROUP_KRAYT_TISSUE_RARE = "krayt_tissue_rare"
local GROUP_KRAYT_TISSUE_COMM = "krayt_tissue_common"
local GROUP_AXKVA             = "axkva_min"
local GROUP_WRAITH            = "death_watch_bunker_lieutenants"

local function fettBossLootGroups()
    -- 5-way equal weights (sum = 10,000,000)
    return {
        {group = GROUP_ACKLAY,            chance = 2000000},
        {group = GROUP_KRAYT_PEARLS,      chance = 2000000},
        {group = GROUP_KRAYT_TISSUE_RARE, chance = 2000000},
        {group = GROUP_AXKVA,             chance = 2000000},
        {group = GROUP_WRAITH,            chance = 2000000},
    }
end

local function fettCommonLoot()
    return {
        {group = "power_crystals",        chance = 4000000},
        {group = "armor_attachments",     chance = 3000000},
        {group = "clothing_attachments",  chance = 3000000},
        -- mild boost for common krayt tissue:
        -- {group = GROUP_KRAYT_TISSUE_COMM, chance = 1000000}, -- uncomment if desired
    }
end

BobaFettBoss = Creature:new {
    objectName = "@mob/creature_names:boba_fett",
    socialGroup = "bounty_hunter",
    faction = "bounty_hunter",
    level = 500,

    -- Softer baseline accuracy/damage; actual DPS is governed by weapon + specials.
    chanceHit = 10.0,
    damageMin = 300,
    damageMax = 800,

    baseXp = 500000,
    baseHAM = 5000000,
    baseHAMmax = 7000000,
    armor = 3,

    -- Resist order: kinetic, energy, blast, heat, cold, electricity, acid, stun, lightsaber
    resists = {70,70,70,70,70,70,70,70,40},

    pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
    creatureBitmask = PACK + KILLER + HERD,
    optionsBitmask  = AIENABLED,
    randomMovement  = true,
    diet = NONE,

    templates = {"object/mobile/boba_fett.iff"},

    -- Ensure he always has a ranged weapon loaded:
    defaultWeapon = "object/weapon/ranged/rifle/rifle_t21.iff",
    defaultAttack = "rifleman_rifle_shot",

    -- 7 rare rolls + 1 guaranteed common = 8 drops
    lootGroups = {
        { groups = fettBossLootGroups(), lootChance = 10000000 },
        { groups = fettBossLootGroups(), lootChance = 10000000 },
        { groups = fettBossLootGroups(), lootChance = 10000000 },
        { groups = fettBossLootGroups(), lootChance = 10000000 },
        { groups = fettBossLootGroups(), lootChance = 10000000 },
        { groups = fettBossLootGroups(), lootChance = 10000000 },
        { groups = fettBossLootGroups(), lootChance = 10000000 },

        -- guaranteed common roll
        { groups = fettCommonLoot(),      lootChance = 10000000 },
    },

    -- Ranged-only kit; the set is registered in mobile/weapons/boba_fett_weapons.lua
    weapons = {"boba_fett_weapons"},

    conversationTemplate = "",

    -- Keep the scary BH spikes off for now; rifleman+marksman is steady ranged pressure.
    attacks = merge(marksmanmaster, riflemanmaster),
}

CreatureTemplates:addCreatureTemplate(BobaFettBoss, "boba_fett_boss")
