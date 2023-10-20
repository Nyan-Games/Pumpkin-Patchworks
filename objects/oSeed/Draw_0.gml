draw_self();
image_blend = attributes.color;
if (!inventoryMode) {
	draw_set_color(attributes.color);
	draw_text(x, y - 128, attributes.size);
	draw_set_color(c_white);
}

if (inventoryMode && instance_position(mouse_x, mouse_y, self)) {
	draw_sprite_ext(sInventorySlot, 1, x, y - 288, 1, 1, 0, attributes.color, 1);
	draw_sprite_ext(sEyes, attributes.eyes, x, y - 180, .5, .5, 0, c_white, 1);
	draw_sprite_ext(sNose, attributes.nose, x, y - 180, .5, .5, 0, c_white, 1);
	draw_sprite_ext(sMouth, attributes.mouth, x, y - 180, .5, .5, 0, c_white, 1);
}




