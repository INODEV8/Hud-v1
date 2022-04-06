ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

ESX.RegisterServerCallback("bcy_hud:getMoney", function(source, cb)
	local s = source
	local x = ESX.GetPlayerFromId(s)
	cb(x.getMoney())
end)