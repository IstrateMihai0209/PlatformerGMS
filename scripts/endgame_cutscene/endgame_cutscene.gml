///@description endgame_cutscene(string0, string1...)
///@arg string0
///@arg string1
///@arg string2
///@arg string3
///@arg string4
///@arg string5
///@arg string6
///@arg string7
///@arg string8
///@arg string9
///@arg string10
///@arg string11
///@arg string12
///@arg string13
///@arg string14

if(the_end == true)
{
	if(alpha < 1)
	{
		alpha += 0.005;
	} 
	else
	{
		if(onetime == false)
		{
			with(instance_create_layer(x, y, "Transition", OPrintText))
			{
				instance_deactivate_all(true);
				print_text(argument[0], argument[1]);
				length = string_length(PrintText[currentline]);
			}
			onetime = true;
		}
		else
		{
			with(all){instance_destroy();}
			room_goto(MenuRoom);
		}
	}
}