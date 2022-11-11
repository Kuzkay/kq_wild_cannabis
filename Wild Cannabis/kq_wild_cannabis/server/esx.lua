if Config.esxSettings.enabled then
    ESX = nil

    TriggerEvent('esx:getSharedObject', function(obj)
        ESX = obj
    end)
    
    function AddMoney(player, amount)
        local xPlayer = ESX.GetPlayerFromId(player)
        if not xPlayer then
            return false
        end
        
        xPlayer.addAccountMoney(Config.esxSettings.moneyAccount, amount)
    end
    
    function DoesPlayerHaveItem(player, item, amount)
        local xPlayer = ESX.GetPlayerFromId(player)
        
        return xPlayer.getInventoryItem(item).count >= (amount or 1)
    end
    
    function GetPlayerItemAmount(player, item)
        local xPlayer = ESX.GetPlayerFromId(player)
        
        return xPlayer.getInventoryItem(item).count
    end
    
    function RemovePlayerItem(player, item, amount)
        local xPlayer = ESX.GetPlayerFromId(tonumber(player))
        xPlayer.removeInventoryItem(item, amount or 1)
    end

    function AddPlayerItem(player, item, amount)
        local xPlayer = ESX.GetPlayerFromId(tonumber(player))

        -- Support for old esx which didn't use weight for inventory size but rather item limit per item type
        if Config.esxSettings.oldEsx then
            local esxItem = xPlayer.getInventoryItem(item)

            if esxItem.limit == -1 or (esxItem.count + amount) <= esxItem.limit then
                xPlayer.addInventoryItem(item, amount or 1)
                return true
            else
                return false
            end
        else
            if xPlayer.canCarryItem(item, amount or 1) then
                xPlayer.addInventoryItem(item, amount or 1)
                return true
            else
                return false
            end
        end
    end
end
