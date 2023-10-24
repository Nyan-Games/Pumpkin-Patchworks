if !instance_exists(oPumpkin) {
 image_alpha = 0;	
}
else
{
	image_alpha = 1;
}

if instance_position(mouse_x, mouse_y, self) {
	draw_sprite_ext(sprite_index, image_index, x, y - 4, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
} else {
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}







