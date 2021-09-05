-- no touch below
ServerConfig = {}
-- no touch above

-- Set to "true" if you only want people joining if they have Discord linked to FiveM
ServerConfig.RequireDiscord = true

-- REQUIRES ONESYNC - sends explosion event information to a webhook in Discord
ServerConfig.LogExplosions = true
-- Webhook you want explosion events and whatnot sent to
ServerConfig.LogWebhook = "https://discord.com/api/webhooks/870407793574838294/5-FMK3qSNhQv7uxLdxIQMAIZIrv1t2HaFSEJAp7S-dLLKWh429RkgTO24Io3Fd9_2bwv"

-- ACE Permission node to bypass checks (ONLY GIVE TO EXTREMELY TRUSTED PEOPLE + STAFF) [bypass spectate check, blacklisted events, teleport check, etc.]
--[[
add_ace group.admin atg.bypass allow # Put this in your server.cfg, set up just like atg-admin :)
]]

-- Disallow VPNs and Proxies? Set to true if you don't know what this means
ServerConfig.AntiVPN = true

-- Weapon hashes you want to kick people for (1 warning, then kick)
ServerConfig.BlacklistedWeapons = {
    GetHashKey("blacklisted_weapon_goes_here"),
    GetHashKey("blacklisted_weapon_goes_here"),
    GetHashKey("blacklisted_weapon_goes_here"),
}

-- TriggerServerEvents you want to instantly kick people for, leave this alone if you don't know what this means
ServerConfig.BlacklistedEvents = {
    "blacklisted_event_goes_here",
    "blacklisted_event_goes_here",
    "blacklisted_event_goes_here",
}

ServerConfig.Checks = {
    Spectate = true,
    Health = true,
    Armor = true,
    Teleport = true,
    Speedhack = true,
    Noclip = true,
    Blips = true,
    Superjump = true,
    Weapon = true
}