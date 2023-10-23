// Inherit the parent event
event_inherited();

global.pressCounter = 0;

audio_play_sound(laugh_old_man_6, 0, false);
dialog.add(sFarmer, "By the great shinin' pumpkin and all its seeds, you've done it.");
dialog.add(sFarmer, "We're gonna be rich!");
dialog.add(sFarmer, "Now be careful. Approach slowly like and...");
dialog.add(sFarmer, "GET THE SEEDS, SMASH IT FOR ALL ITS WORTH!!");

//add some kind of counter for the number of key presses. Over 4 and switch to FinalSmash