QBCore = nil

PedStatus = 0
whitelisted = false
checkingWL = true

CreateThread(function()
	while QBCore == nil do
		TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
		Wait(500)
	end
end)

CreateThread(function()

	while QBCore == nil do
		Wait(1)
	end

	while true do
		Wait(500)

		if not whitelisted then

			local playerPed = GetPlayerPed(-1)
			local ped = PlayerPedId()

			-- BLACKLISTED CAR CHECK
			if IsPedInAnyVehicle(GetPlayerPed(-1)) then
				v = GetVehiclePedIsIn(playerPed, false)
			end
			
			if playerPed and v then
				if GetPedInVehicleSeat(v, -1) == playerPed then
					checkCar(GetVehiclePedIsIn(playerPed, false))
				end
			end
			
			-- BLACKLISTED WEAPON CHECK
			-- for _,theWeapon in ipairs(Config.WeaponBL) do
			-- 	Wait(1)
			-- 	if HasPedGotWeapon(PlayerPedId(),GetHashKey(theWeapon),false) == 1 then
			-- 		RemoveAllPedWeapons(PlayerPedId(),false)
			-- 	end
			-- end

		end
	end

end)

function DeleteObjects(object, detach)
	if DoesEntityExist(object) then
		NetworkRequestControlOfEntity(object)
		while not NetworkHasControlOfEntity(object) do
			Wait(1)
		end
		if detach then
			DetachEntity(object, 0, false)
		end

		SetEntityCollision(object, false, false)
		SetEntityAlpha(object, 0.0, true)
		SetEntityAsMissionEntity(object, true, true)
		SetEntityAsNoLongerNeeded(object)
		DeleteEntity(object)

	end
end

local entityEnumerator = {
    __gc = function(enum)
        if enum.destructor and enum.handle then
            enum.destructor(enum.handle)
        end
        enum.destructor = nil
        enum.handle = nil
    end
}

local function EnumerateEntities(initFunc, moveFunc, disposeFunc)
    return coroutine.wrap(function()
        local iter, id = initFunc()
        if not id or id == 0 then
            disposeFunc(iter)
            return
        end
      
        local enum = {handle = iter, destructor = disposeFunc}
        setmetatable(enum, entityEnumerator)
      
        local next = true
        repeat
            coroutine.yield(id)
            next, id = moveFunc(iter)
        until not next
      
        enum.destructor, enum.handle = nil, nil
        disposeFunc(iter)
    end)
end

function EnumerateObjects()
    return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
end
  
function EnumeratePeds()
    return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end

function EnumerateVehicles()
    return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end
  
function EnumeratePickups()
    return EnumerateEntities(FindFirstPickup, FindNextPickup, EndFindPickup)
end

CreateThread(function()
	while true do
		Wait(3000)

		thePeds = EnumeratePeds()
		PedStatus = 0
		for ped in thePeds do
			PedStatus = PedStatus + 1
			if PedStatus >= Config.pedThreshold then
				if not (IsPedAPlayer(ped))then
					DeleteEntity(ped)
					RemoveAllPedWeapons(ped, true)
				end
			end
		end
	end
end)

function KillAllPeds()
    local pedweapon
    local pedid
    for ped in EnumeratePeds() do 
        if DoesEntityExist(ped) then
            pedid = GetEntityModel(ped)
            pedweapon = GetSelectedPedWeapon(ped)
            if pedweapon == -1312131151 or not IsPedHuman(ped) then 
                ApplyDamageToPed(ped, 1000, false)
                DeleteEntity(ped)
            else
                switch = function (choice)
                    choice = choice and tonumber(choice) or choice
                  
                    case =
                    {
                        [451459928] = function ( )
                            ApplyDamageToPed(ped, 1000, false)
                            DeleteEntity(ped)
                        end,
                  
                        [1684083350] = function ( )
                            ApplyDamageToPed(ped, 1000, false)
                            DeleteEntity(ped)
                        end,

                        [451459928] = function ( )
                            ApplyDamageToPed(ped, 1000, false)
                            DeleteEntity(ped)
                        end,
              
                        [1096929346] = function ( )
                            ApplyDamageToPed(ped, 1000, false)
                            DeleteEntity(ped)
                        end,

                        [880829941] = function ( )
                            ApplyDamageToPed(ped, 1000, false)
                            DeleteEntity(ped)
                        end,
          
                        [-1404353274] = function ( )
                            ApplyDamageToPed(ped, 1000, false)
                            DeleteEntity(ped)
                        end,

                        [2109968527] = function ( )
                            ApplyDamageToPed(ped, 1000, false)
                            DeleteEntity(ped)
                        end,

                       default = function ( )
                       end,
                    }

                    if case[choice] then
                       case[choice]()
                    else
                       case["default"]()
                    end
                  
                end
                switch(pedid) 
            end
        end
    end
end

function checkCar(car)
	if car then
		carModel = GetEntityModel(car)
		carName = GetDisplayNameFromVehicleModel(carModel)
		if isCarBlacklisted(carModel) then
			_DeleteEntity(car)
			TriggerServerEvent('ATG_UTILS:B*C')
        end
	end
end

function isCarBlacklisted(model)
	for _, blacklistedCar in pairs(Config.CarsBL) do
		if model == GetHashKey(blacklistedCar) then
			return true
		end
	end

	return false
end

function _DeleteEntity(entity)
	InvokeNative(0xAE3CBE5BF394C9C9, PointerValueIntInitialized(entity))
end