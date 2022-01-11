///@description Attack Skeleton Archer

if (creator == noone or creator == other)
{
	exit;
}

with(other)
{
	if(CanGetHit == true)
	{
		flash = 2;
		CanGetHit = false;
		if(other.sprite_index == SSunburn) 
		{
			hp -= OPlayer.basicdamage;
			audio_stop_sound(SNSunburnHit); 
			audio_play_sound(SNSunburnHit, 1000, false);
		}else{hp -= OPlayer.firespin_damage; cooldown_hits--;}
		alarm[0] = setalarm;
	}
}

if(sprite_index == SFirespin) 
{
	audio_play_sound(SNFirespinHit, 1000, false);
	audio_play_sound(SNHitSkeleton, 1200, false);
	instance_destroy();
}

screen_shake(6, 6);