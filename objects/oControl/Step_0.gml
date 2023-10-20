//fullscreen toggle
if keyboard_check_pressed(ord("F")) {
	window_set_fullscreen(!window_get_fullscreen());
}
//if pumpkin doesnt exist, spawn one
if (!instance_exists(oNewPumpkin) && !instance_exists(oPumpkin) && !global.inventoryOn) {
	instance_create_layer((window_get_width()/2) - 300, window_get_height()/2, "Seeds", oNewPumpkin);
	
	var _button2 = instance_create_layer((window_get_width()/2) + 300, window_get_height()/2, "Seeds", oNewPumpkin);
	with _button2 {image_index = 1;}
}

//splatter
if global.startSplatter {
	Splatter();
	global.startSplatter = false;
}

if !global.splatter {
	showFullSplatter = false;
	splatterFullScreenOpacity = 0;
	splatterOpacity = 0;
	fullSplatterFadeOut = false;
	global.startSplatter = false;
}