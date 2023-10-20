if instance_position(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left) and !instance_exists(oSeed) {
	if (image_index = 0) {
		SpawnDefaultPumpkin();
		global.splatter = false;
		instance_destroy(self);
		show_debug_message(ds_list_size(global.seedInventory));
	} else {
		if (global.seedInventory[|0] != undefined) {
		global.inventoryOn = true;
		} else {
				
		}
	}

}

if instance_exists(oPumpkin) {
	instance_destroy(self);	
}

