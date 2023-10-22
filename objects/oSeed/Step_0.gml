image_xscale = attributes.size + cos(wiggleTimer*wiggleFrequency)*wiggleAmplitude;
image_yscale = attributes.size + sin(wiggleTimer*wiggleFrequency)*wiggleAmplitude;
wiggleTimer += 1;

image_angle = (1 + sin(wiggleTimer*wiggleFrequency)*15);

if instance_position(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left) and !global.inventoryOn {
	image_speed = 1;
	ds_list_add(global.seedInventory,attributes);
	show_debug_message(ds_list_find_value(global.seedInventory, ds_list_size(global.seedInventory) - 1));
}

 if image_index > image_number - 1 instance_destroy();
 
 if (global.inventoryOn) {
	 if instance_position(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left) {
		if (!global.soulMode) {
			SpawnPumpkin(attributes.color, attributes.size, attributes.stem, attributes.eyes, attributes.nose, attributes.mouth);
			global.inventoryOn = false;
			global.pageNumber = 0;
			oInventorySlot.itemsShown = false;
			ds_list_delete(global.seedInventory,inventoryNumber);
			instance_destroy(oSeed);
		} 

if (global.soulMode) {
			global.soulsNeeded--;
			ds_list_replace(global.seedInventory,inventoryNumber,-2);
			
			if (global.soulsNeeded = 0) {
				var _removeSeed = ds_list_find_index(global.seedInventory, -2);
				while (global.seedInventory[|_removeSeed] = -2) {
					ds_list_delete(global.seedInventory,_removeSeed);
					var _removeSeed = ds_list_find_index(global.seedInventory, -2);
				}
			global.inventoryOn = false;
			global.soulMode = false;
			global.pageNumber = 0;
			oInventorySlot.itemsShown = false;
			global.souls++;
			instance_destroy(oSeed);
			}
			instance_destroy(self);
}

	if (global.combineMode) {
		
		
	}



	 }
 }
 
