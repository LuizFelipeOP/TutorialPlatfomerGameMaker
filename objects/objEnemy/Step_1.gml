if(hp <= 0){
	with(instance_create_layer(x, y,layer,objDead)){
		direction = other.hitFrom;
		hsp = lengthdir_x(3, direction);
		vsp = lengthdir_y(3, direction) -4;
		image_xscale = sign(hsp);
		if (sign(hsp) != 0) image_xscale = sign(hsp) * other.size
		image_yscale = other.size
	}
	with(myGun) instance_destroy()
	if(instance_exists(objPlayer)){
		global.kills++
		global.kills_this_room++
		with(objGame) kill_text_scale = 2
	}
	instance_destroy()
}