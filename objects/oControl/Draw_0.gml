//draws fps
draw_text(10, 10, fps);
draw_text(window_get_width()/2, 10, "Points: " + string(global.points));
if (global.splatter) {
	draw_sprite_ext(sSplatter, global.splatterPattern, 0, 0, 1, 1, 0, global.activePumpkin.color, splatterOpacity);
}

if (!instance_exists(oSeed)) {
	splatterOpacity *= .75;	
}

if (global.inventoryOn) {
	draw_text(10, 1000, "Page " + string(global.pageNumber + 1));	
}

if (global.soulMode) {
	if (global.soulsNeeded != 1) {
		draw_text(window_get_width()/2,window_get_height()/2,"Pick " + string(global.soulsNeeded) + " more SEEDS");
	} else {
		draw_text(window_get_width()/2,window_get_height()/2,"Pick " + string(global.soulsNeeded) + " more SEED");
	}
}