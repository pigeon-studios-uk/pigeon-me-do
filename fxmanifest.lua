fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'pigeon-me-do'
author 'Pigeon Studios'
description '/me and /do above your head and in nearby chat, with character names on Qbox, QBCore and ESX.'
version '0.1.0'
repository 'https://github.com/pigeon-studios-uk/pigeon-me-do'

-- Pigeon Studios version registry entry, read by server/version_check.lua.
pigeon_slug 'pigeon-me-do'

shared_script 'configuration/config.lua'

client_scripts {
    'locales/*.lua',
    'client/main.lua',
}

server_scripts {
    'server/main.lua',
    'server/version_check.lua',
}
