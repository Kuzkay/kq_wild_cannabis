
----------------------------------------
--- WILD CANNABIS AREA
----------------------------------------

local wildCannabisArea = {
    name = 'Wild cannabis',
    renderDistance = 50.0,
    coords = {
        x = 3085.12, y = 6099.0, z = 250.0
    },
    radius = 100.0,
    amount = 35,
    regrowTime = 90, -- in seconds
    
    blip = {
        blipVisible = true,
        areaVisible = true,
        icon = 469,
        color = 52,
        scale = 0.9,
    },
    items = {
        {
            item = 'kq_wild_cannabis',
            chance = 100,
            amount = {
                min = 1,
                max = 3,
            },
        }
    },
    props = {
        {
            hash = 'prop_weed_01',
            textureVariation = 0,
            minimumDistanceBetween = 1.5,
            offset = {
                x = 0.0, y = 0.0, z = -0.3,
            },
            animation = {
                duration = 1, -- in seconds
                dict = 'mp_take_money_mg',
                anim = 'put_cash_into_bag_loop',
                flag = 1,
            },
            labelSingular = 'Wild cannabis',
            labelPlurar = 'Wild cannabis',
            collectMessage = 'Collect wild cannabis leaves',
            icon = 'fas fa-seedling',
        },
        {
            hash = 'prop_weed_02',
            textureVariation = 0,
            minimumDistanceBetween = 1.5,
            offset = {
                x = 0.0, y = 0.0, z = -0.15,
            },
            animation = {
                duration = 1, -- in seconds
                dict = 'mp_take_money_mg',
                anim = 'put_cash_into_bag_loop',
                flag = 1,
            },
            labelSingular = 'Wild cannabis',
            labelPlurar = 'Wild cannabis',
            collectMessage = 'Collect wild cannabis leaves',
            icon = 'fas fa-seedling',
        }
    },
}

exports['kq_lootareas']:CreateArea('kq_wild_cannabis_area', wildCannabisArea)


----------------------------------------
--- BAGGIES SPAWNER
----------------------------------------
local baggiesSpawner = {
    name = 'Baggies Spawner',
    renderDistance = 12.0,
    coords = {
        x = 2192.51, y = 5595.5, z = 54.52
    },
    radius = 0.4,
    amount = 5,
    regrowTime = 8, -- in seconds
    
    items = {
        {
            item = 'kq_empty_baggie',
            chance = 100,
            amount = {
                min = 2,
                max = 2,
            },
        }
    },
    props = {
        {
            hash = 'bkr_prop_weed_bag_pile_01a',
            textureVariation = 0,
            chance = 85,
            minimumDistanceBetween = 0.1,
            offset = {
                x = 0.0, y = 0.0, z = -0.97,
            },
            forceZCoordinate = true,
            animation = {
                duration = 1, -- in seconds
                dict = 'mp_take_money_mg',
                anim = 'put_cash_into_bag_loop',
                flag = 17,
            },
            labelSingular = 'Bag',
            labelPlurar = 'Baggies',
            collectMessage = 'Grab empty baggies',
            icon = 'fas fa-seedling',
        },
    },
}

exports['kq_lootareas']:CreateArea('kq_wild_cannabis_baggies', baggiesSpawner)



RegisterServerEvent('kq_wild_cannabis:server:craft')
AddEventHandler('kq_wild_cannabis:server:craft', function(craftingKey)
    local _source = source
    local crafting = Config.crafting[craftingKey]
    
    for k, item in pairs(crafting.requiredItems) do
        if not DoesPlayerHaveItem(_source, item.item, item.amount) then
            TriggerClientEvent('kq_wild_cannabis:client:notify', _source, L('~r~You do not have enough ingredients'))
            return
        end
    end
    
    for k, item in pairs(crafting.requiredItems) do
        RemovePlayerItem(_source, item.item, item.amount)
    end
    
    AddPlayerItem(_source, crafting.craftedItem, crafting.craftedAmount)
end)
RegisterServerEvent('kq_wild_cannabis:server:sell')
AddEventHandler('kq_wild_cannabis:server:sell', function(sellingKey)
    local _source = source
    local selling = Config.selling[sellingKey]
    
    if not DoesPlayerHaveItem(_source, selling.item) then
        TriggerClientEvent('kq_wild_cannabis:client:notify', _source, L('~r~You do not have anything to sell here'))
        return
    end
    
    local amount = GetPlayerItemAmount(_source, selling.item)
    
    RemovePlayerItem(_source, selling.item, amount)
    local reward = amount * selling.price
    AddMoney(_source, reward)
    TriggerClientEvent('kq_wild_cannabis:client:notify', _source, L('~g~You sold {AMOUNT} wild cannabis bags for ${MONEY}'):gsub('{AMOUNT}', amount):gsub('{MONEY}', reward))
end)

function Debug(message)
    if Config.debug then
        print(message)
    end
end

function L(text)
    if Locale and Locale[text] then
        return Locale[text]
    end
    
    return text
end
