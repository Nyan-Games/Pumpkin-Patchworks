
if (global.pageNumber = 0) && image_index = 0 {
	image_alpha = .7;

}

if ((global.pageNumber + 1 >= (floor(ds_list_size(global.seedInventory)/instance_number(oInventorySlot))) && image_index = 1)) {
	image_alpha = .7;
}
draw_self();