/// @description Draw Cocos

draw_set_font(FPixelLarge);

if(Cocos < 10)
{
	draw_sprite_ext(SAllCocos, 0, initial_position_x, initial_position_y, 1, 1, 0, c_white, 1);
}
if(Cocos >= 10 and Cocos < 100)
{
	draw_sprite_ext(SAllCocos, 0, initial_position_x + offset, initial_position_y, 1, 1, 0, c_white, 1);
}
if(Cocos >= 100 and Cocos < 1000)
{
	draw_sprite_ext(SAllCocos, 0, initial_position_x + (offset * 2), initial_position_y, 1, 1, 0, c_white, 1);
}

if(Cocos >= 1000 and Cocos < 10000)
{
	draw_sprite_ext(SAllCocos, 0, initial_position_x + (offset * 3), initial_position_y, 1, 1, 0, c_white, 1);
}

if(Cocos >= 10000 and Cocos < 100000)
{
	draw_sprite_ext(SAllCocos, 0, initial_position_x + (offset * 4), initial_position_y, 1, 1, 0, c_white, 1);
}

if(Cocos >= 100000)
{
	draw_sprite_ext(SAllCocos, 0, initial_position_x + (offset * 5), initial_position_y, 1, 1, 0, c_white, 1);
}

if(Cocos > maxCocos)
{
	Cocos = 999999;
}

draw_text(cocos_text_offset, (initial_position_y - 10), string(Cocos));

draw_set_font(noone);