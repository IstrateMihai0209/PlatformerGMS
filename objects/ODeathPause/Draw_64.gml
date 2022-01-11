/// @description Draw black screen and text

draw_set_alpha(alph);
draw_set_color(c_black);
draw_rectangle(0, 0, global.width, global.height, false);
draw_set_color(c_white);
draw_set_font(FPixelLarge);

var m;

if(alph == 1)
{
	draw_set_valign(fa_middle);
	draw_set_halign(fa_middle);
	draw_text(global.width/2, global.height/2.5, "You are dead");
	if(Optiose == true)
	{
		for(m = 0; m < array_length_1d(Pause); m++)
		{
			if(PauseCursor == m)
			{
				var color = c_red; 
			}else{var color = c_white;}
	
			draw_set_color(color);
			draw_set_halign(fa_middle);	
			draw_set_valign(fa_middle);
			draw_text(global.width/2, global.height/2 + (m * VSpace), string(Pause[m]));
		}
	}if(Optiosetwo == true){
		var m;
	
		for(m = 0; m < array_length_1d(Option); m++)
		{
			if(PauseCursor == m)
			{
				var color = c_red; 
			}else{var color = c_white;}
	
			draw_set_color(color);
			draw_set_halign(fa_middle);
			draw_set_valign(fa_middle);
	
			if(m != 1 and m != 2 and m != 3)
			{
				draw_text(global.width/2, global.height/2 + m * VSpace, string(Option[m]));
			}
			if(m == 1)
			{
				draw_text(global.width/2, global.height/2 + m * VSpace, string(Option[m]) + string(SoundVolume) + "%");
			}
			if(m == 2)
			{
				draw_text(global.width/2, global.height/2 + m * VSpace, string(Option[m]) + string(MusicVolume) + "%");
			}
			if(m == 3)
			{
				if(global.fullscreen == true) {draw_text(global.width/2, global.height/2 + m * VSpace, string(Option[m]) + "ON");}
				else{draw_text(global.width/2, global.height/2 + m * VSpace, string(Option[m]) + "OFF");}
			}
		}
	}if(warningmessage == true)
	{
		draw_set_color(c_white);
		draw_set_halign(fa_middle);
		draw_set_valign(fa_middle);
		draw_text(global.width/2, global.height/1.9 - VSpace, "Are you sure you\nwant to exit?");
		
		var m;
	
		for(m = 0; m < array_length_1d(Warning); m++)
		{
			if(PauseCursor == m)
			{
				var color = c_red; 
			}else{var color = c_white;}
	
			draw_set_color(color);
			draw_text(global.width/2, global.height/1.8 + m * VSpace, string(Warning[m])); 
		}
	}
}

draw_set_halign(noone);
draw_set_valign(noone);
draw_set_alpha(1);