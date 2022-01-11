/// @description State Machine

#region Movement

vsp += grv;
image_xscale = dir;

#endregion

#region Collision

hsp += hsp_fraction;
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

if(dir == -1)
{
	var floordist = in_floor(tilemap, x - 33, bbox_bottom + vsp);
}else{var floordist = in_floor(tilemap, x + 33, bbox_bottom + vsp);}

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

y += vsp;

#endregion

#region State Machine

if(instance_exists(OPlayer))
{
#region Attack Phase

var distance_to_player = point_distance(OPlayer.x, y, x, y);

if(phase == Fase.Attack)
{
	
	audio_sound_gain(ULeader, global.MusicVolume / global.divide_volume, 6000);
if(onetime == 0)
{
	if(audio_is_playing(ULeader) == false) //change later with a new song, but maybe not
	{
		audio_stop_all();
		audio_play_sound(ULeader, 1, true);
		audio_sound_gain(ULeader, 0, 0);
		
	}
	onetime = 1;
}

if(distance_to_player > ready_to_attack and attacking == false)
{
	//cooldown--;
	sprite_index = SSkArcherRun;
	dir = sign(OPlayer.x - x);
	
	hsp = walksp * dir;
	
	if(place_meeting(x + sign(hsp), y, OLeftStop) and dir < 0)
	{
		hsp = 0;
		sprite_index = SSkArcher;
	}
	if(place_meeting(x + sign(hsp), y, ORightStop) and dir > 0)
	{
		hsp = 0;
		sprite_index = SSkArcher;
	}
}

if(distance_to_player <= ready_to_attack and cooldown_hits > 0)
{
	if(sign(x - OPlayer.x) >= 0 and attacking == false)
	{
		dir = -1;
	}
	if(sign(x - OPlayer.x) <= 0 and attacking == false)
	{
		dir = 1;
	}
		
	hsp = 0;
	//cooldown--;
	attacking = true;
	sprite_index = SSkArcherAttack;
	
	if(image_index >= 11 and image_index <= 13)
	{
		create_hitbox(x, y - 12, self, SArrow, 100, damage, image_xscale, 25, true, OEnemyAirHitbox);
	}
	
	target_x = x + move_away;
	countdown = 300;
}

if(cooldown_hits <= 0)
{
	attacking = false;
	if(x != target_x)
	{
		sprite_index = SSkArcherRun;
		dir = sign(move_away);
		hsp = walksp * dir;
		if(place_meeting(x + sign(hsp), y, OLeftStop) and dir < 0)
		{
			target_x = x;
		}
		if(place_meeting(x + sign(hsp), y, ORightStop) and dir > 0)
		{
			target_x = x;
		}
	}
	else
	{
		hsp = 0;
		sprite_index = SSkArcher;
		dir = sign(OPlayer.x - x);
		countdown--;
		if(countdown <= 0)
		{
			move_away *= -1;
			cooldown_hits = 3;
		}
	}
}
}

#endregion

#region Idle Phase

if(phase == Fase.Idle) {hsp = 0;}

#endregion

#region Dialogue Phase

if(phase == Fase.Dialogue)
{
	stop_player_control();
	

	dialog_show(2);
		
	if(ODialog.convoIndex == ODialog.convoDialogCount and ODialog.convoIndex != 0)
	{
		first_dialogue = false;
		phase = Fase.Attack;
		dialog_reset();
	}
		
	if(x >= cutscene_target_x + 4 or x <= cutscene_target_x - 4)
	{
		sprite_index = SSkArcherRun;
		dir = sign(cutscene_target_x - x);
		hsp = walksp * dir;
	}
	else
	{
		hsp = 0;
		sprite_index = SSkArcher;
	}
}//else{start_player_control();}

#endregion

#region Death

if(hp <= 0) {instance_change(OSkeletonArcherDead, true); global.Ghork_wont_spawn_again = true;}

#endregion
}else{sprite_index = SSkArcher;}

#endregion