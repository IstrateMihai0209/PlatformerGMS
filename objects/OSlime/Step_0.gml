/// @description State Machine

#region Movement

vsp += grv;
image_xscale = -dir;

#endregion

#region Collision

collision();

#endregion

#region State Machine

if(instance_exists(OPlayer))
{
	var distance_to_player = point_distance(OPlayer.x, y, x, y);

	if(instance_exists(OHitbox))
	{
		if(place_meeting(x, y, OHitbox))
		{
			hit_once = true;
		}
	}
	if(instance_exists(OHitboxSbrnFirespn))
	{
		if(place_meeting(x, y, OHitboxSbrnFirespn))
		{
			hit_once = true;
		}
	}

	if(distance_to_player < ready_to_attack and hit_once == true and CanAttack == true)
	{
		state = "attack";
		if(set_to_zero == false) 
		{
			image_index	= 0;
			set_to_zero = true;
		} //image index is set to 0
	}else{state = "idle";}

	if(distance_to_player > ready_to_attack) {state = "idle";}

	if(distance_to_player > attack_range and 
	distance_to_player < ready_to_attack and hit_once == true)
	{
		state = "move";
	}
}else{state = "idle";}

switch(state)
{
	case "idle":
		hsp = 0;
		sprite_index = SSlime;
		break;
		
	
	case "attack":
		sprite_index = SSlimeAttack;
		if(image_index >= 3 and image_index <= 4)
		{
			create_hitbox(x, y, self, SSlimeAttackDamage, 1, slime_damage, image_xscale, 0, false, OEnemyHitbox);
		}
		hsp = 0;
		break;
		
		
	case "move":
		if(not instance_exists(OPlayer)) {break;}
		
		sprite_index = SSlimeMove;
		
		dir = sign(OPlayer.x - x);
		
		if(place_meeting(x + sign(hsp), y + sign(vsp), ORightStop) and dir > 0)
		{
			hsp = 0; 
			sprite_index = SSlime; 
		}else{hsp = walksp * dir;}
		
		if(place_meeting(x + sign(hsp), y + sign(vsp), OLeftStop) and dir < 0)
		{
			hsp = 0;
			sprite_index = SSlime;
		}
		break;
}

#endregion

#region Ways to Die/Get Hurt

if(place_meeting(x, y + 10, OKillingSpikes)) {hp = 0;}

#endregion