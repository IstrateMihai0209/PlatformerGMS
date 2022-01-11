/// @description Unpause Game

game_set_speed(60, gamespeed_fps);
instance_activate_all();
instance_destroy();
global.SaveVolume = true;