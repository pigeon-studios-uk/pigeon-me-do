--[[
    Pigeon Me and Do: Brazilian Portuguese (Português do Brasil).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'pt-br'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales['pt-br'] = {
    me_above = '* {text} *',
    do_above = '{text}',
    me_chat = '* {name} {text}',
    do_chat = '* {text} (({name}))',
    help_me = 'Descreva o que seu personagem faz.',
    help_do = 'Descreva o que acontece ao redor do seu personagem.',
    help_text = 'texto',
    usage_me = 'Use /{command} seguido do que seu personagem faz.',
    usage_do = 'Use /{command} seguido do que está acontecendo.',
}
