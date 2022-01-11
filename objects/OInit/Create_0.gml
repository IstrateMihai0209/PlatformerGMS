/// @description Game Setup
#macro TILE_SIZE 16

heightstoget = sprite_get_width(SSlopes);
tiles = heightstoget / TILE_SIZE;

var layerid = layer_create(0, "Platforms");
tilemapid = layer_tilemap_create(layerid, 0, 0, TSlopes, tiles, 1);

for(var i = 0; i <= tiles; i++)
{
	tilemap_set(tilemapid, i, i, 0);
}
