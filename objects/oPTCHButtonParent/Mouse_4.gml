image_alpha = .7;

if !audio_is_playing(picking_flower)
{
audio_play_sound(choose(planting_01, planting_02, planting_03, planting_04, planting_05), 0, false, random_range(.7, 1.3));
}
alarm[0] = 10;