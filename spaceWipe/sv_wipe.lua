ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) 
    ESX = obj 
end)

RegisterNetEvent("spaceWipe:Wipe")
AddEventHandler("spaceWipe:Wipe", function(joueur)
    Wipe(source, joueur)
end)

function Wipe(id, target)
    local xPlayer = ESX.GetPlayerFromId(target)
    local steam = xPlayer.getIdentifier(target)


    DropPlayer(target, "Vous avez été wipe de space life rp ! ")

    

    MySQL.Async.execute([[ 
		
        DELETE FROM users WHERE identifier = @id;	]], {
            ['@id'] = steam,
            
        }, function(rowsChanged)

    end)

end
ESX.RegisterServerCallback('Wipe:Group', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)

	cb(xPlayer.getGroup())
end)

function sendLogs (message,webhook,color)
	local embeds = {
		{
			["title"]=message,
			["color"]=7419530,
			
		}
		
	}
    if message == nil or message == '' then return FALSE end
    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({ username = name,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end

RegisterServerEvent('LOGS:Wipe')
AddEventHandler('LOGS:Wipe', function(message, webhook)
sendLogs(message , webhook)
end)
