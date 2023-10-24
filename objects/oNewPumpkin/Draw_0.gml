if !instance_exists(oSeed) && !global.inventoryOn {	
	draw_self();
}

if (showError) {
	draw_set_halign(fa_center);
	if (errorMessage = "Inventory is Empty!") {
	draw_text(window_get_width()/2, 50 , errorMessage);
	} 
	
		if (errorMessage = "You Need At Least 2 SEEDS!") {
	draw_text(window_get_width()/2, 100 , errorMessage);
	}  
	
	draw_set_halign(fa_left);
	
}

