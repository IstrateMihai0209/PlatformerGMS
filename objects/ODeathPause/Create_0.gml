/// @description Constructor

if(instance_exists(OTutorial)) {instance_deactivate_object(OTutorial);}
instance_deactivate_object(OSpecialPowers);
instance_deactivate_object(OPlayerStats);
instance_deactivate_object(OHealthbar);

Optiose = true;
Pause[0] = "Retry";
Pause[1] = "Go To Menu";
Pause[2] = "Options";
Pause[3] = "Quit";

Optiosetwo = false;
Option[0] = "Set Default";
Option[1] = "Sounds - " ;
Option[2] = "Music - ";
Option[3] = "Fullscreen - ";
Option[4] = "Back";

warningmessage = false;
Warning[0] = "Yes";
Warning[1] = "No";

alph = 0; 

PauseCursor = 0;
VSpace = 54;

songs_and_sounds();