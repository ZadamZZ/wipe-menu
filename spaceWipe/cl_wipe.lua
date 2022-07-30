ESX = nil
Citizen.CreateThread(function()
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
ESX.TriggerServerCallback('spaceWipe:Group', function(group)
    playergroup = group
end)
end)





-- Menu --
local open = false
local main = RageUI.CreateMenu("Space life", "space life wipe")
local Confirmation = RageUI.CreateSubMenu(main, "space life", "space life wipe")
main.Display.Header = true
main.Closed = function()
    open = false
end
local SelectionJoueur = nil

function OpenMenuWipe() 
    if open then 
        open = false
        RageUI.Visible(main, false)
        return
    else
        open = true
       

                end)
                RageUI.IsVisible(Confirmation, function()
                    RageUI.Button("le wipe", nil, {Color = {BackgroundColor = {0, 255, 0, 50}}, RightLabel = "→→→"}, true , {
                        onSelected = function()
                            for _, PlayerID in ipairs(GetActivePlayers()) do                            
                            RageUI.CloseAll()
                             
                        end
                        end
                    })
                    RageUI.Button("Annuler ", nil, {Color = {BackgroundColor = {255, 0, 0, 50}}, RightLabel = "→→→"}, true , {
                        onSelected = function()
                            RageUI.CloseAll()
                            SelectionJoueur = nil
                        end
                    })
                end)

            Wait(0)
            end
        end)
    end
end







RegisterCommand("spacewipe", function()
    ESX.TriggerServerCallback('spaceWipe:Group', function(group)
    if group == 'superadmin' or group == 'admin'  then
    OpenMenuWipe()
    else 
        ESX.ShowNotification("~r~Vous devez être Staff")
    end
end)
end, false)
