
fx_version 'cerulean'
game 'gta5'

author 'ScratchStack'
description 'Twotter System 1.5.0'
lua54 'yes'
client_scripts {

    'client/*',

}

server_scripts {
    'server/*',
}

files {
    "html/*.html"
  }
  ui_page 'html/index.html'
shared_script '@ox_lib/init.lua'
