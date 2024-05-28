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
    { event = "GivePedWeapon", tintIndex = 0, model = nil }, -- Rainbow
    { event = "GivePedWeapon2", tintIndex = 1, model = nil }, -- Red
    { event = "GivePedWeapon3", tintIndex = 2, model = nil }, -- Seaside
    { event = "GivePedWeapon4", tintIndex = 3, model = nil },-- Widowmaker
    { event = "GivePedWeapon5", tintIndex = 4, model = nil },--  Patriot
    { event = "GivePedWeapon6", tintIndex = 5, model = nil },-- Blue
    { event = "GivePedWeapon7", tintIndex = 6, model = nil },--  Black
    { event = "GivePedWeapon8", tintIndex = 7, model = nil },-- Hornet
    { event = "GivePedWeapon9", tintIndex = 8, model = "pil_p_para_pilot_sp_s" },-- Air Force
    { event = "GivePedWeapon10", tintIndex = 9, model = "pil_p_para_pilot_sp_s" },-- Desert 
    { event = "GivePedWeapon11", tintIndex = 10, model = "pil_p_para_pilot_sp_s" },-- Shadow
    { event = "GivePedWeapon12", tintIndex = 11, model = "pil_p_para_pilot_sp_s" },-- High Altitude
    { event = "GivePedWeapon13", tintIndex = 12, model = "pil_p_para_pilot_sp_s" },-- Airborne
    { event = "GivePedWeapon14", tintIndex = 13, model = "pil_p_para_pilot_sp_s" },-- Sunrise
}

for _, parachuteEvent in ipairs(parachuteEvents) do
    RegisterNetEvent(parachuteEvent.event)
    AddEventHandler(parachuteEvent.event, function()
        giveParachute(parachuteEvent.tintIndex, parachuteEvent.model)
    end)
end

-- Event to reset the SetPedComponentVariation
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if parachuteEquipped then
            local playerPed = GetPlayerPed(-1)
            local speed = GetEntitySpeed(playerPed)
            if speed > 10.0 then -- Skydiving-Speed
                if IsControlJustReleased(0, 144) then
                    local ped = GetPlayerPed(PlayerId())
                    SetPedComponentVariation(ped, 5, 0, 0, 0)
                    parachuteEquipped = false
                end
            end
        end
    end
end)

-- Event to remove the weapon "parachute"
RegisterNetEvent("RemovePedWeapon")
AddEventHandler("RemovePedWeapon", function()
    local weapon = GetHashKey("GADGET_PARACHUTE")
    local ped = GetPlayerPed(PlayerId())
    RemoveWeaponFromPed(ped, weapon)
end)
