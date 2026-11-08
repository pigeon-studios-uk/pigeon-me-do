--[[
    Pigeon Me and Do: Norwegian (Norsk).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'no'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.no = {
    me_above = '* {text} *',
    do_above = '{text}',
    me_chat = '* {name} {text}',
    do_chat = '* {text} (({name}))',
    help_me = 'Beskriv hva karakteren din gjør.',
    help_do = 'Beskriv hva som skjer rundt karakteren din.',
    help_text = 'tekst',
    usage_me = 'Bruk /{command} etterfulgt av hva karakteren din gjør.',
    usage_do = 'Bruk /{command} etterfulgt av hva som skjer.',
}
