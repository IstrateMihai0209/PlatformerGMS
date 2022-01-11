/// @description Fall Down

if(not place_meeting(x+1, y+verticalspeed, OWall) and not place_meeting(x+1, y + verticalspeed, OUntouchableWall))
{
	y += verticalspeed;
}