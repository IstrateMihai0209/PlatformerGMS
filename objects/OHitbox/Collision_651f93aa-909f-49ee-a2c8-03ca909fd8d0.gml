///@description Attack Oculothorax

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
		alarm[0] = setalarm;
		audio_play_sound(SNHitOculothorax, global.SoundVolume / global.divide_volume, false);
	}
}

//instance_destroy();
screen_shake(5, 3);