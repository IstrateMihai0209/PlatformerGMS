/// @description Pick Up

if(keyboard_check_pressed(ord("E")))
{
	item_pickup(SNoDamage2, ONoDamage2Collectable, howmuch);
	audio_play_sound(SNSelect, 100, false);
	instance_destroy();
}