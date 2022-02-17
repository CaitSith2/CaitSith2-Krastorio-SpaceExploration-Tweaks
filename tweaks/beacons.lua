if settings.startup["cs2-tweaks-beacons"].value == true then
	data.raw.beacon.beacon.energy_usage = "500kW"
	data.raw.beacon.beacon.module_specification = {
	  module_info_icon_shift = { 0, 0.5 },
	  module_info_max_icons_per_row = 5,
	  module_info_max_icon_rows = 3,
	  module_info_multi_row_initial_height_modifier = -0.3,
	  module_slots = 15,
	  module_info_icon_scale = 0.35
	}

	if mods["Krastorio2"] then
		data.raw.beacon["kr-singularity-beacon"].energy_usage = "2000kW"
		data.raw.beacon["kr-singularity-beacon"].module_specification = {
		  module_info_icon_shift = { 0, 0.5 },
		  module_info_max_icons_per_row = 6,
		  module_info_max_icon_rows = 5,
		  module_info_multi_row_initial_height_modifier = -0.5,
		  module_slots = 30,
		  module_info_icon_scale = 0.25
		}
		data.raw.beacon["kr-singularity-beacon"].distribution_effectivity = 2
	end

	if mods["space-exploration"] then
		data.raw.beacon["se-wide-beacon"].energy_usage = "2000kW"
		data.raw.beacon["se-wide-beacon"].module_specification = {
		  module_info_icon_shift = { 0, 0.5 },
		  module_info_max_icons_per_row = 7,
		  module_info_max_icon_rows = 4,
		  module_info_multi_row_initial_height_modifier = -0.3,
		  module_slots = 25,
		  module_info_icon_scale = 0.35
		}
		data.raw.beacon["se-wide-beacon"].distribution_effectivity = 0.75

		data.raw.beacon["se-wide-beacon-2"].energy_usage = "10000kW"
		data.raw.beacon["se-wide-beacon-2"].module_specification = {
		  module_info_icon_shift = { 0, 0 },
		  module_info_max_icons_per_row = 10,
		  module_info_max_icon_rows = 5,
		  module_info_multi_row_initial_height_modifier = -0.3,
		  module_slots = 50,
		  module_info_icon_scale = 0.25
		}
		data.raw.beacon["se-wide-beacon-2"].distribution_effectivity = 1
	end
end

if mods["walkable-beacons"] then
	if settings.startup["walkable-beacons-allow-productivity"].value == true then
		if mods["Krastorio2"] then
			data.raw["beacon"]["kr-singularity-beacon"].allowed_effects = {"consumption", "speed", "pollution", "productivity"}
		end
		if mods["space-exploration"] then
			data.raw["beacon"]["se-wide-beacon"].allowed_effects = {"consumption", "speed", "pollution", "productivity"}
			data.raw["beacon"]["se-wide-beacon-2"].allowed_effects = {"consumption", "speed", "pollution", "productivity"}
		end
	end
end