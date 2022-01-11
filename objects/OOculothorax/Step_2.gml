/// @description Dying Code

if(hp <= 0)
{
	hsp = 0;
	with(attraction) {instance_destroy();}
	with(attraction_2) {instance_destroy();}
	instance_change(OOculothoraxDead, true);
	global.Enemy_looted[order] = true;
}