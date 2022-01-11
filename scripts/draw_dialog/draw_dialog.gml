///@description draw_dialog();

if(active == true)
{
	draw_set_color(c_white);
	draw_rectangle(xOrigin, yOrigin, xOrigin + width, yOrigin + height, false);

	draw_set_color(c_black);
	draw_rectangle(
	inner_box_xOrigin, 
	inner_box_yOrigin,
	inner_box_xOrigin + inner_box_width,
	inner_box_yOrigin + inner_box_height,
	false);

	draw_set_color(c_white);
	draw_set_font(FPixelMedium);
	draw_text(text_xOrigin, text_yOrigin, stringToDisplay);
}
