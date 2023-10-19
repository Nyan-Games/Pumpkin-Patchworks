if global.inventoryOn {
	y = ystart - 288;	
} else {
	y = ystart;	
}

show_debug_message(global.pageNumber);

if instance_position(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left) {
	if ((global.pageNumber > 0) && image_index = 0) {
		global.pageNumber--;
		instance_destroy(oSeed);
		with (oInventorySlot) {
			ShowInventoryItems();
		}
	}
	
		if (image_index = 1) {
		global.pageNumber++;
		instance_destroy(oSeed);
		with (oInventorySlot) {
			ShowInventoryItems();
		}
	}
}