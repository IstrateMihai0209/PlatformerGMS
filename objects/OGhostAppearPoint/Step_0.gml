/// @description Make the Ghost appear

if(place_meeting(x, y, OPlayer))
{
	if(OPlayer.image_xscale > 0)
	{
		with(instance_create_layer(SpawnX, SpawnY, "Enemy", OGhost))
		{
			dir = sign(OPlayer.image_xscale);
		}
	}
	
	if(OPlayer.image_xscale < 0)
	{
		with(instance_create_layer(SpawnX2, SpawnY2, "Enemy", OGhost))
		{
			dir = sign(OPlayer.image_xscale);
		}
	}
	
	instance_destroy();
}