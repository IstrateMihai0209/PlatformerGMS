///@desc Particles(sprite, blend, min_life, max_life, min_scale, max_scale, scaling)
///@arg sprite
///@arg blend
///@arg min_life
///@arg max_life
///@arg min_scale
///@arg max_scale
///@arg scaling
///@arg gravity
///@arg grav_dir


var sprite = argument0;
var blend = argument1;
var min_life = argument2;
var max_life = argument3;
var min_scale = argument4;
var max_scale = argument5;
var scaling = argument6;
var grav = argument7;
var grav_dir = argument8;

var type = part_type_create();

part_type_alpha2(type, 0.75, 0);
part_type_sprite(type, sprite, false, true, false);
part_type_blend(type, blend);
part_type_size(type, min_scale, max_scale, scaling, false);
part_type_life(type, min_life, max_life);
part_type_gravity(type, grav, grav_dir);
part_type_orientation(type, 0, 360, 0, 0 , 0);

return type;
