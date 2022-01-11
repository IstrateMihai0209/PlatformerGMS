///@description create_cutscene(scene_info)
///@arg scene_info

var inst = instance_create_layer(0, 0, "Player", OCutscene);

with(inst)
{
	scene_info = argument[0];
	event_perform(ev_other, ev_user0);
}