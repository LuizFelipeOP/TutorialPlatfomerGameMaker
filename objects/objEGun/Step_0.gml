
if(instance_exists(objPlayer)){
	if(objPlayer.x < x) image_yscale = - image_yscale
	if(point_distance(objPlayer.x, objPlayer.y, x, y)){
		image_angle = point_direction(x, y, objPlayer.x, objPlayer.y)
		countDown--
		if(countDown <= 0 && !collision_line(x, y, objPlayer.x, objPlayer.y, objWall, false, false)){
			countDown = countDownRate
			
			//bullet code
			audio_sound_pitch(snShot, choose(0.8, 1, 1.2))
			audio_play_sound(snShot, 5, false)
			with (instance_create_layer(x, y, "Bullets", objEBullet)){
				spd = 10;
				direction = other.image_angle + random_range(-3,3);
				image_angle = direction; 
			}
		}
	}
}