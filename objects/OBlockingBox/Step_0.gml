///@description Play sound when broken

if(image_index == 1.5)
{
	audio_play_sound(SNBrokenBox, 100, false);
}

/*if(place_meeting(x, y, OHitbox) or place_meeting(x, y, OHitboxSbrnFirespn))
{
	if(global.can_destroy_boxes == true)
	{
		instance_destroy();
	}
}*/