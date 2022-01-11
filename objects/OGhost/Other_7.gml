/// @description Change Animation

if(sprite_index == SGhostAppears)
{
	sprite_index = SGhost;
}

if(sprite_index == SGhostShriek)
{
	sprite_index = SGhostVanish;
}

if(sprite_index == SGhostVanish)
{
	instance_change(OGhostVanish, true);
}