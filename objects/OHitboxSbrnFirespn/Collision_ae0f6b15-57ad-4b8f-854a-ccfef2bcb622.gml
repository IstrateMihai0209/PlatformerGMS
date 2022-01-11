///@description Attack Slime

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
		}
		if(other.sprite_index == SFirespin)
		{
			hp -= OPlayer.firespin_damage;
			audio_stop_sound(SNFirespinHit); 
			audio_play_sound(SNFirespinHit, 1000, false);
			with(other) {instance_destroy();}
		}
		alarm[0] = setalarm;
	}
}

screen_shake(6, 6);