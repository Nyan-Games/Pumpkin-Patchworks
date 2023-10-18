// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpawnDefaultPumpkin(){
	
	global.activePumpkin = new Pumpkin(DEFAULT_COLOR, DEFAULT_SIZE, DEFAULT_STEM, DEFAULT_EYES, DEFAULT_NOSE, DEFAULT_MOUTH);
	ds_list_add(global.pumpkinList, global.activePumpkin);
	var _visualPumpkin;
	_visualPumpkin = instance_create_layer(PUMPKIN_SPAWN_X,PUMPKIN_SPAWN_Y,PUMPKIN_LAYER,oPumpkin)
	with _visualPumpkin {
		image_xscale = 0;
		image_yscale = 0;
	}
	global.splatterPattern = irandom(sprite_get_number(sSplatter) - 1);
	show_debug_message("Pumpkin created!");
	global.pumpkinsCreated++;
}