/// @description Inventory Mechanics

/*for(var i = 0; i <= 11; i++)
{
	if(global.Spot[i] == SHealthPotion)
	{
		global.health_potion_slot = i;
	}
}*/
	

if(drawbool == true and OTransition.percent == 0 and not instance_exists(OPrintText))
{
	stop_player_control();
	
	var move = 0;

	move -= max(keyboard_check_pressed(vk_left), keyboard_check_pressed(ord("A")), 0);
	move += max(keyboard_check_pressed(vk_right), keyboard_check_pressed(ord("D")), 0);
	
	if(Position > 3)
	{
		move -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0) * 4;
	}
	
	if(Position < 8)
	{
		move += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0) * 4;
	}
	
	if(move != 0)
	{
		Position += move;
		if(Position < 0) Position = 0;
		if(Position > 11) Position = 11;
	}
	
	var select = keyboard_check_pressed(vk_enter);
	var drop = keyboard_check_pressed(ord("X"));
	
	if(select == 1)
	{	
		use_all_items_rearrange_inventory();
	}

	if(drop == 1)
	{
		drop_item_rearrange_inventory();
	}
}else{start_player_control();}