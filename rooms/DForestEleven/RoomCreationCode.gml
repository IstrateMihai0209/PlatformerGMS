game_set_speed(60, gamespeed_fps);

audio_stop_sound(NotAFriendlyForest);
audio_stop_sound(ThisIsADarkSong);

if(audio_is_playing(Underground) == false)
{
	audio_play_sound(Underground, 1, true);
	audio_sound_gain(Underground, 0, 0);
	audio_sound_gain(Underground, global.MusicVolume / global.divide_volume, 3000);
}

global.player_created = true;
enemy_respawn();