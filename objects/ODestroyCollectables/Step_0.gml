/// @description Destroy Collectables

if(cooldown > 0)
{
	with(PCollectables) {instance_destroy();}
}else{instance_destroy();}

cooldown--;