--[[
    Pigeon Me and Do: Danish (Dansk).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'da'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.da = {
    me_above = '* {text} *',
    do_above = '{text}',
    me_chat = '* {name} {text}',
    do_chat = '* {text} (({name}))',
    help_me = 'Beskriv, hvad din karakter gør.',
    help_do = 'Beskriv, hvad der sker omkring din karakter.',
    help_text = 'tekst',
    usage_me = 'Brug /{command} efterfulgt af, hvad din karakter gør.',
    usage_do = 'Brug /{command} efterfulgt af, hvad der sker.',
}
