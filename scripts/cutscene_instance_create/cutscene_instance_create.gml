///@description cutscene_instance_create(x, y, layer_id, object)
///@arg x
///@arg y
///@arg layer_id
///@arg object

var inst = instance_create_layer(argument[0], argument[1], argument[2], argument[3])

cutscene_end_action();

return inst;