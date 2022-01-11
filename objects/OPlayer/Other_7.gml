///@description Changing State

switch(state)
{
	case "attack one":
		oneattack = 0;
		switch(attack)
		{
			case 0:
				attack++;
				if(OPlayerStats.angry == true)
				{
					OPlayerStats.angry = false;
					angry_cooldown = 180;
				}
				break;
			case 1:
				attack++;
				if(OPlayerStats.angry == true)
				{
					OPlayerStats.angry = false;
					angry_cooldown = 180;
				}
				break;
			case 2:
				attack = 0;
				if(OPlayerStats.angry == true)
				{
					OPlayerStats.angry = false;
					angry_cooldown = 180;
				}
				break;
		}
		state = "move";
		block_loop = false;
		image_index = 0;	
		break;
		
	
	case "cast":
		oneattack = 0;
		state = "move";
		image_index = 0;
		create_hitbox(x, y - 30, self, SFirespin, 100, basicdamage, sign(image_xscale), 15, true, OHitboxSbrnFirespn);
		OPlayerStats.CanFirespin = false;
		audio_play_sound(SNFirespinUse, 1000, false);
		oneattack = 0;
		state = "move";
		image_index = 0;
		break;
		
		
	case "cast 2":
		oneattack = 0;
		state = "move";
		image_index = 0;
		create_hitbox(x + (50 * image_xscale), y - 30, self, SSunburn, 200, 1, sign(image_xscale), 0, true, OHitboxSbrnFirespn);
		OPlayerStats.CanSunburn = false;
		audio_play_sound(SNSunburnUse, 1000, false);
		break;
		
		
	/*case "attack two":
		oneattack = 0;
		switch(attack2)
		{
			case 0:
				attack2++;
				break;
			case 1:
				attack2--;
				break;
		}
		state = "move";
		image_index = 0;
		break;*/
		
		
	case "block":
		block_loop = true; 
		break;
}

