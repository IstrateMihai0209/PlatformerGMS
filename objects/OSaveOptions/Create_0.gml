/// @description Load Options

if(file_exists("SaveVolume.sav"))
{
	var _wrapper = load_json_from_file("SaveVolume.sav");
	var list = ds_map_find_value(_wrapper, "ROOT");

for (var i = 0; i < ds_list_size(list); i++)
{
	var _map = list[| i];
	instance_create_layer(0, 0, layer, OGlobalControls);

	with(PSaveObjOptions)
	{
		global.SoundVolume = _map[? "sounds_volume"];
		global.MusicVolume = _map[? "music_volume"];
		global.fullscreen = _map[? "fullscreen"];
		window_set_fullscreen(global.fullscreen);
	}
}
ds_map_destroy(_wrapper);
show_debug_message("Loaded Options!");
}