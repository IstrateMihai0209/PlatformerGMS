/// @description Destroy

with(OCamera) {follow = OPlayer;}
game_set_speed(60, gamespeed_fps);
audio_stop_sound(ULeader);
instance_destroy();