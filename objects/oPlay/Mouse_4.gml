// Inherit the parent event
event_inherited();
// if button pressed, cutscene becomes true
cutscene = true;

//destroys a cutscene if there is one when it is done
if (cutscene != noone)
{
	with cutscene instance_destroy();
}


