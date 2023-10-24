if instance_position(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left) && instance_exists(oPumpkin) {
	global.startSplatter = true;
	if (global.lastSeedWorth > 699) {
		room_goto(rPatchDialog1);
		global.endingOccured = true;
	}
	
}