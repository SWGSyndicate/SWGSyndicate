HouseVendorLogic = VendorLogic:new {
	scriptName = "HouseVendorLogic",
	currencies = {
	--For Tokens: Displayed Name, full template string (without shared_), if applicable: ScreenPlayData string, ScreenPlayData key
		{currency = "credits"},
	},
	--Displayed Name, full template string (without shared_), cost in {}, use the same structure as currencies

	merchandise = {
	{name ="Mustafarian Underground Bunker Schematic", template = "object/tangible/loot/loot_schematic/musty_house_loot_schem.iff", cost = {10000000,}},
        {name ="Vehicle Garage Schematic", template = "object/tangible/loot/loot_schematic/vehicle_house_loot_schem.iff", cost = {10000000,}},
        {name ="Bespin Cloud House Schematic", template = "object/tangible/loot/loot_schematic/bespin_house_loot_schem.iff", cost = {10000000,}},
	},
}

registerScreenPlay("HouseVendorLogic", false)

-- ===== AUTO-ADDED STUB (to prevent nil start() on load) =====
-- If the screenplay table doesn't exist, create a minimal one.
if (not HouseVendorLogic) then HouseVendorLogic = ScreenPlay:new { numberOfActs = 0 } end
-- If start() is missing, provide a no-op.
if (not HouseVendorLogic.start) then
  function HouseVendorLogic:start()
    return true -- no-op
  end
end
-- ===== /AUTO-ADDED STUB =====
