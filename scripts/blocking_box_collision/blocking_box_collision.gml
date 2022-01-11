///@description blocking_box_collision

if(place_meeting(x + hsp, y, OBlockingBox))
{
	while(not place_meeting(x+sign(hsp), y, OBlockingBox))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

if(place_meeting(x, y + vsp, OBlockingBox))
{
	while(not place_meeting(x, y + sign(vsp), OBlockingBox))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}