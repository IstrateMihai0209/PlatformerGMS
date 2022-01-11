/// @description Size variables and mode setup

w = display_get_gui_width();
h = display_get_gui_height();
h_half = h / 2;

enum MODE
{
	Off,
	Next,
	GoTo,
	Restart,
	Intro
}

mode = MODE.Intro;
target = room;
alpha = 1;
percent = 10;
//fade = -1;