image_xscale = 1 + cos(wiggleTimer*wiggleFrequency)*wiggleAmplitude;
image_yscale = 1 + sin(wiggleTimer*wiggleFrequency)*wiggleAmplitude;
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
		SpawnPumpkin(attributes.color, attributes.size, attributes.stem, attributes.eyes, attributes.nose, attributes.mouth);
		instance_destroy(oSeed);
		global.inventoryOn = false;
		global.pageNumber = 0;
		ds_list_delete(global.seedInventory,inventoryNumber);
	 }
 }