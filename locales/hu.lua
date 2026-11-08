--[[
    Pigeon Me and Do: Hungarian (Magyar).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'hu'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.hu = {
    me_above = '* {text} *',
    do_above = '{text}',
    me_chat = '* {name} {text}',
    do_chat = '* {text} (({name}))',
    help_me = 'Írd le, mit csinál a karaktered.',
    help_do = 'Írd le, mi történik a karaktered körül.',
    help_text = 'szöveg',
    usage_me = 'Használd: /{command}, utána azt, amit a karaktered csinál.',
    usage_do = 'Használd: /{command}, utána azt, ami történik.',
}
