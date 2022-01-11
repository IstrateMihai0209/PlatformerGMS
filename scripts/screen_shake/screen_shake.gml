/// @desc screen_shake(magnitude,frames)
/// @arg Magnitude sets the strength of the shake
/// @arg Frames sets the length of the shake in frames

with(OCamera)
{
	if(argument[0] > shake_remain)
	{
		shake_magnitude = argument[0];
		shake_remain = argument[0];
		shake_length = argument[1];
	}
}
