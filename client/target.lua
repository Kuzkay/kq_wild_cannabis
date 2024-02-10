function AddEntityToTargeting(entity, hash, message, event, key)
    if (Config.target.enabled and Config.target.system) then

        local system = Config.target.system

        
        local options = {
            {
                type = 'client',
                event = event,
                icon = 'fas fa-seedling',
                label = message,
                key = key
            }
        }
    
        if system == 'ox-target' or system == 'ox_target' then
            exports[system]:addLocalEntity({entity}, options)
        else
            exports[system]:AddEntityZone(hash, entity, {
                name = hash,
                debugPoly = false,
                useZ = true,
            }, {
                options = options,
                distance = 1.5
            })
        end
    end
end

RegisterNetEvent('wild_cannabis:target:bag')
AddEventHandler('wild_cannabis:target:bag', function(data)
    CraftItem(data.key)
end)


RegisterNetEvent('wild_cannabis:target:sell')
AddEventHandler('wild_cannabis:target:sell', function(data)
    SellItem(data.key)
end)
