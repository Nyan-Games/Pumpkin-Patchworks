// Creates a pumpkin and sets its scale to 0, sets it to active pumpkin
function SpawnPumpkin(_color, _size, _stem, _eyes, _nose, _mouth, _multiplier) {
	
	global.activePumpkin = new Pumpkin(_color, _size, _stem, _eyes, _nose, _mouth, _multiplier);
	ds_list_add(global.pumpkinList, global.activePumpkin);
	var _visualPumpkin;
	_visualPumpkin = instance_create_layer(PUMPKIN_SPAWN_X,PUMPKIN_SPAWN_Y,PUMPKIN_LAYER,oPumpkin)
	with _visualPumpkin {
		image_xscale = 0;
		image_yscale = 0;
		color = _color;
		size = _size;
		stem = _stem;
		eyes = _eyes;
		nose = _nose;
		mouth = _mouth;
	}
	global.splatterPattern = irandom(sprite_get_number(sSplatter) - 1);
	global.pumpkinsCreated++;
}