fx_version 'cerulean'

games {"gta5"}

author "Maximus Prime"
repository "https://github.com/Maximus7474/mps-loadscreen"
version '0.0.0'

lua54 'yes'
loadscreen_cursor 'yes'

loadscreen 'web/build/index.html'

server_script "config.lua"
server_script "server/**/*"

files {
  'web/build/index.html',
  'web/build/**/*'
}
