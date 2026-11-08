--[[
    Pigeon Me and Do: Finnish (Suomi).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'fi'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.fi = {
    me_above = '* {text} *',
    do_above = '{text}',
    me_chat = '* {name} {text}',
    do_chat = '* {text} (({name}))',
    help_me = 'Kuvaile, mitä hahmosi tekee.',
    help_do = 'Kuvaile, mitä hahmosi ympärillä tapahtuu.',
    help_text = 'teksti',
    usage_me = 'Käytä /{command} ja sen perään, mitä hahmosi tekee.',
    usage_do = 'Käytä /{command} ja sen perään, mitä tapahtuu.',
}
