if !instance_exists(oSeed) && !global.inventoryOn {	
	draw_self();
}

if (showError) {
	draw_text(window_get_width()/2, window_get_height() - 64, errorMessage);
	
}