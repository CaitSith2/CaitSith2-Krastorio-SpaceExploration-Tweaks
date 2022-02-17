if settings.startup["cs2-tweaks-rocket-fuel-stack-size"].value == true then
	data.raw.item["rocket-fuel"].stack_size = 100
end

if settings.startup["cs2-tweaks-more-low-density-structure"].value == true then
	data.raw.recipe["low-density-structure"].normal.result_count = 5
end

if mods["space-exploration"] then
	local data_util = require("__space-exploration-postprocess__/data_util")

	if settings.startup["cs2-tweaks-more-heat-shielding"].value == true then
		data.raw.recipe["se-heat-shielding"].result_count = 5
	end
	if settings.startup["cs2-tweaks-more-low-density-structure"].value == true then
		data.raw.recipe["se-low-density-structure-beryllium"].result_count = 5
	end

	if settings.startup["cs2-tweaks-rocket-fuel-cheap-recipes"].value == true then
		if mods["Krastorio2"] then
			data_util.replace_or_add_ingredient("rocket-fuel", "light-oil", "light-oil", 30, true)
			data_util.replace_or_add_ingredient("rocket-fuel", "oxygen", "oxygen", 50, true)
			data_util.replace_or_add_ingredient("rocket-fuel-with-ammonia", "ammonia", "ammonia", 50, true)
			data_util.replace_or_add_ingredient("rocket-fuel-with-ammonia", "oxygen", "oxygen", 50, true)
			data_util.replace_or_add_ingredient("rocket-fuel-with-hydrogen-chloride", "hydrogen-chloride", "hydrogen-chloride", 50, true)
			data_util.replace_or_add_ingredient("rocket-fuel-with-hydrogen-chloride", "oxygen", "oxygen", 50, true)
			data_util.remove_ingredient("se-vulcanite-rocket-fuel", "oxygen")
			data_util.remove_ingredient("se-vulcanite-rocket-fuel", "iron-plate")
		end
		data_util.replace_or_add_ingredient("se-vulcanite-rocket-fuel", "se-vulcanite-block", "se-vulcanite-block", 1)
	end
	if mods["Krastorio2"] and settings.startup["cs2-tweaks-condense-hydrogen"].value == true then
		data:extend({
			{
			type = "recipe",
			name = "hydrogen",
			category = "atmosphere-condensation",
			icon = kr_fluids_icons_path .. "hydrogen.png",
			icon_size = 64,
			energy_required = 10,
			enabled = false,
			always_show_made_in = true,
			always_show_products = true,
			hide_from_player_crafting = true,
			ingredients = {},
			results = {
			  { type = "fluid", name = "hydrogen", amount = 300 },
			},
			subgroup = "raw-material",
			order = "a[atmosphere-condensation]-a1[hydrogen]",
		  }
		})
		data_util.recipe_require_tech("hydrogen", "kr-atmosphere-condensation")
	end
end
