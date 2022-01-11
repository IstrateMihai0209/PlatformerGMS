///@description cutscene_wait(frames, stop_obj)
///@arg frames
///@arg stop_obj

with(argument[1])
{
	actualhascontrol = false; hasmovcontrol = false; walksp = 0;
}

timer++;

if(timer >= argument[0])
{
	timer = 0;
	cutscene_end_action();
}