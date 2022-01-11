///@description Constructor

if(global.first_cutscene == false)
{
	instance_destroy();
	//exit;
}

instance_deactivate_all(true);

spd = 0.3;
letters = 0;
currentline = 0;

text = "";

start = false;

alarm[0] = 80;