///@description Collision/Movement etc.

#region Get Player Movement & State Machine Controller

if(hascontrol == true)
{	
	if(actualhascontrol == true)
	{
		space_key = keyboard_check_pressed(vk_space);
		space_key_held = keyboard_check(vk_space);
		attack_key = keyboard_check_pressed(ord("J"));
		block_key = keyboard_check(ord("K"));
		cast_key = keyboard_check_pressed(ord("N"));
		cast2_key = keyboard_check_pressed(ord("M"));
		drink_potion = keyboard_check_pressed(ord("H"));
	}
	if(hasmovcontrol == true)
	{
		left_key = keyboard_check(vk_left) || keyboard_check(ord("A"));
		right_key = keyboard_check(vk_right) || keyboard_check(ord("D"));
	}
		
	if(attack_key == true and vsp == 0 and oneattack == 0 and InAir == false)
	{		
		state = "attack one";
		image_index = 0;
	}
	
	if(cast_key == true and oneattack == 0 and OPlayerStats.CanFirespin == true
	and vsp == 0 and InAir == false)
	{
		state = "cast";
		image_index = 0;
	}
	
	if(cast2_key == true and oneattack == 0 and OPlayerStats.CanSunburn == true
	and vsp == 0 and InAir == false)
	{
		state = "cast 2";
		image_index = 0;
	}
	
	if(drink_potion == true)
	{
		for(cnt = 0; cnt <= 11; cnt++)
		{
			if(global.Spot[cnt] == SHealthPotion)
			{
				use_all_items_rearrange_inventory_H();
			}
		}	
	}
	
	if(block_key == true and vsp == 0 and state != "attack one")
	{
		state = "block";
	}
	
	if(keyboard_check_released(ord("K")) == true) 
	{
		state = "move"; block_loop = false; image_index = 0;
	}
}

#endregion

#region State

switch(state) 
{	
	case "cast":
		oneattack = 1;
		sprite_index = SPlayerCast2;
		hsp = 0;
		vsp = 0;
		
		/*oneattack = 1;
		sprite_index = SPlayerCast2;
		hsp = 0;
		vsp = 0;
		instance_create_layer(x, bbox_top - 40, "Player", OProtectionCircle);*/
		
		break;
		
	
	case "cast 2":
		oneattack = 1;
		sprite_index = SPlayerCast2;
		hsp = 0;
		vsp = 0;
		break;
	
		
	case "attack one":	
		oneattack = 1;
		if(OPlayerStats.angry == false)
		{
			switch(attack)
			{
				case 0:
					sprite_index = SPlayerAttackA;
					if(image_index >= 5 and image_index <= 6) {create_hitbox(x, y, self, SPlayerAttackADamage, 1 , basicdamage, image_xscale, 0, false, OHitbox);}
					break;
				case 1:
					sprite_index = SPlayerAttackB;
					if(image_index >= 6 and image_index <= 7) {create_hitbox(x, y, self, SPlayerAttackBDamage, 1, basicdamage, image_xscale, 0, false, OHitbox);}
					break;
				case 2:
					sprite_index = SPlayerAttackC;
					if(image_index >= 6 and image_index <= 7) {create_hitbox(x, y, self, SPlayerAttackCDamage, 1, basicdamage, image_xscale, 0, false, OHitbox);}
					break;	
		
			}
		}
		
		else
		{
			switch(attack)
			{
				case 0:
					sprite_index = SPlayerAttackAAngry;
					if(image_index >= 5 and image_index <= 6) {create_hitbox(x, y, self, SPlayerAttackADamage, 1 , basicdamage * 3, image_xscale, 0, false, OHitbox);}
					break;
				case 1:
					sprite_index = SPlayerAttackBAngry;
					if(image_index >= 6 and image_index <= 7) {create_hitbox(x, y, self, SPlayerAttackBDamage, 1, basicdamage * 3, image_xscale, 0, false, OHitbox);}
					break;
				case 2:
					sprite_index = SPlayerAttackCAngry;
					if(image_index >= 6 and image_index <= 7) {create_hitbox(x, y, self, SPlayerAttackCDamage, 1, basicdamage * 3, image_xscale, 0, false, OHitbox);}
					break;				
			}
		}
		hsp = 0;
		break;
		
	case "move":
		move = right_key - left_key;
		hsp = move * walksp * 2;
		vsp = vsp + grv;
		
		if(not place_meeting(x, y + 1, OWall) and not place_meeting(x, y + 1, OUntouchableWall) and vsp != 0)
		{
			sprite_index = SPlayerJumpLoop2;
		}
		else{
			if(hsp == 0)
			{
				sprite_index = SPlayer2;
			}
			if(hsp != 0)
			{
				sprite_index = SPlayerRun2;
			}
		}
		
		if(place_meeting(x, y + 1, OWall))
		{
			oneattack = 0;
		}
		
		if(sign(hsp) != 0)
		{
			image_xscale = 1.25 * sign(hsp);
		}
		
		if(place_meeting(x, y+1, OWall) or place_meeting(x, y+1, OUntouchableWall))
		{
			if(space_key == true)
			{
				vsp = jumpspeed;
				InAir = true;
				audio_play_sound(Jump, 900, false);
			}
		} 
		if(vsp < 0 and space_key_held != true) 
		{
			vsp = max(vsp, vsp/1.25);
		} 
		break;	
		
	case "block":
		if(block_loop == false) {sprite_index = SPlayerBlock;}
		else {sprite_index = SPlayerBlockLoop;}
		hsp = 0;
		vsp = vsp + grv;
		break;
}

#endregion

#region Collision 

blocking_box_collision();
player_collision();

#endregion

show_debug_message(string(global.spells));