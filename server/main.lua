--[[
    Pigeon Me and Do: server.

    Takes each /me or /do, tidies the text (no GTA colour codes, no HTML, one line, Config.MaxLength at most),
    adds the character's name, and sends it to every player. Each player's game shows it if they're within
    Config.Distance of whoever sent it.
]]

local RATE_MS = 1000            -- the shortest time between two from one player

local last = {}

AddEventHandler('playerDropped', function() last[source] = nil end)

--- One line of plain text, or nil if nothing's left.
local function tidy(text)
    if type(text) ~= 'string' then return nil end
    text = text:gsub('[%c]', ' '):gsub('[~<>]', ''):gsub('%s+', ' ')
    text = text:match('^%s*(.-)%s*$')
    if text == '' then return nil end
    local max = tonumber(Config.MaxLength) or 120
    if utf8.len(text) and utf8.len(text) > max then
        text = text:sub(1, utf8.offset(text, max + 1) - 1)
    end
    return text
end

--- The character's name on Qbox, QBCore or ESX, or the player's FiveM name.
local qbCore, esx
local function nameOf(src)
    if Config.Names == 'character' then
        local ok, name = pcall(function()
            if GetResourceState('qbx_core') == 'started' then
                local player = exports.qbx_core:GetPlayer(src)
                local info = player and player.PlayerData.charinfo
                return info and (info.firstname .. ' ' .. info.lastname)
            elseif GetResourceState('qb-core') == 'started' then
                qbCore = qbCore or exports['qb-core']:GetCoreObject()
                local player = qbCore.Functions.GetPlayer(src)
                local info = player and player.PlayerData.charinfo
                return info and (info.firstname .. ' ' .. info.lastname)
            elseif GetResourceState('es_extended') == 'started' then
                esx = esx or exports.es_extended:getSharedObject()
                local player = esx.GetPlayerFromId(src)
                return player and player.getName()
            end
        end)
        if ok and name and name ~= '' then return tidy(name) or GetPlayerName(src) end
    end
    return GetPlayerName(src)
end

RegisterNetEvent('pigeon-me-do:send', function(kind, text)
    local src = source
    if kind ~= 'me' and kind ~= 'do' then return end
    local now = GetGameTimer()
    if last[src] and now - last[src] < RATE_MS then return end
    last[src] = now

    text = tidy(text)
    if not text then return end
    TriggerClientEvent('pigeon-me-do:show', -1, src, kind, text, nameOf(src))
end)
