if global.inventoryOn {
	y = ystart - 288;	
} else {
	y = ystart;	
}

if (global.inventoryOn and !itemsShown) {
	ShowInventoryItems();
	show_debug_message("pee");
	itemsShown = true;
}