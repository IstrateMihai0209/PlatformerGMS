/// @description Constructor

enum Phase
{
	First,
	Second,
	Dialogue,
	Idle,
	Transition
}

phase = Phase.Idle;

hsp = 0;
hsp_fraction = 0;
vsp = 0;
vsp_fraction = 0;
grv = 0.3;
dir = 1;
attraction_point = noone;
countdown = 360;
cooldown_hits = 3;

CanGetHit = true;
CanBlock = true;
tilemap = layer_tilemap_get_id("Slopes");

flash = 0;
setalarm = 25;

attack_range = 300;
ready_to_attack = 30;
attack_3_times = 0;
attacking = false;
blocking = false;
move_away = 300;
target_x = 0;
used_transition = false;
first_dialogue = true;
second_dialogue = false;
i = 0;
onetime = 0;
//onetime2 = 1;

#region Variables that can change

maxhp = 6;
hp = maxhp;
walksp = 3;
damage = 3;
cutscene_target_x = 0;
if(global.dont_spawn_again == true)
{
	instance_destroy();
}

#endregion