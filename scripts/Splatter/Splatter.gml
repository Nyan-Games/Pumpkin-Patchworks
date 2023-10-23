// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Splatter(){
	instance_destroy(oPumpkin);
	showFullSplatter = true;
	splatterFullScreenOpacity = 1;
	splatterOpacity = 1;
	global.splatter = true;
	
	
	var _spawnX;
	var _spawnY;
	var _seed;
	
	var _originalSize = global.activePumpkin.size;
	var _originalColor = global.activePumpkin.color;
	var _newSize;
	var _newColor;
	
	for (var i = irandom_range(2,5); i > 0; i--) {
		_spawnX = irandom_range(256, window_get_width()-256);
		_spawnY = irandom_range(256, window_get_height()-256);
		_seed = instance_create_layer(_spawnX, _spawnY, "Seeds", oSeed);	
		
		_newColor = make_color_hsv(color_get_hue(_originalColor) - irandom_range(-10,10), color_get_saturation(_originalColor), color_get_value(_originalColor));
		_newSize = _originalSize*random_range(.95,1.05);
		with _seed {
			attributes = new Seed(_newColor, _newSize, global.activePumpkin.stem, global.activePumpkin.eyes, global.activePumpkin.nose, global.activePumpkin.mouth, false, global.activePumpkin.multiplier);
		}
	}
}