if mods["Mining_Drones"] then
	if mods["space-exploration"] and settings.startup["cs2-tweaks-allow-mining-drone-in-space"].value == true then
		collision_mask_util_extended.remove_layer(data.raw["assembling-machine"]["mining-depot"].collision_mask, space_collision_layer)
	end
end
if mods["Transport_Drones"] then
	if mods["space-exploration"] and settings.startup["cs2-tweaks-allow-roads-on-empty-space"].value == true then
		collision_mask_util_extended.remove_layer(data.raw.item["road"].place_as_tile.condition, empty_space_collision_layer)
	end
end