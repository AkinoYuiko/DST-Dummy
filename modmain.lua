Assets = {}
PrefabFiles = {
    "dummy",
    "dummy_skins",
    "dummy_books",
    "blackholestaff",
    "nightmare_spear",
}

GlassicAPI.InitCharacterAssets("dummy", "FEMALE", Assets)
GlassicAPI.InitMinimapAtlas("dummy_minimap", Assets)

GlassicAPI.RegisterItemAtlas("dummy_inventoryimages", Assets)
GlassicAPI.RegisterItemAtlas("hud/nightmaretab", Assets)

-- modules
modimport("scripts/modules/dummy_recipes.lua")
modimport("scripts/modules/bstaff_action.lua")
modimport("scripts/modules/tools_mutable.lua")
modimport("scripts/modules/sanity_reward.lua")

modimport("scripts/modules/only_dazui.lua")


modimport("strings/dummy_init.lua")
modimport("scripts/modules/prefabskin.lua")
modimport("strings/dummy_str"..(table.contains({"zh","chs","cht"}, GLOBAL.LanguageTranslator.defaultlang) and "_chs" or "")..".lua")


-- temp code for fish farm in IA
AddPrefabPostInit("fish_farm", function(inst)

    inst.current_volume = GLOBAL.net_tinybyte(inst.GUID, "current_volume")

    if not GLOBAL.TheWorld.ismastersim then return end

    inst.current_volume:set(inst.components.breeder.volume)
    inst:ListenForEvent("vischange", function(inst)
        inst.current_volume:set(inst.components.breeder.volume)
    end)

end)
