///@description display_convo_text();

if(active == true)
{
	if(currCharIndex < string_length(dialog[convoIndex, 1]) + 1)
	{
		stringToDisplay += string_char_at(dialog[convoIndex, 1], currCharIndex++);
	}
	else
	{
		if(keyboard_check_pressed(vk_enter) == true)
		{
			convoIndex++;
			stringToDisplay = "";
			currCharIndex = 1;
		
			if(convoIndex == convoDialogCount)
			{
				active = false;
			}
		}
	}
}