//draws fps
draw_text(10, 10, fps);
if (global.splatter) {
	draw_sprite_ext(sSplatter, global.splatterPattern, 0, 0, 1, 1, 0, global.activePumpkin.color, splatterOpacity);
}

if (!instance_exists(oSeed)) {
	splatterOpacity *= .95;	
}




