local table = {}
local _ped = PlayerPedId()

table = {_ped}

local ws22 = true

if ws22 then 
    if Citizen.InvokeNative(0x475768A975D5AD17, _ped, 4, Citizen.ReturnResultAnyway()) or Citizen.InvokeNative(0x475768A975D5AD17, _ped, 2, Citizen.ReturnResultAnyway()) then
        local weapon = Citizen.InvokeNative(0x0A6DB4965674D243, _ped, Citizen.ResultAsInteger())
        table = {weapon}
    end
end

return table