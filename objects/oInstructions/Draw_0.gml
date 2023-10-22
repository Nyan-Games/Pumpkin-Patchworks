draw_set_font(instructionsFont);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	draw_text(x, y, introText);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_font(defaultFont);

