if global.inventoryOn {
	y = ystart - 288;	
} else {
	y = ystart;	
}


if instance_position(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left) {
	
if (image_xscale = 1) {
		if ((global.pageNumber > 0) && image_index = 0) {
			global.pageNumber--;
			instance_destroy(oSeed);
			with (oInventorySlot) {
				ShowInventoryItems();
			}
		}
	
			if (image_index = 1 && global.pageNumber + 1 <= (floor(ds_list_size(global.seedInventory)/instance_number(oInventorySlot)))) {
			global.pageNumber++;
			instance_destroy(oSeed);
			with (oInventorySlot) {
				ShowInventoryItems();
			}
		}
} else {
			if ((global.pageNumber > 0) && image_index = 0) {
			global.pageNumber = 0;
			instance_destroy(oSeed);
			with (oInventorySlot) {
				ShowInventoryItems();
			}
		}
		
			if (image_index = 1 && global.pageNumber + 1 <= (floor(ds_list_size(global.seedInventory)/instance_number(oInventorySlot)))) {
			global.pageNumber = floor(ds_list_size(global.seedInventory)/instance_number(oInventorySlot));
			instance_destroy(oSeed);
			with (oInventorySlot) {
				ShowInventoryItems();
			}
		}
	
}
}