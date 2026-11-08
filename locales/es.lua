--[[
    Pigeon Me and Do: Spanish (Español).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'es'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.es = {
    me_above = '* {text} *',
    do_above = '{text}',
    me_chat = '* {name} {text}',
    do_chat = '* {text} (({name}))',
    help_me = 'Describe lo que hace tu personaje.',
    help_do = 'Describe lo que pasa alrededor de tu personaje.',
    help_text = 'texto',
    usage_me = 'Usa /{command} seguido de lo que hace tu personaje.',
    usage_do = 'Usa /{command} seguido de lo que está pasando.',
}
