audio_stop_all();

audio_play_sound(NotAFriendlyForest, 10, true);
audio_sound_gain(NotAFriendlyForest, 0, 0);
audio_sound_gain(NotAFriendlyForest, global.MusicVolume / global.divide_volume, 10000);