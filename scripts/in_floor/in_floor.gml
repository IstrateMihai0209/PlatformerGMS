/// @description Checks to see if position is below the floor height of a given tile, returns how deep in floor
/// @arg tilemap
/// @arg x
/// @arg y

var pos = tilemap_get_at_pixel(argument[0], argument[1], argument[2]);
if(pos > 0)
{
	if(pos == 1) return (argument[2] mod TILE_SIZE);
	var thefloor = global.inaltimi[(argument[1] mod TILE_SIZE) + (pos * TILE_SIZE)];
	var howdeep = ((argument[2] mod TILE_SIZE) - thefloor);
	return howdeep;
} else return -(TILE_SIZE - (argument[2] mod TILE_SIZE));