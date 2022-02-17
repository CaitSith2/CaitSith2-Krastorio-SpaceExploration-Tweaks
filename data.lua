if mods["space-exploration"] and not mods["Krastorio2"] then
	if settings.startup["cs2-tweaks-sand-water-landfill"].value == true then
		local data_util = require("__space-exploration-postprocess__/data_util")
		local result_count = 1
		if settings.startup["cs2-tweaks-more-landfill"].value == true then
			result_count = 10
		end
		data:extend({
		{
		type = "recipe",
		name = "landfill-2",
		localized_name = { "item-name.landfill" },
		localized_description = { "item-description.landfill" },
		energy_required = 1,
		enabled = false,
		category = "crafting-with-fluid",
		icons = {
		  {icon = data.raw.item.landfill.icon, icon_size = data.raw.item.landfill.icon_size},
		  {icon = data.raw.item.sand.icon, icon_size = data.raw.item.sand.icon_size, scale = 0.33*64/data.raw.item.sand.icon_size},
		},
		ingredients =
		{
		  {"sand", 50},
		  { type = "fluid", name = "water", amount = 50 }
		},
		result= "landfill",
		result_count = result_count,
		order = "z-a-c",
		allow_decomposition = false,
	  }
	  })
	  data_util.tech_lock_recipes("landfill", {"landfill-2"})
	end
end