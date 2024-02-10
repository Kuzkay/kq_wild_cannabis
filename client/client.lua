ESX = exports["es_extended"]:getSharedObject()

Citizen.CreateThread(function()
    Citizen.Wait(1000)
    
    for k, crafting in pairs(Config.crafting) do
        local model = crafting.prop
        local loc = crafting.location
        DoRequestModel(model)
    
        local closest = GetClosestObjectOfType(loc.x + 0.0, loc.y + 0.0, loc.z - 1.0, 1.0, GetHashKey(model), false)
    
        while closest ~= 0 do
            SetEntityAsMissionEntity(closest, true, true)
            DeleteEntity(closest)
            closest = GetClosestObjectOfType(loc.x + 0.0, loc.y + 0.0, loc.z - 1.0, 1.0, GetHashKey(model), false)
            Citizen.Wait(1)
        end
    
        Citizen.Wait(500)
    
        local prop = CreateObject(model, loc.x + 0.0, loc.y + 0.0, loc.z - 1.0, 0, 1, 0)
        SetEntityHeading(prop, loc.h + 0.0)
        FreezeEntityPosition(prop, true)
    
        AddEntityToTargeting(prop, 'crafting_' .. prop, L('Cannabis einpacken'), 'wild_cannabis:target:bag', k)
    
        if crafting.showBlip then
            CreateBlip(vector3(loc.x, loc.y, loc.z), 408, 52, 255, 1.0, L('Canna Werkbank'))
        end
    end
    
    for k, selling in pairs(Config.selling) do
        local model = selling.pedModel
        local loc = selling.location
        DoRequestModel(model)
        
        local ped = CreatePed(0, model, loc.x, loc.y, loc.z - 1.0, loc.h, false, false)
        SetModelAsNoLongerNeeded(model)
        
        Config.selling[k].ped = ped
        SetEntityInvincible(ped, true)
        FreezeEntityPosition(ped, true)
    
        SetBlockingOfNonTemporaryEvents(ped, true)
        TaskStartScenarioInPlace(ped, "WORLD_HUMAN_GUARD_STAND", 0, true)
        SetPedCanUseAutoConversationLookat(ped, true)
        TaskLookAtEntity(ped, PlayerPedId(), -1, 2048, 3)
        SetEntityAsMissionEntity(ped, true, true)
    
        AddEntityToTargeting(ped, 'selling_' .. ped, L('Verkaufe das Cannabis'), 'wild_cannabis:target:sell', k)
        
        if selling.showBlip then
            CreateBlip(vector3(loc.x, loc.y, loc.z), 408, 52, 255, 1.0, L('Wilder Cannabis Käufer'))
        end
    end
end)


if not Config.target.enabled then
    
    Citizen.CreateThread(function()
        while true do
            local sleep = 4000
            
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)
            for k, crafting in pairs(Config.crafting) do
                local loc = crafting.location
                local distance = GetDistanceBetweenCoords(playerCoords, loc.x, loc.y, loc.z, 1)
                if distance < 20 then
                    sleep = 1000
                    if distance < 2 then
                        Draw3DText(loc.x, loc.y, loc.z - 0.5, L('Drücke ~g~[~w~{KEYBIND}~g~]~w~ um das Cannabis einzupacken'):gsub('{KEYBIND}', Config.keybinds.interact.label), 4, 0.035, 0.035)
                        
                        sleep = 1
                        if IsControlJustReleased(0, Config.keybinds.interact.input) then
                            CraftItem(k)
                        end
                    end
                end
            end
            
            Citizen.Wait(sleep)
        end
    end)
    
    
    Citizen.CreateThread(function()
        while true do
            local sleep = 4000
            
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)
            for k, selling in pairs(Config.selling) do
                local loc = selling.location
                local distance = GetDistanceBetweenCoords(playerCoords, loc.x, loc.y, loc.z, 1)
                if distance < 20 then
                    sleep = 1000
                    if distance < 2 then
                        Draw3DText(loc.x, loc.y, loc.z, L('Drücke ~g~[~w~{KEYBIND}~g~]~w~ um das Cannabis zu verkaufen'):gsub('{KEYBIND}', Config.keybinds.interact.label), 4, 0.035, 0.035)
                        
                        sleep = 1
                        if IsControlJustReleased(0, Config.keybinds.interact.input) then
                            SellItem(k)
                        end
                    end
                end
            end
            
            Citizen.Wait(sleep)
        end
    end)
end

function CraftItem(craftingKey)
    RemoveHandWeapons()
    PlayAnim('mp_car_bomb', 'car_bomb_mechanic', 17)
    Citizen.Wait(Config.crafting[craftingKey].duration)
    ClearPedTasks(PlayerPedId())
    TriggerServerEvent('wild_cannabis:server:craft', craftingKey)
end

function SellItem(sellingKey)
    local playerPed = PlayerPedId()
    RemoveHandWeapons()
    
    local sellingPed = Config.selling[sellingKey].ped
    ClearPedTasks(sellingPed)
    TaskTurnPedToFaceEntity(playerPed, sellingPed, 1000)
    Citizen.Wait(1000)
    
    ClearPedTasksImmediately(sellingPed)
    PlayAnim('mp_common', 'givetake2_b', 0, sellingPed)
    PlayAnim('mp_common', 'givetake1_a')
    
    Citizen.Wait(Config.selling[sellingKey].duration)
    
    ClearPedTasks(playerPed)
    TaskStartScenarioInPlace(sellingPed, "WORLD_HUMAN_GUARD_STAND", 0, true)
    TriggerServerEvent('wild_cannabis:server:sell', sellingKey)
end

RegisterNetEvent('wild_cannabis:client:notify')
AddEventHandler('wild_cannabis:client:notify', function(message)
    ShowTooltip(message)
end)
