game_set_speed(60, gamespeed_fps);

audio_stop_sound(NotAFriendlyForest);
audio_stop_sound(Underground);

if(audio_is_playing(ThisIsADarkSong) == false)
{
	audio_play_sound(ThisIsADarkSong, 1, true);
	audio_sound_gain(ThisIsADarkSong, 0, 0);
	audio_sound_gain(ThisIsADarkSong, global.MusicVolume / global.divide_volume, 3000);
}

enemy_respawn_pos = room + 3;

global.EnemiesDeadInRoom[enemy_respawn_pos] = false;

if(global.player_created == false) 
{
	instance_create_layer(127, 1083, "Player", OPlayer); 
	instance_create_layer(23, 23, "GUI", OHealthbar);
	instance_create_layer(x, y, "GUI", OPlayerStats);
	instance_create_layer(x, y, "GUI", OSpecialPowers);
	instance_create_layer(x, y, "Transition", OGlobalChestVariables);
	instance_create_layer(x, y, "Transition", OGlobalEnemyVariables);
	with(instance_create_layer(x, y, "Transition", OPrintText))
	{
		print_text("Belens Forest.",
		"A few minutes earlier, Tomas was with me,\n\nnow I lost him.",
		"Hopefully nothing bad happened to him.\n\n\n ~ Jeremy Warblade ~");

		length = string_length(PrintText[currentline]);
	}
}