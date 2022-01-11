game_set_speed(60, gamespeed_fps);

audio_stop_sound(NotAFriendlyForest);
audio_stop_sound(Underground);

if(audio_is_playing(ThisIsADarkSong) == false)
{
	audio_play_sound(ThisIsADarkSong, 1, true);
	audio_sound_gain(ThisIsADarkSong, 0, 0);
	audio_sound_gain(ThisIsADarkSong, 1, 3000);
}

enemy_respawn();