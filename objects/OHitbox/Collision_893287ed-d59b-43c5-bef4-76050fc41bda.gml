///@description Attack Slime

hit_something = true;

if (creator == noone or creator == other)
{
	exit;
}

with(other)
{
	if(CanGetHit == true)
	{
		hp -= other.damage;
		flash = 2;
		CanGetHit = false;
		audio_play_sound(SNSlimeHit, global.SoundVolume / global.divide_volume, false);
		alarm[0] = setalarm;
	}
}

//instance_destroy();
screen_shake(5, 3);
