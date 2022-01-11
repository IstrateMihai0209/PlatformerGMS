///@desc Save Game

//create a ds list

if(room != MenuRoom and savevariable == true)
{
	var root_list = ds_list_create();
	player_created = true;
	//create a map for every instance

	with(PSaveObj)
	{
		var map = ds_map_create();
		ds_list_add(root_list, map);
		ds_list_mark_as_map(root_list, ds_list_size(root_list)-1);

		var obj = object_get_name(object_index);
		ds_map_add(map, "obj", obj);
		ds_map_add(map, "room", room);
	
		//Inventory
		ds_map_add(map, "item0", global.Spot[0]);
		ds_map_add(map, "howmany0", global.howmany[0]);
		ds_map_add(map, "item1", global.Spot[1]);
		ds_map_add(map, "howmany1", global.howmany[1]);
		ds_map_add(map, "item2", global.Spot[2]);
		ds_map_add(map, "howmany2", global.howmany[2]);
		ds_map_add(map, "item3", global.Spot[3]);
		ds_map_add(map, "howmany3", global.howmany[3]);
		ds_map_add(map, "item4", global.Spot[4]);
		ds_map_add(map, "howmany4", global.howmany[4]);
		ds_map_add(map, "item5", global.Spot[5]);
		ds_map_add(map, "howmany5", global.howmany[5]);
		ds_map_add(map, "item6", global.Spot[6]);
		ds_map_add(map, "howmany6", global.howmany[6]);
		ds_map_add(map, "item7", global.Spot[7]);
		ds_map_add(map, "howmany7", global.howmany[7]);
		ds_map_add(map, "item8", global.Spot[8]);
		ds_map_add(map, "howmany8", global.howmany[8]);
		ds_map_add(map, "item9", global.Spot[9]);
		ds_map_add(map, "howmany9", global.howmany[9]);
		ds_map_add(map, "item10", global.Spot[10]);
		ds_map_add(map, "howmany10", global.howmany[10]);
		ds_map_add(map, "item11", global.Spot[11]);
		ds_map_add(map, "howmany11", global.howmany[11]);
	
		//Cocos
		ds_map_add(map, "cocos", OPlayerStats.Cocos);
	
		//Player and Player Stats
		ds_map_add(map, "playerx", OPlayer.x);
		ds_map_add(map, "playery", OPlayer.y);
		ds_map_add(map, "hp", OPlayer.hp);
		//ds_map_add(map, "player_created", global.player_created);
	
		//Enemies Loot

		for(j = 0; j < 100; j++)
		{
			ds_map_add(map, "enemy_loot" + string(j), global.Enemy_looted[j]);
		}
		
		ds_map_add(map, "enemy_count", global.EnemyCount[room]);
		
		//Chest Opened
		
		ds_map_add(map, "chest_order", global.ChestCount[room]);
		
		for(m = 0; m < 100; m++)
		{
			ds_map_add(map, "chest_looted" + string(m), global.opened[m]);
		}
		
		//Fullscreen
		
		ds_map_add(map, "fullscreen", global.fullscreen);
		
		//Can destroy boxes
		
		ds_map_add(map, "can_destroy_boxes", global.can_destroy_boxes);
		
		//Bosses
		
		ds_map_add(map, "Vark_killed", global.dont_spawn_again);
		ds_map_add(map, "Ghork_killed", global.Ghork_wont_spawn_again);
	}

	//wrap the list up in a map

	var wrapper = ds_map_create();
	ds_map_add_list(wrapper, "ROOT", root_list );

	//save all to a string

	var _string = json_encode(wrapper);
	save_string_to_file("SaveLoad.sav", _string);

	//destroy all data

	ds_map_destroy(wrapper);
}