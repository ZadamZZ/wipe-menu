ESX = nil


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


