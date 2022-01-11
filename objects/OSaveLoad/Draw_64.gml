/// @description Print "Saved Game!"

if(room != MenuRoom and onetime == true and savevariable == true and not instance_exists(OPause))
{
	draw_set_font(FPixelLarge);
	draw_text(global.width / 2.3, global.height / 5, "Saved Game!");
}