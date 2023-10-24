--[[
 /$$    /$$                                                         /$$$$$$              /$$     /$$           /$$                             /$$    
| $$   | $$                                                        /$$__  $$            | $$    |__/          | $$                            | $$    
| $$   | $$ /$$$$$$   /$$$$$$   /$$$$$$$ /$$   /$$  /$$$$$$$      | $$  \ $$ /$$$$$$$  /$$$$$$   /$$  /$$$$$$$| $$$$$$$   /$$$$$$   /$$$$$$  /$$$$$$  
|  $$ / $$//$$__  $$ /$$__  $$ /$$_____/| $$  | $$ /$$_____/      | $$$$$$$$| $$__  $$|_  $$_/  | $$ /$$_____/| $$__  $$ /$$__  $$ |____  $$|_  $$_/  
 \  $$ $$/| $$$$$$$$| $$  \__/|  $$$$$$ | $$  | $$|  $$$$$$       | $$__  $$| $$  \ $$  | $$    | $$| $$      | $$  \ $$| $$$$$$$$  /$$$$$$$  | $$    
  \  $$$/ | $$_____/| $$       \____  $$| $$  | $$ \____  $$      | $$  | $$| $$  | $$  | $$ /$$| $$| $$      | $$  | $$| $$_____/ /$$__  $$  | $$ /$$
   \  $/  |  $$$$$$$| $$       /$$$$$$$/|  $$$$$$/ /$$$$$$$/      | $$  | $$| $$  | $$  |  $$$$/| $$|  $$$$$$$| $$  | $$|  $$$$$$$|  $$$$$$$  |  $$$$/
    \_/    \_______/|__/      |_______/  \______/ |_______/       |__/  |__/|__/  |__/   \___/  |__/ \_______/|__/  |__/ \_______/ \_______/   \___/  
]]

VersusAC = {}
VersusAC.Version = "3.04" -- Don't change this!
VersusAC.Debug = false --enable to enable debugging. Only enable when we have told you so.
VersusAC.eBeta = false --dont enable unless told
VersusAC.AntiMalware = false --scans every resource and their files for malware (cipher etc)

VersusAC.Servername = "Dream City Roleplay 2.0" -- Put your server name here. This is needed for the best support, fast fixes and to display in the ban message.
VersusAC.Discord = "https://discord.gg/thPryAuEax" -- your discord link to show in ban message.

VersusAC.VersusAC_AI = false -- Only enable if you bought and installed our VersusAC-AI resource. 

VersusAC.UseESX = false -- Enable this option if you use ESX.
VersusAC.ESXTrigger = "esx:getSharedObject" -- Put your esx trigger here.
VersusAC.ESXOLD = false --Enable this if you use ESX v1.1 V1.2 etc, but not the newest or legacy. 
VersusAC.ESXNEW = false -- Enable this if you use ESX v1.7 V1.8 V1.9 etc, so the legacy version.
VersusAC.ESXName = "es_extended" -- Rename this if you renamed es_extended. 

VersusAC.UseQBCore = true -- Enable this option if you use QBCore.
VersusAC.QBTrigger = "qb-core" -- Put your esx trigger here. This is changed by our trigger change tool

VersusAC.CheckPlayersMoney = false -- Checks players money which is given or received
VersusAC.MaxMoneyTransferAmount = 500000 -- Change this to your maximum money tranfser amount if using ESX
VersusAC.BanMaxMoneyTransfer = false -- If the maximum money transfer amount is exceeded it will ban instead of logging it.

VersusAC.BanPlayers = false -- Set to false if you only want to have discord logs and no bans in the database at all. THIS DISABLES THE WHOLE BAN SYSTEM FOR EVERY DETECTION POSSIBLE.
VersusAC.RemoveSpecialCharacterFromName = false --removes emojis etc from their name. Fixes issue with not adding the player with a weird name to the ban table. If he has no name with all characters deleted, his name will be DefaultName
VersusAC.BanMessages = false -- Set this to false if you don't want ban messages displayed in chat.
VersusAC.ShowIpLogs = true -- Set this to false if you don't want to show the players IP in the ban logs. 

VersusAC.BanLogConsole = true -- When true, the bans will be logged in console. 
VersusAC.ConnectingLogConsole = true -- When true, the players that connect that are banned will be logged in console.

VersusAC.EnableDetectionEvent = false -- Enables the DetectionEvent feature. This will send the reason of the ban/log and the source (player) to a server event. This event will always be executed, even if you disabled banning. 
VersusAC.DetectionEvent = "YourCustomEventHere" -- Your server event that will be triggered. 

VersusAC.Layer7Protection = false --Protects your server from L7 DDoS attacks. Don't know if it actually does something.

VersusAC.BanDetections = { --Put this on true to ban players when they get detected for it, if on false, it will only log. 
	["onscreenmenudetection"] = true, --our addon script
	["heartbeat"] = true,
	["invisible"] = false,
	["godmode"] = false,
	["spectatormode"] = false,
	["speedhack"] = false,
	["blacklistedweapons"] = false,
	["thermalvision"] = false,
	["nightvision"] = false,
	["anticheatvehicle"] = true,
	["pedchanged"] = false,
	["freecam"] = false,
	["noclip"] = true,
	["nocliphard2"] = true,
	["nocliphard3"] = true,
	["teleport"] = false,
	["teleportcoords"] = false,
	["vehicleteleport"] = false,
	["playerblips"] = false,
	["damagemodifier"] = false,
	["clipmodifier"] = false,
	["infiniteammo"] = false,
	["antivehiclespawn"] = true,
	["vehiclemodifier"] = false,
	["givearmour"] = false,
	["fastrun"] = false,
	["ragebot"] = true,
	["aimbot"] = true,
	["aimbot2"] = true,
	["luamenu"] = true,
	["infinitestamina"] = false,
	["spawnrestrictionvehicle"] = true,
	["spawnrestrictionped"] = true,
	["spawnrestrictionprop"] = true,
	["noclipadvanced"] = true,
	["noclipadvanced2"] = true,
	["noclipadvanced3"] = true,
	["noclipadvanced4"] = true,
	["noclipadvanced5"] = true,
	["noclipadvanced6"] = false,
	["noclipadvanced7"] = true,
	["noclipadvanced8"] = false,
	["freecamadvanced"] = true,
	["freecamadvanced2"] = true,
	["freecamadvanced3"] = true,
	["freecamadvanced4"] = true,
	["resourcestartstop"] = false,
	["menuinject"] = true,
	["destroyengine"] = false,
	["versusstop"] = true,
	["weaponspawn"] = false,
	["particlespawn"] = false,
	["antivehicleboost"] = false, 
	["antinorecoil"] = false,
	["blacklistedwords"] = false,
	["giveorremoveweapons"] = false,
	["clearpedtasks"] = false,
	["clearpedtaskstoplayer"] = false,
	["eventprotection"] = false,
}

VersusAC.MaxLogs = 12 -- When a detection ban is put on false in VersusAC.BanDetections, it will log until it hits its maximum amount of logs set in the VersusAC.MaxLogs setting.

VersusAC.WhitelistFunctions = false 
VersusAC.WhitelistedEventOfScript = {
	"RESOURCENAMEHERE"
}

--[[	
  ____  _                       _  __        __   _     _                 _        
 |  _ \(_)___  ___ ___  _ __ __| | \ \      / /__| |__ | |__   ___   ___ | | _____ 
 | | | | / __|/ __/ _ \| '__/ _` |  \ \ /\ / / _ \ '_ \| '_ \ / _ \ / _ \| |/ / __|
 | |_| | \__ \ (_| (_) | | | (_| |   \ V  V /  __/ |_) | | | | (_) | (_) |   <\__ \
 |____/|_|___/\___\___/|_|  \__,_|    \_/\_/ \___|_.__/|_| |_|\___/ \___/|_|\_\___/
                                                                                   
]]

VersusAC.GeneralBanWebhook = "https://discord.com/api/webhooks/870407793574838294/5-FMK3qSNhQv7uxLdxIQMAIZIrv1t2HaFSEJAp7S-dLLKWh429RkgTO24Io3Fd9_2bwv"
VersusAC.EntitiesWebhookLog = "https://discord.com/api/webhooks/870407793574838294/5-FMK3qSNhQv7uxLdxIQMAIZIrv1t2HaFSEJAp7S-dLLKWh429RkgTO24Io3Fd9_2bwv"
VersusAC.ExplosionWebhookLog = "https://discord.com/api/webhooks/870407793574838294/5-FMK3qSNhQv7uxLdxIQMAIZIrv1t2HaFSEJAp7S-dLLKWh429RkgTO24Io3Fd9_2bwv"
VersusAC.ScreenshotWebhookLog = "https://discord.com/api/webhooks/870407793574838294/5-FMK3qSNhQv7uxLdxIQMAIZIrv1t2HaFSEJAp7S-dLLKWh429RkgTO24Io3Fd9_2bwv"
VersusAC.MoneyWebhookLog = "https://discord.com/api/webhooks/870407793574838294/5-FMK3qSNhQv7uxLdxIQMAIZIrv1t2HaFSEJAp7S-dLLKWh429RkgTO24Io3Fd9_2bwv"
VersusAC.TriggerWebhookLog = "https://discord.com/api/webhooks/870407793574838294/5-FMK3qSNhQv7uxLdxIQMAIZIrv1t2HaFSEJAp7S-dLLKWh429RkgTO24Io3Fd9_2bwv"
VersusAC.LogsWebhookLog = "https://discord.com/api/webhooks/870407793574838294/5-FMK3qSNhQv7uxLdxIQMAIZIrv1t2HaFSEJAp7S-dLLKWh429RkgTO24Io3Fd9_2bwv"
VersusAC.CommandsWebhookLog = "https://discord.com/api/webhooks/870407793574838294/5-FMK3qSNhQv7uxLdxIQMAIZIrv1t2HaFSEJAp7S-dLLKWh429RkgTO24Io3Fd9_2bwv"

VersusAC.VersusAIWebhook = "https://discord.com/api/webhooks/870407793574838294/5-FMK3qSNhQv7uxLdxIQMAIZIrv1t2HaFSEJAp7S-dLLKWh429RkgTO24Io3Fd9_2bwv"

VersusAC.Screenshots = true -- Enable this if you want to use the screenshot system and if you have screenshot-basic installed.

--[[
  _____                 _     ____            _            _   _             
 | ____|_   _____ _ __ | |_  |  _ \ _ __ ___ | |_ ___  ___| |_(_) ___  _ __  
 |  _| \ \ / / _ \ '_ \| __| | |_) | '__/ _ \| __/ _ \/ __| __| |/ _ \| '_ \ 
 | |___ \ V /  __/ | | | |_  |  __/| | | (_) | ||  __/ (__| |_| | (_) | | | |
 |_____| \_/ \___|_| |_|\__| |_|   |_|  \___/ \__\___|\___|\__|_|\___/|_| |_|
                                                                             
]]

VersusAC.ProtectServerEvents = false --Enable this if you want to protect all your server events. WATCH OUT!

VersusAC.AutomaticallyFetchAllEvents = false -- CURRENTLY IS A BIT BUGGY OR NEEDS ALOT OF TIME TO SETUP, USE MANUAL EVENT PROTECTION AND DISABLE THIS. automatically fetches all your server events. You don't have to add events yourself to the ManualProtectServerEvents list. If you want to add manually, disable this option. 
VersusAC.WhitelistedResourcesServerEvents = { --whitelist here your resources you don't want to be checked. This must include all paid escrowed resources. 
	"YOURESCROWEDRESOURCESHERE",
}

VersusAC.ManualProtectServerEvents = {
	"YOUREVENTHERE",
	"YOUREVENTHERE2",
}

--[[	
   ____                           _    ____ _               _        
  / ___| ___ _ __   ___ _ __ __ _| |  / ___| |__   ___  ___| | _____ 
 | |  _ / _ \ '_ \ / _ \ '__/ _` | | | |   | '_ \ / _ \/ __| |/ / __|
 | |_| |  __/ | | |  __/ | | (_| | | | |___| | | |  __/ (__|   <\__ \
  \____|\___|_| |_|\___|_|  \__,_|_|  \____|_| |_|\___|\___|_|\_\___/
                                                                     
]]

VersusAC.HeartbeatCheck = true -- Detects if a player disables VersusAC. 

VersusAC.AntiGiveorRemoveWeapons = true -- Detects if a player gives or removes a weapon with a menu.
VersusAC.AntiWeaponSpawn = true -- Detects if a weapon is spawned in. Needs es extended modification. Only enable if you modified it. 

VersusAC.AntiClearPedTasks = false -- Detects if a player clears a ped task.
VersusAC.AntiFakeChatMessages = false -- Detects if the playername matches the playernames message

VersusAC.AntiRamPlayers = true -- Detects if a player spawns a vehicle with alot of speed to VDM a player.

VersusAC.AntiVPN = true -- Detects if a user is joining with a VPN. They will get kicked and asked to disable their vpn.
VersusAC.ConnectionsAmount = 2 --If the player connects 2 or more times with a vpn, he will be safe banned if VersusAC.VPNSafeban is enabled. 
VersusAC.VPNSafeban = false -- Bans the player if he connects with a VPN more than the value VersusAC.ConnectionsAmount. You can let the player create a ticket to check if he was using a vpn / cheats. 
VersusAC.VPNAPI1 = true --Enables the VPN API 1
VersusAC.VPNAPI2 = true --Enables the VPN API 2
VersusAC.VPNAPI3 = true --Enables the VPN API 3
VersusAC.VPNAPI4 = true --Enables the VPN API 4

VersusAC.VPNWhitelist = { --Put the players IP here if you don't want them checked for a VPN
	"185.187.171.243",
}

VersusAC.VPNWhitelistLicense = { --Put the players license here if you don't want them checked for a VPN
	"license:d8b331afcd57a81246bbcab7b5f9befcac774865",
	"license:b4d11b12e6d9cf5d4c3b3e17d9f17c5de6bd32ee",
}

VersusAC.IPCountry = false --Players cannot connect if the ip is from any country below. VersusAC.AntiVPN needs to be enabled as well for it to work.
VersusAC.BlacklistedCountries = { --If the players IP is from any of these blacklisted countries, they will not be able to join. 
	"Thailand",
	"Mexico",
	"Costa Rica",
	"Colombia",
	"Brazil",
	"Argentina",
	"Chile",
	"Costa Rica",
	"United States",
	"Spain",
	"United Kingdom",
	"Ireland",
	"Germany",
	"Italy",
	"France",
	"Portugal",
	"Denmark",
	"Norway",
	"Sweden",
	"Poland",
	"Austria",
	"Hungary",
	"Slovenia",
	"Croatia",
	"Serbia",
	"Latvia",
	"Finland",
	"Estonia",
	"Lithuania",
	"Ukraine",
	"Moldova",
	"Romania",
	"Greece",
	"Cyprus",
	"Israel",
	"Turkey",
	"South Africa",
	"United Arab Emirates",
	"Iceland",
	"Canada",
	"South Korea",
	"Japan",
	"Taiwan",
	"China",
	"Vietnam",
	"Malaysia",
	"Indonesia",
	"Singapore",
	"Australia",
	"New Zealand",
	"Russia",
	"Georgia",
	"Bulgaria",
	"North Macedonia",
	"Albania",
	"Bosnia and Herzegovina",
	"Czech Republic",
	"Hong Kong",
	"Luxembourg",
	"Switzerland",
	"Luxembourg",
	--"Netherlands",
	--"Belgium",

}

VersusAC.ReloadBanListTime = 600000 -- Means 10 Minutes. It will reload the bans list

VersusAC.AntiRapidFire = false -- Experimental feature. Won't work.

--[[
  ____  _            _    _ _     _           _   _____            _           _                 
 | __ )| | __ _  ___| | _| (_)___| |_ ___  __| | | ____|_  ___ __ | | ___  ___(_) ___  _ __  ___ 
 |  _ \| |/ _` |/ __| |/ / | / __| __/ _ \/ _` | |  _| \ \/ / '_ \| |/ _ \/ __| |/ _ \| '_ \/ __|
 | |_) | | (_| | (__|   <| | \__ \ ||  __/ (_| | | |___ >  <| |_) | | (_) \__ \ | (_) | | | \__ \
 |____/|_|\__,_|\___|_|\_\_|_|___/\__\___|\__,_| |_____/_/\_\ .__/|_|\___/|___/_|\___/|_| |_|___/
                                                            |_|                                  
]]

VersusAC.ExplosionProtection = true -- Detects blacklisted explosions and mass explosions
VersusAC.CancelAllExplosions = false -- When set to true, cancels all explosions created. Only use this if you don't want any explosion server sided!
VersusAC.ProjectileProtection = true -- Detects explosions that are created with startProjectileEvent
VersusAC.ExplosionProtectionRocket = false -- Prevents firing rockets. Like a RPG.
VersusAC.MaxExplosions = 4 -- If more explosions are created than this number the player will be banned for mass explosions.

VersusAC.WhitelistedMassExplosions = {
	39,
	7, 
}

VersusAC.WhitelistedInvisibleExplosions = {
	39,
}

VersusAC.BlockedExplosions = {
	0,
	1,
	2,
	3,
	4,
	5,
	25,
	29,
	32,
	33,
	35,
	36,
	37,
	38
}

--[[	
     _          _   _   _____             
    / \   _ __ | |_(_) |_   _|_ _ _______ 
   / _ \ | '_ \| __| |   | |/ _` |_  / _ \
  / ___ \| | | | |_| |   | | (_| |/ /  __/
 /_/   \_\_| |_|\__|_|   |_|\__,_/___\___|
                                          
]]

VersusAC.AntiTazePlayer = false -- Enable this if you don't want other people taze other players without a whitelisted job. 

VersusAC.TaserWhitelistedJobs = { -- Only ESX. 
	"police",
	"offpolice"
}

--[[
 __        __                            __        ___     _ _       _ _     _   
 \ \      / /__  __ _ _ __   ___  _ __   \ \      / / |__ (_) |_ ___| (_)___| |_ 
  \ \ /\ / / _ \/ _` | '_ \ / _ \| '_ \   \ \ /\ / /| '_ \| | __/ _ \ | / __| __|
   \ V  V /  __/ (_| | |_) | (_) | | | |   \ V  V / | | | | | ||  __/ | \__ \ |_ 
    \_/\_/ \___|\__,_| .__/ \___/|_| |_|    \_/\_/  |_| |_|_|\__\___|_|_|___/\__|
                     |_|                                                         	
]]

VersusAC.WeaponWhitelist = { -- whitelist player steamids here if you use the option: VersusAC.WhitelistWeapons in client_config
	"",

}

--[[
     _          _   _   _____                 _       
    / \   _ __ | |_(_) | ____|_   _____ _ __ | |_ ___ 
   / _ \ | '_ \| __| | |  _| \ \ / / _ \ '_ \| __/ __|
  / ___ \| | | | |_| | | |___ \ V /  __/ | | | |_\__ \
 /_/   \_\_| |_|\__|_| |_____| \_/ \___|_| |_|\__|___/
                                                      
]]

--ESX
VersusAC.ESXAntiCarryAll = false -- Prevents cheaters using -1 which triggers all players. Enable UseESX
VersusAC.ESXAntiDPemoteAll = false -- Prevents cheaters using -1 which triggers all players. Enable UseESX
VersusAC.ESXAntiPoliceHandcuffAll = false -- Prevents cheaters using -1 which triggers all players. Enable UseESX
VersusAC.ESXAntiPoliceDragAll = false -- Prevents cheaters using -1 which triggers all players. Enable UseESX
VersusAC.ESXAntiPoliceputInVehicleAll = false -- Prevents cheaters using -1 which triggers all players. Enable UseESX
VersusAC.ESXAntiPoliceOutVehicleAll = false -- Prevents cheaters using -1 which triggers all players. Enable UseESX
VersusAC.ESXAntiJailAll = false -- Prevents cheaters using -1 which triggers all players. Enable UseESX (esx-qalle-jail)
VersusAC.ESXAntiCommunityServiceAll = false -- Prevents cheaters using -1 which triggers all players. Enable UseESX (esx_communityservice)

--QBCore
VersusAC.QBAntiJailAll = false -- Prevents cheaters using -1 which triggers all players. Enable UseQBCore
VersusAC.QBAntiBillAll = false -- Prevents cheaters using -1 which triggers all players. Enable UseQBCore
VersusAC.QBAntiInVehicleAll = false -- Prevents cheaters using -1 which triggers all players. Enable UseQBCore
VersusAC.QBAntiOutVehicleAll = false -- Prevents cheaters using -1 which triggers all players. Enable UseQBCore
VersusAC.QBAntiCuffAll = false -- Prevents cheaters using -1 which triggers all players. Enable UseQBCore
VersusAC.QBAntiEscortAll = false -- Prevents cheaters using -1 which triggers all players. Enable UseQBCore
VersusAC.QBAntiKidnapAll = false -- Prevents cheaters using -1 which triggers all players. Enable UseQBCore



--[[	
  __  __              _____       _   _ _   _           
 |  \/  | __ ___  __ | ____|_ __ | |_(_) |_(_) ___  ___ 
 | |\/| |/ _` \ \/ / |  _| | '_ \| __| | __| |/ _ \/ __|
 | |  | | (_| |>  <  | |___| | | | |_| | |_| |  __/\__ \
 |_|  |_|\__,_/_/\_\ |_____|_| |_|\__|_|\__|_|\___||___/
                                                        
]]

VersusAC.MaxSpawnCooldown = 8000 -- Cooldown on when it will clear the table again. So this means that it will gather all props, peds etc spawned and it will clear the list after 15 seconds.

VersusAC.MaxPedsPerUser = 5 -- Maximum peds an user can spawn
VersusAC.MaxPropsPerUser = 15 -- Maximum props an user can spawn
VersusAC.MaxVehiclesPerUser = 15 -- Maximum vehicles an user can spawn
VersusAC.MaxEntitiesPerUser = 10 -- Maximum entities an user can spawn
VersusAC.MaxParticlesPerUser = 200004 -- Maximum particles an user can spawn

--[[
  ____  _            _    _ _     _           _   ____  _                                                       
 | __ )| | __ _  ___| | _| (_)___| |_ ___  __| | |  _ \| | __ _ _   _  ___ _ __ _ __   __ _ _ __ ___   ___  ___ 
 |  _ \| |/ _` |/ __| |/ / | / __| __/ _ \/ _` | | |_) | |/ _` | | | |/ _ \ '__| '_ \ / _` | '_ ` _ \ / _ \/ __|
 | |_) | | (_| | (__|   <| | \__ \ ||  __/ (_| | |  __/| | (_| | |_| |  __/ |  | | | | (_| | | | | | |  __/\__ \
 |____/|_|\__,_|\___|_|\_\_|_|___/\__\___|\__,_| |_|   |_|\__,_|\__, |\___|_|  |_| |_|\__,_|_| |_| |_|\___||___/
                                                                |___/                                                                                                                       	
]]

VersusAC.BlacklistNames = true

VersusAC.BlacklistedNames = {
	"administrator", "admin", "adm1n", "adm!n", "admln", "moderator", "owner", "nigger", "n1gger", "moderator", "eulencheats", "lynxmenu", "atgmenu", "hacker", "bastard", "hamhaxia", "333gang", "n1gger", "n1ga", "nigga", "n1gga", "nigg3r",
	"nig3r", "shagged", "4dm1n", "4dmin", "m0d3r4t0r", "n199er", "n1993r", "rustchance.com", "rustchance", "hellcase.com", "hellcase", "youtube.com", "youtu.be", "youtube", "anticheat.gg", "anticheat", "fucking", "ψ", 
	"@", "&", "{", "}", ";", "ϟ", "♕", "Æ", "Œ", "‰", "™", "š", "œ", "Ÿ", "µ", "ß",
	"±", "¦", "»", "«", "¼", "½", "¾", "¬", "¿", "Ñ", "®", "©", "²", "·", "•", "°", "þ", "ベ", "ル", "ろ", "ぬ", "ふ", "う", "え", "お", "や", "ゆ", "よ", "わ", "ほ", "へ", "た", "て", "い", "す", "か", "ん", "な", "に", "ら", "ぜ", "む",
	"ち", "と", "し", "は", "き", "く", "ま", "の", "り", "れ", "け", "む", "つ", "さ", "そ", "ひ", "こ", "み", "も", "ね", "る", "め", "ロ", "ヌ", "フ", "ア", "ウ", "エ", "オ", "ヤ", "ユ", "ヨ", "ワ", "ホ", "ヘ", "タ", "テ", "イ", "ス", "カ", "ン",
	"ナ", "ニ", "ラ", "セ", "ム", "チ", "ト", "シ", "ハ", "キ", "ク", "マ", "ノ", "リ", "レ", "ケ", "ム", "ツ", "サ", "ソ", "ヒ", "コ", "ミ", "モ", "ネ", "ル", "メ", "✪", "Ä", "ƒ", "Ã", "¢", "?", "†", "€", "웃", "и", "】", "【", "j4p.pl", "ֆ", "ȶ",
	"你", "好", "爱", "幸", "福", "猫", "狗", "微", "笑", "中", "安", "東", "尼", "杰", "诶", "西", "开", "陈", "瑞", "华", "馬", "塞", "洛", "ダ", "仇", "觉", "感", "衣", "德", "曼", "L͙", "a͙", "l͙", "ľ̶̚͝", "Ḩ̷̤͚̤͑͂̎̎͆", "a̸̢͉̠͎͒͌͐̑̇", "♚", "я", "Ʒ", "Ӂ̴", "Ƹ̴", "≋",
	"chocohax", "civilgamers.com", "civilgamers", "csgoempire.com", "csgoempire", "g4skins.com", "g4skins", "gameodds.gg", "duckfuck.com", "crysishosting.com", "crysishosting", "key-drop.com", "key-drop.pl", "skinhub.com", "skinhub", "`", "¤", "¡",
	"casedrop.eu", "casedrop", "cs.money", "rustypot.com", "ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â", "✈", "⛧", "☭", "☣", "✠", "dkb.xss.ht", "( . )( . )", "⚆", "╮", "╭", "rampage.lt", "?", "xcasecsgo.com", "xcasecsgo", "csgocases.com",
	"csgocases", "K9GrillzUK.co.uk", "moat.gg", "princevidz.com", "princevidz", "pvpro.com", "Pvpro", "ez.krimes.ro", "loot.farm", "arma3fisherslife.net", "arma3fisherslife", "egamers.io", "ifn.gg", "key-drop", "sups.gg", "tradeit.gg",
	"§", "csgotraders.net", "csgotraders", "Σ", "Ξ", "hurtfun.com", "hurtfun", "gamekit.com", "¥", "t.tv", "yandex.ru", "yandex", "csgofly.com", "csgofly", "pornhub.com", "pornhub", "一", "", "Ｊ", "◢", "◤", "⋡", "℟", "ᴮ", "ᴼ", "ᴛᴇᴀᴍ",
	"cs.deals", "twat", "ESX", "ESX_TEAM", "ESXTEAM", "Eulen", "redengine"
}

--[[
  ____  _            _    _ _     _           _  __        __            _     
 | __ )| | __ _  ___| | _| (_)___| |_ ___  __| | \ \      / /__  _ __ __| |___ 
 |  _ \| |/ _` |/ __| |/ / | / __| __/ _ \/ _` |  \ \ /\ / / _ \| '__/ _` / __|
 | |_) | | (_| | (__|   <| | \__ \ ||  __/ (_| |   \ V  V / (_) | | | (_| \__ \
 |____/|_|\__,_|\___|_|\_\_|_|___/\__\___|\__,_|    \_/\_/ \___/|_|  \__,_|___/
                                                                               
]]

VersusAC.AntiBlacklistedWords = true -- Detects if a blacklisted word is ran in client console or in the chat.

VersusAC.BlacklistedWords = {
	"Ham Mafia",
	"HamHaxia",
	'Brutan',
	'Desudo',
	'EulenCheats',
	"85.190.90.118",
	"AlphaV ~ 5391",
	"Baran#8992",
	"Fallen#0811",
	"hammafia.com",
	"iLostName#7138",
	"Soviet Bear",
	"vjuton.pl",
	"www.renalua.com",
	"34ByTe Community", 
	"Anti-Lynx",
	"Ham Mafia", 
	"HamHaxia", 
	"Lynx 8",
	"lynxmenu.com", 
	"lynxmenu",
	"Melon#1379",
	"Rena 8",
	"www.lynxmenu.com",
	"Xanax#0134", 
	">:D Player Crash",
	"333",
	"333GANG",
	"34ByTe Community",
	"Anti-LRAC",
	"aries.pl",
	"aries",
	"Aries98",
	"dc.xaries.pl",
	"dezet",
	"discord.gg", 
	"discord.gg/",
	"Eulen",
	"EulenCheat",
	"KoGuSzEk#3251",
	"Lynx",
	"lynxmenu.com - Cheats & Anti-Cheats!",
	"lynxmenu.com",
	"MARVIN menu",
	"Rena",
	"Xanax#0134",
	"xaries",
	"XARIES",
	"yo many",
	"Eulen",
	"youtube.com/c/Aries98/"
}

--[[
     _          _   _   ____                             _____     _                           
    / \   _ __ | |_(_) / ___|  ___ _ ____   _____ _ __  |_   _| __(_) __ _  __ _  ___ _ __ ___ 
   / _ \ | '_ \| __| | \___ \ / _ \ '__\ \ / / _ \ '__|   | || '__| |/ _` |/ _` |/ _ \ '__/ __|
  / ___ \| | | | |_| |  ___) |  __/ |   \ V /  __/ |      | || |  | | (_| | (_| |  __/ |  \__ \
 /_/   \_\_| |_|\__|_| |____/ \___|_|    \_/ \___|_|      |_||_|  |_|\__, |\__, |\___|_|  |___/
                                                                     |___/ |___/               
]]

VersusAC.AntiBlacklistedTriggers = false -- Enable this if you want to blacklist server side triggers. If you ran our trigger change tool then enable this. 

VersusAC.BlacklistedTriggers = {
	"redst0nia:checking",
	"esx_mafiajob:confiscatePlayerItem",
	"lscustoms:payGarage",
	"vrp_slotmachine:server:2",
	"Banca:deposit",
	"bank:depositt",
	"esx_jobs:caution",
	"esx_fueldelivery:pay",
	"esx_carthief:pay",
	"esx_godirtyjob:pay",
	"esx_garbagejob:pay",
	"esx_pizza:pay",
	"esx_ranger:pay",
	"esx_truckerjob:pay",
	"AdminMenu:giveBank",
	"AdminMenu:giveCash",
	"esx:giveInventoryItem",
	"esx_gopostaljob:pay",
	"esx_banksecurity:pay",
	"esx_slotmachine:sv:2",
	"esx_billing:sendBill",
	"esx_jail:sendToJail",
	"esx_jailer:sendToJail",
	"NB:recruterplayer",
	"js:jailuser",
	"esx_dmvschool:pay", 
	"bank:withdraw",
	"esx_dmvschool:addLicense",
	"LegacyFuel:PayFuel",
	"esx-qalle-jail:jailPlayer",
	"OG_cuffs:cuffCheckNearest",
	"esx_policejob:handcuff",
	"police:cuffGranted",
	"cuffServer",
	"cuffGranted",
	"esx_mechanicjob:startCraft",
	"esx_drugs:startHarvestWeed",
	"esx_drugs:startTransformWeed",
	"esx_drugs:startSellWeed",
	"esx_drugs:startHarvestCoke",
	"esx_drugs:startTransformCoke",
	"esx_drugs:startSellCoke",
	"esx_drugs:startHarvestMeth",
	"esx_drugs:startTransformMeth",
	"esx_drugs:startSellMeth",
	"esx_drugs:startHarvestOpium",
	"esx_drugs:startSellOpium",
	"esx_drugs:startTransformOpium",
	"esx_blanchisseur:startWhitening",
	"esx_drugs:stopHarvestCoke",
	"esx_drugs:stopTransformCoke",
	"esx_drugs:stopSellCoke",
	"esx_drugs:stopHarvestMeth",
	"esx_drugs:stopTransformMeth",
	"esx_drugs:stopSellMeth",
	"esx_drugs:stopHarvestWeed",
	"esx_drugs:stopTransformWeed",
	"esx_drugs:stopSellWeed",
	"esx_drugs:stopHarvestOpium",
	"esx_drugs:stopTransformOpium",
	"esx_drugs:stopSellOpium",
	"esx_tankerjob:pay",
	"esx_vehicletrunk:giveDirty",
	"gambling:spend",
	"esx_moneywash:withdraw",
	"esx_moneywash:deposit",
	"AdminMenu:giveDirtyMoney",
	"mission:completed",
	"esx_handcuffs:cuffing",
	"truckerJob:success",
	"paycheck:salary",
	"pacheck:bonus",
	"esx_society:getOnlinePlayers",
	"99kr-burglary:addMoney",
	"esx_jailer:unjailTime",
	"esx_ambulancejob:revive",
	"DiscordBot:playerDied",
	"hentailover:xdlol",
	"antilynx8:anticheat",
	"antilynx8:crashuser",
	"antilynxr6:detection",
	"antilynx8r4a:anticheat",
	"antilynxr4:detect",
	"antilynxr4:crashuser1",
	"js:jailuser", 
	"ynx8:anticheat",
	"lynx8:anticheat",
	"shilling=yet7",
	"adminmenu:allowall",
	"h:xd",
	"esx_skin:responseSaveSkin",
	"ljail:jailplayer",
	"adminmenu:setsalary",
	"adminmenu:cashoutall",
	"HCheat:TempDisableDetection",
	"esx_drugs:pickedUpCannabis",
	"esx_drugs:processCannabis",
	"esx-qalle-hunting:reward",
	"esx-qalle-hunting:sell",
	"esx_mecanojob:onNPCJobCompleted",
	"BsCuff:Cuff696999",
	"veh_SR:CheckMoneyForVeh",
	"mellotrainer:adminTempBan",
	"mellotrainer:adminKick",
	"d0pamine_xyz:getFuckedNigger",
	"esx_communityservice:sendToCommunityService",
	"InteractSound_SV:PlayOnAll",
	"InteractSound_SV:PlayWithinDistance",
	"crown_xyz:getFuckedNigger",
	"esx:clientLog",
	"kashactersS:DeleteCharacter",
	"lscustoms:UpdateVeh",
	"NB:destituerplayer",
	"esx_vangelico_robbery:robberycomplete",
	"esx_vangelico_robbery:gioielli",
	"esx_policejob:requestarrest",
	"ems:revive",
	"whoapd:revive",
	"paramedic:revive",
	"esx_vehicleshop:setVehicleOwned",
}

--[[	
  ____  _            _    _ _     _           _   ____                           __  __  __           _      _     
 | __ )| | __ _  ___| | _| (_)___| |_ ___  __| | |  _ \ _ __ ___  _ __  ___     / / |  \/  | ___   __| | ___| |___ 
 |  _ \| |/ _` |/ __| |/ / | / __| __/ _ \/ _` | | |_) | '__/ _ \| '_ \/ __|   / /  | |\/| |/ _ \ / _` |/ _ \ / __|
 | |_) | | (_| | (__|   <| | \__ \ ||  __/ (_| | |  __/| | | (_) | |_) \__ \  / /   | |  | | (_) | (_| |  __/ \__ \
 |____/|_|\__,_|\___|_|\_\_|_|___/\__\___|\__,_| |_|   |_|  \___/| .__/|___/ /_/    |_|  |_|\___/ \__,_|\___|_|___/
                                                                 |_|                                               
]]

VersusAC.AntiBlacklistedModels = true -- Detects blacklisted props, models, peds and vehicles. Check VersusAC.BlacklistedEntities
VersusAC.AntiWhitelistedModels = false  -- Detects props that are not whitelisted and checks for blacklisted models, peds and vehicles. Check VersusAC.WhitelistedProps and VersusAC.WhitelistedPropsHash

VersusAC.ResourceSpawnRestriction = false --Same detection as in client_config, but then more advanced.

VersusAC.BlacklistedPeds = false -- Enables blacklisted peds check
VersusAC.BlacklistedProps = true -- Enables the blacklisted props checks (Both whitelisting system and blacklisting system)
VersusAC.BlacklistedVehicles = true -- Enables the blacklisted vehicles check



VersusAC.BlacklistedModels = { -- Only peds or vehicles
	"skylift",
	"valkyrie2",
	"airbus",
	"hunter",
	"bus",
	"armytanker",
	"armytrailer",
	"armytrailer2",
	"baletrailer",
	"boattrailer",
	"cablecar",
	"docktrailer",
	"freighttrailer",
	"graintrailer",
	"proptrailer",
	"raketrailer",
	"tr2",
	"tr3",
	"tr4",
	"trflat",
	"tvtrailer",
	"tanker",
	"tanker2",
	"tankercar",
	"trailerlarge",
	"trailerlogs",
	"trailersmall",
	"trailers3",
	"trailers4",
	'RHINO',
	'AKULA',
	'SAVAGE',
	'HUNTER',
	'BUZZARD',
	'ANNIHILATOR',
	'VALKYRIE',
	'HYDRA',
	'APC',
	'Trailersmall2',
	'Lazer',
	'oppressor',
	'mogul',
	'barrage',
	'Khanjali',
	'volatol',
	'chernobog',
	'avenger',
	'stromberg',
	'nightshark',
	'besra',
	'babushka ',
	'starling',
	'insurgent',
	'cargobob',
	'cargobob2',
	'cargobob3',
	'cargobob4',
	'caracara',
	'deluxo',
	'menacer',
	'scramjet',
	'oppressor2',
	'revolter',
	'viseris',
	'savestra',
	'thruster',
	'ardent',
	'dune3',
	'tampa3',
	'halftrack',
	'nokota',
	'strikeforce',
	'bombushka',
	'molotok',
	'pyro',
	'ruiner2',
	'limo2',
	'technical',
	'technical2',
	'technical3',
	'jb700w',
	'blazer5',
	'insurgent3',
	'boxville5',
	'bruiser',
	'bruiser2',
	'bruiser3',
	'brutus',
	'brutus2',
	'brutus3',
	'cerberus',
	'cerberus2',
	'cerberus3',
	'dominator4',
	'dominator5',
	'dominator6',
	'impaler2',
	'impaler3',
	'impaler4',
	'imperator',
	'imperator2',
	'imperator3',
	'issi4',
	'issi5',
	'issi6',
	'monster3',
	'monster4',
	'monster5',
	'scarab',
	'scarab2',
	'scarab3',
	'slamvan4',
	'slamvan5',
	'slamvan6',
	'zr380',
	'zr3802',
	'zr3803',
	'alphaz1',
	'avenger2',
	'blimp',
	'blimp2',
	'blimp3',
	'cargoplane',
	'cuban800',
	--'dodo',
	'duster',
	'howard',
	'jet',
	'luxor',
	'luxor2',
	'mammatus',
	'microlight',
	'miljet',
	'nimbus',
	'rogue',
	'seabreeze',
	'shamal',
	'stunt',
	'titan',
	'tula',
	'velum',
	'velum2',
	'vestra',

	-- PEDS
	"s_m_y_swat_01",
	"a_m_o_acult_01",
	"ig_wade",
	"s_m_y_hwaycop_01",
	"A_M_Y_ACult_01",
	--'s_m_m_movalien_01',
	's_m_m_movallien_01',
	'u_m_y_babyd',
	'CS_Orleans',
	'A_M_Y_ACult_01',
	'S_M_M_MovSpace_01',
	'U_M_Y_Zombie_01',
	's_m_y_blackops_01',
	--'a_f_y_topless_01',
	'a_c_boar',
	'a_c_cat_01',
	'a_c_chickenhawk',
	'a_c_chimp',
	'a_c_chop',
	'a_c_cormorant',
	'a_c_cow',
	'a_c_coyote',
	'a_c_crow',
	'a_c_dolphin',
	'a_c_fish',
	'a_c_hen',
	'a_c_humpback',
	'a_c_husky',
	'a_c_killerwhale',
	'a_c_mtlion',
	'a_c_pigeon',
	'a_c_poodle',
	'a_c_pug',
	'a_c_rabbit_01',
	'a_c_rat',
	'a_c_retriever',
	'a_c_rhesus',
	'a_c_rottweiler',
	'a_c_sharkhammer',
	"a_c_rabbit_01",
	'a_c_rat',
	'a_c_sharktiger',
	'a_c_shepherd',
	--'a_c_stingray',
	--'a_c_westy',
	'CS_Orleans',
}

VersusAC.WhitelistedPropsHash = {
	29402038, --prop_notepad_01

}

VersusAC.WhitelistedProps = { -- If players get banned for blacklisted prop then add the props here if you want to be able to use them. 
	"prop_ballistic_shield",
	"prop_amb_phone",
	"xm_prop_x17_tem_control_01",
	"player_zero",
	"prop_bowling_ball",
	"prop_npc_phone",
	"hei_heist_sh_bong_01",
	"prop_ecola_can",
	"prop_cs_burger_01",
	"prop_toolchest_01",
	"prop_ld_binbag_01",
	"prop_roadcone02a",
	"prop_tool_broom",
	"prop_tool_pickaxe",
	"prop_cs_hand_radio",
	"prop_npc_phone",
	"prop_drink_champ",
	"prop_npc_phone_02",
	"prop_sandwich_01",
	"prop_sponge_01",
	"p_cs_joint_02",
	"prop_choc_ego",
	"prop_plastic_cup_02",
	"prop_amb_donut",
	"prop_ld_flow_bottle",
	"prop_ld_case_01",
	"prop_amb_ciggy_01",
	"hei_prop_yah_table_03",
	"ba_prop_battle_glowstick_01",
	"ba_prop_battle_hobby_horse",
	"p_amb_brolly_01",
	"prop_single_rose",
	"prop_tool_blowtorch",
	"hei_p_m_bag_var22_arm_s",
	"hei_prop_hst_laptop",
	"prop_cs_tablet",
	"prop_mp_barrier_02b",
	"prop_amb_beer_bottle",
	"hei_prop_heist_box",
	"w_me_bat",
	"prop_ld_jerrycan_01",
	"w_ar_carbinerifle",
	"w_ar_carbineriflemk2",
	"w_ar_assaultrifle",
	"w_ar_specialcarbine",
	"w_ar_bullpuprifle",
	"w_ar_advancedrifle",
	"w_sb_microsmg",
	"w_sb_assaultsmg",
	"w_sb_smg",
	"w_sb_smgmk2",
	"w_pi_stungun",
	"w_sb_gusenberg",
	"w_sr_sniperrifle",
	"w_sg_assaultshotgun",
	"w_sg_bullpupshotgun",
	"w_sg_pumpshotgun",
	"w_ar_musket",
	"w_sg_heavyshotgun",
	"p_amb_clipboard_01",
	"p_amb_coffeecup_01",
	"prop_drink_whisky",
	"prop_ld_suitcase_01",
	"prop_security_case_01",
	"prop_police_id_board",
	"prop_el_guitar_01",
	"prop_el_guitar_03",
	"prop_novel_01",
	"v_ilev_mr_rasberryclean",
	"p_michael_backpack_s",
	"prop_tourist_map_01",
	"prop_snow_flower_02",
	"p_car_keys_01",
	"prop_cigar_02",
	"prop_cigar_01",
	"prop_acc_guitar_01",
	"prop_anim_cash_pile_01",
	"prop_pap_camera_01",
	"ba_prop_battle_champ_open",
	"prop_cs_ciggy_01",
	"prop_drink_redwine",
	"prop_champ_flute",
	"prop_beggers_sign_03",
	"prop_pencil_01",
	"glibcat_mdt_prop",
	"prop_boombox_01",
	"prop_notepad_01",
	"prop_barrier_work05",
	"prop_boxpile_07d",
	"p_ld_stinger_s",
	"hei_prop_cash_crate_half_full",
	"bkr_prop_coke_spatula_04",
	"prop_mp_barrier_02b",
	"xm_prop_x17_tem_control_01",
	"prop_phone_ing",
	"prop_v_cam_01",
	"prop_paper_bag_small",
	"prop_tool_hammer",
	"w_me_hammer",
	"prop_tool_fireaxe",
	"ng_proc_spraycan01b",
	"prop_wheelchair_01",
	"hei_prop_zip_tie_positioned",
	"prop_cs_cardbox_01",
	"hei_prop_heist_binbag",
	"hei_prop_heist_thermite",
	"prop_police_phone",
	"prop_weed_pallet",
	"prop_tv_cabinet_03",
	"prop_laptop_lester2",
	"v_med_emptybed",
	"prop_coffee_mac_02",
	"ex_prop_exec_lighter_01",
	"hei_int_heist_lng_shelf",
	"hei_int_heist_rpt_pictures3",
	"prop_kitch_juicer",
	"as_prop_as_speakerdock",
	"p_parachute1_mp_s",
	"p_cs_lighter_01",
	"prop_cs_rub_binbag_01",
	"prop_cs_credit_card",
	"prop_weed_bottle",
	"prop_barbell_01",
	"xm_prop_body_bag",
	"p_ing_microphonel_01",
	

	--Some extra props for heists and decoration
	"h4_prop_h4_diamond_01a",	
	"h4_prop_h4_art_pant_01a",
	"h4_prop_h4_necklace_01a",
	"h4_prop_h4_t_bottle_02b",
	"ch_prop_vault_painting_01g",
	"ch_prop_vault_painting_01f",
	"ch_prop_vault_painting_01h",
	"ch_prop_vault_painting_01j",
	"prop_food_burg1",
	"prop_weld_torch",
	"prop_tool_hammer",
	"prop_tool_jackham",
	"prop_tool_drill",
	"prop_paints_pallete01",
	"prop_paints_can03",
	"prop_tool_cable01",
	"prop_tool_hardhat",
	"h4_prop_h4_diamond_01a",
	"h4_prop_h4_art_pant_01a",
	"h4_prop_h4_necklace_01a",
	"h4_prop_h4_t_bottle_02b",
	"ch_prop_vault_painting_01g",
	"ch_prop_vault_painting_01f",
	"ch_prop_vault_painting_01h",
	"ch_prop_vault_painting_01j",
	"h4_prop_h4_cutter_01a",
	"hei_p_m_bag_var22_arm_s",
	"prop_cs_vial_01",
	"p_chem_vial_02b_s",
	"w_me_switchblade",
	"hei_p_m_bag_var22_arm_s",
	"h4_prop_h4_glass_disp_01a",
	"h4_prop_h4_diamond_disp_01a",
	"h4_prop_h4_glass_disp_01b",
	"prop_chem_grill_bit",
	"prop_chem_grill",
	"p_steve_scuba_hood_s",
	"p_michael_scuba_tank_s",
	"p_d_scuba_mask_s",
	"prop_cs_gascutter_1",
	"p_pallet_02a_s",
	"prop_biotech_store",
	"prop_ld_container",
	"ch_prop_vault_painting_01e",
	"ch_prop_vault_painting_01i",
	"ch_prop_vault_painting_01h",
	"ch_prop_vault_painting_01j",
	"ch_prop_vault_painting_01f",
	--"prop_money_bag_01",
	"ch_prop_tunnel_tripod_lampa",
	"prop_ing_camera_01",
	"prop_cs_wrench",
	"w_am_jerrycan",
	"p_loose_rag_01_s",
	"prop_pliers_01",
	"p_laptop_02_s",
	"h4_prop_h4_cash_stack_01a",
	"h4_prop_h4_cash_stack_02a",
	"h4_prop_h4_gold_stack_01a",
	"ch_prop_ch_cash_trolly_01b",
	"ch_prop_diamond_trolly_01c",
	"vw_prop_vw_pogo_gold_01a",
	"h4_prop_h4_t_bottle_02b",
	"hei_prop_heist_drill",
	"h4_prop_h4_painting_01e", 
	"h4_prop_h4_painting_01f",
	"prop_bomb_01",
	"tr_prop_tr_grinder_01a",
	"ch_p_m_bag_var02_arm_s",
	"tr_prop_tr_container_01a",
	"prop_ld_container",
	"tr_prop_tr_lock_01a",
	"xm_prop_lab_desk_02",
	"h4_prop_h4_gold_stack_01a",
	"h4_prop_h4_neck_disp_01a",
	"h4_prop_h4_diamond_disp_01a",
	"h4_prop_h4_art_pant_01a",
	"h4_prop_h4_door_01a",
	"h4_prop_h4_gate_02a",
	"h4_prop_h4_gate_03a",
	"h4_prop_h4_gate_05a",
	"p_s_scuba_mask_s",
	"p_s_scuba_tank_s",
	"v_ret_ml_chips2",
	"v_ret_ml_chips1",
	"v_ret_ml_chips3",
	"v_ret_ml_chips4",
	"prop_tv_flat_01",
	"ng_proc_food_aple1a",
	"ng_proc_food_ornge1a",
	"v_res_tre_banana",
	"v_res_fa_bread03",
	"v_res_tt_doughnut01",
	"ba_prop_club_water_bottle",
	"v_res_tt_pizzaplate",
	"p_ing_coffeecup_01",
	"v_res_tt_can03",
	"prop_vodka_bottle",
	"prop_tequila_bottle",
	"prop_whiskey_bottle",
	"glass_costa_del_perro",
	"glass_rockford_hill",
	"glass_vinewood_red",
	"glass_vinewood_blanc",
	"prop_wine_bot_02",
	"prop_wine_bot_01",
	"prop_wine_rose",
	"prop_wine_white",
	"prop_cigar_01",
	"ng_proc_cigarette01a",
	"ba_prop_battle_vape_01",
	"prop_bong_01",
	"prop_sh_joint_01",
	"prop_wine_bot_02",
	"prop_cs_plate_01",
	"ex_prop_exec_lighter_01",
	"prop_t_telescope_01b",
	"hei_prop_heist_card_hack_02",
	"ch_prop_cash_low_trolly_01a",
	"ch_prop_cash_low_trolly_01b",
	"ch_prop_cash_low_trolly_01c",
	"ch_prop_ch_cash_trolly_01a",
	"ch_prop_ch_cash_trolly_01b",
	"ch_prop_ch_cash_trolly_01c",
	"ch_prop_diamond_trolly_01a",
	"ch_prop_diamond_trolly_01b",
	"ch_prop_diamond_trolly_01c",
	"ch_prop_gold_trolly_01a",
	"ch_prop_gold_trolly_01b",
	"ch_prop_gold_trolly_01c",
	"prop_gold_trolly",
	"w_am_baseball",
	"prop_coke_block_half_a",
	"ch_prop_vault_dimaondbox_01a",
	"prop_gold_bar",
	"hei_prop_heist_gold_bar",
	"ch_prop_gold_bar_01a",
	"hei_prop_heist_cash_pile",
	"hei_prop_hei_cash_trolly_03",
	"hei_prop_heist_sec_door",
	"v_res_tre_storagebox",
	"v_res_tre_wardrobe",
	"v_res_tre_storageunit",
	"prop_micro_01",
	"v_res_tre_bedsidetable",
	"prop_atm_03",
	"prop_fleeca_atm",
	"prop_atm_02",
	"prop_bison_winch",
	"prop_coffee_mac_02",
	"prop_ld_int_safe_01",
	"hei_prop_carrier_panel_1",
	"ch_prop_ch_sec_cabinet_01b",
	"ch_prop_ch_moneybag_01a",
	"ch_prop_vault_drill_01a",
	"ch_prop_ch_explosive_01a",
	"ch_prop_casino_keypad_01",
	"ch_prop_diamond_trolly_01a",
	"imp_prop_impexp_coke_trolly",
	"ch_prop_ch_usb_drive01x",
	"ch_prop_laserdrill_01a",
	"ch_prop_swipe_card_01a",
	"ch_prop_swipe_card_01d",
	"prop_ld_bomb",
	"vw_prop_casino_slot_07a",
	"vw_prop_casino_slot_07a_reels",
	"vw_prop_casino_slot_07b_reels",
	"vw_prop_casino_slot_05a",
	"vw_prop_casino_slot_05a_reels",
	"vw_prop_casino_slot_05b_reels",
	"vw_prop_casino_slot_06a",
	"vw_prop_casino_slot_06a_reels",
	"vw_prop_casino_slot_06b_reels",
	"vw_prop_casino_slot_03a",
	"vw_prop_casino_slot_03a_reels",
	"vw_prop_casino_slot_03b_reels",
	"vw_prop_casino_slot_04a",
	"vw_prop_casino_slot_04a_reels",
	"vw_prop_casino_slot_04b_reels",
	"vw_prop_chip_10dollar_x1",
	"vw_prop_chip_10dollar_st",
	"vw_prop_chip_50dollar_x1",
	"vw_prop_chip_100dollar_x1",
	"vw_prop_chip_100dollar_st",
	"vw_prop_chip_500dollar_x1",
	"vw_prop_chip_500dollar_st",
	"vw_prop_chip_1kdollar_x1",
	"vw_prop_chip_1kdollar_st",
	"vw_prop_plaq_5kdollar_x1",
	"vw_prop_plaq_5kdollar_st",
	"vw_prop_plaq_10kdollar_x1",
	"vw_prop_plaq_10kdollar_st",
	"vw_prop_roulette_ball",
	"vw_prop_vw_coin_01a",
	"vw_prop_vw_chips_pile_01a",
	"vw_prop_vw_chips_pile_03a",
	"vw_prop_vw_chips_pile_02a",
	"vw_prop_casino_roulette_01",
	"vw_prop_vw_marker_02a",
	"vw_prop_vw_marker_01a",
	"prop_fruit_basket",
	"prop_spray_backpack_01",
	"prop_lawnmower_01",
	"prop_hedge_trimmer_01",
	"prop_leaf_blower_01",
	"prop_pool_cue",
	"prop_poolball_12",
	"prop_poolball_7",
	"prop_poolball_5",
	"prop_poolball_cue",
	"prop_poolball_8",
	"prop_poolball_2",
	"prop_poolball_4",
	"prop_poolball_1",
	"prop_poolball_9",
	"prop_poolball_14",
	"prop_poolball_3",
	"prop_poolball_6",
	"prop_poolball_15",
	"prop_poolball_13",
	"prop_poolball_11",
	"prop_poolball_10",
	"prop_haybale_03",
	"prop_choc_meto",
	"prop_taco_01",
	"prop_cs_hotdog_01",
	"prop_cs_spray_can",
	"p_parachute1_mp_s",
	"ng_proc_food_ornge1a",
	"v_ret_ml_chips4",
	"prop_ld_flow_bottle",
	"prop_bush_med_05",
	"prop_ecola_can",
	"ng_proc_sodacan_01a",
	"prop_cs_whiskey_bottle",
	"prop_ld_can_01",
	"ng_proc_sodacan_01b",
	"prop_fib_coffee",
	"hei_int_heist_rpt_pictures3",
	"as_prop_as_speakerdock",
	"hei_int_heist_lng_shelf",
	"v_res_fh_lampa_on",
	"prop_kitch_juicer",
	"hei_int_heist_rpt_pictures3",

}

VersusAC.BlacklistedEntities = {
	"p_crahsed_heli_s",
	"prop_beach_fire",
	"prop_rock_4_big2",
	"prop_beachflag_le",
	"prop_fnclink_05crnr1",
	"xm_prop_x17_sub",
	"xs_prop_hamburgher_wl",
	"xs_prop_plastic_bottle_wl",
	"prop_windmill_01",
	"prop_windmill_01_I1",
	"prop_windmill_01_slod",
	"prop_windmill_01_slod2",
	"p_spinning_anus_s",
	"stt_prop_ramp_adj_flip_m",
	"stt_prop_ramp_adj_flip_mb",
	"stt_prop_ramp_adj_flip_s",
	"stt_prop_ramp_adj_flip_sb",
	"stt_prop_ramp_adj_hloop",
	"stt_prop_ramp_adj_loop",
	"stt_prop_ramp_jump_l",
	"stt_prop_ramp_jump_m",
	"stt_prop_ramp_jump_s",
	"stt_prop_ramp_jump_xl",
	"stt_prop_ramp_jump_xs",
	"stt_prop_ramp_jump_xxl",
	"stt_prop_ramp_multi_loop_rb",
	"stt_prop_ramp_spiral_l",
	"stt_prop_stunt_soccer_ball",
	"stt_prop_ramp_spiral_l_l",
	"stt_prop_ramp_spiral_l_m",
	"stt_prop_ramp_spiral_l_s",
	"stt_prop_ramp_spiral_l_xxl",
	"stt_prop_ramp_spiral_m",
	"stt_prop_ramp_spiral_s",
	"stt_prop_ramp_spiral_xxl",
	"prop_container_01a",
	"stt_prop_stunt_domino",
	"stt_prop_stunt_jump15",
	"stt_prop_stunt_jump30",
	"stt_prop_stunt_jump45",
	"stt_prop_stunt_jump_l",
	"stt_prop_stunt_jump_lb",
	"stt_prop_stunt_jump_loop",
	"stt_prop_stunt_jump_m",
	"stt_prop_stunt_jump_mb",
	"stt_prop_stunt_jump_s",
	"stt_prop_stunt_jump_sb",
	"stt_prop_stunt_landing_zone_01",
	"stt_prop_stunt_ramp",
	"stt_prop_stunt_soccer_goal",
	"stt_prop_stunt_soccer_lball",
	"stt_prop_stunt_soccer_sball",
	"stt_prop_stunt_target",
	"stt_prop_stunt_small",
	"stt_prop_stunt_tVCACk_start",
	"stt_prop_stunt_tVCACk_slope45",
	"stt_prop_stunt_tVCACk_slope30",
	"stt_prop_stunt_tVCACk_slope15",
	"stt_prop_stunt_tVCACk_short",
	"stt_prop_stunt_tVCACk_dwuturn",
	"stt_prop_stunt_tVCACk_dwslope45",
	"stt_prop_stunt_tVCACk_funlng",
	"stt_prop_stunt_bowling_ball",
	"stt_prop_stunt_bowling_pin",
	"rcmpaparazzo_2",
	"dt1_lod_f4_slod3",
	"prop_towercrane_02a",
	"prop_shuttering03",
	"dt1_tc_dufo_core",
	"dt1_tc_dufo_core_lod",
	"dt1_tc_rcex2_prox",
	"dt1_tc_ufo_pivot",
	"dt1_tc_ufocore",
	"dt1_tc_ufocore_col",
	"dt1_05_build1_damage",
	"dt1_05_build1_damage_lod",
	"dt1_05_damage_slod",
	"dt1_lod_f1_slod3",
	"dt1_lod_f1b_slod3",
	"dt1_lod_f2_slod3",
	"dt1_lod_f2b_slod3",
	"dt1_lod_f3_slod3",
	"dt1_lod_f4_slod3",
	"dt1_lod_slod3",
	"dt1_tc_ce",
	"dt1_tc_ce_lod",
	"dt1_tc_ce2_lod",
	"dt1_tc_ces2",
	"dt1_tc_cpr",
	"ch1_lod_3_9_slod2",
	"ch1_lod_ch1_04b_water01_slod3",
	"ch1_lod_ch1_05_crkwater_slod3",
	"ch1_lod_ch1_05_water_slod3",
	"ch1_lod_slod3a",
	"ch1_lod_slod3b",
	"ch1_lod_slod3c",
	"ch1_lod_slod3d",
	"ch1_lod_slod3e",
	"ch2_03_barrier_04_lod",
	"ch2_03_emis_sign_slod",
	"ch2_06_docksteps02_lod",
	"ch2_06_docksteps07_lod",
	"ch2_06_reswall31_lod",
	"ch2_07c_terrain_a_lod",
	"ch2_08b_armco01_lod",
	"ch2_08b_armco01b_lod",
	"ch2_08b_armco01c_lod",
	"ch2_08b_armco026_lod",
	"ch2_08b_hs06b_lod",
	"ch2_08b_retwall_lod",
	"ch2_lod_slod3",
	"ch2_lod2_slod3",
	"ch2_lod3_slod3",
	"ch2_lod4_s3a",
	"ch2_lod4_s3b",
	"ch2_lod4_s3c",
	"ch3_03_bb_02_rock_slod",
	"ch3_03_cliffrocks03b_lod",
	"ch3_03_dusche_bb_slod",
	"ch3_03_rsl_mr_bb3_lod",
	"ch3_03_sgn_sanfwy_01_lod001",
	"ch3_04_d35_lod",
	"ch3_04_d37_lod",
	"ch3_04_d39_lod",
	"ch3_04_d39x_lod",
	"ch3_04_d43_lod",
	"ch3_04_d45_lod",
	"ch3_04_d46_lod",
	"ch3_04_emissive_slod",
	"ch3_04_fencesigns_a_lod",
	"ch3_04_fencesigns_b_lod",
	"ch3_04_isledec1_lod",
	"ch3_04_rock_lod_02",
	"ch3_04_viewplatform_slod",
	"ch3_lod_1_2_slod3",
	"ch3_lod_101114b_slod3",
	"ch3_lod_11b13_slod3",
	"ch3_lod_1414b2_slod3",
	"ch3_lod_3_4_slod3",
	"ch3_lod_6_10_slod3",
	"ch3_lod_789_12_slod3",
	"ch3_lod_water_slod3",
	"ch3_lod_weir_01_slod3",
	"cs1_04_rf_chopper_lod",
	"des_frenchdoors_end",
	"p_parachute_fallen_s",
	"p_parachute1_s",
	"p_parachute1_sp_s",
	"ap1_lod_emissive",
	"ap1_lod_slod4",
	"bh1_21_props_combo_slod",
	"ch2_06_docksteps02_lod",
	"ch2_06_docksteps07_lod",
	"ch3_04_viewplatform_slod",
	"cloudhat_puff_a",
	"cloudhat_puff_b",
	"cloudhat_puff_c",
	"cloudhat_puff_old",
	"cloudhat_stripey_a",
	"cloudhat_stripey_b",
	"cloudhat_wispy_a",
	"cloudhat_wispy_b",
	"cs1_04_apt_grnd_lod",
	"cs1_04_apt_slod",
	"cs1_04_aptdestgrnd_lod",
	"cs1_04_gassign_slod_grp1",
	"cs1_04_gasstation_grp1_slod",
	"cs1_04_gasstation_grp2_slod",
	"cs1_04_rf_chopper_lod",
	"cs1_07_props_combo17_02_lod",
	"cs1_07_props_combo24_13_lod",
	"cs1_08_pier_emissive_lod",
	"cs1_10_cable_pylon_lod_002",
	"cs1_10_cable_pylon_lod_003",
	"cs1_10_cable_pylon_lod_004",
	"cs1_10_cable_pylon_lod_005",
	"cs1_10_cable_pylon_lod_01",
	"cs1_10_mountainviewpoint_lod",
	"cs1_10_platform_b_lod",
	"cs1_rdprops_pb_vantim01_dslod",
	"cs2_09_cs_09_tarp01_sl",
	"cs2_10_sea_shipwreck_lod",
	"cs2_29_props_combo01_slod",
	"cs3_01_props_combo0224_dslod",
	"cs3_06_sea_cargoplane_lod",
	"cs3_06_sea_cargoplane2_lod",
	"cs3_06_sea_shipwreck_lod",
	"cs4_04_props_lod",
	"db_apart_01_",
	"db_apart_01d_",
	"db_apart_02_",
	"db_apart_02d_",
	"db_apart_03_",
	"db_apart_03d_",
	"db_apart_05_",
	"db_apart_05d_",
	"db_apart_06",
	"db_apart_06d_",
	"db_apart_07_",
	"db_apart_07d_",
	"db_apart_08_",
	"db_apart_08d_",
	"db_apart_09_",
	"db_apart_09d_",
	"db_apart_10_",
	"db_apart_10d_",
	"des_apartmentblock_skin",
	"des_aptblock_root002",
	"des_hospitaldoors_end",
	"des_hospitaldoors_skin_root1",
	"des_hospitaldoors_skin_root2",
	"des_plog_decal_root",
	"des_plog_door_end",
	"des_plog_door_start",
	"des_shipsink_01",
	"des_shipsink_02",
	"des_protree_root",
	"des_shipsink_03",
	"des_shipsink_04",
	"des_shipsink_05",
	"des_tankerexplosion_01",
	"des_tankerexplosion_02",
	"des_trailerparka_01",
	"des_trailerparka_02",
	"des_trailerparkb_01",
	"des_trailerparkb_02",
	"des_trailerparkc_01",
	"des_trailerparkc_02",
	"des_trailerparkd_01",
	"des_trailerparkd_02",
	"des_trailerparke_01",
	"dt1_03_mp_door",
	"lf_house_09_",
	"csx_seabed_rock3_",
	"po1_lod_slod4",
	"prop_weed_pallet", "hei_prop_carrier_radar_1_l1", "v_res_mexball", "prop_rock_1_a", "prop_rock_1_b", "prop_rock_1_c",
	"prop_rock_1_d", "prop_player_gasmask", "prop_rock_1_e", "prop_rock_1_f", "prop_rock_1_g", "prop_rock_1_h", "prop_test_boulder_01", 
	"prop_test_boulder_02", "prop_test_boulder_03", "prop_test_boulder_04", "apa_mp_apa_crashed_usaf_01a", "ex_prop_exec_crashdp", 
	"apa_mp_apa_yacht_o1_rail_a", "apa_mp_apa_yacht_o1_rail_b", "apa_mp_h_yacht_armchair_01", "apa_mp_h_yacht_armchair_03", 
	"apa_mp_h_yacht_armchair_04", "apa_mp_h_yacht_barstool_01", "apa_mp_h_yacht_bed_01", "apa_mp_h_yacht_bed_02", 
	"apa_mp_h_yacht_coffee_table_01", "apa_mp_h_yacht_coffee_table_02", "apa_mp_h_yacht_floor_lamp_01", "apa_mp_h_yacht_side_table_01", 
	"apa_mp_h_yacht_side_table_02", "apa_mp_h_yacht_sofa_01", "apa_mp_h_yacht_sofa_02", "apa_mp_h_yacht_stool_01", "apa_mp_h_yacht_strip_chair_01", 
	"apa_mp_h_yacht_table_lamp_01", "apa_mp_h_yacht_table_lamp_02", "apa_mp_h_yacht_table_lamp_03", "prop_flag_columbia", "apa_mp_apa_yacht_o2_rail_a", 
	"apa_mp_apa_yacht_o2_rail_b", "apa_mp_apa_yacht_o3_rail_a", "apa_mp_apa_yacht_o3_rail_b", "apa_mp_apa_yacht_option1", "proc_searock_01", "apa_mp_h_yacht_", 
	"apa_mp_apa_yacht_option1_cola", "apa_mp_apa_yacht_option2", "apa_mp_apa_yacht_option2_cola", "apa_mp_apa_yacht_option2_colb", "apa_mp_apa_yacht_option3", 
	"apa_mp_apa_yacht_option3_cola", "apa_mp_apa_yacht_option3_colb", "apa_mp_apa_yacht_option3_colc", "apa_mp_apa_yacht_option3_cold", 
	"apa_mp_apa_yacht_option3_cole", "apa_mp_apa_yacht_jacuzzi_cam", "apa_mp_apa_yacht_jacuzzi_ripple003", "apa_mp_apa_yacht_jacuzzi_ripple1", 
	"apa_mp_apa_yacht_jacuzzi_ripple2", "apa_mp_apa_yacht_radar_01a", "apa_mp_apa_yacht_win", "prop_crashed_heli", "apa_mp_apa_yacht_door", 
	"prop_shamal_crash", "xm_prop_x17_shamal_crash", "apa_mp_apa_yacht_door2", "apa_mp_apa_yacht", "prop_flagpole_2b", "prop_flagpole_2c", 
	"prop_flag_canada", "apa_prop_yacht_float_1a", "apa_prop_yacht_float_1b", "apa_prop_yacht_glass_01", "apa_prop_yacht_glass_02", 
	"apa_prop_yacht_glass_03", "apa_prop_yacht_glass_04", "apa_prop_yacht_glass_05", "apa_prop_yacht_glass_06", "apa_prop_yacht_glass_07", "apa_prop_yacht_glass_08", 
	"apa_prop_yacht_glass_09", "apa_prop_yacht_glass_10", "prop_flag_canada_s", "prop_flag_eu", "prop_flag_eu_s", "prop_target_blue_arrow", "prop_target_orange_arrow", 
	"prop_target_purp_arrow", "prop_target_red_arrow", "apa_prop_flag_argentina", "apa_prop_flag_australia", "apa_prop_flag_austria", "apa_prop_flag_belgium", "apa_prop_flag_brazil", 
	"apa_prop_flag_canadat_yt", "apa_prop_flag_china", "apa_prop_flag_columbia", "apa_prop_flag_croatia", "apa_prop_flag_czechrep", "apa_prop_flag_denmark", 
	"apa_prop_flag_england", "apa_prop_flag_eu_yt", "apa_prop_flag_finland", "apa_prop_flag_france", "apa_prop_flag_german_yt", "apa_prop_flag_hungary", 
	"apa_prop_flag_ireland", "apa_prop_flag_israel", "apa_prop_flag_italy", "apa_prop_flag_jamaica", "apa_prop_flag_japan_yt", "apa_prop_flag_canada_yt", 
	"apa_prop_flag_lstein", "apa_prop_flag_malta", "apa_prop_flag_mexico_yt", "apa_prop_flag_netherlands", "apa_prop_flag_newzealand", "apa_prop_flag_nigeria", 
	"apa_prop_flag_norway", "apa_prop_flag_palestine", "apa_prop_flag_poland", "apa_prop_flag_portugal", "apa_prop_flag_puertorico", "apa_prop_flag_russia_yt", 
	"apa_prop_flag_scotland_yt", "apa_prop_flag_script", "apa_prop_flag_slovakia", "apa_prop_flag_slovenia", "apa_prop_flag_southafrica", "apa_prop_flag_southkorea", 
	"apa_prop_flag_spain", "apa_prop_flag_sweden", "apa_prop_flag_switzerland", "apa_prop_flag_turkey", "apa_prop_flag_uk_yt", "apa_prop_flag_us_yt", 
	"apa_prop_flag_wales", "prop_flag_uk", "prop_flag_uk_s", "prop_flag_us", "prop_flag_usboat", "prop_flag_us_r", "prop_flag_us_s", "prop_flag_france", 
	"prop_flag_france_s", "prop_flag_german", "prop_flag_german_s", "prop_flag_ireland", "prop_flag_ireland_s", "prop_flag_japan", "prop_flag_japan_s", 
	"prop_flag_ls", "prop_flag_lsfd", "prop_flag_lsfd_s", "prop_flag_lsservices", "prop_flag_lsservices_s", "prop_flag_ls_s", "prop_flag_mexico", 
	"prop_flag_mexico_s", "prop_flag_russia", "prop_flag_russia_s", "prop_flag_s", "prop_flag_sa", "prop_flag_sapd", "prop_flag_sapd_s", "prop_flag_sa_s", 
	"prop_flag_scotland", "prop_flag_scotland_s", "prop_flag_sheriff", "prop_flag_sheriff_s", "prop_flag_uk", "prop_flag_uk_s", "prop_flag_us", 
	"prop_flag_usboat", "prop_flag_us_r", "prop_flag_us_s", "prop_flamingo", "prop_swiss_ball_01", "prop_air_bigradar_l1", "prop_air_bigradar_l2", 
	"prop_air_bigradar_slod", "p_fib_rubble_s", 
	--"prop_money_bag_01", 
	"p_cs_mp_jet_01_s", "prop_poly_bag_money", "prop_air_radar_01", "hei_prop_carrier_radar_1", 
	"prop_air_bigradar", "prop_carrier_radar_1_l1", "prop_asteroid_01", "prop_xmas_ext", "p_oil_pjack_01_amo", "p_oil_pjack_01_s", "p_oil_pjack_02_amo", 
	"p_oil_pjack_03_amo", "p_oil_pjack_02_s", "p_oil_pjack_03_s", "prop_aircon_l_03", "prop_med_jet_01", "p_med_jet_01_s", "hei_prop_carrier_jet", "bkr_prop_biker_bblock_huge_01", 
	"bkr_prop_biker_bblock_huge_02", "bkr_prop_biker_bblock_huge_04", "bkr_prop_biker_bblock_huge_05", "hei_prop_heist_emp", "prop_weed_01", "prop_air_bigradar", "prop_juicestand", 
	"prop_lev_des_barge_02", "hei_prop_carrier_defense_01", "prop_aircon_m_04", "prop_mp_ramp_03", "stt_prop_stunt_track_dwuturn", "ch3_12_animplane1_lod", "ch3_12_animplane2_lod", 
	"hei_prop_hei_pic_pb_plane", "light_plane_rig", "prop_cs_plane_int_01", "prop_dummy_plane", "prop_mk_plane", "v_44_planeticket", "prop_planer_01", "ch3_03_cliffrocks03b_lod", 
	"ch3_04_rock_lod_02", "csx_coastsmalrock_01_", "csx_coastsmalrock_02_", "csx_coastsmalrock_03_", "csx_coastsmalrock_04_", "mp_player_introck", "Heist_Yacht", "csx_coastsmalrock_05_", 
	"mp_player_int_rock", "mp_player_introck", "prop_flagpole_1a", "prop_flagpole_2a", "prop_flagpole_3a", "prop_a4_pile_01", "cs2_10_sea_rocks_lod", "cs2_11_sea_marina_xr_rocks_03_lod", 
	"prop_gold_cont_01", "prop_hydro_platform", "ch3_04_viewplatform_slod", "ch2_03c_rnchstones_lod", "proc_mntn_stone01", "prop_beachflag_le", "proc_mntn_stone02", 
	"cs2_10_sea_shipwreck_lod", "des_shipsink_02", "prop_dock_shippad", "des_shipsink_03", "des_shipsink_04", "prop_mk_flag", "prop_mk_flag_2", "proc_mntn_stone03", 
	"FreeModeMale01", "rsn_os_specialfloatymetal_n", "rsn_os_specialfloatymetal", "cs1_09_sea_ufo", "rsn_os_specialfloaty2_light2", "rsn_os_specialfloaty2_light", 
	"rsn_os_specialfloaty2", "rsn_os_specialfloatymetal_n", "rsn_os_specialfloatymetal", "P_Spinning_Anus_S_Main", "P_Spinning_Anus_S_Root", 
	"cs3_08b_rsn_db_aliencover_0001cs3_08b_rsn_db_aliencover_0001_a", "sc1_04_rnmo_paintoverlaysc1_04_rnmo_paintoverlay_a", "rnbj_wallsigns_0001", "proc_sml_stones01", 
	"proc_sml_stones02", "maverick", "Miljet", "proc_sml_stones03", "proc_stones_01", "proc_stones_02", "proc_stones_03", "proc_stones_04", "proc_stones_05", 
	"proc_stones_06", "prop_coral_stone_03", "prop_coral_stone_04", "prop_gravestones_01a", "prop_gravestones_02a", "prop_gravestones_03a", "prop_gravestones_04a", 
	"prop_gravestones_05a", "prop_gravestones_06a", "prop_gravestones_07a", "prop_gravestones_08a", "prop_gravestones_09a", "prop_gravestones_10a", "prop_prlg_gravestone_05a_l1", 
	"prop_prlg_gravestone_06a", "test_prop_gravestones_04a", "test_prop_gravestones_05a", "test_prop_gravestones_07a", "test_prop_gravestones_08a", "test_prop_gravestones_09a", 
	"prop_prlg_gravestone_01a", "prop_prlg_gravestone_02a", "prop_prlg_gravestone_03a", "prop_prlg_gravestone_04a", "prop_stoneshroom1", "prop_stoneshroom2", "v_res_fa_stones01", 
	"test_prop_gravestones_01a", "test_prop_gravestones_02a", "prop_prlg_gravestone_05a", "FreemodeFemale01", "p_cablecar_s", "stt_prop_stunt_tube_l", "stt_prop_stunt_track_dwuturn", 
	"p_spinning_anus_s", "prop_windmill_01", "hei_prop_heist_tug", "prop_air_bigradar", "p_oil_slick_01", "prop_dummy_01", "hei_prop_heist_emp", "p_tram_cash_s", "hw1_blimp_ce2", 
	"prop_fire_exting_1a", "prop_fire_exting_1b", "prop_fire_exting_2a", "prop_fire_exting_3a", "hw1_blimp_ce2_lod", "hw1_blimp_ce_lod", "hw1_blimp_cpr003", "hw1_blimp_cpr_null", 
	"hw1_blimp_cpr_null2", "prop_lev_des_barage_02", "hei_prop_carrier_defense_01", "prop_juicestand", --"S_M_M_MovAlien_01", "s_m_m_movalien_01", "s_m_m_movallien_01", 
	"u_m_y_babyd", 
	"CS_Orleans", --"a_f_y_topless_01", 
	"v_ilev_found_cranebucket", "p_cs_sub_hook_01_s", "a_c_dolphin", "hei_prop_heist_hook_01", "prop_rope_hook_01", "prop_sub_crane_hook", "prop_vehicle_hook", 
	"prop_v_hook_s", "prop_dock_crane_02_hook", "prop_winch_hook_long", "a_c_sharkhammer",
	--"a_c_stingray", 
	"CS_Orleans", "prop_windmill_01", "prop_Ld_ferris_wheel", "p_tram_crash_s", "p_oil_slick_01", "p_ld_soc_ball_01", "p_cablecar_s", "prop_beach_fire", 
	"prop_lev_des_barge_02", "prop_lev_des_barge_01", "prop_sculpt_fix", "prop_flagpole_2b", "prop_flagpole_2c", "prop_winch_hook_short", "prop_flag_canada", 
	"prop_flag_canada_s", "prop_flag_eu", "prop_flag_eu_s", "prop_flag_france", "prop_flag_france_s", "prop_flag_german", "prop_ld_hook", "stt_prop_stunt_track_turnice", 
	"prop_flag_ireland", "prop_flag_ireland_s", "prop_flag_japan", "prop_flag_japan_s", "prop_flag_ls", "prop_flag_lsfd", "prop_flag_lsfd_s", "prop_cable_hook_01", 
	"prop_flag_lsservices", "prop_flag_lsservices_s", "prop_flag_ls_s", "prop_flag_mexico", "prop_flag_mexico_s", "csx_coastboulder_00", "des_tankercrash_01", 
	"des_tankerexplosion_01", "des_tankerexplosion_02", "des_trailerparka_02", "des_trailerparkb_02", "des_trailerparkc_02", "des_trailerparkd_02", "des_traincrash_root2", 
	"des_traincrash_root3", "des_traincrash_root4", "des_traincrash_root5", "des_finale_vault_end", "des_finale_vault_root001", "des_finale_vault_root002", "des_finale_vault_root003", 
	"des_finale_vault_root004", "des_finale_vault_start", "des_vaultdoor001_root001", "des_vaultdoor001_root002", "des_vaultdoor001_root003", "des_vaultdoor001_root004", 
	"des_vaultdoor001_root005", "des_vaultdoor001_root006", "des_vaultdoor001_skin001", "des_vaultdoor001_start", "des_traincrash_root6", "prop_ld_vault_door", "prop_vault_door_scene", 
	"prop_vault_door_scene", "prop_vault_shutter", "p_fin_vaultdoor_s", "prop_gold_vault_fence_l", "prop_gold_vault_fence_r", "prop_gold_vault_gate_01", "des_traincrash_root7", 
	"prop_flag_russia", "prop_flag_russia_s", "prop_flag_s", "ch2_03c_props_rrlwindmill_lod", "prop_flag_sa", "prop_flag_sapd", "prop_flag_sapd_s", "prop_flag_sa_s", 
	"prop_flag_scotland", "prop_flag_scotland_s", "prop_flag_sheriff", "prop_flag_sheriff_s", "prop_flag_uk", "prop_yacht_lounger", "prop_yacht_seat_01", "prop_yacht_seat_02", 
	"prop_yacht_seat_03", "marina_xr_rocks_02", "marina_xr_rocks_03", "prop_test_rocks01", "prop_test_rocks02", "prop_test_rocks03", "prop_test_rocks04", "marina_xr_rocks_04", 
	"marina_xr_rocks_05", "marina_xr_rocks_06", "prop_yacht_table_01", "csx_searocks_02", "csx_searocks_03", "csx_searocks_04", "csx_searocks_05", "csx_searocks_06", 
	"p_yacht_chair_01_s", "p_yacht_sofa_01_s", "prop_yacht_table_02", "csx_coastboulder_00", "csx_coastboulder_01", "csx_coastboulder_02", "csx_coastboulder_03", 
	"csx_coastboulder_04", "csx_coastboulder_05", "csx_coastboulder_06", "csx_coastboulder_07", "csx_coastrok1", "csx_coastrok2", "csx_coastrok3", "csx_coastrok4", 
	"csx_coastsmalrock_01", "csx_coastsmalrock_02", "csx_coastsmalrock_03", "csx_coastsmalrock_04", "csx_coastsmalrock_05", "prop_yacht_table_03", "prop_flag_uk_s", 
	"prop_flag_us", "prop_flag_usboat", "prop_flag_us_r", "prop_flag_us_s", "p_gasmask_s", "prop_flamingo", "prop_windmill_01", "prop_ld_toilet_01", "stt_prop_stunt_jump30", 
	"stt_prop_stunt_jump15", "stt_prop_stunt_jump45", "stt_prop_stunt_track_bumps", "stt_prop_stunt_track_cutout", "stt_prop_stunt_track_dwlink", "stt_prop_stunt_track_dwlink_02", 
	"stt_prop_stunt_track_dwsh15", "stt_prop_stunt_track_hill2", "prop_truktrailer_01a", "prop_tyre_wall_03c", "prop_tyre_wall_05", "prop_tyre_wall_03", "prop_rub_trukwreck_1", 
	"prop_rub_wreckage_3", "prop_rub_buswreck_06", "prop_roadheader_01", "prop_rub_t34", "prop_ng_sculpt_fix", "p_ferris_wheel_amo_l", "p_ferris_wheel_amo_l2", "p_ferris_wheel_amo_p", 
	"imp_prop_ship_01a", "gr_prop_damship_01a", "tt_prop_stunt_track_dwslope3", "	stt_prop_stunt_track_dwslope15", "stt_prop_stunt_track_dwslope45", "stt_prop_stunt_track_slope30", 
	"stt_prop_stunt_track_slope45", "stt_prop_stunt_track_dwlink", "stt_prop_stunt_track_dwslope15", "stt_prop_stunt_track_start_02", "stt_prop_stunt_track_straight", 
	"stt_prop_stunt_track_dwslope45", "stt_prop_stunt_track_dwslope30", "prop_gas_tank_01a", "prop_gas_tank_02b", "prop_gas_tank_04a", "prop_storagetank_02b", "prop_storagetank_01_cr", 
	"des_scaffolding_tank_root", "prop_gascyl_01a", "prop_gascyl_04a", "prop_gascyl_03b", "prop_cs_plane_int_01", "prop_dummy_plane", "prop_mk_plane", "prop_gas_pump_1c", "prop_gas_pump_1d", 
	"prop_gas_pump_1a", "prop_gas_pump_1b", "prop_gas_pump_old3", "prop_gas_pump_old2", "prop_gas_airunit01", "prop_ld_bomb_anim", "prop_ld_farm_couch01", "p_crahsed_heli_s", "prop_rock_4_big2",
	"stt_prop_stunt_track_uturn", "stt_prop_stunt_track_hill", "prop_vintage_pump", "sr_prop_spec_tube_xxs_01a", "prop_jetski_ramp_01", "prop_mp_ramp_01", "prop_skate_flatramp", "prop_doghouse_01"



}