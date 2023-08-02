x += lengthdir_x(spd, direction)
y += lengthdir_y(spd, direction)


if(place_meeting(x,y, objWall)) && (image_index != 0){
	while(place_meeting(x,y, objWall)){
		x -= lengthdir_x(1, direction)
		y -= lengthdir_y(1, direction)
	}
	instance_change(objHitSpark, true)
}