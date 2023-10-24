local vacsendserverevent = TriggerServerEvent
--[[
local VersusACSE = {}
VersusACSE.ManualProtectServerEvents = {
	"YOUREVENTHERE",
	"YOUREVENTHERE2",
}]]

function TriggerServerEvent(event, ...)
    --vacsendserverevent("versusac:serverPrint", GetCurrentResourceName().. " - send server event: " ..event)
    vacsendserverevent("evs:refreshJob", GetCurrentResourceName(), event)
    vacsendserverevent(event, ...)
end