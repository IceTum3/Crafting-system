local ESX = exports["es_extended"]:getSharedObject()

Config = {}

Config.settings = {
    ["language"] = {
        ["progressbar"] = "Building weapon...", -- progressbar label
        ["position"] = "bottom", -- progressbar position 
        ["targetIcon"] = "fa-solid fa-hammer", -- target icon you can change this https://fontawesome.com/
        ["targetLabel"] = "Craft weapons", -- target label
        ["menu"] = "Crafting Menu", -- menu label
        ["duration"] = 5000, -- progressbar duration
    },
    ["notify"] = {
        ["description"] = "Failed, try again...", -- notify label
        ["position"] = "center-right", -- notify position
        ["type"] = "error", -- notify type
    },
    ["animation"] = {
        ["dict"] = "mp_arresting", -- progressbar animation
        ["clip"] = "a_uncuff",
    },
    ["coords"] = {
        ["crafting"] = vector4(), 
    },
}


local Crafting = {
    weapon_hammer = {
        {'aluminum', 20}, -- you can change items 
        {'iron', 25}
    },  
    weapon_bat = {
        {'iron', 25},
        {'copper', 15}
    },  
    weapon_crowbar = {
        {'steel', 25},
        {'iron', 25},
        {'silver', 25}
    }, 
    weapon_golfclub = {
        {'aluminum', 15},
        {'iron', 20}
    }, 
    weapon_knuckle = {
        {'gold', 30},
        {'steel', 15}
    }, 
    weapon_knife = {
        {'iron', 20},
        {'plastic', 30},
        {'gold', 15}
    },  
    weapon_switchblade = {
        {'rubber', 15},
        {'silver', 15},
        {'steel', 30}
    }, 
    weapon_pistol_mk2 = {
        {'iron', 30},
        {'steel', 30},
        {'blueprint', 1}
    }, 
}

local function convertItems(items)
    local itemsTable = {}

    for _, v in pairs(items) do
        table.insert(itemsTable, v[1])
    end

    return itemsTable
end

local function doesPlayerHaveItems(source, items)
    local inventory = exports.ox_inventory:Search(source, 'count', items)

    for name, count in pairs(inventory) do
        if count < 1 then
            return false
        end
    end

    return true
end

lib.callback.register('T-Crafting:Weapons', function(source, craft)
    local _source = source

    local itemsNeeded = Crafting?[craft]
    if not itemsNeeded then return false end

    local itemsTable = convertItems(itemsNeeded)
    if not itemsTable then return false end

    local result = doesPlayerHaveItems(_source, itemsTable)
    if not result then
        lib.notify(source,{
            title = 'Crafting',
            position = 'center-right',
            description = 'Sinulla ei ole tarvittavia ainesosia!',
            type = 'error'
        })
        return false
    end

    for i = 1, #itemsNeeded do
        local success = exports.ox_inventory:RemoveItem(_source, itemsNeeded[i][1], itemsNeeded[i][2])
        if not success then
            lib.notify(source,{
                title = 'Crafting',
                position = 'center-right',
                description = 'Sinulla ei ole tarvittavia ainesosia!',
                type = 'error'
            })
            return false
        end
    end

    local success, response = exports.ox_inventory:AddItem(_source, craft, 1)
    return success
end)

ESX.RegisterServerCallback("T-Crafting:getConfig", function(source, cb)
    cb(Config)
end)
