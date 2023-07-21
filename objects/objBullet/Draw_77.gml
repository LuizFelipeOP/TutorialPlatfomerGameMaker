if(place_meeting(x,y,objShootable)){
	with(instance_place(x,y,objShootable)){
		hp--
		 flash = 3
		hitFrom = other.direction;
	}
	instance_destroy()
}

if(place_meeting(x,y, objWall)) && (image_index != 0) instance_destroy()