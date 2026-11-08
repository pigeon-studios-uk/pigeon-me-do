--[[
    Pigeon Me and Do: Slovenian (Slovenščina).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'sl'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.sl = {
    me_above = '* {text} *',
    do_above = '{text}',
    me_chat = '* {name} {text}',
    do_chat = '* {text} (({name}))',
    help_me = 'Opiši, kaj počne tvoj lik.',
    help_do = 'Opiši, kaj se dogaja okoli tvojega lika.',
    help_text = 'besedilo',
    usage_me = 'Uporabi /{command} in za njim, kaj počne tvoj lik.',
    usage_do = 'Uporabi /{command} in za njim, kaj se dogaja.',
}
