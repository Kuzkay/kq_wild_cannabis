if Config.qbSettings.enabled then

    if Config.qbSettings.useNewQBExport then
        QBCore = exports['qb-core']:GetCoreObject()
    end
    
    function AddMoney(player, amount)
        local xPlayer = QBCore.Functions.GetPlayer(player)
        
        if not xPlayer then
            return false
        end
        
        xPlayer.Functions.AddMoney(Config.qbSettings.moneyAccount, amount)
    end
    
    function DoesPlayerHaveItem(player, item, amount)
        local xPlayer = QBCore.Functions.GetPlayer(player)
        
        return xPlayer.Functions.GetItemByName(item).amount >= (amount or 1)
    end
    
    function GetPlayerItemAmount(player, item)
        local xPlayer = QBCore.Functions.GetPlayer(player)
        
        return xPlayer.Functions.GetItemByName(item).amount
    end
    
    function RemovePlayerItem(player, item, amount)
        local xPlayer = QBCore.Functions.GetPlayer(tonumber(player))
        xPlayer.Functions.RemoveItem(item, amount or 1)
    end

    function AddPlayerItem(player, item, amount)
        local xPlayer = QBCore.Functions.GetPlayer(tonumber(player))
        return xPlayer.Functions.AddItem(item, amount or 1)
    end
end
