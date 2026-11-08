--[[
    Pigeon Me and Do: Turkish (Türkçe).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'tr'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.tr = {
    me_above = '* {text} *',
    do_above = '{text}',
    me_chat = '* {name} {text}',
    do_chat = '* {text} (({name}))',
    help_me = 'Karakterinin ne yaptığını anlat.',
    help_do = 'Karakterinin çevresinde ne olduğunu anlat.',
    help_text = 'metin',
    usage_me = '/{command} yazıp ardından karakterinin ne yaptığını yaz.',
    usage_do = '/{command} yazıp ardından ne olduğunu yaz.',
}
