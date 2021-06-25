local TECH = GLOBAL.TECH
local TUNING = GLOBAL.TUNING
local STRINGS = GLOBAL.STRINGS
local Ingredient = GLOBAL.Ingredient
local RECIPETABS = GLOBAL.RECIPETABS
local CHARACTER_INGREDIENT = GLOBAL.CHARACTER_INGREDIENT
local AllRecipes = GLOBAL.AllRecipes
local ACTIONS = GLOBAL.ACTIONS

local dummytab = AddRecipeTab("nightmaretab", 100, "images/hud/nightmaretab.xml", "nightmaretab.tex", "nm_breaker")

-- 灵魂剥离 --
AddRecipe("dummy_nightmarefuel",
{Ingredient(CHARACTER_INGREDIENT.SANITY, 20)},
dummytab, TECH.NONE, nil, nil, nil, nil, "nm_breaker", nil, "nightmarefuel.tex",nil ,"nightmarefuel")
STRINGS.NAMES.DUMMY_NIGHTMAREFUEL = STRINGS.NAMES.NIGHTMAREFUEL

-- 暗影破碎者 --
AddRecipe("nightmare_spear",
{Ingredient("nightmarefuel", 1)},
dummytab, TECH.NONE, nil, nil, nil, nil, "nm_breaker", nil, "nightmare_spear.tex" )

-- 黑洞法杖 --
AddRecipe("blackholestaff",
{Ingredient("livinglog", 2), Ingredient("orangegem", 2),Ingredient("nightmarefuel", 4)},
RECIPETABS.ANCIENT, TECH.ANCIENT_FOUR, nil, nil, true, nil, "nm_breaker", nil, "blackholestaff.tex" )
AllRecipes["blackholestaff"].sortkey = AllRecipes["greenstaff"].sortkey + 0.1

-- 收获的季节 --
AddRecipe("book_harvest",
{Ingredient("papyrus", 2), Ingredient(CHARACTER_INGREDIENT.SANITY, 15)},
dummytab, TECH.SCIENCE_TWO, nil, nil, nil, nil,"nm_breaker", nil, "book_harvest.tex")

-- 雨神的眷恋 --
AddRecipe("book_toggledownfall",
{Ingredient("papyrus", 2), Ingredient(CHARACTER_INGREDIENT.SANITY, 30)},
dummytab, TECH.MAGIC_THREE, nil, nil, nil, nil,"nm_breaker", nil, "book_toggledownfall.tex")

local function CraftPostInit(sg)
    local old_handler = sg.actionhandlers[ACTIONS.BUILD].deststate
    sg.actionhandlers[ACTIONS.BUILD].deststate = function(inst, action)
        -- if not inst.sg:HasStateTag("busy") then
        if action.recipe and action.recipe == "nightmare_spear" and action.doer and action.doer.prefab == "dummy" then
            return "domediumaction"
        else
            return old_handler(inst, action)
        end
        -- end
    end
end

AddStategraphPostInit("wilson", CraftPostInit)