/// @description At the start of the room, the volume will change itself

for(var i = 0; i < 100; i++)
{
	audio_sound_gain(Song[i], global.MusicVolume / global.divide_volume, 0);
}

for(var j = 0; j < 100; j++)
{
	audio_sound_gain(SoundEffect[j], global.SoundVolume / global.divide_volume, 0);
}

object_cooldown--;

if(object_cooldown <= 0)
{
	instance_destroy();
}