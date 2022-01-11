/// @description Constructor

start = false;

spd = 0.25;
letters = 0;

text = "";      

global.tutorial_line_order++;
order = global.tutorial_line_order;

if(global.tutorial_line_exist[order] == false)
{
	instance_destroy();
}