/// @description Draw screen and text

draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
draw_sprite_ext(FBack1, 0, 0, 0, 1.9, 1.35, 0, c_white, 1);
draw_sprite_ext(FBack2, 0, 0, 0, 1.9, 1.35, 0, c_white, 1);
draw_sprite_ext(FBack3, 0, 0, 0, 1.9, 1.35, 0, c_white, 1);
draw_sprite_ext(FBack4, 0, 0, 0, 1.9, 1.35, 0, c_white, 1);
draw_sprite_ext(FBack5, 0, 0, 0, 1.9, 1.35, 0, c_white, 1);
draw_sprite_ext(FBack6, 0, 0, 0, 1.9, 1.35, 0, c_white, 1);
draw_sprite_ext(FBack7, 0, 0, 0, 1.9, 1.35, 0, c_white, 1);
draw_sprite_ext(FBack8, 0, 0, 0, 1.9, 1.35, 0, c_white, 1);
draw_sprite_ext(FGrass, 0, 0, 0, 1.9, 1.35, 0, c_white, 1);
draw_sprite_ext(FGrass2, 0, 0, 0, 1.9, 1.35, 0, c_white, 1);
draw_sprite_ext(FGrass3, 0, 0, 0, 1.9, 1.35, 0, c_white, 1);
draw_sprite(SMenuPanel, 0, global.width/2, global.height/2);
draw_set_color(c_white);
draw_set_font(FPixelLarge);
draw_text(global.width/2, global.height/2.5, "Game Paused");

var m;

if(Optiose == true)
{
	for(m = 0; m < array_length_1d(Pause); m++)
	{
		draw_set_alpha(1);
		if(PauseCursor == m)
		{
			var color = c_red; 
		}else{var color = c_white;}
	
		draw_set_color(color);
		draw_set_font(FPixelLarge);
		draw_text(global.width/2, global.height/2 + (m * VSpace), string(Pause[m]));
	}
}if(Optiosetwo == true){
	var m;
	
	for(m = 0; m < array_length_1d(Option); m++)
	{
		draw_set_alpha(1);
		if(PauseCursor == m)
		{
			var color = c_red; 
		}else{var color = c_white;}
	
		draw_set_color(color);
		draw_set_font(FPixelLarge);
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
	draw_text(global.width/2, global.height/1.7 - VSpace * 1.3, "Are you sure you\nwant to exit?");
	var m;
	
	for(m = 0; m < array_length_1d(Warning); m++)
	{
		draw_set_alpha(1);
		if(PauseCursor == m)
		{
			var color = c_red; 
		}else{var color = c_white;}
	
		draw_set_color(color);
		draw_set_font(FPixelLarge);
		draw_text(global.width/2, global.height/1.7 + m * VSpace, string(Warning[m]));
	}
}

draw_set_halign(noone);
draw_set_valign(noone);