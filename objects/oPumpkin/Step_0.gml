//Grow Pumpkin
if (image_xscale < size) {
	image_xscale += 0.05;	
}

image_yscale = image_xscale;


if (global.points > 99) {
	image_index = 1;
	if (global.points > 499) {
		image_index = 2;
		if (global.points > 999) {
			image_index = 3;
			if (global.points > 1999) {
				image_index = 4;				
			}
		}
	}
}

show_debug_message(multiplier);