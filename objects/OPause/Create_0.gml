/// @description Constructor

instance_deactivate_all(true);
instance_activate_object(OSaveLoad);

Optiose = true;
Pause[0] = "Resume";
Pause[1] = "Load Last Save";
Pause[2] = "Go To Menu";
Pause[3] = "Options";
Pause[4] = "Quit";

Optiosetwo = false;
Option[0] = "Set Default";
Option[1] = "Sounds - " ;
Option[2] = "Music - ";
Option[3] = "Fullscreen - ";
Option[4] = "Back";

warningmessage = false;
Warning[0] = "Yes";
Warning[1] = "No";

PauseCursor = 0;
VSpace = 54;

game_set_speed(15, gamespeed_fps);
songs_and_sounds();