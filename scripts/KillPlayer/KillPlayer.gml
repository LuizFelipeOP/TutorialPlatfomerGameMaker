 // Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function KillPlayer(){
	with (objGun) instance_destroy()
	instance_change(objPlayerDead, true)

	direction = point_direction(other.x, other.y, x, y)
	hsp = lengthdir_x(6, direction)
	vsp = lengthdir_y(4, direction) -2;

	if(sign(hsp) != 0) image_xscale = sign(hsp)
	
	global.kills -= global.kills_this_room
}