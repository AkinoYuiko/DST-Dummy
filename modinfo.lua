version = "1.10.5"
-- basic info --
name = locale == "zh" and "梦魇少女 达米" or "Dummy"
author = locale == "zh" and "丁香女子学校" or "Civi, 中华田园人, Tony, kengyou_lei, LSSSS"
description = locale == "zh" and "[版本: "..version..[[]

更新内容: 
- 修复一个小小的问题.

< 饥饿/精神/生命: 150/200/150 >
< 攻击倍率: 75% >

* 对人类不友好.

* 将精神化为梦魇.

* 原谅.
]]
or
"[Version: "..version..[[]

Changelog: 
- Fixed bug.

< Hunger/Sanity/Health: 150/200/150 >
< Damage: 75% >

* Unfriendly to people.

* Turns Sanity into nightmare.

* Forgive.]]

priority = 19
mod_dependencies = {
    {
        workshop = "workshop-2521851770",    -- Glassic API
        ["GlassicAPI"] = false,
        ["[API] Glassic API - DEV"] = true
    },
}

api_version = 10
dst_compatible = true
all_clients_require_mod = true

icon_atlas = "modicon.xml"
icon = "modicon.tex"
folder_name = folder_name or "workshop-"
if not folder_name:find("workshop-") then
	name = name .. " - DEV"
end
