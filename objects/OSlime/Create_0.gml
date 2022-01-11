/// @description Constructor

hsp = 0;
hsp_fraction = 0;
vsp = 0;
vsp_fraction = 0;
walksp = 1.5;
grv = 0.3;

state = "idle";
CanGetHit = true;
CanAttack = true;
tilemap = layer_tilemap_get_id("Slopes");

flash = 0;
setalarm = 25;
slime_damage = 1;
ready_to_attack = 360;
attack_range = 50;
attraction_point = noone;
hit_once = false;
howmany = 3;
drop = ONoCoco;
dropTwo = ONoCoco;
dropThree = ONoCoco;
dir = irandom(1);
if(dir == 0) {dir = -1;}
set_to_zero = false;

global.order++;
order = global.order;
enemy_already_dead();

hp = 5;
image_index = 0;

enemy_drop_set_variables();