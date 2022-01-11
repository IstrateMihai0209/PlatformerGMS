/// @description State Machine

#region Movement

vsp += grv;
image_xscale = dir;

#endregion

#region Collision

ULeader_collision(33);

#endregion

#region Phase Machine

if(instance_exists(OPlayer))
{

var distance_to_player = point_distance(OPlayer.x, y, x, y);

if(hp >= maxhp / 1.5 and phase != Phase.Dialogue and first_dialogue != true) {phase = Phase.First;}
if(hp <= maxhp / 1.5 and phase != Phase.Dialogue)
{
	if(used_transition == false) 
	{
		if(instance_exists(OHitboxSbrnFirespn))
		{
			with(OHitboxSbrnFirespn) {instance_destroy();}
		}
		phase = Phase.Dialogue;
		second_dialogue = true;
		with(OHitboxSbrnFirespn) {instance_destroy();}
		hsp = 0;
	}
	else{phase = Phase.First; walksp = 5; damage = 3;}
}


#region First Phase

if(phase == Phase.First)
{
	audio_sound_gain(ULeader, global.MusicVolume / global.divide_volume, 6000);
	if(onetime == 0) 
	{
		if(audio_is_playing(ULeader) == false)
		{
			audio_play_sound(ULeader, 1000, true);
			audio_sound_gain(ULeader, 0, 0);
		}
		onetime = 1;
	}
	
	if(distance_to_player > ready_to_attack and attacking == false and blocking == false)
	{
		sprite_index = SUndergroundLeaderARun;
		dir = sign(OPlayer.x - x);
		
		hsp = walksp * dir;
		
		if(place_meeting(x + sign(hsp), y, OLeftStop) and dir < 0)
		{
			hsp = 0;
			sprite_index = SUndergroundLeaderA;
		}
		if(place_meeting(x + sign(hsp), y, ORightStop) and dir > 0)
		{
			hsp = 0;	
			sprite_index = SUndergroundLeaderA;
		}
	}
	
	/*if(place_meeting(x, y, OHitboxSbrnFirespn) and CanBlock == true)
	{
		if(OHitboxSbrnFirespn.sprite_index != SSunburn)
		{
			hsp = 0;
			image_index = 0;
			sprite_index = SUndergroundLeaderABlock;
			blocking = true;
			attacking = false;
		}
	}*/
	
	if(distance_to_player <= ready_to_attack and cooldown_hits > 0 and blocking == false)
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
		attacking = true;
		sprite_index = SUndergroundLeaderAAttack;
		if(image_index >= 8 and image_index <= 10)
		{
			create_hitbox(x, y, self, SAAttackDamage, 1, damage, image_xscale, 0, false, OEnemyHitbox);
		}
		target_x = x + move_away;
		countdown = 360;
	}
	
	UndergroundLeader_block();
}
	if(cooldown_hits <= 0)
	{
		blocking = false;
		attacking = false;
		CanBlock = false;
		if(x != target_x) 
		{
			sprite_index = SUndergroundLeaderARun;
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
			sprite_index = SUndergroundLeaderA; 
			countdown--;
			if(countdown <= 0)
			{
				CanBlock = true;
				move_away *= -1;
				cooldown_hits = 3;
			}
		}	
}



#endregion

#region Dialog Phase

if(phase == Phase.Dialogue)
{
	stop_player_control();
	dir = sign(OPlayer.x - x);
	
	if(first_dialogue == true)
	{
		dialog_show(0);
		
		if(ODialog.convoIndex == ODialog.convoDialogCount and ODialog.convoIndex != 0)
		{
			first_dialogue = false;
			phase = Phase.First;
			dialog_reset();
		}
		
		if(x <= cutscene_target_x - 3 or x >= cutscene_target_x + 3)
		{
			sprite_index = SUndergroundLeaderARun;
			dir = sign(cutscene_target_x - x);
			hsp = walksp * dir;
		}
		else
		{
			hsp = 0;
			sprite_index = SUndergroundLeaderA;
		}
	}
	if(second_dialogue == true)
	{
		sprite_index = SUndergroundLeaderA;
		hsp = 0;
		
		if(used_transition == false) {dialog_show(1);}
		
		if(ODialog.convoIndex == ODialog.convoDialogCount and ODialog.convoIndex != 0)
		{
			used_transition = true;
			phase = Phase.First;
			//dialog_reset();
		}
	}
}

#endregion

#region Idle Phase

if(phase == Phase.Idle){hsp = 0;}

#endregion
}else{sprite_index = SUndergroundLeaderA;}

#endregion

#region Death

if(hp <= 0){instance_change(OUndergroundLeaderDead, true); global.dont_spawn_again = true;}

#endregion