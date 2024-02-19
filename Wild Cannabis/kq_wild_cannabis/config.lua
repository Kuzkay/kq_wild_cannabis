Config = {}

Config.debug = false

--- SETTINGS FOR ESX
Config.esxSettings = {
    enabled = true,
    oldEsx = false,
    oldExport = false,
    moneyAccount = 'black_money',
}

--- SETTINGS FOR QBCORE
Config.qbSettings = {
    enabled = false,
    useNewQBExport = true, -- Make sure to uncomment the old export inside fxmanifest.lua if you're still using it
    moneyAccount = 'cash',
}

Config.target = {
    enabled = false,
    system = 'ox_target' -- 'qtarget' or 'qb-target' or 'ox_target'  (Other systems might work as well)
}

--- CANNABIS SPAWN LOCATIONS CAN BE CONFIGURED IN SERVER/SERVER.LUA

Config.crafting = {
    {
        location = {
            x = 2195.27, y = 5602.2, z = 54.4, h = 92.56,
        },
        prop = 'bkr_prop_weed_scales_01a',
        
        duration = 3000, -- crafting duration in ms
        
        requiredItems = {
            {
                item = 'kq_wild_cannabis',
                amount = 4, -- required amount of leaves to craft one packaged cannabis
            },
            {
                item = 'kq_empty_baggie',
                amount = 1, -- required amount of baggies to craft one packaged cannabis
            }
        },
        craftedItem = 'kq_packaged_wild_cannabis', -- result item
        craftedAmount = 1,
        
        showBlip = true, -- whether or not to show the cannabis bagging location blip on the map
    }
}


Config.selling = {
    {
        location = {
            x = -327.22, y = -2463.43, z = 7.3, h = 108.6,
        },

        pedModel = 'g_m_m_mexboss_01',

        duration = 2000, -- selling duration in ms
        
        item = 'kq_packaged_wild_cannabis',
        
        -- By not putting the math.random into a function the price will be set randomly on each server start/script start
        -- this will result in better days for selling the cannabis
        price = math.random(300, 500),

        showBlip = true, -- whether or not to show the cannabis selling location blip on the map
    }
}

----------------------------------------------------------------------------------------------
--- KEYBINDS
----------------------------------------------------------------------------------------------
-- https://docs.fivem.net/docs/game-references/controls/
-- Use the input index for the "input" value
Config.keybinds = {
    interact = {
        label = 'E',
        input = 38,
    },
}
