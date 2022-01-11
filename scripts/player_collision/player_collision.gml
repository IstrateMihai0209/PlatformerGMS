///@description player_collision

tilemap = layer_tilemap_get_id("Slopes");
var grounded = (in_floor(tilemap, x, bbox_bottom + 1) >= 0);
var howdeep = (in_floor(tilemap, bbox_left, bbox_bottom + 1) >= 0);

if(grounded == true or howdeep == true)
{	
	if(space_key == true)
	{
		grounded = false;
	}
}

hsp += hsp_fraction;
vsp += vsp_fraction;

hsp_fraction = hsp % 1;
hsp -= hsp_fraction;
vsp_fraction = vsp % 1;
vsp -= vsp_fraction;

if(place_meeting(x + hsp, y, OWall))
{
	while(not place_meeting(x+sign(hsp), y, OWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x += hsp;

var floordist = in_floor(tilemap, x, bbox_bottom + vsp);
if(floordist >= 0)
{
	
	
	InAir = false;
	oneattack = 0;
	y += vsp;
	y -= (floordist + 1);
	vsp = 0;
	floordist = -1;
}

if(place_meeting(x, y+vsp, OWall))
{
	while(not place_meeting(x, y+sign(vsp), OWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
	InAir = false;
}

y += vsp;