/// @description Potion Effects

if(Chance > 0.5)
{
	cooldown--;
	with(OPlayer)
	{
		onetime = 1;
		walksp *= 1.66;
		if(aux == 0)
		{
			basicdamage *= 4;
			aux = 1;
		}
	}
}
else{
	cooldown--;
	with(OPlayer)
	{
		onetime = 1;
		walksp /= 10;
		if(aux == 0)
		{
			basicdamage /= 10;
			aux = 1;
		}
	}
}

if(cooldown <= 0)
{
	with(OPlayer)
	{
		basicdamage = other.auxbasicdamage;
		aux = 0;
	}
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