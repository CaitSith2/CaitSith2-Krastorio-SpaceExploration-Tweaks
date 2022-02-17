local data_util = require("__space-exploration-postprocess__/data_util")

data.raw.recipe["se-heat-shielding"].result_count = 5
data.raw.recipe["low-density-structure"].normal.result_count = 5
data.raw.recipe["se-low-density-structure-beryllium"].result_count = 5

data.raw.item["rocket-fuel"].stack_size = 100
data_util.replace_or_add_ingredient("rocket-fuel", "light-oil", "light-oil", 30, true)
data_util.replace_or_add_ingredient("rocket-fuel", "oxygen", "oxygen", 50, true)
data_util.replace_or_add_ingredient("rocket-fuel-with-ammonia", "ammonia", "ammonia", 50, true)
data_util.replace_or_add_ingredient("rocket-fuel-with-ammonia", "oxygen", "oxygen", 50, true)
data_util.replace_or_add_ingredient("rocket-fuel-with-hydrogen-chloride", "hydrogen-chloride", "hydrogen-chloride", 50, true)
data_util.replace_or_add_ingredient("rocket-fuel-with-hydrogen-chloride", "oxygen", "oxygen", 50, true)
data_util.remove_ingredient("se-vulcanite-rocket-fuel", "oxygen")
data_util.remove_ingredient("se-vulcanite-rocket-fuel", "iron-plate")
data_util.replace_or_add_ingredient("se-vulcanite-rocket-fuel", "se-vulcanite-block", "se-vulcanite-block", 1)