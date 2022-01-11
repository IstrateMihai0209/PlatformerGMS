/// @description Interact with profiles

var move = 0;

move -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);
move += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);

if(move != 0)
{
	PCursor += move;
	if(PCursor < 0) PCursor = array_length_1d(Profile) - 1;
	if(PCursor > array_length_1d(Profile) - 1) PCursor = 0;
}

var select;
select = max(keyboard_check_pressed(vk_enter), keyboard_check_pressed(vk_space), 0);
	
if(select == 1)
{
	switch(PCursor)
	{
		case 0: OSaveLoad.loadvariable = true; break; ///A RAMAS EXACT CA LA "G"
			
		case 1: room_goto_next(); break;
			
		case 2: break;
			
		case 3: instance_change(OMenu, true); break;		
	}
}