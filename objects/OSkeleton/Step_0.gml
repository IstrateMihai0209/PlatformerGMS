/// @description State Machine

#region Movement

vsp += grv;
image_xscale = dir * 2;

#endregion

#region Collision

collision();

/*hsp += hsp_fraction;
vsp += vsp_fraction;

hsp_fraction = hsp % 1;
hsp -= hsp_fraction;
vsp_fraction = vsp % 1;
vsp -= vsp_fraction;

if(place_meeting(x + hsp, y, OWall))
{
	while(not place_meeting(x + sign(hsp), y, OWall))
	{
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;


var floordist = in_floor(tilemap, x, bbox_bottom + vsp);
if(floordist >= 0)
{
	y += vsp;
	y -= (floordist + 1);
	vsp = 0;
	floordist = -1;
}

if(place_meeting(x, y + vsp, OWall))
{
	while(not place_meeting(x, y + sign(vsp), OWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;*/

#endregion

#region State Machine

if(instance_exists(OPlayer))
{	
	var distance_to_player = point_distance(OPlayer.x, y, x, y);

	if(distance_to_player < attack_range)
	{	
		if(y < OPlayer.y - additional_v_distance)
		{
			state = "chase 2";
		}else{state = "chase";}
		if(y > OPlayer.y + additional_v_distance)
		{
			state = "idle";
		}
	}
	
	if(distance_to_player > attack_range) {state = "idle";}

	if(distance_to_player <= ready_to_attack)
	{
		if(y >= OPlayer.y - additional_v_distance and CanAttack == true)
		{
			state = "attack";
		}else{state = "idle";}
		if(y > OPlayer.y + additional_v_distance)
		{
			state = "idle";
		}
	}
}else{state = "idle";}

switch(state)
{
	case "chase":
		if(not instance_exists(OPlayer)){break;}
		
		sprite_index = SSkeletonWalk;
		
		dir = sign(OPlayer.x - x);
		
		if(place_meeting(x + sign(hsp), y + sign(vsp), ORightStop) and dir > 0)
		{
			hsp = 0; 
			sprite_index = SSkeleton; 
		}else{hsp = walksp * dir;}
		
		if(place_meeting(x + sign(hsp), y + sign(vsp), OLeftStop) and dir < 0)
		{
			hsp = 0;
			sprite_index = SSkeleton;
		}
		
		break;	
		
		
	case "chase 2":
		if(instance_exists(attraction_point)) {dir = sign(attraction_point.x - x);}
		sprite_index = SSkeletonWalk;
		
		if(place_meeting(x + sign(hsp), y + sign(vsp), ORightStop) and dir > 0)
		{
			hsp = 0; 
			sprite_index = SSkeleton; 
		}else{hsp = walksp * dir;}
		
		if(place_meeting(x + sign(hsp), y + sign(vsp), OLeftStop) and dir < 0)
		{
			hsp = 0;
			sprite_index = SSkeleton;
		}
		break;
	
	
	case "idle":
		hsp = 0;
		sprite_index = SSkeleton;
		break;
		
		
	case "attack":
		sprite_index = SSkeletonAttack;
		if(image_index == 7)
		{
			create_hitbox(x, y, self, SSkeletonAttackDamage, 1, skdamage, image_xscale, 0, false, OEnemyHitbox);
		}
		hsp = 0;
		break;
}

#endregion

#region Ways to Die/Get Hurt

if(place_meeting(x, y + 10, OKillingSpikes)) {hp = 0;}

#endregion