VersusACWhitelist = {}


VersusACWhitelist.Whitelist = {

    ["license:6d57105b04c00aab9ccaac4dbcc75feea0e53dc4"] = {
        name = "Traid",
        permission = "admin"
    },

    ["license:548ed05fa52e1db690cc2d8ae3b79f7683a181ab"] = {
        name = "TraidAlt",
        permission = "admin"
    },

    ["license:5768b25c7bbb205560cc07dcc7739dfe5645fa8e"] = {
        name = "Alex",
        permission = "admin"
    },

    ["license:ae53180291b7cdad80295f3b1b7c07c7c029fcf9"] = {
        name = "Zozo",
        permission = "admin"
    },

    ["license:049668a2ae8ffac22cd3c5d9d133df839c5aef73"] = {
        name = "Ark",
        permission = "admin"
    },

    ["license:74ac57c6d2cde961ce826a79356a6758629d8d18"] = {
        name = "Morniel",
        permission = "admin"
    },
    
    
    
}

-- true = bypass
-- false = not bypass.
VersusACWhitelist.Permissions = {
    ["admin"] = {
        anticheat = {
            admin = true,

            --commands
            vacreloadbans = true, --access to the anticheat commands
            vacunbanid = true,
            vacresourceoff = true,
            vacresourceon = true,

            --detections
            bypassall = true, -- bypass everything, below options don't matter
            noclip = true,
            invisible = true,
            godmode = true,
            antiragdoll = true,
            radar = true,
            explosiveweapon = true,
            spectate = true,
            speedhack = true,
            blacklistedweapons = true,
            thermalvision = true,
            nightvision = true,
            antiresourcestop = true,
            luainjection = true,
            anticheatvehicle = true,
            pedchanged = true,
            freecam = true,
            nocliphard2 = true,
            nocliphard3 = true,
            teleport = true,
            playerblips = true,
            damagemodifier = true,
            clipmodifier = true,
            infiniteammo = true,
            antivehiclespawn = true,
            vehiclemodifier = true,
            resourceinjection = true,
            commandinjection2 = true,
            givearmour = true,
            antiesx = true,
            fastrun = true,
            onscreenmenudetection = true,


        },
        adminmenu = {
            openmenu = true,
            opencommand = true,
            unban = true,
            setjob = true,
            setmoney = true,
            unjail = true,
            jail = true,
            freeze = true,
            heal = true,
            fixcar = true,
            deleteprops = true,
            deletevehicles = true,
            deletepeds = true,
            delgun = true,
            deleteallvehicles = true,
            playernames = true,
            armour = true,
            playerblips = true,
            giveweapon = true,
            deleteweapons = true,
            weatherchange = true,
            tpwaypoint = true,
            noclip = true,
            revive = true,
            slay = true,
            screenshot = true,
            returntp = true,
            gototp = true,
            spectate = true,
            bring = true,
            kick = true,
            ban = true,
            deletewarn = true,
            warn = true,
            getwarns = true,
        },
    },

    ["moderator"] = {
        anticheat = {
            --commands
            vacreloadbans = false, --access to the anticheat commands
            vacunbanid = true,
            vacresourceoff = false,
            vacresourceon = false,

            --detections
            bypassall = true, -- bypass everything, below options then don't matter
            noclip = true,
            invisible = true,
            godmode = true,
            antiragdoll = true,
            radar = true,
            explosiveweapon = true,
            spectate = true,
            speedhack = true,
            blacklistedweapons = true,
            thermalvision = true,
            nightvision = true,
            antiresourcestop = true,
            luainjection = true,
            anticheatvehicle = true,
            pedchanged = true,
            freecam = true,
            nocliphard2 = true,
            nocliphard3 = true,
            teleport = true,
            playerblips = true,
            damagemodifier = true,
            clipmodifier = true,
            infiniteammo = true,
            antivehiclespawn = true,
            vehiclemodifier = true,
            resourceinjection = true,
            commandinjection2 = true,
            givearmour = true,
            antiesx = true,
            fastrun = true,
            onscreenmenudetection = true,


        },
        adminmenu = {
            openmenu = true,
            opencommand = true,
            unban = true,
            setjob = false,
            setmoney = false,
            unjail = true,
            jail = true,
            freeze = true,
            heal = true,
            fixcar = true,
            deleteprops = true,
            deletevehicles = true,
            deletepeds = true,
            delgun = true,
            deleteallvehicles = true,
            playernames = true,
            armour = true,
            playerblips = true,
            giveweapon = true,
            deleteweapons = true,
            weatherchange = true,
            tpwaypoint = true,
            noclip = true,
            revive = true,
            slay = true,
            screenshot = true,
            returntp = true,
            gototp = true,
            spectate = true,
            bring = true,
            kick = true,
            ban = true,
            deletewarn = true,
            warn = true,
            getwarns = true,
        },
    }
}