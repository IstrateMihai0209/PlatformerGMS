///@description cutscene_move_character(obj, x, y, relative?, spd)
///@arg obj
///@arg x
///@arg y
///@arg relative?
///@arg spd

var obj = argument[0];
var relative = argument[3];
var spd = argument[4];

if(x_dest == -1)
{
	if(relative == false)
	{
		x_dest = argument[1];
		y_dest = argument[2];
	}else{
		x_dest = obj.x + argument[1];
		y_dest = obj.y + argument[2];
	}
}

var xx = x_dest;
var yy = y_dest;

with(obj)
{
	actualhascontrol = false; hasmovcontrol = false; walksp = 0;
	if(point_distance(x, y, xx, yy) >= spd)
	{
		var dir = point_direction(x, y, xx, yy);
		var ldirx = lengthdir_x(spd, dir);
		var ldiry = lengthdir_y(spd, dir);
		
		x += ldirx;
		y += ldiry;
	}else{
		x = xx;
		y = yy;
		
		with(other)
		{
			x_dest = -1;
			y_dest = -1;
			cutscene_end_action();
		}
	}
}