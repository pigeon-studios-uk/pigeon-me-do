--[[
    Pigeon Me and Do: Czech (Čeština).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'cs'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.cs = {
    me_above = '* {text} *',
    do_above = '{text}',
    me_chat = '* {name} {text}',
    do_chat = '* {text} (({name}))',
    help_me = 'Popiš, co tvoje postava dělá.',
    help_do = 'Popiš, co se děje kolem tvé postavy.',
    help_text = 'text',
    usage_me = 'Použij /{command} a za ním, co tvoje postava dělá.',
    usage_do = 'Použij /{command} a za ním, co se děje.',
}
