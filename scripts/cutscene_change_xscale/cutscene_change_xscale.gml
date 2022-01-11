///@description cutscene_change_xscale(obj_id);
///@arg obj_id

with(argument[0])
{
	image_xscale = -image_xscale;
}

cutscene_end_action();