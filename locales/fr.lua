--[[
    Pigeon Me and Do: French (Français).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'fr'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.fr = {
    me_above = '* {text} *',
    do_above = '{text}',
    me_chat = '* {name} {text}',
    do_chat = '* {text} (({name}))',
    help_me = 'Décris ce que fait ton personnage.',
    help_do = 'Décris ce qui se passe autour de ton personnage.',
    help_text = 'texte',
    usage_me = 'Utilise /{command} suivi de ce que fait ton personnage.',
    usage_do = 'Utilise /{command} suivi de ce qui se passe.',
}
