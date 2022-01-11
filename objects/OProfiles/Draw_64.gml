/// @description Descriere descriere descriere

draw_sprite(SMenuPanel, 0, global.width/2, global.height/2);

var m;
	
for(m = 0; m < array_length_1d(Profile); m++)
{
	if(PCursor == m)
	{
		var color = c_red; 
	}else{var color = c_white;}
	
	draw_set_color(color);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	draw_set_font(FPixelLarge);
	draw_text(global.width/2, global.height/2 + (m * VSpace), string(Profile[m]));
}

draw_set_halign(noone);
draw_set_valign(noone);