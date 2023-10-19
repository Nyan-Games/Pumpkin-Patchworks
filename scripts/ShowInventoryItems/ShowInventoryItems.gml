// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ShowInventoryItems(){
	for (var i = 0; i < 4; i++) {
		if (slotNumber == i) {
			if (global.seedInventory[|global.pageNumber*4 + i] != 0) {
				if (ds_list_size(global.seedInventory) >= (global.pageNumber*4 + i - 1)) {
						var seedSpawn = instance_create_layer(x,y,"Seeds",oSeed);
						with seedSpawn {
							inventoryMode = true;
							attributes = global.seedInventory[|(global.pageNumber*4 + i)];
						}
				}
			}
		}
	}
}