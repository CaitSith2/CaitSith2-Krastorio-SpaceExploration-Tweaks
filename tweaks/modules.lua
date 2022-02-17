local function craft_time(tier)
  return 1.6^tier
end

local function module_name(base_name, tier)
  local name = base_name
  if tier > 1 then
    name = name .. "-"..tier
  end
  return name
end

for _, base_name in pairs({"productivity-module", "speed-module", "effectivity-module"}) do
  for tier = 1, 9 do
    local name = module_name(base_name, tier)
	local recipe = data.raw.recipe[name]
	if recipe then
		if settings.startup["cs2-tweaks-more-modules"].value == true then
			recipe.result_count = 3
		end
		if settings.startup["cs2-tweaks-faster-modules"].value == true then
			if recipe.energy_required then
				recipe.energy_required = craft_time(tier)
			end
			if recipe.normal then
				recipe.normal.energy_required = craft_time(tier)
			end
			if recipe.expensive then
				recipe.expensive.energy_required = craft_time(tier)
			end
		end
	end
  end
end