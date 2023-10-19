if ((global.pageNumber = 0) && image_index = 0) {
	draw_set_alpha(.7);
	show_debug_message("x");

}

if ((global.pageNumber + 1 <= (floor(ds_list_size(global.seedInventory)/4)) && image_index = 1)) {
	draw_set_alpha(.7);
}

draw_self();
draw_set_alpha(1);	