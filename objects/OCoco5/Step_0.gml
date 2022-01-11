/// @description Fall Down and Loot by The Player

if(not place_meeting(x, y + verticalspeed, OWall) and not place_meeting(x, y + verticalspeed, OUntouchableWall))
{
	y += verticalspeed;
}

if(place_meeting(x, y, OPlayer))
{
	with(OPlayerStats) {Cocos += 1;}
	instance_destroy();
}