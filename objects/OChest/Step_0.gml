/// @description global.opened[ChestOrder]

if(global.opened[ChestOrder] == true and NeverCloseAgain == false)
{
	image_speed = 5;
	NeverCloseAgain = true;
}

if(place_meeting(x, y, OPlayer))
{
	if(keyboard_check_pressed(ord("E")))
	{
		if(global.opened[ChestOrder] == false)
		{
			audio_play_sound(SNSelect, 100, false);
		}
		global.opened[ChestOrder] = true;
	}
}

if(image_index == 6)
{
	image_speed = 0;
	instance_create_layer(x, y - 10, "Collectables", item);
	if(item2 != 0) {instance_create_layer(x, y - 10, "Collectables", item2);}
	if(item3 != 0) {instance_create_layer(x, y - 10, "Collectables", item3);}
	if(item4 != 0) {instance_create_layer(x, y - 10, "Collectables", item4);}
	if(item5 != 0) {instance_create_layer(x, y - 10, "Collectables", item5);}
	image_index = 7;
	if(global.opened[ChestOrder] == true and image_index == 7)
	{
		NeverCloseAgain = true;
	}
}