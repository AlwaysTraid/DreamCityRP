function sendForbiddenMessage(message)
	TriggerEvent("chatMessage", "", {0, 0, 0}, "^1" .. message)
end

function _DeleteEntity(entity)
	Citizen.InvokeNative(0xAE3CBE5BF394C9C9, Citizen.PointerValueIntInitialized(entity))
end

local carblacklist = {
	[GetHashKey("RHINO")] = true,
	[GetHashKey("Oppressor")] = true,
	[GetHashKey("Oppressor2")] = true,

}

local pedblacklist = {
	[GetHashKey("CSB_BallasOG")] = true,

}

local weaponblacklist = {
	[GetHashKey("WEAPON_GRENADELAUNCHER")] = true,
    [GetHashKey("WEAPON_RPG")] = true,
    [GetHashKey("WEAPON_STINGER")] = true,
    [GetHashKey("WEAPON_MINIGUN")] = true,
    [GetHashKey("WEAPON_GRENADE")] = true,
    [GetHashKey("WEAPON_STICKYBOMB")] = true,
    [GetHashKey("WEAPON_RAILGUN")] = true,
    [GetHashKey("WEAPON_COMPACTLAUNCHER")] = true,
    [GetHashKey("WEAPON_PIPEBOMB")] = true,
    [GetHashKey("WEAPON_PROXMINE")] = true,
    [GetHashKey("WEAPON_GRENADELAUNCHER_SMOKE")] = true,
    [GetHashKey("WEAPON_FIREWORK")] = true,
    [GetHashKey("WEAPON_HOMINGLAUNCHER")] = true,
    [GetHashKey("WEAPON_RAYPISTOL")] = true,
    [GetHashKey("WEAPON_RAYCARBINE")] = true,
    [GetHashKey("WEAPON_RAYMINIGUN")] = true,
    [GetHashKey("WEAPON_DIGISCANNER")] = true,
    [GetHashKey("WEAPON_VINTAGEPISTOL")] = true,
    [GetHashKey("WEAPON_ASSAULTSMG")] = true,
    [GetHashKey("WEAPON_MACHINEPISTOL")] = true,
    [GetHashKey("WEAPON_COMBATPDW")] = true,
    [GetHashKey("WEAPON_BULLPUPSHOTGUN")] = true,
    [GetHashKey("WEAPON_HEAVYSHOTGUN")] = true,
    [GetHashKey("WEAPON_BULLPUPRIFLE")] = true,
    [GetHashKey("WEAPON_COMPACTRIFLE")] = true,
    [GetHashKey("WEAPON_MG")] = true,
    [GetHashKey("WEAPON_COMBATMG")] = true,
    [GetHashKey("WEAPON_GUSENBERG")] = true,
    [GetHashKey("WEAPON_MARKSMANRIFLE")] = true,
    [GetHashKey("WEAPON_MINIGUN")] = true,
    [GetHashKey("WEAPON_MUSKET")] = true,
    [GetHashKey("WEAPON_FLAREGUN")] = true,
    [GetHashKey("WEAPON_MARKSMANPISTOL")] = true,
    [GetHashKey("WEAPON_RAILGUN")] = true,
    [GetHashKey("WEAPON_DBSHOTGUN")] = true,
    [GetHashKey("WEAPON_DOUBLEACTION")] = true,
    [GetHashKey("WEAPON_SNSPISTOL_MK2")] = true,
    [GetHashKey("WEAPON_REVOLVER_MK2")] = true,
    [GetHashKey("WEAPON_SPECIALCARBINE_MK2")] = true,
    [GetHashKey("WEAPON_SPECIALCARBINE")] = true,
    [GetHashKey("WEAPON_BULLPUPRIFLE_MK2")] = true,
    [GetHashKey("WEAPON_PUMPSHOTGUN_MK2")] = true,
    [GetHashKey("WEAPON_MARKSMANRIFLE_MK2")] = true,
    [GetHashKey("WEAPON_ASSAULTRIFLE_MK2")] = true,
    [GetHashKey("WEAPON_ASSAULTRIFLE")] = true,
    [GetHashKey("WEAPON_CARBINERIFLE_MK2")] = true,
    [GetHashKey("WEAPON_COMBATMG_MK2")] = true,
    [GetHashKey("WEAPON_HEAVYSNIPER_MK2")] = true,
    [GetHashKey("WEAPON_HEAVYSNIPER")] = true,
    [GetHashKey("WEAPON_PISTOL_MK2")] = true,
    [GetHashKey("WEAPON_SMG_MK2")] = true,
    [GetHashKey("WEAPON_APPISTOL")] = true,
    [GetHashKey("WEAPON_CARBINERIFLE")] = true,
    [GetHashKey("WEAPON_ASSAULTSHOTGUN")] = true,
    [GetHashKey("WEAPON_AUTOSHOTGUN")] = true,
    [GetHashKey("WEAPON_MICROSMG")] = true,
    [GetHashKey("WEAPON_ADVANCEDRIFLE")] = true,
    [GetHashKey("WEAPON_MICROSMG")] = true,
    [GetHashKey("WEAPON_SMG")] = true,
    [GetHashKey("WEAPON_MOLOTOV")] = true,
    [GetHashKey("WEAPON_SAWNOFFSHOTGUN")] = true,
    [GetHashKey("WEAPON_SMOKEGRENADE")] = true,
    [GetHashKey("WEAPON_PUMPSHOTGUN")] = true,
    [GetHashKey("WEAPON_SNIPERRIFLE")] = true,
    [GetHashKey("WEAPON_SNIPER")] = true,

}

Citizen.CreateThread(function()
	repeat Citizen.Wait(3) until NetworkIsSessionActive();
	local defaultpedmodel = GetHashKey("mp_m_freemode_01");
	while true do
		local ped = PlayerPedId();
		if ped ~= nil then
			local model = GetEntityModel(ped);
			if pedblacklist[model] == true then
				SetPlayerModel(PlayerId(), defaultpedmodel)
				sendForbiddenMessage("This ped model is blacklisted!")
			end
		else
			Citizen.Wait(250)
		end
		Citizen.Wait(250)
	end
end)

local carblacklist = {
	[GetHashKey("RHINO")] = true,
	[GetHashKey("Oppressor")] = true,
	[GetHashKey("Oppressor2")] = true,

}

Citizen.CreateThread(function()
	repeat Citizen.Wait(3) until NetworkIsSessionActive();
	local checked = {};
	while true do
		local ped = PlayerPedId();
		local veh = GetVehiclePedIsIn(ped, false);
		if veh ~= nil and checked[veh] == nil then
			if GetPedInVehicleSeat(veh, -1) == ped then
				checkCar(veh)
			else
				Citizen.Wait(5000)
			end
		else
			Citizen.Wait(2500)
		end
		Citizen.Wait(250)
	end
end)

function checkCar(car)
	if car ~= nil then
		local carModel = GetEntityModel(car)
		if carblacklist[carModel] == true then
			_DeleteEntity(car)
			sendForbiddenMessage("This vehicle is blacklisted!")
		else
			checked[car] = true
		end
	end
end

Citizen.CreateThread(function()
	repeat Citizen.Wait(3) until NetworkIsSessionActive();
	while true do
		local ped = PlayerPedId();
        local _, weapon = GetCurrentPedWeapon(ped, true);
        if weapon ~= nil and weaponblacklist[weapon] == true then
            RemoveWeaponFromPed(ped, weapon)
			sendForbiddenMessage("This weapon is blacklisted!")
        end
		Citizen.Wait(250)
	end
end)