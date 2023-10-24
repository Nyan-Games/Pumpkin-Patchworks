
draw_set_font(endFont);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if instance_position(mouse_x, mouse_y, self) {
	draw_sprite_ext(sprite_index, image_index, x, y - 4, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	draw_text(x, y - 4, buttonText);
} else {
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	draw_text(x, y, buttonText);
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_font(defaultFont);





