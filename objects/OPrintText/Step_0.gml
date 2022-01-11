///@description Print the text

#region Control Player

if(instance_exists(OPlayer) and OPlayer.hascontrol == true)
{
	stop_player_control();
}

#endregion

#region Progress Text

if(start == true)
{
	letters += spd;
	text = string_copy(PrintText[currentline], 1, floor(letters));
}

#endregion

#region Next line

if(letters >= length and keyboard_check_pressed(vk_anykey))
{
	if(currentline + 1 == array_length_1d(PrintText))
	{
		instance_activate_all();
		global.first_cutscene = false;
		instance_destroy();
	}
	else
	{
		currentline++;
		letters = 0;
		length = string_length(PrintText[currentline]);
	}
}

#endregion