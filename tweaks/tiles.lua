if mods["space-exploration"] then
	if settings.startup["cs2-tweaks-more-space-platform-scaffold"].value == true then
		data.raw.recipe["se-space-platform-scaffold"].result_count = 10
	end
	if settings.startup["cs2-tweaks-more-space-platform-plating"].value == true then
		data.raw.recipe["se-space-platform-plating"].result_count = 10
	end
	if settings.startup["cs2-tweaks-more-spaceship-floor"].value == true then
		data.raw.recipe["se-spaceship-floor"].result_count = 10
	end
	if settings.startup["cs2-tweaks-more-landfill"].value == true then
		data.raw.recipe["landfill"].result_count = 10
		if mods["Krastorio2"] then
			data.raw.recipe["landfill-2"].result_count = 10
		end
	end
end