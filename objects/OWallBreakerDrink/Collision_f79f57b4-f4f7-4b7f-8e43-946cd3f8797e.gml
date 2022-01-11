/// @description Pick Up

if(keyboard_check_pressed(ord("E")) and game_get_speed(gamespeed_fps) == 60)
{
	item_pickup(SWallBreakerDrink, OWallBreakerDrink, howmuch);
	audio_play_sound(SNSelect, 100, false);
	instance_destroy();
}