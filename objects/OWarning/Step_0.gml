/// @description Interact

var move = 0;

move -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);
move += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);

if(move != 0)
{
	Cursor += move;
	if(Cursor < 0) {Cursor = array_length_1d(Choice) - 1;}
	if(Cursor > array_length_1d(Choice) - 1) Cursor = 0;
}

var select;
select = max(keyboard_check_pressed(vk_enter), keyboard_check_pressed(vk_space), 0);

if(select == 1)
{
	switch(Cursor)
	{
		case 0: game_end(); break;
		
		case 1: instance_change(OMenu, true);
				break;
	} 
}