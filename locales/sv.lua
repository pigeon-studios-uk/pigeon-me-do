--[[
    Pigeon Me and Do: Swedish (Svenska).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'sv'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.sv = {
    me_above = '* {text} *',
    do_above = '{text}',
    me_chat = '* {name} {text}',
    do_chat = '* {text} (({name}))',
    help_me = 'Beskriv vad din karaktär gör.',
    help_do = 'Beskriv vad som händer runt din karaktär.',
    help_text = 'text',
    usage_me = 'Använd /{command} följt av vad din karaktär gör.',
    usage_do = 'Använd /{command} följt av vad som händer.',
}
