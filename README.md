# Waypoint Yogamats

This is a simple addon for [Waypoint Placeables](https://github.com/WaypointRP/wp-placeables) that lets the player place a yoga mat on the ground and interact with the yogamat to begin doing yoga.

## Usage
The player has two yoga options when interacting with the yoga mat:
- Begin a looped animation of doing yoga by pressing the `UP` arrow key
- Cycle between yoga actions one at a time by pressing the `LEFT / RIGHT` arrow keys

The player can exit the yoga mat by pressing `BACKSPACE`.

## Setup

Enable the script in your server.cfg
- Be sure to start this script after `wp-placeables`

You can optionally configure to apply buffs to the player while they are using a yogamat (ie: reduce stress, increase health, etc).

Add this to your items.lua:
```lua
["yogamat_blue"] = {["name"] = "yogamat_blue", ["label"] = "Yoga mat (Blue)", ["weight"] = 500, ["type"] = "item", ["image"] = "yogamat_blue.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true,["combinable"] = nil,   ["description"] = "Yoga is a great way to reduce stress"},
["yogamat_black"]  = {["name"] = "yogamat_black", ["label"] = "Yoga mat (Black)", ["weight"] = 500, ["type"] = "item", ["image"] = "yogamat_black.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true,["combinable"] = nil,   ["description"] = "Yoga is a great way to reduce stress"},
["yogamat_red"] = {["name"] = "yogamat_red", ["label"] = "Yoga mat (Red)", ["weight"] = 500, ["type"] = "item", ["image"] = "yogamat_red.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true,["combinable"] = nil,   ["description"] = "Yoga is a great way to reduce stress"},
```

Uncomment the following lines in `wp-placeables/shared/config.lua` to add the items as placeable:
```lua
local yogaCustomTargetOptions = {
    {
        event = "wp-yogamats:client:useYogaMat",
        icon = "fas fa-pray",
        label = "Do yoga",
    },
}

{item = "yogamat_blue", label = "Yoga mat (Blue)", model = "prop_yoga_mat_01", isFrozen = true, customTargetOptions = yogaCustomTargetOptions},
{item = "yogamat_black", label = "Yoga mat (Black)", model = "prop_yoga_mat_02", isFrozen = true, customTargetOptions = yogaCustomTargetOptions},
{item = "yogamat_red", label = "Yoga mat (Red)", model = "prop_yoga_mat_03", isFrozen = true, customTargetOptions = yogaCustomTargetOptions},
```

## Dependencies
- QBCore / ESX / Or other frameworks (must implement framework specific solutions in framework.lua)
- QBCore / ESX / OX for Notifications
- [Waypoint Placeables](https://github.com/WaypointRP/wp-placeables)

## Credit
Authored by: BackSH00TER - Waypoint Scripts
