fx_version 'adamant' 
game 'gta5'


data_file "SCALEFORM_DLC_FILE" "stream/cpminimap/int3232302352.gfx"


client_scripts {


    'src/RageUI/RMenu.lua',
    'src/RageUI/menu/RageUI.lua',
    'src/RageUI/menu/Menu.lua',
    'src/RageUI/menu/MenuController.lua',
    'src/RageUI/components/*.lua',
    'src/RageUI/menu/elements/*.lua',
    'src/RageUI/menu/items/*.lua',
    'src/RageUI/menu/panels/*.lua',
    'src/RageUI/menu/windows/*.lua',


    'cl_wipe.lua',

}

server_scripts {
	'@mysql-async/lib/MySQL.lua',

    'sv_wipe.lua',
}

