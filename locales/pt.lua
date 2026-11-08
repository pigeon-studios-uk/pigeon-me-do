--[[
    Pigeon Me and Do: Portuguese (Português).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'pt'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.pt = {
    me_above = '* {text} *',
    do_above = '{text}',
    me_chat = '* {name} {text}',
    do_chat = '* {text} (({name}))',
    help_me = 'Descreve o que a tua personagem faz.',
    help_do = 'Descreve o que acontece à volta da tua personagem.',
    help_text = 'texto',
    usage_me = 'Usa /{command} seguido do que a tua personagem faz.',
    usage_do = 'Usa /{command} seguido do que está a acontecer.',
}
