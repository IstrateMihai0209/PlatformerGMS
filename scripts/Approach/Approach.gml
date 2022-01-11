///@description Approach
///@arg current_value
///@arg target_value
///@arg change_amount

var current_value = argument[0];
var target_value = argument[1];
var change_amount = argument[2];

if(current_value < target_value)
{
	current_value += change_amount;
	current_value = min(current_value, target_value);
}
else
{
	current_value -= change_amount;
	current_value = max(current_value, target_value);
}

return current_value;