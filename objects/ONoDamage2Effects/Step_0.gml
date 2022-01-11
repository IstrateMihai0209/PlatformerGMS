/// @description Effects

cooldown--;
if(cooldown > 0)
{
	with(OPlayer) {CanGetHit = false;}
}
else
{
	with(OPlayer) {CanGetHit = true;}
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