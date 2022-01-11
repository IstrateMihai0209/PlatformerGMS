///@desc Load Game (or save if it's the first room)

if(room != MenuRoom and room == DForestTwo and savevariable == true)
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
	}

	//wrap the list up in a map

	var wrapper = ds_map_create();
	ds_map_add_list(wrapper, "ROOT", root_list );

	//save all to a string

	var _string = json_encode(wrapper);
	save_string_to_file("SaveLoad.sav", _string);

	//destroy all data

	ds_map_destroy(wrapper);

	show_debug_message("Saved Game!");
	savevariable = false;
}

if(loadvariable == true and room != DForestTwo)
{
	with (PSaveObj) {instance_destroy();}

	if(file_exists("SaveLoad.sav"))
	{
		var _wrapper = load_json_from_file("SaveLoad.sav");
		var list = ds_map_find_value(_wrapper, "ROOT");
	
	
		for (var i = 0; i < ds_list_size(list); i++)
		{
			var _map = list[| i];
		
			var _obj = ds_map_find_value(_map, "obj");
			instance_create_layer(0, 0, layer, asset_get_index(_obj));
			with(PSaveObj)
			{
				//Room
				room = _map[? "room"];
				
				//Player and Player Stats
				x = _map[? "playerx"];
				y = _map[? "playery"];
				with(OPlayer) {hp = _map[? "hp"];}
				global.player_created = 1;
			
				//Inventory
				global.Spot[0] = _map[? "item0"];
				global.howmany[0] = _map[? "howmany0"];
				global.Spot[1] = _map[? "item1"];
				global.howmany[1] = _map[? "howmany1"];
				global.Spot[2] = _map[? "item2"];
				global.howmany[2] = _map[? "howmany2"];
				global.Spot[3] = _map[? "item3"];
				global.howmany[3] = _map[? "howmany3"];
				global.Spot[4] = _map[? "item4"];
				global.howmany[4] = _map[? "howmany4"];
				global.Spot[5] = _map[? "item5"];
				global.howmany[5] = _map[? "howmany5"];
				global.Spot[6] = _map[? "item6"];
				global.howmany[6] = _map[? "howmany6"];
				global.Spot[7] = _map[? "item7"];
				global.howmany[7] = _map[? "howmany7"];
				global.Spot[8] = _map[? "item8"];
				global.howmany[8] = _map[? "howmany8"];
				global.Spot[9] = _map[? "item9"];
				global.howmany[9] = _map[? "howmany9"];
				global.Spot[10] = _map[? "item10"];	
				global.howmany[10] = _map[? "howmany10"];
				global.Spot[11] = _map[? "item11"];	
				global.howmany[11] = _map[? "howmany11"];
				
				//Cocos
				Cocos = _map[? "cocos"];
				
				//Enemy and Chest Variables and Boxes
				for(k = 0; k < 100; k++)
				{	
					global.Enemy_looted[k] = _map[? "enemy_loot" + string(k)];
				}
				
				global.order = _map[? "enemy_count"];
				global.ChestOrder = _map[? "chest_order"];
				
				for(n = 0; n < 100; n++)
				{
					global.opened[n] = _map[? "chest_looted" + string(n)];
				}
				
				global.can_destroy_boxes = _map[? "can_destroy_boxes"];
				
				global.dont_spawn_again = _map[? "Vark_killed"];
				global.Ghork_wont_spawn_again = _map[? "Ghork_killed"];
			}
		}
		ds_map_destroy(_wrapper);
	}
	instance_create_layer(16, 16, layer, OHealthbar);
	instance_create_layer(0, 0, layer, OSpecialPowers);
	loadvariable = false;
}
