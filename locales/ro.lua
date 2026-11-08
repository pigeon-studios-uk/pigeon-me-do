--[[
    Pigeon Me and Do: Romanian (Română).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'ro'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.ro = {
    me_above = '* {text} *',
    do_above = '{text}',
    me_chat = '* {name} {text}',
    do_chat = '* {text} (({name}))',
    help_me = 'Descrie ce face personajul tău.',
    help_do = 'Descrie ce se întâmplă în jurul personajului tău.',
    help_text = 'text',
    usage_me = 'Folosește /{command} urmat de ce face personajul tău.',
    usage_do = 'Folosește /{command} urmat de ce se întâmplă.',
}
