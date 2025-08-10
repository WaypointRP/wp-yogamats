Config = {}

------------------------------------
-- FRAMEWORK / SCRIPT CONFIGURATION
-- Adjust these settings to match the framework and scripts you are using
-- Note: If using ox for any option, enable @ox_lib/init.lua in the manifest!
------------------------------------

--- @type "qb" | "qbx" | "esx"
Config.Framework = "qb"

-- The notification script you are using.
--- @type "qb" | "esx" | "ox" | "none"
Config.Notify = "qb"

------------------------------------
--- END FRAMEWORK / SCRIPT CONFIGURATION
------------------------------------

-- Set to true to periodically reduce stress while doing yoga
--- @type boolean
Config.ShouldReduceStress = true

-- Amount of stress to reduce each interval
--- @type number
Config.ReduceStressAmount = 2.0

-- Set to true to periodically heal while doing yoga
--- @type boolean
Config.ShouldIncreaseHealth = true

-- Amount of health to increase each interval
--- @type number
Config.IncreaseHealthAmount = 1

-- How often to apply buffs (health or stress buff) while doing yoga (in milliseconds)
--- @type number
Config.BuffInterval = 10000
