/// @description Potion Effects

cooldown--;

if(cooldown <= 0)
{
	global.offset -= offset_value;
	with(PEffects) 
	{
		if(offset > other.offset)
		{
			offset -= offset_value;
		}
	}
	global.spells--;
	instance_destroy();
}