local prefabs = {}

table.insert(prefabs, CreatePrefabSkin("greenamulet_heart", {
	base_prefab = "greenamulet",
	type = "item",
    rarity = "Glassic",
    build_name_override = "greenamulet_heart",
    assets = {
        Asset("ANIM", "anim/greenamulet_heart.zip"),
        Asset("INV_IMAGE", "greenamulet_heart"),
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
        Asset("ANIM", "anim/raincoat_peggy.zip"),
        Asset("INV_IMAGE", "raincoat_peggy"),
    },
    init_fn = function(inst) raincoat_init_fn(inst, "raincoat_peggy") end,
	skin_tags = { "RAINCOAT" },
}))

return unpack(prefabs)