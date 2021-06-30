if GLOBAL.TheNet:GetIsClient() or GLOBAL.TheNet:GetIsServer() then return end

PrefabFiles = {
    "dummy",
}

Assets = {
    Asset( "ATLAS", "bigportraits/dummy_none.xml" ),
    Asset( "ATLAS", "images/names_dummy.xml" ),
    Asset( "ATLAS", "images/avatars/avatar_dummy.xml" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_dummy.xml" ),
    Asset( "ATLAS", "images/avatars/self_inspect_dummy.xml" ),
    Asset( "ATLAS", "images/saveslot_portraits/dummy.xml" ),
}

AddModCharacter("dummy", "FEMALE")

modimport("strings/dummy_init.lua")
modimport("strings/dummy_str"..(table.contains({"zh","chs","cht"}, GLOBAL.LanguageTranslator.defaultlang) and "_chs" or "")..".lua")

local SkinHandler = require("skinhandler")
SkinHandler.AddModSkins({
    dummy = {
        is_char = true,
        "dummy_none"
    },
})
