image_xscale = attributes.size + cos(wiggleTimer*wiggleFrequency)*wiggleAmplitude;
image_yscale = attributes.size + sin(wiggleTimer*wiggleFrequency)*wiggleAmplitude;
wiggleTimer += 1;

image_angle = (1 + sin(wiggleTimer*wiggleFrequency)*15);

if (!global.inventoryOn) {
	multiplier = global.activePumpkin.multiplier;	
}

if instance_position(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left) and !global.inventoryOn {
	
	image_speed = 1;
	ds_list_insert(global.seedInventory, 0, attributes);
	show_debug_message(ds_list_find_value(global.seedInventory, ds_list_size(global.seedInventory) - 1));
	audio_play_sound(picking_flower, 0, false, random_range(.8, 1.2));
}

 if image_index > image_number - 1 instance_destroy();
  if instance_position(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left) {
	  audio_play_sound(picking_flower, 0, false, random_range(.8, 1.2));
 if (global.inventoryOn && !global.soulMode && !global.combineMode) {
	
		if (!global.soulMode) {
			SpawnPumpkin(attributes.color, attributes.size, attributes.stem, attributes.eyes, attributes.nose, attributes.mouth, multiplier);
			global.inventoryOn = false;
			global.pageNumber = 0;
			global.lastSeedWorth = worth;
			oInventorySlot.itemsShown = false;
		if (global.lastSeedWorth > 99 && global.endingOccured1 == false)
	{
		//global.activePumpkin = new Pumpkin(attributes.color, attributes.size, attributes.stem, attributes.eyes, attributes.nose, attributes.mouth, multiplier);
		global.endingOccured1 = true;
		room_goto(rPatchDialog1);		
	}
		
	if (global.lastSeedWorth > 499 && global.endingOccured2 == false)	
	{
		room_goto(rPatchDialog2);
		global.endingOccured1 = true;
		global.endingOccured2 = true;
	}
	
	if (global.lastSeedWorth > 999 && global.endingOccured3 == false)
	{
		room_goto(rPatchDialog3);
		global.endingOccured1 = true;
		global.endingOccured2 = true;
		global.endingOccured3 = true;
	}	
//final pumpkin, end after smashin
	if (global.lastSeedWorth > 1999 && global.endingOccured4 == false)	
	{
		global.endingOccured4 = true;
		room_goto(rPatchDialog4);
		
		
	}
			ds_list_delete(global.seedInventory,inventoryNumber);
			instance_destroy(oSeed);
		} 

	 }
	 
if (global.soulMode) {
			global.soulsNeeded--;
			ds_list_replace(global.seedInventory,inventoryNumber,-2);
			
			if (global.soulsNeeded = 0) {
				var _removeSeed = ds_list_find_index(global.seedInventory, -2);
				while (global.seedInventory[|_removeSeed] = -2) {
					ds_list_delete(global.seedInventory,_removeSeed);
					var _removeSeed = ds_list_find_index(global.seedInventory, -2);
				}
			global.inventoryOn = false;
			global.soulMode = false;
			global.pageNumber = 0;
			oInventorySlot.itemsShown = false;
			instance_destroy(oSeed);
			}
			instance_destroy(self);
}

	if (global.combineMode) {
		 
		if (global.seed1 = undefined) {
			global.seed1 = 	global.seedInventory[|inventoryNumber];
		} else {
			global.seed2 = 	global.seedInventory[|inventoryNumber];	
			CombineSeeds(global.seed1,global.seed2);
			audio_play_sound(shining_8_bit, 0, false);
			global.inventoryOn = false;
			global.combineMode = false;
			global.soulMode = false;
			global.pageNumber = 0;
			oInventorySlot.itemsShown = false;

			instance_destroy(oSeed);
		}
		instance_destroy(self);
		ds_list_delete(global.seedInventory,inventoryNumber);
		
	}

 }
 
 var _colorPoints = floor(abs(20 - color_get_hue(attributes.color)));
 if (_colorPoints >= 220) {
	attributes.color = make_color_hsv(255,0,255) 
	_colorPoints = 300;
 }
 
 if (attributes.color == c_white) {
    _colorPoints = 300;
 }
 
 
 var _sizePoints = floor(abs(1-attributes.size)*100);

 
 if (!combined) {
	worth = floor((_sizePoints + _colorPoints)*multiplier)
	global.points = worth;
 } else {
	worth = floor((_sizePoints + _colorPoints)*2*multiplier);
	global.points = worth;
 }
 show_debug_message(multiplier);
 show_debug_message(global.activePumpkin.multiplier);