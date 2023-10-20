image_alpha = 1;
if (global.pageNumber = 0) && image_index = 0 {
	image_alpha = .25;
	draw_self();

}

if (global.pageNumber + 1 > (floor(ds_list_size(global.seedInventory)/instance_number(oInventorySlot))) && image_index = 1) {
	image_alpha = .25;
	draw_self();
}

draw_self();