local wildCannabisArea = {
    name = 'Wild Cannabis',
    renderDistance = 50.0,
    coords = {
        x = 1853.37, y = 4909.96, z = 44.85
    },
    radius = 20.0,
    amount = 50,
    regrowTime = 3600,
    
    blip = {
        blipVisible = false,
        areaVisible = true,
        icon = 469,
        color = 52,
        scale = 0.9,
    },

    items = {
        {
            item = 'wild_cannabis',
            chance = 15,
            amount = {
                min = 1,
                max = 1,
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
                duration = 1,
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
                duration = 1,
                dict = 'mp_take_money_mg',
                anim = 'put_cash_into_bag_loop',
                flag = 1,
            },
            labelSingular = 'Wild cannabis',
            labelPlurar = 'Wild cannabis',
            collectMessage = 'Collect wild cannabis leaves',
            icon = 'fas fa-seedling',
        }


-- #1

--[[ -- Powered By bzzz
        {
            hash = 'bzzz_plants_weed_blue_bud_big',
            textureVariation = 0,
            minimumDistanceBetween = 1.5,
            offset = {
                x = 0.0, y = 0.0, z = -0.3,
            },

            animation = {
                duration = 60,
                dict = 'mp_take_money_mg',
                anim = 'put_cash_into_bag_loop',
                flag = 1,
            },

            labelSingular 	= 'Wildes Cannabis',
            labelPlurar 	= 'Wildes Cannabis',
            collectMessage 	= 'zum einsammeln',
            icon 		= 'fas fa-seedling',
        },

-- #2
        {
            hash = 'bzzz_plants_weed_cyan_bud_big',
            textureVariation = 0,
            minimumDistanceBetween = 1.5,
            offset = {
                x = 0.0, y = 0.0, z = -0.3,
            },

            animation = {
                duration = 60,
                dict = 'mp_take_money_mg',
                anim = 'put_cash_into_bag_loop',
                flag = 1,
            },

            labelSingular 	= 'Wildes Cannabis',
            labelPlurar 	= 'Wildes Cannabis',
            collectMessage 	= 'zum einsammeln',
            icon 		= 'fas fa-seedling',
        },

-- #3
        {
            hash = 'bzzz_plants_weed_green_bud_big',
            textureVariation = 0,
            minimumDistanceBetween = 1.5,
            offset = {
                x = 0.0, y = 0.0, z = -0.3,
            },

            animation = {
                duration = 60,
                dict = 'mp_take_money_mg',
                anim = 'put_cash_into_bag_loop',
                flag = 1,
            },

            labelSingular 	= 'Wildes Cannabis',
            labelPlurar 	= 'Wildes Cannabis',
            collectMessage 	= 'zum einsammeln',
            icon 		= 'fas fa-seedling',
        },

-- #4
        {
            hash = 'bzzz_plants_weed_maroon_bud_big',
            textureVariation = 0,
            minimumDistanceBetween = 1.5,
            offset = {
                x = 0.0, y = 0.0, z = -0.3,
            },

            animation = {
                duration = 60,
                dict = 'mp_take_money_mg',
                anim = 'put_cash_into_bag_loop',
                flag = 1,
            },

            labelSingular 	= 'Wildes Cannabis',
            labelPlurar 	= 'Wildes Cannabis',
            collectMessage 	= 'zum einsammeln',
            icon 		= 'fas fa-seedling',
        },

-- #5
        {
            hash = 'bzzz_plants_weed_natur_bud_big',
            textureVariation = 0,
            minimumDistanceBetween = 1.5,
            offset = {
                x = 0.0, y = 0.0, z = -0.3,
            },

            animation = {
                duration = 60,
                dict = 'mp_take_money_mg',
                anim = 'put_cash_into_bag_loop',
                flag = 1,
            },

            labelSingular 	= 'Wildes Cannabis',
            labelPlurar 	= 'Wildes Cannabis',
            collectMessage 	= 'zum einsammeln',
            icon 		= 'fas fa-seedling',
        },

-- #6
        {
            hash = 'bzzz_plants_weed_navy_bud_big',
            textureVariation = 0,
            minimumDistanceBetween = 1.5,
            offset = {
                x = 0.0, y = 0.0, z = -0.3,
            },

            animation = {
                duration = 60,
                dict = 'mp_take_money_mg',
                anim = 'put_cash_into_bag_loop',
                flag = 1,
            },

            labelSingular 	= 'Wildes Cannabis',
            labelPlurar 	= 'Wildes Cannabis',
            collectMessage 	= 'zum einsammeln',
            icon 		= 'fas fa-seedling',
        },

-- #7
        {
            hash = 'bzzz_plants_weed_purple_bud_big',
            textureVariation = 0,
            minimumDistanceBetween = 1.5,
            offset = {
                x = 0.0, y = 0.0, z = -0.3,
            },

            animation = {
                duration = 60,
                dict = 'mp_take_money_mg',
                anim = 'put_cash_into_bag_loop',
                flag = 1,
            },

            labelSingular 	= 'Wildes Cannabis',
            labelPlurar 	= 'Wildes Cannabis',
            collectMessage 	= 'zum einsammeln',
            icon 		= 'fas fa-seedling',
        },

-- #8
        {
            hash = 'bzzz_plants_weed_red_bud_big',
            textureVariation = 0,
            minimumDistanceBetween = 1.5,
            offset = {
                x = 0.0, y = 0.0, z = -0.3,
            },

            animation = {
                duration = 60,
                dict = 'mp_take_money_mg',
                anim = 'put_cash_into_bag_loop',
                flag = 1,
            },

            labelSingular 	= 'Wildes Cannabis',
            labelPlurar 	= 'Wildes Cannabis',
            collectMessage 	= 'zum einsammeln',
            icon 		= 'fas fa-seedling',
        },

-- #9
        {
            hash = 'bzzz_plants_weed_romance_bud_big',
            textureVariation = 0,
            minimumDistanceBetween = 1.5,
            offset = {
                x = 0.0, y = 0.0, z = -0.3,
            },

            animation = {
                duration = 60,
                dict = 'mp_take_money_mg',
                anim = 'put_cash_into_bag_loop',
                flag = 1,
            },

            labelSingular 	= 'Wildes Cannabis',
            labelPlurar 	= 'Wildes Cannabis',
            collectMessage 	= 'zum einsammeln',
            icon 		= 'fas fa-seedling',
        },

-- #10
        {
            hash = 'bzzz_plants_weed_sea_bud_big',
            textureVariation = 0,
            minimumDistanceBetween = 1.5,
            offset = {
                x = 0.0, y = 0.0, z = -0.3,
            },

            animation = {
                duration = 60,
                dict = 'mp_take_money_mg',
                anim = 'put_cash_into_bag_loop',
                flag = 1,
            },

            labelSingular 	= 'Wildes Cannabis',
            labelPlurar 	= 'Wildes Cannabis',
            collectMessage 	= 'zum einsammeln',
            icon 		= 'fas fa-seedling',
        },

-- #11
        {
            hash = 'bzzz_plants_weed_sunny_bud_big',
            textureVariation = 0,
            minimumDistanceBetween = 1.5,
            offset = {
                x = 0.0, y = 0.0, z = -0.3,
            },

            animation = {
                duration = 60,
                dict = 'mp_take_money_mg',
                anim = 'put_cash_into_bag_loop',
                flag = 1,
            },

            labelSingular 	= 'Wildes Cannabis',
            labelPlurar 	= 'Wildes Cannabis',
            collectMessage 	= 'zum einsammeln',
            icon 		= 'fas fa-seedling',
        },

-- #12
        {
            hash = 'bzzz_plants_weed_yellow_bud_big',
            textureVariation = 0,
            minimumDistanceBetween = 1.5,
            offset = {
                x = 0.0, y = 0.0, z = -0.15,
            },

            animation = {
                duration = 60,
                dict = 'mp_take_money_mg',
                anim = 'put_cash_into_bag_loop',
                flag = 1,
            },

            labelSingular 	= 'Wildes Cannabis',
            labelPlurar 	= 'Wildes Cannabis',
            collectMessage 	= 'zum einsammeln',
            icon 		= 'fas fa-seedling',
        }
--]]		
    },
}

exports['kq_lootareas']:CreateArea('wild_cannabis_area', wildCannabisArea)

local baggiesSpawner = {
    name = 'Baggies Spawner',
    renderDistance = 12.0,
    coords = {
        x = 2192.51, y = 5595.5, z = 54.52
    },
    radius = 0.4,
    amount = 5,
    regrowTime = 15,
    
    items = {
        {
            item = 'empty_baggie',
            chance = 50,				-- 100
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
            chance = 50,				-- 85
            minimumDistanceBetween = 0.1,
            offset = {
                x = 0.0, y = 0.0, z = -0.97,
            },
            forceZCoordinate = true,
            animation = {
                duration = 5, -- in seconds
                dict = 'mp_take_money_mg',
                anim = 'put_cash_into_bag_loop',
                flag = 17,
            },
            labelSingular = 'Beutel',
            labelPlurar = 'Beutels',
            collectMessage = 'nehme leere Beutel',
            icon = 'fas fa-seedling',
        },
    },
}

exports['kq_lootareas']:CreateArea('wild_cannabis_baggies', baggiesSpawner)

RegisterServerEvent('wild_cannabis:server:craft')
AddEventHandler('wild_cannabis:server:craft', function(craftingKey)
    local _source = source
    local crafting = Config.crafting[craftingKey]
    
    for k, item in pairs(crafting.requiredItems) do
        if not DoesPlayerHaveItem(_source, item.item, item.amount) then
            TriggerClientEvent('wild_cannabis:client:notify', _source, L('~r~Du hast nicht genug Zutaten'))
            return
        end
    end
    
    for k, item in pairs(crafting.requiredItems) do
        RemovePlayerItem(_source, item.item, item.amount)
    end
    
    AddPlayerItem(_source, crafting.craftedItem, crafting.craftedAmount)
end)
RegisterServerEvent('wild_cannabis:server:sell')
AddEventHandler('wild_cannabis:server:sell', function(sellingKey)
    local _source = source
    local selling = Config.selling[sellingKey]
    
    if not DoesPlayerHaveItem(_source, selling.item) then
        TriggerClientEvent('wild_cannabis:client:notify', _source, L('~r~Du hast nichts zum verkaufen!'))
        return
    end
    
    local amount = GetPlayerItemAmount(_source, selling.item)
    
    RemovePlayerItem(_source, selling.item, amount)
    local reward = amount * selling.price
    AddMoney(_source, reward)
    TriggerClientEvent('wild_cannabis:client:notify', _source, L('~g~Du hast {AMOUNT} wildes Cannabis für {MONEY}€ verkauft'):gsub('{AMOUNT}', amount):gsub('{MONEY}', reward))
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
