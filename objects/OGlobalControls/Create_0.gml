/// @description Constructor

globalvar SoundVolume;
globalvar MusicVolume;

global.SoundVolume = 100;
global.MusicVolume = 100;
global.width = display_get_gui_width();
global.height = display_get_gui_height();
global.SaveVolume = false;
global.menu = true;
global.fullscreen = window_get_fullscreen();
global.offset = 0;
global.spells = 0;
global.maxspells = 4;
global.player_created = false;
global.first_cutscene = true;

global.tutorial_line_order = 0;

for(var i = 0; i <= 27; i++)
{
	global.tutorial_line_exist[i] = true;
}