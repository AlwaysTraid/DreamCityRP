fx_version 'adamant'

author 'Avey | VersusAC'
description 'VAC | https://discord.gg/qMm4Jh9Afv'
version '3.04'
lua54 'yes'

game 'gta5'

client_scripts {
    'configs/client_config.lua',
    'locales/locales.lua',
    'client/checks.lua',
    'client/main.lua',
    'client/import.lua',
    'client/verify.lua'
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'configs/server_config.lua',
    'server/main.lua',
    'server/handler.lua',
    'locales/locales.lua',
    'configs/whitelist.lua',
    'main/install.lua'
}

ui_page 'html/notify.html'

file {
    'html/*.html',
    'html/*.js',
    'html/*.css',
    'html/sound.wav',
}

escrow_ignore {
    'configs/client_config.lua',
    'locales/locales.lua',
    'configs/server_config.lua',
    'configs/whitelist.lua',
    'html/*.html',
    'html/*.js',
    'html/*.css',
    'client/import.lua',
    'client/placeholder.lua'
  }



dependency '/assetpacks'