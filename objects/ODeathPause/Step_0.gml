/// @description Interact with Pause

var move = 0;

move -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);
move += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);

var select;
select = max(keyboard_check_pressed(vk_enter), keyboard_check_pressed(vk_space), 0);

if(alph < 1)
{
	alph += 0.005;
}
else
{
	instance_deactivate_all(true);
	instance_activate_object(OSaveLoad);
	if(Optiose == true)
	{
		if(move != 0)
		{
			PauseCursor += move;
			if(PauseCursor < 0) PauseCursor = array_length_1d(Pause) - 1;
			if(PauseCursor > array_length_1d(Pause) - 1) PauseCursor = 0;
		}

		if(select == 1)
		{
			switch(PauseCursor) 
			{
				case 0: OSaveLoad.loadvariable = true; break;
				break;
			
				case 1: room_goto(MenuRoom); break;
			
				case 2: Optiose = false; Optiosetwo = true; break;
		
				case 3: Optiose = false; warningmessage = true;
						select = 0; PauseCursor = 0;
						break;
			}
		}
	}if(Optiosetwo == true){
		if(move != 0)
		{
			PauseCursor += move;
			if(PauseCursor < 0) PauseCursor = array_length_1d(Option) - 1;
			if(PauseCursor > array_length_1d(Option) - 1) PauseCursor = 0;
		}

		var changevolume = 0;
		changevolume -= max(keyboard_check(vk_left), keyboard_check(ord("A")), 0);
		changevolume += max(keyboard_check(vk_right), keyboard_check(ord("D")), 0);

		if(PauseCursor == 1)
	{
		if(changevolume != 0)
		{
			global.SoundVolume += changevolume;
			if(global.SoundVolume >= 100)
			{
				global.SoundVolume = 100;
			}
			if(global.SoundVolume <= 0)
			{
				global.SoundVolume = 0;
			}
			for(var sound = 0; sound < 100; sound++)
			{
				if(audio_exists(SoundEffect[sound]))
				{
					audio_sound_gain(SoundEffect[sound], global.SoundVolume / global.divide_volume, 0);
				}
			}
		}
	}

	if(PauseCursor == 2)
	{
		if(changevolume != 0)
		{
			global.MusicVolume += changevolume;
			if(global.MusicVolume >= 100)
			{
				global.MusicVolume = 100;
			}
			if(global.MusicVolume <= 0)
			{
				global.MusicVolume = 0;
			}
		}
		for(var music = 0; music < 100; music++)
		{
			if(audio_exists(Song[music]))
			{
				audio_sound_gain(Song[music], global.MusicVolume / global.divide_volume, 0);
			}
		}
	}

		if(select == 1)
		{
			switch(PauseCursor)
			{	
				case 0: 
					global.SoundVolume = 100; global.MusicVolume = 100; 
					global.fullscreen = true; window_set_fullscreen(global.fullscreen);
					break;
			
				case 3:
					if(global.fullscreen == true)
					{
						global.fullscreen = false;
						window_set_fullscreen(global.fullscreen);
						display_set_gui_size(global.width, global.height);
					}
					else{
						global.fullscreen = true;
						window_set_fullscreen(global.fullscreen);
						display_set_gui_size(global.width, global.height);
					}
					break;
		
				case 4: Optiosetwo = false; Optiose = true; PauseCursor = 0; break;
			}
		}
	}
	if(warningmessage == true)
	{
		if(move != 0)
		{
			PauseCursor += move;
			if(PauseCursor < 0) PauseCursor = array_length_1d(Warning) - 1;
			if(PauseCursor > array_length_1d(Warning) - 1) PauseCursor = 0;
		}
		
		if(select == 1)
		{
			switch(PauseCursor)
			{
				case 0: game_end(); break;
				
				case 1: warningmessage = false; Optiose = true;
						select = 0; PauseCursor = 0;
						break;
			}
		}
	}
}

