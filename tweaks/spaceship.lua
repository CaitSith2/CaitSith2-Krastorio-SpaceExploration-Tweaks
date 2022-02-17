

if mods["space-exploration"] then
	if mods["space-factorissimo-updated"] then
		if settings.startup["cs2-tweaks-allow-factory-buildings-on-spaceship"].value == true then
			collision_mask_util_extended.remove_layer(data.raw["storage-tank"]["space-gravFactory-3"].collision_mask, spaceship_collision_layer)
			collision_mask_util_extended.remove_layer(data.raw["storage-tank"]["space-factory-3"].collision_mask, spaceship_collision_layer)
			collision_mask_util_extended.remove_layer(data.raw["storage-tank"]["space-gravFactory-3-i"].collision_mask, spaceship_collision_layer)
			collision_mask_util_extended.remove_layer(data.raw["storage-tank"]["space-factory-3-i"].collision_mask, spaceship_collision_layer)
			for i=10,99 do
				collision_mask_util_extended.remove_layer(data.raw["storage-tank"]["space-gravFactory-3-s" .. i].collision_mask, spaceship_collision_layer)
				collision_mask_util_extended.remove_layer(data.raw["storage-tank"]["space-factory-3-s" .. i].collision_mask, spaceship_collision_layer)
			end
			if data.raw["storage-tank"]["space-factory-4"] then -- Space factorissimo doesn't currently enable space-factory-4 nor space-factory-5
				collision_mask_util_extended.remove_layer(data.raw["storage-tank"]["space-factory-4"].collision_mask, spaceship_collision_layer)
				collision_mask_util_extended.remove_layer(data.raw["storage-tank"]["space-factory-4-i"].collision_mask, spaceship_collision_layer)
				for i = 10,99 do
					collision_mask_util_extended.remove_layer(data.raw["storage-tank"]["space-factory-4-s" .. i].collision_mask, spaceship_collision_layer)
				end
			end
			if data.raw["storage-tank"]["space-factory-5"] then -- this code is however here just in case it gets enabled in the future.
				collision_mask_util_extended.remove_layer(data.raw["storage-tank"]["space-factory-5"].collision_mask, spaceship_collision_layer)
				collision_mask_util_extended.remove_layer(data.raw["storage-tank"]["space-factory-5-i"].collision_mask, spaceship_collision_layer)
				for i = 10,99 do
					collision_mask_util_extended.remove_layer(data.raw["storage-tank"]["space-factory-5-s" .. i].collision_mask, spaceship_collision_layer)
				end
			end
			collision_mask_util_extended.remove_layer(data.raw["storage-tank"]["space-factory-input-pipe"].collision_mask, spaceship_collision_layer)
			collision_mask_util_extended.remove_layer(data.raw["storage-tank"]["space-factory-output-pipe"].collision_mask, spaceship_collision_layer)
			
		end
	end
end