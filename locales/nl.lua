--[[
    Pigeon Me and Do: Dutch (Nederlands).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'nl'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.nl = {
    me_above = '* {text} *',
    do_above = '{text}',
    me_chat = '* {name} {text}',
    do_chat = '* {text} (({name}))',
    help_me = 'Beschrijf wat je personage doet.',
    help_do = 'Beschrijf wat er rond je personage gebeurt.',
    help_text = 'tekst',
    usage_me = 'Gebruik /{command} gevolgd door wat je personage doet.',
    usage_do = 'Gebruik /{command} gevolgd door wat er gebeurt.',
}
