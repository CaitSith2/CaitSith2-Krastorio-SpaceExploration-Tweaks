data:extend({
	{
		type = "bool-setting",
		name = "cs2-tweaks-beacons",
		setting_type = "startup",
		default_value = true
	},
	{
		type = "bool-setting",
		name = "cs2-tweaks-rocket-fuel-stack-size",
		setting_type = "startup",
		default_value = true
	},
	{
		type = "bool-setting",
		name = "cs2-tweaks-rocket-fuel-cheap-recipes",
		setting_type = "startup",
		default_value = true
	},
	{
		type = "bool-setting",
		name = "cs2-tweaks-more-heat-shielding",
		setting_type = "startup",
		default_value = true
	},
	{
		type = "bool-setting",
		name = "cs2-tweaks-more-low-density-structure",
		setting_type = "startup",
		default_value = true
	},
	{
		type = "bool-setting",
		name = "cs2-tweaks-more-modules",
		setting_type = "startup",
		default_value = true
	},
	{
		type = "bool-setting",
		name = "cs2-tweaks-faster-modules",
		setting_type = "startup",
		default_value = true
	},
	{
		type = "bool-setting",
		name = "cs2-tweaks-faster-machines",
		setting_type = "startup",
		default_value = true
	},
	{
		type = "bool-setting",
		name = "cs2-tweaks-early-teleportation",
		setting_type = "startup",
		default_value = true
	},
	{
		type = "bool-setting",
		name = "cs2-tweaks-more-space-platform-scaffold",
		setting_type = "startup",
		default_value = true
	},
	{
		type = "bool-setting",
		name = "cs2-tweaks-more-space-platform-plating",
		setting_type = "startup",
		default_value = true
	},
	{
		type = "bool-setting",
		name = "cs2-tweaks-more-spaceship-floor",
		setting_type = "startup",
		default_value = true
	},
	{
		type = "bool-setting",
		name = "cs2-tweaks-more-landfill",
		setting_type = "startup",
		default_value = true
	}
})
if not mods["Krastorio2"] then
	data:extend({
		{
			type = "bool-setting",
			name = "cs2-tweaks-sand-water-landfill",
			setting_type = "startup",
			default_value = true
		}
	})
else
	data:extend({
		{
			type = "bool-setting",
			name = "cs2-tweaks-condense-hydrogen",
			setting_type = "startup",
			default_value = true
		}
	})
	
end
if mods["Mining_Drones"] then
	data:extend({
		{
			type = "bool-setting",
			name = "cs2-tweaks-allow-mining-drone-in-space",
			setting_type = "startup",
			default_value = true
		}
	})
end
if mods["Transport_Drones"] then
	data:extend({
		{
			type = "bool-setting",
			name = "cs2-tweaks-allow-roads-on-empty-space",
			setting_type = "startup",
			default_value = true
		}
	})
end
if mods["Factorissimo2"] or mods["space-factorissimo-updated"] then
	data:extend({
		{
			type = "bool-setting",
			name = "cs2-tweaks-allow-factory-buildings-on-spaceship",
			setting_type = "startup",
			default_value = true
		}
	})
end