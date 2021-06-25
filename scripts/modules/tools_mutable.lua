local _G = GLOBAL

AddPrefabPostInit("nightsword",function(inst)
	if not _G.TheWorld.ismastersim then return inst end
	inst:AddComponent("halloweenmoonmutable")
	inst.components.halloweenmoonmutable:SetPrefabMutated("glasscutter")
end)

AddPrefabPostInit("goldenaxe",function(inst)
	if not _G.TheWorld.ismastersim then return inst end
	inst:AddComponent("halloweenmoonmutable")
	inst.components.halloweenmoonmutable:SetPrefabMutated("moonglassaxe")
end)

AddPrefabPostInit("goldenpickaxe",function(inst)
	if not _G.TheWorld.ismastersim then return inst end
	inst:AddComponent("halloweenmoonmutable")
	inst.components.halloweenmoonmutable:SetPrefabMutated("moonglasspickaxe")
end)

AddPrefabPostInit("hammer",function(inst)
	if not _G.TheWorld.ismastersim then return inst end
	inst:AddComponent("halloweenmoonmutable")
	inst.components.halloweenmoonmutable:SetPrefabMutated("moonglasshammer")
end)

AddPrefabPostInit("glasscutter",function(inst)
	if not _G.TheWorld.ismastersim then return inst end
	if not _G.KnownModIndex:IsModEnabled("workshop-1467214795") then return inst end

    inst:AddComponent("tool")
    inst.components.tool:SetAction(_G.ACTIONS.HACK, 3)
    inst.components.finiteuses:SetConsumption(_G.ACTIONS.HACK, 1)
end)