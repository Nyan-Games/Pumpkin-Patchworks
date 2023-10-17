//fullscreen toggle
if keyboard_check_pressed(ord("F")) {
	window_set_fullscreen(!window_get_fullscreen());
	show_debug_message("a");
}
//if pumpkin doesnt exist, spawn one
if (!instance_exists(oPumpkin)) {
	SpawnPumpkin();
}