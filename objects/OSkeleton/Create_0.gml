///@description Constructor

image_xscale = 2;
image_yscale = 2;

hsp = 0;
hsp_fraction = 0;
vsp = 0;
vsp_fraction = 0;
walksp = 2;
grv = 0.3;
dir = 1;
attraction_point = noone;

state = "idle";
CanGetHit = true;
CanAttack = true;
tilemap = layer_tilemap_get_id("Slopes");

flash = 0;
setalarm = 25;
skdamage = 1;

attack_range = 650;
ready_to_attack = 70;
additional_v_distance = 150;
howmany = 3;

global.order++;
order = global.order;
enemy_already_dead();

hp = 6;

enemy_drop_set_variables();