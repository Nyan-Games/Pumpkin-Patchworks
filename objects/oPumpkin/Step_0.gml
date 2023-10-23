//Grow Pumpkin
if (image_xscale < size) {
	image_xscale += 0.05;	
}

image_yscale = image_xscale;


if (global.points > 199) {
	image_index = 1;
		//this doesnt work, but i want it to trigger after the last seed has been picked instance_exists(oNewPumpkin)
	if !global.splatter
	{	
		room_goto(rPatchDialog1);
	}		
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
//	room_goto(rPatchDialog1);

show_debug_message(multiplier);