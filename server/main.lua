ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)



RegisterNetEvent('paraal')
AddEventHandler('paraal', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeMoney(Config.aracrandom)

end)