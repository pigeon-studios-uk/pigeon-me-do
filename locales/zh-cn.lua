--[[
    Pigeon Me and Do: Simplified Chinese (简体中文).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'zh-cn'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales['zh-cn'] = {
    me_above = '* {text} *',
    do_above = '{text}',
    me_chat = '* {name} {text}',
    do_chat = '* {text} (({name}))',
    help_me = '描述你的角色在做什么。',
    help_do = '描述你角色周围发生了什么。',
    help_text = '文本',
    usage_me = '使用 /{command} 后接你的角色在做什么。',
    usage_do = '使用 /{command} 后接正在发生的事。',
}
