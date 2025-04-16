-- IsDuplicityVersion - is used to determine if the function is called by the server or the client (true == from server)

--------------------- SHARED FUNCTIONS ---------------------
local Core = nil
--- @return table Core The core object of the framework
function GetCoreObject()
    if not Core then
        if Config.Framework == "esx" then
            Core = exports["es_extended"]:getSharedObject()
        elseif Config.Framework == "qb" or Config.Framework == "qbx" then
            Core = exports["qb-core"]:GetCoreObject()
        end
    end
    return Core
end

Core = Config.Framework ~= "none" and GetCoreObject() or nil

--- @param text string The text to show in the notification
--- @param notificationType string The type of notification to show ex: 'success', 'error', 'info'
--- @param src - number|nil The source of the player - only required when called from server side
function Notify(text, notificationType, src)
    if IsDuplicityVersion() then
        if Config.Notify == "esx" then
            TriggerClientEvent("esx:showNotification", src, text)
        elseif Config.Notify == "qb" then
            TriggerClientEvent("QBCore:Notify", src, text, notificationType)
        elseif Config.Notify == "ox" then
            TriggerClientEvent("ox_lib:notify", src, {
                description = text,
                type = notificationType,
            })
        end
    else
        if Config.Notify == "esx" then
            Core.ShowNotification(text)
        elseif Config.Notify == "qb" then
            Core.Functions.Notify(text, notificationType)
        elseif Config.Notify == "ox" then
            lib.notify({
                description = text,
                type = notificationType,
            })
        end
    end
end

--- @param source number|nil The source of the player
--- @return table PlayerData The player data of the player
function GetPlayerData(source)
    local Core = GetCoreObject()
    if IsDuplicityVersion() then
        if Config.Framework == "esx" then
            return Core.GetPlayerFromId(source)
        elseif Config.Framework == "qb" then
            return Core.Functions.GetPlayer(source).PlayerData
        elseif Config.Framework == "qbx" then
            return exports.qbx_core:GetPlayer(source).PlayerData
        end
    else
        if Config.Framework == "esx" then
            return Core.GetPlayerData()
        elseif Config.Framework == "qb" then
            return Core.Functions.GetPlayerData()
        elseif Config.Framework == "qbx" then
            return exports.qbx_core:GetPlayerData()
        end
    end
end

--------------------- CLIENT FUNCTIONS ---------------------

-- Gets the players current stress metadata and updates it based on the increment value
--- @param increment number The amount to increment the stress by (negative values will reduce stress)
function SetPlayerStressMetaData(increment)
    if Config.Framework == "esx" then
        -- No player metadata in ESX
    elseif Config.Framework == "qb" then
        local newStressValue = Core.Functions.GetPlayerData().metadata["stress"] + increment
        if newStressValue < 0 then
            newStressValue = 0
        end
        TriggerServerEvent("QBCore:Server:SetMetaData", "stress", newStressValue)
    elseif Config.Framework == "qbx" then
        TriggerServerEvent("hud:server:RelieveStress", increment)
    end
end

--------------------- SERVER FUNCTIONS ---------------------
