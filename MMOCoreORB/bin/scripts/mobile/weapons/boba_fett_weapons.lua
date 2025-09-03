-- Weapon set for Boba Fett (verify these IFFs exist in your data set)
boba_fett_weapons = {
    "object/weapon/ranged/rifle/rifle_t21.iff",
    "object/weapon/ranged/carbine/carbine_ee3.iff",
    -- keep a basic melee fallback if engine ever forces melee; he still prefers ranged:
    "object/weapon/melee/baton/baton_stun.iff",
}

addWeapon("boba_fett_weapons", boba_fett_weapons)
