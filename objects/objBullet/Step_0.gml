x += lengthdir_x(spd, direction)
y += lengthdir_y(spd, direction)

if(place_meeting(x,y,objShootable)){
	with(instance_place(x,y,objShootable)){
		hp--
		flash = 3
		hitFrom = other.direction;
	}
	instance_destroy()
}

// ponto onde colide com algo
if(position_meeting(x,y, objWall)) && (image_index != 0){
	while(position_meeting(x,y, objWall)){
		x -= lengthdir_x(1, direction) 
		y -= lengthdir_y(1, direction) 
	}
	spd = 0
	instance_change(objHitSpark,true)
	layer_add_instance("Tiles",id);
	depth += 1;
}


