///@description Go to Room

if(place_meeting(x, y, OPlayer))
{
	room_goto(targetRoom);
	global.order = global.EnemyCount[targetRoom];
	global.ChestOrder = global.ChestCount[targetRoom];
	global.tutorial_line_order=  global.tutorial_line_count[targetRoom];
	OPlayer.x = targetx;
	OPlayer.y = targety;
}