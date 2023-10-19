draw_self();
draw_sprite_ext(sSeed, 0, x, y, image_xscale, image_yscale, image_angle, attributes.color, TINT_OPACITY)
if (!inventoryMode) {
	draw_set_color(attributes.color);
	draw_text(x, y - 128, attributes.size);
	draw_set_color(c_white);
}







