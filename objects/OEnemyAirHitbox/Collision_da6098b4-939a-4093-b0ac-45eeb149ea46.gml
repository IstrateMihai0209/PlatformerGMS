/// @description Hit Player

if(instance_exists(OPlayer))
{

if (creator == noone or creator == other)
{
	exit;
}

with(other)
{
	if(state != "block")
	{
		if(CanGetHit == true)
		{
			hp -= other.damage;
			flash = 2;
			CanGetHit = false;
			audio_play_sound(SNHitPlayer, 50, false);
			alarm[0] = setalarm;
		}
	}
	else
	{
		/*if(sign(other.image_xscale) == -sign(image_xscale))
		{
			if(CanGetHit == true)
			{
				hp -= other.damage;
				flash = 2;
				CanGetHit = false;
				audio_play_sound(SNHitPlayer, 50, false);
				alarm[0] = setalarm;
			}
		}*/
		//else
		//{
			instance_create_layer(x + 20 * sign(image_xscale), y - 10, "Transition", OPlayerBlockEffectOne);
		//}
	}
}

}
screen_shake(3, 3);