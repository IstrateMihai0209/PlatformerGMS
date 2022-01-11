/// @description Constructor

hsp = 0;
hsp_fraction = 0;
vsp = 0;
vsp_fraction = 0;
walksp = 2;
grv = 0.3;
dir = 1;

state = "idle";
CanGetHit = true;
CanAttack = true;
tilemap = layer_tilemap_get_id("Slopes");

flash = 0;
setalarm = 25;
ocdamage = 1;
count = 0;
howmany = 3;

attack_range = 250;
ready_to_attack = 45;
additional_v_distance = 100;

global.order++;
order = global.order;
enemy_already_dead();

hp = 4;

enemy_drop_set_variables();