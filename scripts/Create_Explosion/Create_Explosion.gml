///@desc create_explosion(x, y);
///@arg x
///@arg y

var xx = argument0;
var yy = argument1;

repeat(20)
{
	instance_create_layer(xx-16+random(32), yy-16+random(32), "Walls", OExplosionPiece);
}
