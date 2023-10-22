if (global.inventoryOn) {
	instance_destroy(oSeed);
	global.inventoryOn = false;
	global.pageNumber = 0;
	oInventorySlot.itemsShown = false;
}

if (global.soulMode) {
	global.soulMode = false;	
}

if (global.combineMode) {
	global.combineMode = false;	
}

image_alpha = 1;




