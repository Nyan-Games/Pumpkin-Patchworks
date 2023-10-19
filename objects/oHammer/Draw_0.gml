draw_self();
if instance_position(mouse_x, mouse_y, self) {
	image_alpha = 1;	
} else {
	image_alpha = .8;	
}

if global.splatter {
 image_alpha = 0;	
}





