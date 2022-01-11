/// @description 

OTutorial.letters = 0;
OTutorial.start = true;
if(OTutorial.touched == true) {OTutorial.currentline++;}
OTutorial.touched = true;

global.tutorial_line_exist[order] = false;
instance_destroy();