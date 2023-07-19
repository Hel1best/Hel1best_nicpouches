author 'Hel1bestík#0610'
description 'Simple nicotin pouches script.'
version '1.0'
game 'gta5'
fx_version 'cerulean'
lua54 'yes'

shared_scripts {
    'config.lua',
	'@ox_lib/init.lua',
}

client_scripts {
    'client/client.lua',
    'config.lua'
}
server_scripts {
    'server/server.lua',
    'config.lua'
}

dependencies {
    'ox_lib'
}
