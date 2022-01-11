/// @description Explode

with(other)
{
	if(CanGetHit == true)
	{
		hp -= 4;
		flash = 2;
	}
	audio_play_sound(SNHitPlayer, 1000, false);
}

screen_shake(30, 15);
Create_Explosion(x, y);
audio_play_sound(SNTNTExplosion, 500, false);
instance_destroy();