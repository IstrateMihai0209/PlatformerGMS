///@description special_powers_alpha_down(); Makes the special powers invisible
///when the player is below the camera

if(instance_exists(OCamera) and instance_exists(OPlayer))
{
	if((OCamera.y + 10) < OPlayer.y)
	{
		draw_set_alpha(0.1);
		if(OPlayerStats.CanSunburn == true)
		{
			alpha = 0.4;
		}else{alpha = 0;}
		if(OPlayerStats.CanFirespin == true)
		{
			alphaOne = 0.4;
		}else{alphaOne = 0;}
		if(OPlayerStats.angry == true)
		{
			alphaTwo = 0.4;
		}else{alphaTwo = 0;}
	}
	else
	{
		draw_set_alpha(1);
	}
}