local prefabs = {}

table.insert(prefabs, CreatePrefabSkin("greenamulet_heart", {
	base_prefab = "greenamulet",
	type = "item",
    rarity = "Glassic",
    build_name_override = "greenamulet_heart",
    assets = {
        Asset( "DYNAMIC_ANIM", "anim/dynamic/greenamulet_heart.zip"),
        Asset( "PKGREF", "anim/dynamic/greenamulet_heart.dyn"),
    },
    init_fn = function(inst) greenamulet_init_fn(inst, "greenamulet_heart") end,
	skin_tags = { "GREENAMULET" },
}))

table.insert(prefabs, CreatePrefabSkin("raincoat_peggy", {
	base_prefab = "raincoat",
	type = "item",
    rarity = "Glassic",
    build_name_override = "raincoat_peggy",
    assets = {
        Asset( "DYNAMIC_ANIM", "anim/dynamic/raincoat_peggy.zip"),
        Asset( "PKGREF", "anim/dynamic/raincoat_peggy.dyn"),
    },
    init_fn = function(inst) raincoat_init_fn(inst, "raincoat_peggy") end,
	skin_tags = { "RAINCOAT" },
}))

return unpack(prefabs)
