# Waypoint Yogamats

![wp-yogamats](https://github.com/WaypointRP/wp-yogamats/assets/18689469/95c0cfa1-4f82-4982-8e96-2a2df68fa7e8)

This is a simple addon for [Waypoint Placeables](https://github.com/WaypointRP/wp-placeables) that lets the player place a yoga mat on the ground and interact with the yogamat to begin doing yoga.
You can optionally configure to apply buffs to the player while they are using a yogamat (ie: reduce stress, increase health, etc).

[Preview](https://www.youtube.com/watch?v=oqgQ3HYw-N0)

## Usage
The player has two yoga options when interacting with the yoga mat:
- Begin a looped animation of doing yoga by pressing the `UP` arrow key
- Cycle between yoga actions one at a time by pressing the `LEFT / RIGHT` arrow keys

The player can exit the yoga mat by pressing `BACKSPACE`.

## Setup

1. Ensure you have [Waypoint Placeables](https://github.com/WaypointRP/wp-placeables) downloaded and setup.

2. Enable the script in your server.cfg
   - Be sure to start this script after `wp-placeables`

3. Update the config variables to fit your framework and whether you want to apply buffs (`Config.ShouldReduceStress` and `Config.ShouldIncreaseHealth`)

4. Add the items to your inventory items.lua:
    <details>
    <summary> QB Inventory </summary>
        ```lua
        ["yogamat_blue"] = {["name"] = "yogamat_blue", ["label"] = "Yoga mat (Blue)", ["weight"] = 500, ["type"] = "item", ["image"] = "yogamat_blue.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true,["combinable"] = nil,   ["description"] = "Yoga is a great way to reduce stress"},
        ["yogamat_black"]  = {["name"] = "yogamat_black", ["label"] = "Yoga mat (Black)", ["weight"] = 500, ["type"] = "item", ["image"] = "yogamat_black.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true,["combinable"] = nil,   ["description"] = "Yoga is a great way to reduce stress"},
        ["yogamat_red"] = {["name"] = "yogamat_red", ["label"] = "Yoga mat (Red)", ["weight"] = 500, ["type"] = "item", ["image"] = "yogamat_red.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true,["combinable"] = nil,   ["description"] = "Yoga is a great way to reduce stress"},
        ```
    </details>

    <details>
    <summary> OX Inventory </summary>
        ```lua
        ["yogamat_blue"] = {
            label = "Yoga mat (Blue)",
            weight = 500,
            stack = true,
            close = true,
            description = "Yoga is a great way to reduce stress"
        },
        ["yogamat_black"] = {
            label = "Yoga mat (Black)",
            weight = 500,
            stack = true,
            close = true,
            description = "Yoga is a great way to reduce stress"
        },
        ["yogamat_red"] = {
            label = "Yoga mat (Red)",
            weight = 500,
            stack = true,
            close = true,
            description = "Yoga is a great way to reduce stress"
        },
        ```
    </details>

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
> Note: If you are using `ox` for any of the Framework options you need to uncomment `@ox_lib/init.lua` in the fxmanifest.lua.

## Dependencies
- [Waypoint Placeables](https://github.com/WaypointRP/wp-placeables)
- QBCore / Qbox / ESX / Or other frameworks (must implement framework specific solutions in framework.lua)
- QBCore / ESX / OX for Notifications

## Credit
Authored by: BackSH00TER - Waypoint Scripts

@DonHulieo for providing insipiration and examples for structuring the framework.lua file.
