if settings.startup["cs2-tweaks-faster-machines"].value == true then
	if mods["Krastorio2"] then
		data.raw["assembling-machine"]["kr-electrolysis-plant"].crafting_speed = data.raw["assembling-machine"]["kr-electrolysis-plant"].crafting_speed * 5
		data.raw["assembling-machine"]["kr-filtration-plant"].crafting_speed = data.raw["assembling-machine"]["kr-filtration-plant"].crafting_speed * 4
		data.raw["assembling-machine"]["kr-atmospheric-condenser"].crafting_speed = data.raw["assembling-machine"]["kr-atmospheric-condenser"].crafting_speed * 2
		data.raw["furnace"]["kr-crusher"].crafting_speed = data.raw["furnace"]["kr-crusher"].crafting_speed * 2

		data.raw["mining-drill"]["kr-electric-mining-drill-mk3"].mining_speed = data.raw["mining-drill"]["kr-electric-mining-drill-mk3"].mining_speed * 2
		data.raw["mining-drill"]["kr-electric-mining-drill-mk3"].energy_usage = "300kW"
		data.raw["mining-drill"]["kr-electric-mining-drill-mk3"].module_specification = {
		  module_slots = 6,
	end

	if mods["space-exploration"] then
		data.raw.item["se-core-miner"].stack_size = 5
		data.raw["assembling-machine"]["se-core-miner"].crafting_speed = data.raw["assembling-machine"]["se-core-miner"].crafting_speed * 4
		data.raw["mining-drill"]["se-core-miner-drill"].mining_speed = data.raw["mining-drill"]["se-core-miner-drill"].mining_speed * 4
	end
end