/// @description Destroy imediat

lifetime--;

if(lifetime <= 0)
{
	instance_destroy();
}

if(place_meeting(x, y, OWall) and sprite_index == SFirespin)
{
	instance_destroy();
}

x += movement * image_xscale;