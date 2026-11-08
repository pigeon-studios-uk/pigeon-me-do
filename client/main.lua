--[[
    Pigeon Me and Do: client.

    /me and /do send the text to the server, which tidies it and sends it to everyone. Each game shows it
    above the sender's head for Config.Seconds, and in chat, if the sender is within Config.Distance.
]]

local HEAD = 31086              -- SKEL_Head
local ABOVE = 0.45              -- metres above the head for the first line
local LINE = 0.13               -- metres between lines

-- 'auto' follows ox_lib's language (the ox:locale convar), and English when that isn't set.
local locale = Config.Locale == 'auto' and GetConvar('ox:locale', 'en') or Config.Locale
local strings = Locales[locale] or Locales.en

local function t(key, values)
    local text = strings[key] or Locales.en[key] or key
    return (text:gsub('{(%w+)}', function(name)
        local value = values and values[name]
        return value ~= nil and tostring(value) or '{' .. name .. '}'
    end))
end

local shown = {}                -- [server id] = { { kind, text, untilAt }, ... }, newest last

--- The sender's ped, if they're in range of this game, or nil.
local function pedOf(serverId)
    local player = GetPlayerFromServerId(serverId)
    if player == -1 then return nil end
    local ped = GetPlayerPed(player)
    if ped == 0 or not DoesEntityExist(ped) then return nil end
    return ped
end

local function draw(coords, text, colour)
    SetDrawOrigin(coords.x, coords.y, coords.z, false)
    SetTextScale(0.0, 0.33)
    SetTextFont(4)
    SetTextProportional(true)
    SetTextColour(colour[1], colour[2], colour[3], 235)
    SetTextOutline()
    SetTextCentre(true)
    BeginTextCommandDisplayText('STRING')
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayText(0.0, 0.0)
    ClearDrawOrigin()
end

local drawing = false

local function drawLoop()
    if drawing then return end
    drawing = true
    CreateThread(function()
        while next(shown) do
            local now = GetGameTimer()
            local me = GetEntityCoords(PlayerPedId())
            for serverId, lines in pairs(shown) do
                for i = #lines, 1, -1 do
                    if now >= lines[i].untilAt then table.remove(lines, i) end
                end
                local ped = #lines > 0 and pedOf(serverId)
                if not ped then
                    shown[serverId] = nil
                elseif #(me - GetEntityCoords(ped)) <= Config.Distance then
                    local head = GetPedBoneCoords(ped, HEAD, 0.0, 0.0, 0.0)
                    for i, line in ipairs(lines) do
                        local z = head.z + ABOVE + (#lines - i) * LINE
                        draw(vector3(head.x, head.y, z), line.text, Config.Colours[line.kind])
                    end
                end
            end
            Wait(0)
        end
        drawing = false
    end)
end

RegisterNetEvent('pigeon-me-do:show', function(serverId, kind, text, name)
    if kind ~= 'me' and kind ~= 'do' or type(text) ~= 'string' then return end
    local ped = pedOf(serverId)
    if not ped or #(GetEntityCoords(PlayerPedId()) - GetEntityCoords(ped)) > Config.Distance then return end

    local line = kind == 'me' and t('me_above', { text = text }) or t('do_above', { text = text })
    shown[serverId] = shown[serverId] or {}
    table.insert(shown[serverId], { kind = kind, text = line, untilAt = GetGameTimer() + Config.Seconds * 1000 })
    while #shown[serverId] > 3 do table.remove(shown[serverId], 1) end
    drawLoop()

    if Config.Chat then
        TriggerEvent('chat:addMessage', {
            color = Config.Colours[kind],
            args = { t(kind == 'me' and 'me_chat' or 'do_chat', { name = name or '', text = text }) },
        })
    end
end)

---------------------------------------------------------------------------
-- Commands

local function command(kind)
    return function(_, args, raw)
        local text = raw and raw:match('^%S+%s+(.+)$') or table.concat(args, ' ')
        if not text or text:match('^%s*$') then
            TriggerEvent('chat:addMessage', { args = { t('usage_' .. kind, { command = Config.Commands[kind] }) } })
            return
        end
        TriggerServerEvent('pigeon-me-do:send', kind, text)
    end
end

RegisterCommand(Config.Commands.me, command('me'), false)
RegisterCommand(Config.Commands['do'], command('do'), false)

TriggerEvent('chat:addSuggestion', '/' .. Config.Commands.me, t('help_me'), { { name = t('help_text') } })
TriggerEvent('chat:addSuggestion', '/' .. Config.Commands['do'], t('help_do'), { { name = t('help_text') } })
