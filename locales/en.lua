--[[
    Pigeon Me and Do: English.

    To translate, copy this file to a new one named with the language's code (such as de.lua or pt-br.lua),
    change `Locales.en` to match (Locales.de), translate the text in quotes, and set Config.Locale.
    Keep words in {curly brackets} and ~GTA codes~ exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.en = {
    -- Above the head. {text} is what the player wrote; keep the stars.
    me_above = '* {text} *',
    -- Above the head. {text} is what the player wrote.
    do_above = '{text}',
    -- In chat. {name} is the character's name.
    me_chat = '* {name} {text}',
    -- In chat. {name} is the character's name.
    do_chat = '* {text} (({name}))',
    -- The chat suggestion for /me.
    help_me = 'Describe what your character does.',
    -- The chat suggestion for /do.
    help_do = 'Describe what\'s happening around your character.',
    -- The name of the command's text, in the chat suggestion.
    help_text = 'text',
    -- In chat, after /me with no text. {command} is the command name.
    usage_me = 'Use /{command} followed by what your character does.',
    -- In chat, after /do with no text. {command} is the command name.
    usage_do = 'Use /{command} followed by what\'s happening.',
}
