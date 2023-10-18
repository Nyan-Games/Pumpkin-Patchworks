//splatter fullscreen
if (splatterFullScreenOpacity > 0 && showFullSplatter) {
	draw_set_color(global.activePumpkin.color);
	if (alarm[0] == -1 && !fullSplatterFadeOut) {
		alarm[0] = 120;
	}
	if (fullSplatterFadeOut) {
		splatterFullScreenOpacity *= .9;
	}
	draw_set_alpha(splatterFullScreenOpacity);
	draw_rectangle(0,0, window_get_width(), window_get_height(), false);
} else {
	showFullSplatter = false;
	fullSplatterFadeOut = false;
	alarm[0] = -1;
}




