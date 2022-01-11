/// @description Draw the commands

draw_sprite(SMenuPanel, 0, global.width/2, global.height/2);


var m;

draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(global.width/2, global.height/2 - VOffset, "Are you sure you\nwant to exit?");

for(m = 0; m < array_length_1d(Choice); m++)
{
	if(Cursor == m)
	{
		var color = c_red;
	}else{var color = c_white;}
	
	draw_set_color(color);
	draw_set_font(FPixelLarge);
	draw_text(global.width/2, global.height/2 + m * VOffset + VOffset, string(Choice[m]));
}

draw_set_halign(noone);
draw_set_valign(noone);