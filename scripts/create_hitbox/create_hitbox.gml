///@desc create_hitbox(x, y, creator, sprite, knockback, damage);
///@arg x
///@arg y
///@arg creator
///@arg sprite
///@arg lifetime
///@arg damage
///@arg xscale
///@arg movement
///@arg visibility
///@arg defhitbox

var x_pos = argument[0];
var y_pos = argument[1];
var creator = argument[2];
var sprite = argument[3];
var lifetime = argument[4];
var damage = argument[5];
var xscale = argument[6];
var movement = argument[7];
var visibility = argument[8];

var hitbox = instance_create_layer(x_pos, y_pos, "Player", argument[9]);
hitbox.sprite_index = sprite;
hitbox.lifetime = lifetime;
hitbox.creator = creator;
hitbox.damage = damage;
hitbox.image_xscale = xscale;
hitbox.movement = movement;
hitbox.visible = visibility;