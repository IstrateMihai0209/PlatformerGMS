///@description Draw black screen

/*if(mode != MODE.Off)
{
	if(alpha == 1)
	{
		fade = -1;
	}

	if(alpha == 0 && fade == -1) {instance_destroy();}*/

if(mode != MODE.Off)
{
	draw_set_color(c_black);
	draw_rectangle(0,0,w,percent*h_half,false);
	draw_rectangle(0,h,w,h-(percent*h_half),false);
	
	
	//draw_set_color(c_black);
	//draw_set_alpha(alpha);
	//draw_rectangle(0, 0, w, h, 0);

	//draw_set_alpha(1);
}

draw_set_color(c_white);