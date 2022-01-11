/// @description State Machine

#region Movement

vsp += grv;
if(dir != 0) {image_xscale = -dir;}
else{dir = 1;}

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

var floordist = in_floor(tilemap, x - 5, bbox_bottom + vsp);
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
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;*/

#endregion

#region State Machine

if(instance_exists(OPlayer))
{
	var distance_to_player = point_distance(OPlayer.x, y, x, y);
	
	if(distance_to_player < attack_range)
	{
		if(y < OPlayer.y - additional_v_distance or y > OPlayer.y + additional_v_distance)
		{
			state = "move";
		}else{state = "chase";}
	}else{state = "move";}
	
	if(distance_to_player <= ready_to_attack)
	{
		if(y < OPlayer.y - additional_v_distance or y > OPlayer.y + additional_v_distance)
		{
			state = "move";
		}else
		{
			if(CanAttack == true) {state = "attack";}
			else{state = "idle";}
		}
	}
}else{state = "move";}

switch(state)
{
	case "chase":
		if(not instance_exists(OPlayer)) {break;}
		
		sprite_index = SOculothoraxMove;
		
		dir = sign(OPlayer.x - x);
		
		if(place_meeting(x - 10, y, ORightStop) and dir > 0)
		{
			hsp = 0; 
			sprite_index = SOculothorax; 
		}else{hsp = walksp * dir;}
		
		if(place_meeting(x, y, OLeftStop) and dir < 0)
		{
			hsp = 0;
			sprite_index = SOculothorax;
		}
		
		break;
		
		
	case "idle":
		hsp = 0;
		sprite_index = SOculothorax;
		break;
		
		
	case "attack":
		sprite_index = SOculothoraxAttack;
		if(image_index >= 4 and image_index <= 5)
		{
			create_hitbox(x, y, self, SOculothoraxAttackDamage, 1, ocdamage, image_xscale, 0, false, OEnemyHitbox); 
		}
		hsp = 0;
		break;
		
	
	case "move":
		if(not instance_exists(attraction_point)) {break;}
		sprite_index = SOculothoraxMove;
		
		dir = sign(attraction_point.x - x);
		
		hsp = (walksp / 2) * dir;
		
		if(dir == 0) 
		{
			if(count == 0) {attraction_point = attraction_2; count++}
			else {attraction_point = attraction; count = 0;}
		}
		break;
}

#endregion

#region Ways to Die/Get Hurt

if(place_meeting(x, y + 10, OKillingSpikes)) {hp = 0;}

#endregion