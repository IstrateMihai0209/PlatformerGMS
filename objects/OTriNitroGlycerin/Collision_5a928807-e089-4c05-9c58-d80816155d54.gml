/// @description Explode

with(other)
{
	if(CanGetHit == true)
	{
		hp -= 5;
		flash = 2;
	}
	audio_play_sound(SNHitPlayer, 1000, false);
}

screen_shake(30, 15);
Create_Explosion(x, y);
instance_destroy();