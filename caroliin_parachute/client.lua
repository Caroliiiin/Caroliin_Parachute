
ESX = nil
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

local parachuteEquipped = false

-- ESX, playerloaded
RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

RegisterNetEvent("GivePedWeapon")
AddEventHandler("GivePedWeapon", function()
    local weapon = GetHashKey("GADGET_PARACHUTE")
    local ped = GetPlayerPed(PlayerId())
    GiveWeaponToPed(ped, weapon, 1000, false, false)
    SetPedComponentVariation(GetPlayerPed(-1), 5, 63, 0, 0)
	parachuteEquipped = true
end)
RegisterNetEvent("GivePedWeapon2") AddEventHandler("GivePedWeapon2", function()
    local weapon = GetHashKey("GADGET_PARACHUTE")    local ped = GetPlayerPed(PlayerId())
    GiveWeaponToPed(ped, weapon, 1000, false, false)    SetPlayerParachuteTintIndex(PlayerId(), 1) -- ROT
    SetPedComponentVariation(GetPlayerPed(-1), 5, 63, 0, 0)
	parachuteEquipped = true
end)
RegisterNetEvent("GivePedWeapon3") AddEventHandler("GivePedWeapon3", function()
    local weapon = GetHashKey("GADGET_PARACHUTE")    local ped = GetPlayerPed(PlayerId())
    GiveWeaponToPed(ped, weapon, 1000, false, false)    SetPlayerParachuteTintIndex(PlayerId(), 2) -- SEASIDE
    SetPedComponentVariation(GetPlayerPed(-1), 5, 63, 0, 0)
	parachuteEquipped = true
end)
RegisterNetEvent("GivePedWeapon4") AddEventHandler("GivePedWeapon4", function()
    local weapon = GetHashKey("GADGET_PARACHUTE")    local ped = GetPlayerPed(PlayerId())
    GiveWeaponToPed(ped, weapon, 1000, false, false)    SetPlayerParachuteTintIndex(PlayerId(), 3)
    SetPedComponentVariation(GetPlayerPed(-1), 5, 63, 0, 0)
	parachuteEquipped = true
end)
RegisterNetEvent("GivePedWeapon5") AddEventHandler("GivePedWeapon5", function()
    local weapon = GetHashKey("GADGET_PARACHUTE")    local ped = GetPlayerPed(PlayerId())
    GiveWeaponToPed(ped, weapon, 1000, false, false)    SetPlayerParachuteTintIndex(PlayerId(), 4)
    SetPedComponentVariation(GetPlayerPed(-1), 5, 63, 0, 0)
	parachuteEquipped = true
end)
RegisterNetEvent("GivePedWeapon6") AddEventHandler("GivePedWeapon6", function()
    local weapon = GetHashKey("GADGET_PARACHUTE")    local ped = GetPlayerPed(PlayerId())
    GiveWeaponToPed(ped, weapon, 1000, false, false)    SetPlayerParachuteTintIndex(PlayerId(), 5)
    SetPedComponentVariation(GetPlayerPed(-1), 5, 63, 0, 0)
	parachuteEquipped = true
end)
RegisterNetEvent("GivePedWeapon7") AddEventHandler("GivePedWeapon7", function()
    local weapon = GetHashKey("GADGET_PARACHUTE")    local ped = GetPlayerPed(PlayerId())
    GiveWeaponToPed(ped, weapon, 1000, false, false)    SetPlayerParachuteTintIndex(PlayerId(), 6)
    SetPedComponentVariation(GetPlayerPed(-1), 5, 63, 0, 0)
	parachuteEquipped = true
end)
RegisterNetEvent("GivePedWeapon8") AddEventHandler("GivePedWeapon8", function()
    local weapon = GetHashKey("GADGET_PARACHUTE")    local ped = GetPlayerPed(PlayerId())
    GiveWeaponToPed(ped, weapon, 1000, false, false)    SetPlayerParachuteTintIndex(PlayerId(), 7)
    SetPedComponentVariation(GetPlayerPed(-1), 5, 63, 0, 0)
	parachuteEquipped = true
end)
RegisterNetEvent("GivePedWeapon9")
AddEventHandler("GivePedWeapon9", function()
    local weapon = GetHashKey("GADGET_PARACHUTE")
    local ped = GetPlayerPed(PlayerId())
    
    GiveWeaponToPed(ped, weapon, 1000, false, false)
    
    SetPlayerParachuteModelOverride(PlayerId(), GetHashKey("pil_p_para_pilot_sp_s"))
    SetPlayerParachuteTintIndex(PlayerId(), 8) -- Beachte die Änderung von 8 zu 7 für "Air Force" Fallschirmfarbe
    SetPedComponentVariation(ped, 5, 63, 0, 0) -- Beachte die Änderung von GetPlayerPed(-1) zu ped
	parachuteEquipped = true
end)
RegisterNetEvent("GivePedWeapon10") AddEventHandler("GivePedWeapon10", function()
    local weapon = GetHashKey("GADGET_PARACHUTE")    local ped = GetPlayerPed(PlayerId())
    GiveWeaponToPed(ped, weapon, 1000, false, false)    
	
    SetPlayerParachuteModelOverride(PlayerId(), GetHashKey("pil_p_para_pilot_sp_s"))
	SetPlayerParachuteTintIndex(PlayerId(), 9)
    SetPedComponentVariation(GetPlayerPed(-1), 5, 63, 0, 0)
	parachuteEquipped = true
end)
RegisterNetEvent("GivePedWeapon11") AddEventHandler("GivePedWeapon11", function()
    local weapon = GetHashKey("GADGET_PARACHUTE")    local ped = GetPlayerPed(PlayerId())
    GiveWeaponToPed(ped, weapon, 1000, false, false)    
	
    SetPlayerParachuteModelOverride(PlayerId(), GetHashKey("pil_p_para_pilot_sp_s"))
	SetPlayerParachuteTintIndex(PlayerId(), 10)
    SetPedComponentVariation(GetPlayerPed(-1), 5, 63, 0, 0)
	parachuteEquipped = true
end)
RegisterNetEvent("GivePedWeapon12") AddEventHandler("GivePedWeapon12", function()
    local weapon = GetHashKey("GADGET_PARACHUTE")    local ped = GetPlayerPed(PlayerId())
    GiveWeaponToPed(ped, weapon, 1000, false, false)    
	
    SetPlayerParachuteModelOverride(PlayerId(), GetHashKey("pil_p_para_pilot_sp_s"))
	SetPlayerParachuteTintIndex(PlayerId(), 11)
    SetPedComponentVariation(GetPlayerPed(-1), 5, 63, 0, 0)
	parachuteEquipped = true
end)
RegisterNetEvent("GivePedWeapon13") AddEventHandler("GivePedWeapon13", function()
    local weapon = GetHashKey("GADGET_PARACHUTE")    local ped = GetPlayerPed(PlayerId())
    GiveWeaponToPed(ped, weapon, 1000, false, false)    
	
    SetPlayerParachuteModelOverride(PlayerId(), GetHashKey("pil_p_para_pilot_sp_s"))
	SetPlayerParachuteTintIndex(PlayerId(), 12)
    SetPedComponentVariation(GetPlayerPed(-1), 5, 63, 0, 0)
	parachuteEquipped = true
end)
RegisterNetEvent("GivePedWeapon14") AddEventHandler("GivePedWeapon14", function()
    local weapon = GetHashKey("GADGET_PARACHUTE")    local ped = GetPlayerPed(PlayerId())
    GiveWeaponToPed(ped, weapon, 1000, false, false)    
	
    SetPlayerParachuteModelOverride(PlayerId(), GetHashKey("pil_p_para_pilot_sp_s"))
	SetPlayerParachuteTintIndex(PlayerId(), 13)
    SetPedComponentVariation(GetPlayerPed(-1), 5, 63, 0, 0)
	parachuteEquipped = true
end)


-- Event zum Zurücksetzen der Ped-Komponentenvariation, wenn die Fallschirm-Deploy-Taste gedrückt wird
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if parachuteEquipped then
            local playerPed = GetPlayerPed(-1)
            local speed = GetEntitySpeed(playerPed)
            if speed > 10.0 then -- Du kannst diesen Wert anpassen, um die Skydiving-Geschwindigkeit festzulegen
                if IsControlJustReleased(0, 144) then
                    local ped = GetPlayerPed(PlayerId())
                    SetPedComponentVariation(ped, 5, 0, 0, 0)
                    parachuteEquipped = false
                end
            end
        end
    end
end)

-- Event zum Entfernen des Fallschirms (bleibt gleich)
RegisterNetEvent("RemovePedWeapon")
AddEventHandler("RemovePedWeapon", function()
    local weapon = GetHashKey("GADGET_PARACHUTE")
    local ped = GetPlayerPed(PlayerId())
    RemoveWeaponFromPed(ped, weapon)
end)


