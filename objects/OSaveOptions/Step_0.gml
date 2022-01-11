/// @description Save Options

if(global.SaveVolume == true)
{
	var root_list = ds_list_create();
	with(PSaveObjOptions)
	{
		var map = ds_map_create();
		ds_list_add(root_list, map);
		ds_list_mark_as_map(root_list, ds_list_size(root_list)-1);
	

		ds_map_add(map, "sounds_volume", global.SoundVolume);
		ds_map_add(map, "music_volume", global.MusicVolume);
		ds_map_add(map, "fullscreen", global.fullscreen);
	}
	var wrapper = ds_map_create();
		ds_map_add_list(wrapper, "ROOT", root_list );


		var _string = json_encode(wrapper);
		save_string_to_file("SaveVolume.sav", _string);

		ds_map_destroy(wrapper);
		show_debug_message("Saved Options!");
		global.SaveVolume = false;
}