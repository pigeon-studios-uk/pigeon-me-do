--[[
    Pigeon Me and Do: Estonian (Eesti).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'et'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.et = {
    me_above = '* {text} *',
    do_above = '{text}',
    me_chat = '* {name} {text}',
    do_chat = '* {text} (({name}))',
    help_me = 'Kirjelda, mida su tegelane teeb.',
    help_do = 'Kirjelda, mis su tegelase ümber toimub.',
    help_text = 'tekst',
    usage_me = 'Kasuta /{command} ja selle järel, mida su tegelane teeb.',
    usage_do = 'Kasuta /{command} ja selle järel, mis toimub.',
}
