--[[
    Pigeon Me and Do: Italian (Italiano).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'it'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.it = {
    me_above = '* {text} *',
    do_above = '{text}',
    me_chat = '* {name} {text}',
    do_chat = '* {text} (({name}))',
    help_me = 'Descrivi cosa fa il tuo personaggio.',
    help_do = 'Descrivi cosa succede intorno al tuo personaggio.',
    help_text = 'testo',
    usage_me = 'Usa /{command} seguito da cosa fa il tuo personaggio.',
    usage_do = 'Usa /{command} seguito da cosa sta succedendo.',
}
