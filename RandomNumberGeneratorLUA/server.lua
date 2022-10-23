ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("genrandom:generarnumero")
AddEventHandler("genrandom:generarnumero", function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerId = xPlayer.source
	local id = playerId
	local dinero = xPlayer.getMoney()
	local ping = GetPlayerPing(playerId)

	TriggerClientEvent("imprimirnumero", playerId, ping, id, dinero)
end)