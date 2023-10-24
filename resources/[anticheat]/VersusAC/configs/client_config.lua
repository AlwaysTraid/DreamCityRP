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

VersusAC.EnableAC = true -- Enables the Versus Anticheat and its checks.
VersusAC.MainChecks = true -- Includes the majority of the checks. 
VersusAC.Debug = false --enable to enable debugging. Only enable when we have told you so.

VersusAC.AntiESX = false -- Ban standard ESX trigger
VersusAC.UseESX = false -- Enable this if you use ESX!
VersusAC.ESXTrigger = "esx:getSharedObject" -- Put your esx trigger here.
VersusAC.ESXOLD = false --Enable this if you use ESX v1.1 V1.2 etc, but not the newest or legacy. 
VersusAC.ESXNEW = false -- Enable this if you use ESX v1.7 V1.8 V1.9 etc, so the legacy version.
VersusAC.ESXName = "es_extended" -- Rename this if you renamed es_extended. 


VersusAC.UseQBCore = true -- Enable this option if you use QBCore.
VersusAC.QBTrigger = "qb-core" -- Put your resource name for the trigger here.

VersusAC.playerLoadedEvent = "QBCore:Client:OnPlayerLoaded" -- Use playerSpawned for esx type servers. Use QBCore:Client:OnPlayerLoaded for QBCore typed servers. 

VersusAC.CheckPlayersMoney = false -- Checks players money which is given or received

VersusAC.BlacklistedNatives = false -- BETA. Enable to test it for us.
VersusAC.eBeta = false -- dont enable unless told
VersusAC.iBeta = false -- dont enable unless told

VersusAC.ScreenshotBasicEvent = "screenshot-basic" --rename this if you renamed your screenshot-basic script.
VersusAC.ScreenshotBasicEvent2 = "screenshot-basic" --rename this if you renamed your screenshot-basic script.

--[[
  _____                 _     ____            _            _   _             
 | ____|_   _____ _ __ | |_  |  _ \ _ __ ___ | |_ ___  ___| |_(_) ___  _ __  
 |  _| \ \ / / _ \ '_ \| __| | |_) | '__/ _ \| __/ _ \/ __| __| |/ _ \| '_ \ 
 | |___ \ V /  __/ | | | |_  |  __/| | | (_) | ||  __/ (__| |_| | (_) | | | |
 |_____| \_/ \___|_| |_|\__| |_|   |_|  \___/ \__\___|\___|\__|_|\___/|_| |_|
                                                                             
]]

VersusAC.ProtectClientEvents = false -- Enable this to automatically protect all your client events.
VersusAC.WhitelistedResourcesClientEvents = { --whitelist here your resources you don't want to be checked. This must include all paid escrowed resources. 
	"YOURESCROWEDRESOURCESHERE",
}

--[[
   ____           _                     _         ____ _               _        
  / ___| ___   __| |_ __ ___   ___   __| | ___   / ___| |__   ___  ___| | _____ 
 | |  _ / _ \ / _` | '_ ` _ \ / _ \ / _` |/ _ \ | |   | '_ \ / _ \/ __| |/ / __|
 | |_| | (_) | (_| | | | | | | (_) | (_| |  __/ | |___| | | |  __/ (__|   <\__ \
  \____|\___/ \__,_|_| |_| |_|\___/ \__,_|\___|  \____|_| |_|\___|\___|_|\_\___/
                                                                                		
]]

VersusAC.GodModeProtection = false -- Enables all the GodMode Checks

VersusAC.GodModeCheck3 = false -- Enabled godmode check 3. (Checking if your health is more than 200)
VersusAC.GodModeCheck4 = false -- Enabled godmode check 4. (Checking your proofs. GetEntityProofs)
VersusAC.GodModeCheck5 = false -- Enables godmode check 5. (GetEntityCanBeDamaged)
VersusAC.GodModeCheck6 = false -- Enables godmode check 6. (GetEntityCollisionDisabled)

VersusAC.InvincibleProtection = true -- Disable this if you use greenzones or any other damage protecting script!
VersusAC.AntiInvisible = false -- Detects if a player is invisible. Set this to false if you use esx_vehicleshop or any other script that sets you invisible!

--[[	
  _____               ____                   ____ _               _        
 |  ___| __ ___  ___ / ___|__ _ _ __ ___    / ___| |__   ___  ___| | _____ 
 | |_ | '__/ _ \/ _ \ |   / _` | '_ ` _ \  | |   | '_ \ / _ \/ __| |/ / __|
 |  _|| | |  __/  __/ |__| (_| | | | | | | | |___| | | |  __/ (__|   <\__ \
 |_|  |_|  \___|\___|\____\__,_|_| |_| |_|  \____|_| |_|\___|\___|_|\_\___/
                                                                                                            
]]

VersusAC.AntiFreeCam = true -- Detects if a player is using freecam
VersusAC.AntiFreeCamHard = false -- Detects if a player is using freecam. This is a strict version of the normal check!!

VersusAC.AntiFreeCamAdvanced = true
VersusAC.AntiFreeCamAdvanced2 = true
VersusAC.AntiFreeCamAdvanced3 = true
VersusAC.AntiFreeCamAdvanced4 = true

--[[
  _   _        ____ _ _          ____ _               _        
 | \ | | ___  / ___| (_)_ __    / ___| |__   ___  ___| | _____ 
 |  \| |/ _ \| |   | | | '_ \  | |   | '_ \ / _ \/ __| |/ / __|
 | |\  | (_) | |___| | | |_) | | |___| | | |  __/ (__|   <\__ \
 |_| \_|\___/ \____|_|_| .__/   \____|_| |_|\___|\___|_|\_\___/
                       |_|                                     
]]


VersusAC.AntiNoclip = true -- Prevents players from noclipping. Test the other checks aswell.
VersusAC.AntiNoclipHard = false -- Prevents players from noclipping. This is a strict version of the normal check!!
VersusAC.AntiNoclipHard2 = false --Alpha testing. Only enable if you want to test its feature. 
VersusAC.AntiNoclipHard3 = true --Alpha testing. Only enable if you want to test its feature.

VersusAC.AntiNoclipAdvanced = true
VersusAC.AntiNoclipAdvanced2 = true
VersusAC.AntiNoclipAdvanced3 = true
VersusAC.AntiNoclipAdvanced4 = true
VersusAC.AntiNoclipAdvanced5 = true

VersusAC.AntiNoclipAdvanced6 = true
VersusAC.AntiNoclipAdvanced7 = true
VersusAC.AntiNoclipAdvanced8 = true --FAST one

VersusAC.AntiWaypointTeleport = false -- BETA FEATURE. Checks if the player has moved alot and to the waypoint. (ANTI TELEPORT TO WAYPOINT)
VersusAC.AntiTeleport = false -- Checks when a player teleported. Set it to only logs to prevent false bans caused by staff teleports. (in server config at teleportcoords BanDetection)
VersusAC.AntiVehicleTeleport = false --BETA. Enable if you want to test it for us. 

--[[
  ____  _                          ____ _               _        
 |  _ \| | __ _ _   _  ___ _ __   / ___| |__   ___  ___| | _____ 
 | |_) | |/ _` | | | |/ _ \ '__| | |   | '_ \ / _ \/ __| |/ / __|
 |  __/| | (_| | |_| |  __/ |    | |___| | | |  __/ (__|   <\__ \
 |_|   |_|\__,_|\__, |\___|_|     \____|_| |_|\___|\___|_|\_\___/
                |___/                                            
]]

VersusAC.GeneralPlayerProtection = true -- Enables the player checks ( keep this true! )

VersusAC.StopAllSounds = false --Stops many ingame sounds to prevent hackers using earrape. BE AWARE, Hefty performance impact. 

VersusAC.AntiSpeedHacks = false -- Detects if a player is speedhacking or fastrunning.
VersusAC.MaxSpeedHacks = 14 -- 14 is the minimum speed for the AntiSpeedHacks check to trigger

VersusAC.AntiFastRun = false -- Detects if a player is fastrunning. ( Lower speed than SpeedHacks )
VersusAC.MaxFastRun = 13 -- 13 is the minimum speed for the AntiFastRun check to trigger

VersusAC.PlayerSpeedProtection = false --When enabled it sets the players run speed modifier to 1.0 and swim speed modifier to 1.0

VersusAC.AntiRadar = false -- Detects if a player uses radar (minimap) ( Keep it false if you use radar ( minimap ) toggle etc )
VersusAC.AntiPedRagdoll = false -- Detects if a player cannot ragdoll. 
VersusAC.AntiPlayerBlips = true -- Detects if a player has player blips for all players online.
VersusAC.BlipsWhitelistedJobs = { -- Only ESX. 
	"police",
	"offpolice"
}

VersusAC.AntiNightVision = false -- Detects if a player has nightvision.
VersusAC.AntiThermalVision = false -- Detects if a player has thermalvision.

VersusAC.AntiSuperJump = false -- Detects if a player is super jumping.
VersusAC.AntiSpectate = true -- Detects if a player is spectating.

VersusAC.AntiGiveArmour = false -- Detects if a player gives armour. 
VersusAC.ArmourValue = 100 -- Set this value between 0-100. Max Armour

VersusAC.AntiTinyPed = false 
VersusAC.AntiInfiniteStamina = false

VersusAC.DisablePickups = false -- Disables weapon pickups from the ground. 

VersusAC.AntiDestroyEngine = false -- anti vehicle engine destroy / complete vehicle destroy by cheaters. 

--[[
  ____          _    ____ _               _        
 |  _ \ ___  __| |  / ___| |__   ___  ___| | _____ 
 | |_) / _ \/ _` | | |   | '_ \ / _ \/ __| |/ / __|
 |  __/  __/ (_| | | |___| | | |  __/ (__|   <\__ \
 |_|   \___|\__,_|  \____|_| |_|\___|\___|_|\_\___/
                                                   
]]

VersusAC.AntiPedChange = false -- Prevents model / ped change. Whitelist the ped models you use to prevent false bans.
VersusAC.WhitelistedPeds = {
	"Player_Zero",
    "Player_One",
    "Player_Two",
    "MP_F_Freemode_01",
    "MP_M_Freemode_01",
    "A_M_Y_Skater_01",
	"A_M_Y_Hipster_02",
    "A_M_Y_Skater_02"
}

--[[
  __  __           _ __  __                    ___        _           _   _             
 |  \/  | ___   __| |  \/  | ___ _ __  _   _  |_ _|_ __  (_) ___  ___| |_(_) ___  _ __  
 | |\/| |/ _ \ / _` | |\/| |/ _ \ '_ \| | | |  | || '_ \ | |/ _ \/ __| __| |/ _ \| '_ \ 
 | |  | | (_) | (_| | |  | |  __/ | | | |_| |  | || | | || |  __/ (__| |_| | (_) | | | |
 |_|  |_|\___/ \__,_|_|  |_|\___|_| |_|\__,_| |___|_| |_|/ |\___|\___|\__|_|\___/|_| |_|
                                                       |__/                             
]]

VersusAC.AntiModMenuInjection = true -- CURRENTLY BYPASSED BY EULEN. WAIT FOR UPDATE. Detects mod menus which are injected with Eulen or redEngine. Enable this feature to stop almost all cheaters. DON'T ADD NEW RESOURCES AND START THEM OR RESTART SCRIPTS. 

--[[	
  _____            _           _                ____ _               _        
 | ____|_  ___ __ | | ___  ___(_) ___  _ __    / ___| |__   ___  ___| | _____ 
 |  _| \ \/ / '_ \| |/ _ \/ __| |/ _ \| '_ \  | |   | '_ \ / _ \/ __| |/ / __|
 | |___ >  <| |_) | | (_) \__ \ | (_) | | | | | |___| | | |  __/ (__|   <\__ \
 |_____/_/\_\ .__/|_|\___/|___/_|\___/|_| |_|  \____|_| |_|\___|\___|_|\_\___/
            |_|                                                               
]]

VersusAC.AntiExplosionsDamage = false -- Sets the damage from explosions to 0 for all players.
VersusAC.AntiExplosiveBullets = true -- Detects if a player shoots explosive bullets

--[[	
 __        __                              ____ _               _        
 \ \      / /__  __ _ _ __   ___  _ __    / ___| |__   ___  ___| | _____ 
  \ \ /\ / / _ \/ _` | '_ \ / _ \| '_ \  | |   | '_ \ / _ \/ __| |/ / __|
   \ V  V /  __/ (_| | |_) | (_) | | | | | |___| | | |  __/ (__|   <\__ \
    \_/\_/ \___|\__,_| .__/ \___/|_| |_|  \____|_| |_|\___|\___|_|\_\___/
                     |_|                                                 
]]

VersusAC.WhitelistWeapons = false -- Detects if a player is not whitelisted to use the weapons. If they are whitelisted nothing happens. If they are not they get banned. Check VersusAC.WeaponWhitelist in server_config for whitelist.
VersusAC.AntiInfiniteAmmo = false -- Detects if the player is using infinite ammo.
VersusAC.AntiNoRecoil = false -- Detects if the player has no recoil when shooting. 

VersusAC.ClipModifier = false -- Detects if a player has to much ammo or more ammo than possible.
VersusAC.MaxAmmo = 4000 -- Set this value between 100-9999 for example. This is the max ammo players can have in the gun.
VersusAC.MaxAmmoInCLip = 80 -- Set this value between 60-200 for example. This is the max ammo players can have in the clip. Max ammosize in a clip depends on the weapon. So be careful

VersusAC.AntiAimbot = true -- BETA. ENABLE IF YOU WANT TO TEST IT FOR US. Detects if a player is using aimbot or ragebot. Disable if it gives true bans 
VersusAC.AntiAimbot2 = true -- BETA. CHECKS IF THE USER IS AIMED AT WHEN HE IS SHOT. ONLY ENABLE IF YOU WANT TO TEST IT
VersusAC.AntiAimbot3 = true -- BETA. ONLY ENABLE IF YOU WANT TO TEST IT
VersusAC.AntiAimbot4 = true -- BETA. ONLY ENABLE IF YOU WANT TO TEST IT
VersusAC.AntiRageBot = true --BETA CHECKS FOR RAGEBOT (AIMBOT)
VersusAC.AntiAimAssist = true -- Sets AimAssist to false. ( This is a GTA feature )

--[[
  ____  _            _    _ _     _           _  __        __                               
 | __ )| | __ _  ___| | _| (_)___| |_ ___  __| | \ \      / /__  __ _ _ __   ___  _ __  ___ 
 |  _ \| |/ _` |/ __| |/ / | / __| __/ _ \/ _` |  \ \ /\ / / _ \/ _` | '_ \ / _ \| '_ \/ __|
 | |_) | | (_| | (__|   <| | \__ \ ||  __/ (_| |   \ V  V /  __/ (_| | |_) | (_) | | | \__ \
 |____/|_|\__,_|\___|_|\_\_|_|___/\__\___|\__,_|    \_/\_/ \___|\__,_| .__/ \___/|_| |_|___/
                                                                     |_|                    
]]

VersusAC.AntiBlacklistedWeapons = false -- Detects if a player has blacklisted weapons. Check VersusAC.BlacklistedWeapons for the weapon list!
VersusAC.AntiBlacklistedWeapons2 = false --Second check to detect if a player has a blacklisted weapon.
VersusAC.DeleteBlacklistedWeapon = false --Deletes the weapon when it is detected in the blacklist.

VersusAC.BlacklistedWeapons = {
	"WEAPON_SAWNOFFSHOTGUN",
	"WEAPON_BULLPUPSHOTGUN",
	"WEAPON_GRENADELAUNCHER",
	"WEAPON_GRENADELAUNCHER_SMOKE",
	"WEAPON_RPG",
	"WEAPON_STINGER",
	"WEAPON_MINIGUN",
	"WEAPON_GRENADE",
	"WEAPON_BALL",
	"WEAPON_BOTTLE",
	"WEAPON_HEAVYSHOTGUN",
	"WEAPON_GARBAGEBAG",
	"WEAPON_RAILGUN",
	"WEAPON_RAILPISTOL",
	"WEAPON_RAILGUN",
	"WEAPON_RAYPISTOL", 
	"WEAPON_RAYCARBINE", 
	"WEAPON_RAYMINIGUN",
	"WEAPON_DIGISCANNER",
	"WEAPON_SPECIALCARBINE_MK2",
	"WEAPON_BULLPUPRIFLE_MK2",
	"WEAPON_PUMPSHOTGUN_MK2",
	"WEAPON_MARKSMANRIFLE_MK2",
	"WEAPON_COMPACTLAUNCHER",
	"WEAPON_SNSPISTOL_MK2",
	"WEAPON_REVOLVER_MK2",
	"WEAPON_FIREWORK",
	"WEAPON_HOMINGLAUNCHER", 
	"WEAPON_SMG_MK2"
}

--[[
  ____                                      ____ _               _        
 |  _ \  __ _ _ __ ___   __ _  __ _  ___   / ___| |__   ___  ___| | _____ 
 | | | |/ _` | '_ ` _ \ / _` |/ _` |/ _ \ | |   | '_ \ / _ \/ __| |/ / __|
 | |_| | (_| | | | | | | (_| | (_| |  __/ | |___| | | |  __/ (__|   <\__ \
 |____/ \__,_|_| |_| |_|\__,_|\__, |\___|  \____|_| |_|\___|\___|_|\_\___/
                              |___/                                       
]]

VersusAC.AntiWeaponModifiers = false -- Detects if a player modified weapon damage etc. 
VersusAC.WeaponDamageModifier = { -- Default weapon damage modifier is 1.00. If you are using a script which adds more damage to guns or fists please change the modifier value to the value which is set in the script. 
	[GetHashKey("WEAPON_UNARMED")] = {modifier = 1.00, name = "WEAPON_UNARMED"},
	[GetHashKey("WEAPON_PISTOL")] = {modifier = 1.00, name = "WEAPON_PISTOL"}, 
	[GetHashKey("WEAPON_COMBATPISTOL")] = {modifier = 1.00, name = "WEAPON_COMBATPISTOL"}, 
	[GetHashKey("WEAPON_PISTOL50")] = {modifier = 1.00, name = "WEAPON_PISTOL50"}, 
	[GetHashKey("WEAPON_SMG")] = {modifier = 1.00, name = "WEAPON_SMG"},
	[GetHashKey("WEAPON_CARBINERIFLE_MK2")] = {modifier = 1.00, name = "WEAPON_CARBINERIFLE_MK2"},
	[GetHashKey("WEAPON_SNIPERRIFLE")] = {modifier = 1.00, name = "WEAPON_SNIPERRIFLE"},
	[GetHashKey("WEAPON_STUNGUN")] = {modifier = 1.00, name = "WEAPON_STUNGUN"},
	[GetHashKey("WEAPON_FLASHLIGHT")] = {modifier = 1.00, name = "WEAPON_FLASHLIGHT"},
	[GetHashKey("WEAPON_NIGHTSTICK")] = {modifier = 1.00, name = "WEAPON_NIGHTSTICK"},
	[GetHashKey("WEAPON_BAT")] = {modifier = 1.00, name = "WEAPON_BAT"},
	[GetHashKey("WEAPON_KNUCKLE")] = {modifier = 1.00, name = "WEAPON_KNUCKLE"},
	[GetHashKey("WEAPON_MACHETE")] = {modifier = 1.00, name = "WEAPON_MACHETE"},
	[GetHashKey("WEAPON_SWITCHBLADE")] = {modifier = 1.00, name = "WEAPON_SWITCHBLADE"},
	[GetHashKey("WEAPON_HEAVYPISTOL")] = {modifier = 1.00, name = "WEAPON_HEAVYPISTOL"},
	[GetHashKey("WEAPON_MICROSMG")] = {modifier = 1.00, name = "WEAPON_MICROSMG"},
	[GetHashKey("WEAPON_ASSAULTSMG")] = {modifier = 1.00, name = "WEAPON_ASSAULTSMG"},
	[GetHashKey("WEAPON_ASSAULTRIFLE")] = {modifier = 1.00, name = "WEAPON_ASSAULTRIFLE"},
	[GetHashKey("WEAPON_COMPACTRIFLE")] = {modifier = 1.00, name = "WEAPON_COMPACTRIFLE"},
	[GetHashKey("WEAPON_SAWNOFFSHOTGUN")] = {modifier = 1.00, name = "WEAPON_SAWNOFFSHOTGUN"},
	[GetHashKey("WEAPON_MINISMG")] = {modifier = 1.00, name = "WEAPON_MINISMG"},
}

--[[	
  ____                                       ____ _               _        
 |  _ \ ___  ___  ___  _   _ _ __ ___ ___   / ___| |__   ___  ___| | _____ 
 | |_) / _ \/ __|/ _ \| | | | '__/ __/ _ \ | |   | '_ \ / _ \/ __| |/ / __|
 |  _ <  __/\__ \ (_) | |_| | | | (_|  __/ | |___| | | |  __/ (__|   <\__ \
 |_| \_\___||___/\___/ \__,_|_|  \___\___|  \____|_| |_|\___|\___|_|\_\___/
                                                                           
]]

VersusAC.AntiResourceStartorStop = false -- Detects restarting / starting or stopping resources. Don't enable this if you restart resources.
VersusAC.AntiVersusStop = false -- Detects if the Anticheat resource is stopped. Only enable if you don't restart it yourself. HIGHLY RECOMMENDED. 

VersusAC.AntiLuaMenus = true -- Bans many mod menus. Create a ticket if you got false bans or want to enable it.
VersusAC.NoDUI = true --ask in a ticket if you need to put this on false and what else you need to do. ( if you get false bans atleast for lua menu detection)

--[[	
 __     __   _     _      _         ____ _               _        
 \ \   / /__| |__ (_) ___| | ___   / ___| |__   ___  ___| | _____ 
  \ \ / / _ \ '_ \| |/ __| |/ _ \ | |   | '_ \ / _ \/ __| |/ / __|
   \ V /  __/ | | | | (__| |  __/ | |___| | | |  __/ (__|   <\__ \
    \_/ \___|_| |_|_|\___|_|\___|  \____|_| |_|\___|\___|_|\_\___/
                                                                  
]]

VersusAC.AntiVehicleModifiers = false -- Detects if a player modified his vehicle, boosted, damage modifier etc.
VersusAC.AntiVehicleModifier1 = true -- VehicleDamageModifier
VersusAC.AntiVehicleModifier2 = true -- CheatPower
VersusAC.AntiVehicleModifier4 = true -- SpeedModifier
VersusAC.AntiVehicleModifier5 = true -- DefenseModifier

VersusAC.AntiBoostVehicle = false -- Detects if the vehicle is using boost (They can alter their game files to use this)
VersusAC.AntiCheatVehicle = true -- Prevents vehicle model change

VersusAC.AntiBulletProofTyres = false -- Detects if a vehicle is using BulletProofTyres. 

VersusAC.DeleteBrokenCars = false -- Deletes the car when it gets exploded, broken etc. 
VersusAC.DisableVehicleWeapons = true -- Disables vehicles with weapons. For example a minigun.

VersusAC.AntiVehicleGrab = false --BETA. Anti vehicle grab. 

--[[
  ____  _            _    _ _     _           _    ____                                          _     
 | __ )| | __ _  ___| | _| (_)___| |_ ___  __| |  / ___|___  _ __ ___  _ __ ___   __ _ _ __   __| |___ 
 |  _ \| |/ _` |/ __| |/ / | / __| __/ _ \/ _` | | |   / _ \| '_ ` _ \| '_ ` _ \ / _` | '_ \ / _` / __|
 | |_) | | (_| | (__|   <| | \__ \ ||  __/ (_| | | |__| (_) | | | | | | | | | | | (_| | | | | (_| \__ \
 |____/|_|\__,_|\___|_|\_\_|_|___/\__\___|\__,_|  \____\___/|_| |_| |_|_| |_| |_|\__,_|_| |_|\__,_|___/
                                                                                                       
]]

VersusAC.AntiCInjection = true -- Detects blacklisted commands which are in the list here below.
VersusAC.BlackListedCMD = {
	"killmenu",
	"chocolate",
	"haha",
	"lol",
	"panickey",
	"killmenu",
	"panik",
	"lynx",
	"brutan",
	"rE",
	"purgemenu"
}

--[[	
   ___  _   _                  ____ _               _        
  / _ \| |_| |__   ___ _ __   / ___| |__   ___  ___| | _____ 
 | | | | __| '_ \ / _ \ '__| | |   | '_ \ / _ \/ __| |/ / __|
 | |_| | |_| | | |  __/ |    | |___| | | |  __/ (__|   <\__ \
  \___/ \__|_| |_|\___|_|     \____|_| |_|\___|\___|_|\_\___/
                                                             
]]

VersusAC.ClearPedsAfterDetection = true -- Deletes the peds after they have been detected ( recommended )
VersusAC.ClearObjectsAfterDetection = true -- Deletes the objects after they have been detected ( recommended )
VersusAC.ClearVehiclesAfterDetection = false -- Deletes the vehicles after they have been detected ( recommended )

--[[
  ____  _            _    _ _     _           _   _____         _        
 | __ )| | __ _  ___| | _| (_)___| |_ ___  __| | |_   _|_ _ ___| | _____ 
 |  _ \| |/ _` |/ __| |/ / | / __| __/ _ \/ _` |   | |/ _` / __| |/ / __|
 | |_) | | (_| | (__|   <| | \__ \ ||  __/ (_| |   | | (_| \__ \   <\__ \
 |____/|_|\__,_|\___|_|\_\_|_|___/\__\___|\__,_|   |_|\__,_|___/_|\_\___/
                                                                         	
]]

VersusAC.AntiBlacklistedTasks = false -- Prevents players from using Anti AFK Bypass cheats or Executing Blacklisted Tasks (https://raw.githubusercontent.com/visibait/gtav-defaultasks/main/tasks)
VersusAC.BlacklistedTasks = {
	100, --CTaskWanderingScenario (ANTI AFK BYPASS)
	101, --CTaskWanderingInRadiusScenario (ANTI AFK BYPASS)
	151, -- CTaskCarDriveWander (ANTI AFK BYPASS)
	221, -- CTaskWander (ANTI AFK BYPASS)
	222, -- CTaskWanderInArea (ANTI AFK BYPASS)
	70, -- CTaskSwat
	72, -- CTaskSwatWantedResponse
	73, -- CTaskSwatOrderResponse
	74, -- CTaskSwatGoToStagingArea
	75, -- CTaskSwatFollowInLine
}

--[[
  ____  _            _    _ _     _           _      _          _                 _   _                 
 | __ )| | __ _  ___| | _| (_)___| |_ ___  __| |    / \   _ __ (_)_ __ ___   __ _| |_(_) ___  _ __  ___ 
 |  _ \| |/ _` |/ __| |/ / | / __| __/ _ \/ _` |   / _ \ | '_ \| | '_ ` _ \ / _` | __| |/ _ \| '_ \/ __|
 | |_) | | (_| | (__|   <| | \__ \ ||  __/ (_| |  / ___ \| | | | | | | | | | (_| | |_| | (_) | | | \__ \
 |____/|_|\__,_|\___|_|\_\_|_|___/\__\___|\__,_| /_/   \_\_| |_|_|_| |_| |_|\__,_|\__|_|\___/|_| |_|___/
                                                                                                        	
]]

VersusAC.AntiAnims = false -- Prevents players running blacklisted animations.
VersusAC.BlacklistedAnims = { -- How to use: Anim Dict, Anim Name.
	{"rcmpaazzo_2", "shag_loop_poppy"} -- Anti Rape Player anim
}

--[[
  ____  _            _    _ _     _           _  __     __   _     _      _           
 | __ )| | __ _  ___| | _| (_)___| |_ ___  __| | \ \   / /__| |__ (_) ___| | ___  ___ 
 |  _ \| |/ _` |/ __| |/ / | / __| __/ _ \/ _` |  \ \ / / _ \ '_ \| |/ __| |/ _ \/ __|
 | |_) | | (_| | (__|   <| | \__ \ ||  __/ (_| |   \ V /  __/ | | | | (__| |  __/\__ \
 |____/|_|\__,_|\___|_|\_\_|_|___/\__\___|\__,_|    \_/ \___|_| |_|_|\___|_|\___||___/
                                                                                      
]]

VersusAC.AntiBlacklistedVehicles = false -- Enable this if you want to enable client side blacklistedvehicles check
VersusAC.BlacklistedVehicles = { --Extra check for blacklisted vehicles. Put your vehicles from server_config in here too to be sure everything is detected. You cannot sit in the blacklisted vehicles with this check
	"zentorno",
}

--[[	
     _          _   _    ____ _ _            _     _____     _                           
    / \   _ __ | |_(_)  / ___| (_) ___ _ __ | |_  |_   _| __(_) __ _  __ _  ___ _ __ ___ 
   / _ \ | '_ \| __| | | |   | | |/ _ \ '_ \| __|   | || '__| |/ _` |/ _` |/ _ \ '__/ __|
  / ___ \| | | | |_| | | |___| | |  __/ | | | |_    | || |  | | (_| | (_| |  __/ |  \__ \
 /_/   \_\_| |_|\__|_|  \____|_|_|\___|_| |_|\__|   |_||_|  |_|\__, |\__, |\___|_|  |___/
                                                               |___/ |___/                                                              
]]

VersusAC.AntiBlacklistedClientTriggers = false -- Set this to true if you want to ban the triggers which are listed below on use. Not recommended if you haven't changed them.
VersusAC.BlacklistedClientTriggers = {
	"ambulancier:selfRespawn",
	"bank:transfer",
	"esx_ambulancejob:revive",
	"esx-qalle-jail:openJailMenu",
	"esx_jailer:wysylandoo",
	"esx_policejob:getarrested",
	"esx_society:openBossMenu",
	"esx:spawnVehicle",
	"esx_status:set",
	"HCheat:TempDisableDetection",
	"UnJP"
}

--[[
  ____                                      ____                               ____           _        _      _   _             
 |  _ \ ___  ___  ___  _   _ _ __ ___ ___  / ___| _ __   __ ___      ___ __   |  _ \ ___  ___| |_ _ __(_) ___| |_(_) ___  _ __  
 | |_) / _ \/ __|/ _ \| | | | '__/ __/ _ \ \___ \| '_ \ / _` \ \ /\ / / '_ \  | |_) / _ \/ __| __| '__| |/ __| __| |/ _ \| '_ \ 
 |  _ <  __/\__ \ (_) | |_| | | | (_|  __/  ___) | |_) | (_| |\ V  V /| | | | |  _ <  __/\__ \ |_| |  | | (__| |_| | (_) | | | |
 |_| \_\___||___/\___/ \__,_|_|  \___\___| |____/| .__/ \__,_| \_/\_/ |_| |_| |_| \_\___||___/\__|_|  |_|\___|\__|_|\___/|_| |_|
                                                 |_|                                                                            
]]

VersusAC.ResourceSpawnRestriction = false
VersusAC.ResourceSpawnRestrictionSafe = false --Only detects if the prop is spawned from Eulen.
VersusAC.ResourceSpawnRestrictionDebug = false -- only enable when told
VersusAC.SpawnRestriction = { -- 0 is not allowed, 1 is allowed to spawn. Add all your resources here that spawn vehicles, props or peds
    {
    	resource = "esx_truckerjob",
    	vehicles = 1,
    	objects = 0,
		peds = 0,
    },

	{
      	resource = "esx_poolcleaner",
      	vehicles = 1,
      	objects = 1,
		peds = 0,
    },

	{
      	resource = "esx_advancedgarage",
      	vehicles = 1,
      	objects = 0,
	    peds = 0,
    },

	{
      	resource = "esx_vehicleshop",
      	vehicles = 1,
      	objects = 0,
		peds = 0,
    },

}