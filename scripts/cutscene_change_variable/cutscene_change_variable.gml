///@description cutscene_change_variable(obj, var_name_as_string, value)
///@arg obj
///@arg var_name_as_string
///@arg value

with(argument[0])
{
	variable_instance_set(id, argument[1], argument[2]);
}

cutscene_end_action();