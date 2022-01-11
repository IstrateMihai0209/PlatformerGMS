/// @description Hit Wall with the Hitbox

if(global.can_destroy_boxes == true)
{
	if(randomnumber < 0.5) {sprite_index = SBlockingBoxBroken;}
	if(randomnumber >= 0.5) {sprite_index = SBlockingBoxBrokenTwo;} 
	image_speed = 1.5
}
