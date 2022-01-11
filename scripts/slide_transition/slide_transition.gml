/// @desc slide_transition(Mode, targetroom)
/// @arg Mode sets transition mode between next, restart, and goto.
/// @arg Target sets targetroom when using the goto mode.

with(OTransition)
{
	mode = argument[0];
	if(argument_count > 1) target = argument[1]; 
}

