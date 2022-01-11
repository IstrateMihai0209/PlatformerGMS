///@description Pause Game

if(instance_exists(OInventory)) 
{	
	if(OInventory.drawbool == true)
	{
		OInventory.drawbool = false;
	}
	else
	{
		instance_create_layer(x, y, "Player", OPause);
	}
}
else
{
	instance_create_layer(x, y, "Player", OPause);
}