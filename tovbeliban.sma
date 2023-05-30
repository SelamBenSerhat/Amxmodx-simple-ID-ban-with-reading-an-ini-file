#include <amxmodx>
#include <amxmisc>


#define PLUGIN  "Tovbeli Panel Ban"
#define VERSION "1.0"
#define AUTHOR  "Asik Sirin"

new const file[] = "addons/amxmodx/configs/steamidlistesi.ini";
new str, txtuznlk


public plugin_init()
{
    register_plugin(PLUGIN, VERSION, AUTHOR)		
}

public client_connect(id)    
{
    new yasakli[64], oyuncuid[32], name[32]
    get_user_authid(id ,oyuncuid, 31 )
    get_user_name(id ,name, 31 )
    while( ( str = read_file( file, str, yasakli, 63, txtuznlk ) ) != 0 )
    if( equal( yasakli, oyuncuid ) )
    {
		server_cmd("kick #%d ^"Girisiniz yasaklanmistir.^"",get_user_userid(id))
    }    
}
/* AMXX-Studio Notes - DO NOT MODIFY BELOW HERE
*{\\ rtf1\\ ansi\\ deff0{\\ fonttbl{\\ f0\\ fnil Tahoma;}}\n\\ viewkind4\\ uc1\\ pard\\ lang1055\\ f0\\ fs16 \n\\ par }
*/
