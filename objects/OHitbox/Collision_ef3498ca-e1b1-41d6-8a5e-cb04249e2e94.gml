///@description Attack Underground Leader

hit_something = true;

if (creator == noone or creator == other)
{
	exit;
}

with(other)
{
	if(blocking == false)
	{
		if(CanGetHit == true)
		{
			hp -= other.damage;
			flash = 2;
			CanGetHit = false;
			audio_play_sound(SNHitSkeleton, global.SoundVolume / global.divide_volume, false);
			alarm[0] = setalarm;
		}
	}
	else
	{
		if(CanGetHit == true)
		{
			flash = 2;
			CanGetHit = false;
			audio_play_sound(SNHitBossShield, 1000, false);
			alarm[0] = setalarm;
			cooldown_hits--;
		}
	}
}

screen_shake(5, 3);
instance_destroy();