fx_version 'cerulean'
game 'gta5'

description 'Crafting system'
version 'beta'
author 'Tum3#1482'
lua54 'yes'

client_scripts {
	'**/cl_*.lua'
}

server_scripts  {
    '**/sv_*.lua'
}

shared_script {
	'@ox_lib/init.lua'
} 
