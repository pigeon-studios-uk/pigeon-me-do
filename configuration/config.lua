Config = {}

-- Language for the text players see. 'auto' follows ox_lib's language (setr ox:locale "de" in
-- server.cfg) and is English when that isn't set. Or name a file from locales/, such as 'de' or 'pt-br'.
Config.Locale = 'auto'

-- The command names.
Config.Commands = {
    me = 'me',          -- an action:      /me pulls out a notepad
    ['do'] = 'do',      -- a description:  /do The notepad is full of numbers
}

-- How far away, in metres, other players see the text and get the chat message.
Config.Distance = 20.0

-- How long, in seconds, the text stays above the player's head.
Config.Seconds = 7

-- The longest text, in characters.
Config.MaxLength = 120

-- Also put it in nearby players' chat, with the character's name.
Config.Chat = true

-- Colours, as { red, green, blue } from 0 to 255, for the text above heads and in chat.
Config.Colours = {
    me = { 194, 135, 255 },
    ['do'] = { 255, 166, 77 },
}

-- Names in chat. 'character' uses the character's name on Qbox, QBCore and ESX, and the player's name
-- anywhere else. 'player' always uses the player's FiveM name.
Config.Names = 'character'

-- Update checks are controlled in server.cfg for every Pigeon Studios resource at once:
--     set pigeon_update_check "on"      (default)  |  "quiet"  |  "off"
