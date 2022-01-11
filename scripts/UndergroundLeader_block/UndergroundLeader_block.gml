///@description UndergroundLeader_block

if(place_meeting(x, y, OHitbox) and CanBlock == true)
{
	hsp = 0;
	image_index = 0;
	sprite_index = SUndergroundLeaderABlock;
	blocking = true;
	attacking = false;
}
	
if(place_meeting(x, y, OHitboxSbrnFirespn) and CanBlock == true)
{
	if(OHitboxSbrnFirespn.sprite_index != SSunburn)
	{
		hsp = 0;
		image_index = 0;
		sprite_index = SUndergroundLeaderABlock;
		blocking = true;
		attacking = false;
	}
}