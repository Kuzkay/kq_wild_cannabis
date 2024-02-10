Config = {}

Config.debug = false

Config.esxSettings = {
    enabled = true,
    oldEsx = false,
    moneyAccount = 'black_money',
}

Config.target = {
    enabled = false,
    system = 'ox_target'
}

Config.crafting = {
    {
        location = {
            x = 2195.27, y = 5602.2, z = 54.4, h = 92.56,
        },
        prop = 'bkr_prop_weed_scales_01a',
        
        duration = 3000,
        
        requiredItems = {
            {
                item = 'wild_cannabis',
                amount = 4,
            },
            {
                item = 'empty_baggie',
                amount = 1,
            }
        },
        craftedItem = 'packaged_wild_cannabis',
        craftedAmount = 1,
        
        showBlip = true,
    }
}

Config.selling = {
    {
        location = {
            x = -342.41, y = -2448.05, z = 6.0, h = 108.6,
        },

        pedModel = 'g_m_m_mexboss_01',

        duration = 2000,
        
        item = 'packaged_wild_cannabis',
        
        price = math.random(375, 425),

        showBlip = true, 
    }
}

Config.keybinds = {
    interact = {
        label = 'E',
        input = 38,
    },
}
