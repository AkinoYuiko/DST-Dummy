GLOBAL.setfenv(1, GLOBAL)

local function common_init_fn(inst, build)
    local function onequipfn(inst, data)
        data.owner.AnimState:OverrideSymbol("swap_body", build, "swap_body")
    end

    if not TheWorld.ismastersim then return end
    
    inst.skinname = build
    inst.AnimState:SetBuild(build)
    if inst.components.inventoryitem then
        inst.components.inventoryitem:ChangeImageName(inst:GetSkinName())
    end

    inst:ListenForEvent("equipped", onequipfn)
    inst.OnSkinChange = function(inst) 
        inst:RemoveEventCallback("equipped", onequipfn)
    end
end

-- Green Amulet
if not rawget(_G, "greenamulet_clear_fn") then
    greenamulet_init_fn = function(inst, build) common_init_fn(inst, build) end
    greenamulet_clear_fn = function(inst)
        inst.AnimState:SetBuild("amulets")
        if not TheWorld.ismastersim then return end
        inst.components.inventoryitem:ChangeImageName()
    end
end

-- Raincoat
if not rawget(_G, "raincoat_clear_fn") then
    raincoat_init_fn = function(inst ,build) common_init_fn(inst, build) end
    raincoat_clear_fn = function(inst)
        inst.AnimState:SetBuild("torso_rain")
        if not TheWorld.ismastersim then return end
        inst.components.inventoryitem:ChangeImageName()
    end
end

GlassicAPI.SkinHandler.AddModSkins({
    dummy = {
        is_char = true,
        "dummy_none"
    },
    greenamulet = {
        { name = "greenamulet_heart", test_fn = GlassicAPI.SetExclusiveToPlayer("dummy") }
    },
    raincoat = { 
        {name = "raincoat_peggy", test_fn = GlassicAPI.SetExclusiveToPlayer("dummy") }
    },
})