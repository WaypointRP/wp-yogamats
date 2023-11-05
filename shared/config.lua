Config = {}

Config.Framework = 'qb' -- supports 'qb' or 'esx'
Config.Notify = 'qb' -- supports 'qb', 'esx', 'ox' (if using ox enable @ox_lib/init.lua in the manifest)
Config.Target = 'qb' -- only 'qb' for now

Config.YogaMats = {}

-- Set to true to periodically reduce stress while doing yoga
Config.YogaMats.ShouldReduceStress = true

-- Set to true to periodically heal while doing yoga
Config.YogaMats.ShouldIncreaseHealth = true

-- How often to apply buffs while doing yoga (in milliseconds)
Config.YogaMats.BuffInterval = 10000 
