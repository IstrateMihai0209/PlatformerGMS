///@description Attack Ghost

//hit_something = true;

if (creator == noone or creator == other)
{
	exit;
}

with(other)
{
	if(CanGetHit == true)
	{
		hp -= other.damage;
		flash = 2;
		CanGetHit = false;
		alarm[0] = setalarm;
	}
}

instance_destroy();
screen_shake(3, 3);