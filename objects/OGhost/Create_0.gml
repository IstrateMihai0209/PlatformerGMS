/// @description Constructor

image_xscale = 2.5;
image_yscale = 2.5;

sprite_index = SGhostAppears;
flash = 0;
damage = 2;
onetime = 0;
CanGetHit = true;
hp = 1;
setalarm = 2;
howmany = 2;
ready_to_attack = 60;
attack_range = 30;
ghost_damage = 2;

global.order++;
order = global.order;
enemy_already_dead();

enemy_drop_set_variables();