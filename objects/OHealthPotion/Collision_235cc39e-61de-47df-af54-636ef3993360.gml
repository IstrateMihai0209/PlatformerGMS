/// @description Pick Up

if(keyboard_check_pressed(ord("E")))
{
	item_pickup(SHealthPotion, OHealthPotion, howmuch);
	audio_play_sound(SNSelect, 100000, false);
	instance_destroy();
}