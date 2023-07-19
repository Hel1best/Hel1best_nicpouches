ESX = exports["es_extended"]:getSharedObject()

--NICOTIN SACHETS


for k, v in pairs(Config.items) do
    ESX.RegisterUsableItem(v, function(source)
        local xPlayer = ESX.GetPlayerFromId(source)
        local pouche = xPlayer.getInventoryItem(v).count
        
        if pouche > 0 then
            xPlayer.removeInventoryItem(v, 1)
            TriggerClientEvent('Hel1best_Velo', source)
            Citizen.Wait(0)
        end
    end)
end