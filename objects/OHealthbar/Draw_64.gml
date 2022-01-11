/// @description Health Bar

draw_set_alpha(1);

var xoffset = 32;
var yoffset = 17;

var rectanglewidthx = 367;
var rectanglewidthy = 39;

if(instance_exists(OPlayer))
{
	var hp_percentage = OPlayer.hp / OPlayer.maxhp;

	draw_set_font(FPixel);

	draw_sprite(SHealthBar, 0, x, y);

	draw_rectangle_color(x + xoffset, y + yoffset, x + rectanglewidthx * hp_percentage, 
	y + rectanglewidthy, 140, 140, 140, 140, false);
	
	if(OPlayer.startTimer == true)
	{
		draw_sprite_ext(SPotionHealth, 0, x + xoffset, y + yoffset, 1, 1, 0, noone, 0.25);
	}
	
	draw_text(x + 170, y + 23, string(OPlayer.hp) + "/" + string(OPlayer.maxhp));
}