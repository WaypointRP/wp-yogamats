Config = {}

Config.Framework = 'qb' -- supports 'qb' or 'esx'
Config.Notify = 'qb' -- supports 'qb', 'esx', 'ox' (if using ox enable @ox_lib/init.lua in the manifest)

-- Set to true to periodically reduce stress while doing yoga
Config.ShouldReduceStress = true

-- Set to true to periodically heal while doing yoga
Config.ShouldIncreaseHealth = true

-- How often to apply buffs while doing yoga (in milliseconds)
Config.BuffInterval = 10000
