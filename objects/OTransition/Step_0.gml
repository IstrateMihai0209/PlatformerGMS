/// @description Progress the transition

if(mode != MODE.Off)
{
	if(room == MenuRoom)
	{
		if(mode == MODE.Intro)
		{
			percent = max(0, percent - max((percent/8), 0.03));
		}else{
			percent = min(100, percent + max(((100-percent)/80), 0.03));
		}
	}else{
		if(mode == MODE.Intro)
		{
			percent = max(0, percent - max((percent/40), 0.009));
		}else{
			percent = min(100, percent + max(((100-percent)/400), 0.009));
		}
	}
	with(OPlayer) {stop_player_control();}	
	with(OMenu) {hasctrl = false;}
}

if (percent == 0 or percent == 100)
{
	switch(mode)
	{
		case MODE.Next:
		{
			mode = MODE.Intro;
			room_goto_next();
			break;
		}
		case MODE.GoTo:
		{
			percent = 0;
			mode = MODE.Intro;
			room_goto(target);
			break;
		}
		case MODE.Restart:
		{
			game_restart();
			break;
		}
		case MODE.Intro:
		{
			mode = MODE.Off;
			break;
		}
	}	
	with(OMenu) {hasctrl = true;}
}
