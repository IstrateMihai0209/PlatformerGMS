/// @description Build height table then start game

draw_tilemap(tilemapid, -20, -20);

for(var i = heightstoget - 1; i >= 0; i--)
{
	var check = 0;
	while(check <= TILE_SIZE)
	{
		global.inaltimi[i] = check;
		if(surface_getpixel(application_surface, i, check) != c_black) break;
		check++;
	}
}

//room_goto_next();