///@description Constructor

//global.fullscreen = window_get_fullscreen(); (moved to global controls)
display_set_gui_size(global.width, global.height);

Menu[0] = "Start Game";
Menu[1] = "Load Game";
Menu[2] = "Options";
Menu[3] = "Quit";

VSpace = 54; 
MouseCursor = 0;

Option[0] = "Set Default";
Option[1] = "Sounds - " ;
Option[2] = "Music - ";
Option[3] = "Fullscreen - ";
Option[4] = "Back";

KCursor = 0;
hasctrl = true;
StartRoom = DForestTwo;

VOffset = 54;

game_set_speed(25, gamespeed_fps);

songs_and_sounds();