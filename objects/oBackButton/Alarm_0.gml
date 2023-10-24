if (global.inventoryOn) {
	instance_destroy(oSeed);
	global.inventoryOn = false;
	global.pageNumber = 0;
	oInventorySlot.itemsShown = false;
	global.seed1 = undefined;
	global.seed2 = undefined;
}

if (global.soulMode) {
	global.soulMode = false;	
}

if (global.combineMode) {
	global.combineMode = false;	
}

image_alpha = 1;




