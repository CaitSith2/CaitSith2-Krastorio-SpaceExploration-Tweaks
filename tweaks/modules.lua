local data_util = require("__space-exploration-postprocess__/data_util")

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
	data.raw.recipe[name].result_count = 3
	data_util.set_craft_time(name, craft_time(tier))
  end
end