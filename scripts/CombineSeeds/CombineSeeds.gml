// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CombineSeeds(_seed1,_seed2){
	if (_seed2 = undefined) {
			_mixedColor = _seed1.color;
			_mixedSize = _seed1.size;
			_newStem = _seed1.stem;
			_newEyes = _seed1.eyes;
			_newNose = _seed1.nose;
			_newMouth = _seed1.mouth;
			_newMultiplier = _seed1.multiplier*1.05;
	} else {
		var _mixAmount = random(1);
		var _mixedColor = merge_color(_seed1.color, _seed2.color,_mixAmount);
		 var _mixedSize = (_seed1.size + _seed2.size)/2;
		var _assetPriority = irandom(1);
		var _newEyes;

		if (_assetPriority = 1) {
			_newEyes = _seed2.eyes;
		} else {
			_newEyes = _seed1.eyes;
		}	

		var _assetPriority = irandom(1);
		var _newNose;

		if (_assetPriority = 1) {
			_newNose = _seed2.nose;
		} else {
			_newNose = _seed1.nose;
		}	

		var _assetPriority = irandom(1);
		var _newMouth;

		if (_assetPriority = 1) {
			_newMouth = _seed2.mouth;
		} else {
			_newMouth = _seed1.mouth;
		}	

		var _assetPriority = irandom(1);
		var _newStem;

		if (_assetPriority = 1) {
			_newStem = _seed2.stem;
		} else {
			_newStem = _seed1.stem;
		}
		
		_newMultiplier = ((_seed1.multiplier+_seed2.multiplier)/2)*1.05;
	}
//var _newSeed = new Seed(_mixedColor,_mixedSize,_newStem,_newEyes,_newNose,_newMouth,true);
var _newSeed = new Seed(_mixedColor,_mixedSize,_newStem,_newEyes,_newNose,_newMouth,true,_newMultiplier);
ds_list_insert(global.seedInventory, 0, _newSeed);
show_debug_message("seecombined");
	global.seed1 = undefined;
	global.seed2 = undefined;
}