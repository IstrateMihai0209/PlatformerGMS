///@description Draw the commands

draw_sprite(SMenuPanel, 0, global.width/2, global.height/2);
draw_set_color(c_white);
draw_set_font(FTitle);
draw_text(global.width/2.725, global.height/2.5, "Belens Forest");

if(global.menu == true)
{
	var m;
	
	for(m = 0; m < array_length_1d(Menu); m++)
	{
		if(MouseCursor == m)
		{
			var color = c_red; 
		}else{var color = c_white;}
	
		draw_set_color(color);
		draw_set_halign(fa_middle);
		draw_set_valign(fa_middle);
		draw_set_font(FPixelLarge);
		draw_text(global.width/2, global.height/2 + (m * VSpace), string(Menu[m]));
	}
}else{
	var m;
	
	for(m = 0; m < array_length_1d(Option); m++)
	{
		if(KCursor == m)
		{
			var color = c_red; 
		}else{var color = c_white;}
	
		draw_set_color(color);
		draw_set_halign(fa_middle);
		draw_set_valign(fa_middle);
		draw_set_font(FPixelLarge);
		if(m != 1 and m != 2 and m != 3)
		{
			draw_text(global.width/2, global.height/2 + m * VOffset, string(Option[m]));
		}
		if(m == 1)
		{
			draw_text(global.width/2, global.height/2 + m * VOffset, string(Option[m]) + string(SoundVolume) + "%");
		}
		if(m == 2)
		{
		
		draw_text(global.width/2, global.height/2 + m * VOffset, string(Option[m]) + string(MusicVolume) + "%");
		}
		if(m == 3)
		{
			if(global.fullscreen == true) {draw_text(global.width/2, global.height/2 + m * VOffset, string(Option[m]) + "ON");}
			else{draw_text(global.width/2, global.height/2 + m * VOffset, string(Option[m]) + "OFF");}
		}
	}
}

draw_set_halign(noone);
draw_set_valign(noone);

