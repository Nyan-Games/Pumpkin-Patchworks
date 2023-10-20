//splatter fullscreen
if (splatterFullScreenOpacity > 0 && showFullSplatter) {
	draw_set_color(global.activePumpkin.color);
	if (alarm[0] == -1 && !fullSplatterFadeOut) {
		alarm[0] = 60;
	}
	if (fullSplatterFadeOut) {
		splatterFullScreenOpacity *= .95;
	}
	draw_set_alpha(splatterFullScreenOpacity);
	draw_rectangle(0,0, window_get_width(), window_get_height(), false);
	draw_set_alpha(1);
} else {
	showFullSplatter = false;
	fullSplatterFadeOut = false;
	alarm[0] = -1;
}
draw_set_color(c_white);



