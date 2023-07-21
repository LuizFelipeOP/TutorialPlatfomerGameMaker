/// desc SlideTransition(mode, targetroom)
/// @arg mode sets transition mode between next, restart and goto.
/// @arg Target sets target room when usign the goto mode.

with (objTransition){
	mode = argument[0];
	if(argument_count > 1) 	target = argument[1]
}