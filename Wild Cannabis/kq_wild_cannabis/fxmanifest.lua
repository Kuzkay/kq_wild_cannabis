fx_version 'cerulean'
games      { 'gta5' }
lua54 'yes'

author 'KuzQuality | Kuzkay'
description 'Wild Cannabis by KuzQuality (kq_lootareas example)'
version '1.0.0'

--
-- Server
--

server_scripts {
    'config.lua',
    'server/server.lua',
    'server/esx.lua',
    'server/qb.lua',
    'locale/locale.lua',
}

--
-- Client
--

client_scripts {
    'config.lua',
    'client/target.lua',
    'client/client.lua',
    'client/functions.lua',
    'locale/locale.lua',
}

escrow_ignore {
    'config.lua',
    'client/*.lua',
    'server/*.lua',
    'locale/*.lua',
}
