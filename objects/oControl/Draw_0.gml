//draws fps
draw_text(10, 10, fps);
if (global.splatter) {
	draw_sprite_ext(sSplatter, global.splatterPattern, 0, 0, 1, 1, 0, global.activePumpkin.color, splatterOpacity);
}

if (!instance_exists(oSeed)) {
	splatterOpacity *= .75;	
}

if (global.inventoryOn) {
	draw_text(10, 1000, "Page " + string(global.pageNumber + 1));	
}