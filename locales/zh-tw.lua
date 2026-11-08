--[[
    Pigeon Me and Do: Traditional Chinese (繁體中文).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'zh-tw'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales['zh-tw'] = {
    me_above = '* {text} *',
    do_above = '{text}',
    me_chat = '* {name} {text}',
    do_chat = '* {text} (({name}))',
    help_me = '描述你的角色在做什麼。',
    help_do = '描述你角色周圍發生了什麼。',
    help_text = '文字',
    usage_me = '使用 /{command} 後接你的角色在做什麼。',
    usage_do = '使用 /{command} 後接正在發生的事。',
}
