if instance_position(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left) and !instance_exists(oSeed) {
	if (image_index = 0) {
		SpawnDefaultPumpkin();
		global.splatter = false;
		instance_destroy(self);
		showError = false;
	}
	
	if (image_index = 1) {
		if (global.seedInventory[|0] != undefined) {
			global.inventoryOn = true;
			audio_play_sound(choose(planting_01, planting_02, planting_03, planting_04, planting_05), 0, false)
			showError = false;
		} else {
			showError = true;
			errorMessage = "Inventory is Empty!";
			
		}
	}
	
	if (image_index = 2) {
		if (global.seedInventory[|0] != undefined && global.seedInventory[|1] != undefined && global.seedInventory[|2] != undefined && global.seedInventory[|3] != undefined) {
			instance_destroy(oNewPumpkin);
			global.inventoryOn = true;
			global.soulMode = true;
			global.soulsNeeded = 3;
			showError = false;
		} else {
			showError = true;
			errorMessage = "You Need At Least 4 SEEDS!";
		}
}

	if (image_index = 3) {
		if (global.seedInventory[|0] != undefined && global.seedInventory[|1] != undefined) {
			instance_destroy(oNewPumpkin);
			show_debug_message("aaaa");
			global.inventoryOn = true;
			global.combineMode = true;
			showError = false;
		} else {
			showError = true;
			show_debug_message("bbbb");
			errorMessage = "You Need At Least 2 SEEDS!";
		}
	}

}

if instance_exists(oPumpkin) {
	instance_destroy(self);	
}