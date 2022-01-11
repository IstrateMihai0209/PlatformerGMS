///@description cutscene_move_character_x(obj, x, relative?, spd)
///@arg obj
///@arg x
///@arg relative?
///@arg spd

var obj = argument[0];
var relative = argument[2];
var spd = argument[3];

if(x_dest == -1)
{
	if(relative == false)
	{
		x_dest = argument[1];
	}else{
		x_dest = obj.x + argument[1];
	}
}

var xx = x_dest;

with(obj)
{
	actualhascontrol = false; hasmovcontrol = false; walksp = 0;
	//sprite_index = spr_run;
	if(point_distance(x, y, xx, y) >= spd)
	{
		var dir = point_direction(x, y, xx, y);
		var ldirx = lengthdir_x(spd, dir);
		//var ldiry = lengthdir_y(spd, dir);
		
		x += ldirx;
		//y += ldiry;
	}else{
		x = xx;
		//y = yy;
		
		with(other)
		{
			x_dest = -1;
			//y_dest = -1;
			cutscene_end_action();
		}
	}
}