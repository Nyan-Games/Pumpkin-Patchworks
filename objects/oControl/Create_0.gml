//sets the active pumpkin to null
global.activePumpkin = pointer_null;
global.splatter = false;
global.startSplatter = false;
global.pumpkinsCreated = 0;
global.splatterPattern = 0;

global.pumpkinList = ds_list_create();


showFullSplatter = false;
splatterFullScreenOpacity = 0;
splatterOpacity = 0;
fullSplatterFadeOut = false;

SpawnDefaultPumpkin();

// booty butt cheeks
