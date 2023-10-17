// Creates a pumpkin and sets its scale to 0, sets it to active pumpkin
function SpawnPumpkin(){
	global.activePumpkin = instance_create_layer(PUMPKIN_SPAWN_X,PUMPKIN_SPAWN_Y,PUMPKIN_LAYER,oPumpkin)
	with global.activePumpkin {
		image_xscale = 0;
		image_yscale = 0;
	}
	show_debug_message("Pumpkin created!");
}