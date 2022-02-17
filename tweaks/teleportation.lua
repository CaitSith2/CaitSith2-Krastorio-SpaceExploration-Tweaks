if settings.startup["cs2-tweaks-early-teleportation"].value == true then
	if mods["space-exploration"] then
		local data_util = require("__space-exploration-postprocess__/data_util")

		local deep_space_1_words = {"antimatter", "darkmatter", "singularity"}
		local deep_space_4_words = {"teleport", "dimension", "stargate"}
		for _, tech in pairs(data.raw.technology) do
			for _, word in pairs(deep_space_1_words) do
				if string.find(tech.name, word, 1, true) then
					data_util.tech_remove_ingredients(tech.name, { data_util.mod_prefix .. "deep-space-science-pack-1"})
				end
			end
			for _, word in pairs(deep_space_4_words) do
				if string.find(tech.name, word, 1, true) then
					data_util.tech_remove_ingredients(tech.name, { data_util.mod_prefix .. "deep-space-science-pack-4"})
				end
			end
		end

		if mods["Portals"] then
			data_util.tech_remove_prerequisites("portals", { data_util.mod_prefix .. "teleportation" })
			data_util.tech_remove_ingredients("portals", {
				"chemical-science-pack",
				"utility-science-pack",
				"production-science-pack",
				data_util.mod_prefix .. "rocket-science-pack",
				data_util.mod_prefix .."astronomic-science-pack-4",
				data_util.mod_prefix .."energy-science-pack-4",
				data_util.mod_prefix .."material-science-pack-4",
				data_util.mod_prefix .."deep-space-science-pack-4"
			})
		end

		if mods["Teleporters"] then
			data_util.tech_remove_prerequisites("teleporter", { data_util.mod_prefix .. "teleportation" })
			data_util.tech_remove_ingredients("teleporter", {
				"utility-science-pack",
				"production-science-pack",
				data_util.mod_prefix .. "rocket-science-pack",
				data_util.mod_prefix .."astronomic-science-pack-4",
				data_util.mod_prefix .."energy-science-pack-4",
				data_util.mod_prefix .."material-science-pack-4",
				data_util.mod_prefix .."deep-space-science-pack-4"
			})
		end
	end
end