draw_self();
image_blend = attributes.color;

if (!inventoryMode) {
	draw_set_halign(fa_center);
	draw_set_color(c_black);
	draw_text(x-2, y - 128+2, worth);
	draw_text(x+2, y - 128-2, worth);
	draw_text(x-2, y - 128-2, worth);
	draw_text(x+2, y - 128+2, worth);
	draw_set_color(attributes.color);
	draw_text(x, y - 128, worth);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
}

if (inventoryMode) {
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_text(x-2, y-188-2, "Points : " + string(worth));
	draw_text(x+2, y-188+2, "Points : " + string(worth));
	draw_text(x+2, y-188-2, "Points : " + string(worth));
	draw_text(x-2, y-188+2, "Points : " + string(worth));
	draw_set_color(attributes.color);
	draw_text(x, y-188, "Points : " + string(worth));
	draw_set_color(c_white);
	draw_set_halign(fa_left);

}

if (combined) {
	sprite_index = sComboSeed;
}