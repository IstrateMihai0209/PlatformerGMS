///@desc load_json_from_file(filename)
///@arg filename

var filename = argument0;

var buffer = buffer_load(filename);
var _string = buffer_read(buffer, buffer_string);
buffer_delete(buffer);

var json = json_decode(_string);
return json;

