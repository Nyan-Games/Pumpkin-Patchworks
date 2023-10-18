if instance_position(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left) {
	SpawnPumpkin();
	global.splatter = false;
	instance_destroy(self);	
}

if instance_exists(oPumpkin) {
	instance_destroy(self);	
}






