--[[
    Pigeon Me and Do: German (Deutsch).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'de'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.de = {
    me_above = '* {text} *',
    do_above = '{text}',
    me_chat = '* {name} {text}',
    do_chat = '* {text} (({name}))',
    help_me = 'Beschreibe, was dein Charakter tut.',
    help_do = 'Beschreibe, was um deinen Charakter passiert.',
    help_text = 'Text',
    usage_me = 'Nutze /{command} und danach, was dein Charakter tut.',
    usage_do = 'Nutze /{command} und danach, was passiert.',
}
