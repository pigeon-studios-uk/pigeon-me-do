--[[
    Pigeon Me and Do: Croatian (Hrvatski).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'hr'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.hr = {
    me_above = '* {text} *',
    do_above = '{text}',
    me_chat = '* {name} {text}',
    do_chat = '* {text} (({name}))',
    help_me = 'Opiši što tvoj lik radi.',
    help_do = 'Opiši što se događa oko tvog lika.',
    help_text = 'tekst',
    usage_me = 'Koristi /{command} i nakon toga što tvoj lik radi.',
    usage_do = 'Koristi /{command} i nakon toga što se događa.',
}
