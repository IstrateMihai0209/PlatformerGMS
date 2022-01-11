/// @description Run cutscene if player collides

if(place_meeting(x, y, OPlayer))
{	
	if(instance_exists(OUndergroundLeader)) // 1
	{
		with(OPlayer) {stop_player_control();}
		with(OUndergroundLeader)
		{
			phase = Phase.Dialogue;
		}
	}
	
	if(instance_exists(OSkeletonArcher)) // 2
	{
		with(OPlayer) {stop_player_control();}
		with(OSkeletonArcher)
		{
			phase = Fase.Dialogue;
		}
	}
	
	if(instance_exists(OTomas)) // 3
	{
		with(OPlayer) {stop_player_control();}
		with(OTomas)
		{
			phase = Faza.Talking;
		}
	}
	instance_destroy();
}