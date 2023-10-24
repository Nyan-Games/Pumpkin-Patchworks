
//draw_text(window_get_width()/2, 10, "Points: " + string(global.points));
if (global.splatter) {
	draw_sprite_ext(sSplatter, global.splatterPattern, 0, 0, 1, 1, 0, global.activePumpkin.color, splatterOpacity);
}

if (!instance_exists(oSeed)) {
	splatterOpacity *= .75;	
}

if (global.inventoryOn) {
		draw_set_halign(fa_left);
	draw_set_color(c_black);
	draw_text(100-2, 1000 +2, "Page " + string(global.pageNumber + 1));
	draw_text(100+2,1000 -2, "Page " + string(global.pageNumber + 1));
	draw_text(100-2,1000 -2, "Page " + string(global.pageNumber + 1));
	draw_text(100+2, 1000 +2, "Page " + string(global.pageNumber + 1));
	draw_set_color(c_white);
	draw_text(100, 1000, "Page " + string(global.pageNumber + 1));
	draw_set_color(c_white);
	draw_set_halign(fa_left);
}

if (global.soulMode) {
	if (global.soulsNeeded != 1) {
		draw_text(window_get_width()/2,window_get_height()/2,"Pick " + string(global.soulsNeeded) + " more SEEDS");
	} else {
		draw_text(window_get_width()/2,window_get_height()/2,"Pick " + string(global.soulsNeeded) + " more SEED");
	}
}