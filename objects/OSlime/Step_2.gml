/// @description Dying Code

if(hp <= 0)
{
	hsp = 0;
	if(instance_exists(attraction_point)) {attraction_point.lifetime--;}
	instance_change(OSlimeDead, true);
	global.Enemy_looted[order] = true;
}