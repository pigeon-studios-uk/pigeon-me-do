--[[
    Pigeon Me and Do: Indonesian (Bahasa Indonesia).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'id'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.id = {
    me_above = '* {text} *',
    do_above = '{text}',
    me_chat = '* {name} {text}',
    do_chat = '* {text} (({name}))',
    help_me = 'Jelaskan apa yang dilakukan karaktermu.',
    help_do = 'Jelaskan apa yang terjadi di sekitar karaktermu.',
    help_text = 'teks',
    usage_me = 'Gunakan /{command} diikuti apa yang dilakukan karaktermu.',
    usage_do = 'Gunakan /{command} diikuti apa yang terjadi.',
}
