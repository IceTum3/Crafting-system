local ESX = exports["es_extended"]:getSharedObject()

Config = {}

local function Crafting(k, v)
    lib.registerContext({
        id = 'Crafting_menu',
        title = Config.settings["language"]["menu"],
        options = {
            {
                title = 'Weapon hammer',
                icon = 'gear',
                metadata = {
                    {label = 'aluminum 20x'},
                    {label = 'iron 25x'}
                },
                onSelect = function()
                    lib.hideContext(onExit)
                    local success = lib.skillCheck({'easy', 'medium', 'medium', 'medium'}, {'1', '2', '3', '4'})
                    if success then 
                        if lib.progressCircle({
                            duration = Config.settings["language"]["duration"],
                            position = Config.settings["language"]["position"],
                            label = Config.settings["language"]["progressbar"],
                            useWhileDead = false,
                            canCancel = true,
                            disable = {
                                car = true,
                            },
                            anim = {
                                dict = Config.settings["animation"]["dict"],
                                clip = Config.settings["animation"]["clip"],
                            },
                        }) then
                            local success = lib.callback.await('T-Crafting:Weapons', false, 'weapon_hammer')
                        end     
                    else
                        lib.notify({
                            description = Config.settings["notify"]["description"],
                            position = Config.settings["notify"]["position"],
                            type = Config.settings["notify"]["type"],
                        })  
                        return
                    end
                end,
            },
            {
                title = 'Weapon bat',
                icon = 'gear',
                metadata = {
                    {label = 'iron 25x'},
                    {label = 'copper 15x'}
                },
                onSelect = function()
                    lib.hideContext(onExit)
                    local success = lib.skillCheck({'easy', 'medium', 'medium', 'medium'}, {'1', '2', '3', '4'})
                    if success then 
                        if lib.progressCircle({
                            duration = Config.settings["language"]["duration"],
                            position = Config.settings["language"]["position"],
                            label = Config.settings["language"]["progressbar"],
                            useWhileDead = false,
                            canCancel = true,
                            disable = {
                                car = true,
                            },
                            anim = {
                               dict = Config.settings["animation"]["dict"],
                               clip = Config.settings["animation"]["clip"],
                            },
                        }) then
                            local success = lib.callback.await('T-Crafting:Weapons', false, 'weapon_bat')
                        end     
                    else
                        lib.notify({
                           description = Config.settings["notify"]["description"],
                           position = Config.settings["notify"]["position"],
                           type = Config.settings["notify"]["type"],
                       })  
                        return
                    end
                end,
            },
            {
                title = 'Weapon crowbar',
                icon = 'gear',
                metadata = {
                    {label = 'steel 25x'},
                    {label = 'iron 25x'},
                    {label = 'silver 25x'}
                },
                onSelect = function()
                    lib.hideContext(onExit)
                    local success = lib.skillCheck({'easy', 'medium', 'medium', 'medium'}, {'1', '2', '3', '4'})
                    if success then 
                        if lib.progressCircle({
                            duration = Config.settings["language"]["duration"],
                            position = Config.settings["language"]["position"],
                            label = Config.settings["language"]["progressbar"],
                            useWhileDead = false,
                            canCancel = true,
                            disable = {
                                car = true,
                            },
                            anim = {
                               dict = Config.settings["animation"]["dict"],
                               clip = Config.settings["animation"]["clip"],
                            },
                        }) then
                            local success = lib.callback.await('T-Crafting:Weapons', false, 'weapon_crowbar')
                        end     
                    else
                        lib.notify({
                            description = Config.settings["notify"]["description"],
                            position = Config.settings["notify"]["position"],
                            type = Config.settings["notify"]["type"],
                        })  
                        return
                    end
                end,
            },
            {
                title = 'Weapon golfclub',
                icon = 'gear',
                metadata = {
                    {label = 'aluminum 20x'},
                    {label = 'iron 20x'}
                },
                onSelect = function()
                    lib.hideContext(onExit)
                    local success = lib.skillCheck({'easy', 'medium', 'medium', 'medium'}, {'1', '2', '3', '4'})
                    if success then 
                        if lib.progressCircle({
                            duration = Config.settings["language"]["duration"],
                            position = Config.settings["language"]["position"],
                            label = Config.settings["language"]["progressbar"],
                            useWhileDead = false,
                            canCancel = true,
                            disable = {
                                car = true,
                            },
                            anim = {
                                dict = Config.settings["animation"]["dict"],
                                clip = Config.settings["animation"]["clip"],
                            },
                        }) then
                            local success = lib.callback.await('T-Crafting:Weapons', false, 'weapon_golfclub')
                        end     
                    else
                        lib.notify({
                           description = Config.settings["notify"]["description"],
                           position = Config.settings["notify"]["position"],
                           type = Config.settings["notify"]["type"],
                        })  
                        return
                    end
                end,
            },
            {
                title = 'Weapon knuckle',
                icon = 'gear',
                metadata = {
                    {label = 'gold 30x'},
                    {label = 'steel 15x'}
                },
                onSelect = function()
                    lib.hideContext(onExit)
                    local success = lib.skillCheck({'medium', 'medium', 'medium', 'medium'}, {'1', '2', '3', '4'})
                    if success then 
                        if lib.progressCircle({
                            duration = Config.settings["language"]["duration"],
                            position = Config.settings["language"]["position"],
                            label = Config.settings["language"]["progressbar"],
                            useWhileDead = false,
                            canCancel = true,
                            disable = {
                                car = true,
                            },
                            anim = {
                                dict = Config.settings["animation"]["dict"],
                                clip = Config.settings["animation"]["clip"],
                            },
                        }) then
                            local success = lib.callback.await('T-Crafting:Weapons', false, 'weapon_knuckle')
                        end     
                    else
                        lib.notify({
                            description = Config.settings["notify"]["description"],
                            position = Config.settings["notify"]["position"],
                            type = Config.settings["notify"]["type"],
                        })  
                        return
                    end
                end,
            },
            {
                title = 'Weapon knife',
                icon = 'gear',
                metadata = {
                    {label = 'iron 20x'},
                    {label = 'plastic 30x'},
                    {label = 'gold 15x'}
                },
                onSelect = function()
                    lib.hideContext(onExit)
                    local success = lib.skillCheck({'medium', 'medium', 'medium', 'medium'}, {'1', '2', '3', '4'})
                    if success then 
                        if lib.progressCircle({
                            duration = Config.settings["language"]["duration"],
                            position = Config.settings["language"]["position"],
                            label = Config.settings["language"]["progressbar"],
                            useWhileDead = false,
                            canCancel = true,
                            disable = {
                                car = true,
                            },
                            anim = {
                                dict = Config.settings["animation"]["dict"],
                                clip = Config.settings["animation"]["clip"],
                            },
                        }) then
                            local success = lib.callback.await('T-Crafting:Weapons', false, 'weapon_knife')
                        end     
                    else
                        lib.notify({
                           description = Config.settings["notify"]["description"],
                           position = Config.settings["notify"]["position"],
                           type = Config.settings["notify"]["type"],
                       })  
                        return
                    end
                end,
            },
            {
                title = 'Weapon switchblade',
                icon = 'gear',
                metadata = {
                    {label = 'rubber 15x'},
                    {label = 'silver 15x'},
                    {label = 'steel 30x'}
                },
                onSelect = function()
                    lib.hideContext(onExit)
                    local success = lib.skillCheck({'medium', 'medium', 'medium', 'medium'}, {'1', '2', '3', '4'})
                    if success then 
                        if lib.progressCircle({
                            duration = Config.settings["language"]["duration"],
                            position = Config.settings["language"]["position"],
                            label = Config.settings["language"]["progressbar"],
                            useWhileDead = false,
                            canCancel = true,
                            disable = {
                                car = true,
                            },
                            anim = {
                                dict = Config.settings["animation"]["dict"],
                                clip = Config.settings["animation"]["clip"],
                            },
                        }) then
                            local success = lib.callback.await('T-Crafting:Weapons', false, 'weapon_switchblade')
                        end     
                    else
                        lib.notify({
                            description = Config.settings["notify"]["description"],
                            position = Config.settings["notify"]["position"],
                            type = Config.settings["notify"]["type"],
                        })  
                        return
                    end
                end,
            },
            {
                title = 'Weapon pistol mk2',
                icon = 'gear',
                metadata = {
                    {label = 'iron 30x'},
                    {label = 'steel 30x'},
                    {label = 'blueprint 1x'}
                },
                onSelect = function()
                    lib.hideContext(onExit)
                    local success = lib.skillCheck({'medium', 'medium', 'medium', 'medium'}, {'1', '2', '3', '4'})
                    if success then 
                        if lib.progressCircle({
                            duration = Config.settings["language"]["duration"],
                            position = Config.settings["language"]["position"],
                            label = Config.settings["language"]["progressbar"],
                            useWhileDead = false,
                            canCancel = true,
                            disable = {
                                car = true,
                            },
                            anim = {
                                dict = Config.settings["animation"]["dict"],
                                clip = Config.settings["animation"]["clip"],
                            },
                        }) then
                            local success = lib.callback.await('T-Crafting:Weapons', false, 'weapon_pistol_mk2')
                        end     
                    else
                        lib.notify({
                            description = Config.settings["notify"]["description"],
                            position = Config.settings["notify"]["position"],
                            type = Config.settings["notify"]["type"],
                        })  
                        return
                    end
                end,
            },
        }
    })
    lib.showContext('Crafting_menu')
end


CreateThread(function()
    ESX.TriggerServerCallback('T-Crafting:getConfig', function(data)
        Config = data 
        exports.ox_target:addBoxZone({
            coords = Config.settings["coords"]["crafting"],
            options = {
                {
                    label = Config.settings["language"]["targetLabel"],
                    icon = Config.settings["language"]["targetIcon"],
                    distance = 2.0,
                    onSelect = function(k, v)
                        Crafting(k, v)
                    end,
                }
            }
        })
    end)
end)
