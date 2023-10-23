//Grow Pumpkin
if (image_xscale < size) {
	image_xscale += 0.05;	
}

image_yscale = image_xscale;


if (global.points > 30) {
	image_index = 1;
	room_goto(rPatchDialog1);
	if (global.points > 299) {
		image_index = 2;
		if (global.points > 499) {
			image_index = 3;
			if (global.points > 699) {
				image_index = 4;	
				
			}
		}
	}
}
