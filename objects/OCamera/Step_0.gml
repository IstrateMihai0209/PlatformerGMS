/// @description Update Camera

#region Update destination

if(instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

#endregion

#region Update Object Position

x += (xTo - x);
y += (yTo - y);

x = clamp(x, view_w_half+buff, room_width-view_w_half-buff);
y = clamp(y, view_h_75percent+buff, room_height-view_h_75percent-buff);

#endregion

#region Screen shake

x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

#endregion

#region Update Camera View

camera_set_view_pos(cam,x-view_w_half,y-view_h_half-yPrefference);

if(layer_exists("Background"))
{
	layer_x("Background", x/2);
}

if(layer_exists("Background_1"))
{
	layer_x("Background_1", x/2);
}

if(layer_exists("Background_2"))
{
	layer_x("Background_2", x/2);
}

if(layer_exists("Background2"))
{
	layer_x("Background2", x/2);
}

if(layer_exists("Background3"))
{
	layer_x("Background3", x/2);
}

if(layer_exists("Background4"))
{
	layer_x("Background4", x/2);
}

if(layer_exists("Background5"))
{
	layer_x("Background5", x/2);
}

if(layer_exists("Backgrounds"))
{
	layer_x("Backgrounds", x/2);
}
*/

#endregion