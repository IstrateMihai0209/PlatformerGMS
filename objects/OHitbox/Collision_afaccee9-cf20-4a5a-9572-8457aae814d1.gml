///@description Attack Skeleton Archer

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
		audio_play_sound(SNHitSkeleton, global.SoundVolume / global.divide_volume, false);
		cooldown_hits--;
		alarm[0] = setalarm;
	}
}

instance_destroy();
screen_shake(5, 3);