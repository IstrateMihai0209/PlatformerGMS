/// @description Constructor

enum Fase 
{
	Attack,
	Dialogue,
	Idle
}

phase = Fase.Idle;

hsp = 0;
hsp_fraction = 0; 
vsp = 0; 
vsp_fraction = 0; 
grv = 0.3;
dir = -1; 
attraction_point = noone;
countdown = 300; 
cooldown_hits = 3; 

CanGetHit = true;
tilemap = layer_tilemap_get_id("Slopes");

flash = 0;

attack_range = 900; 
ready_to_attack = 800; 
attacking = false; 
move_away = 700; 
onetime = 0; 
setalarm = 25;
depth = 450;
first_dialogue = false;

#region Variables that can change

maxhp = 100;
hp = maxhp;
walksp = 5; 
damage = 2;
cutscene_target_x = 0;

if(global.Ghork_wont_spawn_again == true)
{
	instance_destroy();
}

#endregion