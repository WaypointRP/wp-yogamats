# Waypoint Yogamats

![wp-yogamats](https://github.com/WaypointRP/wp-yogamats/assets/18689469/95c0cfa1-4f82-4982-8e96-2a2df68fa7e8)

This is a simple addon for [Waypoint Placeables](https://github.com/WaypointRP/wp-placeables) that lets the player place a yoga mat on the ground and interact with the yogamat to begin doing yoga.

## Usage
The player has two yoga options when interacting with the yoga mat:
- Begin a looped animation of doing yoga by pressing the `UP` arrow key
- Cycle between yoga actions one at a time by pressing the `LEFT / RIGHT` arrow keys

The player can exit the yoga mat by pressing `BACKSPACE`.

## Setup

1. Ensure you have [Waypoint Placeables](https://github.com/WaypointRP/wp-placeables) downloaded and setup.

2. Enable the script in your server.cfg
   - Be sure to start this script after `wp-placeables`

3. You can optionally configure to apply buffs to the player while they are using a yogamat (ie: reduce stress, increase health, etc).

4. Add this to your items.lua:
    ```lua
    ["yogamat_blue"] = {["name"] = "yogamat_blue", ["label"] = "Yoga mat (Blue)", ["weight"] = 500, ["type"] = "item", ["image"] = "yogamat_blue.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true,["combinable"] = nil,   ["description"] = "Yoga is a great way to reduce stress"},
    ["yogamat_black"]  = {["name"] = "yogamat_black", ["label"] = "Yoga mat (Black)", ["weight"] = 500, ["type"] = "item", ["image"] = "yogamat_black.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true,["combinable"] = nil,   ["description"] = "Yoga is a great way to reduce stress"},
    ["yogamat_red"] = {["name"] = "yogamat_red", ["label"] = "Yoga mat (Red)", ["weight"] = 500, ["type"] = "item", ["image"] = "yogamat_red.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true,["combinable"] = nil,   ["description"] = "Yoga is a great way to reduce stress"},
    ```

5. In `wp-placeables/shared/config.lua`, search for `-- Uncomment this line if you are using wp-yogamats` and uncomment the following lines:
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
- [Waypoint Placeables](https://github.com/WaypointRP/wp-placeables)
- QBCore / ESX / Or other frameworks (must implement framework specific solutions in framework.lua)
- QBCore / ESX / OX for Notifications

## Credit
Authored by: BackSH00TER - Waypoint Scripts
