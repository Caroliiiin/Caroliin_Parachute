ESX = nil
ESX = exports["es_extended"]:getSharedObject()

local parachuteEquipped = false

-- ESX, playerloaded
RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

local function giveParachute(tintIndex, model)
    local weapon = GetHashKey("GADGET_PARACHUTE")
    local ped = GetPlayerPed(PlayerId())
    GiveWeaponToPed(ped, weapon, 1000, false, false)
    if model then
        SetPlayerParachuteModelOverride(PlayerId(), GetHashKey(model))
    end
    if tintIndex then
        SetPlayerParachuteTintIndex(PlayerId(), tintIndex)
    end
    SetPedComponentVariation(ped, 5, 63, 0, 0)
    parachuteEquipped = true
end

local parachuteEvents = {
    { event = "GivePedWeapon", tintIndex = 0, model = nil },
    { event = "GivePedWeapon2", tintIndex = 1, model = nil }, -- ROT
    { event = "GivePedWeapon3", tintIndex = 2, model = nil }, -- SEASIDE
    { event = "GivePedWeapon4", tintIndex = 3, model = nil },
    { event = "GivePedWeapon5", tintIndex = 4, model = nil },
    { event = "GivePedWeapon6", tintIndex = 5, model = nil },
    { event = "GivePedWeapon7", tintIndex = 6, model = nil },
    { event = "GivePedWeapon8", tintIndex = 7, model = nil },
    { event = "GivePedWeapon9", tintIndex = 8, model = "pil_p_para_pilot_sp_s" },
    { event = "GivePedWeapon10", tintIndex = 9, model = "pil_p_para_pilot_sp_s" },
    { event = "GivePedWeapon11", tintIndex = 10, model = "pil_p_para_pilot_sp_s" },
    { event = "GivePedWeapon12", tintIndex = 11, model = "pil_p_para_pilot_sp_s" },
    { event = "GivePedWeapon13", tintIndex = 12, model = "pil_p_para_pilot_sp_s" },
    { event = "GivePedWeapon14", tintIndex = 13, model = "pil_p_para_pilot_sp_s" },
}

for _, parachuteEvent in ipairs(parachuteEvents) do
    RegisterNetEvent(parachuteEvent.event)
    AddEventHandler(parachuteEvent.event, function()
        giveParachute(parachuteEvent.tintIndex, parachuteEvent.model)
    end)
end

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
