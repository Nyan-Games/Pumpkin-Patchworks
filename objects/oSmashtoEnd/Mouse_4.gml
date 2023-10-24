alarm[0] = 99;


audio_stop_sound(power_charge1);

if (!audio_is_playing(explosion))
{
	audio_play_sound(explosion, 0, false);
}


