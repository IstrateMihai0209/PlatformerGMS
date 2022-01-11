/// @description Draw arrow on top

draw_self();

if(place_meeting(x, y, OPlayer) and global.opened[ChestOrder] == false)
{
	draw_sprite(SChestArrow, 0, x, y - 50);
}