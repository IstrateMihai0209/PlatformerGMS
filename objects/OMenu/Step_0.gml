///@description Interact with the menu
 
//global.fullscreen = window_get_fullscreen(); //(moved to global controls)

if(hasctrl == true)
{
if(global.menu == true)
{
	var move = 0;

	move -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);
	move += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);

	if(move != 0)
	{
		MouseCursor += move;
		if(MouseCursor < 0) MouseCursor = array_length_1d(Menu) - 1;
		if(MouseCursor > array_length_1d(Menu) - 1) MouseCursor = 0;
	}

	var select;
	select = max(keyboard_check_pressed(vk_enter), keyboard_check_pressed(vk_space), 0);
	
	if(select == 1)
	{
		switch(MouseCursor)
		{
			case 0: room_goto(StartRoom); break;
			
			case 1: OSaveLoad.loadvariable = true; break;
			
			case 2: global.menu = false; break;
			
			case 3: instance_change(OWarning, true); break;		
		}
	}
}else{
	var move = 0;

	move -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);
	move += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);

	if(move != 0)
	{
		KCursor += move;
		if(KCursor < 0) KCursor = array_length_1d(Option) - 1;
		if(KCursor > array_length_1d(Option) - 1) KCursor = 0;
	}

	var select;
	select = max(keyboard_check_pressed(vk_enter), keyboard_check_pressed(vk_space), 0);

	var changevolume = 0;
	changevolume -= max(keyboard_check(vk_left), keyboard_check(ord("A")), 0);
	changevolume += max(keyboard_check(vk_right), keyboard_check(ord("D")), 0);

	if(KCursor == 1)
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
					audio_sound_gain(SoundEffect[sound], global.SoundVolume / 100, 0);
				}
			}
		}
	}

	if(KCursor == 2)
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
				audio_sound_gain(Song[music], global.MusicVolume / 100, 0);
			}
		}
	}

	if(select == 1)
	{
		switch(KCursor)
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
		
			case 4: global.menu = true; global.SaveVolume = true; break;
		}
	}
}
}