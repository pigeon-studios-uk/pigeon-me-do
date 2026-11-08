--[[
    Pigeon Me and Do: Polish (Polski).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'pl'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.pl = {
    me_above = '* {text} *',
    do_above = '{text}',
    me_chat = '* {name} {text}',
    do_chat = '* {text} (({name}))',
    help_me = 'Opisz, co robi twoja postać.',
    help_do = 'Opisz, co dzieje się wokół twojej postaci.',
    help_text = 'tekst',
    usage_me = 'Użyj /{command}, a po nim tego, co robi twoja postać.',
    usage_do = 'Użyj /{command}, a po nim tego, co się dzieje.',
}
