/// @desc ScreenShake(magnitude, frames)
/// @arg Maginitude sets the strengh of the shake (radius in pixels)
/// @arg Frames sets the lenght of the shake in frames (60 = 1 second at 60fps)

with (objCamera)
{
	if(argument0 > shake_remain){
		shake_magnitude = argument0	
		shake_remain = argument0
		shake_lengh = argument1
	}
}