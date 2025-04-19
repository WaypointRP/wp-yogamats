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

-- Set to true to periodically heal while doing yoga
--- @type boolean
Config.ShouldIncreaseHealth = true

-- How often to apply buffs while doing yoga (in milliseconds)
--- @type number
Config.BuffInterval = 10000
